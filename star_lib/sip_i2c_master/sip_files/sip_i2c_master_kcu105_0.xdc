################################################################################
# I2C Location assignments (KCU105 pinout, connects to FMC connectors)
################################################################################
set_property PACKAGE_PIN J24 [get_ports "i2c_scl_0"]
set_property PACKAGE_PIN J25 [get_ports "i2c_sda_0"]

set_property IOSTANDARD LVCMOS18 [get_ports "i2c_scl_0"]
set_property IOSTANDARD LVCMOS18 [get_ports "i2c_sda_0"]
################################################################################
