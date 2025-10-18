// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:32:15 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/vivado
//               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_axi_master_0_1/hardware_accelerator_axi_master_0_1_stub.v}
// Design      : hardware_accelerator_axi_master_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_master,Vivado 2018.3" *)
module hardware_accelerator_axi_master_0_1(start_convolution, image_address, 
  image_dimension, kernel_address, kernel_dimension, ended_convolution, 
  start_multiplication, matrix_a_address, matrix_a_dimension, matrix_b_address, 
  matrix_b_dimension, ended_multiplication, output_memory_data, start_cnvtn_writing_fsm, 
  start_mltpn_writing_fsm, input_memory_address, weight_memory_address, 
  output_memory_address, capture_in_data, capture_wi_data, ended_reading_cnvtn_data, 
  ended_reading_mltn_data, rd_data, M_AXI_ACLK, M_AXI_ARESETN, M_AXI_AWADDR, M_AXI_AWPROT, 
  M_AXI_AWVALID, M_AXI_AWREADY, M_AXI_WDATA, M_AXI_WSTRB, M_AXI_WVALID, M_AXI_WREADY, 
  M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, M_AXI_ARADDR, M_AXI_ARPROT, M_AXI_ARVALID, 
  M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID, M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="start_convolution,image_address[31:0],image_dimension[7:0],kernel_address[31:0],kernel_dimension[7:0],ended_convolution,start_multiplication,matrix_a_address[31:0],matrix_a_dimension[7:0],matrix_b_address[31:0],matrix_b_dimension[7:0],ended_multiplication,output_memory_data[31:0],start_cnvtn_writing_fsm,start_mltpn_writing_fsm,input_memory_address[7:0],weight_memory_address[7:0],output_memory_address[7:0],capture_in_data,capture_wi_data,ended_reading_cnvtn_data,ended_reading_mltn_data,rd_data[31:0],M_AXI_ACLK,M_AXI_ARESETN,M_AXI_AWADDR[31:0],M_AXI_AWPROT[2:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARPROT[2:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY" */;
  input start_convolution;
  input [31:0]image_address;
  input [7:0]image_dimension;
  input [31:0]kernel_address;
  input [7:0]kernel_dimension;
  output ended_convolution;
  input start_multiplication;
  input [31:0]matrix_a_address;
  input [7:0]matrix_a_dimension;
  input [31:0]matrix_b_address;
  input [7:0]matrix_b_dimension;
  output ended_multiplication;
  input [31:0]output_memory_data;
  input start_cnvtn_writing_fsm;
  input start_mltpn_writing_fsm;
  output [7:0]input_memory_address;
  output [7:0]weight_memory_address;
  output [7:0]output_memory_address;
  output capture_in_data;
  output capture_wi_data;
  output ended_reading_cnvtn_data;
  output ended_reading_mltn_data;
  output [31:0]rd_data;
  input M_AXI_ACLK;
  input M_AXI_ARESETN;
  output [31:0]M_AXI_AWADDR;
  output [2:0]M_AXI_AWPROT;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [31:0]M_AXI_WDATA;
  output [3:0]M_AXI_WSTRB;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input [1:0]M_AXI_BRESP;
  input M_AXI_BVALID;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output [2:0]M_AXI_ARPROT;
  output M_AXI_ARVALID;
  input M_AXI_ARREADY;
  input [31:0]M_AXI_RDATA;
  input [1:0]M_AXI_RRESP;
  input M_AXI_RVALID;
  output M_AXI_RREADY;
endmodule
