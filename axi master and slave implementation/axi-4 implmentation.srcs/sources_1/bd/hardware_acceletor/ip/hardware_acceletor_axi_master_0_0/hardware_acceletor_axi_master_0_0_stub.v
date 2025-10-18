// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 12 08:52:33 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {E:/vivado files/axi master and slave implementation/axi-4
//               implmentation.srcs/sources_1/bd/hardware_acceletor/ip/hardware_acceletor_axi_master_0_0/hardware_acceletor_axi_master_0_0_stub.v}
// Design      : hardware_acceletor_axi_master_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_master,Vivado 2018.3" *)
module hardware_acceletor_axi_master_0_0(start_convolution, image_address, 
  image_dimension, kernel_address, kernel_dimension, output_image_data, start_writing_fsm, 
  input_memory_address, weight_memory_address, output_memory_address, capture_image_data, 
  capture_kernel_data, ended_reading, ended_convolution, rd_data, M_AXI_ACLK, M_AXI_ARESETN, 
  M_AXI_AWADDR, M_AXI_AWPROT, M_AXI_AWVALID, M_AXI_AWREADY, M_AXI_WDATA, M_AXI_WSTRB, 
  M_AXI_WVALID, M_AXI_WREADY, M_AXI_BRESP, M_AXI_BVALID, M_AXI_BREADY, M_AXI_ARADDR, 
  M_AXI_ARPROT, M_AXI_ARVALID, M_AXI_ARREADY, M_AXI_RDATA, M_AXI_RRESP, M_AXI_RVALID, 
  M_AXI_RREADY)
/* synthesis syn_black_box black_box_pad_pin="start_convolution,image_address[31:0],image_dimension[7:0],kernel_address[31:0],kernel_dimension[7:0],output_image_data[31:0],start_writing_fsm,input_memory_address[7:0],weight_memory_address[7:0],output_memory_address[7:0],capture_image_data,capture_kernel_data,ended_reading,ended_convolution,rd_data[31:0],M_AXI_ACLK,M_AXI_ARESETN,M_AXI_AWADDR[31:0],M_AXI_AWPROT[2:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARPROT[2:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY" */;
  input start_convolution;
  input [31:0]image_address;
  input [7:0]image_dimension;
  input [31:0]kernel_address;
  input [7:0]kernel_dimension;
  input [31:0]output_image_data;
  input start_writing_fsm;
  output [7:0]input_memory_address;
  output [7:0]weight_memory_address;
  output [7:0]output_memory_address;
  output capture_image_data;
  output capture_kernel_data;
  output ended_reading;
  output ended_convolution;
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
