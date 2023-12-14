################################################################################
# I2C Location assignments (FMC pinout)
################################################################################
set_property PACKAGE_PIN AJ42 [get_ports i2c_scl_0]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_scl_0]
set_property PULLUP true [get_ports i2c_scl_0]

set_property PACKAGE_PIN AK42 [get_ports i2c_sda_0]
set_property IOSTANDARD LVCMOS18 [get_ports i2c_sda_0]
set_property PULLUP true [get_ports i2c_sda_0]

################################################################################
#I2C master timing constraints
################################################################################

create_clock -period 8.000 -name VIRTUAL_sip_i2cmaster_clk125 -waveform {0.000 4.000}
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay -0.500 [get_ports i2c_scl_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay -10.000 [get_ports i2c_scl_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay -0.500 [get_ports i2c_sda_0]
set_output_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay -10.000 [get_ports i2c_sda_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay 10.000 [get_ports i2c_scl_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay 4.500 [get_ports i2c_scl_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -min -add_delay 10.000 [get_ports i2c_sda_0]
set_input_delay -clock [get_clocks VIRTUAL_sip_i2cmaster_clk125] -max -add_delay 4.500 [get_ports i2c_sda_0]