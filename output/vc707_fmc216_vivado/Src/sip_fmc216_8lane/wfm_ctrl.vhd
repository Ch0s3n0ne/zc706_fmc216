-----------------------------------------------------------------
--entity wfm_ctrl
----------------------------------------------------------------

library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.math_real.all;
  use ieee.std_logic_1164.all;

entity wfm_ctrl is 
generic (
    WIDTH    : natural := 256
);
port (
  reset                : in  std_logic;
  clk                  : in  std_logic;
  --read data port
  rd_data_out          : out std_logic_vector(WIDTH-1 downto 0);
  rd_data_out_stop     : in  std_logic;
  rd_data_out_valid    : out std_logic;
  --read control port
  rd_sequence_size     : in  std_logic_vector(31 downto 0);
  rd_start             : in  std_logic;
  rd_busy              : out std_logic;
  --write data port
  wr_data_in           : in  std_logic_vector(WIDTH-1 downto 0);
  wr_valid_in          : in  std_logic;
  wr_data_in_empty     : in  std_logic;
  wr_data_in_req       : out std_logic;
  --write control port
  wr_sequence_size     : in  std_logic_vector(31 downto 0);
  wr_start             : in  std_logic;
  wr_busy              : out std_logic
);
end wfm_ctrl;

architecture wfm_ctrl_arch of wfm_ctrl is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
type wr_st_machine is (WR_ST_START, WR_ST_DATA, WR_ST_SAVE, WR_ST_DONE);
type rd_st_machine is (RD_ST_START, RD_ST_DATA, RD_ST_STALL0, RD_ST_STALL1);

-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------
signal wr_state              : wr_st_machine;
signal rd_state              : rd_st_machine;

signal wr_req_n              :std_logic;
signal wr_address            :std_logic_vector(31 downto 0);
signal wr_data               :std_logic_vector(WIDTH-1 downto 0);
signal wr_valid              :std_logic;
signal wr_valid_reg          :std_logic;
signal wr_address_reg        :std_logic_vector(31 downto 0);

signal wr_start_prev         :std_logic;
signal wr_data_in_valid      :std_logic;
signal wr_data_in_valid_prev :std_logic;
signal wr_burst_count        :std_logic_vector(31 downto 0);

signal rd_address_reg        :std_logic_vector(31 downto 0);
signal rd_address            :std_logic_vector(31 downto 0);
signal rd_data               :std_logic_vector(WIDTH-1 downto 0);
signal rd_valid              :std_logic;
signal rd_req_delay          :std_logic_vector(15 downto 0);
signal rd_burst_count        :std_logic_vector(31 downto 0);

signal wr_data_enable       : std_logic;

-----------------------------------------------------------------------------------
--component declarations
-----------------------------------------------------------------------------------

--************************************************************************************
begin
--************************************************************************************

-----------------------------------------------------------------------------------
-- DPRAM Memory
-- WIDTH 256  Depth 512  Total 16384 Bytes
-----------------------------------------------------------------------------------
wfm_dpram_inst:
entity work.dac3283_wfm_dpram
port map (
  clka   => clk,
  wea(0) => wr_valid,
  addra  => wr_address(11 downto 0),
  dina   => wr_data,
  clkb   => clk,
--  enb    => '1',
rstb   => reset,
  addrb  => rd_address(11 downto 0),
  doutb  => rd_data
);

-----------------------------------------------------------------------------------
-- Write process
-----------------------------------------------------------------------------------
process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            wr_state       <= WR_ST_START;
            wr_data_enable <= '0';
            wr_burst_count <= (others=>'0');
            wr_busy        <= '1';

            wr_data       <= (others=>'0');
            wr_valid_reg  <= '0';
            wr_address    <= (others=>'0');
            wr_address_reg<= (others=>'0');
        else
            -- default
            wr_data_enable <= '0';
            wr_busy        <= '1';

            wr_data       <= wr_data_in;
            wr_valid_reg  <= '0';
            wr_address    <= wr_address_reg;

            case wr_state is
                -------------------------------------------------------------------
                -- Wait for the start command (ARM)
                -------------------------------------------------------------------
                when WR_ST_START =>
                    if wr_start = '1' then
                        wr_state     <= WR_ST_DATA;
                        wr_burst_count <= wr_sequence_size(31 downto 0);
                        wr_address_reg <= (others=>'0');
                    end if;
                    wr_busy <= '0';
                -------------------------------------------------------------------
                -- Wait for data to arrive
                -------------------------------------------------------------------
                when WR_ST_DATA =>
                    if wr_data_in_empty = '0' then
                        if wr_burst_count /= 0 then
                            wr_state  <= WR_ST_SAVE;
                            wr_data_enable <= '1';
                        else
                            wr_state    <= WR_ST_START;
                        end if;
                    end if;
                -------------------------------------------------------------------
                -- Start writing data in block rom
                -------------------------------------------------------------------
                 when WR_ST_SAVE  =>
                    wr_valid_reg  <= wr_valid_in;
                    wr_data_enable <= '1';
                    if (wr_burst_count = 1 and  wr_valid_in = '1') then
                        wr_state       <= WR_ST_DONE;
                    elsif wr_valid_in = '1' then
                        wr_burst_count <= wr_burst_count - 1;
                        wr_address_reg <= wr_address_reg + 1;
                    end if;
                -------------------------------------------------------------------
                -- Write Complete
                -------------------------------------------------------------------
                when WR_ST_DONE  =>
                    wr_state   <= WR_ST_START;
                -------------------------------------------------------------------
                -- others
                -------------------------------------------------------------------
                 when others =>
                    wr_state  <= WR_ST_START;
            end case;
        end if;
    end if;
end process;

wr_data_in_req  <= wr_data_enable and not wr_data_in_empty;
wr_valid        <= wr_data_enable and wr_valid_reg;

-----------------------------------------------------------------------------------
-- Read process
-----------------------------------------------------------------------------------
process(clk, reset)
begin
    if rising_edge(clk) then
        if reset = '1' then
            rd_state       <= RD_ST_START;
            rd_burst_count <= (others=>'0');
            rd_busy        <= '1';
            rd_valid       <= '0';
            rd_data_out    <= (others=>'0');
            rd_address     <= (others=>'0');
            rd_address_reg <= (others=>'0');

        else
            -- default
            rd_busy        <= '1';
            rd_valid       <= '0';

            case rd_state is
                -------------------------------------------------------------------
                -- Wait for the start command (offload)
                -------------------------------------------------------------------
                when RD_ST_START =>
                    if rd_start = '1' then
                        rd_state        <= RD_ST_DATA;
                        rd_burst_count  <= rd_sequence_size(31 downto 0);
                        rd_address_reg  <= (others=>'0');
                    end if;

                -------------------------------------------------------------------
                -- Start writing data in block rom
                -------------------------------------------------------------------
                when RD_ST_DATA  =>
                    if (rd_burst_count = 1) then
                        rd_burst_count  <= rd_sequence_size(31 downto 0);
                        rd_address_reg  <= (others=>'0');
                        rd_valid       <= '1';
                    elsif rd_data_out_stop = '0' then
                        rd_burst_count <= rd_burst_count - 1;
                        rd_address_reg <= rd_address_reg + 1;
                        rd_valid       <= '1';
                    else
                        rd_state   <= RD_ST_STALL0;
                    end if;
                -------------------------------------------------------------------
                -- When full stall for a cycle
                -------------------------------------------------------------------
                when RD_ST_STALL0 =>
                    if rd_data_out_stop = '0' then
                        rd_state   <= RD_ST_STALL1;
                    end if;
                -------------------------------------------------------------------
                -- Stall a cycle
                -------------------------------------------------------------------
                when RD_ST_STALL1  =>
                    rd_state   <= RD_ST_DATA;
                -------------------------------------------------------------------
                -- others
                -------------------------------------------------------------------
                 when others =>
                    rd_state  <= RD_ST_START;
            end case;

            -- registing the data
            rd_data_out <= rd_data;
            --registering the address
            rd_address <= rd_address_reg;

            --data is valid after a read delay clock cycles after the request
            rd_req_delay      <= rd_req_delay(14 downto 0) & rd_valid;
            rd_data_out_valid <= rd_req_delay(1);

        end if;
    end if;
end process;


--*************************************************************************************************
end wfm_ctrl_arch;
--*************************************************************************************************
