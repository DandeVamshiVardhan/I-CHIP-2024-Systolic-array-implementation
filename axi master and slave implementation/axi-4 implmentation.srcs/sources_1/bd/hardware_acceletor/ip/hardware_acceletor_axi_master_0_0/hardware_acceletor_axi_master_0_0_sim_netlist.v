// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon May 12 08:52:33 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {E:/vivado files/axi master and slave implementation/axi-4
//               implmentation.srcs/sources_1/bd/hardware_acceletor/ip/hardware_acceletor_axi_master_0_0/hardware_acceletor_axi_master_0_0_sim_netlist.v}
// Design      : hardware_acceletor_axi_master_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "hardware_acceletor_axi_master_0_0,axi_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module hardware_acceletor_axi_master_0_0
   (start_convolution,
    image_address,
    image_dimension,
    kernel_address,
    kernel_dimension,
    output_image_data,
    start_writing_fsm,
    input_memory_address,
    weight_memory_address,
    output_memory_address,
    capture_image_data,
    capture_kernel_data,
    ended_reading,
    ended_convolution,
    rd_data,
    M_AXI_ACLK,
    M_AXI_ARESETN,
    M_AXI_AWADDR,
    M_AXI_AWPROT,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WSTRB,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BRESP,
    M_AXI_BVALID,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_ARPROT,
    M_AXI_ARVALID,
    M_AXI_ARREADY,
    M_AXI_RDATA,
    M_AXI_RRESP,
    M_AXI_RVALID,
    M_AXI_RREADY);
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, INSERT_VIP 0" *) input M_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input M_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [31:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [3:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [31:0]M_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]M_AXI_ARPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output M_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input M_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [31:0]M_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]M_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input M_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire [31:0]M_AXI_RDATA;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire capture_image_data;
  wire capture_kernel_data;
  wire ended_convolution;
  wire ended_reading;
  wire [31:0]image_address;
  wire [7:0]image_dimension;
  wire [7:0]input_memory_address;
  wire [31:0]kernel_address;
  wire [7:0]kernel_dimension;
  wire [31:0]output_image_data;
  wire [7:0]output_memory_address;
  wire start_convolution;
  wire start_writing_fsm;
  wire [7:0]weight_memory_address;

  assign M_AXI_ARPROT[2] = \<const0> ;
  assign M_AXI_ARPROT[1] = \<const0> ;
  assign M_AXI_ARPROT[0] = \<const1> ;
  assign M_AXI_AWPROT[2] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign rd_data[31:0] = M_AXI_RDATA;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  hardware_acceletor_axi_master_0_0_axi_master inst
       (.D({capture_kernel_data,capture_image_data}),
        .M_AXI_ACLK(M_AXI_ACLK),
        .M_AXI_ARADDR(M_AXI_ARADDR),
        .M_AXI_ARESETN(M_AXI_ARESETN),
        .M_AXI_ARREADY(M_AXI_ARREADY),
        .M_AXI_ARVALID(M_AXI_ARVALID),
        .M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_RREADY(M_AXI_RREADY),
        .M_AXI_RVALID(M_AXI_RVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WVALID(M_AXI_WVALID),
        .ended_convolution(ended_convolution),
        .ended_reading(ended_reading),
        .image_address(image_address),
        .image_dimension(image_dimension),
        .input_memory_address(input_memory_address),
        .kernel_address(kernel_address),
        .kernel_dimension(kernel_dimension),
        .output_image_data(output_image_data),
        .output_memory_address(output_memory_address),
        .start_convolution(start_convolution),
        .start_writing_fsm(start_writing_fsm),
        .weight_memory_address(weight_memory_address));
endmodule

(* ORIG_REF_NAME = "axi_master" *) 
module hardware_acceletor_axi_master_0_0_axi_master
   (M_AXI_AWADDR,
    ended_reading,
    D,
    M_AXI_WDATA,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_RREADY,
    weight_memory_address,
    input_memory_address,
    output_memory_address,
    M_AXI_ARVALID,
    ended_convolution,
    M_AXI_WVALID,
    M_AXI_AWVALID,
    image_address,
    start_writing_fsm,
    M_AXI_ACLK,
    output_image_data,
    M_AXI_RVALID,
    M_AXI_ARESETN,
    kernel_dimension,
    start_convolution,
    kernel_address,
    M_AXI_ARREADY,
    image_dimension,
    M_AXI_WREADY,
    M_AXI_AWREADY,
    M_AXI_BVALID);
  output [31:0]M_AXI_AWADDR;
  output ended_reading;
  output [1:0]D;
  output [31:0]M_AXI_WDATA;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_RREADY;
  output [7:0]weight_memory_address;
  output [7:0]input_memory_address;
  output [7:0]output_memory_address;
  output M_AXI_ARVALID;
  output ended_convolution;
  output M_AXI_WVALID;
  output M_AXI_AWVALID;
  input [31:0]image_address;
  input start_writing_fsm;
  input M_AXI_ACLK;
  input [31:0]output_image_data;
  input M_AXI_RVALID;
  input M_AXI_ARESETN;
  input [7:0]kernel_dimension;
  input start_convolution;
  input [31:0]kernel_address;
  input M_AXI_ARREADY;
  input [7:0]image_dimension;
  input M_AXI_WREADY;
  input M_AXI_AWREADY;
  input M_AXI_BVALID;

  wire [1:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire M_AXI_ACLK;
  wire [31:0]M_AXI_ARADDR;
  wire M_AXI_ARESETN;
  wire M_AXI_ARREADY;
  wire M_AXI_ARVALID;
  wire [31:0]M_AXI_AWADDR;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire M_AXI_RREADY;
  wire M_AXI_RVALID;
  wire [31:0]M_AXI_WDATA;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire [31:1]axi_araddr0;
  wire \axi_araddr0_inferred__0/i__carry__0_n_0 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_1 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry__0_n_7 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_0 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_1 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry__1_n_7 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry__2_n_7 ;
  wire \axi_araddr0_inferred__0/i__carry_n_0 ;
  wire \axi_araddr0_inferred__0/i__carry_n_1 ;
  wire \axi_araddr0_inferred__0/i__carry_n_2 ;
  wire \axi_araddr0_inferred__0/i__carry_n_3 ;
  wire \axi_araddr0_inferred__0/i__carry_n_4 ;
  wire \axi_araddr0_inferred__0/i__carry_n_5 ;
  wire \axi_araddr0_inferred__0/i__carry_n_6 ;
  wire \axi_araddr0_inferred__0/i__carry_n_7 ;
  wire \axi_araddr[31]_i_1_n_0 ;
  wire \axi_araddr[31]_i_3_n_0 ;
  wire \axi_araddr[31]_i_4_n_0 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_2_n_0;
  wire \axi_awaddr[0]_i_1_n_0 ;
  wire \axi_awaddr[16]_i_2_n_0 ;
  wire \axi_awaddr[16]_i_3_n_0 ;
  wire \axi_awaddr[16]_i_4_n_0 ;
  wire \axi_awaddr[16]_i_5_n_0 ;
  wire \axi_awaddr[16]_i_6_n_0 ;
  wire \axi_awaddr[16]_i_7_n_0 ;
  wire \axi_awaddr[16]_i_8_n_0 ;
  wire \axi_awaddr[16]_i_9_n_0 ;
  wire \axi_awaddr[24]_i_2_n_0 ;
  wire \axi_awaddr[24]_i_3_n_0 ;
  wire \axi_awaddr[24]_i_4_n_0 ;
  wire \axi_awaddr[24]_i_5_n_0 ;
  wire \axi_awaddr[24]_i_6_n_0 ;
  wire \axi_awaddr[24]_i_7_n_0 ;
  wire \axi_awaddr[24]_i_8_n_0 ;
  wire \axi_awaddr[24]_i_9_n_0 ;
  wire \axi_awaddr[31]_i_1_n_0 ;
  wire \axi_awaddr[31]_i_3_n_0 ;
  wire \axi_awaddr[31]_i_4_n_0 ;
  wire \axi_awaddr[31]_i_5_n_0 ;
  wire \axi_awaddr[31]_i_6_n_0 ;
  wire \axi_awaddr[31]_i_7_n_0 ;
  wire \axi_awaddr[31]_i_8_n_0 ;
  wire \axi_awaddr[31]_i_9_n_0 ;
  wire \axi_awaddr[8]_i_10_n_0 ;
  wire \axi_awaddr[8]_i_2_n_0 ;
  wire \axi_awaddr[8]_i_3_n_0 ;
  wire \axi_awaddr[8]_i_4_n_0 ;
  wire \axi_awaddr[8]_i_5_n_0 ;
  wire \axi_awaddr[8]_i_6_n_0 ;
  wire \axi_awaddr[8]_i_7_n_0 ;
  wire \axi_awaddr[8]_i_8_n_0 ;
  wire \axi_awaddr[8]_i_9_n_0 ;
  wire \axi_awaddr_reg[16]_i_1_n_0 ;
  wire \axi_awaddr_reg[16]_i_1_n_1 ;
  wire \axi_awaddr_reg[16]_i_1_n_10 ;
  wire \axi_awaddr_reg[16]_i_1_n_11 ;
  wire \axi_awaddr_reg[16]_i_1_n_12 ;
  wire \axi_awaddr_reg[16]_i_1_n_13 ;
  wire \axi_awaddr_reg[16]_i_1_n_14 ;
  wire \axi_awaddr_reg[16]_i_1_n_15 ;
  wire \axi_awaddr_reg[16]_i_1_n_2 ;
  wire \axi_awaddr_reg[16]_i_1_n_3 ;
  wire \axi_awaddr_reg[16]_i_1_n_4 ;
  wire \axi_awaddr_reg[16]_i_1_n_5 ;
  wire \axi_awaddr_reg[16]_i_1_n_6 ;
  wire \axi_awaddr_reg[16]_i_1_n_7 ;
  wire \axi_awaddr_reg[16]_i_1_n_8 ;
  wire \axi_awaddr_reg[16]_i_1_n_9 ;
  wire \axi_awaddr_reg[24]_i_1_n_0 ;
  wire \axi_awaddr_reg[24]_i_1_n_1 ;
  wire \axi_awaddr_reg[24]_i_1_n_10 ;
  wire \axi_awaddr_reg[24]_i_1_n_11 ;
  wire \axi_awaddr_reg[24]_i_1_n_12 ;
  wire \axi_awaddr_reg[24]_i_1_n_13 ;
  wire \axi_awaddr_reg[24]_i_1_n_14 ;
  wire \axi_awaddr_reg[24]_i_1_n_15 ;
  wire \axi_awaddr_reg[24]_i_1_n_2 ;
  wire \axi_awaddr_reg[24]_i_1_n_3 ;
  wire \axi_awaddr_reg[24]_i_1_n_4 ;
  wire \axi_awaddr_reg[24]_i_1_n_5 ;
  wire \axi_awaddr_reg[24]_i_1_n_6 ;
  wire \axi_awaddr_reg[24]_i_1_n_7 ;
  wire \axi_awaddr_reg[24]_i_1_n_8 ;
  wire \axi_awaddr_reg[24]_i_1_n_9 ;
  wire \axi_awaddr_reg[31]_i_2_n_10 ;
  wire \axi_awaddr_reg[31]_i_2_n_11 ;
  wire \axi_awaddr_reg[31]_i_2_n_12 ;
  wire \axi_awaddr_reg[31]_i_2_n_13 ;
  wire \axi_awaddr_reg[31]_i_2_n_14 ;
  wire \axi_awaddr_reg[31]_i_2_n_15 ;
  wire \axi_awaddr_reg[31]_i_2_n_2 ;
  wire \axi_awaddr_reg[31]_i_2_n_3 ;
  wire \axi_awaddr_reg[31]_i_2_n_4 ;
  wire \axi_awaddr_reg[31]_i_2_n_5 ;
  wire \axi_awaddr_reg[31]_i_2_n_6 ;
  wire \axi_awaddr_reg[31]_i_2_n_7 ;
  wire \axi_awaddr_reg[31]_i_2_n_9 ;
  wire \axi_awaddr_reg[8]_i_1_n_0 ;
  wire \axi_awaddr_reg[8]_i_1_n_1 ;
  wire \axi_awaddr_reg[8]_i_1_n_10 ;
  wire \axi_awaddr_reg[8]_i_1_n_11 ;
  wire \axi_awaddr_reg[8]_i_1_n_12 ;
  wire \axi_awaddr_reg[8]_i_1_n_13 ;
  wire \axi_awaddr_reg[8]_i_1_n_14 ;
  wire \axi_awaddr_reg[8]_i_1_n_15 ;
  wire \axi_awaddr_reg[8]_i_1_n_2 ;
  wire \axi_awaddr_reg[8]_i_1_n_3 ;
  wire \axi_awaddr_reg[8]_i_1_n_4 ;
  wire \axi_awaddr_reg[8]_i_1_n_5 ;
  wire \axi_awaddr_reg[8]_i_1_n_6 ;
  wire \axi_awaddr_reg[8]_i_1_n_7 ;
  wire \axi_awaddr_reg[8]_i_1_n_8 ;
  wire \axi_awaddr_reg[8]_i_1_n_9 ;
  wire axi_awvalid_i_1_n_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire \axi_wdata[31]_i_1_n_0 ;
  wire axi_wvalid_i_1_n_0;
  wire \column[3]_i_1_n_0 ;
  wire \column_k[3]_i_1_n_0 ;
  wire ended_convolution;
  wire ended_convolution_INST_0_i_2_n_0;
  wire ended_convolution_INST_0_i_5_n_0;
  wire ended_convolution_INST_0_i_6_n_0;
  wire ended_reading;
  wire i__carry_i_1_n_0;
  wire [31:0]image_address;
  wire [7:0]image_dimension;
  wire inc_image_addr;
  wire inc_kernel_addr;
  wire initialise_image_addr__0;
  wire [7:0]input_memory_address;
  wire [31:0]kernel_address;
  wire kernel_cmpltd0__6;
  wire [7:0]kernel_dimension;
  wire \o_column[3]_i_1_n_0 ;
  wire \o_column[3]_i_4_n_0 ;
  wire \o_column[3]_i_5_n_0 ;
  wire o_row;
  wire \o_row[3]_i_10_n_0 ;
  wire \o_row[3]_i_11_n_0 ;
  wire \o_row[3]_i_1_n_0 ;
  wire \o_row[3]_i_4_n_0 ;
  wire \o_row[3]_i_5_n_0 ;
  wire \o_row[3]_i_6_n_0 ;
  wire \o_row[3]_i_7_n_0 ;
  wire \o_row[3]_i_8_n_0 ;
  wire \o_row[3]_i_9_n_0 ;
  wire [31:0]output_image_data;
  wire [7:0]output_memory_address;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [31:0]p_2_in;
  wire row;
  wire row0;
  wire \row[3]_i_4_n_0 ;
  wire \row[3]_i_5_n_0 ;
  wire \row[3]_i_6_n_0 ;
  wire \row[3]_i_7_n_0 ;
  wire \row[3]_i_8_n_0 ;
  wire \row[3]_i_9_n_0 ;
  wire row_k;
  wire \row_k[3]_i_3_n_0 ;
  wire \row_k[3]_i_4_n_0 ;
  wire \row_k[3]_i_5_n_0 ;
  wire \row_k[3]_i_6_n_0 ;
  wire start_convolution;
  wire start_write;
  wire start_writing_fsm;
  wire w_cmpltd02_in;
  wire [3:2]w_cmpltd1;
  wire [1:0]w_next_state;
  wire [1:0]w_state;
  wire [7:0]weight_memory_address;
  wire [7:6]\NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [7:6]\NLW_axi_awaddr_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_axi_awaddr_reg[31]_i_2_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_convolution),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(start_convolution),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(inc_image_addr),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AAAAAAA)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\row_k[3]_i_3_n_0 ),
        .I2(\row_k[3]_i_4_n_0 ),
        .I3(\row_k[3]_i_5_n_0 ),
        .I4(\row_k[3]_i_6_n_0 ),
        .I5(\row[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\row[3]_i_5_n_0 ),
        .I1(ended_reading),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000100,iSTATE1:00001000,iSTATE2:00000010,iSTATE3:00100000,iSTATE4:01000000,iSTATE5:00010000,iSTATE6:10000000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(ended_reading),
        .R(\o_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFAFC0AFC0AFC0A)) 
    \FSM_sequential_w_state[0]_i_1 
       (.I0(start_writing_fsm),
        .I1(M_AXI_WREADY),
        .I2(w_state[0]),
        .I3(w_state[1]),
        .I4(\o_row[3]_i_7_n_0 ),
        .I5(\o_row[3]_i_6_n_0 ),
        .O(w_next_state[0]));
  LUT6 #(
    .INIT(64'h0000FFFF7FF70000)) 
    \FSM_sequential_w_state[1]_i_1 
       (.I0(\o_column[3]_i_5_n_0 ),
        .I1(ended_convolution_INST_0_i_2_n_0),
        .I2(output_memory_address[7]),
        .I3(w_cmpltd1[3]),
        .I4(w_state[0]),
        .I5(w_state[1]),
        .O(w_next_state[1]));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_w_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(w_next_state[0]),
        .Q(w_state[0]),
        .R(\o_row[3]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00,iSTATE0:01,iSTATE1:10,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_w_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(w_next_state[1]),
        .Q(w_state[1]),
        .R(\o_row[3]_i_1_n_0 ));
  CARRY8 \axi_araddr0_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry_n_0 ,\axi_araddr0_inferred__0/i__carry_n_1 ,\axi_araddr0_inferred__0/i__carry_n_2 ,\axi_araddr0_inferred__0/i__carry_n_3 ,\axi_araddr0_inferred__0/i__carry_n_4 ,\axi_araddr0_inferred__0/i__carry_n_5 ,\axi_araddr0_inferred__0/i__carry_n_6 ,\axi_araddr0_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,M_AXI_ARADDR[2],1'b0}),
        .O(axi_araddr0[8:1]),
        .S({M_AXI_ARADDR[8:3],i__carry_i_1_n_0,M_AXI_ARADDR[1]}));
  CARRY8 \axi_araddr0_inferred__0/i__carry__0 
       (.CI(\axi_araddr0_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry__0_n_0 ,\axi_araddr0_inferred__0/i__carry__0_n_1 ,\axi_araddr0_inferred__0/i__carry__0_n_2 ,\axi_araddr0_inferred__0/i__carry__0_n_3 ,\axi_araddr0_inferred__0/i__carry__0_n_4 ,\axi_araddr0_inferred__0/i__carry__0_n_5 ,\axi_araddr0_inferred__0/i__carry__0_n_6 ,\axi_araddr0_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(axi_araddr0[16:9]),
        .S(M_AXI_ARADDR[16:9]));
  CARRY8 \axi_araddr0_inferred__0/i__carry__1 
       (.CI(\axi_araddr0_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry__1_n_0 ,\axi_araddr0_inferred__0/i__carry__1_n_1 ,\axi_araddr0_inferred__0/i__carry__1_n_2 ,\axi_araddr0_inferred__0/i__carry__1_n_3 ,\axi_araddr0_inferred__0/i__carry__1_n_4 ,\axi_araddr0_inferred__0/i__carry__1_n_5 ,\axi_araddr0_inferred__0/i__carry__1_n_6 ,\axi_araddr0_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(axi_araddr0[24:17]),
        .S(M_AXI_ARADDR[24:17]));
  CARRY8 \axi_araddr0_inferred__0/i__carry__2 
       (.CI(\axi_araddr0_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED [7:6],\axi_araddr0_inferred__0/i__carry__2_n_2 ,\axi_araddr0_inferred__0/i__carry__2_n_3 ,\axi_araddr0_inferred__0/i__carry__2_n_4 ,\axi_araddr0_inferred__0/i__carry__2_n_5 ,\axi_araddr0_inferred__0/i__carry__2_n_6 ,\axi_araddr0_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED [7],axi_araddr0[31:25]}),
        .S({1'b0,M_AXI_ARADDR[31:25]}));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[0]_i_1 
       (.I0(M_AXI_ARADDR[0]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[0]),
        .I4(image_address[0]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[10]_i_1 
       (.I0(axi_araddr0[10]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[10]),
        .I4(image_address[10]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[11]_i_1 
       (.I0(axi_araddr0[11]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[11]),
        .I4(image_address[11]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[12]_i_1 
       (.I0(axi_araddr0[12]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[12]),
        .I4(image_address[12]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[13]_i_1 
       (.I0(axi_araddr0[13]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[13]),
        .I4(image_address[13]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[14]_i_1 
       (.I0(axi_araddr0[14]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[14]),
        .I4(image_address[14]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[15]_i_1 
       (.I0(axi_araddr0[15]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[15]),
        .I4(image_address[15]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[16]_i_1 
       (.I0(axi_araddr0[16]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[16]),
        .I4(image_address[16]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[17]_i_1 
       (.I0(axi_araddr0[17]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[17]),
        .I4(image_address[17]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[18]_i_1 
       (.I0(axi_araddr0[18]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[18]),
        .I4(image_address[18]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[19]_i_1 
       (.I0(axi_araddr0[19]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[19]),
        .I4(image_address[19]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[1]_i_1 
       (.I0(axi_araddr0[1]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[1]),
        .I4(image_address[1]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[20]_i_1 
       (.I0(axi_araddr0[20]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[20]),
        .I4(image_address[20]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[21]_i_1 
       (.I0(axi_araddr0[21]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[21]),
        .I4(image_address[21]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[22]_i_1 
       (.I0(axi_araddr0[22]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[22]),
        .I4(image_address[22]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[23]_i_1 
       (.I0(axi_araddr0[23]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[23]),
        .I4(image_address[23]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[24]_i_1 
       (.I0(axi_araddr0[24]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[24]),
        .I4(image_address[24]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[25]_i_1 
       (.I0(axi_araddr0[25]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[25]),
        .I4(image_address[25]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[25]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[26]_i_1 
       (.I0(axi_araddr0[26]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[26]),
        .I4(image_address[26]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[26]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[27]_i_1 
       (.I0(axi_araddr0[27]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[27]),
        .I4(image_address[27]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[27]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[28]_i_1 
       (.I0(axi_araddr0[28]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[28]),
        .I4(image_address[28]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[28]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[29]_i_1 
       (.I0(axi_araddr0[29]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[29]),
        .I4(image_address[29]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[29]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[2]_i_1 
       (.I0(axi_araddr0[2]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[2]),
        .I4(image_address[2]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[30]_i_1 
       (.I0(axi_araddr0[30]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[30]),
        .I4(image_address[30]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[30]));
  LUT3 #(
    .INIT(8'hF8)) 
    \axi_araddr[31]_i_1 
       (.I0(M_AXI_ARVALID),
        .I1(M_AXI_ARREADY),
        .I2(\axi_araddr[31]_i_3_n_0 ),
        .O(\axi_araddr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[31]_i_2 
       (.I0(axi_araddr0[31]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[31]),
        .I4(image_address[31]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[31]));
  LUT6 #(
    .INIT(64'hEAAAAAAAAAAAAAAA)) 
    \axi_araddr[31]_i_3 
       (.I0(initialise_image_addr__0),
        .I1(\row[3]_i_6_n_0 ),
        .I2(\row[3]_i_7_n_0 ),
        .I3(\row[3]_i_8_n_0 ),
        .I4(\row[3]_i_9_n_0 ),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\axi_araddr[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \axi_araddr[31]_i_4 
       (.I0(\row[3]_i_6_n_0 ),
        .I1(\row[3]_i_7_n_0 ),
        .I2(\row[3]_i_8_n_0 ),
        .I3(\row[3]_i_9_n_0 ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .I5(initialise_image_addr__0),
        .O(\axi_araddr[31]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[31]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_convolution),
        .O(initialise_image_addr__0));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[3]_i_1 
       (.I0(axi_araddr0[3]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[3]),
        .I4(image_address[3]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[4]_i_1 
       (.I0(axi_araddr0[4]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[4]),
        .I4(image_address[4]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[5]_i_1 
       (.I0(axi_araddr0[5]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[5]),
        .I4(image_address[5]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[6]_i_1 
       (.I0(axi_araddr0[6]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[6]),
        .I4(image_address[6]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[7]_i_1 
       (.I0(axi_araddr0[7]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[7]),
        .I4(image_address[7]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[8]_i_1 
       (.I0(axi_araddr0[8]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[8]),
        .I4(image_address[8]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFF222F222F222)) 
    \axi_araddr[9]_i_1 
       (.I0(axi_araddr0[9]),
        .I1(\axi_araddr[31]_i_3_n_0 ),
        .I2(\axi_araddr[31]_i_4_n_0 ),
        .I3(kernel_address[9]),
        .I4(image_address[9]),
        .I5(initialise_image_addr__0),
        .O(p_2_in[9]));
  FDRE \axi_araddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(M_AXI_ARADDR[0]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(M_AXI_ARADDR[10]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(M_AXI_ARADDR[11]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(M_AXI_ARADDR[12]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(M_AXI_ARADDR[13]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(M_AXI_ARADDR[14]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(M_AXI_ARADDR[15]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(M_AXI_ARADDR[16]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(M_AXI_ARADDR[17]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(M_AXI_ARADDR[18]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(M_AXI_ARADDR[19]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(M_AXI_ARADDR[1]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(M_AXI_ARADDR[20]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(M_AXI_ARADDR[21]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(M_AXI_ARADDR[22]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(M_AXI_ARADDR[23]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(M_AXI_ARADDR[24]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(M_AXI_ARADDR[25]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(M_AXI_ARADDR[26]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(M_AXI_ARADDR[27]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(M_AXI_ARADDR[28]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(M_AXI_ARADDR[29]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(M_AXI_ARADDR[2]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(M_AXI_ARADDR[30]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(M_AXI_ARADDR[31]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(M_AXI_ARADDR[3]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(M_AXI_ARADDR[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(M_AXI_ARADDR[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(M_AXI_ARADDR[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(M_AXI_ARADDR[7]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(M_AXI_ARADDR[8]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_araddr[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(M_AXI_ARADDR[9]),
        .R(\o_row[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    axi_arvalid_i_1
       (.I0(\axi_araddr[31]_i_3_n_0 ),
        .I1(M_AXI_ARESETN),
        .O(axi_arvalid0));
  LUT4 #(
    .INIT(16'hEEFE)) 
    axi_arvalid_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[1] ),
        .I2(M_AXI_ARVALID),
        .I3(M_AXI_ARREADY),
        .O(axi_arvalid_i_2_n_0));
  FDRE axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_2_n_0),
        .Q(M_AXI_ARVALID),
        .R(axi_arvalid0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[0]_i_1 
       (.I0(image_address[0]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[0]),
        .O(\axi_awaddr[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_2 
       (.I0(image_address[16]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[16]),
        .O(\axi_awaddr[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_3 
       (.I0(image_address[15]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[15]),
        .O(\axi_awaddr[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_4 
       (.I0(image_address[14]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[14]),
        .O(\axi_awaddr[16]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_5 
       (.I0(image_address[13]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[13]),
        .O(\axi_awaddr[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_6 
       (.I0(image_address[12]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[12]),
        .O(\axi_awaddr[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_7 
       (.I0(image_address[11]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[11]),
        .O(\axi_awaddr[16]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_8 
       (.I0(image_address[10]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[10]),
        .O(\axi_awaddr[16]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[16]_i_9 
       (.I0(image_address[9]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[9]),
        .O(\axi_awaddr[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_2 
       (.I0(image_address[24]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[24]),
        .O(\axi_awaddr[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_3 
       (.I0(image_address[23]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[23]),
        .O(\axi_awaddr[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_4 
       (.I0(image_address[22]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[22]),
        .O(\axi_awaddr[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_5 
       (.I0(image_address[21]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[21]),
        .O(\axi_awaddr[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_6 
       (.I0(image_address[20]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[20]),
        .O(\axi_awaddr[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_7 
       (.I0(image_address[19]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[19]),
        .O(\axi_awaddr[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_8 
       (.I0(image_address[18]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[18]),
        .O(\axi_awaddr[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[24]_i_9 
       (.I0(image_address[17]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[17]),
        .O(\axi_awaddr[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \axi_awaddr[31]_i_1 
       (.I0(M_AXI_AWVALID),
        .I1(M_AXI_AWREADY),
        .I2(start_writing_fsm),
        .I3(w_state[0]),
        .I4(w_state[1]),
        .O(\axi_awaddr[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_3 
       (.I0(image_address[31]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[31]),
        .O(\axi_awaddr[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_4 
       (.I0(image_address[30]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[30]),
        .O(\axi_awaddr[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_5 
       (.I0(image_address[29]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[29]),
        .O(\axi_awaddr[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_6 
       (.I0(image_address[28]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[28]),
        .O(\axi_awaddr[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_7 
       (.I0(image_address[27]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[27]),
        .O(\axi_awaddr[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_8 
       (.I0(image_address[26]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[26]),
        .O(\axi_awaddr[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[31]_i_9 
       (.I0(image_address[25]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[25]),
        .O(\axi_awaddr[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_10 
       (.I0(image_address[1]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[1]),
        .O(\axi_awaddr[8]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_2 
       (.I0(image_address[2]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[2]),
        .O(\axi_awaddr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_3 
       (.I0(image_address[8]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[8]),
        .O(\axi_awaddr[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_4 
       (.I0(image_address[7]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[7]),
        .O(\axi_awaddr[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_5 
       (.I0(image_address[6]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[6]),
        .O(\axi_awaddr[8]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_6 
       (.I0(image_address[5]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[5]),
        .O(\axi_awaddr[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_7 
       (.I0(image_address[4]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[4]),
        .O(\axi_awaddr[8]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFEFF0200)) 
    \axi_awaddr[8]_i_8 
       (.I0(image_address[3]),
        .I1(w_state[1]),
        .I2(w_state[0]),
        .I3(start_writing_fsm),
        .I4(M_AXI_AWADDR[3]),
        .O(\axi_awaddr[8]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h555555C5)) 
    \axi_awaddr[8]_i_9 
       (.I0(M_AXI_AWADDR[2]),
        .I1(image_address[2]),
        .I2(start_writing_fsm),
        .I3(w_state[0]),
        .I4(w_state[1]),
        .O(\axi_awaddr[8]_i_9_n_0 ));
  FDRE \axi_awaddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr[0]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[0]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_14 ),
        .Q(M_AXI_AWADDR[10]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_13 ),
        .Q(M_AXI_AWADDR[11]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_12 ),
        .Q(M_AXI_AWADDR[12]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_11 ),
        .Q(M_AXI_AWADDR[13]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_10 ),
        .Q(M_AXI_AWADDR[14]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_9 ),
        .Q(M_AXI_AWADDR[15]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_8 ),
        .Q(M_AXI_AWADDR[16]),
        .R(\o_row[3]_i_1_n_0 ));
  CARRY8 \axi_awaddr_reg[16]_i_1 
       (.CI(\axi_awaddr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[16]_i_1_n_0 ,\axi_awaddr_reg[16]_i_1_n_1 ,\axi_awaddr_reg[16]_i_1_n_2 ,\axi_awaddr_reg[16]_i_1_n_3 ,\axi_awaddr_reg[16]_i_1_n_4 ,\axi_awaddr_reg[16]_i_1_n_5 ,\axi_awaddr_reg[16]_i_1_n_6 ,\axi_awaddr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[16]_i_1_n_8 ,\axi_awaddr_reg[16]_i_1_n_9 ,\axi_awaddr_reg[16]_i_1_n_10 ,\axi_awaddr_reg[16]_i_1_n_11 ,\axi_awaddr_reg[16]_i_1_n_12 ,\axi_awaddr_reg[16]_i_1_n_13 ,\axi_awaddr_reg[16]_i_1_n_14 ,\axi_awaddr_reg[16]_i_1_n_15 }),
        .S({\axi_awaddr[16]_i_2_n_0 ,\axi_awaddr[16]_i_3_n_0 ,\axi_awaddr[16]_i_4_n_0 ,\axi_awaddr[16]_i_5_n_0 ,\axi_awaddr[16]_i_6_n_0 ,\axi_awaddr[16]_i_7_n_0 ,\axi_awaddr[16]_i_8_n_0 ,\axi_awaddr[16]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_15 ),
        .Q(M_AXI_AWADDR[17]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_14 ),
        .Q(M_AXI_AWADDR[18]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_13 ),
        .Q(M_AXI_AWADDR[19]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_15 ),
        .Q(M_AXI_AWADDR[1]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_12 ),
        .Q(M_AXI_AWADDR[20]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_11 ),
        .Q(M_AXI_AWADDR[21]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_10 ),
        .Q(M_AXI_AWADDR[22]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_9 ),
        .Q(M_AXI_AWADDR[23]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[24]_i_1_n_8 ),
        .Q(M_AXI_AWADDR[24]),
        .R(\o_row[3]_i_1_n_0 ));
  CARRY8 \axi_awaddr_reg[24]_i_1 
       (.CI(\axi_awaddr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[24]_i_1_n_0 ,\axi_awaddr_reg[24]_i_1_n_1 ,\axi_awaddr_reg[24]_i_1_n_2 ,\axi_awaddr_reg[24]_i_1_n_3 ,\axi_awaddr_reg[24]_i_1_n_4 ,\axi_awaddr_reg[24]_i_1_n_5 ,\axi_awaddr_reg[24]_i_1_n_6 ,\axi_awaddr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\axi_awaddr_reg[24]_i_1_n_8 ,\axi_awaddr_reg[24]_i_1_n_9 ,\axi_awaddr_reg[24]_i_1_n_10 ,\axi_awaddr_reg[24]_i_1_n_11 ,\axi_awaddr_reg[24]_i_1_n_12 ,\axi_awaddr_reg[24]_i_1_n_13 ,\axi_awaddr_reg[24]_i_1_n_14 ,\axi_awaddr_reg[24]_i_1_n_15 }),
        .S({\axi_awaddr[24]_i_2_n_0 ,\axi_awaddr[24]_i_3_n_0 ,\axi_awaddr[24]_i_4_n_0 ,\axi_awaddr[24]_i_5_n_0 ,\axi_awaddr[24]_i_6_n_0 ,\axi_awaddr[24]_i_7_n_0 ,\axi_awaddr[24]_i_8_n_0 ,\axi_awaddr[24]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_15 ),
        .Q(M_AXI_AWADDR[25]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_14 ),
        .Q(M_AXI_AWADDR[26]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_13 ),
        .Q(M_AXI_AWADDR[27]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_12 ),
        .Q(M_AXI_AWADDR[28]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_11 ),
        .Q(M_AXI_AWADDR[29]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_14 ),
        .Q(M_AXI_AWADDR[2]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_10 ),
        .Q(M_AXI_AWADDR[30]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[31]_i_2_n_9 ),
        .Q(M_AXI_AWADDR[31]),
        .R(\o_row[3]_i_1_n_0 ));
  CARRY8 \axi_awaddr_reg[31]_i_2 
       (.CI(\axi_awaddr_reg[24]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_awaddr_reg[31]_i_2_CO_UNCONNECTED [7:6],\axi_awaddr_reg[31]_i_2_n_2 ,\axi_awaddr_reg[31]_i_2_n_3 ,\axi_awaddr_reg[31]_i_2_n_4 ,\axi_awaddr_reg[31]_i_2_n_5 ,\axi_awaddr_reg[31]_i_2_n_6 ,\axi_awaddr_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_awaddr_reg[31]_i_2_O_UNCONNECTED [7],\axi_awaddr_reg[31]_i_2_n_9 ,\axi_awaddr_reg[31]_i_2_n_10 ,\axi_awaddr_reg[31]_i_2_n_11 ,\axi_awaddr_reg[31]_i_2_n_12 ,\axi_awaddr_reg[31]_i_2_n_13 ,\axi_awaddr_reg[31]_i_2_n_14 ,\axi_awaddr_reg[31]_i_2_n_15 }),
        .S({1'b0,\axi_awaddr[31]_i_3_n_0 ,\axi_awaddr[31]_i_4_n_0 ,\axi_awaddr[31]_i_5_n_0 ,\axi_awaddr[31]_i_6_n_0 ,\axi_awaddr[31]_i_7_n_0 ,\axi_awaddr[31]_i_8_n_0 ,\axi_awaddr[31]_i_9_n_0 }));
  FDRE \axi_awaddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_13 ),
        .Q(M_AXI_AWADDR[3]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_12 ),
        .Q(M_AXI_AWADDR[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_11 ),
        .Q(M_AXI_AWADDR[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_10 ),
        .Q(M_AXI_AWADDR[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_9 ),
        .Q(M_AXI_AWADDR[7]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[8]_i_1_n_8 ),
        .Q(M_AXI_AWADDR[8]),
        .R(\o_row[3]_i_1_n_0 ));
  CARRY8 \axi_awaddr_reg[8]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_awaddr_reg[8]_i_1_n_0 ,\axi_awaddr_reg[8]_i_1_n_1 ,\axi_awaddr_reg[8]_i_1_n_2 ,\axi_awaddr_reg[8]_i_1_n_3 ,\axi_awaddr_reg[8]_i_1_n_4 ,\axi_awaddr_reg[8]_i_1_n_5 ,\axi_awaddr_reg[8]_i_1_n_6 ,\axi_awaddr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_awaddr[8]_i_2_n_0 ,1'b0}),
        .O({\axi_awaddr_reg[8]_i_1_n_8 ,\axi_awaddr_reg[8]_i_1_n_9 ,\axi_awaddr_reg[8]_i_1_n_10 ,\axi_awaddr_reg[8]_i_1_n_11 ,\axi_awaddr_reg[8]_i_1_n_12 ,\axi_awaddr_reg[8]_i_1_n_13 ,\axi_awaddr_reg[8]_i_1_n_14 ,\axi_awaddr_reg[8]_i_1_n_15 }),
        .S({\axi_awaddr[8]_i_3_n_0 ,\axi_awaddr[8]_i_4_n_0 ,\axi_awaddr[8]_i_5_n_0 ,\axi_awaddr[8]_i_6_n_0 ,\axi_awaddr[8]_i_7_n_0 ,\axi_awaddr[8]_i_8_n_0 ,\axi_awaddr[8]_i_9_n_0 ,\axi_awaddr[8]_i_10_n_0 }));
  FDRE \axi_awaddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_1_n_0 ),
        .D(\axi_awaddr_reg[16]_i_1_n_15 ),
        .Q(M_AXI_AWADDR[9]),
        .R(\o_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222222222FFF2222)) 
    axi_awvalid_i_1
       (.I0(M_AXI_AWVALID),
        .I1(M_AXI_AWREADY),
        .I2(\o_row[3]_i_6_n_0 ),
        .I3(\o_row[3]_i_7_n_0 ),
        .I4(w_state[0]),
        .I5(w_state[1]),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(M_AXI_AWVALID),
        .R(\o_row[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    axi_bready_i_1
       (.I0(M_AXI_BVALID),
        .I1(M_AXI_BREADY),
        .O(axi_bready0));
  FDRE axi_bready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bready0),
        .Q(M_AXI_BREADY),
        .R(\o_row[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    axi_rready_i_1
       (.I0(M_AXI_RREADY),
        .I1(M_AXI_RVALID),
        .O(axi_rready_i_1_n_0));
  FDRE axi_rready_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rready_i_1_n_0),
        .Q(M_AXI_RREADY),
        .R(axi_arvalid0));
  LUT5 #(
    .INIT(32'h888888F8)) 
    \axi_wdata[31]_i_1 
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_WREADY),
        .I2(start_writing_fsm),
        .I3(w_state[0]),
        .I4(w_state[1]),
        .O(\axi_wdata[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[0]),
        .Q(M_AXI_WDATA[0]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[10]),
        .Q(M_AXI_WDATA[10]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[11]),
        .Q(M_AXI_WDATA[11]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[12]),
        .Q(M_AXI_WDATA[12]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[13]),
        .Q(M_AXI_WDATA[13]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[14]),
        .Q(M_AXI_WDATA[14]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[15]),
        .Q(M_AXI_WDATA[15]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[16]),
        .Q(M_AXI_WDATA[16]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[17]),
        .Q(M_AXI_WDATA[17]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[18]),
        .Q(M_AXI_WDATA[18]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[19]),
        .Q(M_AXI_WDATA[19]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[1]),
        .Q(M_AXI_WDATA[1]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[20]),
        .Q(M_AXI_WDATA[20]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[21]),
        .Q(M_AXI_WDATA[21]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[22]),
        .Q(M_AXI_WDATA[22]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[23]),
        .Q(M_AXI_WDATA[23]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[24]),
        .Q(M_AXI_WDATA[24]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[25]),
        .Q(M_AXI_WDATA[25]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[26]),
        .Q(M_AXI_WDATA[26]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[27]),
        .Q(M_AXI_WDATA[27]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[28]),
        .Q(M_AXI_WDATA[28]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[29]),
        .Q(M_AXI_WDATA[29]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[2]),
        .Q(M_AXI_WDATA[2]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[30]),
        .Q(M_AXI_WDATA[30]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[31]),
        .Q(M_AXI_WDATA[31]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[3]),
        .Q(M_AXI_WDATA[3]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[4]),
        .Q(M_AXI_WDATA[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[5]),
        .Q(M_AXI_WDATA[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[6]),
        .Q(M_AXI_WDATA[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[7]),
        .Q(M_AXI_WDATA[7]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[8]),
        .Q(M_AXI_WDATA[8]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \axi_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_image_data[9]),
        .Q(M_AXI_WDATA[9]),
        .R(\o_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h222222222FFF2222)) 
    axi_wvalid_i_1
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_WREADY),
        .I2(\o_row[3]_i_6_n_0 ),
        .I3(\o_row[3]_i_7_n_0 ),
        .I4(w_state[0]),
        .I5(w_state[1]),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    capture_image_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(M_AXI_RVALID),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    capture_kernel_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(M_AXI_RVALID),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \column[0]_i_1 
       (.I0(input_memory_address[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \column[1]_i_1 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \column[2]_i_1 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[2]),
        .O(p_0_in__1[2]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \column[3]_i_1 
       (.I0(row),
        .I1(\row[3]_i_5_n_0 ),
        .I2(\row[3]_i_4_n_0 ),
        .I3(M_AXI_ARESETN),
        .O(\column[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \column[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\row[3]_i_9_n_0 ),
        .I2(\row[3]_i_8_n_0 ),
        .I3(\row[3]_i_7_n_0 ),
        .I4(\row[3]_i_6_n_0 ),
        .O(inc_image_addr));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \column[3]_i_3 
       (.I0(input_memory_address[1]),
        .I1(input_memory_address[0]),
        .I2(input_memory_address[2]),
        .I3(input_memory_address[3]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \column_k[0]_i_1 
       (.I0(weight_memory_address[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \column_k[1]_i_1 
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \column_k[2]_i_1 
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .I2(weight_memory_address[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'hF8FF)) 
    \column_k[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(kernel_cmpltd0__6),
        .I2(\row[3]_i_4_n_0 ),
        .I3(M_AXI_ARESETN),
        .O(\column_k[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \column_k[3]_i_2 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\row_k[3]_i_3_n_0 ),
        .I2(\row_k[3]_i_4_n_0 ),
        .I3(\row_k[3]_i_5_n_0 ),
        .I4(\row_k[3]_i_6_n_0 ),
        .O(inc_kernel_addr));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \column_k[3]_i_3 
       (.I0(weight_memory_address[1]),
        .I1(weight_memory_address[0]),
        .I2(weight_memory_address[2]),
        .I3(weight_memory_address[3]),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \column_k_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_kernel_addr),
        .D(p_0_in[0]),
        .Q(weight_memory_address[0]),
        .R(\column_k[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_k_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_kernel_addr),
        .D(p_0_in[1]),
        .Q(weight_memory_address[1]),
        .R(\column_k[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_k_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_kernel_addr),
        .D(p_0_in[2]),
        .Q(weight_memory_address[2]),
        .R(\column_k[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_k_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_kernel_addr),
        .D(p_0_in[3]),
        .Q(weight_memory_address[3]),
        .R(\column_k[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_image_addr),
        .D(p_0_in__1[0]),
        .Q(input_memory_address[0]),
        .R(\column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_image_addr),
        .D(p_0_in__1[1]),
        .Q(input_memory_address[1]),
        .R(\column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_image_addr),
        .D(p_0_in__1[2]),
        .Q(input_memory_address[2]),
        .R(\column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \column_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_image_addr),
        .D(p_0_in__1[3]),
        .Q(input_memory_address[3]),
        .R(\column[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h90000090)) 
    ended_convolution_INST_0
       (.I0(w_cmpltd1[2]),
        .I1(output_memory_address[6]),
        .I2(ended_convolution_INST_0_i_2_n_0),
        .I3(output_memory_address[7]),
        .I4(w_cmpltd1[3]),
        .O(ended_convolution));
  LUT6 #(
    .INIT(64'h5108AEF7AEF75108)) 
    ended_convolution_INST_0_i_1
       (.I0(image_dimension[5]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[5]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(w_cmpltd1[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96000000)) 
    ended_convolution_INST_0_i_2
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(output_memory_address[4]),
        .I3(w_cmpltd02_in),
        .I4(ended_convolution_INST_0_i_5_n_0),
        .O(ended_convolution_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h2DD2B44B4BB42DD2)) 
    ended_convolution_INST_0_i_3
       (.I0(kernel_dimension[5]),
        .I1(ended_convolution_INST_0_i_6_n_0),
        .I2(image_dimension[7]),
        .I3(kernel_dimension[7]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(w_cmpltd1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ended_convolution_INST_0_i_4
       (.I0(output_memory_address[1]),
        .I1(output_memory_address[0]),
        .I2(output_memory_address[3]),
        .I3(output_memory_address[2]),
        .O(w_cmpltd02_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h66969969)) 
    ended_convolution_INST_0_i_5
       (.I0(kernel_dimension[5]),
        .I1(image_dimension[5]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[4]),
        .I4(output_memory_address[5]),
        .O(ended_convolution_INST_0_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF440)) 
    ended_convolution_INST_0_i_6
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(image_dimension[5]),
        .I3(kernel_dimension[5]),
        .O(ended_convolution_INST_0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(M_AXI_ARADDR[2]),
        .O(i__carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \o_column[0]_i_1 
       (.I0(output_memory_address[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_column[1]_i_1 
       (.I0(output_memory_address[0]),
        .I1(output_memory_address[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_column[2]_i_1 
       (.I0(output_memory_address[0]),
        .I1(output_memory_address[1]),
        .I2(output_memory_address[2]),
        .O(p_0_in__3[2]));
  LUT6 #(
    .INIT(64'h2A000000FFFFFFFF)) 
    \o_column[3]_i_1 
       (.I0(\o_column[3]_i_4_n_0 ),
        .I1(\o_row[3]_i_7_n_0 ),
        .I2(\o_row[3]_i_6_n_0 ),
        .I3(\o_row[3]_i_5_n_0 ),
        .I4(\o_row[3]_i_4_n_0 ),
        .I5(M_AXI_ARESETN),
        .O(\o_column[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0440444444444444)) 
    \o_column[3]_i_2 
       (.I0(w_state[1]),
        .I1(w_state[0]),
        .I2(w_cmpltd1[3]),
        .I3(output_memory_address[7]),
        .I4(ended_convolution_INST_0_i_2_n_0),
        .I5(\o_column[3]_i_5_n_0 ),
        .O(start_write));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_column[3]_i_3 
       (.I0(output_memory_address[1]),
        .I1(output_memory_address[0]),
        .I2(output_memory_address[2]),
        .I3(output_memory_address[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \o_column[3]_i_4 
       (.I0(w_state[0]),
        .I1(w_state[1]),
        .O(\o_column[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \o_column[3]_i_5 
       (.I0(kernel_dimension[6]),
        .I1(image_dimension[6]),
        .I2(kernel_dimension[5]),
        .I3(ended_convolution_INST_0_i_6_n_0),
        .I4(output_memory_address[6]),
        .O(\o_column[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(start_write),
        .D(p_0_in__3[0]),
        .Q(output_memory_address[0]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(start_write),
        .D(p_0_in__3[1]),
        .Q(output_memory_address[1]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(start_write),
        .D(p_0_in__3[2]),
        .Q(output_memory_address[2]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(start_write),
        .D(p_0_in__3[3]),
        .Q(output_memory_address[3]),
        .R(\o_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_row[0]_i_1 
       (.I0(output_memory_address[4]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_row[1]_i_1 
       (.I0(output_memory_address[4]),
        .I1(output_memory_address[5]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_row[2]_i_1 
       (.I0(output_memory_address[4]),
        .I1(output_memory_address[5]),
        .I2(output_memory_address[6]),
        .O(p_0_in__4[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \o_row[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .O(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \o_row[3]_i_10 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(output_memory_address[4]),
        .O(\o_row[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAEFF00080008AEFF)) 
    \o_row[3]_i_11 
       (.I0(image_dimension[5]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[5]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(\o_row[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008880000)) 
    \o_row[3]_i_2 
       (.I0(\o_row[3]_i_4_n_0 ),
        .I1(\o_row[3]_i_5_n_0 ),
        .I2(\o_row[3]_i_6_n_0 ),
        .I3(\o_row[3]_i_7_n_0 ),
        .I4(w_state[0]),
        .I5(w_state[1]),
        .O(o_row));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_row[3]_i_3 
       (.I0(output_memory_address[5]),
        .I1(output_memory_address[4]),
        .I2(output_memory_address[6]),
        .I3(output_memory_address[7]),
        .O(p_0_in__4[3]));
  LUT6 #(
    .INIT(64'h6696969999696966)) 
    \o_row[3]_i_4 
       (.I0(image_dimension[3]),
        .I1(kernel_dimension[3]),
        .I2(kernel_dimension[2]),
        .I3(\o_row[3]_i_8_n_0 ),
        .I4(image_dimension[2]),
        .I5(output_memory_address[3]),
        .O(\o_row[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h28828228)) 
    \o_row[3]_i_5 
       (.I0(\o_row[3]_i_9_n_0 ),
        .I1(output_memory_address[2]),
        .I2(\o_row[3]_i_8_n_0 ),
        .I3(kernel_dimension[2]),
        .I4(image_dimension[2]),
        .O(\o_row[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h80000080)) 
    \o_row[3]_i_6 
       (.I0(ended_convolution_INST_0_i_5_n_0),
        .I1(w_cmpltd02_in),
        .I2(\o_row[3]_i_10_n_0 ),
        .I3(output_memory_address[6]),
        .I4(w_cmpltd1[2]),
        .O(\o_row[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44BB44B4BB4)) 
    \o_row[3]_i_7 
       (.I0(kernel_dimension[6]),
        .I1(image_dimension[6]),
        .I2(kernel_dimension[7]),
        .I3(image_dimension[7]),
        .I4(\o_row[3]_i_11_n_0 ),
        .I5(output_memory_address[7]),
        .O(\o_row[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hDF45)) 
    \o_row[3]_i_8 
       (.I0(kernel_dimension[1]),
        .I1(image_dimension[0]),
        .I2(kernel_dimension[0]),
        .I3(image_dimension[1]),
        .O(\o_row[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0069960069000069)) 
    \o_row[3]_i_9 
       (.I0(output_memory_address[1]),
        .I1(kernel_dimension[1]),
        .I2(image_dimension[1]),
        .I3(output_memory_address[0]),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\o_row[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(o_row),
        .D(p_0_in__4[0]),
        .Q(output_memory_address[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(o_row),
        .D(p_0_in__4[1]),
        .Q(output_memory_address[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(o_row),
        .D(p_0_in__4[2]),
        .Q(output_memory_address[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(o_row),
        .D(p_0_in__4[3]),
        .Q(output_memory_address[7]),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \row[0]_i_1 
       (.I0(input_memory_address[4]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row[1]_i_1 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row[2]_i_1 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[6]),
        .O(p_0_in__2[2]));
  LUT3 #(
    .INIT(8'hFD)) 
    \row[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(\row[3]_i_4_n_0 ),
        .I2(\row[3]_i_5_n_0 ),
        .O(row0));
  LUT5 #(
    .INIT(32'h70000000)) 
    \row[3]_i_2 
       (.I0(\row[3]_i_6_n_0 ),
        .I1(\row[3]_i_7_n_0 ),
        .I2(\FSM_onehot_state_reg_n_0_[3] ),
        .I3(\row[3]_i_8_n_0 ),
        .I4(\row[3]_i_9_n_0 ),
        .O(row));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row[3]_i_3 
       (.I0(input_memory_address[5]),
        .I1(input_memory_address[4]),
        .I2(input_memory_address[6]),
        .I3(input_memory_address[7]),
        .O(p_0_in__2[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \row[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\row[3]_i_9_n_0 ),
        .I2(\row[3]_i_8_n_0 ),
        .I3(\row[3]_i_7_n_0 ),
        .I4(\row[3]_i_6_n_0 ),
        .O(\row[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \row[3]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\row_k[3]_i_3_n_0 ),
        .I2(\row_k[3]_i_4_n_0 ),
        .I3(\row_k[3]_i_5_n_0 ),
        .I4(\row_k[3]_i_6_n_0 ),
        .O(\row[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \row[3]_i_6 
       (.I0(image_dimension[7]),
        .I1(image_dimension[5]),
        .I2(image_dimension[4]),
        .I3(image_dimension[6]),
        .I4(input_memory_address[7]),
        .O(\row[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \row[3]_i_7 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[6]),
        .I3(image_dimension[5]),
        .I4(image_dimension[4]),
        .I5(image_dimension[6]),
        .O(\row[3]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \row[3]_i_8 
       (.I0(image_dimension[3]),
        .I1(image_dimension[1]),
        .I2(image_dimension[0]),
        .I3(image_dimension[2]),
        .I4(input_memory_address[3]),
        .O(\row[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \row[3]_i_9 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[2]),
        .I3(image_dimension[1]),
        .I4(image_dimension[0]),
        .I5(image_dimension[2]),
        .O(\row[3]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \row_k[0]_i_1 
       (.I0(weight_memory_address[4]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \row_k[1]_i_1 
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \row_k[2]_i_1 
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .I2(weight_memory_address[6]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h2AAAAAAA00000000)) 
    \row_k[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(\row_k[3]_i_3_n_0 ),
        .I2(\row_k[3]_i_4_n_0 ),
        .I3(\row_k[3]_i_5_n_0 ),
        .I4(\row_k[3]_i_6_n_0 ),
        .I5(kernel_cmpltd0__6),
        .O(row_k));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \row_k[3]_i_2 
       (.I0(weight_memory_address[5]),
        .I1(weight_memory_address[4]),
        .I2(weight_memory_address[6]),
        .I3(weight_memory_address[7]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \row_k[3]_i_3 
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .I2(weight_memory_address[2]),
        .I3(kernel_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[2]),
        .O(\row_k[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \row_k[3]_i_4 
       (.I0(kernel_dimension[3]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[0]),
        .I3(kernel_dimension[2]),
        .I4(weight_memory_address[3]),
        .O(\row_k[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \row_k[3]_i_5 
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .I2(weight_memory_address[6]),
        .I3(kernel_dimension[5]),
        .I4(kernel_dimension[4]),
        .I5(kernel_dimension[6]),
        .O(\row_k[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAA95556)) 
    \row_k[3]_i_6 
       (.I0(kernel_dimension[7]),
        .I1(kernel_dimension[5]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[6]),
        .I4(weight_memory_address[7]),
        .O(\row_k[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8888888222222228)) 
    \row_k[3]_i_7 
       (.I0(\row_k[3]_i_3_n_0 ),
        .I1(weight_memory_address[3]),
        .I2(kernel_dimension[2]),
        .I3(kernel_dimension[0]),
        .I4(kernel_dimension[1]),
        .I5(kernel_dimension[3]),
        .O(kernel_cmpltd0__6));
  FDRE #(
    .INIT(1'b0)) 
    \row_k_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(row_k),
        .D(p_0_in__0[0]),
        .Q(weight_memory_address[4]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_k_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(row_k),
        .D(p_0_in__0[1]),
        .Q(weight_memory_address[5]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_k_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(row_k),
        .D(p_0_in__0[2]),
        .Q(weight_memory_address[6]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_k_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(row_k),
        .D(p_0_in__0[3]),
        .Q(weight_memory_address[7]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(row),
        .D(p_0_in__2[0]),
        .Q(input_memory_address[4]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(row),
        .D(p_0_in__2[1]),
        .Q(input_memory_address[5]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(row),
        .D(p_0_in__2[2]),
        .Q(input_memory_address[6]),
        .R(row0));
  FDRE #(
    .INIT(1'b0)) 
    \row_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(row),
        .D(p_0_in__2[3]),
        .Q(input_memory_address[7]),
        .R(row0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
