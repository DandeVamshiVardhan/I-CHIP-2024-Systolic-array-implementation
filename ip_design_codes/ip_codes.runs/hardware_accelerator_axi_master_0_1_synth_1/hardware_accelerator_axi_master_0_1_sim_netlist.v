// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:32:14 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_accelerator_axi_master_0_1_sim_netlist.v
// Design      : hardware_accelerator_axi_master_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master
   (M_AXI_WVALID,
    M_AXI_AWVALID,
    M_AXI_AWADDR,
    M_AXI_WDATA,
    M_AXI_BREADY,
    M_AXI_ARADDR,
    M_AXI_RREADY,
    output_memory_address,
    weight_memory_address,
    input_memory_address,
    ended_multiplication,
    ended_convolution,
    M_AXI_ARVALID,
    ended_reading_cnvtn_data,
    ended_reading_mltn_data,
    capture_wi_data,
    capture_in_data,
    M_AXI_WREADY,
    M_AXI_AWREADY,
    start_multiplication,
    M_AXI_ARESETN,
    M_AXI_ACLK,
    output_memory_data,
    M_AXI_RVALID,
    start_mltpn_writing_fsm,
    matrix_a_dimension,
    kernel_dimension,
    image_dimension,
    start_convolution,
    matrix_b_address,
    matrix_a_address,
    image_address,
    kernel_address,
    M_AXI_ARREADY,
    matrix_b_dimension,
    start_cnvtn_writing_fsm,
    M_AXI_BVALID);
  output M_AXI_WVALID;
  output M_AXI_AWVALID;
  output [31:0]M_AXI_AWADDR;
  output [31:0]M_AXI_WDATA;
  output M_AXI_BREADY;
  output [31:0]M_AXI_ARADDR;
  output M_AXI_RREADY;
  output [7:0]output_memory_address;
  output [7:0]weight_memory_address;
  output [7:0]input_memory_address;
  output ended_multiplication;
  output ended_convolution;
  output M_AXI_ARVALID;
  output ended_reading_cnvtn_data;
  output ended_reading_mltn_data;
  output capture_wi_data;
  output capture_in_data;
  input M_AXI_WREADY;
  input M_AXI_AWREADY;
  input start_multiplication;
  input M_AXI_ARESETN;
  input M_AXI_ACLK;
  input [31:0]output_memory_data;
  input M_AXI_RVALID;
  input start_mltpn_writing_fsm;
  input [7:0]matrix_a_dimension;
  input [7:0]kernel_dimension;
  input [7:0]image_dimension;
  input start_convolution;
  input [31:0]matrix_b_address;
  input [31:0]matrix_a_address;
  input [31:0]image_address;
  input [31:0]kernel_address;
  input M_AXI_ARREADY;
  input [7:0]matrix_b_dimension;
  input start_cnvtn_writing_fsm;
  input M_AXI_BVALID;

  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[10]_i_1_n_0 ;
  wire \FSM_onehot_state[11]_i_1_n_0 ;
  wire \FSM_onehot_state[12]_i_1_n_0 ;
  wire \FSM_onehot_state[13]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[6]_i_1_n_0 ;
  wire \FSM_onehot_state[7]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_1_n_0 ;
  wire \FSM_onehot_state[9]_i_1_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[10] ;
  wire \FSM_onehot_state_reg_n_0_[11] ;
  wire \FSM_onehot_state_reg_n_0_[12] ;
  wire \FSM_onehot_state_reg_n_0_[13] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[6] ;
  wire \FSM_onehot_state_reg_n_0_[7] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire \FSM_onehot_state_reg_n_0_[9] ;
  wire \FSM_onehot_w_state[0]_i_1_n_0 ;
  wire \FSM_onehot_w_state[1]_i_1_n_0 ;
  wire \FSM_onehot_w_state[2]_i_1_n_0 ;
  wire \FSM_onehot_w_state[3]_i_1_n_0 ;
  wire \FSM_onehot_w_state[4]_i_1_n_0 ;
  wire \FSM_onehot_w_state[5]_i_1_n_0 ;
  wire \FSM_onehot_w_state[6]_i_1_n_0 ;
  wire \FSM_onehot_w_state[7]_i_1_n_0 ;
  wire \FSM_onehot_w_state_reg_n_0_[0] ;
  wire \FSM_onehot_w_state_reg_n_0_[1] ;
  wire \FSM_onehot_w_state_reg_n_0_[2] ;
  wire \FSM_onehot_w_state_reg_n_0_[3] ;
  wire \FSM_onehot_w_state_reg_n_0_[4] ;
  wire \FSM_onehot_w_state_reg_n_0_[5] ;
  wire \FSM_onehot_w_state_reg_n_0_[6] ;
  wire \FSM_onehot_w_state_reg_n_0_[7] ;
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
  wire axi_araddr;
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
  wire \axi_araddr[0]_i_1_n_0 ;
  wire \axi_araddr[0]_i_2_n_0 ;
  wire \axi_araddr[10]_i_1_n_0 ;
  wire \axi_araddr[10]_i_2_n_0 ;
  wire \axi_araddr[11]_i_1_n_0 ;
  wire \axi_araddr[11]_i_2_n_0 ;
  wire \axi_araddr[12]_i_1_n_0 ;
  wire \axi_araddr[12]_i_2_n_0 ;
  wire \axi_araddr[13]_i_1_n_0 ;
  wire \axi_araddr[13]_i_2_n_0 ;
  wire \axi_araddr[14]_i_1_n_0 ;
  wire \axi_araddr[14]_i_2_n_0 ;
  wire \axi_araddr[15]_i_1_n_0 ;
  wire \axi_araddr[15]_i_2_n_0 ;
  wire \axi_araddr[16]_i_1_n_0 ;
  wire \axi_araddr[16]_i_2_n_0 ;
  wire \axi_araddr[17]_i_1_n_0 ;
  wire \axi_araddr[17]_i_2_n_0 ;
  wire \axi_araddr[18]_i_1_n_0 ;
  wire \axi_araddr[18]_i_2_n_0 ;
  wire \axi_araddr[19]_i_1_n_0 ;
  wire \axi_araddr[19]_i_2_n_0 ;
  wire \axi_araddr[1]_i_1_n_0 ;
  wire \axi_araddr[1]_i_2_n_0 ;
  wire \axi_araddr[20]_i_1_n_0 ;
  wire \axi_araddr[20]_i_2_n_0 ;
  wire \axi_araddr[21]_i_1_n_0 ;
  wire \axi_araddr[21]_i_2_n_0 ;
  wire \axi_araddr[22]_i_1_n_0 ;
  wire \axi_araddr[22]_i_2_n_0 ;
  wire \axi_araddr[23]_i_1_n_0 ;
  wire \axi_araddr[23]_i_2_n_0 ;
  wire \axi_araddr[24]_i_1_n_0 ;
  wire \axi_araddr[24]_i_2_n_0 ;
  wire \axi_araddr[25]_i_1_n_0 ;
  wire \axi_araddr[25]_i_2_n_0 ;
  wire \axi_araddr[26]_i_1_n_0 ;
  wire \axi_araddr[26]_i_2_n_0 ;
  wire \axi_araddr[27]_i_1_n_0 ;
  wire \axi_araddr[27]_i_2_n_0 ;
  wire \axi_araddr[28]_i_1_n_0 ;
  wire \axi_araddr[28]_i_2_n_0 ;
  wire \axi_araddr[29]_i_1_n_0 ;
  wire \axi_araddr[29]_i_2_n_0 ;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[2]_i_2_n_0 ;
  wire \axi_araddr[30]_i_1_n_0 ;
  wire \axi_araddr[30]_i_2_n_0 ;
  wire \axi_araddr[31]_i_2_n_0 ;
  wire \axi_araddr[31]_i_5_n_0 ;
  wire \axi_araddr[31]_i_6_n_0 ;
  wire \axi_araddr[31]_i_7_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire \axi_araddr[3]_i_2_n_0 ;
  wire \axi_araddr[4]_i_1_n_0 ;
  wire \axi_araddr[4]_i_2_n_0 ;
  wire \axi_araddr[5]_i_1_n_0 ;
  wire \axi_araddr[5]_i_2_n_0 ;
  wire \axi_araddr[6]_i_1_n_0 ;
  wire \axi_araddr[6]_i_2_n_0 ;
  wire \axi_araddr[7]_i_1_n_0 ;
  wire \axi_araddr[7]_i_2_n_0 ;
  wire \axi_araddr[8]_i_1_n_0 ;
  wire \axi_araddr[8]_i_2_n_0 ;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr[9]_i_2_n_0 ;
  wire axi_arvalid0;
  wire axi_arvalid_i_2_n_0;
  wire [31:1]axi_awaddr0;
  wire axi_awaddr0_carry__0_n_0;
  wire axi_awaddr0_carry__0_n_1;
  wire axi_awaddr0_carry__0_n_2;
  wire axi_awaddr0_carry__0_n_3;
  wire axi_awaddr0_carry__0_n_4;
  wire axi_awaddr0_carry__0_n_5;
  wire axi_awaddr0_carry__0_n_6;
  wire axi_awaddr0_carry__0_n_7;
  wire axi_awaddr0_carry__1_n_0;
  wire axi_awaddr0_carry__1_n_1;
  wire axi_awaddr0_carry__1_n_2;
  wire axi_awaddr0_carry__1_n_3;
  wire axi_awaddr0_carry__1_n_4;
  wire axi_awaddr0_carry__1_n_5;
  wire axi_awaddr0_carry__1_n_6;
  wire axi_awaddr0_carry__1_n_7;
  wire axi_awaddr0_carry__2_n_2;
  wire axi_awaddr0_carry__2_n_3;
  wire axi_awaddr0_carry__2_n_4;
  wire axi_awaddr0_carry__2_n_5;
  wire axi_awaddr0_carry__2_n_6;
  wire axi_awaddr0_carry__2_n_7;
  wire axi_awaddr0_carry_i_1_n_0;
  wire axi_awaddr0_carry_n_0;
  wire axi_awaddr0_carry_n_1;
  wire axi_awaddr0_carry_n_2;
  wire axi_awaddr0_carry_n_3;
  wire axi_awaddr0_carry_n_4;
  wire axi_awaddr0_carry_n_5;
  wire axi_awaddr0_carry_n_6;
  wire axi_awaddr0_carry_n_7;
  wire \axi_awaddr[31]_i_1_n_0 ;
  wire \axi_awaddr[31]_i_2_n_0 ;
  wire axi_awvalid_i_1_n_0;
  wire axi_bready0;
  wire axi_rready_i_1_n_0;
  wire \axi_wdata[31]_i_1_n_0 ;
  wire axi_wvalid_i_1_n_0;
  wire capture_in_data;
  wire capture_wi_data;
  wire [2:2]cnvtn_w_cmpltd1;
  wire cnvtn_w_cmpltd__0;
  wire [31:1]data4;
  wire ended_convolution;
  wire ended_convolution_INST_0_i_3_n_0;
  wire ended_convolution_INST_0_i_4_n_0;
  wire ended_convolution_INST_0_i_5_n_0;
  wire ended_convolution_INST_0_i_6_n_0;
  wire ended_multiplication;
  wire ended_multiplication_INST_0_i_2_n_0;
  wire ended_multiplication_INST_0_i_3_n_0;
  wire ended_reading_cnvtn_data;
  wire ended_reading_cnvtn_data_INST_0_i_3_n_0;
  wire ended_reading_cnvtn_data_INST_0_i_4_n_0;
  wire ended_reading_mltn_data;
  wire ended_reading_mltn_data_INST_0_i_1_n_0;
  wire i__carry_i_1_n_0;
  wire [31:0]image_address;
  wire [7:0]image_dimension;
  wire \in_column[3]_i_1_n_0 ;
  wire \in_row[3]_i_10_n_0 ;
  wire \in_row[3]_i_11_n_0 ;
  wire \in_row[3]_i_12_n_0 ;
  wire \in_row[3]_i_13_n_0 ;
  wire \in_row[3]_i_14_n_0 ;
  wire \in_row[3]_i_15_n_0 ;
  wire \in_row[3]_i_16_n_0 ;
  wire \in_row[3]_i_17_n_0 ;
  wire \in_row[3]_i_1_n_0 ;
  wire \in_row[3]_i_4_n_0 ;
  wire \in_row[3]_i_5_n_0 ;
  wire inc_in_column;
  wire inc_in_row;
  wire inc_o_column;
  wire inc_o_row;
  wire inc_wi_column;
  wire inc_wi_row;
  wire initialise_cnvtn_w_addr__0;
  wire initialise_image_addr;
  wire initialise_matrix_a_addr;
  wire [7:0]input_memory_address;
  wire [31:0]kernel_address;
  wire [7:0]kernel_dimension;
  wire [31:0]matrix_a_address;
  wire [7:0]matrix_a_dimension;
  wire [31:0]matrix_b_address;
  wire [7:0]matrix_b_dimension;
  wire mltpn_w_cmpltd__0;
  wire o_clm_eq_cvltn__6;
  wire o_clm_eq_mltpn__6;
  wire \o_column[3]_i_1_n_0 ;
  wire \o_column[3]_i_5_n_0 ;
  wire \o_row[3]_i_1_n_0 ;
  wire \o_row[3]_i_5_n_0 ;
  wire \o_row[3]_i_6_n_0 ;
  wire \o_row[3]_i_7_n_0 ;
  wire \o_row[3]_i_8_n_0 ;
  wire [7:0]output_memory_address;
  wire [31:0]output_memory_data;
  wire [3:0]p_0_in;
  wire [3:0]p_0_in__0;
  wire [1:0]p_0_in__0_0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [1:0]p_1_in;
  wire [31:0]p_2_in;
  wire start_cnvtn_writing_fsm;
  wire start_convolution;
  wire start_mltpn_writing_fsm;
  wire start_multiplication;
  wire [7:0]weight_memory_address;
  wire wi_clm_eq_b__6;
  wire wi_clm_eq_kernel__6;
  wire \wi_column[3]_i_1_n_0 ;
  wire \wi_row[3]_i_1_n_0 ;
  wire \wi_row[3]_i_6_n_0 ;
  wire \wi_row[3]_i_7_n_0 ;
  wire \wi_row[3]_i_8_n_0 ;
  wire wi_row_eq_b__6;
  wire wi_row_eq_kernel__6;
  wire [7:6]\NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED ;
  wire [7:7]\NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED ;
  wire [7:6]NLW_axi_awaddr0_carry__2_CO_UNCONNECTED;
  wire [7:7]NLW_axi_awaddr0_carry__2_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_convolution),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[10]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[9] ),
        .I1(M_AXI_RVALID),
        .O(\FSM_onehot_state[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \FSM_onehot_state[11]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(ended_reading_mltn_data_INST_0_i_1_n_0),
        .I2(\in_row[3]_i_4_n_0 ),
        .O(\FSM_onehot_state[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[12]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(\FSM_onehot_state_reg_n_0_[11] ),
        .O(\FSM_onehot_state[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[13]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[12] ),
        .I1(M_AXI_RVALID),
        .O(\FSM_onehot_state[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(p_1_in[1]),
        .I2(p_1_in[0]),
        .I3(start_convolution),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(M_AXI_RVALID),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF70)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(wi_row_eq_kernel__6),
        .I1(wi_clm_eq_kernel__6),
        .I2(\FSM_onehot_state_reg_n_0_[6] ),
        .I3(\in_row[3]_i_5_n_0 ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[6]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(M_AXI_RVALID),
        .O(\FSM_onehot_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \FSM_onehot_state[7]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(wi_clm_eq_kernel__6),
        .I2(wi_row_eq_kernel__6),
        .I3(start_multiplication),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF2A2A2A)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(p_0_in__0_0[1]),
        .I2(p_0_in__0_0[0]),
        .I3(start_multiplication),
        .I4(\FSM_onehot_state_reg_n_0_[7] ),
        .O(\FSM_onehot_state[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \FSM_onehot_state[9]_i_1 
       (.I0(M_AXI_RVALID),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .O(\FSM_onehot_state[9]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[0] ),
        .S(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[10]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[10] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[11]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[11] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[12]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[12] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[13]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[13] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[6] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[7] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_state[9]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[9] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_w_state[0]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[0] ),
        .I1(start_cnvtn_writing_fsm),
        .O(\FSM_onehot_w_state[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_onehot_w_state[1]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[7] ),
        .I1(start_cnvtn_writing_fsm),
        .I2(\FSM_onehot_w_state_reg_n_0_[0] ),
        .O(\FSM_onehot_w_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \FSM_onehot_w_state[2]_i_1 
       (.I0(cnvtn_w_cmpltd__0),
        .I1(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I2(start_mltpn_writing_fsm),
        .I3(\FSM_onehot_w_state_reg_n_0_[2] ),
        .O(\FSM_onehot_w_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFF8F8F8)) 
    \FSM_onehot_w_state[3]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I1(start_mltpn_writing_fsm),
        .I2(\FSM_onehot_w_state_reg_n_0_[5] ),
        .I3(mltpn_w_cmpltd__0),
        .I4(\FSM_onehot_w_state_reg_n_0_[3] ),
        .O(\FSM_onehot_w_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h2F22)) 
    \FSM_onehot_w_state[4]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[3] ),
        .I1(mltpn_w_cmpltd__0),
        .I2(M_AXI_WREADY),
        .I3(\FSM_onehot_w_state_reg_n_0_[4] ),
        .O(\FSM_onehot_w_state[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_state[5]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[4] ),
        .I1(M_AXI_WREADY),
        .O(\FSM_onehot_w_state[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_onehot_w_state[6]_i_1 
       (.I0(cnvtn_w_cmpltd__0),
        .I1(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I2(M_AXI_WREADY),
        .I3(\FSM_onehot_w_state_reg_n_0_[6] ),
        .O(\FSM_onehot_w_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_w_state[7]_i_1 
       (.I0(\FSM_onehot_w_state_reg_n_0_[6] ),
        .I1(M_AXI_WREADY),
        .O(\FSM_onehot_w_state[7]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_w_state_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[0]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[0] ),
        .S(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[1] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[2] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[3] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[4] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[5] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[6] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_w_state_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(\FSM_onehot_w_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_w_state_reg_n_0_[7] ),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  CARRY8 \axi_araddr0_inferred__0/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry_n_0 ,\axi_araddr0_inferred__0/i__carry_n_1 ,\axi_araddr0_inferred__0/i__carry_n_2 ,\axi_araddr0_inferred__0/i__carry_n_3 ,\axi_araddr0_inferred__0/i__carry_n_4 ,\axi_araddr0_inferred__0/i__carry_n_5 ,\axi_araddr0_inferred__0/i__carry_n_6 ,\axi_araddr0_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,M_AXI_ARADDR[2],1'b0}),
        .O(data4[8:1]),
        .S({M_AXI_ARADDR[8:3],i__carry_i_1_n_0,M_AXI_ARADDR[1]}));
  CARRY8 \axi_araddr0_inferred__0/i__carry__0 
       (.CI(\axi_araddr0_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry__0_n_0 ,\axi_araddr0_inferred__0/i__carry__0_n_1 ,\axi_araddr0_inferred__0/i__carry__0_n_2 ,\axi_araddr0_inferred__0/i__carry__0_n_3 ,\axi_araddr0_inferred__0/i__carry__0_n_4 ,\axi_araddr0_inferred__0/i__carry__0_n_5 ,\axi_araddr0_inferred__0/i__carry__0_n_6 ,\axi_araddr0_inferred__0/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data4[16:9]),
        .S(M_AXI_ARADDR[16:9]));
  CARRY8 \axi_araddr0_inferred__0/i__carry__1 
       (.CI(\axi_araddr0_inferred__0/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_araddr0_inferred__0/i__carry__1_n_0 ,\axi_araddr0_inferred__0/i__carry__1_n_1 ,\axi_araddr0_inferred__0/i__carry__1_n_2 ,\axi_araddr0_inferred__0/i__carry__1_n_3 ,\axi_araddr0_inferred__0/i__carry__1_n_4 ,\axi_araddr0_inferred__0/i__carry__1_n_5 ,\axi_araddr0_inferred__0/i__carry__1_n_6 ,\axi_araddr0_inferred__0/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(data4[24:17]),
        .S(M_AXI_ARADDR[24:17]));
  CARRY8 \axi_araddr0_inferred__0/i__carry__2 
       (.CI(\axi_araddr0_inferred__0/i__carry__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED [7:6],\axi_araddr0_inferred__0/i__carry__2_n_2 ,\axi_araddr0_inferred__0/i__carry__2_n_3 ,\axi_araddr0_inferred__0/i__carry__2_n_4 ,\axi_araddr0_inferred__0/i__carry__2_n_5 ,\axi_araddr0_inferred__0/i__carry__2_n_6 ,\axi_araddr0_inferred__0/i__carry__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED [7],data4[31:25]}),
        .S({1'b0,M_AXI_ARADDR[31:25]}));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[0]_i_1 
       (.I0(\axi_araddr[0]_i_2_n_0 ),
        .I1(M_AXI_ARADDR[0]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[0]),
        .O(\axi_araddr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[0]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[0]),
        .I2(image_address[0]),
        .I3(kernel_address[0]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[10]_i_1 
       (.I0(\axi_araddr[10]_i_2_n_0 ),
        .I1(data4[10]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[10]),
        .O(\axi_araddr[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[10]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[10]),
        .I2(image_address[10]),
        .I3(kernel_address[10]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[11]_i_1 
       (.I0(\axi_araddr[11]_i_2_n_0 ),
        .I1(data4[11]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[11]),
        .O(\axi_araddr[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[11]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[11]),
        .I2(image_address[11]),
        .I3(kernel_address[11]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[12]_i_1 
       (.I0(\axi_araddr[12]_i_2_n_0 ),
        .I1(data4[12]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[12]),
        .O(\axi_araddr[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[12]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[12]),
        .I2(image_address[12]),
        .I3(kernel_address[12]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[13]_i_1 
       (.I0(\axi_araddr[13]_i_2_n_0 ),
        .I1(data4[13]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[13]),
        .O(\axi_araddr[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[13]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[13]),
        .I2(image_address[13]),
        .I3(kernel_address[13]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[14]_i_1 
       (.I0(\axi_araddr[14]_i_2_n_0 ),
        .I1(data4[14]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[14]),
        .O(\axi_araddr[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[14]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[14]),
        .I2(image_address[14]),
        .I3(kernel_address[14]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[15]_i_1 
       (.I0(\axi_araddr[15]_i_2_n_0 ),
        .I1(data4[15]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[15]),
        .O(\axi_araddr[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[15]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[15]),
        .I2(image_address[15]),
        .I3(kernel_address[15]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[16]_i_1 
       (.I0(\axi_araddr[16]_i_2_n_0 ),
        .I1(data4[16]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[16]),
        .O(\axi_araddr[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[16]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[16]),
        .I2(image_address[16]),
        .I3(kernel_address[16]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[17]_i_1 
       (.I0(\axi_araddr[17]_i_2_n_0 ),
        .I1(data4[17]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[17]),
        .O(\axi_araddr[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[17]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[17]),
        .I2(image_address[17]),
        .I3(kernel_address[17]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[18]_i_1 
       (.I0(\axi_araddr[18]_i_2_n_0 ),
        .I1(data4[18]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[18]),
        .O(\axi_araddr[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[18]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[18]),
        .I2(image_address[18]),
        .I3(kernel_address[18]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[19]_i_1 
       (.I0(\axi_araddr[19]_i_2_n_0 ),
        .I1(data4[19]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[19]),
        .O(\axi_araddr[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[19]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[19]),
        .I2(image_address[19]),
        .I3(kernel_address[19]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[1]_i_1 
       (.I0(\axi_araddr[1]_i_2_n_0 ),
        .I1(data4[1]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[1]),
        .O(\axi_araddr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[1]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[1]),
        .I2(image_address[1]),
        .I3(kernel_address[1]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[20]_i_1 
       (.I0(\axi_araddr[20]_i_2_n_0 ),
        .I1(data4[20]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[20]),
        .O(\axi_araddr[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[20]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[20]),
        .I2(image_address[20]),
        .I3(kernel_address[20]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[21]_i_1 
       (.I0(\axi_araddr[21]_i_2_n_0 ),
        .I1(data4[21]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[21]),
        .O(\axi_araddr[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[21]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[21]),
        .I2(image_address[21]),
        .I3(kernel_address[21]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[22]_i_1 
       (.I0(\axi_araddr[22]_i_2_n_0 ),
        .I1(data4[22]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[22]),
        .O(\axi_araddr[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[22]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[22]),
        .I2(image_address[22]),
        .I3(kernel_address[22]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[23]_i_1 
       (.I0(\axi_araddr[23]_i_2_n_0 ),
        .I1(data4[23]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[23]),
        .O(\axi_araddr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[23]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[23]),
        .I2(image_address[23]),
        .I3(kernel_address[23]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[24]_i_1 
       (.I0(\axi_araddr[24]_i_2_n_0 ),
        .I1(data4[24]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[24]),
        .O(\axi_araddr[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[24]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[24]),
        .I2(image_address[24]),
        .I3(kernel_address[24]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[25]_i_1 
       (.I0(\axi_araddr[25]_i_2_n_0 ),
        .I1(data4[25]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[25]),
        .O(\axi_araddr[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[25]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[25]),
        .I2(image_address[25]),
        .I3(kernel_address[25]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[26]_i_1 
       (.I0(\axi_araddr[26]_i_2_n_0 ),
        .I1(data4[26]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[26]),
        .O(\axi_araddr[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[26]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[26]),
        .I2(image_address[26]),
        .I3(kernel_address[26]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[27]_i_1 
       (.I0(\axi_araddr[27]_i_2_n_0 ),
        .I1(data4[27]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[27]),
        .O(\axi_araddr[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[27]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[27]),
        .I2(image_address[27]),
        .I3(kernel_address[27]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[28]_i_1 
       (.I0(\axi_araddr[28]_i_2_n_0 ),
        .I1(data4[28]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[28]),
        .O(\axi_araddr[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[28]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[28]),
        .I2(image_address[28]),
        .I3(kernel_address[28]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[29]_i_1 
       (.I0(\axi_araddr[29]_i_2_n_0 ),
        .I1(data4[29]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[29]),
        .O(\axi_araddr[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[29]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[29]),
        .I2(image_address[29]),
        .I3(kernel_address[29]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[2]_i_1 
       (.I0(\axi_araddr[2]_i_2_n_0 ),
        .I1(data4[2]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[2]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[2]),
        .I2(image_address[2]),
        .I3(kernel_address[2]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[30]_i_1 
       (.I0(\axi_araddr[30]_i_2_n_0 ),
        .I1(data4[30]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[30]),
        .O(\axi_araddr[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[30]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[30]),
        .I2(image_address[30]),
        .I3(kernel_address[30]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF8)) 
    \axi_araddr[31]_i_1 
       (.I0(M_AXI_ARREADY),
        .I1(M_AXI_ARVALID),
        .I2(initialise_image_addr),
        .I3(initialise_matrix_a_addr),
        .I4(\in_row[3]_i_5_n_0 ),
        .I5(\in_row[3]_i_4_n_0 ),
        .O(axi_araddr));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[31]_i_2 
       (.I0(\axi_araddr[31]_i_5_n_0 ),
        .I1(data4[31]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[31]),
        .O(\axi_araddr[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[31]_i_3 
       (.I0(\FSM_onehot_state_reg_n_0_[0] ),
        .I1(start_convolution),
        .O(initialise_image_addr));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_araddr[31]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(start_multiplication),
        .O(initialise_matrix_a_addr));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[31]_i_5 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[31]),
        .I2(image_address[31]),
        .I3(kernel_address[31]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFF8F8F8)) 
    \axi_araddr[31]_i_6 
       (.I0(\FSM_onehot_state_reg_n_0_[7] ),
        .I1(start_multiplication),
        .I2(\in_row[3]_i_5_n_0 ),
        .I3(start_convolution),
        .I4(\FSM_onehot_state_reg_n_0_[0] ),
        .I5(\in_row[3]_i_4_n_0 ),
        .O(\axi_araddr[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000002A002A002A)) 
    \axi_araddr[31]_i_7 
       (.I0(\in_row[3]_i_4_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[7] ),
        .I2(start_multiplication),
        .I3(\in_row[3]_i_5_n_0 ),
        .I4(start_convolution),
        .I5(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\axi_araddr[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[3]_i_1 
       (.I0(\axi_araddr[3]_i_2_n_0 ),
        .I1(data4[3]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[3]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[3]),
        .I2(image_address[3]),
        .I3(kernel_address[3]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[4]_i_1 
       (.I0(\axi_araddr[4]_i_2_n_0 ),
        .I1(data4[4]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[4]),
        .O(\axi_araddr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[4]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[4]),
        .I2(image_address[4]),
        .I3(kernel_address[4]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[5]_i_1 
       (.I0(\axi_araddr[5]_i_2_n_0 ),
        .I1(data4[5]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[5]),
        .O(\axi_araddr[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[5]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[5]),
        .I2(image_address[5]),
        .I3(kernel_address[5]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[6]_i_1 
       (.I0(\axi_araddr[6]_i_2_n_0 ),
        .I1(data4[6]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[6]),
        .O(\axi_araddr[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[6]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[6]),
        .I2(image_address[6]),
        .I3(kernel_address[6]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[7]_i_1 
       (.I0(\axi_araddr[7]_i_2_n_0 ),
        .I1(data4[7]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[7]),
        .O(\axi_araddr[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[7]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[7]),
        .I2(image_address[7]),
        .I3(kernel_address[7]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[8]_i_1 
       (.I0(\axi_araddr[8]_i_2_n_0 ),
        .I1(data4[8]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[8]),
        .O(\axi_araddr[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[8]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[8]),
        .I2(image_address[8]),
        .I3(kernel_address[8]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFAEAEAE)) 
    \axi_araddr[9]_i_1 
       (.I0(\axi_araddr[9]_i_2_n_0 ),
        .I1(data4[9]),
        .I2(\axi_araddr[31]_i_6_n_0 ),
        .I3(\axi_araddr[31]_i_7_n_0 ),
        .I4(matrix_b_address[9]),
        .O(\axi_araddr[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08888)) 
    \axi_araddr[9]_i_2 
       (.I0(initialise_matrix_a_addr),
        .I1(matrix_a_address[9]),
        .I2(image_address[9]),
        .I3(kernel_address[9]),
        .I4(initialise_image_addr),
        .I5(\in_row[3]_i_5_n_0 ),
        .O(\axi_araddr[9]_i_2_n_0 ));
  FDRE \axi_araddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[0]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[0]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[10]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[10]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[11]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[11]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[12]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[12]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[13]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[13]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[14]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[14]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[15]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[15]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[16]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[16]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[17]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[17]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[18]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[18]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[19]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[19]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[1]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[1]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[20]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[20]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[21]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[21]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[22]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[22]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[23]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[23]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[24]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[24]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[25]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[25]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[26]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[26]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[27]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[27]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[28]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[28]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[29]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[29]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[2]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[30]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[30]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[31]_i_2_n_0 ),
        .Q(M_AXI_ARADDR[31]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[3]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[4]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[4]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[5]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[5]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[6]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[6]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[7]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[7]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[8]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[8]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_araddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(axi_araddr),
        .D(\axi_araddr[9]_i_1_n_0 ),
        .Q(M_AXI_ARADDR[9]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    axi_arvalid_i_1
       (.I0(\axi_araddr[31]_i_6_n_0 ),
        .I1(M_AXI_ARESETN),
        .O(axi_arvalid0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF4)) 
    axi_arvalid_i_2
       (.I0(M_AXI_ARREADY),
        .I1(M_AXI_ARVALID),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_n_0_[4] ),
        .O(axi_arvalid_i_2_n_0));
  FDRE axi_arvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arvalid_i_2_n_0),
        .Q(M_AXI_ARVALID),
        .R(axi_arvalid0));
  CARRY8 axi_awaddr0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({axi_awaddr0_carry_n_0,axi_awaddr0_carry_n_1,axi_awaddr0_carry_n_2,axi_awaddr0_carry_n_3,axi_awaddr0_carry_n_4,axi_awaddr0_carry_n_5,axi_awaddr0_carry_n_6,axi_awaddr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,M_AXI_AWADDR[2],1'b0}),
        .O(axi_awaddr0[8:1]),
        .S({M_AXI_AWADDR[8:3],axi_awaddr0_carry_i_1_n_0,M_AXI_AWADDR[1]}));
  CARRY8 axi_awaddr0_carry__0
       (.CI(axi_awaddr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({axi_awaddr0_carry__0_n_0,axi_awaddr0_carry__0_n_1,axi_awaddr0_carry__0_n_2,axi_awaddr0_carry__0_n_3,axi_awaddr0_carry__0_n_4,axi_awaddr0_carry__0_n_5,axi_awaddr0_carry__0_n_6,axi_awaddr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(axi_awaddr0[16:9]),
        .S(M_AXI_AWADDR[16:9]));
  CARRY8 axi_awaddr0_carry__1
       (.CI(axi_awaddr0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({axi_awaddr0_carry__1_n_0,axi_awaddr0_carry__1_n_1,axi_awaddr0_carry__1_n_2,axi_awaddr0_carry__1_n_3,axi_awaddr0_carry__1_n_4,axi_awaddr0_carry__1_n_5,axi_awaddr0_carry__1_n_6,axi_awaddr0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(axi_awaddr0[24:17]),
        .S(M_AXI_AWADDR[24:17]));
  CARRY8 axi_awaddr0_carry__2
       (.CI(axi_awaddr0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_axi_awaddr0_carry__2_CO_UNCONNECTED[7:6],axi_awaddr0_carry__2_n_2,axi_awaddr0_carry__2_n_3,axi_awaddr0_carry__2_n_4,axi_awaddr0_carry__2_n_5,axi_awaddr0_carry__2_n_6,axi_awaddr0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_axi_awaddr0_carry__2_O_UNCONNECTED[7],axi_awaddr0[31:25]}),
        .S({1'b0,M_AXI_AWADDR[31:25]}));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awaddr0_carry_i_1
       (.I0(M_AXI_AWADDR[2]),
        .O(axi_awaddr0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[0]_i_1 
       (.I0(M_AXI_AWADDR[0]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[0]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[10]_i_1 
       (.I0(axi_awaddr0[10]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[10]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[10]),
        .O(p_2_in[10]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[11]_i_1 
       (.I0(axi_awaddr0[11]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[11]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[11]),
        .O(p_2_in[11]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[12]_i_1 
       (.I0(axi_awaddr0[12]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[12]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[12]),
        .O(p_2_in[12]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[13]_i_1 
       (.I0(axi_awaddr0[13]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[13]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[13]),
        .O(p_2_in[13]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[14]_i_1 
       (.I0(axi_awaddr0[14]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[14]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[14]),
        .O(p_2_in[14]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[15]_i_1 
       (.I0(axi_awaddr0[15]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[15]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[15]),
        .O(p_2_in[15]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[16]_i_1 
       (.I0(axi_awaddr0[16]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[16]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[16]),
        .O(p_2_in[16]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[17]_i_1 
       (.I0(axi_awaddr0[17]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[17]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[17]),
        .O(p_2_in[17]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[18]_i_1 
       (.I0(axi_awaddr0[18]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[18]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[18]),
        .O(p_2_in[18]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[19]_i_1 
       (.I0(axi_awaddr0[19]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[19]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[19]),
        .O(p_2_in[19]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[1]_i_1 
       (.I0(axi_awaddr0[1]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[1]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[1]),
        .O(p_2_in[1]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[20]_i_1 
       (.I0(axi_awaddr0[20]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[20]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[20]),
        .O(p_2_in[20]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[21]_i_1 
       (.I0(axi_awaddr0[21]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[21]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[21]),
        .O(p_2_in[21]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[22]_i_1 
       (.I0(axi_awaddr0[22]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[22]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[22]),
        .O(p_2_in[22]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[23]_i_1 
       (.I0(axi_awaddr0[23]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[23]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[23]),
        .O(p_2_in[23]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[24]_i_1 
       (.I0(axi_awaddr0[24]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[24]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[24]),
        .O(p_2_in[24]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[25]_i_1 
       (.I0(axi_awaddr0[25]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[25]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[25]),
        .O(p_2_in[25]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[26]_i_1 
       (.I0(axi_awaddr0[26]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[26]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[26]),
        .O(p_2_in[26]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[27]_i_1 
       (.I0(axi_awaddr0[27]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[27]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[27]),
        .O(p_2_in[27]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[28]_i_1 
       (.I0(axi_awaddr0[28]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[28]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[28]),
        .O(p_2_in[28]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[29]_i_1 
       (.I0(axi_awaddr0[29]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[29]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[29]),
        .O(p_2_in[29]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[2]_i_1 
       (.I0(axi_awaddr0[2]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[2]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[2]),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[30]_i_1 
       (.I0(axi_awaddr0[30]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[30]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[30]),
        .O(p_2_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_awaddr[31]_i_1 
       (.I0(M_AXI_ARESETN),
        .O(\axi_awaddr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_awaddr[31]_i_2 
       (.I0(M_AXI_AWVALID),
        .I1(M_AXI_AWREADY),
        .I2(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I3(start_mltpn_writing_fsm),
        .I4(\FSM_onehot_w_state_reg_n_0_[0] ),
        .I5(start_cnvtn_writing_fsm),
        .O(\axi_awaddr[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[31]_i_3 
       (.I0(axi_awaddr0[31]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[31]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[31]),
        .O(p_2_in[31]));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awaddr[31]_i_4 
       (.I0(\FSM_onehot_w_state_reg_n_0_[0] ),
        .I1(start_cnvtn_writing_fsm),
        .O(initialise_cnvtn_w_addr__0));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[3]_i_1 
       (.I0(axi_awaddr0[3]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[3]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[3]),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[4]_i_1 
       (.I0(axi_awaddr0[4]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[4]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[4]),
        .O(p_2_in[4]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[5]_i_1 
       (.I0(axi_awaddr0[5]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[5]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[5]),
        .O(p_2_in[5]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[6]_i_1 
       (.I0(axi_awaddr0[6]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[6]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[6]),
        .O(p_2_in[6]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[7]_i_1 
       (.I0(axi_awaddr0[7]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[7]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[7]),
        .O(p_2_in[7]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[8]_i_1 
       (.I0(axi_awaddr0[8]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[8]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[8]),
        .O(p_2_in[8]));
  LUT6 #(
    .INIT(64'hFFFFEA2A0000EA2A)) 
    \axi_awaddr[9]_i_1 
       (.I0(axi_awaddr0[9]),
        .I1(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I2(start_mltpn_writing_fsm),
        .I3(matrix_a_address[9]),
        .I4(initialise_cnvtn_w_addr__0),
        .I5(image_address[9]),
        .O(p_2_in[9]));
  FDRE \axi_awaddr_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(M_AXI_AWADDR[0]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(M_AXI_AWADDR[10]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(M_AXI_AWADDR[11]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(M_AXI_AWADDR[12]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(M_AXI_AWADDR[13]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(M_AXI_AWADDR[14]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(M_AXI_AWADDR[15]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[16]),
        .Q(M_AXI_AWADDR[16]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[17]),
        .Q(M_AXI_AWADDR[17]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[18]),
        .Q(M_AXI_AWADDR[18]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[19]),
        .Q(M_AXI_AWADDR[19]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(M_AXI_AWADDR[1]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[20]),
        .Q(M_AXI_AWADDR[20]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[21]),
        .Q(M_AXI_AWADDR[21]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[22]),
        .Q(M_AXI_AWADDR[22]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[23]),
        .Q(M_AXI_AWADDR[23]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(M_AXI_AWADDR[24]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(M_AXI_AWADDR[25]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(M_AXI_AWADDR[26]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(M_AXI_AWADDR[27]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(M_AXI_AWADDR[28]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(M_AXI_AWADDR[29]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(M_AXI_AWADDR[2]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(M_AXI_AWADDR[30]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(M_AXI_AWADDR[31]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(M_AXI_AWADDR[3]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(M_AXI_AWADDR[4]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(M_AXI_AWADDR[5]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(M_AXI_AWADDR[6]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(M_AXI_AWADDR[7]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(M_AXI_AWADDR[8]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_awaddr[31]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(M_AXI_AWADDR[9]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F2FFFF22F2)) 
    axi_awvalid_i_1
       (.I0(\FSM_onehot_w_state_reg_n_0_[3] ),
        .I1(mltpn_w_cmpltd__0),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I5(cnvtn_w_cmpltd__0),
        .O(axi_awvalid_i_1_n_0));
  FDRE axi_awvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awvalid_i_1_n_0),
        .Q(M_AXI_AWVALID),
        .R(\axi_awaddr[31]_i_1_n_0 ));
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
        .R(\axi_awaddr[31]_i_1_n_0 ));
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
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \axi_wdata[31]_i_1 
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_WREADY),
        .I2(\FSM_onehot_w_state_reg_n_0_[2] ),
        .I3(start_mltpn_writing_fsm),
        .I4(\FSM_onehot_w_state_reg_n_0_[0] ),
        .I5(start_cnvtn_writing_fsm),
        .O(\axi_wdata[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[0]),
        .Q(M_AXI_WDATA[0]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[10] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[10]),
        .Q(M_AXI_WDATA[10]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[11] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[11]),
        .Q(M_AXI_WDATA[11]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[12] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[12]),
        .Q(M_AXI_WDATA[12]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[13] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[13]),
        .Q(M_AXI_WDATA[13]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[14] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[14]),
        .Q(M_AXI_WDATA[14]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[15] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[15]),
        .Q(M_AXI_WDATA[15]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[16] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[16]),
        .Q(M_AXI_WDATA[16]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[17] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[17]),
        .Q(M_AXI_WDATA[17]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[18] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[18]),
        .Q(M_AXI_WDATA[18]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[19] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[19]),
        .Q(M_AXI_WDATA[19]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[1]),
        .Q(M_AXI_WDATA[1]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[20] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[20]),
        .Q(M_AXI_WDATA[20]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[21] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[21]),
        .Q(M_AXI_WDATA[21]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[22] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[22]),
        .Q(M_AXI_WDATA[22]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[23] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[23]),
        .Q(M_AXI_WDATA[23]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[24] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[24]),
        .Q(M_AXI_WDATA[24]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[25] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[25]),
        .Q(M_AXI_WDATA[25]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[26] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[26]),
        .Q(M_AXI_WDATA[26]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[27] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[27]),
        .Q(M_AXI_WDATA[27]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[28] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[28]),
        .Q(M_AXI_WDATA[28]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[29] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[29]),
        .Q(M_AXI_WDATA[29]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[2]),
        .Q(M_AXI_WDATA[2]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[30] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[30]),
        .Q(M_AXI_WDATA[30]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[31] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[31]),
        .Q(M_AXI_WDATA[31]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[3]),
        .Q(M_AXI_WDATA[3]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[4] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[4]),
        .Q(M_AXI_WDATA[4]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[5] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[5]),
        .Q(M_AXI_WDATA[5]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[6] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[6]),
        .Q(M_AXI_WDATA[6]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[7] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[7]),
        .Q(M_AXI_WDATA[7]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[8] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[8]),
        .Q(M_AXI_WDATA[8]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  FDRE \axi_wdata_reg[9] 
       (.C(M_AXI_ACLK),
        .CE(\axi_wdata[31]_i_1_n_0 ),
        .D(output_memory_data[9]),
        .Q(M_AXI_WDATA[9]),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22F222F2FFFF22F2)) 
    axi_wvalid_i_1
       (.I0(\FSM_onehot_w_state_reg_n_0_[3] ),
        .I1(mltpn_w_cmpltd__0),
        .I2(M_AXI_WVALID),
        .I3(M_AXI_WREADY),
        .I4(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I5(cnvtn_w_cmpltd__0),
        .O(axi_wvalid_i_1_n_0));
  FDRE axi_wvalid_reg
       (.C(M_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wvalid_i_1_n_0),
        .Q(M_AXI_WVALID),
        .R(\axi_awaddr[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    capture_in_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_state_reg_n_0_[9] ),
        .I2(M_AXI_RVALID),
        .O(capture_in_data));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    capture_wi_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_state_reg_n_0_[12] ),
        .I2(M_AXI_RVALID),
        .O(capture_wi_data));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ended_convolution_INST_0
       (.I0(\FSM_onehot_w_state_reg_n_0_[7] ),
        .I1(cnvtn_w_cmpltd__0),
        .O(ended_convolution));
  LUT6 #(
    .INIT(64'h0090900090000090)) 
    ended_convolution_INST_0_i_1
       (.I0(cnvtn_w_cmpltd1),
        .I1(output_memory_address[6]),
        .I2(ended_convolution_INST_0_i_3_n_0),
        .I3(ended_convolution_INST_0_i_4_n_0),
        .I4(ended_convolution_INST_0_i_5_n_0),
        .I5(output_memory_address[7]),
        .O(cnvtn_w_cmpltd__0));
  LUT6 #(
    .INIT(64'h6666696696996666)) 
    ended_convolution_INST_0_i_2
       (.I0(image_dimension[6]),
        .I1(kernel_dimension[6]),
        .I2(kernel_dimension[4]),
        .I3(image_dimension[4]),
        .I4(kernel_dimension[5]),
        .I5(image_dimension[5]),
        .O(cnvtn_w_cmpltd1));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96000000)) 
    ended_convolution_INST_0_i_3
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(output_memory_address[4]),
        .I3(ended_multiplication_INST_0_i_3_n_0),
        .I4(ended_convolution_INST_0_i_6_n_0),
        .O(ended_convolution_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hBBFB00200020BBFB)) 
    ended_convolution_INST_0_i_4
       (.I0(image_dimension[5]),
        .I1(kernel_dimension[5]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[4]),
        .I4(kernel_dimension[6]),
        .I5(image_dimension[6]),
        .O(ended_convolution_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9969)) 
    ended_convolution_INST_0_i_5
       (.I0(kernel_dimension[7]),
        .I1(image_dimension[7]),
        .I2(image_dimension[6]),
        .I3(kernel_dimension[6]),
        .O(ended_convolution_INST_0_i_5_n_0));
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    ended_convolution_INST_0_i_6
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(image_dimension[5]),
        .I3(kernel_dimension[5]),
        .I4(output_memory_address[5]),
        .O(ended_convolution_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    ended_multiplication_INST_0
       (.I0(\FSM_onehot_w_state_reg_n_0_[5] ),
        .I1(mltpn_w_cmpltd__0),
        .O(ended_multiplication));
  LUT6 #(
    .INIT(64'h8200008200000000)) 
    ended_multiplication_INST_0_i_1
       (.I0(ended_multiplication_INST_0_i_2_n_0),
        .I1(output_memory_address[6]),
        .I2(matrix_a_dimension[6]),
        .I3(output_memory_address[5]),
        .I4(matrix_a_dimension[5]),
        .I5(ended_multiplication_INST_0_i_3_n_0),
        .O(mltpn_w_cmpltd__0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    ended_multiplication_INST_0_i_2
       (.I0(output_memory_address[7]),
        .I1(matrix_a_dimension[7]),
        .I2(output_memory_address[4]),
        .I3(matrix_a_dimension[4]),
        .O(ended_multiplication_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    ended_multiplication_INST_0_i_3
       (.I0(output_memory_address[1]),
        .I1(output_memory_address[0]),
        .I2(output_memory_address[3]),
        .I3(output_memory_address[2]),
        .O(ended_multiplication_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h80)) 
    ended_reading_cnvtn_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(wi_clm_eq_kernel__6),
        .I2(wi_row_eq_kernel__6),
        .O(ended_reading_cnvtn_data));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    ended_reading_cnvtn_data_INST_0_i_1
       (.I0(ended_reading_cnvtn_data_INST_0_i_3_n_0),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[0]),
        .I3(kernel_dimension[2]),
        .I4(kernel_dimension[3]),
        .I5(weight_memory_address[3]),
        .O(wi_clm_eq_kernel__6));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    ended_reading_cnvtn_data_INST_0_i_2
       (.I0(ended_reading_cnvtn_data_INST_0_i_4_n_0),
        .I1(kernel_dimension[5]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[6]),
        .I4(kernel_dimension[7]),
        .I5(weight_memory_address[7]),
        .O(wi_row_eq_kernel__6));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    ended_reading_cnvtn_data_INST_0_i_3
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .I2(weight_memory_address[2]),
        .I3(kernel_dimension[2]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[1]),
        .O(ended_reading_cnvtn_data_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    ended_reading_cnvtn_data_INST_0_i_4
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .I2(weight_memory_address[6]),
        .I3(kernel_dimension[6]),
        .I4(kernel_dimension[4]),
        .I5(kernel_dimension[5]),
        .O(ended_reading_cnvtn_data_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ended_reading_mltn_data_INST_0
       (.I0(\FSM_onehot_state_reg_n_0_[13] ),
        .I1(ended_reading_mltn_data_INST_0_i_1_n_0),
        .O(ended_reading_mltn_data));
  LUT2 #(
    .INIT(4'h7)) 
    ended_reading_mltn_data_INST_0_i_1
       (.I0(wi_row_eq_b__6),
        .I1(wi_clm_eq_b__6),
        .O(ended_reading_mltn_data_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(M_AXI_ARADDR[2]),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in_column[0]_i_1 
       (.I0(input_memory_address[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_column[1]_i_1 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in_column[2]_i_1 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[2]),
        .O(p_0_in__3[2]));
  LUT5 #(
    .INIT(32'hFFD5D5D5)) 
    \in_column[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(p_1_in[0]),
        .I3(p_0_in__0_0[0]),
        .I4(\FSM_onehot_state_reg_n_0_[10] ),
        .O(\in_column[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \in_column[3]_i_2 
       (.I0(p_0_in__0_0[0]),
        .I1(\FSM_onehot_state_reg_n_0_[10] ),
        .I2(p_1_in[0]),
        .I3(\FSM_onehot_state_reg_n_0_[3] ),
        .O(inc_in_column));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \in_column[3]_i_3 
       (.I0(input_memory_address[2]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[0]),
        .I3(input_memory_address[3]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_column),
        .D(p_0_in__3[0]),
        .Q(input_memory_address[0]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_column),
        .D(p_0_in__3[1]),
        .Q(input_memory_address[1]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_column),
        .D(p_0_in__3[2]),
        .Q(input_memory_address[2]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_column),
        .D(p_0_in__3[3]),
        .Q(input_memory_address[3]),
        .R(\in_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \in_row[0]_i_1 
       (.I0(input_memory_address[4]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_row[1]_i_1 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in_row[2]_i_1 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[6]),
        .O(p_0_in__4[2]));
  LUT3 #(
    .INIT(8'hEF)) 
    \in_row[3]_i_1 
       (.I0(\in_row[3]_i_4_n_0 ),
        .I1(\in_row[3]_i_5_n_0 ),
        .I2(M_AXI_ARESETN),
        .O(\in_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    \in_row[3]_i_10 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[2]),
        .I3(matrix_a_dimension[2]),
        .I4(matrix_a_dimension[0]),
        .I5(matrix_a_dimension[1]),
        .O(\in_row[3]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \in_row[3]_i_11 
       (.I0(input_memory_address[3]),
        .I1(matrix_a_dimension[3]),
        .I2(matrix_a_dimension[2]),
        .I3(matrix_a_dimension[0]),
        .I4(matrix_a_dimension[1]),
        .O(\in_row[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h4004100120020880)) 
    \in_row[3]_i_12 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[6]),
        .I3(matrix_a_dimension[6]),
        .I4(matrix_a_dimension[5]),
        .I5(matrix_a_dimension[4]),
        .O(\in_row[3]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \in_row[3]_i_13 
       (.I0(input_memory_address[7]),
        .I1(matrix_a_dimension[7]),
        .I2(matrix_a_dimension[6]),
        .I3(matrix_a_dimension[5]),
        .I4(matrix_a_dimension[4]),
        .O(\in_row[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4004100120020880)) 
    \in_row[3]_i_14 
       (.I0(input_memory_address[0]),
        .I1(input_memory_address[1]),
        .I2(input_memory_address[2]),
        .I3(image_dimension[2]),
        .I4(image_dimension[1]),
        .I5(image_dimension[0]),
        .O(\in_row[3]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \in_row[3]_i_15 
       (.I0(input_memory_address[3]),
        .I1(image_dimension[3]),
        .I2(image_dimension[2]),
        .I3(image_dimension[1]),
        .I4(image_dimension[0]),
        .O(\in_row[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    \in_row[3]_i_16 
       (.I0(input_memory_address[4]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[6]),
        .I3(image_dimension[6]),
        .I4(image_dimension[4]),
        .I5(image_dimension[5]),
        .O(\in_row[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \in_row[3]_i_17 
       (.I0(input_memory_address[7]),
        .I1(image_dimension[7]),
        .I2(image_dimension[6]),
        .I3(image_dimension[4]),
        .I4(image_dimension[5]),
        .O(\in_row[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \in_row[3]_i_2 
       (.I0(p_0_in__0_0[1]),
        .I1(p_0_in__0_0[0]),
        .I2(\FSM_onehot_state_reg_n_0_[10] ),
        .I3(p_1_in[1]),
        .I4(p_1_in[0]),
        .I5(\FSM_onehot_state_reg_n_0_[3] ),
        .O(inc_in_row));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \in_row[3]_i_3 
       (.I0(input_memory_address[6]),
        .I1(input_memory_address[5]),
        .I2(input_memory_address[4]),
        .I3(input_memory_address[7]),
        .O(p_0_in__4[3]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \in_row[3]_i_4 
       (.I0(\FSM_onehot_state_reg_n_0_[10] ),
        .I1(\in_row[3]_i_10_n_0 ),
        .I2(\in_row[3]_i_11_n_0 ),
        .I3(\in_row[3]_i_12_n_0 ),
        .I4(\in_row[3]_i_13_n_0 ),
        .O(\in_row[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \in_row[3]_i_5 
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\in_row[3]_i_14_n_0 ),
        .I2(\in_row[3]_i_15_n_0 ),
        .I3(\in_row[3]_i_16_n_0 ),
        .I4(\in_row[3]_i_17_n_0 ),
        .O(\in_row[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    \in_row[3]_i_6 
       (.I0(\in_row[3]_i_12_n_0 ),
        .I1(matrix_a_dimension[4]),
        .I2(matrix_a_dimension[5]),
        .I3(matrix_a_dimension[6]),
        .I4(matrix_a_dimension[7]),
        .I5(input_memory_address[7]),
        .O(p_0_in__0_0[1]));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    \in_row[3]_i_7 
       (.I0(\in_row[3]_i_10_n_0 ),
        .I1(matrix_a_dimension[1]),
        .I2(matrix_a_dimension[0]),
        .I3(matrix_a_dimension[2]),
        .I4(matrix_a_dimension[3]),
        .I5(input_memory_address[3]),
        .O(p_0_in__0_0[0]));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    \in_row[3]_i_8 
       (.I0(\in_row[3]_i_16_n_0 ),
        .I1(image_dimension[5]),
        .I2(image_dimension[4]),
        .I3(image_dimension[6]),
        .I4(image_dimension[7]),
        .I5(input_memory_address[7]),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    \in_row[3]_i_9 
       (.I0(\in_row[3]_i_14_n_0 ),
        .I1(image_dimension[0]),
        .I2(image_dimension[1]),
        .I3(image_dimension[2]),
        .I4(image_dimension[3]),
        .I5(input_memory_address[3]),
        .O(p_1_in[0]));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_row),
        .D(p_0_in__4[0]),
        .Q(input_memory_address[4]),
        .R(\in_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_row),
        .D(p_0_in__4[1]),
        .Q(input_memory_address[5]),
        .R(\in_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_row),
        .D(p_0_in__4[2]),
        .Q(input_memory_address[6]),
        .R(\in_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_in_row),
        .D(p_0_in__4[3]),
        .Q(input_memory_address[7]),
        .R(\in_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_column[0]_i_1 
       (.I0(output_memory_address[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_column[1]_i_1 
       (.I0(output_memory_address[0]),
        .I1(output_memory_address[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_column[2]_i_1 
       (.I0(output_memory_address[1]),
        .I1(output_memory_address[0]),
        .I2(output_memory_address[2]),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'hFDFDFDDD)) 
    \o_column[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(\o_row[3]_i_5_n_0 ),
        .I2(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I3(o_clm_eq_cvltn__6),
        .I4(cnvtn_w_cmpltd__0),
        .O(\o_column[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h020202FF02020202)) 
    \o_column[3]_i_2 
       (.I0(\FSM_onehot_w_state_reg_n_0_[3] ),
        .I1(mltpn_w_cmpltd__0),
        .I2(o_clm_eq_mltpn__6),
        .I3(o_clm_eq_cvltn__6),
        .I4(cnvtn_w_cmpltd__0),
        .I5(\FSM_onehot_w_state_reg_n_0_[1] ),
        .O(inc_o_column));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_column[3]_i_3 
       (.I0(output_memory_address[2]),
        .I1(output_memory_address[0]),
        .I2(output_memory_address[1]),
        .I3(output_memory_address[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h9000009000906000)) 
    \o_column[3]_i_4 
       (.I0(matrix_b_dimension[3]),
        .I1(output_memory_address[3]),
        .I2(\o_column[3]_i_5_n_0 ),
        .I3(output_memory_address[2]),
        .I4(matrix_b_dimension[2]),
        .I5(\wi_row[3]_i_8_n_0 ),
        .O(o_clm_eq_mltpn__6));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0690)) 
    \o_column[3]_i_5 
       (.I0(output_memory_address[1]),
        .I1(matrix_b_dimension[1]),
        .I2(matrix_b_dimension[0]),
        .I3(output_memory_address[0]),
        .O(\o_column[3]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_column),
        .D(p_0_in[0]),
        .Q(output_memory_address[0]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_column),
        .D(p_0_in[1]),
        .Q(output_memory_address[1]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_column),
        .D(p_0_in[2]),
        .Q(output_memory_address[2]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_column),
        .D(p_0_in[3]),
        .Q(output_memory_address[3]),
        .R(\o_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_row[0]_i_1 
       (.I0(output_memory_address[4]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_row[1]_i_1 
       (.I0(output_memory_address[4]),
        .I1(output_memory_address[5]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_row[2]_i_1 
       (.I0(output_memory_address[4]),
        .I1(output_memory_address[5]),
        .I2(output_memory_address[6]),
        .O(p_0_in__0[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \o_row[3]_i_1 
       (.I0(cnvtn_w_cmpltd__0),
        .I1(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I2(M_AXI_ARESETN),
        .O(\o_row[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF40)) 
    \o_row[3]_i_2 
       (.I0(cnvtn_w_cmpltd__0),
        .I1(o_clm_eq_cvltn__6),
        .I2(\FSM_onehot_w_state_reg_n_0_[1] ),
        .I3(\o_row[3]_i_5_n_0 ),
        .O(inc_o_row));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_row[3]_i_3 
       (.I0(output_memory_address[6]),
        .I1(output_memory_address[5]),
        .I2(output_memory_address[4]),
        .I3(output_memory_address[7]),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h6996000000000000)) 
    \o_row[3]_i_4 
       (.I0(\o_row[3]_i_6_n_0 ),
        .I1(image_dimension[2]),
        .I2(kernel_dimension[2]),
        .I3(output_memory_address[2]),
        .I4(\o_row[3]_i_7_n_0 ),
        .I5(\o_row[3]_i_8_n_0 ),
        .O(o_clm_eq_cvltn__6));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \o_row[3]_i_5 
       (.I0(mltpn_w_cmpltd__0),
        .I1(\FSM_onehot_w_state_reg_n_0_[3] ),
        .I2(o_clm_eq_mltpn__6),
        .O(\o_row[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hD4DD)) 
    \o_row[3]_i_6 
       (.I0(kernel_dimension[1]),
        .I1(image_dimension[1]),
        .I2(image_dimension[0]),
        .I3(kernel_dimension[0]),
        .O(\o_row[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h1482412828148241)) 
    \o_row[3]_i_7 
       (.I0(output_memory_address[0]),
        .I1(output_memory_address[1]),
        .I2(kernel_dimension[1]),
        .I3(image_dimension[0]),
        .I4(image_dimension[1]),
        .I5(kernel_dimension[0]),
        .O(\o_row[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6999666996669996)) 
    \o_row[3]_i_8 
       (.I0(kernel_dimension[3]),
        .I1(image_dimension[3]),
        .I2(\o_row[3]_i_6_n_0 ),
        .I3(image_dimension[2]),
        .I4(kernel_dimension[2]),
        .I5(output_memory_address[3]),
        .O(\o_row[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_row),
        .D(p_0_in__0[0]),
        .Q(output_memory_address[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_row),
        .D(p_0_in__0[1]),
        .Q(output_memory_address[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_row),
        .D(p_0_in__0[2]),
        .Q(output_memory_address[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_o_row),
        .D(p_0_in__0[3]),
        .Q(output_memory_address[7]),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wi_column[0]_i_1 
       (.I0(weight_memory_address[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wi_column[1]_i_1 
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wi_column[2]_i_1 
       (.I0(weight_memory_address[0]),
        .I1(weight_memory_address[1]),
        .I2(weight_memory_address[2]),
        .O(p_0_in__1[2]));
  LUT5 #(
    .INIT(32'hFFD5D5D5)) 
    \wi_column[3]_i_1 
       (.I0(M_AXI_ARESETN),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(wi_clm_eq_b__6),
        .I3(wi_clm_eq_kernel__6),
        .I4(\FSM_onehot_state_reg_n_0_[6] ),
        .O(\wi_column[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \wi_column[3]_i_2 
       (.I0(wi_clm_eq_b__6),
        .I1(\FSM_onehot_state_reg_n_0_[13] ),
        .I2(wi_clm_eq_kernel__6),
        .I3(\FSM_onehot_state_reg_n_0_[6] ),
        .O(inc_wi_column));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wi_column[3]_i_3 
       (.I0(weight_memory_address[2]),
        .I1(weight_memory_address[1]),
        .I2(weight_memory_address[0]),
        .I3(weight_memory_address[3]),
        .O(p_0_in__1[3]));
  FDRE #(
    .INIT(1'b0)) 
    \wi_column_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_column),
        .D(p_0_in__1[0]),
        .Q(weight_memory_address[0]),
        .R(\wi_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_column_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_column),
        .D(p_0_in__1[1]),
        .Q(weight_memory_address[1]),
        .R(\wi_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_column_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_column),
        .D(p_0_in__1[2]),
        .Q(weight_memory_address[2]),
        .R(\wi_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_column_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_column),
        .D(p_0_in__1[3]),
        .Q(weight_memory_address[3]),
        .R(\wi_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \wi_row[0]_i_1 
       (.I0(weight_memory_address[4]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wi_row[1]_i_1 
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \wi_row[2]_i_1 
       (.I0(weight_memory_address[5]),
        .I1(weight_memory_address[4]),
        .I2(weight_memory_address[6]),
        .O(p_0_in__2[2]));
  LUT6 #(
    .INIT(64'h80FFFFFF80FF80FF)) 
    \wi_row[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[6] ),
        .I1(wi_clm_eq_kernel__6),
        .I2(wi_row_eq_kernel__6),
        .I3(M_AXI_ARESETN),
        .I4(ended_reading_mltn_data_INST_0_i_1_n_0),
        .I5(\FSM_onehot_state_reg_n_0_[13] ),
        .O(\wi_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40FF404040404040)) 
    \wi_row[3]_i_2 
       (.I0(wi_row_eq_b__6),
        .I1(wi_clm_eq_b__6),
        .I2(\FSM_onehot_state_reg_n_0_[13] ),
        .I3(wi_row_eq_kernel__6),
        .I4(wi_clm_eq_kernel__6),
        .I5(\FSM_onehot_state_reg_n_0_[6] ),
        .O(inc_wi_row));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \wi_row[3]_i_3 
       (.I0(weight_memory_address[6]),
        .I1(weight_memory_address[4]),
        .I2(weight_memory_address[5]),
        .I3(weight_memory_address[7]),
        .O(p_0_in__2[3]));
  LUT6 #(
    .INIT(64'hAAA800020002AAA8)) 
    \wi_row[3]_i_4 
       (.I0(\wi_row[3]_i_6_n_0 ),
        .I1(matrix_b_dimension[5]),
        .I2(matrix_b_dimension[4]),
        .I3(matrix_b_dimension[6]),
        .I4(matrix_b_dimension[7]),
        .I5(weight_memory_address[7]),
        .O(wi_row_eq_b__6));
  LUT6 #(
    .INIT(64'h9000009000906000)) 
    \wi_row[3]_i_5 
       (.I0(matrix_b_dimension[3]),
        .I1(weight_memory_address[3]),
        .I2(\wi_row[3]_i_7_n_0 ),
        .I3(weight_memory_address[2]),
        .I4(matrix_b_dimension[2]),
        .I5(\wi_row[3]_i_8_n_0 ),
        .O(wi_clm_eq_b__6));
  LUT6 #(
    .INIT(64'h4004200210010880)) 
    \wi_row[3]_i_6 
       (.I0(weight_memory_address[4]),
        .I1(weight_memory_address[5]),
        .I2(weight_memory_address[6]),
        .I3(matrix_b_dimension[6]),
        .I4(matrix_b_dimension[4]),
        .I5(matrix_b_dimension[5]),
        .O(\wi_row[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0690)) 
    \wi_row[3]_i_7 
       (.I0(weight_memory_address[1]),
        .I1(matrix_b_dimension[1]),
        .I2(matrix_b_dimension[0]),
        .I3(weight_memory_address[0]),
        .O(\wi_row[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wi_row[3]_i_8 
       (.I0(matrix_b_dimension[0]),
        .I1(matrix_b_dimension[1]),
        .O(\wi_row[3]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_row_reg[0] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_row),
        .D(p_0_in__2[0]),
        .Q(weight_memory_address[4]),
        .R(\wi_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_row_reg[1] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_row),
        .D(p_0_in__2[1]),
        .Q(weight_memory_address[5]),
        .R(\wi_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_row_reg[2] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_row),
        .D(p_0_in__2[2]),
        .Q(weight_memory_address[6]),
        .R(\wi_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wi_row_reg[3] 
       (.C(M_AXI_ACLK),
        .CE(inc_wi_row),
        .D(p_0_in__2[3]),
        .Q(weight_memory_address[7]),
        .R(\wi_row[3]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "hardware_accelerator_axi_master_0_1,axi_master,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_master,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (start_convolution,
    image_address,
    image_dimension,
    kernel_address,
    kernel_dimension,
    ended_convolution,
    start_multiplication,
    matrix_a_address,
    matrix_a_dimension,
    matrix_b_address,
    matrix_b_dimension,
    ended_multiplication,
    output_memory_data,
    start_cnvtn_writing_fsm,
    start_mltpn_writing_fsm,
    input_memory_address,
    weight_memory_address,
    output_memory_address,
    capture_in_data,
    capture_wi_data,
    ended_reading_cnvtn_data,
    ended_reading_mltn_data,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_accelerator_M_AXI_ACLK_0, INSERT_VIP 0" *) input M_AXI_ACLK;
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hardware_accelerator_M_AXI_ACLK_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output M_AXI_RREADY;

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
  wire capture_in_data;
  wire capture_wi_data;
  wire ended_convolution;
  wire ended_multiplication;
  wire ended_reading_cnvtn_data;
  wire ended_reading_mltn_data;
  wire [31:0]image_address;
  wire [7:0]image_dimension;
  wire [7:0]input_memory_address;
  wire [31:0]kernel_address;
  wire [7:0]kernel_dimension;
  wire [31:0]matrix_a_address;
  wire [7:0]matrix_a_dimension;
  wire [31:0]matrix_b_address;
  wire [7:0]matrix_b_dimension;
  wire [7:0]output_memory_address;
  wire [31:0]output_memory_data;
  wire start_cnvtn_writing_fsm;
  wire start_convolution;
  wire start_mltpn_writing_fsm;
  wire start_multiplication;
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_master inst
       (.M_AXI_ACLK(M_AXI_ACLK),
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
        .capture_in_data(capture_in_data),
        .capture_wi_data(capture_wi_data),
        .ended_convolution(ended_convolution),
        .ended_multiplication(ended_multiplication),
        .ended_reading_cnvtn_data(ended_reading_cnvtn_data),
        .ended_reading_mltn_data(ended_reading_mltn_data),
        .image_address(image_address),
        .image_dimension(image_dimension),
        .input_memory_address(input_memory_address),
        .kernel_address(kernel_address),
        .kernel_dimension(kernel_dimension),
        .matrix_a_address(matrix_a_address),
        .matrix_a_dimension(matrix_a_dimension),
        .matrix_b_address(matrix_b_address),
        .matrix_b_dimension(matrix_b_dimension),
        .output_memory_address(output_memory_address),
        .output_memory_data(output_memory_data),
        .start_cnvtn_writing_fsm(start_cnvtn_writing_fsm),
        .start_convolution(start_convolution),
        .start_mltpn_writing_fsm(start_mltpn_writing_fsm),
        .start_multiplication(start_multiplication),
        .weight_memory_address(weight_memory_address));
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
