--------------------------------------------------------------------------------
-- file name : testbench.vhd
--
-- author    : P. Kortekaas
--
-- company   : 4dsp
--
-- item      : number
--
-- language  : vhdl
--
--------------------------------------------------------------------------------
-- description
-- ===========
--
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
-- 0.0    0        05-12-2006        new version
--
----------------------------------------------
--
--------------------------------------------------------------------------------


--------------------------------------------------------------------------------
-- Specify libraries
--------------------------------------------------------------------------------
library ieee;
  use ieee.std_logic_unsigned.all;
  use ieee.std_logic_misc.all;
  use ieee.std_logic_arith.all;
  use ieee.std_logic_1164.all;
library std;
  use std.textio.all;
library work;
  use work.txt_util.all;
  use work.std_logic_textio.all;

--------------------------------------------------------------------------------
-- Entity declaration
--------------------------------------------------------------------------------
entity testbench is
end entity testbench;

--------------------------------------------------------------------------------
-- Architecture declaration
--------------------------------------------------------------------------------
architecture testbench_beh of testbench is

--------------------------------------------------------------------------------
-- Constant declarations
--------------------------------------------------------------------------------

-----------------------------------------------------------------------------------
-- Signal declarations
-----------------------------------------------------------------------------------
signal sysclk_p_0         : std_logic := '0';
signal sysclk_n_0         : std_logic := '1';
signal cpu_reset_0        : std_logic := '1';

signal i2c_scl_0          : std_logic;
signal i2c_sda_0          : std_logic;

signal fmc_to_cpld_0      : std_logic_vector(3 downto 0);
signal front_io_fmc_0     : std_logic_vector(3 downto 0);
signal clk_to_fpga_p_0    : std_logic;
signal clk_to_fpga_n_0    : std_logic;
signal ext_trigger_p_0    : std_logic;
signal ext_trigger_n_0    : std_logic;
signal sync_from_fpga_p_0 : std_logic;
signal sync_from_fpga_n_0 : std_logic;
signal adr_p_0            : std_logic;
signal adr_n_0            : std_logic;
signal ad_p_0             : std_logic_vector(9 downto 0);
signal ad_n_0             : std_logic_vector(9 downto 0);
signal aor_p_0            : std_logic;
signal aor_n_0            : std_logic;
signal bdr_p_0            : std_logic;
signal bdr_n_0            : std_logic;
signal bd_p_0             : std_logic_vector(9 downto 0);
signal bd_n_0             : std_logic_vector(9 downto 0);
signal bor_p_0            : std_logic;
signal bor_n_0            : std_logic;
signal cdr_p_0            : std_logic;
signal cdr_n_0            : std_logic;
signal cd_p_0             : std_logic_vector(9 downto 0);
signal cd_n_0             : std_logic_vector(9 downto 0);
signal cor_p_0            : std_logic;
signal cor_n_0            : std_logic;
signal ddr_p_0            : std_logic;
signal ddr_n_0            : std_logic;
signal dd_p_0             : std_logic_vector(9 downto 0);
signal dd_n_0             : std_logic_vector(9 downto 0);
signal dor_p_0            : std_logic;
signal dor_n_0            : std_logic;
signal pg_m2c_0           : std_logic;
signal prsnt_m2c_l_0      : std_logic;

-----------------------------------------------------------------------------------
-- Component declarations
-----------------------------------------------------------------------------------
component vc707_fmc126 is
port (
--STAR sip_fmc126, ID=0 (ext_i2c)
   i2c_scl_0                               : inout std_logic;
   i2c_sda_0                               : inout std_logic;

--STAR sip_fmc126, ID=0 (ext_fmc126)
   fmc_to_cpld_0                           : inout std_logic_vector(3 downto 0);
   front_io_fmc_0                          : inout std_logic_vector(3 downto 0);
   clk_to_fpga_p_0                         : in    std_logic;
   clk_to_fpga_n_0                         : in    std_logic;
   ext_trigger_p_0                         : in    std_logic;
   ext_trigger_n_0                         : in    std_logic;
   sync_from_fpga_p_0                      : out   std_logic;
   sync_from_fpga_n_0                      : out   std_logic;
   adr_p_0                                 : in    std_logic;
   adr_n_0                                 : in    std_logic;
   ad_p_0                                  : in    std_logic_vector(9 downto 0);
   ad_n_0                                  : in    std_logic_vector(9 downto 0);
   aor_p_0                                 : in    std_logic;
   aor_n_0                                 : in    std_logic;
   bdr_p_0                                 : in    std_logic;
   bdr_n_0                                 : in    std_logic;
   bd_p_0                                  : in    std_logic_vector(9 downto 0);
   bd_n_0                                  : in    std_logic_vector(9 downto 0);
   bor_p_0                                 : in    std_logic;
   bor_n_0                                 : in    std_logic;
   cdr_p_0                                 : in    std_logic;
   cdr_n_0                                 : in    std_logic;
   cd_p_0                                  : in    std_logic_vector(9 downto 0);
   cd_n_0                                  : in    std_logic_vector(9 downto 0);
   cor_p_0                                 : in    std_logic;
   cor_n_0                                 : in    std_logic;
   ddr_p_0                                 : in    std_logic;
   ddr_n_0                                 : in    std_logic;
   dd_p_0                                  : in    std_logic_vector(9 downto 0);
   dd_n_0                                  : in    std_logic_vector(9 downto 0);
   dor_p_0                                 : in    std_logic;
   dor_n_0                                 : in    std_logic;
   pg_m2c_0                                : in    std_logic;
   prsnt_m2c_l_0                           : in    std_logic;

--STAR sip_vc707_mac_engine_sgmii, ID=0 (ext_mac_engine_sgmii)
   cpu_reset_0                             : in    std_logic;
   sysclk_p_0                              : in    std_logic;
   sysclk_n_0                              : in    std_logic;
   gpio_led_0                              : out   std_logic_vector(3 downto 0);
   phy_reset_l_0                           : out   std_logic;
   phy_mdc_0                               : out   std_logic;
   phy_mdio_0                              : inout std_logic;
   sgmii_refclk_p_0                        : in    std_logic;
   sgmii_refclk_n_0                        : in    std_logic;
   sgmii_tx_p_0                            : out   std_logic;
   sgmii_tx_n_0                            : out   std_logic;
   sgmii_rx_p_0                            : in    std_logic;
   sgmii_rx_n_0                            : in    std_logic
   );
end component;

component fmc126_model is
generic (
  CLOCK_PERIOD  : time := 1 ns
);
port (
  i2c_scl          : inout std_logic;
  i2c_sda          : inout std_logic;
  fmc_to_cpld      : inout std_logic_vector(3 downto 0);
  front_io_fmc     : inout std_logic_vector(3 downto 0);
  clk_to_fpga_p    : out   std_logic;
  clk_to_fpga_n    : out   std_logic;
  ext_trigger_p    : out   std_logic;
  ext_trigger_n    : out   std_logic;
  sync_from_fpga_p : in    std_logic;
  sync_from_fpga_n : in    std_logic;
  adr_p            : out   std_logic;
  adr_n            : out   std_logic;
  ad_p             : out   std_logic_vector(9 downto 0);
  ad_n             : out   std_logic_vector(9 downto 0);
  aor_p            : out   std_logic;
  aor_n            : out   std_logic;
  bdr_p            : out   std_logic;
  bdr_n            : out   std_logic;
  bd_p             : out   std_logic_vector(9 downto 0);
  bd_n             : out   std_logic_vector(9 downto 0);
  bor_p            : out   std_logic;
  bor_n            : out   std_logic;
  cdr_p            : out   std_logic;
  cdr_n            : out   std_logic;
  cd_p             : out   std_logic_vector(9 downto 0);
  cd_n             : out   std_logic_vector(9 downto 0);
  cor_p            : out   std_logic;
  cor_n            : out   std_logic;
  ddr_p            : out   std_logic;
  ddr_n            : out   std_logic;
  dd_p             : out   std_logic_vector(9 downto 0);
  dd_n             : out   std_logic_vector(9 downto 0);
  dor_p            : out   std_logic;
  dor_n            : out   std_logic;
  pg_m2c           : out   std_logic;
  prsnt_m2c_l      : out   std_logic
);
end component;

begin

--------------------------------------------------------------------------------
-- Clock & Reset generation
--------------------------------------------------------------------------------
sysclk_p_0  <= not sysclk_p_0 after 4.0 ns;
sysclk_n_0  <= not sysclk_p_0;
cpu_reset_0 <= '0' after 2 us;

--------------------------------------------------------------------------------
-- FPGA instantiation
--------------------------------------------------------------------------------
vc707_fmc126_inst : vc707_fmc126
port map (
  i2c_scl_0          => i2c_scl_0, --: inout std_logic;
  i2c_sda_0          => i2c_sda_0, --: inout std_logic;
  fmc_to_cpld_0      => fmc_to_cpld_0, --: inout std_logic_vector(3 downto 0);
  front_io_fmc_0     => front_io_fmc_0, --: inout std_logic_vector(3 downto 0);
  clk_to_fpga_p_0    => clk_to_fpga_p_0, --: in    std_logic;
  clk_to_fpga_n_0    => clk_to_fpga_n_0, --: in    std_logic;
  ext_trigger_p_0    => ext_trigger_p_0, --: in    std_logic;
  ext_trigger_n_0    => ext_trigger_n_0, --: in    std_logic;
  sync_from_fpga_p_0 => sync_from_fpga_p_0, --: out   std_logic;
  sync_from_fpga_n_0 => sync_from_fpga_n_0, --: out   std_logic;
  adr_p_0            => adr_p_0, --: in    std_logic;
  adr_n_0            => adr_n_0, --: in    std_logic;
  ad_p_0             => ad_p_0, --: in    std_logic_vector(9 downto 0);
  ad_n_0             => ad_n_0, --: in    std_logic_vector(9 downto 0);
  aor_p_0            => aor_p_0, --: in    std_logic;
  aor_n_0            => aor_n_0, --: in    std_logic;
  bdr_p_0            => bdr_p_0, --: out   std_logic;
  bdr_n_0            => bdr_n_0, --: out   std_logic;
  bd_p_0             => bd_p_0, --: out   std_logic_vector(9 downto 0);
  bd_n_0             => bd_n_0, --: in    std_logic_vector(9 downto 0);
  bor_p_0            => bor_p_0, --: in    std_logic;
  bor_n_0            => bor_n_0, --: in    std_logic;
  cdr_p_0            => cdr_p_0, --: in    std_logic;
  cdr_n_0            => cdr_n_0, --: in    std_logic;
  cd_p_0             => cd_p_0, --: in    std_logic_vector(9 downto 0);
  cd_n_0             => cd_n_0, --: in    std_logic_vector(9 downto 0);
  cor_p_0            => cor_p_0, --: in    std_logic;
  cor_n_0            => cor_n_0, --: in    std_logic;
  ddr_p_0            => ddr_p_0, --: in    std_logic;
  ddr_n_0            => ddr_n_0, --: in    std_logic;
  dd_p_0             => dd_p_0, --: in    std_logic_vector(9 downto 0);
  dd_n_0             => dd_n_0, --: in    std_logic_vector(9 downto 0);
  dor_p_0            => dor_p_0, --: in    std_logic;
  dor_n_0            => dor_n_0, --: in    std_logic;
  pg_m2c_0           => pg_m2c_0, --: in    std_logic;
  prsnt_m2c_l_0      => prsnt_m2c_l_0, --: in    std_logic;
  cpu_reset_0        => cpu_reset_0, --: in    std_logic;
  sysclk_p_0         => sysclk_p_0, --: in    std_logic;
  sysclk_n_0         => sysclk_n_0, --: in    std_logic;
  phy_reset_l_0      => open, --: out   std_logic;
  phy_mdc_0          => open, --: out   std_logic;
  phy_mdio_0         => open, --: inout std_logic;
  sgmii_refclk_p_0   => '0',
  sgmii_refclk_n_0   => '0',
  sgmii_tx_p_0       => open,
  sgmii_tx_n_0       => open,
  sgmii_rx_p_0       => '0',
  sgmii_rx_n_0       => '0',
  
  gpio_led_0          => open --: out   std_logic_vector(3 downto 0);
);

--------------------------------------------------------------------------------
-- FMC126 model instantiation
--------------------------------------------------------------------------------
fmc126_model_inst : fmc126_model
generic map (
  CLOCK_PERIOD  => 0.8 ns -- ADC sample clock period (1.25GHz)
)
port map (
  i2c_scl          => i2c_scl_0,
  i2c_sda          => i2c_sda_0,
  fmc_to_cpld      => fmc_to_cpld_0,
  front_io_fmc     => front_io_fmc_0,
  clk_to_fpga_p    => clk_to_fpga_p_0,
  clk_to_fpga_n    => clk_to_fpga_n_0,
  ext_trigger_p    => ext_trigger_p_0,
  ext_trigger_n    => ext_trigger_n_0,
  sync_from_fpga_p => sync_from_fpga_p_0,
  sync_from_fpga_n => sync_from_fpga_n_0,
  adr_p            => adr_p_0,
  adr_n            => adr_n_0,
  ad_p             => ad_p_0,
  ad_n             => ad_n_0,
  aor_p            => aor_p_0,
  aor_n            => aor_n_0,
  bdr_p            => bdr_p_0,
  bdr_n            => bdr_n_0,
  bd_p             => bd_p_0,
  bd_n             => bd_n_0,
  bor_p            => bor_p_0,
  bor_n            => bor_n_0,
  cdr_p            => cdr_p_0,
  cdr_n            => cdr_n_0,
  cd_p             => cd_p_0,
  cd_n             => cd_n_0,
  cor_p            => cor_p_0,
  cor_n            => cor_n_0,
  ddr_p            => ddr_p_0,
  ddr_n            => ddr_n_0,
  dd_p             => dd_p_0,
  dd_n             => dd_n_0,
  dor_p            => dor_p_0,
  dor_n            => dor_n_0,
  pg_m2c           => pg_m2c_0,
  prsnt_m2c_l      => prsnt_m2c_l_0
);

--------------------------------------------------------------------------------
-- End
--------------------------------------------------------------------------------
end architecture testbench_beh;

