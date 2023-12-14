################################################################################
# I2C Location assignments (KC705 pinout, connects to FMC connectors)
################################################################################
set_property PACKAGE_PIN K21 [get_ports "i2c_scl_0"]
set_property PACKAGE_PIN L21 [get_ports "i2c_sda_0"]

set_property IOSTANDARD LVCMOS25 [get_ports "i2c_scl_0"]
set_property IOSTANDARD LVCMOS25 [get_ports "i2c_sda_0"]
################################################################################
