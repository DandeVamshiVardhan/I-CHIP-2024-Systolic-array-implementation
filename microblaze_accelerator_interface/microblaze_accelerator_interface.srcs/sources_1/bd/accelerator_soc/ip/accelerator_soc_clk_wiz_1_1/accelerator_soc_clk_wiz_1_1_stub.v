// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 12 11:05:58 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top accelerator_soc_clk_wiz_1_1 -prefix
//               accelerator_soc_clk_wiz_1_1_ accelerator_soc_clk_wiz_1_1_stub.v
// Design      : accelerator_soc_clk_wiz_1_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module accelerator_soc_clk_wiz_1_1(clk_out1, reset, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,reset,locked,clk_in1" */;
  output clk_out1;
  input reset;
  output locked;
  input clk_in1;
endmodule
