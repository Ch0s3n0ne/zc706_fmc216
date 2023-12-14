
-------------------------------------------------------------------------------------
-- FILE NAME : vc707_fmc216_vivado.vhd
--
-- AUTHOR    : StellarIP (c) Abaco Systems
--
-- COMPANY   : 4DSP
--
-- ITEM      : 1
--
-- UNITS     : Entity       - vc707_fmc216_vivado
--             architecture - arch_vc707_fmc216_vivado
--
-- LANGUAGE  : VHDL
--
-------------------------------------------------------------------------------------
--
-------------------------------------------------------------------------------------
-- DESCRIPTION
-- ===========
--
-- VC707 with FMC216 card
-- Notes: 16 channel D/A
-------------------------------------------------------------------------------------
--  Disclaimer: LIMITED WARRANTY AND DISCLAIMER. These designs are
--              provided to you as is.  Abaco specifically disclaims any
--              implied warranties of merchantability, non-infringement, or
--              fitness for a particular purpose. Abaco does not warrant that
--              the functions contained in these designs will meet your
--              requirements, or that the operation of these designs will be
--              uninterrupted or error free, or that defects in the Designs
--              will be corrected. Furthermore, Abaco does not warrant or
--              make any representations regarding use or the results of the
--              use of the designs in terms of correctness, accuracy,
--              reliability, or otherwise.
--
--              LIMITATION OF LIABILITY. In no event will Abaco or its
--              licensors be liable for any loss of data, lost profits, cost
--              or procurement of substitute goods or services, or for any
--              special, incidental, consequential, or indirect damages
--              arising from the use or operation of the designs or
--              accompanying documentation, however caused and on any theory
--              of liability. This limitation will apply even if Abaco
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

-------------------------------------------------------------------------------------
--Entity Declaration
-------------------------------------------------------------------------------------
--! This is the top level project file for vc707_fmc216_vivado
--! @author StellarIP
--! @version 1.0
--! @date 07/18/23

entity vc707_fmc216_vivado  is
port (
--STAR sip_i2c_master, ID=0 (ext_i2c)
   i2c_scl_0                               : inout std_logic;
   i2c_sda_0                               : inout std_logic;

--STAR sip_vc707_mac_engine_sgmii, ID=0 (ext_mac_engine_sgmii)
   cpu_reset_0                             : in    std_logic;
   -- sysclk_p_0                              : in    std_logic;
   -- sysclk_n_0                              : in    std_logic;
   gpio_led_0                              : out   std_logic_vector(3 downto 0);
   phy_reset_l_0                           : out   std_logic;
   phy_mdc_0                               : out   std_logic;
   phy_mdio_0                              : inout std_logic;
   sgmii_refclk_p_0                        : in    std_logic;
   sgmii_refclk_n_0                        : in    std_logic;
   sgmii_tx_p_0                            : out   std_logic;
   sgmii_tx_n_0                            : out   std_logic;
   sgmii_rx_p_0                            : in    std_logic;
   sgmii_rx_n_0                            : in    std_logic;

--STAR sip_fmc216_8lane, ID=0 (ext_fmc216_8lane)
   dac_syncb_n_0                           : in    std_logic_vector(3 downto 0);
   dac_syncb_p_0                           : in    std_logic_vector(3 downto 0);
   ext_trigger_n_0                         : in    std_logic;
   ext_trigger_p_0                         : in    std_logic;
   lmk_sync_0                              : out   std_logic;
   lmk_sysref_n_0                          : in    std_logic;
   lmk_sysref_p_0                          : in    std_logic;

   lmkclk_n_0                              : in    std_logic;
   lmkclk_p_0                              : in    std_logic;
   
   pg_m2c_0                                : in    std_logic;
   prsnt_m2c_l_0                           : in    std_logic;
   refclk_n_0                              : in    std_logic_vector(1 downto 0);
   refclk_p_0                              : in    std_logic_vector(1 downto 0);
   serdin_n_0                              : in    std_logic_vector(7 downto 0);
   serdin_p_0                              : in    std_logic_vector(7 downto 0);
   serdout_n_0                             : out   std_logic_vector(7 downto 0);
   serdout_p_0                             : out   std_logic_vector(7 downto 0);
   trigger_out_0                           : out   std_logic;
   
   write_DAC_start         : in std_logic;
   write_DAC_end           : out std_logic;

   setup_end                               : in std_logic;
   -- zc706_usr_clk                           : out std_logic;
   clk_out_wizz_125       : in std_logic;
   locked_pll_wizz        : in std_logic;

   i_slv_reg2_0            : out STD_LOGIC_VECTOR (31 downto 0);
   i_slv_reg3_0            : out STD_LOGIC_VECTOR (31 downto 0);
   mac_engine_rack_0       : out STD_LOGIC;
   mac_engine_wack_0       : out STD_LOGIC;
   mac_engine_wstart_0     : out STD_LOGIC;
   o_read_complete_reg2_0  : in  STD_LOGIC;
   o_read_complete_reg3_0  : in  STD_LOGIC;
   o_slv_reg0_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg1_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg4_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_write_complete_reg0_0 : in  STD_LOGIC;
   o_write_complete_reg1_0 : in  STD_LOGIC;
   user_wdone_interrupt_0  : in  STD_LOGIC
   

   );
end entity vc707_fmc216_vivado;

-------------------------------------------------------------------------------------
--Architecture declaration
-------------------------------------------------------------------------------------
architecture arch_vc707_fmc216_vivado   of vc707_fmc216_vivado  is

-------------------------------------------------------------------------------------
--Constants declaration
-------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------
--Signal declaration
-------------------------------------------------------------------------------------

--sip_cid_ex
signal sip_cid_ex_0_cmdclk_in_cmdclk           : std_logic;
signal sip_cid_ex_0_cmd_in_cmdin               : std_logic_vector(63 downto 0);
signal sip_cid_ex_0_cmd_in_cmdin_val           : std_logic;
signal sip_cid_ex_0_rst_rstin                  : std_logic_vector(31 downto 0);
signal sip_cid_ex_0_cmd_out_cmdout             : std_logic_vector(63 downto 0);
signal sip_cid_ex_0_cmd_out_cmdout_val         : std_logic;

--sip_i2c_master
signal sip_i2c_master_0_clk_clkin              : std_logic_vector(31 downto 0);
signal sip_i2c_master_0_rst_rstin              : std_logic_vector(31 downto 0);
signal sip_i2c_master_0_cmdclk_in_cmdclk       : std_logic;
signal sip_i2c_master_0_cmd_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_i2c_master_0_cmd_in_cmdin_val       : std_logic;
signal sip_i2c_master_0_cmd_out_cmdout         : std_logic_vector(63 downto 0);
signal sip_i2c_master_0_cmd_out_cmdout_val     : std_logic;
signal sip_i2c_master_0_ext_i2c_i2c_scl        : std_logic;
signal sip_i2c_master_0_ext_i2c_i2c_sda        : std_logic;

--sip_cmd12_mux
signal sip_cmd12_mux_0_cmdclk_in_cmdclk        : std_logic;
signal sip_cmd12_mux_0_cmd0_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd0_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd1_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd1_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd2_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd2_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd3_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd3_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd4_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd4_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd5_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd5_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd6_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd6_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd7_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd7_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd8_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd8_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd9_in_cmdin           : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd9_in_cmdin_val       : std_logic;
signal sip_cmd12_mux_0_cmd10_in_cmdin          : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd10_in_cmdin_val      : std_logic;
signal sip_cmd12_mux_0_cmd11_in_cmdin          : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd11_in_cmdin_val      : std_logic;
signal sip_cmd12_mux_0_cmd_out_cmdout          : std_logic_vector(63 downto 0);
signal sip_cmd12_mux_0_cmd_out_cmdout_val      : std_logic;

--sip_vc707_mac_engine_sgmii
signal sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk :      std_logic;
signal sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout :   std_logic_vector(63 downto 0);
signal sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val :       std_logic;
signal sip_vc707_mac_engine_sgmii_0_cmd_in_cmdin : std_logic_vector(63 downto 0);
signal sip_vc707_mac_engine_sgmii_0_cmd_in_cmdin_val :     std_logic;
signal sip_vc707_mac_engine_sgmii_0_clkout_clkout :  std_logic_vector(31 downto 0);
signal sip_vc707_mac_engine_sgmii_0_rst_out_rstout :   std_logic_vector(31 downto 0);
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_cpu_reset :                   std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sysclk_p :                  std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sysclk_n :                  std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_gpio_led :                  std_logic_vector(3 downto 0);
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_phy_reset_l :                     std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_phy_mdc :                 std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_phy_mdio :                  std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_refclk_p :                        std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_refclk_n :                        std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_tx_p :                    std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_tx_n :                    std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_rx_p :                    std_logic;
signal sip_vc707_mac_engine_sgmii_0_ext_mac_engine_sgmii_sgmii_rx_n :                    std_logic;
signal sip_vc707_mac_engine_sgmii_0_out_data_out_stop :      std_logic;
signal sip_vc707_mac_engine_sgmii_0_out_data_out_dval :      std_logic;
signal sip_vc707_mac_engine_sgmii_0_out_data_out_data :      std_logic_vector(63 downto 0);

--sip_fmc216_8lane
signal sip_fmc216_8lane_0_clk_clkin            : std_logic_vector(31 downto 0);
signal sip_fmc216_8lane_0_rst_rstin            : std_logic_vector(31 downto 0);
signal sip_fmc216_8lane_0_cmdclk_in_cmdclk     : std_logic;
signal sip_fmc216_8lane_0_cmd_in_cmdin         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_cmd_in_cmdin_val     : std_logic;
signal sip_fmc216_8lane_0_cmd_out_cmdout       : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_cmd_out_cmdout_val   : std_logic;
signal sip_fmc216_8lane_0_dac0_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac0_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac0_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac1_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac1_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac1_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac2_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac2_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac2_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac3_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac3_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac3_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac4_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac4_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac4_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac5_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac5_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac5_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac6_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac6_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac6_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac7_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac7_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac7_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac8_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac8_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac8_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac9_in_stop         : std_logic;
signal sip_fmc216_8lane_0_dac9_in_dval         : std_logic;
signal sip_fmc216_8lane_0_dac9_in_data         : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac10_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac10_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac10_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac11_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac11_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac11_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac12_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac12_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac12_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac13_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac13_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac13_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac14_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac14_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac14_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_dac15_in_stop        : std_logic;
signal sip_fmc216_8lane_0_dac15_in_dval        : std_logic;
signal sip_fmc216_8lane_0_dac15_in_data        : std_logic_vector(63 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_dac_syncb_n :       std_logic_vector(3 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_dac_syncb_p :       std_logic_vector(3 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_ext_trigger_n :         std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_ext_trigger_p :         std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_lmk_sync :    std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_lmk_sysref_n :        std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_lmk_sysref_p :        std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_lmkclk_n :    std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_lmkclk_p :    std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_pg_m2c :  std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_prsnt_m2c_l :       std_logic;
signal sip_fmc216_8lane_0_ext_fmc216_8lane_refclk_n :    std_logic_vector(1 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_refclk_p :    std_logic_vector(1 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_serdin_n :    std_logic_vector(7 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_serdin_p :    std_logic_vector(7 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_serdout_n :     std_logic_vector(7 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_serdout_p :     std_logic_vector(7 downto 0);
signal sip_fmc216_8lane_0_ext_fmc216_8lane_trigger_out :       std_logic;

--sip_router_s1d16
signal sip_router_s1d16_0_cmdclk_in_cmdclk     : std_logic;
signal sip_router_s1d16_0_cmd_in_cmdin         : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_cmd_in_cmdin_val     : std_logic;
signal sip_router_s1d16_0_cmd_out_cmdout       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_cmd_out_cmdout_val   : std_logic;
signal sip_router_s1d16_0_clk_clkin            : std_logic_vector(31 downto 0);
signal sip_router_s1d16_0_rst_rstin            : std_logic_vector(31 downto 0);
signal sip_router_s1d16_0_out0_out_stop        : std_logic;
signal sip_router_s1d16_0_out0_out_dval        : std_logic;
signal sip_router_s1d16_0_out0_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out1_out_stop        : std_logic;
signal sip_router_s1d16_0_out1_out_dval        : std_logic;
signal sip_router_s1d16_0_out1_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out2_out_stop        : std_logic;
signal sip_router_s1d16_0_out2_out_dval        : std_logic;
signal sip_router_s1d16_0_out2_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out3_out_stop        : std_logic;
signal sip_router_s1d16_0_out3_out_dval        : std_logic;
signal sip_router_s1d16_0_out3_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out4_out_stop        : std_logic;
signal sip_router_s1d16_0_out4_out_dval        : std_logic;
signal sip_router_s1d16_0_out4_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out5_out_stop        : std_logic;
signal sip_router_s1d16_0_out5_out_dval        : std_logic;
signal sip_router_s1d16_0_out5_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out6_out_stop        : std_logic;
signal sip_router_s1d16_0_out6_out_dval        : std_logic;
signal sip_router_s1d16_0_out6_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out7_out_stop        : std_logic;
signal sip_router_s1d16_0_out7_out_dval        : std_logic;
signal sip_router_s1d16_0_out7_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out8_out_stop        : std_logic;
signal sip_router_s1d16_0_out8_out_dval        : std_logic;
signal sip_router_s1d16_0_out8_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out9_out_stop        : std_logic;
signal sip_router_s1d16_0_out9_out_dval        : std_logic;
signal sip_router_s1d16_0_out9_out_data        : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out10_out_stop       : std_logic;
signal sip_router_s1d16_0_out10_out_dval       : std_logic;
signal sip_router_s1d16_0_out10_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out11_out_stop       : std_logic;
signal sip_router_s1d16_0_out11_out_dval       : std_logic;
signal sip_router_s1d16_0_out11_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out12_out_stop       : std_logic;
signal sip_router_s1d16_0_out12_out_dval       : std_logic;
signal sip_router_s1d16_0_out12_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out13_out_stop       : std_logic;
signal sip_router_s1d16_0_out13_out_dval       : std_logic;
signal sip_router_s1d16_0_out13_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out14_out_stop       : std_logic;
signal sip_router_s1d16_0_out14_out_dval       : std_logic;
signal sip_router_s1d16_0_out14_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_out15_out_stop       : std_logic;
signal sip_router_s1d16_0_out15_out_dval       : std_logic;
signal sip_router_s1d16_0_out15_out_data       : std_logic_vector(63 downto 0);
signal sip_router_s1d16_0_in0_in_stop          : std_logic;
signal sip_router_s1d16_0_in0_in_dval          : std_logic;
signal sip_router_s1d16_0_in0_in_data          : std_logic_vector(63 downto 0);

-------------------------------------------------------------------------------------
--Components Declaration
-------------------------------------------------------------------------------------

component sip_cid_ex
  generic
  (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
  port
  (
   cmdclk_in_cmdclk                        : in    std_logic;
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;
   rst_rstin                               : in    std_logic_vector(31 downto 0);
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic
  );
end component;

component sip_i2c_master
  generic
  (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
  port
  (
   clk_clkin                               : in    std_logic_vector(31 downto 0);
   rst_rstin                               : in    std_logic_vector(31 downto 0);
   cmdclk_in_cmdclk                        : in    std_logic;
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;
   i2c_scl                                 : inout std_logic;
   i2c_sda                                 : inout std_logic
  );
end component;

component sip_cmd12_mux
  port
  (
   cmdclk_in_cmdclk                        : in    std_logic;
   cmd0_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd0_in_cmdin_val                       : in    std_logic;
   cmd1_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd1_in_cmdin_val                       : in    std_logic;
   cmd2_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd2_in_cmdin_val                       : in    std_logic;
   cmd3_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd3_in_cmdin_val                       : in    std_logic;
   cmd4_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd4_in_cmdin_val                       : in    std_logic;
   cmd5_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd5_in_cmdin_val                       : in    std_logic;
   cmd6_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd6_in_cmdin_val                       : in    std_logic;
   cmd7_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd7_in_cmdin_val                       : in    std_logic;
   cmd8_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd8_in_cmdin_val                       : in    std_logic;
   cmd9_in_cmdin                           : in    std_logic_vector(63 downto 0);
   cmd9_in_cmdin_val                       : in    std_logic;
   cmd10_in_cmdin                          : in    std_logic_vector(63 downto 0);
   cmd10_in_cmdin_val                      : in    std_logic;
   cmd11_in_cmdin                          : in    std_logic_vector(63 downto 0);
   cmd11_in_cmdin_val                      : in    std_logic;
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic
  );
end component;

component sip_vc707_mac_engine_sgmii
  port
  (
   cmdclk_out_cmdclk                       : out   std_logic;
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;
   clkout_clkout                           : out   std_logic_vector(31 downto 0);
   rst_out_rstout                          : out   std_logic_vector(31 downto 0);
   cpu_reset                               : in    std_logic;
   -- sysclk_p                                : in    std_logic;
   -- sysclk_n                                : in    std_logic;
   gpio_led                                : out   std_logic_vector(3 downto 0);
   phy_reset_l                             : out   std_logic;
   phy_mdc                                 : out   std_logic;
   phy_mdio                                : inout std_logic;
   sgmii_refclk_p                          : in    std_logic;
   sgmii_refclk_n                          : in    std_logic;
   sgmii_tx_p                              : out   std_logic;
   sgmii_tx_n                              : out   std_logic;
   sgmii_rx_p                              : in    std_logic;
   sgmii_rx_n                              : in    std_logic;
   in_data_in_stop                         : out   std_logic;
   in_data_in_dval                         : in    std_logic;
   in_data_in_data                         : in    std_logic_vector(63 downto 0);
   out_data_out_stop                       : in    std_logic;
   out_data_out_dval                       : out   std_logic;
   out_data_out_data                       : out   std_logic_vector(63 downto 0);

   write_DAC_start         : in std_logic;
   write_DAC_end           : out std_logic;

   setup_end                               : in    std_logic;
   clk_out_wizz_125       : in std_logic;
   locked_pll_wizz        : in std_logic;

   i_slv_reg2_0            : out STD_LOGIC_VECTOR (31 downto 0);
   i_slv_reg3_0            : out STD_LOGIC_VECTOR (31 downto 0);
   mac_engine_rack_0       : out STD_LOGIC;
   mac_engine_wack_0       : out STD_LOGIC;
   mac_engine_wstart_0     : out STD_LOGIC;
   o_read_complete_reg2_0  : in  STD_LOGIC;
   o_read_complete_reg3_0  : in  STD_LOGIC;
   o_slv_reg0_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg1_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_slv_reg4_0            : in  STD_LOGIC_VECTOR (31 downto 0);
   o_write_complete_reg0_0 : in  STD_LOGIC;
   o_write_complete_reg1_0 : in  STD_LOGIC;
   user_wdone_interrupt_0  : in  STD_LOGIC
  );
end component;

component sip_fmc216_8lane
  generic
  (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
  port
  (
   clk_clkin                               : in    std_logic_vector(31 downto 0);
   rst_rstin                               : in    std_logic_vector(31 downto 0);
   cmdclk_in_cmdclk                        : in    std_logic;
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;
   dac0_in_stop                            : out   std_logic;
   dac0_in_dval                            : in    std_logic;
   dac0_in_data                            : in    std_logic_vector(63 downto 0);
   dac1_in_stop                            : out   std_logic;
   dac1_in_dval                            : in    std_logic;
   dac1_in_data                            : in    std_logic_vector(63 downto 0);
   dac2_in_stop                            : out   std_logic;
   dac2_in_dval                            : in    std_logic;
   dac2_in_data                            : in    std_logic_vector(63 downto 0);
   dac3_in_stop                            : out   std_logic;
   dac3_in_dval                            : in    std_logic;
   dac3_in_data                            : in    std_logic_vector(63 downto 0);
   dac4_in_stop                            : out   std_logic;
   dac4_in_dval                            : in    std_logic;
   dac4_in_data                            : in    std_logic_vector(63 downto 0);
   dac5_in_stop                            : out   std_logic;
   dac5_in_dval                            : in    std_logic;
   dac5_in_data                            : in    std_logic_vector(63 downto 0);
   dac6_in_stop                            : out   std_logic;
   dac6_in_dval                            : in    std_logic;
   dac6_in_data                            : in    std_logic_vector(63 downto 0);
   dac7_in_stop                            : out   std_logic;
   dac7_in_dval                            : in    std_logic;
   dac7_in_data                            : in    std_logic_vector(63 downto 0);
   dac8_in_stop                            : out   std_logic;
   dac8_in_dval                            : in    std_logic;
   dac8_in_data                            : in    std_logic_vector(63 downto 0);
   dac9_in_stop                            : out   std_logic;
   dac9_in_dval                            : in    std_logic;
   dac9_in_data                            : in    std_logic_vector(63 downto 0);
   dac10_in_stop                           : out   std_logic;
   dac10_in_dval                           : in    std_logic;
   dac10_in_data                           : in    std_logic_vector(63 downto 0);
   dac11_in_stop                           : out   std_logic;
   dac11_in_dval                           : in    std_logic;
   dac11_in_data                           : in    std_logic_vector(63 downto 0);
   dac12_in_stop                           : out   std_logic;
   dac12_in_dval                           : in    std_logic;
   dac12_in_data                           : in    std_logic_vector(63 downto 0);
   dac13_in_stop                           : out   std_logic;
   dac13_in_dval                           : in    std_logic;
   dac13_in_data                           : in    std_logic_vector(63 downto 0);
   dac14_in_stop                           : out   std_logic;
   dac14_in_dval                           : in    std_logic;
   dac14_in_data                           : in    std_logic_vector(63 downto 0);
   dac15_in_stop                           : out   std_logic;
   dac15_in_dval                           : in    std_logic;
   dac15_in_data                           : in    std_logic_vector(63 downto 0);
   dac_syncb_n                             : in    std_logic_vector(3 downto 0);
   dac_syncb_p                             : in    std_logic_vector(3 downto 0);
   ext_trigger_n                           : in    std_logic;
   ext_trigger_p                           : in    std_logic;
   lmk_sync                                : out   std_logic;
   lmk_sysref_n                            : in    std_logic;
   lmk_sysref_p                            : in    std_logic;
   lmkclk_n                                : in    std_logic;
   lmkclk_p                                : in    std_logic;
   pg_m2c                                  : in    std_logic;
   prsnt_m2c_l                             : in    std_logic;
   refclk_n                                : in    std_logic_vector(1 downto 0);
   refclk_p                                : in    std_logic_vector(1 downto 0);
   serdin_n                                : in    std_logic_vector(7 downto 0);
   serdin_p                                : in    std_logic_vector(7 downto 0);
   serdout_n                               : out   std_logic_vector(7 downto 0);
   serdout_p                               : out   std_logic_vector(7 downto 0);
   trigger_out                             : out   std_logic
  );
end component;

component sip_router_s1d16
  generic
  (
   global_start_addr_gen                   : std_logic_vector(27 downto 0);
   global_stop_addr_gen                    : std_logic_vector(27 downto 0);
   private_start_addr_gen                  : std_logic_vector(27 downto 0);
   private_stop_addr_gen                   : std_logic_vector(27 downto 0)
);
  port
  (
   cmdclk_in_cmdclk                        : in    std_logic;
   cmd_in_cmdin                            : in    std_logic_vector(63 downto 0);
   cmd_in_cmdin_val                        : in    std_logic;
   cmd_out_cmdout                          : out   std_logic_vector(63 downto 0);
   cmd_out_cmdout_val                      : out   std_logic;
   clk_clkin                               : in    std_logic_vector(31 downto 0);
   rst_rstin                               : in    std_logic_vector(31 downto 0);
   out0_out_stop                           : in    std_logic;
   out0_out_dval                           : out   std_logic;
   out0_out_data                           : out   std_logic_vector(63 downto 0);
   out1_out_stop                           : in    std_logic;
   out1_out_dval                           : out   std_logic;
   out1_out_data                           : out   std_logic_vector(63 downto 0);
   out2_out_stop                           : in    std_logic;
   out2_out_dval                           : out   std_logic;
   out2_out_data                           : out   std_logic_vector(63 downto 0);
   out3_out_stop                           : in    std_logic;
   out3_out_dval                           : out   std_logic;
   out3_out_data                           : out   std_logic_vector(63 downto 0);
   out4_out_stop                           : in    std_logic;
   out4_out_dval                           : out   std_logic;
   out4_out_data                           : out   std_logic_vector(63 downto 0);
   out5_out_stop                           : in    std_logic;
   out5_out_dval                           : out   std_logic;
   out5_out_data                           : out   std_logic_vector(63 downto 0);
   out6_out_stop                           : in    std_logic;
   out6_out_dval                           : out   std_logic;
   out6_out_data                           : out   std_logic_vector(63 downto 0);
   out7_out_stop                           : in    std_logic;
   out7_out_dval                           : out   std_logic;
   out7_out_data                           : out   std_logic_vector(63 downto 0);
   out8_out_stop                           : in    std_logic;
   out8_out_dval                           : out   std_logic;
   out8_out_data                           : out   std_logic_vector(63 downto 0);
   out9_out_stop                           : in    std_logic;
   out9_out_dval                           : out   std_logic;
   out9_out_data                           : out   std_logic_vector(63 downto 0);
   out10_out_stop                          : in    std_logic;
   out10_out_dval                          : out   std_logic;
   out10_out_data                          : out   std_logic_vector(63 downto 0);
   out11_out_stop                          : in    std_logic;
   out11_out_dval                          : out   std_logic;
   out11_out_data                          : out   std_logic_vector(63 downto 0);
   out12_out_stop                          : in    std_logic;
   out12_out_dval                          : out   std_logic;
   out12_out_data                          : out   std_logic_vector(63 downto 0);
   out13_out_stop                          : in    std_logic;
   out13_out_dval                          : out   std_logic;
   out13_out_data                          : out   std_logic_vector(63 downto 0);
   out14_out_stop                          : in    std_logic;
   out14_out_dval                          : out   std_logic;
   out14_out_data                          : out   std_logic_vector(63 downto 0);
   out15_out_stop                          : in    std_logic;
   out15_out_dval                          : out   std_logic;
   out15_out_data                          : out   std_logic_vector(63 downto 0);
   in0_in_stop                             : out   std_logic;
   in0_in_dval                             : in    std_logic;
   in0_in_data                             : in    std_logic_vector(63 downto 0)
  );
end component;



begin


-------------------------------------------------------------------------------------
--Components Instantiation
-------------------------------------------------------------------------------------
sip_cid_ex_0 : sip_cid_ex
generic map
(
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0002000",
   private_stop_addr_gen     =>   x"00023FF"
)
port map
(
   cmdclk_in_cmdclk          =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd_in_cmdin              =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout,
   cmd_in_cmdin_val          =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val,
   rst_rstin                 =>   sip_vc707_mac_engine_sgmii_0_rst_out_rstout,
   cmd_out_cmdout            =>   sip_cid_ex_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_cid_ex_0_cmd_out_cmdout_val
);

sip_i2c_master_0 : sip_i2c_master
generic map
(
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0002400",
   private_stop_addr_gen     =>   x"00123FF"
)
port map
(
   clk_clkin                 =>   sip_vc707_mac_engine_sgmii_0_clkout_clkout,
   rst_rstin                 =>   sip_vc707_mac_engine_sgmii_0_rst_out_rstout,
   cmdclk_in_cmdclk          =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd_in_cmdin              =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout,
   cmd_in_cmdin_val          =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val,
   cmd_out_cmdout            =>   sip_i2c_master_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_i2c_master_0_cmd_out_cmdout_val,
   i2c_scl                   =>   i2c_scl_0,
   i2c_sda                   =>   i2c_sda_0
);

sip_cmd12_mux_0 : sip_cmd12_mux
port map
(
   cmdclk_in_cmdclk          =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd0_in_cmdin             =>   sip_cid_ex_0_cmd_out_cmdout,
   cmd0_in_cmdin_val         =>   sip_cid_ex_0_cmd_out_cmdout_val,
   cmd1_in_cmdin             =>   sip_i2c_master_0_cmd_out_cmdout,
   cmd1_in_cmdin_val         =>   sip_i2c_master_0_cmd_out_cmdout_val,
   cmd2_in_cmdin             =>   sip_router_s1d16_0_cmd_out_cmdout,
   cmd2_in_cmdin_val         =>   sip_router_s1d16_0_cmd_out_cmdout_val,
   cmd3_in_cmdin             =>   sip_fmc216_8lane_0_cmd_out_cmdout,
   cmd3_in_cmdin_val         =>   sip_fmc216_8lane_0_cmd_out_cmdout_val,
   cmd4_in_cmdin             =>   (others=>'0'),
   cmd4_in_cmdin_val         =>   '0',
   cmd5_in_cmdin             =>   (others=>'0'),
   cmd5_in_cmdin_val         =>   '0',
   cmd6_in_cmdin             =>   (others=>'0'),
   cmd6_in_cmdin_val         =>   '0',
   cmd7_in_cmdin             =>   (others=>'0'),
   cmd7_in_cmdin_val         =>   '0',
   cmd8_in_cmdin             =>   (others=>'0'),
   cmd8_in_cmdin_val         =>   '0',
   cmd9_in_cmdin             =>   (others=>'0'),
   cmd9_in_cmdin_val         =>   '0',
   cmd10_in_cmdin            =>   (others=>'0'),
   cmd10_in_cmdin_val        =>   '0',
   cmd11_in_cmdin            =>   (others=>'0'),
   cmd11_in_cmdin_val        =>   '0',
   cmd_out_cmdout            =>   sip_cmd12_mux_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_cmd12_mux_0_cmd_out_cmdout_val
);

sip_vc707_mac_engine_sgmii_0 : sip_vc707_mac_engine_sgmii
port map
(
   cmdclk_out_cmdclk         =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd_out_cmdout            =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val,
   cmd_in_cmdin              =>   sip_cmd12_mux_0_cmd_out_cmdout,
   cmd_in_cmdin_val          =>   sip_cmd12_mux_0_cmd_out_cmdout_val,
   clkout_clkout             =>   sip_vc707_mac_engine_sgmii_0_clkout_clkout,
   rst_out_rstout            =>   sip_vc707_mac_engine_sgmii_0_rst_out_rstout,
   cpu_reset                 =>   cpu_reset_0,
   -- sysclk_p                  =>   sysclk_p_0,
   -- sysclk_n                  =>   sysclk_n_0,
   gpio_led                  =>   gpio_led_0,
   phy_reset_l               =>   phy_reset_l_0,
   phy_mdc                   =>   phy_mdc_0,
   phy_mdio                  =>   phy_mdio_0,
   sgmii_refclk_p            =>   sgmii_refclk_p_0,
   sgmii_refclk_n            =>   sgmii_refclk_n_0,
   sgmii_tx_p                =>   sgmii_tx_p_0,
   sgmii_tx_n                =>   sgmii_tx_n_0,
   sgmii_rx_p                =>   sgmii_rx_p_0,
   sgmii_rx_n                =>   sgmii_rx_n_0,
   in_data_in_stop           =>   open,
   in_data_in_dval           =>   '0',
   in_data_in_data           =>   (others=>'0'),
   out_data_out_stop         =>   sip_vc707_mac_engine_sgmii_0_out_data_out_stop,
   out_data_out_dval         =>   sip_vc707_mac_engine_sgmii_0_out_data_out_dval,
   out_data_out_data         =>   sip_vc707_mac_engine_sgmii_0_out_data_out_data,

   write_DAC_end => write_DAC_end,
   write_DAC_start => write_DAC_start, 

   setup_end => setup_end,
   clk_out_wizz_125   =>   clk_out_wizz_125,  
   locked_pll_wizz   =>   locked_pll_wizz  ,

   i_slv_reg2_0            => i_slv_reg2_0            ,
   i_slv_reg3_0            => i_slv_reg3_0            ,
   mac_engine_rack_0       => mac_engine_rack_0       ,
   mac_engine_wack_0       => mac_engine_wack_0       ,
   mac_engine_wstart_0     => mac_engine_wstart_0     ,
   o_read_complete_reg2_0  => o_read_complete_reg2_0  ,
   o_read_complete_reg3_0  => o_read_complete_reg3_0  ,
   o_slv_reg0_0            => o_slv_reg0_0            ,
   o_slv_reg1_0            => o_slv_reg1_0            ,
   o_slv_reg4_0            => o_slv_reg4_0            ,
   o_write_complete_reg0_0 => o_write_complete_reg0_0 ,
   o_write_complete_reg1_0 => o_write_complete_reg1_0 ,
   user_wdone_interrupt_0  => user_wdone_interrupt_0  

);

sip_fmc216_8lane_0 : sip_fmc216_8lane
generic map
(
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"0012400",
   private_stop_addr_gen     =>   x"00143FE"
)
port map
(
   clk_clkin                 =>   sip_vc707_mac_engine_sgmii_0_clkout_clkout,
   rst_rstin                 =>   sip_vc707_mac_engine_sgmii_0_rst_out_rstout,
   cmdclk_in_cmdclk          =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd_in_cmdin              =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout,
   cmd_in_cmdin_val          =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val,
   cmd_out_cmdout            =>   sip_fmc216_8lane_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_fmc216_8lane_0_cmd_out_cmdout_val,
   dac0_in_stop              =>   sip_router_s1d16_0_out0_out_stop,
   dac0_in_dval              =>   sip_router_s1d16_0_out0_out_dval,
   dac0_in_data              =>   sip_router_s1d16_0_out0_out_data,
   dac1_in_stop              =>   sip_router_s1d16_0_out1_out_stop,
   dac1_in_dval              =>   sip_router_s1d16_0_out1_out_dval,
   dac1_in_data              =>   sip_router_s1d16_0_out1_out_data,
   dac2_in_stop              =>   sip_router_s1d16_0_out2_out_stop,
   dac2_in_dval              =>   sip_router_s1d16_0_out2_out_dval,
   dac2_in_data              =>   sip_router_s1d16_0_out2_out_data,
   dac3_in_stop              =>   sip_router_s1d16_0_out3_out_stop,
   dac3_in_dval              =>   sip_router_s1d16_0_out3_out_dval,
   dac3_in_data              =>   sip_router_s1d16_0_out3_out_data,
   dac4_in_stop              =>   sip_router_s1d16_0_out4_out_stop,
   dac4_in_dval              =>   sip_router_s1d16_0_out4_out_dval,
   dac4_in_data              =>   sip_router_s1d16_0_out4_out_data,
   dac5_in_stop              =>   sip_router_s1d16_0_out5_out_stop,
   dac5_in_dval              =>   sip_router_s1d16_0_out5_out_dval,
   dac5_in_data              =>   sip_router_s1d16_0_out5_out_data,
   dac6_in_stop              =>   sip_router_s1d16_0_out6_out_stop,
   dac6_in_dval              =>   sip_router_s1d16_0_out6_out_dval,
   dac6_in_data              =>   sip_router_s1d16_0_out6_out_data,
   dac7_in_stop              =>   sip_router_s1d16_0_out7_out_stop,
   dac7_in_dval              =>   sip_router_s1d16_0_out7_out_dval,
   dac7_in_data              =>   sip_router_s1d16_0_out7_out_data,
   dac8_in_stop              =>   sip_router_s1d16_0_out8_out_stop,
   dac8_in_dval              =>   sip_router_s1d16_0_out8_out_dval,
   dac8_in_data              =>   sip_router_s1d16_0_out8_out_data,
   dac9_in_stop              =>   sip_router_s1d16_0_out9_out_stop,
   dac9_in_dval              =>   sip_router_s1d16_0_out9_out_dval,
   dac9_in_data              =>   sip_router_s1d16_0_out9_out_data,
   dac10_in_stop             =>   sip_router_s1d16_0_out10_out_stop,
   dac10_in_dval             =>   sip_router_s1d16_0_out10_out_dval,
   dac10_in_data             =>   sip_router_s1d16_0_out10_out_data,
   dac11_in_stop             =>   sip_router_s1d16_0_out11_out_stop,
   dac11_in_dval             =>   sip_router_s1d16_0_out11_out_dval,
   dac11_in_data             =>   sip_router_s1d16_0_out11_out_data,
   dac12_in_stop             =>   sip_router_s1d16_0_out12_out_stop,
   dac12_in_dval             =>   sip_router_s1d16_0_out12_out_dval,
   dac12_in_data             =>   sip_router_s1d16_0_out12_out_data,
   dac13_in_stop             =>   sip_router_s1d16_0_out13_out_stop,
   dac13_in_dval             =>   sip_router_s1d16_0_out13_out_dval,
   dac13_in_data             =>   sip_router_s1d16_0_out13_out_data,
   dac14_in_stop             =>   sip_router_s1d16_0_out14_out_stop,
   dac14_in_dval             =>   sip_router_s1d16_0_out14_out_dval,
   dac14_in_data             =>   sip_router_s1d16_0_out14_out_data,
   dac15_in_stop             =>   sip_router_s1d16_0_out15_out_stop,
   dac15_in_dval             =>   sip_router_s1d16_0_out15_out_dval,
   dac15_in_data             =>   sip_router_s1d16_0_out15_out_data,
   dac_syncb_n               =>   dac_syncb_n_0,
   dac_syncb_p               =>   dac_syncb_p_0,
   ext_trigger_n             =>   ext_trigger_n_0,
   ext_trigger_p             =>   ext_trigger_p_0,
   lmk_sync                  =>   lmk_sync_0,
   lmk_sysref_n              =>   lmk_sysref_n_0,
   lmk_sysref_p              =>   lmk_sysref_p_0,
   lmkclk_n                  =>   lmkclk_n_0,
   lmkclk_p                  =>   lmkclk_p_0,
   pg_m2c                    =>   pg_m2c_0,
   prsnt_m2c_l               =>   prsnt_m2c_l_0,
   refclk_n                  =>   refclk_n_0,
   refclk_p                  =>   refclk_p_0,
   serdin_n                  =>   serdin_n_0,
   serdin_p                  =>   serdin_p_0,
   serdout_n                 =>   serdout_n_0,
   serdout_p                 =>   serdout_p_0,
   trigger_out               =>   trigger_out_0
);

sip_router_s1d16_0 : sip_router_s1d16
generic map
(
   global_start_addr_gen     =>   x"0000000",
   global_stop_addr_gen      =>   x"0001FFF",
   private_start_addr_gen    =>   x"00143FF",
   private_stop_addr_gen     =>   x"0014402"
)
port map
(
   cmdclk_in_cmdclk          =>   sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk,
   cmd_in_cmdin              =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout,
   cmd_in_cmdin_val          =>   sip_vc707_mac_engine_sgmii_0_cmd_out_cmdout_val,
   cmd_out_cmdout            =>   sip_router_s1d16_0_cmd_out_cmdout,
   cmd_out_cmdout_val        =>   sip_router_s1d16_0_cmd_out_cmdout_val,
   clk_clkin                 =>   sip_vc707_mac_engine_sgmii_0_clkout_clkout,
   rst_rstin                 =>   sip_vc707_mac_engine_sgmii_0_rst_out_rstout,
   out0_out_stop             =>   sip_router_s1d16_0_out0_out_stop,
   out0_out_dval             =>   sip_router_s1d16_0_out0_out_dval,
   out0_out_data             =>   sip_router_s1d16_0_out0_out_data,
   out1_out_stop             =>   sip_router_s1d16_0_out1_out_stop,
   out1_out_dval             =>   sip_router_s1d16_0_out1_out_dval,
   out1_out_data             =>   sip_router_s1d16_0_out1_out_data,
   out2_out_stop             =>   sip_router_s1d16_0_out2_out_stop,
   out2_out_dval             =>   sip_router_s1d16_0_out2_out_dval,
   out2_out_data             =>   sip_router_s1d16_0_out2_out_data,
   out3_out_stop             =>   sip_router_s1d16_0_out3_out_stop,
   out3_out_dval             =>   sip_router_s1d16_0_out3_out_dval,
   out3_out_data             =>   sip_router_s1d16_0_out3_out_data,
   out4_out_stop             =>   sip_router_s1d16_0_out4_out_stop,
   out4_out_dval             =>   sip_router_s1d16_0_out4_out_dval,
   out4_out_data             =>   sip_router_s1d16_0_out4_out_data,
   out5_out_stop             =>   sip_router_s1d16_0_out5_out_stop,
   out5_out_dval             =>   sip_router_s1d16_0_out5_out_dval,
   out5_out_data             =>   sip_router_s1d16_0_out5_out_data,
   out6_out_stop             =>   sip_router_s1d16_0_out6_out_stop,
   out6_out_dval             =>   sip_router_s1d16_0_out6_out_dval,
   out6_out_data             =>   sip_router_s1d16_0_out6_out_data,
   out7_out_stop             =>   sip_router_s1d16_0_out7_out_stop,
   out7_out_dval             =>   sip_router_s1d16_0_out7_out_dval,
   out7_out_data             =>   sip_router_s1d16_0_out7_out_data,
   out8_out_stop             =>   sip_router_s1d16_0_out8_out_stop,
   out8_out_dval             =>   sip_router_s1d16_0_out8_out_dval,
   out8_out_data             =>   sip_router_s1d16_0_out8_out_data,
   out9_out_stop             =>   sip_router_s1d16_0_out9_out_stop,
   out9_out_dval             =>   sip_router_s1d16_0_out9_out_dval,
   out9_out_data             =>   sip_router_s1d16_0_out9_out_data,
   out10_out_stop            =>   sip_router_s1d16_0_out10_out_stop,
   out10_out_dval            =>   sip_router_s1d16_0_out10_out_dval,
   out10_out_data            =>   sip_router_s1d16_0_out10_out_data,
   out11_out_stop            =>   sip_router_s1d16_0_out11_out_stop,
   out11_out_dval            =>   sip_router_s1d16_0_out11_out_dval,
   out11_out_data            =>   sip_router_s1d16_0_out11_out_data,
   out12_out_stop            =>   sip_router_s1d16_0_out12_out_stop,
   out12_out_dval            =>   sip_router_s1d16_0_out12_out_dval,
   out12_out_data            =>   sip_router_s1d16_0_out12_out_data,
   out13_out_stop            =>   sip_router_s1d16_0_out13_out_stop,
   out13_out_dval            =>   sip_router_s1d16_0_out13_out_dval,
   out13_out_data            =>   sip_router_s1d16_0_out13_out_data,
   out14_out_stop            =>   sip_router_s1d16_0_out14_out_stop,
   out14_out_dval            =>   sip_router_s1d16_0_out14_out_dval,
   out14_out_data            =>   sip_router_s1d16_0_out14_out_data,
   out15_out_stop            =>   sip_router_s1d16_0_out15_out_stop,
   out15_out_dval            =>   sip_router_s1d16_0_out15_out_dval,
   out15_out_data            =>   sip_router_s1d16_0_out15_out_data,
   in0_in_stop               =>   sip_vc707_mac_engine_sgmii_0_out_data_out_stop,
   in0_in_dval               =>   sip_vc707_mac_engine_sgmii_0_out_data_out_dval,
   in0_in_data               =>   sip_vc707_mac_engine_sgmii_0_out_data_out_data
);

-- zc706_usr_clk <= sip_vc707_mac_engine_sgmii_0_cmdclk_out_cmdclk;

end architecture arch_vc707_fmc216_vivado   ; -- of vc707_fmc216_vivado
