// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 11 22:38:27 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_acceletor_controller_0_0_stub.v
// Design      : hardware_acceletor_controller_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "controller,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, arestn, reading_ended, image_dimension, 
  kernel_dimension, vir_wr_enable, start_wr_fsm, ou_wr_enable, in_mem_rd_addr, 
  wt_mem_rd_addr, vr_mem_wr_addr, ou_mem_rd_addr, ou_mem_wr_addr, rd_address)
/* synthesis syn_black_box black_box_pad_pin="clk,arestn,reading_ended,image_dimension[7:0],kernel_dimension[7:0],vir_wr_enable,start_wr_fsm,ou_wr_enable,in_mem_rd_addr[7:0],wt_mem_rd_addr[7:0],vr_mem_wr_addr[7:0],ou_mem_rd_addr[7:0],ou_mem_wr_addr[7:0],rd_address[4:0]" */;
  input clk;
  input arestn;
  input reading_ended;
  input [7:0]image_dimension;
  input [7:0]kernel_dimension;
  output vir_wr_enable;
  output start_wr_fsm;
  output ou_wr_enable;
  output [7:0]in_mem_rd_addr;
  output [7:0]wt_mem_rd_addr;
  output [7:0]vr_mem_wr_addr;
  output [7:0]ou_mem_rd_addr;
  output [7:0]ou_mem_wr_addr;
  output [4:0]rd_address;
endmodule
