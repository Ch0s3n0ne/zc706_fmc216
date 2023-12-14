--------------------------------------------------------------------------------
-- This is the top level MAC Engine
-- Its the glue logic between the MAC and StellarIP Stars
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- Specify Libraries
--------------------------------------------------------------------------------

library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_unsigned.all;
library unisim;
  use unisim.vcomponents.all;

--------------------------------------------------------------------------------
-- Specify Entity
--------------------------------------------------------------------------------

entity mac_engine is
port (
  -- Master reset input
  cpu_reset         : in  std_logic;

  -- Master clock input
  sysclk_p          : in  std_logic;
  sysclk_n          : in  std_logic;
  gpio_led          : out std_logic_vector(3 downto 0);

  -- Ethernet control interface
  phy_reset_l       : out std_logic;
  phy_mdc           : out std_logic;
  phy_mdio          : inout std_logic;

  --SGM2 interface
  gtrefclk_p				: in std_logic;                     -- Differential +ve of reference clock for tranceiver: 125MHz, very high quality                
  gtrefclk_n				: in std_logic;                     -- Differential -ve of reference clock for tranceiver: 125MHz, very high quality                
  phy_txp           : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
  phy_txn           : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
  phy_rxp           : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
  phy_rxn           : in std_logic;

  -- Command interface (register read/write)
  clk_out           : out std_logic;
  rst_out           : out std_logic;

  -- Command interface (register read/write)
  cmd_clk           : out std_logic;
  out_cmd_val       : out std_logic;
  out_cmd           : out std_logic_vector(63 downto 0);
  in_cmd_val        : in  std_logic;
  in_cmd            : in  std_logic_vector(63 downto 0);

  -- Auto offload interface (data push, with stop)
  auto_start        : in  std_logic;
  auto_channel      : in  std_logic_vector(7 downto 0);
  auto_size         : in  std_logic_vector(31 downto 0);
  auto_data_val     : in  std_logic;
  auto_data         : in  std_logic_vector(63 downto 0);
  auto_data_stop    : out std_logic;
  auto_busy         : out std_logic;

  -- Block write interface (data push, non-stop)
  write_start       : out std_logic;
  write_channel     : out std_logic_vector(7 downto 0);
  write_start_addr  : out std_logic_vector(31 downto 0);
  write_size        : out std_logic_vector(31 downto 0);
  write_data_val    : out std_logic;
  write_data        : out std_logic_vector(63 downto 0);

  -- Block read interface (data push, with stop)
  read_start        : out std_logic;
  read_channel      : out std_logic_vector(7 downto 0);
  read_start_addr   : out std_logic_vector(31 downto 0);
  read_size         : out std_logic_vector(31 downto 0);
  read_data_val     : in  std_logic;
  read_data         : in  std_logic_vector(63 downto 0);
  read_data_stop    : out std_logic

);
end mac_engine;

--------------------------------------------------------------------------------
-- Specify Architecture
--------------------------------------------------------------------------------

architecture mac_engine_syn of mac_engine is

--------------------------------------------------------------------------------
-- Component declaration
--------------------------------------------------------------------------------

component brd_clocks is
port (
  rst             : in  std_logic;
  sysclk_p        : in  std_logic;
  sysclk_n        : in  std_logic;
  pll_lock        : out std_logic;
  clk50           : out std_logic;
  clk125          : out std_logic;
  clk200          : out std_logic
);
end component brd_clocks;

component ge_mac_stream is
port (                        
	sgmii_clk_en	: in std_logic;
  link_speed    : out std_logic_vector(1 downto 0);
  clk50         : in  std_logic;
  phy_reset_l   : out std_logic;
  phy_mdc       : out std_logic;
  phy_mdio      : inout std_logic;
  ge_rxclk      : in  std_logic;
  ge_rxdv       : in  std_logic;
  ge_rxd        : in  std_logic_vector(7 downto 0);
  ge_txen       : out std_logic;
  ge_txd        : out std_logic_vector(7 downto 0);
  ge_txer       : out std_logic;
  clk125        : in  std_logic;
  rst           : in  std_logic;
  eth_rx_stream : out std_logic_vector(9 downto 0);
  eth_tx_stream : in  std_logic_vector(9 downto 0)
);
end component ge_mac_stream;

component brd_packet_engine is
generic (
  MY_MAC            : std_logic_vector(47 downto 0)
);
port (
  -- Destination MAC addresses
  server_mac        : in std_logic_vector(47 downto 0);
  -- Master Clock
  rst               : in std_logic;
  clk               : in std_logic;
  -- Frame Buffer interface
  eth_stream_in     : in  std_logic_vector(9 downto 0);
  eth_stream_out    : out std_logic_vector(9 downto 0);
  out_tick          : in  std_logic;
  link_speed        : in  std_logic_vector(1 downto 0);
  -- Command interface (register read/write)
  out_cmd_val       : out std_logic;
  out_cmd           : out std_logic_vector(63 downto 0);
  in_cmd_val        : in  std_logic;
  in_cmd            : in  std_logic_vector(63 downto 0);
  -- Auto offload interface (data push, with stop)
  auto_start        : in  std_logic;
  auto_channel      : in  std_logic_vector(7 downto 0);
  auto_size         : in  std_logic_vector(31 downto 0);
  auto_data_val     : in  std_logic;
  auto_data         : in  std_logic_vector(63 downto 0);
  auto_data_stop    : out std_logic;
  auto_busy         : out std_logic;
  -- Block write interface (data push, non-stop)
  write_start       : out std_logic;
  write_channel     : out std_logic_vector(7 downto 0);
  write_start_addr  : out std_logic_vector(31 downto 0);
  write_size        : out std_logic_vector(31 downto 0);
  write_data_val    : out std_logic;
  write_data        : out std_logic_vector(63 downto 0);
  -- Block read interface (data push, with stop)
  read_start        : out std_logic;
  read_channel      : out std_logic_vector(7 downto 0);
  read_start_addr   : out std_logic_vector(31 downto 0);
  read_size         : out std_logic_vector(31 downto 0);
  read_data_val     : in  std_logic;
  read_data         : in  std_logic_vector(63 downto 0);
  read_data_stop    : out std_logic
);
end component brd_packet_engine;

component rst_gen
generic ( reset_base :integer:=1024);
port
(


   clk            :in std_logic;
   reset_i        :in std_logic; --reset complete FPGA
   clk_locked     :in std_logic;

   --reset outputs
   dcm_reset                      :out std_logic;
   reset1_o                       :out std_logic;
   reset2_o                       :out std_logic;
   reset3_o                       :out std_logic

   );
end component;

 component gig_eth_pcs_pma_v11_2_block
      port(
      -- Transceiver Interface
      ------------------------

      gtrefclk             : in std_logic;                     -- Very high quality 125MHz clock for GT transceiver
      txp                  : out std_logic;                    -- Differential +ve of serial transmission from PMA to PMD.
      txn                  : out std_logic;                    -- Differential -ve of serial transmission from PMA to PMD.
      rxp                  : in std_logic;                     -- Differential +ve for serial reception from PMD to PMA.
      rxn                  : in std_logic;                     -- Differential -ve for serial reception from PMD to PMA.

      txoutclk             : out std_logic;                    -- txoutclk from GT transceiver (62.5MHz)
      resetdone            : out std_logic;                    -- The GT transceiver has completed its reset cycle
      mmcm_locked					 : in std_logic;   
      userclk              : in std_logic;                     -- 62.5MHz clock.
      userclk2             : in std_logic;                     -- 125MHz clock.
      independent_clock_bufg: in std_logic;                    -- 200MHz clock.
      pma_reset            : in std_logic;                     -- transceiver PMA reset signal

      -- GMII Interface
      -----------------
      sgmii_clk_r          : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_f          : out std_logic;                    -- Clock for client MAC (125Mhz, 12.5MHz or 1.25MHz).
      sgmii_clk_en         : out std_logic;                    -- Clock enable for client MAC

      gmii_txd             : in std_logic_vector(7 downto 0);  -- Transmit data from client MAC.
      gmii_tx_en           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_tx_er           : in std_logic;                     -- Transmit control signal from client MAC.
      gmii_rxd             : out std_logic_vector(7 downto 0); -- Received Data to client MAC.
      gmii_rx_dv           : out std_logic;                    -- Received control signal to client MAC.
      gmii_rx_er           : out std_logic;                    -- Received control signal to client MAC.
      gmii_isolate         : out std_logic;                    -- Tristate control to electrically isolate GMII.

      -- Management: Alternative to MDIO Interface
      --------------------------------------------

      configuration_vector : in std_logic_vector(4 downto 0);  -- Alternative to MDIO interface.


      an_interrupt         : out std_logic;                    -- Interrupt to processor to signal that Auto-Negotiation has completed
      an_adv_config_vector : in std_logic_vector(15 downto 0); -- Alternate interface to program REG4 (AN ADV)
      an_restart_config    : in std_logic;                     -- Alternate signal to modify AN restart bit in REG0
      link_timer_value     : in std_logic_vector(8 downto 0);  -- Programmable Auto-Negotiation Link Timer Control

      -- Speed Control
      ----------------
      speed_is_10_100      : in std_logic;                     -- Core should operate at either 10Mbps or 100Mbps speeds
      speed_is_100         : in std_logic;                      -- Core should operate at 100Mbps speed

      -- General IO's
      ---------------
      status_vector        : out std_logic_vector(15 downto 0); -- Core status.
      reset                : in std_logic;                     -- Asynchronous reset for entire core.
      signal_detect        : in std_logic                      -- Input from PMD to indicate presence of optical input.

      );

   end component;

--------------------------------------------------------------------------------
-- Constant declaration
--------------------------------------------------------------------------------

-- MAC addresses
constant SERVER_MAC_DEF      : std_logic_vector(47 downto 0) := x"34_44_53_50_30_30"; -- 4DSP00 --x"00_50_C2_AE_40_00";
constant MY_MAC_DEF          : std_logic_vector(47 downto 0) := x"34_44_53_50_30_31"; -- 4DSP01 --x"00_50_C2_AE_40_01";

-- Stellar Addresses
constant ADDR_SW_RESET       : std_logic_vector(27 downto 0) := x"0000000";
constant ADDR_SERVER_MAC_L   : std_logic_vector(27 downto 0) := x"0000003";
constant ADDR_SERVER_MAC_H   : std_logic_vector(27 downto 0) := x"0000004";

--------------------------------------------------------------------------------
-- Signal declaration
--------------------------------------------------------------------------------
signal pll_lock          : std_logic;
signal clk50             : std_logic;
signal clk125            : std_logic;
signal clk200            : std_logic;
signal rst               : std_logic;

signal rst_cmd           : std_logic;
signal rst_dly           : std_logic_vector(15 downto 0);
signal sw_rst            : std_logic;

signal eth_rx_stream     : std_logic_vector(9 downto 0);
signal eth_tx_stream     : std_logic_vector(9 downto 0);

signal sgmii_clk_en	     : std_logic;
signal link_speed        : std_logic_vector(1 downto 0);
signal link_speed_conv   : std_logic_vector(1 downto 0);

signal server_mac        : std_logic_vector(47 downto 0);

signal out_cmd_val_i     : std_logic;
signal out_cmd_i         : std_logic_vector(63 downto 0);
signal in_cmd_val_i      : std_logic;
signal in_cmd_i          : std_logic_vector(63 downto 0);


signal dcm_reset          :std_logic;
signal reset1_o           :std_logic;
signal reset2_o           :std_logic;
signal reset3_o           :std_logic;

signal reset2_o_int 			:std_logic;
signal sw_rst_int 				:std_logic;


-- clock generation signals for tranceiver
signal gtrefclk              : std_logic;                    -- Route gtrefclk through an IBUFG.
signal txoutclk              : std_logic;                    -- txoutclk from GT transceiver
signal txoutclk_bufg         : std_logic;                    -- txoutclk from GT transceiver
signal resetdone             : std_logic;                    -- To indicate that the GT transceiver has completed its reset cycle
signal mmcm_locked		       : std_logic;                    -- 
signal not_mmcm_locked			 : std_logic;
signal mmcm_reset            : std_logic;                    -- MMCM reset signal.
signal clkfbout              : std_logic;                    -- MMCM feedback clock
signal clkout0               : std_logic;                    -- MMCM clock0 output (62.5MHz).
signal clkout1               : std_logic;                    -- MMCM clock1 output (125MHz).
signal userclk               : std_logic;                    -- 62.5MHz clock for GT transceiver Tx/Rx user clocks
signal userclk2              : std_logic;                    -- 125MHz clock for core reference clock.
signal phy_txc_gtxclk        : std_logic;

-- PMA reset generation signals for tranceiver
signal pma_reset_pipe        : std_logic_vector(3 downto 0); -- flip-flop pipeline for reset duration stretch
signal pma_reset             : std_logic;                    -- Synchronous transcevier PMA reset

-- GMII signals
signal gmii_isolate          : std_logic;                    -- Internal gmii_isolate signal.
signal gmii_txd_int          : std_logic_vector(7 downto 0); -- Internal gmii_txd signal (between core and SGMII adaptation module).
signal gmii_tx_en_int        : std_logic;                    -- Internal gmii_tx_en signal (between core and SGMII adaptation module).
signal gmii_tx_er_int        : std_logic;                    -- Internal gmii_tx_er signal (between core and SGMII adaptation module).
signal gmii_rxd_int          : std_logic_vector(7 downto 0); -- Internal gmii_rxd signal (between core and SGMII adaptation module).
signal gmii_rx_dv_int        : std_logic;                    -- Internal gmii_rx_dv signal (between core and SGMII adaptation module).
signal gmii_rx_er_int        : std_logic;                    -- Internal gmii_rx_er signal (between core and SGMII adaptation module).

signal phy_rxd               : std_logic_vector(7 downto 0);
signal phy_rxctrl_rxdv       : std_logic;
signal phy_txd               : std_logic_vector(7 downto 0);
signal phy_txctl_txen        : std_logic;
signal phy_txer							 : std_logic;

-- Extra registers to ease IOB placement
signal status_vector_int : std_logic_vector(15 downto 0);

-- These attributes will stop timing errors being reported in back annotated
-- SDF simulation.
attribute ASYNC_REG                   : string;
attribute ASYNC_REG of pma_reset_pipe : signal is "TRUE";
signal rst_clk200 :std_logic;
--------------------------------------------------------------------------------
-- Begin
--------------------------------------------------------------------------------
begin

--------------------------------------------------------------------------------
-- Clock generation
--------------------------------------------------------------------------------
brd_clocks_inst : brd_clocks
port map (
  rst             => '0',
  sysclk_p        => sysclk_p,
  sysclk_n        => sysclk_n,
  pll_lock        => pll_lock,
  clk50           => clk50,
  clk125          => clk125,
  clk200          => clk200
);
--reset generation must make sure to reset the phy for at least 10 ms
--reset_i is debounced for 10 ms after asertion
--reset 1 is deaserted 16*reset_base after the dcm reset is deasserted
--reset 2 is deaserted 8*reset_base after the  reset 1 is deasserted
--reset 3 is deaserted 4*reset_base after the  reset 2 is deasserted

i_rst_gen:rst_gen
generic map( reset_base =>80000)
port map
(


   clk            =>clk125,
   reset_i        =>cpu_reset,
   clk_locked     => pll_lock,

   --reset outputs
   dcm_reset        =>dcm_reset,
   reset1_o         =>reset1_o,
   reset2_o         =>reset2_o,
   reset3_o         =>reset3_o
   );
----------------------------------------------------------------------------------------------------
-- Reset generation
----------------------------------------------------------------------------------------------------
rst <=  reset2_o or sw_rst;
phy_reset_l <= not   reset1_o;
--------------------------------------------------------------------------------
-- Ethernet Interface
--------------------------------------------------------------------------------
-- Note: all ethernet traffic is handled in 10-bit streams
-- The ETH_STREAM signal actually includes three signals:
--   Bit 9: CKE: Clock enable sets data rate.  Lower bits are only valid if CKE.
--   Bit 8: FRM: Frame signal, asserted for entire ethernet frame.
--   Bits 7-0: DAT: Frame data, ignored if not FRM.
ge_mac_stream_inst : ge_mac_stream
port map (
	sgmii_clk_en	=>sgmii_clk_en,
  clk50         => clk50,
  phy_reset_l   => open,
  phy_mdc       => phy_mdc,
  phy_mdio      => phy_mdio,
  ge_rxclk      => userclk2,
  ge_rxdv       => phy_rxctrl_rxdv,
  ge_rxd        => phy_rxd,
  ge_txen       => phy_txctl_txen,
  ge_txd        => phy_txd,
  ge_txer       => phy_txer,
  clk125        => userclk2,
  rst           => not_mmcm_locked,
  eth_rx_stream => eth_rx_stream,
  link_speed    => link_speed,
  eth_tx_stream => eth_tx_stream
);

--------------------------------------------------------------------------------
-- Ethernet packet engine
-- Recieves packets from Software, generates response packets
--------------------------------------------------------------------------------
brd_packet_engine_inst : brd_packet_engine
generic map (
  MY_MAC            => MY_MAC_DEF
)
port map (
  server_mac        => server_mac,

  rst               => not_mmcm_locked,
  clk               => userclk2,
  eth_stream_in     => eth_rx_stream,
  eth_stream_out    => eth_tx_stream,
  out_tick          => sgmii_clk_en,
  link_speed        => link_speed,

  out_cmd_val       => out_cmd_val_i,
  out_cmd           => out_cmd_i,
  in_cmd_val        => in_cmd_val_i,
  in_cmd            => in_cmd_i,

  auto_start        => auto_start,
  auto_channel      => auto_channel,
  auto_size         => auto_size,
  auto_data_val     => auto_data_val,
  auto_data         => auto_data,
  auto_data_stop    => auto_data_stop,
  auto_busy         => auto_busy,

  write_start       => write_start,
  write_channel     => write_channel,
  write_start_addr  => write_start_addr,
  write_size        => write_size,
  write_data_val    => write_data_val,
  write_data        => write_data,

  read_start        => read_start,
  read_channel      => read_channel,
  read_start_addr   => read_start_addr,
  read_size         => read_size,
  read_data_val     => read_data_val,
  read_data         => read_data,
  read_data_stop    => read_data_stop
);



  ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  -- Instantiate the Core Block (core wrapper).------------------------------------------------------------------------------------------------------------------------------------------------------------------
  ------------------------------------------------------------------------------

  core_wrapper : gig_eth_pcs_pma_v11_2_block
    port map (

      gtrefclk             => gtrefclk, --------------------------- DONE!
      txp                  => phy_txp,   --------------------------- DONE!
      txn                  => phy_txn,   --------------------------- DONE!
      rxp                  => phy_rxp,   --------------------------- DONE!
      rxn                  => phy_rxn,   --------------------------- DONE!
      txoutclk             => txoutclk,  --------------------------- DONE!
      resetdone            => resetdone, --------------------------- DONE!
      mmcm_locked				   =>mmcm_locked,
      userclk              => userclk,   --------------------------- DONE!
      userclk2             => userclk2,  --------------------------- DONE!
      independent_clock_bufg => clk200,  --------------------------- DONE! 200Mhz clk
      pma_reset              => pma_reset,-------------------------- DONE!
      sgmii_clk_r          => open,       -------------------------- DONE!
      sgmii_clk_f          => open,       -------------------------- DONE!
      sgmii_clk_en         => sgmii_clk_en,       -------------------------- DONE!
      gmii_txd             => gmii_txd_int, ------------------------ DONE!
      gmii_tx_en           => gmii_tx_en_int, ---------------------- DONE!
      gmii_tx_er           => gmii_tx_er_int, ---------------------- DONE!
      gmii_rxd             => gmii_rxd_int,   ---------------------- DONE!
      gmii_rx_dv           => gmii_rx_dv_int, ---------------------- DONE!
      gmii_rx_er           => open,           ---------------------- DONE!
      gmii_isolate         => open,           ---------------------- DONE!
      configuration_vector => "10000",          -------------------- DONE!
      an_interrupt         => open,             -------------------- DONE!
      an_adv_config_vector => "0000000000100001", ------------------ DONE!
      an_restart_config    => '0',                 ----------------- DONE!
      link_timer_value     =>  "000110010",  -- The link timer value is here set at 1.64 ms (please refer to the core's User Manual).   ------------------ DONE!
      speed_is_10_100      => link_speed_conv(0), -------------------- DONE!
      speed_is_100         => link_speed_conv(1), -------------------- DONE!
      status_vector        => open              , -------------------- DONE!
      reset                => rst,                -------------------- DONE!
      signal_detect        => '1'                 -------------------- DONE!
      );

  --link_speed_conv <= "11" when link_speed = "01"  else  -- 100Mbit
  --                   "00" when link_speed = "10"  else  -- 1000Mbit
  --                   "01" when link_speed = "00";       -- 10Mbit
	 link_speed_conv <= "00";
	
	txclk_bufg :bufg
	port map
	(
		o =>txoutclk_bufg,
		i=>txoutclk
	);
	

  -- The GT transceiver provides a 62.5MHz clock to the FPGA fabrix.  This is
  -- routed to an MMCM module where it is used to create phase and frequency
  -- related 62.5MHz and 125MHz clock sources

  mmcm_adv_inst : MMCME2_ADV
  generic map
   (BANDWIDTH            => "OPTIMIZED",
    CLKOUT4_CASCADE      => FALSE,
    COMPENSATION         => "ZHOLD",
    STARTUP_WAIT         => FALSE,
    DIVCLK_DIVIDE        => 1,
    CLKFBOUT_MULT_F      => 10.000,
    CLKFBOUT_PHASE       => 0.000,
    CLKFBOUT_USE_FINE_PS => FALSE,
    CLKOUT0_DIVIDE_F     => 10.000,
    CLKOUT0_PHASE        => 0.000,
    CLKOUT0_DUTY_CYCLE   => 0.5,
    CLKOUT0_USE_FINE_PS  => FALSE,
    CLKOUT1_DIVIDE       => 5,
    CLKOUT1_PHASE        => 0.000,
    CLKOUT1_DUTY_CYCLE   => 0.5,
    CLKOUT1_USE_FINE_PS  => FALSE,
    CLKIN1_PERIOD        => 16.0,
    REF_JITTER1          => 0.010)
  port map
    -- Output clocks
   (CLKFBOUT             => clkfbout,
    CLKFBOUTB            => open,
    CLKOUT0              => clkout0,
    CLKOUT0B             => open,
    CLKOUT1              => clkout1,
    CLKOUT1B             => open,
    CLKOUT2              => open,
    CLKOUT2B             => open,
    CLKOUT3              => open,
    CLKOUT3B             => open,
    CLKOUT4              => open,
    CLKOUT5              => open,
    CLKOUT6              => open,
    -- Input clock control
    CLKFBIN              => clkfbout,
    CLKIN1               => txoutclk_bufg,
    CLKIN2               => '0',
    -- Tied to always select the primary input clock
    CLKINSEL             => '1',
    -- Ports for dynamic reconfiguration
    DADDR                => (others => '0'),
    DCLK                 => '0',
    DEN                  => '0',
    DI                   => (others => '0'),
    DO                   => open,
    DRDY                 => open,
    DWE                  => '0',
    -- Ports for dynamic phase shift
    PSCLK                => '0',
    PSEN                 => '0',
    PSINCDEC             => '0',
    PSDONE               => open,
    -- Other control and status signals
    LOCKED               => mmcm_locked,
    CLKINSTOPPED         => open,
    CLKFBSTOPPED         => open,
    PWRDWN               => '0',
    RST                  => mmcm_reset);

    mmcm_reset <= rst or (not resetdone);

-- Clock circuitry for the GT Transceiver uses a differential input clock.
   -- gtrefclk is routed to the tranceiver.
   ibufds_gtrefclk : IBUFDS_GTE2
   port map (
      I     => gtrefclk_p,
      IB    => gtrefclk_n,
      CEB   => '0',
      O     => gtrefclk,
      ODIV2 => open
   );
   -- This 62.5MHz clock is placed onto global clock routing and is then used
   -- for tranceiver TXUSRCLK/RXUSRCLK.
   bufg_userclk: BUFG
   port map (
      I     => clkout0,
      O     => userclk
   );


   -- This 125MHz clock is placed onto global clock routing and is then used
   -- to clock all Ethernet core logic.
   bufg_userclk2: BUFG
   port map (
      I     => clkout1,
      O     => userclk2
   );

   -----------------------------------------------------------------------------
   -- GMII transmitter data logic
   -----------------------------------------------------------------------------


   -- Drive input GMII signals through IOB input flip-flops (inferred).
   process (userclk2)
   begin
      if userclk2'event and userclk2 = '1' then
         gmii_txd_int    <= phy_txd;
         gmii_tx_en_int  <= phy_txctl_txen;
         gmii_tx_er_int  <= phy_txer;

      end if;
   end process;

  -----------------------------------------------------------------------------
   -- GMII receiver data logic
   -----------------------------------------------------------------------------


   -- Drive input GMII signals through IOB output flip-flops (inferred).
   process (userclk2)
   begin
      if userclk2'event and userclk2 = '1' then
         phy_rxd          <= gmii_rxd_int;
         phy_rxctrl_rxdv  <= gmii_rx_dv_int;
         --gmii_rx_er  <= gmii_rx_er_int;

      end if;
   end process;



 -----------------------------------------------------------------------------
   -- Transceiver PMA reset circuitry
   -----------------------------------------------------------------------------

   -- Create a reset pulse of a decent length
   process(rst, clk200)

   begin
     if clk200'event and clk200 = '1' then
      reset2_o_int  <= reset2_o;
      sw_rst_int    <= sw_rst;

     	if (rst_clk200 = '1') then
        pma_reset_pipe  <= "1111";
        pma_reset 		  <='1';
      else
	       pma_reset_pipe <= pma_reset_pipe(2 downto 0) & '0';
	       pma_reset <= pma_reset_pipe(3);
       end if;

       rst_clk200 <= reset2_o_int or sw_rst_int ;
     end if;
   end process;




--------------------------------------------------------------------------------
-- Software reset
--------------------------------------------------------------------------------
process (userclk2, mmcm_locked)
begin
	if(mmcm_locked='0') then 
		rst_dly 	<= (others=>'0');
		sw_rst		<= '0';
		rst_cmd 	<= '0';
  elsif (rising_edge(userclk2)) then

    -- Software Reset
    if (out_cmd_val_i = '1' and out_cmd_i(63 downto 60) = x"1" and out_cmd_i(59 downto 32) = ADDR_SW_RESET) then
      rst_cmd <= out_cmd_i(0);
    else
      rst_cmd <= '0';
    end if;

    rst_dly <= rst_dly(rst_dly'length-2 downto 0) & rst_cmd;

    sw_rst <= or_reduce(rst_dly);

  end if;
end process;

--------------------------------------------------------------------------------
-- Registers
--------------------------------------------------------------------------------
process (mmcm_locked, userclk2)
begin
  if (mmcm_locked = '0') then
    server_mac   <= SERVER_MAC_DEF;
    in_cmd_val_i <= '0';
    in_cmd_i     <= (others => '0');

  elsif (rising_edge(userclk2)) then

    -- Write to Server MAC registers
    if (out_cmd_val_i = '1' and out_cmd_i(63 downto 60) = x"1" and out_cmd_i(59 downto 32) = ADDR_SERVER_MAC_L) then
      server_mac(31 downto 0) <= out_cmd_i(31 downto 0);
    elsif (out_cmd_val_i = '1' and out_cmd_i(63 downto 60) = x"1" and out_cmd_i(59 downto 32) = ADDR_SERVER_MAC_H) then
      server_mac(47 downto 32) <= out_cmd_i(15 downto 0);
    end if;

    -- Read registers
    if (out_cmd_val_i = '1' and out_cmd_i(63 downto 60) = x"2" and out_cmd_i(59 downto 32) = ADDR_SERVER_MAC_L) then
      in_cmd_val_i <= '1';
      in_cmd_i(63 downto 60) <= x"4";
      in_cmd_i(59 downto 32) <= out_cmd_i(59 downto 32);
      in_cmd_i(31 downto  0) <= server_mac(31 downto 0);
    elsif (out_cmd_val_i = '1' and out_cmd_i(63 downto 60) = x"2" and out_cmd_i(59 downto 32) = ADDR_SERVER_MAC_H) then
      in_cmd_val_i <= '1';
      in_cmd_i(63 downto 60) <= x"4";
      in_cmd_i(59 downto 32) <= out_cmd_i(59 downto 32);
      in_cmd_i(31 downto  0) <= conv_std_logic_vector(0, 16) & server_mac(47 downto 32);
    else
      in_cmd_val_i <= in_cmd_val;
      in_cmd_i     <= in_cmd;
    end if;

  end if;
end process;
not_mmcm_locked <= not mmcm_locked;
--------------------------------------------------------------------------------
-- IDELAYCTRL
--------------------------------------------------------------------------------
idelayctrl_inst : idelayctrl
port map (
  rst    => rst,
  refclk => clk200,
  rdy    => open
);

--------------------------------------------------------------------------------
-- Connect entity
--------------------------------------------------------------------------------
clk_out     <= userclk2;
rst_out     <= not mmcm_locked;
cmd_clk     <= userclk2;
out_cmd_val <= out_cmd_val_i;
out_cmd     <= out_cmd_i;

gpio_led(0) <= pll_lock;
gpio_led(1) <= not pll_lock;
gpio_led(2) <= not mmcm_locked;
gpio_led(3) <= reset2_o;

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------

end mac_engine_syn;


