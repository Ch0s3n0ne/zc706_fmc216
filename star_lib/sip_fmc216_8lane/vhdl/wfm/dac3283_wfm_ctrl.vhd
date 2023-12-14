-----------------------------------------------------------------
--entity dac3283_wfm_ctrl
----------------------------------------------------------------

library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.math_real.all;
  use ieee.std_logic_1164.all;

entity dac3283_wfm_ctrl is
port (
  reset                : in  std_logic;
  clk                  : in  std_logic;
  --read data port
  rd_data_out          : out std_logic_vector(63 downto 0);
  rd_data_out_stop     : in  std_logic;
  rd_data_out_valid    : out std_logic;
  --read control port
  rd_sequence_size     : in  std_logic_vector(31 downto 0);
  rd_start             : in  std_logic;
  rd_stop              : in  std_logic;
  rd_busy              : out std_logic;
  --write data port
  wr_data_in           : in  std_logic_vector(63 downto 0);
  wr_data_in_empty     : in  std_logic;
  wr_data_in_req       : out std_logic;
  --write control port
  wr_sequence_size     : in  std_logic_vector(31 downto 0);
  wr_start             : in  std_logic;
  wr_busy              : out std_logic
);
end dac3283_wfm_ctrl;

architecture dac3283_wfm_ctrl_arch of dac3283_wfm_ctrl is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
type rd_st_machine is (RD_ST_START, RD_ST_DATA, RD_ST_SAVE, RD_ST_DONE);

-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------
signal rd_state              : rd_st_machine;

signal wr_req_n              :std_logic;
signal wr_address            :std_logic_vector(32-1 downto 0);
signal wr_data               :std_logic_vector(64 -1 downto 0);
signal wr_address_reg        :std_logic_vector(31 downto 0);

signal wr_start_prev         :std_logic;
signal wr_data_in_req_sig    :std_logic;
signal wr_data_in_valid      :std_logic;
signal wr_data_in_valid_prev :std_logic;
signal wr_burst_count        :std_logic_vector(32-1 downto 0);


signal rd_data               :std_logic_vector(63 downto 0);
signal rd_data_sig           :std_logic_vector(63 downto 0);
signal rd_address_reg        :std_logic_vector(32-1 downto 0);
signal wr_data_reg           :std_logic_vector(64-1 downto 0);

signal rd_start_prev         :std_logic;
signal rd_req_delay          :std_logic_vector(15 downto 0);
signal rd_req_sig            :std_logic;
signal rd_burst_count        :std_logic_vector(31 downto 0);

signal rd_valid              :std_logic_vector(2 downto 0);

-----------------------------------------------------------------------------------
--component declarations
-----------------------------------------------------------------------------------
component dac3283_wfm_dpram is
  port (
  clka: in std_logic;
  wea: in std_logic_vector(0 downto 0);
  addra: in std_logic_vector(11 downto 0);
  dina: in std_logic_vector(63 downto 0);
  clkb: in std_logic;
  rstb: in std_logic;
  addrb: in std_logic_vector(11 downto 0);
  doutb: out std_logic_vector(63 downto 0));
end component;


signal offload_stop : std_logic;
signal rd_count     : std_logic_vector(31 downto 0);

--*********************************************************************************
begin
--*********************************************************************************

-----------------------------------------------------------------------------------
-- DPRAM Memory
-----------------------------------------------------------------------------------
dac3283_wfm_dpram_inst : dac3283_wfm_dpram
port map (
  clka   => clk, -- in std_logic;
  wea(0) => wr_req_n, -- in std_logic_vector(0 downto 0);
  addra  => wr_address(11 downto 0), -- in std_logic_vector(11 downto 0);
  dina   => wr_data, -- in std_logic_vector(63 downto 0);
  clkb   => clk, -- in std_logic;
  rstb   => reset, -- in std_logic;
  addrb  => rd_address_reg(11 downto 0), -- in std_logic_vector(10 downto 0);
  doutb  => rd_data  -- out std_logic_vector(127 downto 0)
);

-----------------------------------------------------------------------------------
-- Write process
-----------------------------------------------------------------------------------
process(clk, reset)
begin
  if (reset = '1') then

    wr_start_prev         <= '0';
    wr_busy               <= '0';
    wr_data_in_req_sig    <= '0';
    wr_data_in_valid      <= '0';
    wr_data_in_valid_prev <= '0';
    wr_req_n              <= '1';

    wr_data_reg           <= (others => '0');
    wr_data               <= (others => '0');

    wr_address_reg        <= (others => '0');
    wr_address            <= (others => '0');

    wr_burst_count        <= (others => '0');

  elsif(clk'event and clk='1') then

    --delayed version of the start signal
    wr_start_prev <= wr_start;

    --indicate that the write controller is still busy
    --untill last word is written
    if (wr_start = '1' and wr_start_prev = '0') then
      wr_busy <= '1';
    elsif (wr_burst_count = 0) then
      wr_busy <= '0';
    end if;

    --only request data when the fifo is not empty and the burst counter is not zero
    --request the last two samples slowly
    if ((wr_burst_count> 1 or wr_data_in_req_sig = '0') and wr_data_in_empty = '0' and wr_burst_count /= 0) then
      wr_data_in_req_sig <= '1';
    else
      wr_data_in_req_sig <= '0';
    end if;

    --data is valid after a request when the empty signal is not asserted
    wr_data_in_valid        <= wr_data_in_req_sig and not wr_data_in_empty;
    wr_data_in_valid_prev   <= wr_data_in_valid;
    wr_req_n                <= wr_data_in_valid_prev;

    --registering the data
    wr_data_reg <= wr_data_in;
    wr_data     <= wr_data_reg;

    --increment address after each valid sample
    if (wr_start = '1' and wr_start_prev = '0') then
      wr_address_reg <= (others => '0');
    elsif (wr_data_in_valid_prev = '1') then
      wr_address_reg <= wr_address_reg + 1;
    end if;
    wr_address  <= wr_address_reg;

    --decrement the burst counter with two each time valid data has been read
    if (wr_start = '1' and wr_start_prev = '0') then
      wr_burst_count <= "000" & wr_sequence_size(31 downto 3);
    elsif (wr_data_in_req_sig = '1' and wr_data_in_empty = '0') then
      wr_burst_count <= wr_burst_count - 1;
    end if;

  end if;
end process;

wr_data_in_req <= wr_data_in_req_sig;


-----------------------------------------------------------------------------------
-- Read process
-----------------------------------------------------------------------------------
process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            rd_state            <= RD_ST_START;
            rd_burst_count      <= (others=>'0');
            rd_count            <= (others=>'0');
            rd_busy             <= '1';
            rd_address_reg      <= (others=>'0');
            rd_valid            <= (others=>'0');      
            rd_data_out_valid   <= '0';
        else
            -- default
            rd_data_out         <= rd_data;
            rd_valid(0)         <= '0';
            rd_valid(1)         <= rd_valid(0);
            rd_valid(2)         <= rd_valid(1);
            rd_data_out_valid   <= rd_valid(1);

            case rd_state is
                -------------------------------------------------------------------
                -- Wait for the start command (OFFLOAD)
                -------------------------------------------------------------------
                when RD_ST_START => 
                    if rd_start = '1' then
                        rd_state	    <= RD_ST_SAVE;
                        rd_count        <= "000" & rd_sequence_size(31 downto 3);
                        rd_burst_count  <= "000" & rd_sequence_size(31 downto 3);
                        rd_address_reg  <= (others=>'0');
                    end if;
                    rd_busy <= '0';
                -------------------------------------------------------------------
                -- Start reading data in block rom
                -------------------------------------------------------------------                
                 when RD_ST_SAVE  => 
                    if rd_stop = '1' then
                        rd_state       <= RD_ST_DONE;
                    elsif rd_data_out_stop = '0' then
                        if  rd_burst_count =  1 then
                            rd_burst_count    <= rd_count;
                            rd_address_reg    <= (others=>'0');
                            rd_valid(0) <= '1';
                        else
                            rd_burst_count    <= rd_burst_count - 1;
                            rd_address_reg    <= rd_address_reg + 1; 
                            rd_valid(0) <= '1';
                        end if;
                    end if;
                    rd_busy <= '1';
                -------------------------------------------------------------------
                -- Write Complete
                ------------------------------------------------------------------- 
                when RD_ST_DONE  => 
                    rd_state	 <= RD_ST_START;
                -------------------------------------------------------------------
                -- others
                -------------------------------------------------------------------  
                 when others =>
                    rd_state	<= RD_ST_START;
            end case;
        end if;
    end if;
end process;


-----------------------------------------------------------------------------------
-- End
-----------------------------------------------------------------------------------
end dac3283_wfm_ctrl_arch;
