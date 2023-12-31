--------------------------------------------------------------------------------
-- This module encapsulates the send and receive MAC interfaces to the PHY.
-- It also contains the IO DELAY primitives for proper input sample timing
-- of the RXD and RXCTRL signals.
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

entity ge_mac_stream is
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
end ge_mac_stream;

--------------------------------------------------------------------------------
-- Specify Architecture
--------------------------------------------------------------------------------

architecture ge_mac_stream_syn of ge_mac_stream is

--------------------------------------------------------------------------------
-- Component declaration
--------------------------------------------------------------------------------

component eth_mdio is
port (
  rst          : in    std_logic;
  clk          : in    std_logic;
  e_rst_l      : out   std_logic;
  e_mdc        : out   std_logic;
  e_mdio       : inout std_logic;
  e_link_speed : out   std_logic_vector(1 downto 0)
);
end component;

component gmii_eth_tx_stream is
port (
  clk125        : in  std_logic;
  speed         : in  std_logic_vector(1 downto 0);
  txd           : out std_logic_vector(7 downto 0);
  txctrl        : out std_logic;
  eth_tx_stream : in  std_logic_vector(9 downto 0)
);
end component;

component gmii_eth_rx_stream is
port (
  clk125        : in  std_logic;
  rst           : in  std_logic;
  rxclk         : in  std_logic;
  rxd           : in  std_logic_vector(7 downto 0);
  rxctrl        : in  std_logic;
  speed         : in  std_logic_vector(1 downto 0);
  eth_rx_stream : out std_logic_vector(9 downto 0)
);
end component;

--------------------------------------------------------------------------------
-- Signal declaration
--------------------------------------------------------------------------------


signal speed         : std_logic_vector(1 downto 0);

signal ge_rxdv_dly   : std_logic;
signal ge_rxd_dly    : std_logic_vector(7 downto 0);

signal rxclk         : std_logic;


--------------------------------------------------------------------------------
-- Begin
--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
-- Simple Ethernet MAC
--------------------------------------------------------------------------------
-- CRS, COL, RXER inputs from PHY ignored for now
-- TXER is always low.
ge_txer <= '0';



--------------------------------------------------------------------------------
-- Ethernet Link Controller
--------------------------------------------------------------------------------
eth_mdio_inst : eth_mdio
port map (
  rst          => rst,
  clk          => clk50,
  e_rst_l      => phy_reset_l,
  e_mdc        => phy_mdc,
  e_mdio       => phy_mdio,
  e_link_speed => open
);
speed <= "10";
link_speed <= speed;

--------------------------------------------------------------------------------
-- Transmitter
--------------------------------------------------------------------------------
gmii_eth_tx_stream_inst : gmii_eth_tx_stream
port map (
  clk125        => clk125,
  speed         => speed,
  txd           => ge_txd,
  txctrl        => ge_txen,
  eth_tx_stream => eth_tx_stream
);

ge_rxdv_dly <= ge_rxdv;
ge_rxd_dly  <= ge_rxd;

--------------------------------------------------------------------------------
-- Receiver
--------------------------------------------------------------------------------

rxclk<= ge_rxclk;

gmii_eth_rx_stream_inst : gmii_eth_rx_stream
port map (
  clk125        => clk125,
  rst           => rst,
  rxclk         => rxclk,
  rxd           => ge_rxd_dly,
  rxctrl        => ge_rxdv_dly,
  speed         => speed,
  eth_rx_stream => eth_rx_stream
);


--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------

end ge_mac_stream_syn;
