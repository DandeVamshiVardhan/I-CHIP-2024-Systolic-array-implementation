// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:42:07 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/vivado
//               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_mux_0_0/hardware_accelerator_mux_0_0_stub.v}
// Design      : hardware_accelerator_mux_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mux,Vivado 2018.3" *)
module hardware_accelerator_mux_0_0(in1, in2, select_in, mux_out)
/* synthesis syn_black_box black_box_pad_pin="in1[287:0],in2[287:0],select_in,mux_out[287:0]" */;
  input [287:0]in1;
  input [287:0]in2;
  input select_in;
  output [287:0]mux_out;
endmodule
