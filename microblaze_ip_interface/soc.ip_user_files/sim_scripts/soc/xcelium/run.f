-makelib xcelium_lib/xil_defaultlib -sv \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "F:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/microblaze_v11_0_0 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/2ed1/hdl/microblaze_v11_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_microblaze_0_1/sim/soc_microblaze_0_1.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/mdm_v3_2_15 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/41ef/hdl/mdm_v3_2_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_mdm_1_2/sim/soc_mdm_1_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2_clk_wiz.v" \
  "../../../bd/soc/ip/soc_clk_wiz_1_2/soc_clk_wiz_1_2.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_rst_clk_wiz_1_100M_2/sim/soc_rst_clk_wiz_1_100M_2.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
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
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_3_6 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_axi_bram_ctrl_0_8/sim/soc_axi_bram_ctrl_0_8.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_axi_bram_ctrl_0_bram_7/sim/soc_axi_bram_ctrl_0_bram_7.v" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_uartlite_v2_0_22 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_axi_uartlite_0_4/sim/soc_axi_uartlite_0_4.vhd" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_12 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_axi_intc_0_1/sim/soc_axi_intc_0_1.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_1 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_xlconcat_0_0/sim/soc_xlconcat_0_0.v" \
-endlib
-makelib xcelium_lib/lmb_v10_v3_0_9 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_dlmb_v10_2/sim/soc_dlmb_v10_2.vhd" \
  "../../../bd/soc/ip/soc_ilmb_v10_2/sim/soc_ilmb_v10_2.vhd" \
-endlib
-makelib xcelium_lib/lmb_bram_if_cntlr_v4_0_15 \
  "../../../../soc.srcs/sources_1/bd/soc/ipshared/92fd/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_dlmb_bram_if_cntlr_2/sim/soc_dlmb_bram_if_cntlr_2.vhd" \
  "../../../bd/soc/ip/soc_ilmb_bram_if_cntlr_2/sim/soc_ilmb_bram_if_cntlr_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/soc/ip/soc_lmb_bram_2/sim/soc_lmb_bram_2.v" \
  "../../../bd/soc/sim/soc.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

