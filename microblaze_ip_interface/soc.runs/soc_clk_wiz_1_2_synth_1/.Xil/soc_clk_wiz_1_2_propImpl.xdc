set_property SRC_FILE_INFO {cfile:{e:/vivado files/I_CHIP_2024/microblaze_ip_interface/soc.srcs/sources_1/bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2.xdc} rfile:../../../soc.srcs/sources_1/bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
