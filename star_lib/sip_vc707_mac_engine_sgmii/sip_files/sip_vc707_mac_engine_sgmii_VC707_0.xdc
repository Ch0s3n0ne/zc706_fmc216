#-------------------------------------------------------------------------------
## MAC Engine
#-------------------------------------------------------------------------------
# Master reset input
set_property PACKAGE_PIN AV40 [get_ports cpu_reset_0]
set_property IOSTANDARD LVCMOS18 [get_ports cpu_reset_0]
set_property SLEW SLOW [get_ports cpu_reset_0]
#----- Master clock input
set_property IOSTANDARD LVDS [get_ports sysclk_n_0]
set_property DIFF_TERM TRUE [get_ports sysclk_n_0]

set_property PACKAGE_PIN E19 [get_ports sysclk_p_0]
set_property IOSTANDARD LVDS [get_ports sysclk_p_0]
set_property DIFF_TERM TRUE [get_ports sysclk_p_0]


#----- Ethernet control interface
set_property PACKAGE_PIN AJ33 [get_ports phy_reset_l_0]
set_property IOSTANDARD LVCMOS18 [get_ports phy_reset_l_0]
set_property SLEW SLOW [get_ports phy_reset_l_0]

set_property PACKAGE_PIN AH31 [get_ports phy_mdc_0]
set_property IOSTANDARD LVCMOS18 [get_ports phy_mdc_0]
set_property SLEW SLOW [get_ports phy_mdc_0]

set_property PACKAGE_PIN AK33 [get_ports phy_mdio_0]
set_property IOSTANDARD LVCMOS18 [get_ports phy_mdio_0]
set_property SLEW SLOW [get_ports phy_mdio_0]

#----- SGMII interface to gigabit phy
set_property PACKAGE_PIN AH8 [get_ports sgmii_refclk_p_0]
create_clock -period 8.000 -name sgmii_refclk_p_0 [get_ports sgmii_refclk_p_0]

#----- SGMII interface to gigabit phy
#set_property DIFF_TERM TRUE [get_ports sgmii_tx_n_0]

#set_property DIFF_TERM TRUE [get_ports sgmii_rx_p_0]

#set_property DIFF_TERM TRUE [get_ports sgmii_rx_n_0]

set_property PACKAGE_PIN AM8 [get_ports sgmii_rx_p_0]
#set_property DIFF_TERM TRUE [get_ports sgmii_rx_p_0]

set_property PACKAGE_PIN AM39 [get_ports {gpio_led_0[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[0]}]
set_property SLEW SLOW [get_ports {gpio_led_0[0]}]

set_property PACKAGE_PIN AN39 [get_ports {gpio_led_0[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[1]}]
set_property SLEW SLOW [get_ports {gpio_led_0[1]}]

set_property PACKAGE_PIN AR37 [get_ports {gpio_led_0[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[2]}]
set_property SLEW SLOW [get_ports {gpio_led_0[2]}]

set_property PACKAGE_PIN AT37 [get_ports {gpio_led_0[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[3]}]
set_property SLEW SLOW [get_ports {gpio_led_0[3]}]

#set_property PACKAGE_PIN AR35 [get_ports {gpio_led_0[4]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[4]}]
#set_property SLEW SLOW [get_ports {gpio_led_0[4]}]

#set_property PACKAGE_PIN AP41 [get_ports {gpio_led_0[5]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[5]}]
#set_property SLEW SLOW [get_ports {gpio_led_0[5]}]

#set_property PACKAGE_PIN AP42 [get_ports {gpio_led_0[6]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[6]}]
#set_property SLEW SLOW [get_ports {gpio_led_0[6]}]

#set_property PACKAGE_PIN AU39 [get_ports {gpio_led_0[7]}]
#set_property IOSTANDARD LVCMOS18 [get_ports {gpio_led_0[7]}]
#set_property SLEW SLOW [get_ports {gpio_led_0[7]}]


set_false_path -from [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/i_rst_gen/reset2_o_reg}] -to [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/reset2_o_d_reg}]
set_false_path -from [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/sw_rst_reg}] -to [get_cells -hierarchical -filter {NAME =~ */mac_engine_inst/sw_rst_d_reg}]

#set_false_path -from [all_fanout -endpoints_only -only_cells -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk125}]] -to [all_fanout -endpoints_only -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk200}]]
#set_false_path -from [all_fanout -endpoints_only -only_cells -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk200}]] -to [all_fanout -endpoints_only -flat -from [get_nets * -hierarchical -filter {NAME =~ */clk125}]]

############################################################################################################
# VC707 Ethernet Phy timing constraints
############################################################################################################

create_clock -period 20.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_clk50 -waveform {0.000 10.000}
create_clock -period 8.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_clk125 -waveform {0.000 4.000}
create_clock -period 320.000 -name VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf -waveform {0.000 160.000}
# INPUT DELAY
set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 3.000 [get_ports cpu_reset_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay 4.500 [get_ports cpu_reset_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 6.500 [get_ports phy_mdio_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 11.500 [get_ports phy_mdio_0]

# OUTPUT DELAY
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 0.900 [get_ports phy_reset_l_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay -10.000 [get_ports phy_reset_l_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 1.000 [get_ports phy_mdc_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 6.000 [get_ports phy_mdc_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -min -add_delay 0.400 [get_ports phy_mdio_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk50] -max -add_delay 6.000 [get_ports phy_mdio_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -min -add_delay 0.400 [get_ports {gpio_led_0[*]}]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_clk125] -max -add_delay -10.000 [get_ports {gpio_led_0[*]}]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -min -add_delay -5.000 [get_ports phy_mdc_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -max -add_delay 1.000 [get_ports phy_mdc_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -min -add_delay -5.000 [get_ports phy_mdio_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_vc707_mac_engine_sgmii_sclk_prebuf] -max -add_delay 0.400 [get_ports phy_mdio_0]

set_false_path -from [get_pins sip_vc707_mac_engine_sgmii_0/mac_engine_inst/i_rst_gen/reset2_o_reg/C] -to [get_pins sip_vc707_mac_engine_sgmii_0/mac_engine_inst/reset2_o_int_reg/D]