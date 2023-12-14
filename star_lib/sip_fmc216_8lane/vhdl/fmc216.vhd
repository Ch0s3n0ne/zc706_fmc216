-------------------------------------------------------------------------------------
-- FILE NAME : .vhd
--
-- AUTHOR    : StellarIP (c) 4DSP
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - 
--             architecture - 
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- 
-- Notes: 
-------------------------------------------------------------------------------------
--  Disclaimer: LIMITED WARRANTY AND DISCLAIMER. These designs are
--              provided to you as is.  4DSP specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. 4DSP does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, 4DSP does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will 4DSP or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if 4DSP
--              has been advised of the possibility of such damage. This
--              limitation shall apply not-withstanding the failure of the
--              essential purpose of any limited remedies herein.
--
----------------------------------------------
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
--library declaration
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all ;
    use ieee.std_logic_arith.all ;
    use ieee.std_logic_unsigned.all ;
    use ieee.std_logic_misc.all ;

library unisim;
  use unisim.vcomponents.all;

library xil_defaultlib;
   use xil_defaultlib.types.all; 

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
entity fmc216 is
generic (
  GLOBAL_START_ADDR_GEN                    : std_logic_vector(27 downto 0);
  GLOBAL_STOP_ADDR_GEN                     : std_logic_vector(27 downto 0);
  PRIVATE_START_ADDR_GEN                   : std_logic_vector(27 downto 0);
  PRIVATE_STOP_ADDR_GEN                    : std_logic_vector(27 downto 0)
);
port (
--Wormhole 'clk' of type 'clkin':
   clk_clkin                               : in std_logic_vector(31 downto 0);

--Wormhole 'rst' of type 'rst_in':
   rst_rstin                               : in std_logic_vector(31 downto 0);

--Wormhole 'cmdclk_in' of type 'cmdclk_in':
   cmdclk_in_cmdclk                        : in std_logic;

--Wormhole 'cmd_in' of type 'cmd_in':
   cmd_in_cmdin                            : in std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in std_logic;

--Wormhole 'cmd_out' of type 'cmd_out':
   cmd_out_cmdout                          : out std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out std_logic;

   dac_in_stop                             : out std_logic_vector(15 downto 0);
   dac_in_dval                             : in  std_logic_vector(15 downto 0);
   dac_in_data                             : in bus064(15 downto 0);

--Wormhole 'ext_fmc144' of type 'ext_fmc144':
   trigger_out                             : out std_logic;
   ext_trigger_p                           : in std_logic;
   ext_trigger_n                           : in std_logic;
   refclk_p                                : in std_logic_vector(1 downto 0);
   refclk_n                                : in std_logic_vector(1 downto 0);
   serdout_p                               : out std_logic_vector(7 downto 0); 
   serdout_n                               : out std_logic_vector(7 downto 0);
   serdin_p                                : in std_logic_vector(7 downto 0); 
   serdin_n                                : in std_logic_vector(7 downto 0);
   dac_syncb_n                             : in std_logic_vector(3 downto 0);
   dac_syncb_p                             : in std_logic_vector(3 downto 0);
   lmk_sync                                : out std_logic;
   lmkclk_sysref_p                         : in std_logic;
   lmkclk_sysref_n                         : in std_logic;
   lmkclk_p                                : in std_logic;
   lmkclk_n                                : in std_logic;
   pg_m2c                                  : in std_logic;
   prsnt_m2c_l                             : in std_logic
);
end entity fmc216;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture sip_fmc216_syn of fmc216 is

----------------------------------------------------------------------------------------------------
-- Constant declaration
----------------------------------------------------------------------------------------------------
constant DEBUG_ADC : boolean  := FALSE;
constant DEBUG_DAC : boolean  := FALSE;
attribute keep : string;

constant NB_DAC39J84    : integer := 4;
constant JESD_L         : integer := 2;
constant JESD_M         : integer := 4;
constant JESD_F         : integer := 4;
constant NB_CHANNELS    : integer := NB_DAC39J84*JESD_M;

constant START_ADDR_FMC216_CTRL : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"0000000";
constant STOP_ADDR_FMC216_CTRL  : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"000003F"; 

constant START_ADDR_FREQ_CNT    : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"0000040";
constant STOP_ADDR_FREQ_CNT     : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"000004F"; 

--constant START_ADDR_SPI_CTRL    : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"0000050";
--constant STOP_ADDR_SPI_CTRL     : std_logic_vector(27 downto 0) := PRIVATE_START_ADDR_GEN + x"0001FFF"; 


-----------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------
-- FMC144 Control
signal out_cmd_val0 : std_logic;
signal out_cmd0     : std_logic_vector(63 downto 0);
signal cmd_busy0    : std_logic;
-- SPI Control
signal out_cmd_val1 : std_logic;
signal out_cmd1     : std_logic_vector(63 downto 0);
signal cmd_busy1    : std_logic;
-- Frequency Counter
signal out_cmd_val2 : std_logic;
signal out_cmd2     : std_logic_vector(63 downto 0);
signal cmd_busy2    : std_logic;

-- DAC waveform playback
signal ext_trigger_buf    : std_logic;
signal test_clocks        : std_logic_vector(15 downto 0);

signal dac_data           : bus016(NB_CHANNELS-1 downto 0);
signal dac_valid          : std_logic_vector(NB_CHANNELS-1 downto 0);
signal dac_stop           : std_logic_vector(NB_CHANNELS-1 downto 0);

signal wfm_load_size     : bus032(NB_CHANNELS-1 downto 0); 
signal wfm_load_start    : std_logic_vector(NB_CHANNELS-1 downto 0); 
signal wfm_offload_size  : bus032(NB_CHANNELS-1 downto 0); 
signal wfm_offload_start : std_logic_vector(NB_CHANNELS-1 downto 0); 
signal wfm_offload_stop  : std_logic_vector(NB_CHANNELS-1 downto 0); 
signal wfm_rst: std_logic_vector(NB_CHANNELS-1 downto 0); 

signal tx_clk_out         : std_logic_vector(7 downto 0);
signal tx_data_in         : bus032(7 downto 0);
signal tx_kchar_in        : bus004(7 downto 0);

signal rst            : std_logic;
signal in_cmd_val     : std_logic;
signal in_cmd         : std_logic_vector(63 downto 0);
signal out_cmd        : std_logic_vector(63 downto 0);
signal out_cmd_val    : std_logic;
signal clk_cmd        : std_logic;
signal cmd_busy       : std_logic;
signal spi_clk_out    : std_logic;
signal sysref_bufg    : std_logic;
signal sysref         : std_logic;
signal syncb          : std_logic_vector(1 downto 0);
-- Transceiver
signal xcvr_rxrst     : std_logic;
signal xcvr_slide     : std_logic_vector(7 downto 0);
signal xcvr_rdy_out   : std_logic_vector(7 downto 0);

signal qpll_lock_out  : std_logic_vector(7 downto 0);
signal xcvr_ctrl	  : std_logic_vector(31 downto 0);
signal fmc_ctrl       : std_logic_vector(31 downto 0);
signal dac_ctrl       : std_logic_vector(31 downto 0);
signal dac_stat       : std_logic_vector(31 downto 0);
signal status         : std_logic_vector(31 downto 0);
signal dac_tx_en_r    : std_logic;
--signal dac_syncb      : std_logic_vector(NB_DAC39J84-1 downto 0);
signal dac_syncb      : std_logic_vector(3 downto 0);
signal lmkclk         : std_logic;
signal lmk_sync_r       : std_logic;
signal lmkclk_bufg    : std_logic;

----------------------------------------------------------------------------------------------------
-- signals to debug
----------------------------------------------------------------------------------------------------
attribute mark_debug : string;
attribute mark_debug of wfm_load_size     : signal is "TRUE";
attribute mark_debug of wfm_load_start    : signal is "TRUE";
attribute mark_debug of wfm_offload_size  : signal is "TRUE";
attribute mark_debug of wfm_offload_start : signal is "TRUE";
attribute mark_debug of wfm_offload_stop  : signal is "TRUE";
attribute mark_debug of dac_in_data       : signal is "TRUE";
attribute mark_debug of dac_in_stop       : signal is "TRUE";
attribute mark_debug of dac_in_dval       : signal is "TRUE";
attribute mark_debug of dac_data          : signal is "TRUE";
attribute mark_debug of dac_valid         : signal is "TRUE";


signal test_count : std_logic_vector(31 downto 0) :=(others=>'0');

signal wfm_input_status : bus032(31 downto 0);
signal wfm_output_status : bus032(31 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
--rst                <= rst_rstin(2);
in_cmd_val         <= cmd_in_cmdin_val;
in_cmd             <= cmd_in_cmdin;
cmd_out_cmdout     <= out_cmd;
cmd_out_cmdout_val <= out_cmd_val;
clk_cmd            <= cmdclk_in_cmdclk;

------------------------------------------------------------------------------------
-- Trigger Output, Sync Output
-------------------------------------------------------------------------------------
process(tx_clk_out(0))
begin
    if rising_edge(tx_clk_out(0)) then
        lmk_sync_r         <= fmc_ctrl(0);
        lmk_sync           <= lmk_sync_r;
    end if;
end process;

--trigger_out        <= sysref_bufg; --ext_trigger_buf;
trigger_out        <= fmc_ctrl(0)   when fmc_ctrl(3 downto 1) = "000" else
                      test_count(5) when fmc_ctrl(3 downto 1) = "001" else
                      test_count(4) when fmc_ctrl(3 downto 1) = "010" else
                      sysref_bufg   when fmc_ctrl(3 downto 1) = "011" else
                      fmc_ctrl(4)   when fmc_ctrl(3 downto 1) = "100" else
                      lmkclk_bufg   when fmc_ctrl(3 downto 1) = "101" else
                      ext_trigger_buf   when fmc_ctrl(3 downto 1) = "110" else
                      '0';

process(clk_cmd)
begin
    if rising_edge(clk_cmd) then
        test_count <= test_count + 1; 
    end if;
end process;

-------------------------------------------------------------------------------------
-- local reset
-------------------------------------------------------------------------------------
process(clk_cmd)
begin
    if rising_edge(clk_cmd) then
        rst  <= rst_rstin(2);
    end if;
end process;

-------------------------------------------------------------------------------------
-- FMC144 Command Controller
-------------------------------------------------------------------------------------
fmc216_ctrl_inst: 
entity work.fmc216_ctrl
generic map (
  START_ADDR         => START_ADDR_FMC216_CTRL,
  STOP_ADDR          => STOP_ADDR_FMC216_CTRL,
  NB_CONVERTERS      => NB_CHANNELS
)
port map (
  rst                => rst,

  clk_cmd            => clk_cmd,
  in_cmd_val         => in_cmd_val,
  in_cmd             => in_cmd,
  out_cmd_val        => out_cmd_val0,
  out_cmd            => out_cmd0,
  cmd_busy           => cmd_busy0,

  ext_trigger_p      => ext_trigger_p,
  ext_trigger_n      => ext_trigger_n,
  ext_trigger_buf    => ext_trigger_buf,

  dac_clk           => tx_clk_out(0),
  wfm_load_size     => wfm_load_size,
  wfm_load_start    => wfm_load_start,
  wfm_offload_size  => wfm_offload_size,
  wfm_offload_start => wfm_offload_start,
  wfm_offload_stop  => wfm_offload_stop,
  wfm_rst           => wfm_rst,

  o_xcvr_ctrl       => xcvr_ctrl,
  o_fmc_ctrl        => fmc_ctrl,
  o_dac_ctrl        => dac_ctrl,
  i_status          => status,

  pg_m2c            => pg_m2c,
  prsnt_m2c_l       => prsnt_m2c_l

);

process(clk_cmd)
begin
    if rising_edge(clk_cmd) then
        status(15 downto 0)  <= xcvr_rdy_out(7 downto 0) & qpll_lock_out(7 downto 0);
        status(16)           <= wfm_input_status(0)(31);
        status(17)           <= wfm_input_status(1)(31);
        status(18)           <= wfm_input_status(2)(31);
        status(19)           <= wfm_input_status(3)(31);
        status(20)           <= wfm_input_status(4)(31);
        status(21)           <= wfm_input_status(5)(31);
        status(22)           <= wfm_input_status(6)(31);
        status(23)           <= wfm_input_status(7)(31);
        status(24)           <= wfm_input_status(8)(31);
        status(25)           <= wfm_input_status(9)(31);
        status(26)           <= wfm_input_status(10)(31);
        status(27)           <= wfm_input_status(11)(31);
        status(28)           <= wfm_input_status(12)(31);
        status(29)           <= wfm_input_status(13)(31);
        status(30)           <= wfm_input_status(14)(31);
        status(31)           <= wfm_input_status(15)(31);
    end if;
end process;

xcvr_rxrst <= xcvr_ctrl(0);
-------------------------------------------------------------------------------------
-- JESD204B Wrapper  
-------------------------------------------------------------------------------------
jesd204b_inst0: 
entity work.jesd204b_vc707_8lane_dac
port map(
   rst              => rst,
   o_status         => dac_stat,
   i_control        => dac_ctrl,
   i_sysref_bufg    => sysref_bufg, 
   i_tx_clk         => tx_clk_out(0),
   -- dac 0
   i_dac_data0      => dac_data(0),
   i_dac_data1      => dac_data(1),
   i_dac_data2      => dac_data(2),
   i_dac_data3      => dac_data(3),
   i_dac_valid0     => dac_valid(0),
   i_dac_valid1     => dac_valid(1),
   i_dac_valid2     => dac_valid(2),
   i_dac_valid3     => dac_valid(3),
   --dac 1
   i_dac_data4      => dac_data(4),
   i_dac_data5      => dac_data(5),
   i_dac_data6      => dac_data(6),
   i_dac_data7      => dac_data(7),
   i_dac_valid4     => dac_valid(4),
   i_dac_valid5     => dac_valid(5),
   i_dac_valid6     => dac_valid(6),
   i_dac_valid7     => dac_valid(7),
   -- dac 2
   i_dac_data8      => dac_data(8),
   i_dac_data9      => dac_data(9),
   i_dac_data10     => dac_data(10),
   i_dac_data11     => dac_data(11),
   i_dac_valid8     => dac_valid(8),
   i_dac_valid9     => dac_valid(9),
   i_dac_valid10    => dac_valid(10),
   i_dac_valid11    => dac_valid(11),
   -- dac 3
   i_dac_data12     => dac_data(12),
   i_dac_data13     => dac_data(13),
   i_dac_data14     => dac_data(14),
   i_dac_data15     => dac_data(15),
   i_dac_valid12    => dac_valid(12),
   i_dac_valid13    => dac_valid(13),
   i_dac_valid14    => dac_valid(14),
   i_dac_valid15    => dac_valid(15),
   -- tranceiver interface 
   o_tx_data_in0    => tx_data_in(0),   
   o_tx_data_in1    => tx_data_in(1), 
   o_tx_data_in2    => tx_data_in(2), 
   o_tx_data_in3    => tx_data_in(3), 
   o_tx_data_in4    => tx_data_in(4), 
   o_tx_data_in5    => tx_data_in(5), 
   o_tx_data_in6    => tx_data_in(6), 
   o_tx_data_in7    => tx_data_in(7), 
   o_tx_kchar_in0   => tx_kchar_in(0),  
   o_tx_kchar_in1   => tx_kchar_in(1),  
   o_tx_kchar_in2   => tx_kchar_in(2),  
   o_tx_kchar_in3   => tx_kchar_in(3),  
   o_tx_kchar_in4   => tx_kchar_in(4),  
   o_tx_kchar_in5   => tx_kchar_in(5),  
   o_tx_kchar_in6   => tx_kchar_in(6),  
   o_tx_kchar_in7   => tx_kchar_in(7),  
   dac_syncb        => dac_syncb(NB_DAC39J84-1 downto 0)
);

generate_dac_sync:
for I in 0 to NB_DAC39J84-1 generate

    IBUFDS_dac_sync_inst : IBUFDS
    generic map (
       DQS_BIAS => "FALSE"  -- (FALSE, TRUE)
    )
    port map (
       O => dac_syncb(I),   -- 1-bit output: Buffer output
       I => dac_syncb_p(I),   -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
       IB => dac_syncb_n(I)  -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
    );
end generate;

----------------------------------------------------------------------------
-- DAC WAVEFORM REPEAT
----------------------------------------------------------------------------

gen_wfm_repeat: 
for i in 0 to NB_CHANNELS-1 generate

    wfm_playback_inst0: entity work.wfm 
    generic map (
        WIDTH_INPUT   => 64, 
        WIDTH_OUTPUT  => 16 
    )  
    port map (
      rst               => wfm_rst(i),
      clk               => clk_cmd,

      wfm_input_status  => wfm_input_status(i),
      wfm_output_status => wfm_output_status(i),

      wfm_load_size     => wfm_load_size(i),
      wfm_load_start    => wfm_load_start(i),
      wfm_offload_size  => wfm_offload_size(i),
      wfm_offload_start => wfm_offload_start(i),
      wfm_offload_stop  => wfm_offload_stop(i),
      wr_clk            => clk_cmd,
      wfm_in_data       => dac_in_data(i),
      wfm_in_stop       => dac_in_stop(i),
      wfm_in_dval       => dac_in_dval(i),
      rd_clk            => tx_clk_out(0),
      wfm_out_data      => dac_data(i),
      wfm_out_stop      => '0', --dac_stop(i),
      wfm_out_dval      => dac_valid(i)
    );
end generate;

-------------------------------------------------------------------------------------
--  Tranceiver Wrapper
----------------------------------------------------------------------------------------
xcvr_wrapper_inst0:
entity work.xcvr_wrapper
port map (
   clk_in            => clk_cmd,
   rst_in            => xcvr_rxrst,  
   xcvr_rdy_out      => xcvr_rdy_out(7 downto 0), 
   lock_out     	  => qpll_lock_out(7 downto 0), 
	xcvr_ctrl		  => xcvr_ctrl,
   -- TX interface
   tx_clk_out        => tx_clk_out(7 downto 0),   
   tx_data_in        => tx_data_in, 
   tx_kchar_in       => tx_kchar_in,  
   -- RX interface
   rx_slide_in       => (others=>'0'),
   rx_clk_out        => open, 
   rx_data_out       => open, 
   rx_kchar_out      => open,   
   rx_dispar_out     => open, 
   rx_invalid_out    => open,  
   rx_comma_out      => open, 
   -- External signal
   rxn_in            => serdin_n, 
   rxp_in            => serdin_p, 
   txn_out           => serdout_n, 
   txp_out           => serdout_p, 
   refclk_p          => refclk_p,
   refclk_n          => refclk_n
);

----------------------------------------------------------------------------------------------------
-- Frequency counter
----------------------------------------------------------------------------------------------------
sip_freq_cnt16_inst : entity work.sip_freq_cnt16
generic map (
  START_ADDR      => START_ADDR_FREQ_CNT,
  STOP_ADDR       => STOP_ADDR_FREQ_CNT
)
port map (
  clk_cmd         => clk_cmd,
  in_cmd_val      => in_cmd_val,
  in_cmd          => in_cmd,
  out_cmd_val     => out_cmd_val2,
  out_cmd         => out_cmd2,
  in_cmd_busy     => cmd_busy2,
  reset           => rst,
  reference_clock => clk_cmd,
  test_clocks     => test_clocks
);

--comment out due to clock domain crossing problems
test_clocks(0) <= clk_cmd;          -- CMD CLOCK
test_clocks(1) <= tx_clk_out(0);    -- GTH CLOCK
test_clocks(2) <= sysref_bufg;      -- SYSREF
test_clocks(3) <= lmkclk_bufg;      -- spi_clk_out  
test_clocks(4) <= ext_trigger_buf;  -- EXTERNAL TRIG
test_clocks(15 downto 5) <= (others => '0');

----------------------------------------------------------------------------------------------------
-- Command out merge & pipeline
----------------------------------------------------------------------------------------------------
process (rst, clk_cmd)
begin
  if (rst = '1') then
    out_cmd_val  <= '0';
    out_cmd      <= (others => '0');
    cmd_busy     <= '0';
  elsif (rising_edge(clk_cmd)) then
    out_cmd_val  <= out_cmd_val0 or out_cmd_val1 or out_cmd_val2;
    out_cmd      <=     out_cmd0 or     out_cmd1 or    out_cmd2;
    cmd_busy     <=    cmd_busy0 or    cmd_busy2;
  end if;
end process;

----------------------------------------------------------------------------------------------------
-- JESD sysref 
----------------------------------------------------------------------------------------------------
BUFDS_sysref : IBUFDS
generic map (
   DQS_BIAS => "FALSE"  -- (FALSE, TRUE)
)
port map (
   O    => sysref,   -- 1-bit output: Buffer output
   I    => lmkclk_sysref_p, -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
   IB   => lmkclk_sysref_n  -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
);

BUFG_sysref : BUFG
port map (
   O => sysref_bufg, -- 1-bit output: Buffer
   I => sysref       -- 1-bit input: Buffer
);

----------------------------------------------------------------------------------------------------
-- lmk clock
----------------------------------------------------------------------------------------------------
BUFDS_lmkclk : IBUFDS
generic map (
   DQS_BIAS => "FALSE"  -- (FALSE, TRUE)
)
port map (
   O    => lmkclk,   -- 1-bit output: Buffer output
   I    => lmkclk_p, -- 1-bit input: Diff_p buffer input (connect directly to top-level port)
   IB   => lmkclk_n  -- 1-bit input: Diff_n buffer input (connect directly to top-level port)
);

BUFG_lmkclk : BUFG
port map (
   O => lmkclk_bufg, -- 1-bit output: Buffer
   I => lmkclk       -- 1-bit input: Buffer
);

-------------------------------------------------------------------------------------
--End
-------------------------------------------------------------------------------------
end architecture sip_fmc216_syn;
