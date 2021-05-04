#
# Constraints for System controller support logic
#
set_property PACKAGE_PIN K16 [get_ports PL_pin_K16]
set_property PACKAGE_PIN K19 [get_ports PL_pin_K19]
set_property PACKAGE_PIN K20 [get_ports PL_pin_K20]
set_property PACKAGE_PIN L16 [get_ports PL_pin_L16]
set_property PACKAGE_PIN M15 [get_ports PL_pin_M15]
set_property PACKAGE_PIN N15 [get_ports PL_pin_N15]
set_property PACKAGE_PIN N22 [get_ports PL_pin_N22]
set_property PACKAGE_PIN P16 [get_ports PL_pin_P16]
set_property PACKAGE_PIN P22 [get_ports PL_pin_P22]

#
# If Bank 34 is not 3.3V Powered need change the IOSTANDARD
#
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_P22]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_P16]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_N22]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_N15]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_M15]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_L16]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_K20]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_K19]
set_property IOSTANDARD LVCMOS33 [get_ports PL_pin_K16]



