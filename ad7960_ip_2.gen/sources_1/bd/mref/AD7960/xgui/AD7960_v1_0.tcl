# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADC_CYC_CNT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FPGA_CLOCK_FREQ" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SERIAL_DONE_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SERIAL_IDLE_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SERIAL_READ_STATE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TCYC" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADC_CYC_CNT { PARAM_VALUE.ADC_CYC_CNT } {
	# Procedure called to update ADC_CYC_CNT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADC_CYC_CNT { PARAM_VALUE.ADC_CYC_CNT } {
	# Procedure called to validate ADC_CYC_CNT
	return true
}

proc update_PARAM_VALUE.FPGA_CLOCK_FREQ { PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to update FPGA_CLOCK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FPGA_CLOCK_FREQ { PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to validate FPGA_CLOCK_FREQ
	return true
}

proc update_PARAM_VALUE.SERIAL_DONE_STATE { PARAM_VALUE.SERIAL_DONE_STATE } {
	# Procedure called to update SERIAL_DONE_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SERIAL_DONE_STATE { PARAM_VALUE.SERIAL_DONE_STATE } {
	# Procedure called to validate SERIAL_DONE_STATE
	return true
}

proc update_PARAM_VALUE.SERIAL_IDLE_STATE { PARAM_VALUE.SERIAL_IDLE_STATE } {
	# Procedure called to update SERIAL_IDLE_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SERIAL_IDLE_STATE { PARAM_VALUE.SERIAL_IDLE_STATE } {
	# Procedure called to validate SERIAL_IDLE_STATE
	return true
}

proc update_PARAM_VALUE.SERIAL_READ_STATE { PARAM_VALUE.SERIAL_READ_STATE } {
	# Procedure called to update SERIAL_READ_STATE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SERIAL_READ_STATE { PARAM_VALUE.SERIAL_READ_STATE } {
	# Procedure called to validate SERIAL_READ_STATE
	return true
}

proc update_PARAM_VALUE.TCYC { PARAM_VALUE.TCYC } {
	# Procedure called to update TCYC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TCYC { PARAM_VALUE.TCYC } {
	# Procedure called to validate TCYC
	return true
}


proc update_MODELPARAM_VALUE.FPGA_CLOCK_FREQ { MODELPARAM_VALUE.FPGA_CLOCK_FREQ PARAM_VALUE.FPGA_CLOCK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FPGA_CLOCK_FREQ}] ${MODELPARAM_VALUE.FPGA_CLOCK_FREQ}
}

proc update_MODELPARAM_VALUE.TCYC { MODELPARAM_VALUE.TCYC PARAM_VALUE.TCYC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TCYC}] ${MODELPARAM_VALUE.TCYC}
}

proc update_MODELPARAM_VALUE.ADC_CYC_CNT { MODELPARAM_VALUE.ADC_CYC_CNT PARAM_VALUE.ADC_CYC_CNT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADC_CYC_CNT}] ${MODELPARAM_VALUE.ADC_CYC_CNT}
}

proc update_MODELPARAM_VALUE.SERIAL_IDLE_STATE { MODELPARAM_VALUE.SERIAL_IDLE_STATE PARAM_VALUE.SERIAL_IDLE_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SERIAL_IDLE_STATE}] ${MODELPARAM_VALUE.SERIAL_IDLE_STATE}
}

proc update_MODELPARAM_VALUE.SERIAL_READ_STATE { MODELPARAM_VALUE.SERIAL_READ_STATE PARAM_VALUE.SERIAL_READ_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SERIAL_READ_STATE}] ${MODELPARAM_VALUE.SERIAL_READ_STATE}
}

proc update_MODELPARAM_VALUE.SERIAL_DONE_STATE { MODELPARAM_VALUE.SERIAL_DONE_STATE PARAM_VALUE.SERIAL_DONE_STATE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SERIAL_DONE_STATE}] ${MODELPARAM_VALUE.SERIAL_DONE_STATE}
}

