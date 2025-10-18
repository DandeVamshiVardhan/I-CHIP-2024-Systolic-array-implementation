//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Jul 29 11:51:46 2025
//Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
//Command     : generate_target hardware_acceletor.bd
//Design      : hardware_acceletor
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "hardware_acceletor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=hardware_acceletor,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=8,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=3,da_clkrst_cnt=6,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "hardware_acceletor.hwdef" *) 
module hardware_acceletor
   (M_AXI_0_araddr,
    M_AXI_0_arprot,
    M_AXI_0_arready,
    M_AXI_0_arvalid,
    M_AXI_0_awaddr,
    M_AXI_0_awprot,
    M_AXI_0_awready,
    M_AXI_0_awvalid,
    M_AXI_0_bready,
    M_AXI_0_bresp,
    M_AXI_0_bvalid,
    M_AXI_0_rdata,
    M_AXI_0_rready,
    M_AXI_0_rresp,
    M_AXI_0_rvalid,
    M_AXI_0_wdata,
    M_AXI_0_wready,
    M_AXI_0_wstrb,
    M_AXI_0_wvalid,
    S_AXI_0_araddr,
    S_AXI_0_arprot,
    S_AXI_0_arready,
    S_AXI_0_arvalid,
    S_AXI_0_awaddr,
    S_AXI_0_awprot,
    S_AXI_0_awready,
    S_AXI_0_awvalid,
    S_AXI_0_bready,
    S_AXI_0_bresp,
    S_AXI_0_bvalid,
    S_AXI_0_rdata,
    S_AXI_0_rready,
    S_AXI_0_rresp,
    S_AXI_0_rvalid,
    S_AXI_0_wdata,
    S_AXI_0_wready,
    S_AXI_0_wstrb,
    S_AXI_0_wvalid,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    interrupt_0);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_0, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) output [31:0]M_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARPROT" *) output [2:0]M_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARREADY" *) input M_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 ARVALID" *) output M_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWADDR" *) output [31:0]M_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWPROT" *) output [2:0]M_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWREADY" *) input M_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 AWVALID" *) output M_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BREADY" *) output M_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BRESP" *) input [1:0]M_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 BVALID" *) input M_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RDATA" *) input [31:0]M_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RREADY" *) output M_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RRESP" *) input [1:0]M_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 RVALID" *) input M_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WDATA" *) output [31:0]M_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WREADY" *) input M_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WSTRB" *) output [3:0]M_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI_0 WVALID" *) output M_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_0, ADDR_WIDTH 12, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, DATA_WIDTH 32, FREQ_HZ 100000000, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 0, HAS_LOCK 0, HAS_PROT 1, HAS_QOS 0, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 1, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [4:0]S_AXI_0_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARPROT" *) input [2:0]S_AXI_0_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARREADY" *) output S_AXI_0_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 ARVALID" *) input S_AXI_0_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWADDR" *) input [4:0]S_AXI_0_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWPROT" *) input [2:0]S_AXI_0_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWREADY" *) output S_AXI_0_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 AWVALID" *) input S_AXI_0_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BREADY" *) input S_AXI_0_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BRESP" *) output [1:0]S_AXI_0_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 BVALID" *) output S_AXI_0_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RDATA" *) output [31:0]S_AXI_0_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RREADY" *) input S_AXI_0_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RRESP" *) output [1:0]S_AXI_0_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 RVALID" *) output S_AXI_0_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WDATA" *) input [31:0]S_AXI_0_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WREADY" *) output S_AXI_0_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WSTRB" *) input [3:0]S_AXI_0_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_0 WVALID" *) input S_AXI_0_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI_0:M_AXI_0, ASSOCIATED_RESET S_AXI_ARESETN, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.S_AXI_ARESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 INTR.INTERRUPT_0 INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME INTR.INTERRUPT_0, PortWidth 1, SENSITIVITY LEVEL_HIGH" *) output interrupt_0;

  wire Net;
  wire Net1;
  wire [31:0]Net2;
  wire [4:0]S_AXI_0_1_ARADDR;
  wire [2:0]S_AXI_0_1_ARPROT;
  wire S_AXI_0_1_ARREADY;
  wire S_AXI_0_1_ARVALID;
  wire [4:0]S_AXI_0_1_AWADDR;
  wire [2:0]S_AXI_0_1_AWPROT;
  wire S_AXI_0_1_AWREADY;
  wire S_AXI_0_1_AWVALID;
  wire S_AXI_0_1_BREADY;
  wire [1:0]S_AXI_0_1_BRESP;
  wire S_AXI_0_1_BVALID;
  wire [31:0]S_AXI_0_1_RDATA;
  wire S_AXI_0_1_RREADY;
  wire [1:0]S_AXI_0_1_RRESP;
  wire S_AXI_0_1_RVALID;
  wire [31:0]S_AXI_0_1_WDATA;
  wire S_AXI_0_1_WREADY;
  wire [3:0]S_AXI_0_1_WSTRB;
  wire S_AXI_0_1_WVALID;
  wire [31:0]axi_master_0_M_AXI_ARADDR;
  wire [2:0]axi_master_0_M_AXI_ARPROT;
  wire axi_master_0_M_AXI_ARREADY;
  wire axi_master_0_M_AXI_ARVALID;
  wire [31:0]axi_master_0_M_AXI_AWADDR;
  wire [2:0]axi_master_0_M_AXI_AWPROT;
  wire axi_master_0_M_AXI_AWREADY;
  wire axi_master_0_M_AXI_AWVALID;
  wire axi_master_0_M_AXI_BREADY;
  wire [1:0]axi_master_0_M_AXI_BRESP;
  wire axi_master_0_M_AXI_BVALID;
  wire [31:0]axi_master_0_M_AXI_RDATA;
  wire axi_master_0_M_AXI_RREADY;
  wire [1:0]axi_master_0_M_AXI_RRESP;
  wire axi_master_0_M_AXI_RVALID;
  wire [31:0]axi_master_0_M_AXI_WDATA;
  wire axi_master_0_M_AXI_WREADY;
  wire [3:0]axi_master_0_M_AXI_WSTRB;
  wire axi_master_0_M_AXI_WVALID;
  wire axi_master_0_capture_image_data;
  wire axi_master_0_capture_kernel_data;
  wire axi_master_0_ended_convolution;
  wire axi_master_0_ended_reading;
  wire [7:0]axi_master_0_input_memory_address;
  wire [7:0]axi_master_0_output_memory_address;
  wire [7:0]axi_master_0_weight_memory_address;
  wire [31:0]axi_slave_0_image_address;
  wire [7:0]axi_slave_0_image_dimension;
  wire axi_slave_0_interrupt;
  wire [31:0]axi_slave_0_kernel_address;
  wire [7:0]axi_slave_0_kernel_dimension;
  wire axi_slave_0_start_convolution;
  wire [7:0]controller_0_in_mem_rd_addr;
  wire [7:0]controller_0_ou_mem_rd_addr;
  wire [7:0]controller_0_ou_mem_wr_addr;
  wire controller_0_ou_wr_enable;
  wire [4:0]controller_0_rd_address;
  wire controller_0_start_wr_fsm;
  wire controller_0_vir_wr_enable;
  wire [7:0]controller_0_vr_mem_wr_addr;
  wire [7:0]controller_0_wt_mem_rd_addr;
  wire [31:0]input_mem_0_rd_data;
  wire [31:0]output_mem_0_rd_data;
  wire [31:0]systolic_array_0_rd_data;
  wire [287:0]vir_input_mem_0_rd_data;
  wire [31:0]weight_mem_0_rd_data;

  assign M_AXI_0_araddr[31:0] = axi_master_0_M_AXI_ARADDR;
  assign M_AXI_0_arprot[2:0] = axi_master_0_M_AXI_ARPROT;
  assign M_AXI_0_arvalid = axi_master_0_M_AXI_ARVALID;
  assign M_AXI_0_awaddr[31:0] = axi_master_0_M_AXI_AWADDR;
  assign M_AXI_0_awprot[2:0] = axi_master_0_M_AXI_AWPROT;
  assign M_AXI_0_awvalid = axi_master_0_M_AXI_AWVALID;
  assign M_AXI_0_bready = axi_master_0_M_AXI_BREADY;
  assign M_AXI_0_rready = axi_master_0_M_AXI_RREADY;
  assign M_AXI_0_wdata[31:0] = axi_master_0_M_AXI_WDATA;
  assign M_AXI_0_wstrb[3:0] = axi_master_0_M_AXI_WSTRB;
  assign M_AXI_0_wvalid = axi_master_0_M_AXI_WVALID;
  assign Net = S_AXI_ACLK;
  assign Net1 = S_AXI_ARESETN;
  assign S_AXI_0_1_ARADDR = S_AXI_0_araddr[4:0];
  assign S_AXI_0_1_ARPROT = S_AXI_0_arprot[2:0];
  assign S_AXI_0_1_ARVALID = S_AXI_0_arvalid;
  assign S_AXI_0_1_AWADDR = S_AXI_0_awaddr[4:0];
  assign S_AXI_0_1_AWPROT = S_AXI_0_awprot[2:0];
  assign S_AXI_0_1_AWVALID = S_AXI_0_awvalid;
  assign S_AXI_0_1_BREADY = S_AXI_0_bready;
  assign S_AXI_0_1_RREADY = S_AXI_0_rready;
  assign S_AXI_0_1_WDATA = S_AXI_0_wdata[31:0];
  assign S_AXI_0_1_WSTRB = S_AXI_0_wstrb[3:0];
  assign S_AXI_0_1_WVALID = S_AXI_0_wvalid;
  assign S_AXI_0_arready = S_AXI_0_1_ARREADY;
  assign S_AXI_0_awready = S_AXI_0_1_AWREADY;
  assign S_AXI_0_bresp[1:0] = S_AXI_0_1_BRESP;
  assign S_AXI_0_bvalid = S_AXI_0_1_BVALID;
  assign S_AXI_0_rdata[31:0] = S_AXI_0_1_RDATA;
  assign S_AXI_0_rresp[1:0] = S_AXI_0_1_RRESP;
  assign S_AXI_0_rvalid = S_AXI_0_1_RVALID;
  assign S_AXI_0_wready = S_AXI_0_1_WREADY;
  assign axi_master_0_M_AXI_ARREADY = M_AXI_0_arready;
  assign axi_master_0_M_AXI_AWREADY = M_AXI_0_awready;
  assign axi_master_0_M_AXI_BRESP = M_AXI_0_bresp[1:0];
  assign axi_master_0_M_AXI_BVALID = M_AXI_0_bvalid;
  assign axi_master_0_M_AXI_RDATA = M_AXI_0_rdata[31:0];
  assign axi_master_0_M_AXI_RRESP = M_AXI_0_rresp[1:0];
  assign axi_master_0_M_AXI_RVALID = M_AXI_0_rvalid;
  assign axi_master_0_M_AXI_WREADY = M_AXI_0_wready;
  assign interrupt_0 = axi_slave_0_interrupt;
  hardware_acceletor_axi_master_0_0 axi_master_0
       (.M_AXI_ACLK(Net),
        .M_AXI_ARADDR(axi_master_0_M_AXI_ARADDR),
        .M_AXI_ARESETN(Net1),
        .M_AXI_ARPROT(axi_master_0_M_AXI_ARPROT),
        .M_AXI_ARREADY(axi_master_0_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi_master_0_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi_master_0_M_AXI_AWADDR),
        .M_AXI_AWPROT(axi_master_0_M_AXI_AWPROT),
        .M_AXI_AWREADY(axi_master_0_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi_master_0_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_master_0_M_AXI_BREADY),
        .M_AXI_BRESP(axi_master_0_M_AXI_BRESP),
        .M_AXI_BVALID(axi_master_0_M_AXI_BVALID),
        .M_AXI_RDATA(axi_master_0_M_AXI_RDATA),
        .M_AXI_RREADY(axi_master_0_M_AXI_RREADY),
        .M_AXI_RRESP(axi_master_0_M_AXI_RRESP),
        .M_AXI_RVALID(axi_master_0_M_AXI_RVALID),
        .M_AXI_WDATA(axi_master_0_M_AXI_WDATA),
        .M_AXI_WREADY(axi_master_0_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_master_0_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_master_0_M_AXI_WVALID),
        .capture_image_data(axi_master_0_capture_image_data),
        .capture_kernel_data(axi_master_0_capture_kernel_data),
        .ended_convolution(axi_master_0_ended_convolution),
        .ended_reading(axi_master_0_ended_reading),
        .image_address(axi_slave_0_image_address),
        .image_dimension(axi_slave_0_image_dimension),
        .input_memory_address(axi_master_0_input_memory_address),
        .kernel_address(axi_slave_0_kernel_address),
        .kernel_dimension(axi_slave_0_kernel_dimension),
        .output_image_data(output_mem_0_rd_data),
        .output_memory_address(axi_master_0_output_memory_address),
        .rd_data(Net2),
        .start_convolution(axi_slave_0_start_convolution),
        .start_writing_fsm(controller_0_start_wr_fsm),
        .weight_memory_address(axi_master_0_weight_memory_address));
  hardware_acceletor_axi_slave_0_0 axi_slave_0
       (.S_AXI_ACLK(Net),
        .S_AXI_ARADDR(S_AXI_0_1_ARADDR),
        .S_AXI_ARESETN(Net1),
        .S_AXI_ARPROT(S_AXI_0_1_ARPROT),
        .S_AXI_ARREADY(S_AXI_0_1_ARREADY),
        .S_AXI_ARVALID(S_AXI_0_1_ARVALID),
        .S_AXI_AWADDR(S_AXI_0_1_AWADDR),
        .S_AXI_AWPROT(S_AXI_0_1_AWPROT),
        .S_AXI_AWREADY(S_AXI_0_1_AWREADY),
        .S_AXI_AWVALID(S_AXI_0_1_AWVALID),
        .S_AXI_BREADY(S_AXI_0_1_BREADY),
        .S_AXI_BRESP(S_AXI_0_1_BRESP),
        .S_AXI_BVALID(S_AXI_0_1_BVALID),
        .S_AXI_RDATA(S_AXI_0_1_RDATA),
        .S_AXI_RREADY(S_AXI_0_1_RREADY),
        .S_AXI_RRESP(S_AXI_0_1_RRESP),
        .S_AXI_RVALID(S_AXI_0_1_RVALID),
        .S_AXI_WDATA(S_AXI_0_1_WDATA),
        .S_AXI_WREADY(S_AXI_0_1_WREADY),
        .S_AXI_WSTRB(S_AXI_0_1_WSTRB),
        .S_AXI_WVALID(S_AXI_0_1_WVALID),
        .end_convolution(axi_master_0_ended_convolution),
        .image_address(axi_slave_0_image_address),
        .image_dimension(axi_slave_0_image_dimension),
        .interrupt(axi_slave_0_interrupt),
        .kernel_address(axi_slave_0_kernel_address),
        .kernel_dimension(axi_slave_0_kernel_dimension),
        .start_convolution(axi_slave_0_start_convolution));
  hardware_acceletor_controller_0_0 controller_0
       (.arestn(Net1),
        .clk(Net),
        .image_dimension(axi_slave_0_image_dimension),
        .in_mem_rd_addr(controller_0_in_mem_rd_addr),
        .kernel_dimension(axi_slave_0_kernel_dimension),
        .ou_mem_rd_addr(controller_0_ou_mem_rd_addr),
        .ou_mem_wr_addr(controller_0_ou_mem_wr_addr),
        .ou_wr_enable(controller_0_ou_wr_enable),
        .rd_address(controller_0_rd_address),
        .reading_ended(axi_master_0_ended_reading),
        .start_wr_fsm(controller_0_start_wr_fsm),
        .vir_wr_enable(controller_0_vir_wr_enable),
        .vr_mem_wr_addr(controller_0_vr_mem_wr_addr),
        .wt_mem_rd_addr(controller_0_wt_mem_rd_addr));
  hardware_acceletor_input_mem_0_0 input_mem_0
       (.arestn(Net1),
        .clk(Net),
        .rd_address(controller_0_in_mem_rd_addr),
        .rd_data(input_mem_0_rd_data),
        .wr_address(axi_master_0_input_memory_address),
        .wr_data(Net2),
        .wr_enable(axi_master_0_capture_image_data));
  hardware_acceletor_output_mem_0_0 output_mem_0
       (.arestn(Net1),
        .clk(Net),
        .rd_address(axi_master_0_output_memory_address),
        .rd_data(output_mem_0_rd_data),
        .wr_address(controller_0_ou_mem_wr_addr),
        .wr_data(systolic_array_0_rd_data),
        .wr_enable(controller_0_ou_wr_enable));
  hardware_acceletor_systolic_array_0_0 systolic_array_0
       (.aresetn(Net1),
        .clk(Net),
        .input_data(vir_input_mem_0_rd_data),
        .rd_address(controller_0_ou_mem_rd_addr),
        .rd_data(systolic_array_0_rd_data),
        .weight_data(weight_mem_0_rd_data));
  hardware_acceletor_vir_input_mem_0_0 vir_input_mem_0
       (.arestn(Net1),
        .clk(Net),
        .rd_address(controller_0_rd_address),
        .rd_data(vir_input_mem_0_rd_data),
        .wr_address(controller_0_vr_mem_wr_addr),
        .wr_data(input_mem_0_rd_data),
        .wr_enable(controller_0_vir_wr_enable));
  hardware_acceletor_weight_mem_0_0 weight_mem_0
       (.arestn(Net1),
        .clk(Net),
        .counter(controller_0_rd_address),
        .kernel_dimension(axi_slave_0_kernel_dimension),
        .rd_address(controller_0_wt_mem_rd_addr),
        .rd_data(weight_mem_0_rd_data),
        .wr_address(axi_master_0_weight_memory_address),
        .wr_data(Net2),
        .wr_enable(axi_master_0_capture_kernel_data));
endmodule
