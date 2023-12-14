################################################################################
# I2C Location assignments (sFMC820 pinout, connects to FMC connectors)
################################################################################
set_property PACKAGE_PIN AE18 [get_ports i2c_scl_0]
set_property IOSTANDARD SSTL135 [get_ports i2c_scl_0]
set_property PULLUP true [get_ports i2c_scl_0]

set_property PACKAGE_PIN AF18 [get_ports i2c_sda_0]
set_property IOSTANDARD SSTL135 [get_ports i2c_sda_0]
set_property PULLUP true [get_ports i2c_sda_0]
