// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:42:15 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/vivado
//               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_controller_0_0/hardware_accelerator_controller_0_0_stub.v}
// Design      : hardware_accelerator_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "controller,Vivado 2018.3" *)
module hardware_accelerator_controller_0_0(clk, arestn, ended_reading_cnvtn_data, 
  image_dimension, kernel_dimension, ended_reading_mltn_data, matrix_a_dimension, 
  matrix_b_dimension, rst_module, cvltn_or_mltpn, vir_wr_enable, ou_wr_enable, 
  start_cnvtn_writing_fsm, start_mltpn_writing_fsm, in_mem_rd_addr, wt_mem_rd_addr, 
  vr_mem_wr_addr, ou_mem_wr_addr, ou_mem_rd_addr, rd_address)
/* synthesis syn_black_box black_box_pad_pin="clk,arestn,ended_reading_cnvtn_data,image_dimension[7:0],kernel_dimension[7:0],ended_reading_mltn_data,matrix_a_dimension[7:0],matrix_b_dimension[7:0],rst_module,cvltn_or_mltpn,vir_wr_enable,ou_wr_enable,start_cnvtn_writing_fsm,start_mltpn_writing_fsm,in_mem_rd_addr[7:0],wt_mem_rd_addr[7:0],vr_mem_wr_addr[7:0],ou_mem_wr_addr[7:0],ou_mem_rd_addr[7:0],rd_address[4:0]" */;
  input clk;
  input arestn;
  input ended_reading_cnvtn_data;
  input [7:0]image_dimension;
  input [7:0]kernel_dimension;
  input ended_reading_mltn_data;
  input [7:0]matrix_a_dimension;
  input [7:0]matrix_b_dimension;
  output rst_module;
  output cvltn_or_mltpn;
  output vir_wr_enable;
  output ou_wr_enable;
  output start_cnvtn_writing_fsm;
  output start_mltpn_writing_fsm;
  output [7:0]in_mem_rd_addr;
  output [7:0]wt_mem_rd_addr;
  output [7:0]vr_mem_wr_addr;
  output [7:0]ou_mem_wr_addr;
  output [7:0]ou_mem_rd_addr;
  output [4:0]rd_address;
endmodule
