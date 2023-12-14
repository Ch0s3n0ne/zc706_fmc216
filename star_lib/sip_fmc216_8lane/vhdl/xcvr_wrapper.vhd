-------------------------------------------------------------------------------------
-- FILE NAME : xcvr_wrapper.vhd
-- AUTHOR    : Luis F. Munoz
-- COMPANY   : 4DSP 
-- UNITS     : Entity       - toplevel_template
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- Wrapper for generated IP from xilinx 
--
-------------------------------------------------------------------------------------
 
-------------------------------------------------------------------------------------
-- LIBRARIES
-------------------------------------------------------------------------------------
library ieee;
    use ieee.std_logic_1164.all;
    -- IEEE  
    --use ieee.numeric_std.all; 
    -- non-IEEE 
    use ieee.std_logic_unsigned.all;
    use ieee.std_logic_misc.all;
    use ieee.std_logic_arith.all;

library xil_defaultlib;
   use xil_defaultlib.types.all;

Library UNISIM;
    use UNISIM.vcomponents.all;
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity xcvr_wrapper is
generic (
	EXAMPLE_SIM_GTRESET_SPEEDUP : string    := "FALSE";    -- simulation setting for GT SecureIP model
	EXAMPLE_SIMULATION          : integer   := 0           -- Set to 1 for simulation
);
port (
   clk_in                 : in std_logic;
   rst_in                 : in std_logic;
   xcvr_rdy_out           : out std_logic_vector(7 downto 0);
   lock_out               : out std_logic_vector(7 downto 0);
   xcvr_ctrl			  : in std_logic_vector(31 downto 0);
   -- TX interface
   tx_clk_out             : out std_logic_vector(7 downto 0);
   tx_data_in             : in bus032(7 downto 0);
   tx_kchar_in            : in bus004(7 downto 0);
   -- RX interface
   rx_slide_in            : in  std_logic_vector(7 downto 0);
   rx_clk_out             : out std_logic_vector(7 downto 0);
   rx_data_out            : out bus032(7 downto 0);
   rx_kchar_out           : out bus004(7 downto 0);
   rx_dispar_out          : out bus004(7 downto 0);
   rx_invalid_out         : out bus004(7 downto 0);
   rx_comma_out           : out bus004(7 downto 0);
   -- External signals
   rxn_in                 : in std_logic_vector(7 downto 0);
   rxp_in                 : in std_logic_vector(7 downto 0);
   txn_out                : out std_logic_vector(7 downto 0);
   txp_out                : out std_logic_vector(7 downto 0);
   refclk_p               : in std_logic_vector(1 downto 0);
   refclk_n               : in std_logic_vector(1 downto 0)
);
end xcvr_wrapper;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of xcvr_wrapper is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
--constant EXAMPLE_SIM_GTRESET_SPEEDUP : string    := "FALSE";    -- simulation setting for GT SecureIP model
--constant EXAMPLE_SIMULATION          : integer   := 0;         -- Set to 1 for simulation
constant EXAMPLE_USE_CHIPSCOPE      : integer := 0;         -- Set to 1 to use Chipscope to drive resets
constant MGT_LANES                  : natural := 8;

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal xcvr_rx_data              : bus032(7 downto 0);
signal xcvr_k                    : bus004(7 downto 0);
signal xcvr_disparity            : bus004(7 downto 0);
signal xcvr_invalid              : bus004(7 downto 0);
signal xcvr_comma                : bus004(7 downto 0);
signal xcvr_rdy                  : std_logic_vector(7 downto 0);
signal xcvr_tx_data              : bus032(7 downto 0);
signal xcvr_tx_k                 : bus004(7 downto 0);

signal GT0_RXDATA_OUT            : bus032(7 downto 0);
signal GT0_RXCHARISK_OUT         : bus004(7 downto 0);
signal GT0_RXDISPERR_OUT         : bus004(7 downto 0);
signal GT0_RXNOTINTABLE_OUT      : bus004(7 downto 0);
signal GT0_RXCHARISCOMMA_OUT     : bus004(7 downto 0);
signal GT0_TXDATA_IN             : bus032(7 downto 0);
signal GT0_TXCHARISK_IN          : bus004(7 downto 0);
signal GT0_TXOUTCLK_OUT          : std_logic_vector(7 downto 0);

signal rxslide_in			     : std_logic_vector(7 downto 0);
signal rx_slide					 : std_logic_vector(7 downto 0);
signal slide_state				 : std_logic_vector(7 downto 0);
signal slide_counter		     : bus007(7 downto 0);

signal GT0_TX_FSM_RESET_DONE_OUT : std_logic_vector(7 downto 0);
signal GT0_RX_FSM_RESET_DONE_OUT : std_logic_vector(7 downto 0);
signal GT0_TXUSRCLK_IN           : std_logic_vector(7 downto 0);              
signal GT0_TXUSRCLK2_IN          : std_logic_vector(7 downto 0);
signal GT0_RXUSRCLK_IN           : std_logic_vector(7 downto 0);
signal GT0_RXUSRCLK2_IN          : std_logic_vector(7 downto 0);
signal GT0_RXUSERRDY_IN          : std_logic_vector(7 downto 0);
signal GT0_TXUSERRDY_IN          : std_logic_vector(7 downto 0);

signal GT0_RXOUTCLK_OUT		     : std_logic_vector(7 downto 0);

signal GT0_GTRXRESET_IN          : std_logic_vector(7 downto 0);
signal GT0_GTTXRESET_IN          : std_logic_vector(7 downto 0);
signal GT0_QPLLLOCK_OUT			 : std_logic;
signal GT0_GTREFCLK0_IN			 : std_logic_vector(7 downto 0);
signal GT0_CPLLLOCK_OUT			 : std_logic_vector(7 downto 0);

signal GT0_QPLLCLK_IN 			 : std_logic_vector(7 downto 0);
signal GT0_QPLLREFCLK_IN 		 : std_logic_vector(7 downto 0);
signal GT0_QPLLLOCK_IN 			 : std_logic_vector(7 downto 0);
signal GT0_QPLLRESET_IN 		 : std_logic_vector(7 downto 0);
signal GT0_QPLLREFCLKLOST_IN 	 : std_logic_vector(7 downto 0);
signal GT0_QPLLRESET_OUT 		 : std_logic_vector(7 downto 0);

signal rx_clock0				 : std_logic;
signal rx_clock1			     : std_logic;

signal tx_clk_outi              : std_logic_vector(7 downto 0);
signal rx_clk_outi              : std_logic_vector(7 downto 0);
signal gt_clock0                : std_logic;
signal gt_clock1                : std_logic;

signal bufg_mgt_clk				 : std_logic_vector(1 downto 0);
signal QPLLOUTCLK 				 : std_logic_vector(1 downto 0);
signal QPLLOUTREFCLK 			 : std_logic_vector(1 downto 0);
signal QPLLLOCK 				 : std_logic_vector(1 downto 0);
signal QPLLLOCKDETCLK 			 : std_logic_vector(1 downto 0);
signal QPLLREFCLKLOST 			 : std_logic_vector(1 downto 0);
signal QPLLRESET 				 : std_logic_vector(1 downto 0);

signal rx_bufg_clock			 : std_logic_vector(7 downto 0);
signal tx_bufg_clock             : std_logic_vector(7 downto 0); 

signal refclk_p_ibuf             : std_logic_vector(1 downto 0);
signal refclk_n_ibuf             : std_logic_vector(1 downto 0);

--***********************************************************************************
begin

--***********************************************************************************
---- remapping. data comes out in order of transceiver location.
rx_data_out(0) <=  xcvr_rx_data(4);
rx_data_out(1) <=  xcvr_rx_data(0);
rx_data_out(2) <=  xcvr_rx_data(5);
rx_data_out(3) <=  xcvr_rx_data(1);
rx_data_out(4) <=  xcvr_rx_data(6);
rx_data_out(5) <=  xcvr_rx_data(2);
rx_data_out(6) <=  xcvr_rx_data(7);
rx_data_out(7) <=  xcvr_rx_data(3);
rx_kchar_out(0)   <= xcvr_k(4);
rx_kchar_out(1)   <= xcvr_k(0);
rx_kchar_out(2)   <= xcvr_k(5); 
rx_kchar_out(3)   <= xcvr_k(1); 
rx_kchar_out(4)   <= xcvr_k(6); 
rx_kchar_out(5)   <= xcvr_k(2); 
rx_kchar_out(6)   <= xcvr_k(7); 
rx_kchar_out(7)   <= xcvr_k(3); 
rx_dispar_out(0)  <= xcvr_disparity(4); 
rx_dispar_out(1)  <= xcvr_disparity(0);  
rx_dispar_out(2)  <= xcvr_disparity(5);  
rx_dispar_out(3)  <= xcvr_disparity(1);  
rx_dispar_out(4)  <= xcvr_disparity(6);  
rx_dispar_out(5)  <= xcvr_disparity(2);  
rx_dispar_out(6)  <= xcvr_disparity(7);  
rx_dispar_out(7)  <= xcvr_disparity(3);  
rx_invalid_out(0) <= xcvr_invalid(4); 
rx_invalid_out(1) <= xcvr_invalid(0); 
rx_invalid_out(2) <= xcvr_invalid(5); 
rx_invalid_out(3) <= xcvr_invalid(1); 
rx_invalid_out(4) <= xcvr_invalid(6); 
rx_invalid_out(5) <= xcvr_invalid(2); 
rx_invalid_out(6) <= xcvr_invalid(7); 
rx_invalid_out(7) <= xcvr_invalid(3); 
rx_comma_out(0)   <= xcvr_comma(4); 
rx_comma_out(1)   <= xcvr_comma(0); 
rx_comma_out(2)   <= xcvr_comma(5);
rx_comma_out(3)   <= xcvr_comma(1); 
rx_comma_out(4)   <= xcvr_comma(6); 
rx_comma_out(5)   <= xcvr_comma(2); 
rx_comma_out(6)   <= xcvr_comma(7); 
rx_comma_out(7)   <= xcvr_comma(3); 
---- Inputs are mapped in the opposite manner
rxslide_in(4)     <= rx_slide(0);
rxslide_in(0)     <= rx_slide(1);
rxslide_in(5)     <= rx_slide(2);
rxslide_in(1)     <= rx_slide(3);
rxslide_in(6)     <= rx_slide(4);
rxslide_in(2)     <= rx_slide(5);
rxslide_in(7)     <= rx_slide(6);
rxslide_in(3)     <= rx_slide(7);
---- remapping of dac
xcvr_tx_data(0) <= tx_data_in(1); 
xcvr_tx_data(1) <= tx_data_in(3);
xcvr_tx_data(2) <= tx_data_in(5);
xcvr_tx_data(3) <= tx_data_in(7);
xcvr_tx_data(4) <= tx_data_in(0);
xcvr_tx_data(5) <= tx_data_in(2);
xcvr_tx_data(6) <= tx_data_in(4);
xcvr_tx_data(7) <= tx_data_in(6);
xcvr_tx_k(0)    <= tx_kchar_in(1);
xcvr_tx_k(1)    <= tx_kchar_in(3);
xcvr_tx_k(2)    <= tx_kchar_in(5);
xcvr_tx_k(3)    <= tx_kchar_in(7);
xcvr_tx_k(4)    <= tx_kchar_in(0);
xcvr_tx_k(5)    <= tx_kchar_in(2);
xcvr_tx_k(6)    <= tx_kchar_in(4);
xcvr_tx_k(7)    <= tx_kchar_in(6);

-------------------------------------------------------------------------------------
-- Transceiver 
-------------------------------------------------------------------------------------
xcvr_fmc216_init_i : entity work.xcvr_fmc216
port map
(
    SOFT_RESET_TX_IN                        =>      rst_in,
    SOFT_RESET_RX_IN                        =>      rst_in,
    DONT_RESET_ON_DATA_ERROR_IN             =>      '0',
    Q5_CLK0_GTREFCLK_PAD_N_IN               =>      refclk_n_ibuf(0),
    Q5_CLK0_GTREFCLK_PAD_P_IN               =>      refclk_p_ibuf(0),

    GT0_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(0),
    GT0_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(0),
    GT0_DATA_VALID_IN                       =>      '1',
    GT1_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(1),
    GT1_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(1),
    GT1_DATA_VALID_IN                       =>      '1',
    GT2_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(2),
    GT2_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(2),
    GT2_DATA_VALID_IN                       =>      '1',
    GT3_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(3),
    GT3_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(3),
    GT3_DATA_VALID_IN                       =>      '1',
    GT4_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(4),
    GT4_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(4),
    GT4_DATA_VALID_IN                       =>      '1',
    GT5_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(5),
    GT5_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(5),
    GT5_DATA_VALID_IN                       =>      '1',
    GT6_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(6),
    GT6_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(6),
    GT6_DATA_VALID_IN                       =>      '1',
    GT7_TX_FSM_RESET_DONE_OUT               =>      GT0_TX_FSM_RESET_DONE_OUT(7),
    GT7_RX_FSM_RESET_DONE_OUT               =>      GT0_RX_FSM_RESET_DONE_OUT(7),
    GT7_DATA_VALID_IN                       =>      '1',
 
    GT0_TXUSRCLK_OUT                        => open,
    GT0_TXUSRCLK2_OUT                       => tx_clk_outi(0),
    GT0_RXUSRCLK_OUT                        => open,
    GT0_RXUSRCLK2_OUT                       => rx_clk_outi(0),
 
    GT1_TXUSRCLK_OUT                        => open,
    GT1_TXUSRCLK2_OUT                       => tx_clk_outi(1),
    GT1_RXUSRCLK_OUT                        => open,
    GT1_RXUSRCLK2_OUT                       => rx_clk_outi(1),
 
    GT2_TXUSRCLK_OUT                        => open,
    GT2_TXUSRCLK2_OUT                       => tx_clk_outi(2),
    GT2_RXUSRCLK_OUT                        => open,
    GT2_RXUSRCLK2_OUT                       => rx_clk_outi(2),
 
    GT3_TXUSRCLK_OUT                        => open,
    GT3_TXUSRCLK2_OUT                       => tx_clk_outi(3),
    GT3_RXUSRCLK_OUT                        => open,
    GT3_RXUSRCLK2_OUT                       => rx_clk_outi(3),
 
    GT4_TXUSRCLK_OUT                        => open,
    GT4_TXUSRCLK2_OUT                       => tx_clk_outi(4),
    GT4_RXUSRCLK_OUT                        => open,
    GT4_RXUSRCLK2_OUT                       => rx_clk_outi(4),
 
    GT5_TXUSRCLK_OUT                        => open,
    GT5_TXUSRCLK2_OUT                       => tx_clk_outi(5),
    GT5_RXUSRCLK_OUT                        => open,
    GT5_RXUSRCLK2_OUT                       => rx_clk_outi(5),
 
    GT6_TXUSRCLK_OUT                        => open,
    GT6_TXUSRCLK2_OUT                       => tx_clk_outi(6),
    GT6_RXUSRCLK_OUT                        => open,
    GT6_RXUSRCLK2_OUT                       => rx_clk_outi(6),
 
    GT7_TXUSRCLK_OUT                        => open,
    GT7_TXUSRCLK2_OUT                       => tx_clk_outi(7),
    GT7_RXUSRCLK_OUT                        => open,
    GT7_RXUSRCLK2_OUT                       => rx_clk_outi(7),

    --_________________________________________________________________________
    --GT0  (X1Y0)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
  --  gt0_gtgrefclk_in                        => '0',
    gt0_gtnorthrefclk0_in                   => '0',
    gt0_gtnorthrefclk1_in                   => '0',
    gt0_gtsouthrefclk0_in                   => '0',
    gt0_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt0_drpaddr_in                          => (others=>'0'),
    gt0_drpdi_in                            => (others=>'0'),
    gt0_drpdo_out                           => open,
    gt0_drpen_in                            => '0',
    gt0_drprdy_out                          => open,
    gt0_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt0_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt0_eyescanreset_in                     => '0',
    gt0_rxuserrdy_in                        => GT0_RXUSERRDY_IN(0),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt0_eyescandataerror_out                => open,
    gt0_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt0_rxdata_out                          => GT0_RXDATA_OUT(0),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt0_rxdisperr_out                       => GT0_RXDISPERR_OUT(0),
    gt0_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(0),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt0_gtxrxp_in                           => rxp_in(0),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt0_gtxrxn_in                           => rxn_in(0),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt0_rxdfelpmreset_in                    => '0',
    gt0_rxmonitorout_out                    => open,
    gt0_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt0_gtrxreset_in                        => GT0_GTRXRESET_IN(0),
    gt0_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt0_rxslide_in                          => rxslide_in(0),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt0_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(0),
    gt0_rxcharisk_out                       => GT0_RXCHARISK_OUT(0),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt0_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt0_gttxreset_in                        => GT0_GTTXRESET_IN(0),
    gt0_txuserrdy_in                        => GT0_TXUSERRDY_IN(0),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt0_txdata_in                           => GT0_TXDATA_IN(0),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt0_gtxtxn_out                          => txn_out(0),
    gt0_gtxtxp_out                          => txp_out(0),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt0_txoutclkfabric_out                  => open,
    gt0_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt0_txcharisk_in                        => GT0_TXCHARISK_IN(0),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt0_txresetdone_out                     => open,

    --GT1  (X1Y1)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
 --   gt1_gtgrefclk_in                        => '0',
    gt1_gtnorthrefclk0_in                   => '0',
    gt1_gtnorthrefclk1_in                   => '0',
    gt1_gtsouthrefclk0_in                   => '0',
    gt1_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt1_drpaddr_in                          => (others=>'0'),
    gt1_drpdi_in                            => (others=>'0'),
    gt1_drpdo_out                           => open,
    gt1_drpen_in                            => '0',
    gt1_drprdy_out                          => open,
    gt1_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt1_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt1_eyescanreset_in                     => '0',
    gt1_rxuserrdy_in                        => GT0_RXUSERRDY_IN(1),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt1_eyescandataerror_out                => open,
    gt1_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt1_rxdata_out                          => GT0_RXDATA_OUT(1),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt1_rxdisperr_out                       => GT0_RXDISPERR_OUT(1),
    gt1_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(1),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt1_gtxrxp_in                           => rxp_in(1),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt1_gtxrxn_in                           => rxn_in(1),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt1_rxdfelpmreset_in                    => '0',
    gt1_rxmonitorout_out                    => open,
    gt1_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt1_gtrxreset_in                        => GT0_GTRXRESET_IN(1),
    gt1_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt1_rxslide_in                          => rxslide_in(1),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt1_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(1),
    gt1_rxcharisk_out                       => GT0_RXCHARISK_OUT(1),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt1_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt1_gttxreset_in                        => GT0_GTTXRESET_IN(1),
    gt1_txuserrdy_in                        => GT0_TXUSERRDY_IN(1),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt1_txdata_in                           => GT0_TXDATA_IN(1),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt1_gtxtxn_out                          => txn_out(1),
    gt1_gtxtxp_out                          => txp_out(1),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt1_txoutclkfabric_out                  => open,
    gt1_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt1_txcharisk_in                        => GT0_TXCHARISK_IN(1),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt1_txresetdone_out                     => open,

    --GT2  (X1Y2)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
--    gt2_gtgrefclk_in                        => '0',
    gt2_gtnorthrefclk0_in                   => '0',
    gt2_gtnorthrefclk1_in                   => '0',
    gt2_gtsouthrefclk0_in                   => '0',
    gt2_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt2_drpaddr_in                          => (others=>'0'),
    gt2_drpdi_in                            => (others=>'0'),
    gt2_drpdo_out                           => open,
    gt2_drpen_in                            => '0',
    gt2_drprdy_out                          => open,
    gt2_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt2_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt2_eyescanreset_in                     => '0',
    gt2_rxuserrdy_in                        => GT0_RXUSERRDY_IN(2),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt2_eyescandataerror_out                => open,
    gt2_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt2_rxdata_out                          => GT0_RXDATA_OUT(2),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt2_rxdisperr_out                       => GT0_RXDISPERR_OUT(2),
    gt2_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(2),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt2_gtxrxp_in                           => rxp_in(2),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt2_gtxrxn_in                           => rxn_in(2),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt2_rxdfelpmreset_in                    => '0',
    gt2_rxmonitorout_out                    => open,
    gt2_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt2_gtrxreset_in                        => GT0_GTRXRESET_IN(2),
    gt2_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt2_rxslide_in                          => rxslide_in(2),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt2_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(2),
    gt2_rxcharisk_out                       => GT0_RXCHARISK_OUT(2),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt2_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt2_gttxreset_in                        => GT0_GTTXRESET_IN(2),
    gt2_txuserrdy_in                        => GT0_TXUSERRDY_IN(2),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt2_txdata_in                           => GT0_TXDATA_IN(2),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt2_gtxtxn_out                          => txn_out(2),
    gt2_gtxtxp_out                          => txp_out(2),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt2_txoutclkfabric_out                  => open,
    gt2_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt2_txcharisk_in                        => GT0_TXCHARISK_IN(2),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt2_txresetdone_out                     => open,


    --GT3  (X1Y3)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
 --   gt3_gtgrefclk_in                        => '0',
    gt3_gtnorthrefclk0_in                   => '0',
    gt3_gtnorthrefclk1_in                   => '0',
    gt3_gtsouthrefclk0_in                   => '0',
    gt3_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt3_drpaddr_in                          => (others=>'0'),
    gt3_drpdi_in                            => (others=>'0'),
    gt3_drpdo_out                           => open,
    gt3_drpen_in                            => '0',
    gt3_drprdy_out                          => open,
    gt3_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt3_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt3_eyescanreset_in                     => '0',
    gt3_rxuserrdy_in                        => GT0_RXUSERRDY_IN(3),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt3_eyescandataerror_out                => open,
    gt3_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt3_rxdata_out                          => GT0_RXDATA_OUT(3),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt3_rxdisperr_out                       => GT0_RXDISPERR_OUT(3),
    gt3_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(3),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt3_gtxrxp_in                           => rxp_in(3),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt3_gtxrxn_in                           => rxn_in(3),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt3_rxdfelpmreset_in                    => '0',
    gt3_rxmonitorout_out                    => open,
    gt3_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt3_gtrxreset_in                        => GT0_GTRXRESET_IN(3),
    gt3_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt3_rxslide_in                          => rxslide_in(3),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt3_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(3),
    gt3_rxcharisk_out                       => GT0_RXCHARISK_OUT(3),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt3_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt3_gttxreset_in                        => GT0_GTTXRESET_IN(3),
    gt3_txuserrdy_in                        => GT0_TXUSERRDY_IN(3),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt3_txdata_in                           => GT0_TXDATA_IN(3),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt3_gtxtxn_out                          => txn_out(3),
    gt3_gtxtxp_out                          => txp_out(3),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt3_txoutclkfabric_out                  => open,
    gt3_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt3_txcharisk_in                        => GT0_TXCHARISK_IN(3),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt3_txresetdone_out                     => open,


    --GT4  (X1Y4)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
 --   gt4_gtgrefclk_in                        => '0',
    gt4_gtnorthrefclk0_in                   => '0',
    gt4_gtnorthrefclk1_in                   => '0',
    gt4_gtsouthrefclk0_in                   => '0',
    gt4_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt4_drpaddr_in                          => (others=>'0'),
    gt4_drpdi_in                            => (others=>'0'),
    gt4_drpdo_out                           => open,
    gt4_drpen_in                            => '0',
    gt4_drprdy_out                          => open,
    gt4_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt4_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt4_eyescanreset_in                     => '0',
    gt4_rxuserrdy_in                        => GT0_RXUSERRDY_IN(4),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt4_eyescandataerror_out                => open,
    gt4_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt4_rxdata_out                          => GT0_RXDATA_OUT(4),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt4_rxdisperr_out                       => GT0_RXDISPERR_OUT(4),
    gt4_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(4),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt4_gtxrxp_in                           => rxp_in(4),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt4_gtxrxn_in                           => rxn_in(4),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt4_rxdfelpmreset_in                    => '0',
    gt4_rxmonitorout_out                    => open,
    gt4_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt4_gtrxreset_in                        => GT0_GTRXRESET_IN(4),
    gt4_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt4_rxslide_in                          => rxslide_in(4),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt4_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(4),
    gt4_rxcharisk_out                       => GT0_RXCHARISK_OUT(4),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt4_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt4_gttxreset_in                        => GT0_GTTXRESET_IN(4),
    gt4_txuserrdy_in                        => GT0_TXUSERRDY_IN(4),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt4_txdata_in                           => GT0_TXDATA_IN(4),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt4_gtxtxn_out                          => txn_out(4),
    gt4_gtxtxp_out                          => txp_out(4),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt4_txoutclkfabric_out                  => open,
    gt4_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt4_txcharisk_in                        => GT0_TXCHARISK_IN(4),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt4_txresetdone_out                     => open,


    --GT5  (X1Y5)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
 --   gt5_gtgrefclk_in                        => '0',
    gt5_gtnorthrefclk0_in                   => '0',
    gt5_gtnorthrefclk1_in                   => '0',
    gt5_gtsouthrefclk0_in                   => '0',
    gt5_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt5_drpaddr_in                          => (others=>'0'),
    gt5_drpdi_in                            => (others=>'0'),
    gt5_drpdo_out                           => open,
    gt5_drpen_in                            => '0',
    gt5_drprdy_out                          => open,
    gt5_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt5_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt5_eyescanreset_in                     => '0',
    gt5_rxuserrdy_in                        => GT0_RXUSERRDY_IN(5),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt5_eyescandataerror_out                => open,
    gt5_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt5_rxdata_out                          => GT0_RXDATA_OUT(5),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt5_rxdisperr_out                       => GT0_RXDISPERR_OUT(5),
    gt5_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(5),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt5_gtxrxp_in                           => rxp_in(5),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt5_gtxrxn_in                           => rxn_in(5),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt5_rxdfelpmreset_in                    => '0',
    gt5_rxmonitorout_out                    => open,
    gt5_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt5_gtrxreset_in                        => GT0_GTRXRESET_IN(5),
    gt5_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt5_rxslide_in                          => rxslide_in(5),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt5_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(5),
    gt5_rxcharisk_out                       => GT0_RXCHARISK_OUT(5),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt5_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt5_gttxreset_in                        => GT0_GTTXRESET_IN(5),
    gt5_txuserrdy_in                        => GT0_TXUSERRDY_IN(5),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt5_txdata_in                           => GT0_TXDATA_IN(5),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt5_gtxtxn_out                          => txn_out(5),
    gt5_gtxtxp_out                          => txp_out(5),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt5_txoutclkfabric_out                  => open,
    gt5_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt5_txcharisk_in                        => GT0_TXCHARISK_IN(5),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt5_txresetdone_out                     => open,


    --GT6  (X1Y6)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
--    gt6_gtgrefclk_in                        => '0',
    gt6_gtnorthrefclk0_in                   => '0',
    gt6_gtnorthrefclk1_in                   => '0',
    gt6_gtsouthrefclk0_in                   => '0',
    gt6_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt6_drpaddr_in                          => (others=>'0'),
    gt6_drpdi_in                            => (others=>'0'),
    gt6_drpdo_out                           => open,
    gt6_drpen_in                            => '0',
    gt6_drprdy_out                          => open,
    gt6_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt6_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt6_eyescanreset_in                     => '0',
    gt6_rxuserrdy_in                        => GT0_RXUSERRDY_IN(6),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt6_eyescandataerror_out                => open,
    gt6_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt6_rxdata_out                          => GT0_RXDATA_OUT(6),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt6_rxdisperr_out                       => GT0_RXDISPERR_OUT(6),
    gt6_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(6),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt6_gtxrxp_in                           => rxp_in(6),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt6_gtxrxn_in                           => rxn_in(6),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt6_rxdfelpmreset_in                    => '0',
    gt6_rxmonitorout_out                    => open,
    gt6_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt6_gtrxreset_in                        => GT0_GTRXRESET_IN(6),
    gt6_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt6_rxslide_in                          => rxslide_in(6),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt6_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(6),
    gt6_rxcharisk_out                       => GT0_RXCHARISK_OUT(6),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt6_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt6_gttxreset_in                        => GT0_GTTXRESET_IN(6),
    gt6_txuserrdy_in                        => GT0_TXUSERRDY_IN(6),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt6_txdata_in                           => GT0_TXDATA_IN(6),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt6_gtxtxn_out                          => txn_out(6),
    gt6_gtxtxp_out                          => txp_out(6),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt6_txoutclkfabric_out                  => open,
    gt6_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt6_txcharisk_in                        => GT0_TXCHARISK_IN(6),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt6_txresetdone_out                     => open,


    --GT7  (X1Y7)
    --____________________________CHANNEL PORTS________________________________
    -------------------------- Channel - Clocking Ports ------------------------
 --   gt7_gtgrefclk_in                        => '0',
    gt7_gtnorthrefclk0_in                   => '0',
    gt7_gtnorthrefclk1_in                   => '0',
    gt7_gtsouthrefclk0_in                   => '0',
    gt7_gtsouthrefclk1_in                   => '0',
    ---------------------------- Channel - DRP Ports  --------------------------
    gt7_drpaddr_in                          => (others=>'0'),
    gt7_drpdi_in                            => (others=>'0'),
    gt7_drpdo_out                           => open,
    gt7_drpen_in                            => '0',
    gt7_drprdy_out                          => open,
    gt7_drpwe_in                            => '0',
    --------------------------- Digital Monitor Ports --------------------------
    gt7_dmonitorout_out                     => open,
    --------------------- RX Initialization and Reset Ports --------------------
    gt7_eyescanreset_in                     => '0',
    gt7_rxuserrdy_in                        => GT0_RXUSERRDY_IN(7),
    -------------------------- RX Margin Analysis Ports ------------------------
    gt7_eyescandataerror_out                => open,
    gt7_eyescantrigger_in                   => '0',
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    gt7_rxdata_out                          => GT0_RXDATA_OUT(7),
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    gt7_rxdisperr_out                       => GT0_RXDISPERR_OUT(7),
    gt7_rxnotintable_out                    => GT0_RXNOTINTABLE_OUT(7),
    --------------------------- Receive Ports - RX AFE -------------------------
    gt7_gtxrxp_in                           => rxp_in(7),
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    gt7_gtxrxn_in                           => rxn_in(7),
    --------------------- Receive Ports - RX Equalizer Ports -------------------
    gt7_rxdfelpmreset_in                    => '0',
    gt7_rxmonitorout_out                    => open,
    gt7_rxmonitorsel_in                     => "00",
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    gt7_gtrxreset_in                        => GT0_GTRXRESET_IN(7),
    gt7_rxpmareset_in                       => '0',
    ---------------------- Receive Ports - RX gearbox ports --------------------
    gt7_rxslide_in                          => rxslide_in(7),
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    gt7_rxchariscomma_out                   => GT0_RXCHARISCOMMA_OUT(7),
    gt7_rxcharisk_out                       => GT0_RXCHARISK_OUT(7),
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    gt7_rxresetdone_out                     => open,
    --------------------- TX Initialization and Reset Ports --------------------
    gt7_gttxreset_in                        => GT0_GTTXRESET_IN(7),
    gt7_txuserrdy_in                        => GT0_TXUSERRDY_IN(7),
    ------------------ Transmit Ports - TX Data Path interface -----------------
    gt7_txdata_in                           => GT0_TXDATA_IN(7),
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    gt7_gtxtxn_out                          => txn_out(7),
    gt7_gtxtxp_out                          => txp_out(7),
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    gt7_txoutclkfabric_out                  => open,
    gt7_txoutclkpcs_out                     => open,
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    gt7_txcharisk_in                        => GT0_TXCHARISK_IN(7),
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    gt7_txresetdone_out                     => open,


    --____________________________COMMON PORTS________________________________
    GT0_QPLLLOCK_OUT                        => GT0_QPLLLOCK_OUT,
    GT0_QPLLREFCLKLOST_OUT                  => open,
    GT0_QPLLOUTCLK_OUT                      => open,
    GT0_QPLLOUTREFCLK_OUT                   => open,
    --____________________________COMMON PORTS________________________________
    GT1_QPLLLOCK_OUT                        => open,
    GT1_QPLLREFCLKLOST_OUT                  => open,
    GT1_QPLLOUTCLK_OUT                      => open,
    GT1_QPLLOUTREFCLK_OUT                   => open,

    sysclk_in                               => clk_in

);  


mgt:
for i in 0 to (MGT_LANES - 1) generate

	lock_out(i)	        <= GT0_QPLLLOCK_OUT;--GT0_CPLLLOCK_OUT(i); 
	--tx_clk_out(i)	    <= gt_clock0;
	--rx_clk_out(i)	    <= gt_clock0;
	
    GT0_TXUSERRDY_IN(i) <= GT0_TX_FSM_RESET_DONE_OUT(i);
    GT0_RXUSERRDY_IN(i) <= GT0_RX_FSM_RESET_DONE_OUT(i);
	
    process(clk_in)
    begin
        if rising_edge(clk_in) then
		    xcvr_rdy_out(i)   <= xcvr_rdy(i);
			GT0_GTRXRESET_IN(i)     <= xcvr_ctrl(4+i);
			GT0_GTTXRESET_IN(i)     <= xcvr_ctrl(12+i);
        end if;
    end process;

    -- TX part
    process(tx_clk_outi(i))
    begin
        if rising_edge(tx_clk_outi(i)) then            
            -- data comming into transceivers (DAC)
            GT0_TXCHARISK_IN(i)  <= xcvr_tx_k(i);
            GT0_TXDATA_IN(i)     <= xcvr_tx_data(i);
        end if;
    end process;

    -- RX part
    process(rx_clk_outi(i))
    begin
        if rising_edge(rx_clk_outi(i)) then
            -- data going out transceivers (ADC)
            xcvr_rx_data(i)      <= GT0_RXDATA_OUT(i);  
            xcvr_k(i)            <= GT0_RXCHARISK_OUT(i); -- we got k char 
            xcvr_disparity(i)    <= GT0_RXDISPERR_OUT(i); -- we got disparity error
            xcvr_invalid(i)      <= GT0_RXNOTINTABLE_OUT(i); -- we got an invalid character
            xcvr_comma(i)        <= GT0_RXCHARISCOMMA_OUT(i); -- we got a comma char

            xcvr_rdy(i)          <= GT0_TXUSERRDY_IN(i) and GT0_RXUSERRDY_IN(i);
            
        end if;
    end process;
	
    -- slide the rx data, must wait 32 cycles between each slide 
	process(rx_clk_outi(i), rst_in)
    begin
        if  rst_in = '1' then
            slide_state(i)      <= '0';
            slide_counter(i)    <= (others=>'0'); 
		    rx_slide(i)			  <= '0';
        elsif rising_edge(rx_clk_outi(i)) then
			if slide_state(i) = '0' then -- slide counter not ready
			    slide_counter(i)    <= slide_counter(i) + 1;
				rx_slide(i)         <= '0'; 
				if slide_counter(i)(6) = '1' then
				    slide_state(i)  <= '1';
				end if;
			elsif slide_state(i) = '1' and rx_slide_in(i) = '1' then
				slide_counter(i)    <= (others=>'0');
				slide_state(i)      <= '0'; 
				rx_slide(i)         <= '1'; 
			end if;
        end if;
    end process;
    
    tx_clk_out(i) <= tx_clk_outi(0);
    rx_clk_out(i) <= rx_clk_outi(i);
end generate;

 IBUF_refclk_n_inst : IBUF
   generic map (
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      O => refclk_n_ibuf(0),     -- Buffer output
      I => refclk_n(0)      -- Buffer input (connect directly to top-level port)
   );
 IBUF_refclk_p_inst : IBUF
   generic map (
      IBUF_LOW_PWR => TRUE, -- Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      IOSTANDARD => "DEFAULT")
   port map (
      O => refclk_p_ibuf(0),     -- Buffer output
      I => refclk_p(0)      -- Buffer input (connect directly to top-level port)
   );
--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

