################################################################################
# I2C Location assignments (FMC pinout)
################################################################################
set_property PACKAGE_PIN AR33 [get_ports i2c_scl_0]
set_property IOSTANDARD LVCMOS15 [get_ports i2c_scl_0]
set_property PULLUP true [get_ports i2c_scl_0]

set_property PACKAGE_PIN AT33 [get_ports i2c_sda_0]
set_property IOSTANDARD LVCMOS15 [get_ports i2c_sda_0]
set_property PULLUP true [get_ports i2c_sda_0]

################################################################################