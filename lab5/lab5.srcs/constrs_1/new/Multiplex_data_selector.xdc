set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T3 PULLDOWN true} [get_ports S[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U3 PULLDOWN true} [get_ports S[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T4 PULLDOWN true} [get_ports S[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V3 PULLDOWN true} [get_ports A]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V4 PULLDOWN true} [get_ports B]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN W4 PULLDOWN true} [get_ports C]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y4 PULLDOWN true} [get_ports D]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y6 PULLDOWN true} [get_ports EN_]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R1} [get_ports Y]
