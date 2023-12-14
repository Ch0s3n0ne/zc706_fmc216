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
entity wfm  is
generic (
    WIDTH_INPUT    : natural := 256;
    WIDTH_OUTPUT   : natural := 256
);
port (
   -- Reset port
   rst               : in std_logic;

   clk               : in std_logic;

   wfm_input_status  : out std_logic_vector(31 downto 0);
   wfm_output_status : out std_logic_vector(31 downto 0);
   -- Load port
   wr_clk            : in  std_logic;

   wfm_load_size     : in  std_logic_vector(31 downto 0);
   wfm_load_start    : in  std_logic;

   wfm_in_data       : in  std_logic_vector(WIDTH_INPUT-1 downto 0);
   wfm_in_stop     : out std_logic;
   wfm_in_dval       : in  std_logic;
   -- Offload port
   rd_clk            : in  std_logic;
   wfm_offload_size  : in  std_logic_vector(31 downto 0);
   wfm_offload_start : in  std_logic;
   wfm_offload_stop  : in  std_logic;

   wfm_out_data      : out std_logic_vector(WIDTH_OUTPUT-1 downto 0);
   wfm_out_stop    : in  std_logic;
   wfm_out_dval      : out std_logic
);
end entity wfm;

--------------------------------------------------------------------------------
-- architecture declaration
--------------------------------------------------------------------------------

architecture arch_wfm of wfm  is



-----------------------------------------------------------------------------------
--constant declarations
-----------------------------------------------------------------------------------
-- log2(WIDTH_INPUT/8);
constant INPUT_TO_BYTES :natural := 3;

-----------------------------------------------------------------------------------
--signal declarations
-----------------------------------------------------------------------------------
signal wfm_start_offload_rd_clk  : std_logic;
signal wfm_stop_offload_rd_clk   : std_logic;

signal wfm_start_write           : std_logic;
signal rd_fifo_stop              : std_logic;
signal wr_fifo_rd                : std_logic;
signal wr_fifo_wr                : std_logic;
signal wr_fifo_out               : std_logic_vector(WIDTH_INPUT-1 downto 0);
signal wr_fifo_empty             : std_logic;
signal wr_fifo_wr_usedw          : std_logic_vector(8 downto 0);
signal wr_fifo_valid             : std_logic;
signal rd_busy                   : std_logic;
signal wr_busy                   : std_logic;
signal input_rd_cnt              : std_logic_vector(31 downto 0);

signal wfm_start_read            : std_logic;
signal rd_fifo_in                : std_logic_vector(WIDTH_INPUT-1 downto 0);
signal rd_fifo_in_reg            : std_logic_vector(WIDTH_INPUT-1 downto 0);
signal rd_fifo_rd                : std_logic;
signal rd_fifo_wr                : std_logic;
signal rd_fifo_empty             : std_logic;
signal rd_fifo_rd_usedw          : std_logic_vector(10 downto 0);
signal rd_fifo_full              : std_logic;
signal rd_fifo_wr_usedw          : std_logic_vector(8 downto 0);
signal offload_busy              : std_logic;
signal output_rd_cnt             : std_logic_vector(31 downto 0);

--signal wfm_out_stop : std_logic;
--signal wfm_in_stop : std_logic;

signal rst_rdclk    : std_logic;

signal wfm_load_size_reg : std_logic_vector(31 downto 0);
signal wfm_offload_size_reg : std_logic_vector(31 downto 0);

--*********************************************************************************
begin
--*********************************************************************************

-----------------------------------------------------------------------------------
-- clock domain crossing
-----------------------------------------------------------------------------------
process(rst, rd_clk)
begin
    if rst = '1' then
        rst_rdclk <= '1';
    elsif rising_edge(rd_clk) then
        rst_rdclk <= '0';
    end if;
end process;

ip2p0: entity work.pulse2pulse
port map(
  in_clk      =>clk,
  out_clk     =>rd_clk,
  rst         =>rst,
  pulsein     =>wfm_load_start, --arm
  inbusy      =>open,
  pulseout    =>wfm_start_write
);
ip2p1: entity work.pulse2pulse
port map(
  in_clk      =>clk,
  out_clk     =>rd_clk,
  rst         =>rst,
  pulsein     =>wfm_offload_start, --wfm_load
  inbusy      =>open,
  pulseout    =>wfm_start_offload_rd_clk
);
ip2p2: entity work.pulse2pulse
port map(
  in_clk      =>clk,
  out_clk     =>rd_clk,
  rst         =>rst,
  pulsein     =>wfm_offload_stop, --disarm
  inbusy      =>open,
  pulseout    =>wfm_stop_offload_rd_clk
);

process(clk)
begin
  if rising_edge(clk) then
        wfm_input_status   <= wr_busy & input_rd_cnt(30 downto 0);
        wfm_output_status  <= output_rd_cnt(31 downto 0);
  end if;
end process;

process(rd_clk)
begin
  if rising_edge(rd_clk) then
        wfm_load_size_reg    <= conv_std_logic_vector(0, INPUT_TO_BYTES) & wfm_load_size(31 downto INPUT_TO_BYTES);
        wfm_offload_size_reg <= conv_std_logic_vector(0, INPUT_TO_BYTES) & wfm_offload_size(31 downto INPUT_TO_BYTES);
  end if;
end process;

------------------------------------------------------------------------
-- Input FIFO. Data comes in on the wr clock domain and we immediately
-- convert to the read clock domain.
------------------------------------------------------------------------
wfm_input_fifo_inst :
entity work.dac3283_wfm_output_fifo
port map (
  rst           => rst_rdclk,
  wr_clk        => wr_clk,
  rd_clk        => rd_clk,
  din           => wfm_in_data,
  wr_en         => wr_fifo_wr,
  rd_en         => wr_fifo_rd,
  dout          => wr_fifo_out,
  full          => open,
  empty         => wr_fifo_empty,
  valid         => wr_fifo_valid,
  rd_data_count => open,
  wr_data_count => wr_fifo_wr_usedw(8 downto 0)
);

wfm_in_stop  <= and_reduce(wr_fifo_wr_usedw(8 downto 4));
--wfm_in_tready <= not wfm_in_stop;
wr_fifo_wr    <= wfm_in_dval ;

input_rd_cnt <= conv_std_logic_vector(0, 32-wr_fifo_wr_usedw'length) & wr_fifo_wr_usedw(wr_fifo_wr_usedw'range);

------------------------------------------------------------------------
-- Block ram where waveform repeat is done
------------------------------------------------------------------------
wfm_ctrl_inst:
entity work.wfm_ctrl
generic map (
    WIDTH => WIDTH_INPUT
)
port map (
  reset             => rst_rdclk,
  clk               => rd_clk,
  --read data port
  rd_data_out       => rd_fifo_in,
  rd_data_out_stop  => rd_fifo_stop,
  rd_data_out_valid => rd_fifo_wr,
  --read control port
  rd_sequence_size  => wfm_offload_size_reg,
  rd_start          => wfm_start_read,
  rd_busy           => rd_busy,
  --write data port
  wr_data_in        => wr_fifo_out,
  wr_valid_in       => wr_fifo_valid,
  wr_data_in_empty  => wr_fifo_empty,
  wr_data_in_req    => wr_fifo_rd,
  --write control port
  wr_sequence_size  => wfm_load_size_reg,
  wr_start          => wfm_start_write,
  wr_busy           => wr_busy
);
wfm_start_read <= wfm_start_offload_rd_clk;


rd_fifo_in_reg <=  rd_fifo_in(15 downto 0) & rd_fifo_in(31 downto 16) &
                   rd_fifo_in(47 downto 32) & rd_fifo_in(63 downto 48);
------------------------------------------------------------------------
-- Output FIFO.
------------------------------------------------------------------------
wfm_output_fifo_inst:
entity work.wfm_output_fifo
port map (
  rst           => rst_rdclk,
  wr_clk        => rd_clk,
  rd_clk        => rd_clk,
  din           => rd_fifo_in_reg,
  wr_en         => rd_fifo_wr,
  rd_en         => rd_fifo_rd,
  dout          => wfm_out_data,
  full          => rd_fifo_full,
  empty         => rd_fifo_empty,
  valid         => wfm_out_dval,
  rd_data_count => rd_fifo_rd_usedw(10 downto 0),
  wr_data_count => rd_fifo_wr_usedw(8 downto 0)
);

rd_fifo_rd <= (not rd_fifo_empty and not wfm_out_stop);

output_rd_cnt <= conv_std_logic_vector(0, 32-rd_fifo_rd_usedw'length) & rd_fifo_rd_usedw(rd_fifo_rd_usedw'range);

-----------------------------------------------------------------------------------
--synchronous processes
-----------------------------------------------------------------------------------

--process(rst_rdclk, rd_clk)
--begin
--  if (rst_rdclk='1') then
--
--    wfm_start_read  <= '0';
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



-----------------------------------------------------------------------------------
--asynchronous mapping
-----------------------------------------------------------------------------------
rd_fifo_stop <= and_reduce(rd_fifo_wr_usedw(rd_fifo_wr_usedw'length - 1 downto 4));
wfm_in_stop  <= and_reduce(wr_fifo_wr_usedw(wr_fifo_wr_usedw'length - 1 downto 4));

--***********************************************************************************
end architecture arch_wfm   ;
--***********************************************************************************

