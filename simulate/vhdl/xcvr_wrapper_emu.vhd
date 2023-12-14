-------------------------------------------------------------------------------------
-- FILE NAME : xcvr_wrapper.vhd
-- AUTHOR    : Luis F. Munoz
-- COMPANY   : 4DSP 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : May 21, 2010
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
-- 
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
signal GT0_QPLLLOCK_OUT			 : std_logic_vector(7 downto 0);
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

signal gt_clock0                 : std_logic;
signal gt_clock1                 : std_logic;

signal bufg_mgt_clk				 : std_logic_vector(1 downto 0);
signal QPLLOUTCLK 				 : std_logic_vector(1 downto 0);
signal QPLLOUTREFCLK 			 : std_logic_vector(1 downto 0);
signal QPLLLOCK 				 : std_logic_vector(1 downto 0);
signal QPLLLOCKDETCLK 			 : std_logic_vector(1 downto 0);
signal QPLLREFCLKLOST 			 : std_logic_vector(1 downto 0);
signal QPLLRESET 				 : std_logic_vector(1 downto 0);

signal rx_bufg_clock			 : std_logic_vector(7 downto 0);
signal tx_bufg_clock             : std_logic_vector(7 downto 0); 

--***********************************************************************************
begin
--***********************************************************************************
---- remapping. data comes out in order of transceiver location.
rx_data_out(0) <=  xcvr_rx_data(0);
rx_data_out(1) <=  xcvr_rx_data(1);
rx_data_out(2) <=  xcvr_rx_data(2);
rx_data_out(3) <=  xcvr_rx_data(3);
rx_data_out(4) <=  xcvr_rx_data(4);
rx_data_out(5) <=  xcvr_rx_data(5);
rx_data_out(6) <=  xcvr_rx_data(6);
rx_data_out(7) <=  xcvr_rx_data(7);
rx_kchar_out(0)   <= xcvr_k(0);
rx_kchar_out(1)   <= xcvr_k(1);
rx_kchar_out(2)   <= xcvr_k(2); 
rx_kchar_out(3)   <= xcvr_k(3); 
rx_kchar_out(4)   <= xcvr_k(4); 
rx_kchar_out(5)   <= xcvr_k(5); 
rx_kchar_out(6)   <= xcvr_k(6); 
rx_kchar_out(7)   <= xcvr_k(7); 
rx_dispar_out(0)  <= xcvr_disparity(0); 
rx_dispar_out(1)  <= xcvr_disparity(1);  
rx_dispar_out(2)  <= xcvr_disparity(2);  
rx_dispar_out(3)  <= xcvr_disparity(3);  
rx_dispar_out(4)  <= xcvr_disparity(4);  
rx_dispar_out(5)  <= xcvr_disparity(5);  
rx_dispar_out(6)  <= xcvr_disparity(6);  
rx_dispar_out(7)  <= xcvr_disparity(7);  
rx_invalid_out(0) <= xcvr_invalid(0); 
rx_invalid_out(1) <= xcvr_invalid(1); 
rx_invalid_out(2) <= xcvr_invalid(2); 
rx_invalid_out(3) <= xcvr_invalid(3); 
rx_invalid_out(4) <= xcvr_invalid(4); 
rx_invalid_out(5) <= xcvr_invalid(5); 
rx_invalid_out(6) <= xcvr_invalid(6); 
rx_invalid_out(7) <= xcvr_invalid(7); 
rx_comma_out(0)   <= xcvr_comma(0); 
rx_comma_out(1)   <= xcvr_comma(1); 
rx_comma_out(2)   <= xcvr_comma(2);
rx_comma_out(3)   <= xcvr_comma(3); 
rx_comma_out(4)   <= xcvr_comma(4); 
rx_comma_out(5)   <= xcvr_comma(5); 
rx_comma_out(6)   <= xcvr_comma(6); 
rx_comma_out(7)   <= xcvr_comma(7); 
---- Inputs are mapped in the opposite manner
rxslide_in(0)     <= rx_slide(0);
rxslide_in(1)     <= rx_slide(1);
rxslide_in(2)     <= rx_slide(2);
rxslide_in(3)     <= rx_slide(3);
rxslide_in(4)     <= rx_slide(4);
rxslide_in(5)     <= rx_slide(5);
rxslide_in(6)     <= rx_slide(6);
rxslide_in(7)     <= rx_slide(7);
---- remapping of dac
xcvr_tx_data(0) <= tx_data_in(0);
xcvr_tx_data(1) <= tx_data_in(1);
xcvr_tx_data(2) <= tx_data_in(2);
xcvr_tx_data(3) <= tx_data_in(3);
xcvr_tx_data(4) <= tx_data_in(4);
xcvr_tx_data(5) <= tx_data_in(5);
xcvr_tx_data(6) <= tx_data_in(6);
xcvr_tx_data(7) <= tx_data_in(7);
xcvr_tx_k(0)    <= tx_kchar_in(0);
xcvr_tx_k(1)    <= tx_kchar_in(1);
xcvr_tx_k(2)    <= tx_kchar_in(2);
xcvr_tx_k(3)    <= tx_kchar_in(3);
xcvr_tx_k(4)    <= tx_kchar_in(4);
xcvr_tx_k(5)    <= tx_kchar_in(5);
xcvr_tx_k(6)    <= tx_kchar_in(6);
xcvr_tx_k(7)    <= tx_kchar_in(7);

-------------------------------------------------------------------------------------
-- Transceiver 
-------------------------------------------------------------------------------------

mgt:
for i in 0 to (MGT_LANES - 1) generate

	lock_out(i)	      <= '1';
	tx_clk_out(i)	  <= gt_clock0;
	rx_clk_out(i)	  <= gt_clock0;
	xcvr_rdy_out(i)   <= '1';

    process(gt_clock0)
    begin
        if rising_edge(gt_clock0) then
            xcvr_disparity(i)    <= x"0"; 
            xcvr_invalid(i)      <= x"0";
            xcvr_comma(i)        <= xcvr_tx_k(i);
            xcvr_rdy(i)          <= '1';
            xcvr_k(i)           <= xcvr_tx_k(i);
            xcvr_rx_data(i)     <= xcvr_tx_data(i);
        end if;
    end process;
 
end generate;

-----------------------------------------------------------------------------------
-- Multi-gigabit Transceiver Clocking
-----------------------------------------------------------------------------------
div_clock_inst:
entity work.div_clock
generic map (
    TAP => 1
)
port map(
    rst_in  => rst_in,
    clk_in  => refclk_p(0),
    clk_out => gt_clock0
);

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

