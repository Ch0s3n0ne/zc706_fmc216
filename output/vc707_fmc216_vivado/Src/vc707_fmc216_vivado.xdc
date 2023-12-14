################################################################################
# I2C Location assignments (zc706 pinout, connects to FMC connectors)
################################################################################
set_property PACKAGE_PIN AJ14 [get_ports i2c_scl_0]
set_property IOSTANDARD LVCMOS25 [get_ports i2c_scl_0]

set_property PACKAGE_PIN AJ18 [get_ports i2c_sda_0]
set_property IOSTANDARD LVCMOS25 [get_ports i2c_sda_0]
################################################################################

################################################################################
#I2C master timing constraints
################################################################################

create_clock -period 8.000 -name VIRTUAL_sip_i2cmaster_clk125 -waveform {0.000 4.000}
# INPUT DELAY
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay 10.000 [get_ports i2c_scl_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay 4.500 [get_ports i2c_scl_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay 10.000 [get_ports i2c_sda_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay 4.500 [get_ports i2c_sda_0]

# OUTPUT DELAY
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay -0.500 [get_ports i2c_scl_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay -10.000 [get_ports i2c_scl_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay -0.500 [get_ports i2c_sda_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay -10.000 [get_ports i2c_sda_0]
#-------------------------------------------------------------------------------
## MAC Engine
#-------------------------------------------------------------------------------
# Master reset input
# set_property PACKAGE_PIN A8 [get_ports cpu_reset_0]
# set_property IOSTANDARD LVCMOS18 [get_ports cpu_reset_0]
# set_property SLEW SLOW [get_ports cpu_reset_0]
#----- Master clock input
set_property IOSTANDARD LVDS [get_ports sysclk_n_0]
set_property DIFF_TERM TRUE [get_ports sysclk_n_0]

set_property PACKAGE_PIN H9 [get_ports sysclk_p_0]
set_property PACKAGE_PIN G9 [get_ports sysclk_n_0]
set_property IOSTANDARD LVDS [get_ports sysclk_p_0]
set_property DIFF_TERM TRUE [get_ports sysclk_p_0]


# #----- Ethernet control interface
# set_property PACKAGE_PIN AJ33 [get_ports phy_reset_l_0]
# set_property IOSTANDARD LVCMOS18 [get_ports phy_reset_l_0]
# set_property SLEW SLOW [get_ports phy_reset_l_0]

# set_property PACKAGE_PIN AH31 [get_ports phy_mdc_0]
# set_property IOSTANDARD LVCMOS18 [get_ports phy_mdc_0]
# set_property SLEW SLOW [get_ports phy_mdc_0]

# set_property PACKAGE_PIN AK33 [get_ports phy_mdio_0]
# set_property IOSTANDARD LVCMOS18 [get_ports phy_mdio_0]
# set_property SLEW SLOW [get_ports phy_mdio_0]

# #----- SGMII interface to gigabit phy
# set_property PACKAGE_PIN AH8 [get_ports sgmii_refclk_p_0]
# create_clock -period 8.000 -name sgmii_refclk_p_0 [get_ports sgmii_refclk_p_0]

# #----- SGMII interface to gigabit phy
# #set_property DIFF_TERM TRUE [get_ports sgmii_tx_n_0]

# #set_property DIFF_TERM TRUE [get_ports sgmii_rx_p_0]

# #set_property DIFF_TERM TRUE [get_ports sgmii_rx_n_0]

# set_property PACKAGE_PIN AM8 [get_ports sgmii_rx_p_0]
# #set_property DIFF_TERM TRUE [get_ports sgmii_rx_p_0]

set_property PACKAGE_PIN Y21 [get_ports {gpio_led_0[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {gpio_led_0[0]}]
set_property SLEW SLOW [get_ports {gpio_led_0[0]}]

set_property PACKAGE_PIN G2 [get_ports {gpio_led_0[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[1]}]
set_property SLEW SLOW [get_ports {gpio_led_0[1]}]

set_property PACKAGE_PIN W21 [get_ports {gpio_led_0[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {gpio_led_0[2]}]
set_property SLEW SLOW [get_ports {gpio_led_0[2]}]

# set_property PACKAGE_PIN G2 [get_ports {gpio_led_0[3]}]
# set_property IOSTANDARD LVCMOS15 [get_ports {gpio_led_0[3]}]
# set_property SLEW SLOW [get_ports {gpio_led_0[3]}]

# #set_property PACKAGE_PIN AR35 [get_ports {gpio_led_0[4]}]
# #set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[4]}]
# #set_property SLEW SLOW [get_ports {gpio_led_0[4]}]

# #set_property PACKAGE_PIN AP41 [get_ports {gpio_led_0[5]}]
# #set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[5]}]
# #set_property SLEW SLOW [get_ports {gpio_led_0[5]}]

# #set_property PACKAGE_PIN AP42 [get_ports {gpio_led_0[6]}]
# #set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[6]}]
# #set_property SLEW SLOW [get_ports {gpio_led_0[6]}]

# #set_property PACKAGE_PIN AU39 [get_ports {gpio_led_0[7]}]
# #set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[7]}]
# #set_property SLEW SLOW [get_ports {gpio_led_0[7]}]


# set_false_path -from [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/i_rst_gen/reset2_o_reg}] -to [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/reset2_o_d_reg}]
# set_false_path -from [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/sw_rst_reg}] -to [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/sw_rst_d_reg}]

# #set_false_path -from [all_fanout -endpoints_only -only_cells -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk125}]] -to [all_fanout -endpoints_only -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk200}]]
# #set_false_path -from [all_fanout -endpoints_only -only_cells -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk200}]] -to [all_fanout -endpoints_only -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk125}]]

# ############################################################################################################
# # VC707 Ethernet Phy timing constraints
# ############################################################################################################

# create_clock -period 20.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_clk50 -waveform {0.000 10.000}
# create_clock -period 8.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_clk125 -waveform {0.000 4.000}
# create_clock -period 320.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf -waveform {0.000 160.000}
# # INPUT DELAY
# set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 3.000 [get_ports cpu_reset_0]
# set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay 4.500 [get_ports cpu_reset_0]
# set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 6.500 [get_ports phy_mdio_0]
# set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 11.500 [get_ports phy_mdio_0]

# # OUTPUT DELAY
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 0.900 [get_ports phy_reset_l_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay -10.000 [get_ports phy_reset_l_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 1.000 [get_ports phy_mdc_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 6.000 [get_ports phy_mdc_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 0.400 [get_ports phy_mdio_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 6.000 [get_ports phy_mdio_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 0.400 [get_ports {gpio_led_0[*]}]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay -10.000 [get_ports {gpio_led_0[*]}]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -min -add_delay -5.000 [get_ports phy_mdc_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -max -add_delay 1.000 [get_ports phy_mdc_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -min -add_delay -5.000 [get_ports phy_mdio_0]
# set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -max -add_delay 0.400 [get_ports phy_mdio_0]

# set_false_path -from [get_pins sip_vc707_mac_engine_sgmii_0/mac_engine_inst/i_rst_gen/reset2_o_reg/C] -to [get_pins sip_vc707_mac_engine_sgmii_0/mac_engine_inst/reset2_o_int_reg/D]

################################################################################
# FMC signals (FMC216  VC707)
################################################################################
set_property -dict {PACKAGE_PIN AG20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ext_trigger_n_0]
set_property -dict {PACKAGE_PIN AF20 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports ext_trigger_p_0]

set_property -dict {PACKAGE_PIN AF19 IOSTANDARD LVCMOS25} [get_ports trigger_out_0]

## DAC SYNC
set_property -dict {PACKAGE_PIN AK18 IOSTANDARD LVDS_25} [get_ports {dac_syncb_n_0[0]}]
set_property -dict {PACKAGE_PIN AK17 IOSTANDARD LVDS_25} [get_ports {dac_syncb_p_0[0]}]
set_property -dict {PACKAGE_PIN AJ19 IOSTANDARD LVDS_25} [get_ports {dac_syncb_n_0[1]}]
set_property -dict {PACKAGE_PIN AH19 IOSTANDARD LVDS_25} [get_ports {dac_syncb_p_0[1]}]
set_property -dict {PACKAGE_PIN AH24 IOSTANDARD LVDS_25} [get_ports {dac_syncb_n_0[2]}]
set_property -dict {PACKAGE_PIN AH23 IOSTANDARD LVDS_25} [get_ports {dac_syncb_p_0[2]}]
set_property -dict {PACKAGE_PIN AK20 IOSTANDARD LVDS_25} [get_ports {dac_syncb_n_0[3]}]
set_property -dict {PACKAGE_PIN AJ20 IOSTANDARD LVDS_25} [get_ports {dac_syncb_p_0[3]}]

# Q6_CLK0 A9/A10
set_property -dict {PACKAGE_PIN AD9} [get_ports {refclk_n_0[1]}]
set_property -dict {PACKAGE_PIN AD10} [get_ports {refclk_p_0[1]}]
## Q5_CLK0 E9/E10
set_property -dict {PACKAGE_PIN AA7} [get_ports {refclk_n_0[0]}]
set_property -dict {PACKAGE_PIN AA8} [get_ports {refclk_p_0[0]}]

create_clock -period 2.713 -name refclk_0 [get_ports {refclk_p_0[0]}]
create_clock -period 2.713 -name refclk_1 [get_ports {refclk_p_0[1]}]

# LLMK SCLKOUT3  SYSREFf
set_property -dict {PACKAGE_PIN U27 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports lmk_sysref_n_0]
set_property -dict {PACKAGE_PIN U26 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports lmk_sysref_p_0]

#LMK DCLKOUT2 CLK
set_property -dict {PACKAGE_PIN AF22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports lmkclk_n_0]
set_property -dict {PACKAGE_PIN AE22 IOSTANDARD LVDS_25 DIFF_TERM 1} [get_ports lmkclk_p_0]

# SYNC OUT to LMK
set_property -dict {PACKAGE_PIN AG19 IOSTANDARD LVCMOS25} [get_ports lmk_sync_0]

set_property LOC GTXE2_CHANNEL_X0Y4 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y5 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt1_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y6 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt2_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y7 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt3_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y0 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt4_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y1 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt5_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y2 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt6_xcvr_fmc216_i/gtxe2_i]
set_property LOC GTXE2_CHANNEL_X0Y3 [get_cells vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt7_xcvr_fmc216_i/gtxe2_i]

# ligadas ao GPIO, tem de ser configurado os valores nestes pinos na Vitis

set_property -dict {PACKAGE_PIN AJ21 IOSTANDARD LVCMOS25} [get_ports {gpio_2_pins_tri_io[0]}]
set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS25} [get_ports {gpio_2_pins_tri_io[1]}]


set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS25} [get_ports setup_end]

# modificação devida a erros de timming
set_false_path -from [get_clocks clk_out1_processing_system_clk_wiz_0_0] -to [get_clocks vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i/TXOUTCLK]

set_false_path -from [get_clocks vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/xcvr_fmc216_init_i/xcvr_fmc216_i/gt0_xcvr_fmc216_i/gtxe2_i/TXOUTCLK] -to [get_clocks clk_out1_processing_system_clk_wiz_0_0]

# set_false_path -from [get_clocks clk_out2_pll0] -to [get_clocks clk_out3_pll0]



create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list zynq_inst/processing_system_i/clk_wiz_0/inst/clk_out1]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 64 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[0]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[1]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[2]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[3]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[4]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[5]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[6]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[7]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[8]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[9]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[10]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[11]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[12]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[13]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[14]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[15]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[16]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[17]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[18]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[19]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[20]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[21]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[22]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[23]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[24]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[25]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[26]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[27]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[28]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[29]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[30]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[31]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[32]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[33]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[34]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[35]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[36]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[37]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[38]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[39]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[40]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[41]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[42]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[43]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[44]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[45]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[46]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[47]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[48]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[49]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[50]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[51]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[52]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[53]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[54]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[55]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[56]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[57]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[58]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[59]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[60]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[61]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[62]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_data_i[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 24 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[0]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[1]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[2]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[3]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[4]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[5]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[6]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[7]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[8]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[9]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[10]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[11]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[12]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[13]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[14]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[15]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[16]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[17]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[18]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[19]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[20]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[21]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[22]} {vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/o_slv_reg4_0[23]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 64 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[0]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[1]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[2]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[3]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[4]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[5]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[6]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[7]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[8]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[9]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[10]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[11]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[12]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[13]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[14]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[15]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[16]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[17]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[18]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[19]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[20]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[21]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[22]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[23]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[24]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[25]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[26]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[27]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[28]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[29]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[30]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[31]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[32]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[33]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[34]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[35]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[36]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[37]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[38]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[39]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[40]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[41]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[42]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[43]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[44]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[45]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[46]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[47]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[48]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[49]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[50]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[51]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[52]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[53]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[54]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[55]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[56]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[57]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[58]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[59]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[60]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[61]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[62]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_in_cmdin[63]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 62 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[0]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[1]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[2]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[3]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[4]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[5]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[6]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[7]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[8]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[9]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[10]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[11]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[12]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[13]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[14]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[15]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[16]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[17]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[18]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[19]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[20]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[21]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[22]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[23]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[24]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[25]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[26]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[27]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[28]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[29]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[30]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[31]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[32]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[33]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[34]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[35]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[36]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[37]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[38]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[39]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[40]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[41]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[42]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[43]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[44]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[45]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[46]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[47]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[48]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[49]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[50]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[51]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[52]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[53]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[54]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[55]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[56]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[57]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[58]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[59]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[60]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/cmd_out_cmdout[62]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_DAC_end]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list vc707_fmc216_viv_inst/sip_vc707_mac_engine_sgmii_0/mac_engine_inst/write_DAC_start]]
create_debug_core u_ila_1 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_1]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_1]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_1]
set_property C_DATA_DEPTH 2048 [get_debug_cores u_ila_1]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_1]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_1]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_1]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_1]
set_property port_width 1 [get_debug_ports u_ila_1/clk]
connect_debug_port u_ila_1/clk [get_nets [list vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/xcvr_wrapper_inst0/xcvr_fmc216_init_i/U0/gt_usrclk_source/GT7_RXUSRCLK2_OUT]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe0]
set_property port_width 16 [get_debug_ports u_ila_1/probe0]
connect_debug_port u_ila_1/probe0 [get_nets [list {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][0]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][1]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][2]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][3]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][4]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][5]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][6]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][7]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][8]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][9]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][10]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][11]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][12]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][13]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][14]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[0][15]}]]
create_debug_port u_ila_1 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_1/probe1]
set_property port_width 16 [get_debug_ports u_ila_1/probe1]
connect_debug_port u_ila_1/probe1 [get_nets [list {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][0]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][1]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][2]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][3]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][4]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][5]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][6]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][7]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][8]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][9]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][10]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][11]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][12]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][13]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][14]} {vc707_fmc216_viv_inst/sip_fmc216_8lane_0/fmc216_0/dac_data[4][15]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_1_GT7_RXUSRCLK2_OUT]
