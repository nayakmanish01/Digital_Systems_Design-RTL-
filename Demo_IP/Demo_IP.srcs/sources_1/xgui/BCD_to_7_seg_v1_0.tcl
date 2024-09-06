# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "EIGHT" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIVE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FOUR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "NINE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ONE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEVEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SIX" -parent ${Page_0}
  ipgui::add_param $IPINST -name "THREE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TWO" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ZERO" -parent ${Page_0}


}

proc update_PARAM_VALUE.EIGHT { PARAM_VALUE.EIGHT } {
	# Procedure called to update EIGHT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.EIGHT { PARAM_VALUE.EIGHT } {
	# Procedure called to validate EIGHT
	return true
}

proc update_PARAM_VALUE.FIVE { PARAM_VALUE.FIVE } {
	# Procedure called to update FIVE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIVE { PARAM_VALUE.FIVE } {
	# Procedure called to validate FIVE
	return true
}

proc update_PARAM_VALUE.FOUR { PARAM_VALUE.FOUR } {
	# Procedure called to update FOUR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FOUR { PARAM_VALUE.FOUR } {
	# Procedure called to validate FOUR
	return true
}

proc update_PARAM_VALUE.NINE { PARAM_VALUE.NINE } {
	# Procedure called to update NINE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NINE { PARAM_VALUE.NINE } {
	# Procedure called to validate NINE
	return true
}

proc update_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to update ONE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ONE { PARAM_VALUE.ONE } {
	# Procedure called to validate ONE
	return true
}

proc update_PARAM_VALUE.SEVEN { PARAM_VALUE.SEVEN } {
	# Procedure called to update SEVEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SEVEN { PARAM_VALUE.SEVEN } {
	# Procedure called to validate SEVEN
	return true
}

proc update_PARAM_VALUE.SIX { PARAM_VALUE.SIX } {
	# Procedure called to update SIX when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SIX { PARAM_VALUE.SIX } {
	# Procedure called to validate SIX
	return true
}

proc update_PARAM_VALUE.THREE { PARAM_VALUE.THREE } {
	# Procedure called to update THREE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.THREE { PARAM_VALUE.THREE } {
	# Procedure called to validate THREE
	return true
}

proc update_PARAM_VALUE.TWO { PARAM_VALUE.TWO } {
	# Procedure called to update TWO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TWO { PARAM_VALUE.TWO } {
	# Procedure called to validate TWO
	return true
}

proc update_PARAM_VALUE.ZERO { PARAM_VALUE.ZERO } {
	# Procedure called to update ZERO when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ZERO { PARAM_VALUE.ZERO } {
	# Procedure called to validate ZERO
	return true
}


proc update_MODELPARAM_VALUE.ZERO { MODELPARAM_VALUE.ZERO PARAM_VALUE.ZERO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ZERO}] ${MODELPARAM_VALUE.ZERO}
}

proc update_MODELPARAM_VALUE.ONE { MODELPARAM_VALUE.ONE PARAM_VALUE.ONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ONE}] ${MODELPARAM_VALUE.ONE}
}

proc update_MODELPARAM_VALUE.TWO { MODELPARAM_VALUE.TWO PARAM_VALUE.TWO } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TWO}] ${MODELPARAM_VALUE.TWO}
}

proc update_MODELPARAM_VALUE.THREE { MODELPARAM_VALUE.THREE PARAM_VALUE.THREE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.THREE}] ${MODELPARAM_VALUE.THREE}
}

proc update_MODELPARAM_VALUE.FOUR { MODELPARAM_VALUE.FOUR PARAM_VALUE.FOUR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FOUR}] ${MODELPARAM_VALUE.FOUR}
}

proc update_MODELPARAM_VALUE.FIVE { MODELPARAM_VALUE.FIVE PARAM_VALUE.FIVE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIVE}] ${MODELPARAM_VALUE.FIVE}
}

proc update_MODELPARAM_VALUE.SIX { MODELPARAM_VALUE.SIX PARAM_VALUE.SIX } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SIX}] ${MODELPARAM_VALUE.SIX}
}

proc update_MODELPARAM_VALUE.SEVEN { MODELPARAM_VALUE.SEVEN PARAM_VALUE.SEVEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEVEN}] ${MODELPARAM_VALUE.SEVEN}
}

proc update_MODELPARAM_VALUE.EIGHT { MODELPARAM_VALUE.EIGHT PARAM_VALUE.EIGHT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.EIGHT}] ${MODELPARAM_VALUE.EIGHT}
}

proc update_MODELPARAM_VALUE.NINE { MODELPARAM_VALUE.NINE PARAM_VALUE.NINE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NINE}] ${MODELPARAM_VALUE.NINE}
}

