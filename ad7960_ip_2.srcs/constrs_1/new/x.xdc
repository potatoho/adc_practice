################################################################################
## AD7960 - No-Echo Clock Mode (EN=0100)
################################################################################

## LVDS Data Input (ADC°ÊFPGA)
set_property PACKAGE_PIN L20 [get_ports adc_d_p]
set_property PACKAGE_PIN K20 [get_ports adc_d_n]
set_property IOSTANDARD LVDS [get_ports {adc_d_p adc_d_n}]
set_property DIFF_TERM TRUE [get_ports {adc_d_p adc_d_n}]

## LVDS Data Clock Out (DCO°æ) - ADC°ÊFPGA
set_property PACKAGE_PIN E15 [get_ports adc_dco_p]
set_property PACKAGE_PIN E14 [get_ports adc_dco_n]
set_property IOSTANDARD LVDS [get_ports {adc_dco_p adc_dco_n}]
set_property DIFF_TERM TRUE [get_ports {adc_dco_p adc_dco_n}]
create_clock -name adc_dco_clk -period 3.333 [get_ports adc_dco_p]

set_input_delay -clock adc_dco_clk -max 2.5 [get_ports {adc_d_p adc_d_n}]
set_input_delay -clock adc_dco_clk -min 0.9 [get_ports {adc_d_p adc_d_n}]

## Conversion Clock (CLK°æ) - FPGA°ÊADC
set_property PACKAGE_PIN F17 [get_ports adc_clk_p]
set_property PACKAGE_PIN F16 [get_ports adc_clk_n]
set_property IOSTANDARD LVDS [get_ports {adc_clk_p adc_clk_n}]

## Conversion Start (CNV°æ) - FPGA°ÊADC
set_property PACKAGE_PIN H18 [get_ports adc_cnv_p]
set_property PACKAGE_PIN H17 [get_ports adc_cnv_n]
set_property IOSTANDARD LVDS [get_ports {adc_cnv_p adc_cnv_n}]

## Control Pins (EN[3:0]) - LVCMOS18 FPGA°ÊADC
set_property PACKAGE_PIN K19 [get_ports en[0]]
set_property PACKAGE_PIN K18 [get_ports en[1]]
set_property PACKAGE_PIN L17 [get_ports en[2]]
set_property PACKAGE_PIN L16 [get_ports en[3]]
set_property IOSTANDARD LVCMOS18 [get_ports {en[0] en[1] en[2] en[3]}]
set_property DRIVE 4 [get_ports {en[0] en[1] en[2] en[3]}]

## ZCU104 System Clock 125 MHz (diff)
set_property PACKAGE_PIN F23 [get_ports clk_125_p]
set_property PACKAGE_PIN E23 [get_ports clk_125_n]
set_property IOSTANDARD LVDS [get_ports {clk_125_p clk_125_n}]
create_clock -name clk_125 -period 8.0 [get_ports clk_125_p]
################################################################################

set_property BITSTREAM.CONFIG.UNUSEDPIN Pullnone [current_design]

set_property PULLUP true [get_ports pg_c2m]