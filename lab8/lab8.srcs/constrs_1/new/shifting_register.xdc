set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T3 PULLDOWN true} [get_ports CR_]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U3 PULLDOWN true} [get_ports S0]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T4 PULLDOWN true} [get_ports S1]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V3 PULLDOWN true} [get_ports CP]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN V4 PULLDOWN true} [get_ports SR]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN W4 PULLDOWN true} [get_ports SL]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y4 PULLDOWN true} [get_ports D[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y6 PULLDOWN true} [get_ports D[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN W7 PULLDOWN true} [get_ports D[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y8 PULLDOWN true} [get_ports D[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN Y7 PULLDOWN true} [get_ports D[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN T1 PULLDOWN true} [get_ports D[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U1 PULLDOWN true} [get_ports D[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN U2 PULLDOWN true} [get_ports D[7]]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets CP]

set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN R1} [get_ports Q[0]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN P2} [get_ports Q[1]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN P1} [get_ports Q[2]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN N2} [get_ports Q[3]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN M1} [get_ports Q[4]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN M2} [get_ports Q[5]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN L1} [get_ports Q[6]]
set_property -dict {IOSTANDARD LVCMOS18 PACKAGE_PIN J2} [get_ports Q[7]]
