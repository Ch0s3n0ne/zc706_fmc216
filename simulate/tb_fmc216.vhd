-------------------------------------------------------------------------------------
-- FILE NAME : 
-- AUTHOR    : Luis
-- COMPANY   : 
-- UNITS     : Entity       - 
--             Architecture - Behavioral
-- LANGUAGE  : VHDL
-- DATE      : 
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
   use ieee.std_logic_unsigned.all;
   use ieee.std_logic_misc.all;
Library UNISIM;
    use UNISIM.vcomponents.all;
-------------------------------------------------------------------------------------
-- ENTITY
-------------------------------------------------------------------------------------
entity testbench is
end testbench;

-------------------------------------------------------------------------------------
-- ARCHITECTURE
-------------------------------------------------------------------------------------
architecture Behavioral of testbench is

-------------------------------------------------------------------------------------
-- CONSTANTS
-------------------------------------------------------------------------------------
constant CLK_200_MHZ : time := 5 ns;
constant CLK_100_MHZ : time := 10 ns;
constant CLK_300_MHZ : time := 3.3333 ns;
constant CLK_25_MHZ  : time := 40 ns;
constant CLK_167_MHZ : time := 6 ns;

-----------------------------------------------------------------------------------
-- SIGNALS
-----------------------------------------------------------------------------------
signal sysref_p         : std_logic := '1';
signal sysref_n         : std_logic := '0';

signal sysclk_p         : std_logic := '1';
signal sysclk_n         : std_logic := '0';
signal clk              : std_logic := '1';

signal rst              : std_logic := '1';
signal rstn             : std_logic := '0';

signal refclk_p         : std_logic := '1';
signal refclk_n         : std_logic := '0';

signal dac_alarm_0        :  std_logic;
signal dac_sleep_0        :  std_logic;
signal dac_syncb_n_0      :  std_logic_vector(3 downto 0) := "1111";
signal dac_syncb_p_0      :  std_logic_vector(3 downto 0) := "0000";
signal dac_tx_en_0        :  std_logic;
signal dds_pwrdown_0      :  std_logic;
signal ext_trigger_n_0    :  std_logic;
signal ext_trigger_p_0    :  std_logic;
signal lmk_sync_0         :  std_logic;
signal lmkclk_n_0         :  std_logic := '0';
signal lmkclk_p_0         :  std_logic := '1';
signal osc100_en_0        :  std_logic;
signal osc491_en_0        :  std_logic;
signal pg_m2c_0           :  std_logic;
signal prsnt_m2c_l_0      :  std_logic;
signal refclk_n_0         :  std_logic_vector(1 downto 0);
signal refclk_p_0         :  std_logic_vector(1 downto 0);
signal rf_ctrl1_0         :  std_logic;
signal rf_ctrl2_0         :  std_logic;
signal serdin_n_0         :  std_logic_vector(7 downto 0);
signal serdin_p_0         :  std_logic_vector(7 downto 0);
signal serdout_n_0        :  std_logic_vector(7 downto 0);
signal serdout_p_0        :  std_logic_vector(7 downto 0);
signal spi_csn_phy_0      :  std_logic_vector(5 downto 0);
signal spi_reset_phy_0    :  std_logic_vector(3 downto 0);
signal spi_sclk_phy_0     :  std_logic;
signal spi_sdi_phy_0      :  std_logic_vector(2 downto 0);
signal spi_sdo_phy_0      :  std_logic;
signal syncb_ab_0         :  std_logic;
signal syncb_cd_0         :  std_logic;
signal syncb_n_0          :  std_logic_vector(1 downto 0);
signal syncb_p_0          :  std_logic_vector(1 downto 0);

signal clk_cmd          : std_logic;
signal out_cmd          : std_logic_vector(63 downto 0);
signal out_cmd_val      : std_logic;
signal in_cmd_val       : std_logic;
signal in_cmd           : std_logic_vector(63 downto 0);
signal dac_out          : std_logic_vector(63 downto 0);
signal dac_val          : std_logic;
signal dac_stop         : std_logic;
signal adc_out          : std_logic_vector(63 downto 0);
signal adc_val          : std_logic;
signal adc_stop         : std_logic;
signal rst_rstin        : std_logic_vector(31 downto 0);

--***********************************************************************************
begin
--***********************************************************************************
-- Clock & reset generation
sysclk_p <= not sysclk_p after CLK_200_MHZ/2;
sysclk_n <= not sysclk_p;


refclk_p <= not refclk_p after CLK_300_MHZ/2;
refclk_n <= not refclk_p;

clk      <= not clk after CLK_100_MHZ / 2;
rst      <= '0'     after CLK_100_MHZ * 10;
rstn     <= '1'     after CLK_100_MHZ * 10;

-- Unit under test
vc707_fmc216_inst: 
entity work.vc707_fmc216_vivado
port map(
	i2c_scl_0        => open,
	i2c_sda_0        => open,

	cpu_reset_0      => rst,
	sysclk_p_0       => sysclk_p,
	sysclk_n_0       => sysclk_n,
	gpio_led_0       => open,
	phy_reset_l_0    => open,
	phy_mdc_0        => open,
	phy_mdio_0       => open,
	sgmii_refclk_p_0 => '0',
	sgmii_refclk_n_0 => '1',
	sgmii_tx_p_0     => open,
	sgmii_tx_n_0     => open,
	sgmii_rx_p_0     => '0',
	sgmii_rx_n_0     => '1',

	dac_syncb_n_0    => dac_syncb_n_0,
	dac_syncb_p_0    => dac_syncb_p_0,
	ext_trigger_n_0  => ext_trigger_p_0,
	ext_trigger_p_0  => ext_trigger_p_0,
	lmk_sync_0       => lmk_sync_0,
	lmkclk_n_0       => lmkclk_n_0,
	lmkclk_p_0       => lmkclk_p_0,

  lmk_sysref_n_0     => '1', 
   lmk_sysref_p_0    => '0',



	pg_m2c_0         => pg_m2c_0,
	prsnt_m2c_l_0    => prsnt_m2c_l_0,
	refclk_n_0       => refclk_n_0,
	refclk_p_0       => refclk_p_0,
	serdin_n_0       => x"00",
	serdin_p_0       => x"11",
	serdout_n_0      => open,
	serdout_p_0      => open
);

dac_syncb_n_0  <= not dac_syncb_p_0;
dac_syncb_p_0  <= "1111" after CLK_100_MHZ * 400;

refclk_n_0(0) <= refclk_n;
refclk_p_0(0) <= refclk_p;

refclk_n_0(1) <= refclk_n;
refclk_p_0(1) <= refclk_p;

-- process(clk)
-- begin
--   if rising_edge(clk) then
--     -- Note message
-- 	report "This is a note message" severity note;

-- 	-- Warning message
-- 	report "This is a warning message" severity warning;

-- 	-- Error message
-- 	report "This is an error message" severity error;

-- 	-- -- Failure message
-- 	-- report "This is a failure message" severity failure;
--   end if;
-- end process;

--***********************************************************************************
end architecture Behavioral;
--***********************************************************************************

