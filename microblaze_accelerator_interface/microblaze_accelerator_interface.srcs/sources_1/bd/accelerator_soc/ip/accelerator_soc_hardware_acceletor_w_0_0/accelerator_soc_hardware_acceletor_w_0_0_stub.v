// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 13 17:36:57 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {e:/vivado
//               files/microblaze_accelerator_interface/microblaze_accelerator_interface.srcs/sources_1/bd/accelerator_soc/ip/accelerator_soc_hardware_acceletor_w_0_0/accelerator_soc_hardware_acceletor_w_0_0_stub.v}
// Design      : accelerator_soc_hardware_acceletor_w_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "hardware_acceletor_wrapper,Vivado 2018.3" *)
module accelerator_soc_hardware_acceletor_w_0_0(M_AXI_0_araddr, M_AXI_0_arprot, 
  M_AXI_0_arready, M_AXI_0_arvalid, M_AXI_0_awaddr, M_AXI_0_awprot, M_AXI_0_awready, 
  M_AXI_0_awvalid, M_AXI_0_bready, M_AXI_0_bresp, M_AXI_0_bvalid, M_AXI_0_rdata, 
  M_AXI_0_rready, M_AXI_0_rresp, M_AXI_0_rvalid, M_AXI_0_wdata, M_AXI_0_wready, 
  M_AXI_0_wstrb, M_AXI_0_wvalid, S_AXI_0_araddr, S_AXI_0_arprot, S_AXI_0_arready, 
  S_AXI_0_arvalid, S_AXI_0_awaddr, S_AXI_0_awprot, S_AXI_0_awready, S_AXI_0_awvalid, 
  S_AXI_0_bready, S_AXI_0_bresp, S_AXI_0_bvalid, S_AXI_0_rdata, S_AXI_0_rready, 
  S_AXI_0_rresp, S_AXI_0_rvalid, S_AXI_0_wdata, S_AXI_0_wready, S_AXI_0_wstrb, 
  S_AXI_0_wvalid, S_AXI_ACLK, S_AXI_ARESETN, interrupt_0)
/* synthesis syn_black_box black_box_pad_pin="M_AXI_0_araddr[31:0],M_AXI_0_arprot[2:0],M_AXI_0_arready,M_AXI_0_arvalid,M_AXI_0_awaddr[31:0],M_AXI_0_awprot[2:0],M_AXI_0_awready,M_AXI_0_awvalid,M_AXI_0_bready,M_AXI_0_bresp[1:0],M_AXI_0_bvalid,M_AXI_0_rdata[31:0],M_AXI_0_rready,M_AXI_0_rresp[1:0],M_AXI_0_rvalid,M_AXI_0_wdata[31:0],M_AXI_0_wready,M_AXI_0_wstrb[3:0],M_AXI_0_wvalid,S_AXI_0_araddr[4:0],S_AXI_0_arprot[2:0],S_AXI_0_arready,S_AXI_0_arvalid,S_AXI_0_awaddr[4:0],S_AXI_0_awprot[2:0],S_AXI_0_awready,S_AXI_0_awvalid,S_AXI_0_bready,S_AXI_0_bresp[1:0],S_AXI_0_bvalid,S_AXI_0_rdata[31:0],S_AXI_0_rready,S_AXI_0_rresp[1:0],S_AXI_0_rvalid,S_AXI_0_wdata[31:0],S_AXI_0_wready,S_AXI_0_wstrb[3:0],S_AXI_0_wvalid,S_AXI_ACLK,S_AXI_ARESETN,interrupt_0" */;
  output [31:0]M_AXI_0_araddr;
  output [2:0]M_AXI_0_arprot;
  input M_AXI_0_arready;
  output M_AXI_0_arvalid;
  output [31:0]M_AXI_0_awaddr;
  output [2:0]M_AXI_0_awprot;
  input M_AXI_0_awready;
  output M_AXI_0_awvalid;
  output M_AXI_0_bready;
  input [1:0]M_AXI_0_bresp;
  input M_AXI_0_bvalid;
  input [31:0]M_AXI_0_rdata;
  output M_AXI_0_rready;
  input [1:0]M_AXI_0_rresp;
  input M_AXI_0_rvalid;
  output [31:0]M_AXI_0_wdata;
  input M_AXI_0_wready;
  output [3:0]M_AXI_0_wstrb;
  output M_AXI_0_wvalid;
  input [4:0]S_AXI_0_araddr;
  input [2:0]S_AXI_0_arprot;
  output S_AXI_0_arready;
  input S_AXI_0_arvalid;
  input [4:0]S_AXI_0_awaddr;
  input [2:0]S_AXI_0_awprot;
  output S_AXI_0_awready;
  input S_AXI_0_awvalid;
  input S_AXI_0_bready;
  output [1:0]S_AXI_0_bresp;
  output S_AXI_0_bvalid;
  output [31:0]S_AXI_0_rdata;
  input S_AXI_0_rready;
  output [1:0]S_AXI_0_rresp;
  output S_AXI_0_rvalid;
  input [31:0]S_AXI_0_wdata;
  output S_AXI_0_wready;
  input [3:0]S_AXI_0_wstrb;
  input S_AXI_0_wvalid;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  output interrupt_0;
endmodule
