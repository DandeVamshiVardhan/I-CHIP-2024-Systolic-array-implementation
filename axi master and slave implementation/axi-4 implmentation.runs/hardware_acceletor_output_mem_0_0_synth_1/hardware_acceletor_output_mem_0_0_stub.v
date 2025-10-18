// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 11 22:38:31 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_acceletor_output_mem_0_0_stub.v
// Design      : hardware_acceletor_output_mem_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "output_mem,Vivado 2018.3" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, arestn, wr_enable, wr_address, rd_address, 
  wr_data, rd_data)
/* synthesis syn_black_box black_box_pad_pin="clk,arestn,wr_enable,wr_address[7:0],rd_address[7:0],wr_data[31:0],rd_data[31:0]" */;
  input clk;
  input arestn;
  input wr_enable;
  input [7:0]wr_address;
  input [7:0]rd_address;
  input [31:0]wr_data;
  output [31:0]rd_data;
endmodule
