// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:42:32 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/vivado
//               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_weight_mem_0_0/hardware_accelerator_weight_mem_0_0_stub.v}
// Design      : hardware_accelerator_weight_mem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "weight_mem,Vivado 2018.3" *)
module hardware_accelerator_weight_mem_0_0(clk, arestn, wr_enable, kernel_dimension, 
  wr_address, rd_address, counter, wr_data, matrix_b_dimension, rd_32bit_data, rd_288bit_data)
/* synthesis syn_black_box black_box_pad_pin="clk,arestn,wr_enable,kernel_dimension[7:0],wr_address[7:0],rd_address[7:0],counter[4:0],wr_data[31:0],matrix_b_dimension[7:0],rd_32bit_data[287:0],rd_288bit_data[287:0]" */;
  input clk;
  input arestn;
  input wr_enable;
  input [7:0]kernel_dimension;
  input [7:0]wr_address;
  input [7:0]rd_address;
  input [4:0]counter;
  input [31:0]wr_data;
  input [7:0]matrix_b_dimension;
  output [287:0]rd_32bit_data;
  output [287:0]rd_288bit_data;
endmodule
