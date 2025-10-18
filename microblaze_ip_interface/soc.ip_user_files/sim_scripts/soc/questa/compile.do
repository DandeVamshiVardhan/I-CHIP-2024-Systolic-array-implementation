vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/microblaze_v11_0_0
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/mdm_v3_2_15
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_18
vlib questa_lib/msim/fifo_generator_v13_2_3
vlib questa_lib/msim/axi_data_fifo_v2_1_17
vlib questa_lib/msim/axi_crossbar_v2_1_19
vlib questa_lib/msim/blk_mem_gen_v8_3_6
vlib questa_lib/msim/axi_bram_ctrl_v4_1_0
vlib questa_lib/msim/blk_mem_gen_v8_4_2
vlib questa_lib/msim/lib_pkg_v1_0_2
vlib questa_lib/msim/lib_srl_fifo_v1_0_2
vlib questa_lib/msim/axi_uartlite_v2_0_22
vlib questa_lib/msim/axi_intc_v4_1_12
vlib questa_lib/msim/xlconcat_v2_1_1
vlib questa_lib/msim/lmb_v10_v3_0_9
vlib questa_lib/msim/lmb_bram_if_cntlr_v4_0_15

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap microblaze_v11_0_0 questa_lib/msim/microblaze_v11_0_0
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_15 questa_lib/msim/mdm_v3_2_15
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 questa_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 questa_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 questa_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 questa_lib/msim/axi_crossbar_v2_1_19
vmap blk_mem_gen_v8_3_6 questa_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 questa_lib/msim/axi_bram_ctrl_v4_1_0
vmap blk_mem_gen_v8_4_2 questa_lib/msim/blk_mem_gen_v8_4_2
vmap lib_pkg_v1_0_2 questa_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 questa_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 questa_lib/msim/axi_uartlite_v2_0_22
vmap axi_intc_v4_1_12 questa_lib/msim/axi_intc_v4_1_12
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1
vmap lmb_v10_v3_0_9 questa_lib/msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_15 questa_lib/msim/lmb_bram_if_cntlr_v4_0_15

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v11_0_0 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_microblaze_0_1/sim/soc_microblaze_0_1.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_15 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_mdm_1_2/sim/soc_mdm_1_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2_clk_wiz.v" \
"../../../bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_rst_clk_wiz_1_100M_2/sim/soc_rst_clk_wiz_1_100M_2.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../bd/soc/ip/soc_xbar_12/sim/soc_xbar_12.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_controller_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_systolic_array_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_axi_slave_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_input_mem_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_output_mem_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_vir_input_mem_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_weight_mem_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_and_gate_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_axi_master_0_1.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_mux_0_0.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator_mux_1_0.v" \
"../../../bd/soc/ipshared/e5fb/src/controller.v" \
"../../../bd/soc/ipshared/e5fb/src/processing_element.v" \
"../../../bd/soc/ipshared/e5fb/src/systolic_array.v" \
"../../../bd/soc/ipshared/e5fb/src/axi_slave.v" \
"../../../bd/soc/ipshared/e5fb/src/input_mem.v" \
"../../../bd/soc/ipshared/e5fb/src/output_mem.v" \
"../../../bd/soc/ipshared/e5fb/src/vir_input_mem.v" \
"../../../bd/soc/ipshared/e5fb/src/weight_mem.v" \
"../../../bd/soc/ipshared/e5fb/src/and_gate.v" \
"../../../bd/soc/ipshared/e5fb/src/axi-master.v" \
"../../../bd/soc/ipshared/e5fb/src/mux.v" \
"../../../bd/soc/ipshared/e5fb/sim/hardware_accelerator.v" \
"../../../bd/soc/ipshared/e5fb/src/hardware_accelerator_wrapper.v" \
"../../../bd/soc/ip/soc_hardware_accelerator_0_6/sim/soc_hardware_accelerator_0_6.v" \
"../../../bd/soc/ip/soc_xbar_26/sim/soc_xbar_26.v" \

vlog -work blk_mem_gen_v8_3_6 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_axi_bram_ctrl_0_8/sim/soc_axi_bram_ctrl_0_8.vhd" \

vlog -work blk_mem_gen_v8_4_2 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../bd/soc/ip/soc_axi_bram_ctrl_0_bram_7/sim/soc_axi_bram_ctrl_0_bram_7.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_axi_uartlite_0_4/sim/soc_axi_uartlite_0_4.vhd" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_axi_intc_0_1/sim/soc_axi_intc_0_1.vhd" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../bd/soc/ip/soc_xlconcat_0_0/sim/soc_xlconcat_0_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_dlmb_v10_2/sim/soc_dlmb_v10_2.vhd" \
"../../../bd/soc/ip/soc_ilmb_v10_2/sim/soc_ilmb_v10_2.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_15 -64 -93 \
"../../../../soc.srcs/sources_1/bd/soc/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/soc/ip/soc_dlmb_bram_if_cntlr_2/sim/soc_dlmb_bram_if_cntlr_2.vhd" \
"../../../bd/soc/ip/soc_ilmb_bram_if_cntlr_2/sim/soc_ilmb_bram_if_cntlr_2.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/85a3" "+incdir+../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl" \
"../../../bd/soc/ip/soc_lmb_bram_2/sim/soc_lmb_bram_2.v" \
"../../../bd/soc/sim/soc.v" \

vlog -work xil_defaultlib \
"glbl.v"

