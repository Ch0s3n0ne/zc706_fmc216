--------------------------------------------------------------------------------
-- file name : dac3283_wfm.vhd
--
-- author    : e. barhorst
--
-- company   : 4dsp
--
-- item      : number
--
-- units     : entity       -dac3283_wfm
--             arch_itecture - arch_dac3283_wfm
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
-- This is the stellar IP QDR interface. It implements the FPGA IO buffers
--and calibration logic. On the local side is has a wormhole for read
-- and write address a wormhole for read data and a wormhole for write data
--
-- notes:
--------------------------------------------------------------------------------
--
--  disclaimer: limited warranty and disclaimer. these designs are
--              provided to you as is.  4dsp specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4dsp does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the designs
--              will be corrected. furthermore, 4dsp does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              limitation of liability. in no event will 4dsp or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. this limitation will apply even if 4dsp
--              has been advised of the possibility of such damage. this
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
--      from
-- ver  pcb mod    date      changes
-- ===  =======    ========  =======
--
-- 0.0    0        19-01-2009        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- specify libraries
--------------------------------------------------------------------------------
library  ieee ;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;

--------------------------------------------------------------------------------
-- entity declaration
--------------------------------------------------------------------------------
entity dac3283_wfm  is
port (
   -- Reset port
   rst               : in  std_logic;

   -- Load port
   wr_clk            : in  std_logic;
   wfm_load_size     : in  std_logic_vector(31 downto 0);
   wfm_load_start    : in  std_logic;

   wfm_in_data       : in  std_logic_vector(63 downto 0);
   wfm_in_stop       : out std_logic;
   wfm_in_dval       : in  std_logic;

   -- Offload port
   rd_clk            : in  std_logic;
   wfm_offload_size  : in  std_logic_vector(31 downto 0);
   wfm_offload_start : in  std_logic;
   wfm_offload_stop  : in  std_logic;

   wfm_out_data      : out std_logic_vector(15 downto 0);
   wfm_out_stop      : in  std_logic;
   wfm_out_dval      : out std_logic
);
end entity dac3283_wfm;

--------------------------------------------------------------------------------
-- architecture declaration
--------------------------------------------------------------------------------

architecture arch_dac3283_wfm of dac3283_wfm  is

-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
constant DEBUG_ENABLE : boolean  := FALSE;

-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------

signal wfm_start_offload_rd_clk  : std_logic;
signal wfm_stop_offload_rd_clk   : std_logic;

signal wfm_start_write           : std_logic;
signal rd_fifo_stop              : std_logic;
signal wr_fifo_in                : std_logic_vector(63 downto 0);
signal wr_fifo_rd                : std_logic;
signal wr_fifo_wr                : std_logic;
signal wr_fifo_out               : std_logic_vector(63 downto 0);
signal wr_fifo_empty             : std_logic;
signal wr_fifo_wr_usedw          : std_logic_vector(31 downto 0);
signal rd_busy                   : std_logic;

--signal wfm_start_read            : std_logic;
signal rd_fifo_in                : std_logic_vector(63 downto 0);
signal rd_fifo_rd                : std_logic;
signal rd_fifo_wr                : std_logic;
--signal rd_fifo_out               : std_logic_vector(63 downto 0);
signal rd_fifo_out               : std_logic_vector(15 downto 0);
signal rd_fifo_empty             : std_logic;
signal rd_fifo_rd_usedw          : std_logic_vector(31 downto 0);
signal rd_fifo_full              : std_logic;
signal rd_fifo_wr_usedw          : std_logic_vector(31 downto 0);
signal rd_fifo_val               : std_logic;
signal offload_busy              : std_logic;

signal rd_fifo_in_reg            : std_logic_vector(63 downto 0);
signal local_rst                 : std_logic;
signal local_rst0                : std_logic;

-----------------------------------------------------------------------------------
--component declarations
-----------------------------------------------------------------------------------
component  pulse2pulse
port (
   in_clk      :in std_logic;
   out_clk     :in std_logic;
   rst         :in std_logic;
   pulsein     :in std_logic;
   inbusy      :out std_logic;
   pulseout    :out std_logic
   );

end component;

-- debug
signal probe0         : std_logic_vector(255 downto 0);
signal dbg_data       : std_logic_vector(63 downto 0);
signal dbg_rd_en      : std_logic; 
signal dbg_valid      : std_logic; 
signal dbg_stop       : std_logic;
signal dbg_counter    : std_logic_vector(15 downto 0);

attribute mark_debug : string;
attribute mark_debug of wfm_start_write             :signal is "true"  ;
attribute mark_debug of wfm_start_offload_rd_clk    :signal is "true"  ;
attribute mark_debug of rd_fifo_out                 :signal is "true"  ;
attribute mark_debug of rd_fifo_val                 :signal is "true"  ;
attribute mark_debug of wr_fifo_in                 :signal is "true"  ;
attribute mark_debug of wr_fifo_wr                 :signal is "true"  ;


--***********************************************************************************
begin
--***********************************************************************************

-----------------------------------------------------------------------------------
-- local reset
-----------------------------------------------------------------------------------
process(rd_clk,rst) 
begin
    if rst = '1' then
        local_rst  <= '1';
    elsif rising_edge(rd_clk) then
        local_rst  <= '0';
    end if;
end process;

-----------------------------------------------------------------------------------
--Component instantiations
-----------------------------------------------------------------------------------
--ip2p0:pulse2pulse
--port map(
--  in_clk      =>wr_clk,
--  out_clk     =>rd_clk,
--  rst         =>rst,
--  pulsein     =>wfm_load_start,
--  inbusy      =>open,
--  pulseout    =>wfm_start_write
--);

wfm_start_write <= wfm_load_start;

--ip2p1:pulse2pulse
--port map(
--  in_clk      =>clk,
--  out_clk     =>rd_clk,
--  rst         =>rst,
--  pulsein     =>wfm_offload_start,
--  inbusy      =>open,
--  pulseout    =>wfm_start_offload_rd_clk
--);
wfm_start_offload_rd_clk <= wfm_offload_start;
--
--ip2p2:pulse2pulse
--port map(
--  in_clk      =>clk,
--  out_clk     =>rd_clk,
--  rst         =>rst,
--  pulsein     =>wfm_offload_stop,
--  inbusy      =>open,
--  pulseout    =>wfm_stop_offload_rd_clk
--);
wfm_stop_offload_rd_clk <= wfm_offload_stop;
--

dac3283_wfm_input_fifo_inst : entity work.dac3283_wfm_output_fifo
port map (
  rst           => rst,
  wr_clk        => wr_clk,
  rd_clk        => rd_clk,
  din           => wr_fifo_in,
  wr_en         => wr_fifo_wr,
  rd_en         => wr_fifo_rd,
  dout          => wr_fifo_out,
  full          => open,
  empty         => wr_fifo_empty,
  rd_data_count => open,
  wr_data_count => wr_fifo_wr_usedw(8 downto 0)
);

dac3283_wfm_ctrl_inst : entity work.dac3283_wfm_ctrl
port map (
  reset             => local_rst,
  clk               => rd_clk,
  --read data port
  rd_data_out       => rd_fifo_in,
  rd_data_out_stop  => rd_fifo_stop,
  rd_data_out_valid => rd_fifo_wr,
  --read control port
  rd_sequence_size  => wfm_offload_size,
  rd_start          => wfm_start_offload_rd_clk, --wfm_start_read,
  rd_stop           => wfm_stop_offload_rd_clk,
  rd_busy           => rd_busy,
  --write data port
  wr_data_in        => wr_fifo_out,
  wr_data_in_empty  => wr_fifo_empty,
  wr_data_in_req    => wr_fifo_rd,
  --write control port
  wr_sequence_size  => wfm_load_size,
  wr_start          => wfm_start_write,
  wr_busy           => open
);


rd_fifo_in_reg <=  rd_fifo_in(15 downto 0) & rd_fifo_in(31 downto 16) &
                   rd_fifo_in(47 downto 32) & rd_fifo_in(63 downto 48);

dac3283_wfm_output_fifo_inst : 
--entity work.dac3283_wfm_output_fifo
entity work.wfm_output_fifo
port map (
  rst           => local_rst,
  wr_clk        => rd_clk,
  rd_clk        => rd_clk,
  din           => rd_fifo_in_reg, --rd_fifo_in,
  wr_en         => rd_fifo_wr,
  rd_en         => rd_fifo_rd,
  dout          => rd_fifo_out,
  full          => rd_fifo_full,
  empty         => rd_fifo_empty,
--  valid         => open,
  rd_data_count => rd_fifo_rd_usedw(10 downto 0),
  wr_data_count => rd_fifo_wr_usedw(8 downto 0)
);

-----------------------------------------------------------------------------------
--synchronous processes
-----------------------------------------------------------------------------------
process(rst, wr_clk)
begin
  if(rst='1') then
    wr_fifo_in <= (others=>'0');
    wr_fifo_wr <= '0';
  elsif (wr_clk'event and wr_clk = '1') then
    wr_fifo_in <= wfm_in_data;
    wr_fifo_wr <= wfm_in_dval;
  end if;
end process;

--process(local_rst, rd_clk)
--begin
--  if (local_rst='1') then
--
--    wfm_start_read  <= '0';
--    --rd_fifo_wr <= '0';
--    offload_busy    <= '0';
--
--  elsif (rd_clk'event and rd_clk = '1') then
--
--    --start a read from the memory when we finish writing a burst
--    if (wfm_start_offload_rd_clk = '1') then
--      offload_busy <= '1';
--    elsif(wfm_stop_offload_rd_clk = '1') then
--      offload_busy <= '0';
--    end if;
--
--    --start a new read cycle when the previous command has been started
--    if (rd_busy = '0' and wfm_start_read = '0' and offload_busy = '1') then
--      wfm_start_read <= '1';
--    else
--      wfm_start_read <= '0';
--    end if;
--
--   end if;
--end process;

process(local_rst, rd_clk)
begin
  if (local_rst = '1') then

    rd_fifo_rd      <= '0';
    rd_fifo_val     <= '0';
    wfm_out_data    <= (others=>'0');
    wfm_out_dval          <= '0';

  elsif (rd_clk'event and rd_clk = '1') then

    --read the output fifo
    rd_fifo_rd      <= not rd_fifo_empty and not wfm_out_stop ;
    rd_fifo_val     <= not rd_fifo_empty and rd_fifo_rd;

    wfm_out_data         <=rd_fifo_out;
    wfm_out_dval         <=rd_fifo_val;

   end if;
end process;

rd_fifo_stop <= and_reduce(rd_fifo_wr_usedw(8 downto 4));
wfm_in_stop  <= and_reduce(wr_fifo_wr_usedw(8 downto 4));

--*********************************************************************************
end architecture arch_dac3283_wfm   ; -- of dac3283_wfm
--*********************************************************************************

