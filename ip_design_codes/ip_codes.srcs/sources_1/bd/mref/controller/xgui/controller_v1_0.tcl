# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IN_PRCSS" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IN_PRSS2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "RD_IN_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_WR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "START_WR2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WT_IN_OUT_ME2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "WT_IN_OUT_MEM" -parent ${Page_0}


}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.IN_PRCSS { PARAM_VALUE.IN_PRCSS } {
	# Procedure called to update IN_PRCSS when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_PRCSS { PARAM_VALUE.IN_PRCSS } {
	# Procedure called to validate IN_PRCSS
	return true
}

proc update_PARAM_VALUE.IN_PRSS2 { PARAM_VALUE.IN_PRSS2 } {
	# Procedure called to update IN_PRSS2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_PRSS2 { PARAM_VALUE.IN_PRSS2 } {
	# Procedure called to validate IN_PRSS2
	return true
}

proc update_PARAM_VALUE.RD_IN_DATA { PARAM_VALUE.RD_IN_DATA } {
	# Procedure called to update RD_IN_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.RD_IN_DATA { PARAM_VALUE.RD_IN_DATA } {
	# Procedure called to validate RD_IN_DATA
	return true
}

proc update_PARAM_VALUE.START_WR { PARAM_VALUE.START_WR } {
	# Procedure called to update START_WR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_WR { PARAM_VALUE.START_WR } {
	# Procedure called to validate START_WR
	return true
}

proc update_PARAM_VALUE.START_WR2 { PARAM_VALUE.START_WR2 } {
	# Procedure called to update START_WR2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.START_WR2 { PARAM_VALUE.START_WR2 } {
	# Procedure called to validate START_WR2
	return true
}

proc update_PARAM_VALUE.WT_IN_OUT_ME2 { PARAM_VALUE.WT_IN_OUT_ME2 } {
	# Procedure called to update WT_IN_OUT_ME2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WT_IN_OUT_ME2 { PARAM_VALUE.WT_IN_OUT_ME2 } {
	# Procedure called to validate WT_IN_OUT_ME2
	return true
}

proc update_PARAM_VALUE.WT_IN_OUT_MEM { PARAM_VALUE.WT_IN_OUT_MEM } {
	# Procedure called to update WT_IN_OUT_MEM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.WT_IN_OUT_MEM { PARAM_VALUE.WT_IN_OUT_MEM } {
	# Procedure called to validate WT_IN_OUT_MEM
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.RD_IN_DATA { MODELPARAM_VALUE.RD_IN_DATA PARAM_VALUE.RD_IN_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.RD_IN_DATA}] ${MODELPARAM_VALUE.RD_IN_DATA}
}

proc update_MODELPARAM_VALUE.IN_PRCSS { MODELPARAM_VALUE.IN_PRCSS PARAM_VALUE.IN_PRCSS } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_PRCSS}] ${MODELPARAM_VALUE.IN_PRCSS}
}

proc update_MODELPARAM_VALUE.WT_IN_OUT_MEM { MODELPARAM_VALUE.WT_IN_OUT_MEM PARAM_VALUE.WT_IN_OUT_MEM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WT_IN_OUT_MEM}] ${MODELPARAM_VALUE.WT_IN_OUT_MEM}
}

proc update_MODELPARAM_VALUE.START_WR { MODELPARAM_VALUE.START_WR PARAM_VALUE.START_WR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_WR}] ${MODELPARAM_VALUE.START_WR}
}

proc update_MODELPARAM_VALUE.IN_PRSS2 { MODELPARAM_VALUE.IN_PRSS2 PARAM_VALUE.IN_PRSS2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_PRSS2}] ${MODELPARAM_VALUE.IN_PRSS2}
}

proc update_MODELPARAM_VALUE.WT_IN_OUT_ME2 { MODELPARAM_VALUE.WT_IN_OUT_ME2 PARAM_VALUE.WT_IN_OUT_ME2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.WT_IN_OUT_ME2}] ${MODELPARAM_VALUE.WT_IN_OUT_ME2}
}

proc update_MODELPARAM_VALUE.START_WR2 { MODELPARAM_VALUE.START_WR2 PARAM_VALUE.START_WR2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.START_WR2}] ${MODELPARAM_VALUE.START_WR2}
}

