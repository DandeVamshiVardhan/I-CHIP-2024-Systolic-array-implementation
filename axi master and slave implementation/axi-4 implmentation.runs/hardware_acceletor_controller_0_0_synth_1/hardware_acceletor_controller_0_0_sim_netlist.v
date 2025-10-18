// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun May 11 22:38:27 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_acceletor_controller_0_0_sim_netlist.v
// Design      : hardware_acceletor_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
   (Q,
    \wt_row_reg[3]_0 ,
    in_mem_rd_addr,
    vir_wr_enable,
    \rd_address_reg[4]_0 ,
    \o_row_reg[3]_0 ,
    \o_column_reg[3]_0 ,
    ou_wr_enable,
    \vir_column_reg[3]_0 ,
    \vir_row_reg[3]_0 ,
    \s_column_reg[3]_0 ,
    start_wr_fsm,
    reading_ended,
    kernel_dimension,
    arestn,
    image_dimension,
    clk);
  output [3:0]Q;
  output [3:0]\wt_row_reg[3]_0 ;
  output [7:0]in_mem_rd_addr;
  output vir_wr_enable;
  output [4:0]\rd_address_reg[4]_0 ;
  output [3:0]\o_row_reg[3]_0 ;
  output [3:0]\o_column_reg[3]_0 ;
  output ou_wr_enable;
  output [3:0]\vir_column_reg[3]_0 ;
  output [3:0]\vir_row_reg[3]_0 ;
  output [3:0]\s_column_reg[3]_0 ;
  output start_wr_fsm;
  input reading_ended;
  input [7:0]kernel_dimension;
  input arestn;
  input [7:0]image_dimension;
  input clk;

  wire [2:1]A;
  wire [2:1]B;
  wire [3:0]Q;
  wire arestn;
  wire clear;
  wire clk;
  wire cnvlt_cmpltd;
  wire [4:0]cnvlt_cmpltd1;
  wire [2:0]ctrl_n_state;
  wire [2:0]ctrl_state;
  wire \ctrl_state[0]_i_2_n_0 ;
  wire [3:2]data;
  wire dec_addr__1;
  wire [7:0]image_dimension;
  wire in_column;
  wire \in_column[3]_i_1_n_0 ;
  wire \in_column[3]_i_5_n_0 ;
  wire \in_column[3]_i_6_n_0 ;
  wire \in_column[3]_i_7_n_0 ;
  wire [3:0]in_column_reg__0;
  wire [7:0]in_mem_rd_addr;
  wire \in_mem_rd_addr[3]_INST_0_i_1_n_0 ;
  wire \in_mem_rd_addr[7]_INST_0_i_1_n_0 ;
  wire in_row;
  wire [3:0]in_row_reg__0;
  wire inc_addr;
  wire inc_rd_address;
  wire inc_wr_address;
  wire [7:0]kernel_dimension;
  wire \o_column[3]_i_1_n_0 ;
  wire [3:0]\o_column_reg[3]_0 ;
  wire o_mem_wr_cmpltd00_out;
  wire o_mem_wr_cmpltd__0;
  wire o_row;
  wire \o_row[3]_i_4_n_0 ;
  wire \o_row[3]_i_5_n_0 ;
  wire \o_row[3]_i_6_n_0 ;
  wire [3:0]\o_row_reg[3]_0 ;
  wire ou_wr_enable;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [3:0]p_0_in__5;
  wire [3:0]p_0_in__6;
  wire [3:0]p_0_in__7;
  wire [3:0]p_2_in;
  wire [4:0]\rd_address_reg[4]_0 ;
  wire reading_ended;
  wire \s_column[3]_i_4_n_0 ;
  wire \s_column[3]_i_5_n_0 ;
  wire \s_column[3]_i_6_n_0 ;
  wire \s_column[3]_i_7_n_0 ;
  wire [3:0]\s_column_reg[3]_0 ;
  wire st_wt_r_c__0;
  wire start_wr_fsm;
  wire [3:0]\vir_column_reg[3]_0 ;
  wire vir_mem_wr_cmpltd0__6;
  wire vir_mem_wr_cmpltd__0;
  wire \vir_row[3]_i_1_n_0 ;
  wire \vir_row[3]_i_5_n_0 ;
  wire \vir_row[3]_i_6_n_0 ;
  wire \vir_row[3]_i_7_n_0 ;
  wire [3:0]\vir_row_reg[3]_0 ;
  wire vir_wr_enable;
  wire \wt_column[2]_i_3_n_0 ;
  wire \wt_column[2]_i_4_n_0 ;
  wire \wt_column[3]_i_1_n_0 ;
  wire \wt_column[3]_i_2_n_0 ;
  wire \wt_column[3]_i_4_n_0 ;
  wire \wt_column[3]_i_6_n_0 ;
  wire \wt_column[3]_i_7_n_0 ;
  wire \wt_column[3]_i_8_n_0 ;
  wire \wt_column[3]_i_9_n_0 ;
  wire wt_row02_out;
  wire wt_row03_out;
  wire [3:1]wt_row11_in;
  wire wt_row1__7;
  wire \wt_row[3]_i_10_n_0 ;
  wire \wt_row[3]_i_12_n_0 ;
  wire \wt_row[3]_i_13_n_0 ;
  wire \wt_row[3]_i_14_n_0 ;
  wire \wt_row[3]_i_15_n_0 ;
  wire \wt_row[3]_i_17_n_0 ;
  wire \wt_row[3]_i_18_n_0 ;
  wire \wt_row[3]_i_19_n_0 ;
  wire \wt_row[3]_i_1_n_0 ;
  wire \wt_row[3]_i_20_n_0 ;
  wire \wt_row[3]_i_21_n_0 ;
  wire \wt_row[3]_i_22_n_0 ;
  wire \wt_row[3]_i_23_n_0 ;
  wire \wt_row[3]_i_24_n_0 ;
  wire \wt_row[3]_i_25_n_0 ;
  wire \wt_row[3]_i_26_n_0 ;
  wire \wt_row[3]_i_27_n_0 ;
  wire \wt_row[3]_i_28_n_0 ;
  wire \wt_row[3]_i_29_n_0 ;
  wire \wt_row[3]_i_2_n_0 ;
  wire \wt_row[3]_i_30_n_0 ;
  wire \wt_row[3]_i_31_n_0 ;
  wire \wt_row[3]_i_32_n_0 ;
  wire \wt_row[3]_i_34_n_0 ;
  wire \wt_row[3]_i_35_n_0 ;
  wire \wt_row[3]_i_36_n_0 ;
  wire \wt_row[3]_i_37_n_0 ;
  wire \wt_row[3]_i_38_n_0 ;
  wire \wt_row[3]_i_39_n_0 ;
  wire \wt_row[3]_i_40_n_0 ;
  wire \wt_row[3]_i_41_n_0 ;
  wire \wt_row[3]_i_42_n_0 ;
  wire \wt_row[3]_i_43_n_0 ;
  wire \wt_row[3]_i_45_n_0 ;
  wire \wt_row[3]_i_46_n_0 ;
  wire \wt_row[3]_i_47_n_0 ;
  wire \wt_row[3]_i_49_n_0 ;
  wire \wt_row[3]_i_50_n_0 ;
  wire \wt_row[3]_i_52_n_0 ;
  wire \wt_row[3]_i_53_n_0 ;
  wire \wt_row[3]_i_56_n_0 ;
  wire \wt_row[3]_i_59_n_0 ;
  wire \wt_row[3]_i_60_n_0 ;
  wire \wt_row[3]_i_61_n_0 ;
  wire \wt_row[3]_i_62_n_0 ;
  wire \wt_row[3]_i_63_n_0 ;
  wire \wt_row[3]_i_6_n_0 ;
  wire \wt_row[3]_i_9_n_0 ;
  wire [3:0]\wt_row_reg[3]_0 ;

  LUT6 #(
    .INIT(64'h4545444455444444)) 
    \ctrl_state[0]_i_1 
       (.I0(ctrl_state[2]),
        .I1(\ctrl_state[0]_i_2_n_0 ),
        .I2(o_mem_wr_cmpltd__0),
        .I3(cnvlt_cmpltd),
        .I4(ctrl_state[1]),
        .I5(ctrl_state[0]),
        .O(ctrl_n_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h005C)) 
    \ctrl_state[0]_i_2 
       (.I0(vir_mem_wr_cmpltd__0),
        .I1(reading_ended),
        .I2(ctrl_state[0]),
        .I3(ctrl_state[1]),
        .O(\ctrl_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h82282882)) 
    \ctrl_state[0]_i_3 
       (.I0(\wt_row[3]_i_18_n_0 ),
        .I1(\rd_address_reg[4]_0 [4]),
        .I2(\wt_row[3]_i_17_n_0 ),
        .I3(cnvlt_cmpltd1[4]),
        .I4(\wt_row[3]_i_15_n_0 ),
        .O(cnvlt_cmpltd));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h15044444)) 
    \ctrl_state[1]_i_1 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[1]),
        .I2(o_mem_wr_cmpltd__0),
        .I3(vir_mem_wr_cmpltd__0),
        .I4(ctrl_state[0]),
        .O(ctrl_n_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0380)) 
    \ctrl_state[2]_i_1 
       (.I0(o_mem_wr_cmpltd__0),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[0]),
        .I3(ctrl_state[2]),
        .O(ctrl_n_state[2]));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_n_state[0]),
        .Q(ctrl_state[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_n_state[1]),
        .Q(ctrl_state[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \ctrl_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(ctrl_n_state[2]),
        .Q(ctrl_state[2]),
        .R(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \in_column[0]_i_1 
       (.I0(in_column_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_column[1]_i_1 
       (.I0(in_column_reg__0[0]),
        .I1(in_column_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in_column[2]_i_1 
       (.I0(in_column_reg__0[0]),
        .I1(in_column_reg__0[1]),
        .I2(in_column_reg__0[2]),
        .O(p_0_in__1[2]));
  LUT4 #(
    .INIT(16'hD555)) 
    \in_column[3]_i_1 
       (.I0(arestn),
        .I1(inc_addr),
        .I2(vir_mem_wr_cmpltd0__6),
        .I3(wt_row1__7),
        .O(\in_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \in_column[3]_i_2 
       (.I0(in_column_reg__0[1]),
        .I1(in_column_reg__0[0]),
        .I2(in_column_reg__0[2]),
        .I3(in_column_reg__0[3]),
        .O(p_0_in__1[3]));
  LUT6 #(
    .INIT(64'h8040400808040480)) 
    \in_column[3]_i_3 
       (.I0(in_mem_rd_addr[2]),
        .I1(\in_column[3]_i_5_n_0 ),
        .I2(in_mem_rd_addr[3]),
        .I3(image_dimension[2]),
        .I4(\in_column[3]_i_6_n_0 ),
        .I5(image_dimension[3]),
        .O(vir_mem_wr_cmpltd0__6));
  LUT6 #(
    .INIT(64'h8888888222222228)) 
    \in_column[3]_i_4 
       (.I0(\in_column[3]_i_7_n_0 ),
        .I1(\wt_row_reg[3]_0 [3]),
        .I2(kernel_dimension[6]),
        .I3(kernel_dimension[4]),
        .I4(kernel_dimension[5]),
        .I5(kernel_dimension[7]),
        .O(wt_row1__7));
  LUT6 #(
    .INIT(64'h9600009600966900)) 
    \in_column[3]_i_5 
       (.I0(Q[1]),
        .I1(in_column_reg__0[1]),
        .I2(image_dimension[1]),
        .I3(image_dimension[0]),
        .I4(in_column_reg__0[0]),
        .I5(Q[0]),
        .O(\in_column[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \in_column[3]_i_6 
       (.I0(image_dimension[0]),
        .I1(image_dimension[1]),
        .O(\in_column[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \in_column[3]_i_7 
       (.I0(\wt_row_reg[3]_0 [0]),
        .I1(\wt_row_reg[3]_0 [1]),
        .I2(\wt_row_reg[3]_0 [2]),
        .I3(kernel_dimension[5]),
        .I4(kernel_dimension[4]),
        .I5(kernel_dimension[6]),
        .O(\in_column[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[0] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__1[0]),
        .Q(in_column_reg__0[0]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[1] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__1[1]),
        .Q(in_column_reg__0[1]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[2] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__1[2]),
        .Q(in_column_reg__0[2]),
        .R(\in_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[3] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__1[3]),
        .Q(in_column_reg__0[3]),
        .R(\in_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_mem_rd_addr[0]_INST_0 
       (.I0(in_column_reg__0[0]),
        .I1(Q[0]),
        .O(in_mem_rd_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \in_mem_rd_addr[1]_INST_0 
       (.I0(in_column_reg__0[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(in_column_reg__0[1]),
        .O(in_mem_rd_addr[1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \in_mem_rd_addr[2]_INST_0 
       (.I0(in_column_reg__0[1]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(in_column_reg__0[0]),
        .I4(Q[2]),
        .I5(in_column_reg__0[2]),
        .O(in_mem_rd_addr[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \in_mem_rd_addr[3]_INST_0 
       (.I0(in_column_reg__0[2]),
        .I1(Q[2]),
        .I2(\in_mem_rd_addr[3]_INST_0_i_1_n_0 ),
        .I3(Q[3]),
        .I4(in_column_reg__0[3]),
        .O(in_mem_rd_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \in_mem_rd_addr[3]_INST_0_i_1 
       (.I0(in_column_reg__0[0]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(in_column_reg__0[1]),
        .O(\in_mem_rd_addr[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_mem_rd_addr[4]_INST_0 
       (.I0(in_row_reg__0[0]),
        .I1(\wt_row_reg[3]_0 [0]),
        .O(in_mem_rd_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \in_mem_rd_addr[5]_INST_0 
       (.I0(in_row_reg__0[0]),
        .I1(\wt_row_reg[3]_0 [0]),
        .I2(\wt_row_reg[3]_0 [1]),
        .I3(in_row_reg__0[1]),
        .O(in_mem_rd_addr[5]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \in_mem_rd_addr[6]_INST_0 
       (.I0(in_row_reg__0[1]),
        .I1(\wt_row_reg[3]_0 [1]),
        .I2(\wt_row_reg[3]_0 [0]),
        .I3(in_row_reg__0[0]),
        .I4(\wt_row_reg[3]_0 [2]),
        .I5(in_row_reg__0[2]),
        .O(in_mem_rd_addr[6]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \in_mem_rd_addr[7]_INST_0 
       (.I0(in_row_reg__0[2]),
        .I1(\wt_row_reg[3]_0 [2]),
        .I2(\in_mem_rd_addr[7]_INST_0_i_1_n_0 ),
        .I3(\wt_row_reg[3]_0 [3]),
        .I4(in_row_reg__0[3]),
        .O(in_mem_rd_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \in_mem_rd_addr[7]_INST_0_i_1 
       (.I0(in_row_reg__0[0]),
        .I1(\wt_row_reg[3]_0 [0]),
        .I2(\wt_row_reg[3]_0 [1]),
        .I3(in_row_reg__0[1]),
        .O(\in_mem_rd_addr[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \in_row[0]_i_1 
       (.I0(in_row_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_row[1]_i_1 
       (.I0(in_row_reg__0[0]),
        .I1(in_row_reg__0[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \in_row[2]_i_1 
       (.I0(in_row_reg__0[0]),
        .I1(in_row_reg__0[1]),
        .I2(in_row_reg__0[2]),
        .O(p_0_in__2[2]));
  LUT3 #(
    .INIT(8'h80)) 
    \in_row[3]_i_1 
       (.I0(wt_row1__7),
        .I1(vir_mem_wr_cmpltd0__6),
        .I2(inc_addr),
        .O(in_row));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \in_row[3]_i_2 
       (.I0(in_row_reg__0[1]),
        .I1(in_row_reg__0[0]),
        .I2(in_row_reg__0[2]),
        .I3(in_row_reg__0[3]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[0] 
       (.C(clk),
        .CE(in_row),
        .D(p_0_in__2[0]),
        .Q(in_row_reg__0[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[1] 
       (.C(clk),
        .CE(in_row),
        .D(p_0_in__2[1]),
        .Q(in_row_reg__0[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[2] 
       (.C(clk),
        .CE(in_row),
        .D(p_0_in__2[2]),
        .Q(in_row_reg__0[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[3] 
       (.C(clk),
        .CE(in_row),
        .D(p_0_in__2[3]),
        .Q(in_row_reg__0[3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_column[0]_i_1 
       (.I0(\o_column_reg[3]_0 [0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_column[1]_i_1 
       (.I0(\o_column_reg[3]_0 [0]),
        .I1(\o_column_reg[3]_0 [1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_column[2]_i_1 
       (.I0(\o_column_reg[3]_0 [0]),
        .I1(\o_column_reg[3]_0 [1]),
        .I2(\o_column_reg[3]_0 [2]),
        .O(p_0_in__3[2]));
  LUT6 #(
    .INIT(64'h00400000FFFFFFFF)) 
    \o_column[3]_i_1 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(o_mem_wr_cmpltd__0),
        .I4(o_mem_wr_cmpltd00_out),
        .I5(arestn),
        .O(\o_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_column[3]_i_2 
       (.I0(\o_column_reg[3]_0 [1]),
        .I1(\o_column_reg[3]_0 [0]),
        .I2(\o_column_reg[3]_0 [2]),
        .I3(\o_column_reg[3]_0 [3]),
        .O(p_0_in__3[3]));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[0] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__3[0]),
        .Q(\o_column_reg[3]_0 [0]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[1] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__3[1]),
        .Q(\o_column_reg[3]_0 [1]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[2] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__3[2]),
        .Q(\o_column_reg[3]_0 [2]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[3] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__3[3]),
        .Q(\o_column_reg[3]_0 [3]),
        .R(\o_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_row[0]_i_1 
       (.I0(\o_row_reg[3]_0 [0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_row[1]_i_1 
       (.I0(\o_row_reg[3]_0 [0]),
        .I1(\o_row_reg[3]_0 [1]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \o_row[2]_i_1 
       (.I0(\o_row_reg[3]_0 [0]),
        .I1(\o_row_reg[3]_0 [1]),
        .I2(\o_row_reg[3]_0 [2]),
        .O(p_0_in__4[2]));
  LUT5 #(
    .INIT(32'h00400000)) 
    \o_row[3]_i_1 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(o_mem_wr_cmpltd__0),
        .I4(o_mem_wr_cmpltd00_out),
        .O(o_row));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \o_row[3]_i_2 
       (.I0(\o_row_reg[3]_0 [1]),
        .I1(\o_row_reg[3]_0 [0]),
        .I2(\o_row_reg[3]_0 [2]),
        .I3(\o_row_reg[3]_0 [3]),
        .O(p_0_in__4[3]));
  LUT6 #(
    .INIT(64'h6996000000000000)) 
    \o_row[3]_i_3 
       (.I0(image_dimension[2]),
        .I1(kernel_dimension[2]),
        .I2(\o_row[3]_i_4_n_0 ),
        .I3(\o_column_reg[3]_0 [2]),
        .I4(\o_row[3]_i_5_n_0 ),
        .I5(\o_row[3]_i_6_n_0 ),
        .O(o_mem_wr_cmpltd00_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB0FB)) 
    \o_row[3]_i_4 
       (.I0(image_dimension[0]),
        .I1(kernel_dimension[0]),
        .I2(image_dimension[1]),
        .I3(kernel_dimension[1]),
        .O(\o_row[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0096690069000069)) 
    \o_row[3]_i_5 
       (.I0(\o_column_reg[3]_0 [1]),
        .I1(kernel_dimension[1]),
        .I2(image_dimension[1]),
        .I3(image_dimension[0]),
        .I4(kernel_dimension[0]),
        .I5(\o_column_reg[3]_0 [0]),
        .O(\o_row[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h6966996996996696)) 
    \o_row[3]_i_6 
       (.I0(image_dimension[3]),
        .I1(kernel_dimension[3]),
        .I2(image_dimension[2]),
        .I3(kernel_dimension[2]),
        .I4(\o_row[3]_i_4_n_0 ),
        .I5(\o_column_reg[3]_0 [3]),
        .O(\o_row[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[0] 
       (.C(clk),
        .CE(o_row),
        .D(p_0_in__4[0]),
        .Q(\o_row_reg[3]_0 [0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[1] 
       (.C(clk),
        .CE(o_row),
        .D(p_0_in__4[1]),
        .Q(\o_row_reg[3]_0 [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[2] 
       (.C(clk),
        .CE(o_row),
        .D(p_0_in__4[2]),
        .Q(\o_row_reg[3]_0 [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[3] 
       (.C(clk),
        .CE(o_row),
        .D(p_0_in__4[3]),
        .Q(\o_row_reg[3]_0 [3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    ou_wr_enable_INST_0
       (.I0(ctrl_state[1]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[2]),
        .O(ou_wr_enable));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_address[0]_i_1 
       (.I0(\rd_address_reg[4]_0 [0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_address[1]_i_1 
       (.I0(\rd_address_reg[4]_0 [0]),
        .I1(\rd_address_reg[4]_0 [1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \rd_address[2]_i_1 
       (.I0(\rd_address_reg[4]_0 [0]),
        .I1(\rd_address_reg[4]_0 [1]),
        .I2(\rd_address_reg[4]_0 [2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \rd_address[3]_i_1 
       (.I0(\rd_address_reg[4]_0 [1]),
        .I1(\rd_address_reg[4]_0 [0]),
        .I2(\rd_address_reg[4]_0 [2]),
        .I3(\rd_address_reg[4]_0 [3]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \rd_address[4]_i_1 
       (.I0(dec_addr__1),
        .I1(st_wt_r_c__0),
        .O(inc_rd_address));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \rd_address[4]_i_2 
       (.I0(\rd_address_reg[4]_0 [2]),
        .I1(\rd_address_reg[4]_0 [0]),
        .I2(\rd_address_reg[4]_0 [1]),
        .I3(\rd_address_reg[4]_0 [3]),
        .I4(\rd_address_reg[4]_0 [4]),
        .O(p_0_in__0[4]));
  FDRE \rd_address_reg[0] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[0]),
        .Q(\rd_address_reg[4]_0 [0]),
        .R(clear));
  FDRE \rd_address_reg[1] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[1]),
        .Q(\rd_address_reg[4]_0 [1]),
        .R(clear));
  FDRE \rd_address_reg[2] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[2]),
        .Q(\rd_address_reg[4]_0 [2]),
        .R(clear));
  FDRE \rd_address_reg[3] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[3]),
        .Q(\rd_address_reg[4]_0 [3]),
        .R(clear));
  FDRE \rd_address_reg[4] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[4]),
        .Q(\rd_address_reg[4]_0 [4]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_column[0]_i_1 
       (.I0(\s_column_reg[3]_0 [0]),
        .O(p_0_in__7[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_column[1]_i_1 
       (.I0(\s_column_reg[3]_0 [0]),
        .I1(\s_column_reg[3]_0 [1]),
        .O(p_0_in__7[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_column[2]_i_1 
       (.I0(\s_column_reg[3]_0 [0]),
        .I1(\s_column_reg[3]_0 [1]),
        .I2(\s_column_reg[3]_0 [2]),
        .O(p_0_in__7[2]));
  LUT4 #(
    .INIT(16'h0040)) 
    \s_column[3]_i_1 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(o_mem_wr_cmpltd__0),
        .O(inc_wr_address));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \s_column[3]_i_2 
       (.I0(\s_column_reg[3]_0 [1]),
        .I1(\s_column_reg[3]_0 [0]),
        .I2(\s_column_reg[3]_0 [2]),
        .I3(\s_column_reg[3]_0 [3]),
        .O(p_0_in__7[3]));
  LUT6 #(
    .INIT(64'h0880800800000000)) 
    \s_column[3]_i_3 
       (.I0(\s_column[3]_i_4_n_0 ),
        .I1(\s_column[3]_i_5_n_0 ),
        .I2(\o_row_reg[3]_0 [2]),
        .I3(\s_column[3]_i_6_n_0 ),
        .I4(\s_column[3]_i_7_n_0 ),
        .I5(o_mem_wr_cmpltd00_out),
        .O(o_mem_wr_cmpltd__0));
  LUT6 #(
    .INIT(64'h6966996996996696)) 
    \s_column[3]_i_4 
       (.I0(image_dimension[7]),
        .I1(kernel_dimension[7]),
        .I2(image_dimension[6]),
        .I3(kernel_dimension[6]),
        .I4(\s_column[3]_i_6_n_0 ),
        .I5(\o_row_reg[3]_0 [3]),
        .O(\s_column[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0096690069000069)) 
    \s_column[3]_i_5 
       (.I0(\o_row_reg[3]_0 [1]),
        .I1(kernel_dimension[5]),
        .I2(image_dimension[5]),
        .I3(image_dimension[4]),
        .I4(kernel_dimension[4]),
        .I5(\o_row_reg[3]_0 [0]),
        .O(\s_column[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB0FB)) 
    \s_column[3]_i_6 
       (.I0(image_dimension[4]),
        .I1(kernel_dimension[4]),
        .I2(image_dimension[5]),
        .I3(kernel_dimension[5]),
        .O(\s_column[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \s_column[3]_i_7 
       (.I0(image_dimension[6]),
        .I1(kernel_dimension[6]),
        .O(\s_column[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[0] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__7[0]),
        .Q(\s_column_reg[3]_0 [0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[1] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__7[1]),
        .Q(\s_column_reg[3]_0 [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[2] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__7[2]),
        .Q(\s_column_reg[3]_0 [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[3] 
       (.C(clk),
        .CE(inc_wr_address),
        .D(p_0_in__7[3]),
        .Q(\s_column_reg[3]_0 [3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    start_wr_fsm_INST_0
       (.I0(ctrl_state[1]),
        .I1(ctrl_state[2]),
        .I2(ctrl_state[0]),
        .O(start_wr_fsm));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vir_column[0]_i_1 
       (.I0(\vir_column_reg[3]_0 [0]),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vir_column[1]_i_1 
       (.I0(\vir_column_reg[3]_0 [0]),
        .I1(\vir_column_reg[3]_0 [1]),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vir_column[2]_i_1 
       (.I0(\vir_column_reg[3]_0 [0]),
        .I1(\vir_column_reg[3]_0 [1]),
        .I2(\vir_column_reg[3]_0 [2]),
        .O(p_0_in__5[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \vir_column[3]_i_1 
       (.I0(arestn),
        .O(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \vir_column[3]_i_2 
       (.I0(inc_addr),
        .I1(wt_row03_out),
        .O(in_column));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vir_column[3]_i_3 
       (.I0(\vir_column_reg[3]_0 [1]),
        .I1(\vir_column_reg[3]_0 [0]),
        .I2(\vir_column_reg[3]_0 [2]),
        .I3(\vir_column_reg[3]_0 [3]),
        .O(p_0_in__5[3]));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[0] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__5[0]),
        .Q(\vir_column_reg[3]_0 [0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[1] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__5[1]),
        .Q(\vir_column_reg[3]_0 [1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[2] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__5[2]),
        .Q(\vir_column_reg[3]_0 [2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[3] 
       (.C(clk),
        .CE(in_column),
        .D(p_0_in__5[3]),
        .Q(\vir_column_reg[3]_0 [3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vir_row[0]_i_1 
       (.I0(\vir_row_reg[3]_0 [0]),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vir_row[1]_i_1 
       (.I0(\vir_row_reg[3]_0 [0]),
        .I1(\vir_row_reg[3]_0 [1]),
        .O(p_0_in__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vir_row[2]_i_1 
       (.I0(\vir_row_reg[3]_0 [0]),
        .I1(\vir_row_reg[3]_0 [1]),
        .I2(\vir_row_reg[3]_0 [2]),
        .O(p_0_in__6[2]));
  LUT3 #(
    .INIT(8'h8F)) 
    \vir_row[3]_i_1 
       (.I0(wt_row03_out),
        .I1(inc_addr),
        .I2(arestn),
        .O(\vir_row[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \vir_row[3]_i_2 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(vir_mem_wr_cmpltd__0),
        .O(inc_addr));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vir_row[3]_i_3 
       (.I0(\vir_row_reg[3]_0 [1]),
        .I1(\vir_row_reg[3]_0 [0]),
        .I2(\vir_row_reg[3]_0 [2]),
        .I3(\vir_row_reg[3]_0 [3]),
        .O(p_0_in__6[3]));
  LUT2 #(
    .INIT(4'h8)) 
    \vir_row[3]_i_4 
       (.I0(\vir_row[3]_i_5_n_0 ),
        .I1(vir_mem_wr_cmpltd0__6),
        .O(vir_mem_wr_cmpltd__0));
  LUT6 #(
    .INIT(64'h8040400808040480)) 
    \vir_row[3]_i_5 
       (.I0(in_mem_rd_addr[6]),
        .I1(\vir_row[3]_i_6_n_0 ),
        .I2(in_mem_rd_addr[7]),
        .I3(image_dimension[6]),
        .I4(\vir_row[3]_i_7_n_0 ),
        .I5(image_dimension[7]),
        .O(\vir_row[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600966900)) 
    \vir_row[3]_i_6 
       (.I0(\wt_row_reg[3]_0 [1]),
        .I1(in_row_reg__0[1]),
        .I2(image_dimension[5]),
        .I3(image_dimension[4]),
        .I4(in_row_reg__0[0]),
        .I5(\wt_row_reg[3]_0 [0]),
        .O(\vir_row[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \vir_row[3]_i_7 
       (.I0(image_dimension[4]),
        .I1(image_dimension[5]),
        .O(\vir_row[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[0] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__6[0]),
        .Q(\vir_row_reg[3]_0 [0]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[1] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__6[1]),
        .Q(\vir_row_reg[3]_0 [1]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[2] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__6[2]),
        .Q(\vir_row_reg[3]_0 [2]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[3] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__6[3]),
        .Q(\vir_row_reg[3]_0 [3]),
        .R(\vir_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    vir_wr_enable_INST_0
       (.I0(ctrl_state[1]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[2]),
        .O(vir_wr_enable));
  LUT5 #(
    .INIT(32'h22327737)) 
    \wt_column[0]_i_1 
       (.I0(st_wt_r_c__0),
        .I1(kernel_dimension[0]),
        .I2(\wt_row[3]_i_9_n_0 ),
        .I3(inc_addr),
        .I4(Q[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'hBE14BE14FF00EB41)) 
    \wt_column[1]_i_1 
       (.I0(st_wt_r_c__0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(wt_row11_in[1]),
        .I4(\wt_row[3]_i_9_n_0 ),
        .I5(inc_addr),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wt_column[1]_i_2 
       (.I0(kernel_dimension[0]),
        .I1(kernel_dimension[1]),
        .O(wt_row11_in[1]));
  LUT6 #(
    .INIT(64'h88B8BBB8BBB888B8)) 
    \wt_column[2]_i_1 
       (.I0(wt_row11_in[2]),
        .I1(st_wt_r_c__0),
        .I2(\wt_column[2]_i_3_n_0 ),
        .I3(inc_addr),
        .I4(Q[2]),
        .I5(\wt_column[2]_i_4_n_0 ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \wt_column[2]_i_2 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[2]),
        .O(wt_row11_in[2]));
  LUT6 #(
    .INIT(64'h5A5A5A585858585A)) 
    \wt_column[2]_i_3 
       (.I0(\wt_row[3]_i_13_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(kernel_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[2]),
        .O(\wt_column[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wt_column[2]_i_4 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\wt_column[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5404FFFF)) 
    \wt_column[3]_i_1 
       (.I0(st_wt_r_c__0),
        .I1(\wt_column[3]_i_4_n_0 ),
        .I2(inc_addr),
        .I3(wt_row02_out),
        .I4(arestn),
        .O(\wt_column[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \wt_column[3]_i_2 
       (.I0(dec_addr__1),
        .I1(inc_addr),
        .I2(st_wt_r_c__0),
        .O(\wt_column[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBB8BBB888B8)) 
    \wt_column[3]_i_3 
       (.I0(wt_row11_in[3]),
        .I1(st_wt_r_c__0),
        .I2(\wt_column[3]_i_6_n_0 ),
        .I3(inc_addr),
        .I4(Q[3]),
        .I5(\wt_column[3]_i_7_n_0 ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'hA22A2AA200000000)) 
    \wt_column[3]_i_4 
       (.I0(\wt_row[3]_i_6_n_0 ),
        .I1(\wt_row[3]_i_18_n_0 ),
        .I2(\rd_address_reg[4]_0 [4]),
        .I3(\wt_row[3]_i_17_n_0 ),
        .I4(\wt_column[3]_i_8_n_0 ),
        .I5(\wt_row[3]_i_14_n_0 ),
        .O(\wt_column[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wt_column[3]_i_5 
       (.I0(kernel_dimension[2]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[3]),
        .O(wt_row11_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF0E1F0E0)) 
    \wt_column[3]_i_6 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(wt_row11_in[3]),
        .O(\wt_column[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \wt_column[3]_i_7 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\wt_column[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \wt_column[3]_i_8 
       (.I0(\wt_row[3]_i_15_n_0 ),
        .I1(\wt_row[3]_i_31_n_0 ),
        .I2(\wt_row[3]_i_30_n_0 ),
        .I3(\wt_row[3]_i_29_n_0 ),
        .I4(\wt_row[3]_i_28_n_0 ),
        .I5(\wt_column[3]_i_9_n_0 ),
        .O(\wt_column[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000069969669)) 
    \wt_column[3]_i_9 
       (.I0(\wt_row[3]_i_43_n_0 ),
        .I1(\wt_row[3]_i_42_n_0 ),
        .I2(\wt_row[3]_i_41_n_0 ),
        .I3(\wt_row[3]_i_40_n_0 ),
        .I4(\wt_row[3]_i_39_n_0 ),
        .I5(\wt_row[3]_i_26_n_0 ),
        .O(\wt_column[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_column_reg[0] 
       (.C(clk),
        .CE(\wt_column[3]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(Q[0]),
        .R(\wt_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_column_reg[1] 
       (.C(clk),
        .CE(\wt_column[3]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(Q[1]),
        .R(\wt_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_column_reg[2] 
       (.C(clk),
        .CE(\wt_column[3]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(Q[2]),
        .R(\wt_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_column_reg[3] 
       (.C(clk),
        .CE(\wt_column[3]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(Q[3]),
        .R(\wt_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \wt_row[0]_i_1 
       (.I0(kernel_dimension[4]),
        .I1(st_wt_r_c__0),
        .I2(\wt_row_reg[3]_0 [0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hFF6900690069FF69)) 
    \wt_row[1]_i_1 
       (.I0(\wt_row_reg[3]_0 [0]),
        .I1(inc_addr),
        .I2(\wt_row_reg[3]_0 [1]),
        .I3(st_wt_r_c__0),
        .I4(kernel_dimension[4]),
        .I5(kernel_dimension[5]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hFFFF6AA900006AA9)) 
    \wt_row[2]_i_1 
       (.I0(\wt_row_reg[3]_0 [2]),
        .I1(\wt_row_reg[3]_0 [1]),
        .I2(inc_addr),
        .I3(\wt_row_reg[3]_0 [0]),
        .I4(st_wt_r_c__0),
        .I5(data[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \wt_row[2]_i_2 
       (.I0(kernel_dimension[5]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[6]),
        .O(data[2]));
  LUT6 #(
    .INIT(64'h45404040FFFFFFFF)) 
    \wt_row[3]_i_1 
       (.I0(st_wt_r_c__0),
        .I1(wt_row03_out),
        .I2(inc_addr),
        .I3(\wt_row[3]_i_6_n_0 ),
        .I4(dec_addr__1),
        .I5(arestn),
        .O(\wt_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000200AAAAABAA)) 
    \wt_row[3]_i_10 
       (.I0(\wt_row_reg[3]_0 [0]),
        .I1(vir_mem_wr_cmpltd__0),
        .I2(ctrl_state[1]),
        .I3(ctrl_state[0]),
        .I4(ctrl_state[2]),
        .I5(\wt_row_reg[3]_0 [1]),
        .O(\wt_row[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \wt_row[3]_i_11 
       (.I0(kernel_dimension[6]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[7]),
        .O(data[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wt_row[3]_i_12 
       (.I0(Q[2]),
        .I1(Q[3]),
        .O(\wt_row[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wt_row[3]_i_13 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\wt_row[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \wt_row[3]_i_14 
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .O(\wt_row[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hE17887E11E87781E)) 
    \wt_row[3]_i_15 
       (.I0(\wt_row[3]_i_20_n_0 ),
        .I1(\wt_row[3]_i_21_n_0 ),
        .I2(\wt_row[3]_i_22_n_0 ),
        .I3(\wt_row[3]_i_23_n_0 ),
        .I4(\wt_row[3]_i_24_n_0 ),
        .I5(\wt_row[3]_i_25_n_0 ),
        .O(\wt_row[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4BB4B44BB44B4BB4)) 
    \wt_row[3]_i_16 
       (.I0(\wt_row[3]_i_26_n_0 ),
        .I1(\wt_row[3]_i_27_n_0 ),
        .I2(\wt_row[3]_i_28_n_0 ),
        .I3(\wt_row[3]_i_29_n_0 ),
        .I4(\wt_row[3]_i_30_n_0 ),
        .I5(\wt_row[3]_i_31_n_0 ),
        .O(cnvlt_cmpltd1[4]));
  LUT3 #(
    .INIT(8'hE8)) 
    \wt_row[3]_i_17 
       (.I0(\wt_row[3]_i_32_n_0 ),
        .I1(cnvlt_cmpltd1[3]),
        .I2(\wt_row[3]_i_34_n_0 ),
        .O(\wt_row[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8008088008808008)) 
    \wt_row[3]_i_18 
       (.I0(\wt_row[3]_i_35_n_0 ),
        .I1(\wt_row[3]_i_36_n_0 ),
        .I2(\rd_address_reg[4]_0 [3]),
        .I3(\wt_row[3]_i_32_n_0 ),
        .I4(cnvlt_cmpltd1[3]),
        .I5(\wt_row[3]_i_34_n_0 ),
        .O(\wt_row[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4010200804010280)) 
    \wt_row[3]_i_19 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(kernel_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[2]),
        .O(\wt_row[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hEEEEFAAA)) 
    \wt_row[3]_i_2 
       (.I0(st_wt_r_c__0),
        .I1(wt_row02_out),
        .I2(dec_addr__1),
        .I3(\wt_row[3]_i_9_n_0 ),
        .I4(inc_addr),
        .O(\wt_row[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \wt_row[3]_i_20 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[6]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[3]),
        .I4(kernel_dimension[5]),
        .I5(kernel_dimension[2]),
        .O(\wt_row[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hE0C0A00000008000)) 
    \wt_row[3]_i_21 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[0]),
        .I3(kernel_dimension[5]),
        .I4(kernel_dimension[2]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    \wt_row[3]_i_22 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[6]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[3]),
        .I4(kernel_dimension[5]),
        .I5(kernel_dimension[2]),
        .O(\wt_row[3]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \wt_row[3]_i_23 
       (.I0(kernel_dimension[7]),
        .I1(kernel_dimension[0]),
        .O(\wt_row[3]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wt_row[3]_i_24 
       (.I0(kernel_dimension[2]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[5]),
        .O(\wt_row[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \wt_row[3]_i_25 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[7]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[3]),
        .I4(kernel_dimension[6]),
        .I5(kernel_dimension[2]),
        .O(\wt_row[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hD7D77DD77D7DD77D)) 
    \wt_row[3]_i_26 
       (.I0(\wt_row[3]_i_37_n_0 ),
        .I1(kernel_dimension[3]),
        .I2(image_dimension[3]),
        .I3(image_dimension[2]),
        .I4(kernel_dimension[2]),
        .I5(\wt_row[3]_i_38_n_0 ),
        .O(\wt_row[3]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \wt_row[3]_i_27 
       (.I0(\wt_row[3]_i_39_n_0 ),
        .I1(\wt_row[3]_i_40_n_0 ),
        .I2(\wt_row[3]_i_41_n_0 ),
        .I3(\wt_row[3]_i_42_n_0 ),
        .I4(\wt_row[3]_i_43_n_0 ),
        .O(\wt_row[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'hD7D77DD77D7DD77D)) 
    \wt_row[3]_i_28 
       (.I0(A[1]),
        .I1(kernel_dimension[3]),
        .I2(image_dimension[3]),
        .I3(image_dimension[2]),
        .I4(kernel_dimension[2]),
        .I5(\wt_row[3]_i_38_n_0 ),
        .O(\wt_row[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'hB2DBB2B2FFFFFFFF)) 
    \wt_row[3]_i_29 
       (.I0(image_dimension[3]),
        .I1(kernel_dimension[3]),
        .I2(\wt_row[3]_i_38_n_0 ),
        .I3(kernel_dimension[2]),
        .I4(image_dimension[2]),
        .I5(\wt_row[3]_i_37_n_0 ),
        .O(\wt_row[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF6AA900006AA9)) 
    \wt_row[3]_i_3 
       (.I0(\wt_row_reg[3]_0 [3]),
        .I1(\wt_row_reg[3]_0 [1]),
        .I2(\wt_row[3]_i_10_n_0 ),
        .I3(\wt_row_reg[3]_0 [2]),
        .I4(st_wt_r_c__0),
        .I5(data[3]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'hE81717E8)) 
    \wt_row[3]_i_30 
       (.I0(\wt_row[3]_i_43_n_0 ),
        .I1(\wt_row[3]_i_42_n_0 ),
        .I2(\wt_row[3]_i_41_n_0 ),
        .I3(\wt_row[3]_i_45_n_0 ),
        .I4(\wt_row[3]_i_46_n_0 ),
        .O(\wt_row[3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h8EE8E88E)) 
    \wt_row[3]_i_31 
       (.I0(\wt_row[3]_i_39_n_0 ),
        .I1(\wt_row[3]_i_40_n_0 ),
        .I2(\wt_row[3]_i_41_n_0 ),
        .I3(\wt_row[3]_i_42_n_0 ),
        .I4(\wt_row[3]_i_43_n_0 ),
        .O(\wt_row[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \wt_row[3]_i_32 
       (.I0(\wt_row[3]_i_47_n_0 ),
        .I1(cnvlt_cmpltd1[2]),
        .I2(\wt_row[3]_i_49_n_0 ),
        .O(\wt_row[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \wt_row[3]_i_33 
       (.I0(\wt_row[3]_i_26_n_0 ),
        .I1(\wt_row[3]_i_43_n_0 ),
        .I2(\wt_row[3]_i_42_n_0 ),
        .I3(\wt_row[3]_i_41_n_0 ),
        .I4(\wt_row[3]_i_40_n_0 ),
        .I5(\wt_row[3]_i_39_n_0 ),
        .O(cnvlt_cmpltd1[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \wt_row[3]_i_34 
       (.I0(\wt_row[3]_i_21_n_0 ),
        .I1(\wt_row[3]_i_50_n_0 ),
        .I2(\wt_row[3]_i_20_n_0 ),
        .O(\wt_row[3]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \wt_row[3]_i_35 
       (.I0(\wt_row[3]_i_49_n_0 ),
        .I1(cnvlt_cmpltd1[2]),
        .I2(\wt_row[3]_i_47_n_0 ),
        .I3(\rd_address_reg[4]_0 [2]),
        .O(\wt_row[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0096690069000069)) 
    \wt_row[3]_i_36 
       (.I0(\rd_address_reg[4]_0 [1]),
        .I1(cnvlt_cmpltd1[1]),
        .I2(\wt_row[3]_i_52_n_0 ),
        .I3(\rd_address_reg[4]_0 [0]),
        .I4(\wt_row[3]_i_53_n_0 ),
        .I5(cnvlt_cmpltd1[0]),
        .O(\wt_row[3]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wt_row[3]_i_37 
       (.I0(image_dimension[4]),
        .I1(kernel_dimension[4]),
        .O(\wt_row[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hBAFF00200020BAFF)) 
    \wt_row[3]_i_38 
       (.I0(image_dimension[1]),
        .I1(kernel_dimension[0]),
        .I2(image_dimension[0]),
        .I3(kernel_dimension[1]),
        .I4(image_dimension[2]),
        .I5(kernel_dimension[2]),
        .O(\wt_row[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hE0C0A00000008000)) 
    \wt_row[3]_i_39 
       (.I0(B[1]),
        .I1(\wt_row[3]_i_37_n_0 ),
        .I2(\wt_row[3]_i_56_n_0 ),
        .I3(A[1]),
        .I4(B[2]),
        .I5(A[2]),
        .O(\wt_row[3]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \wt_row[3]_i_4 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(vir_mem_wr_cmpltd__0),
        .O(st_wt_r_c__0));
  LUT6 #(
    .INIT(64'h0000800880080000)) 
    \wt_row[3]_i_40 
       (.I0(B[2]),
        .I1(B[1]),
        .I2(kernel_dimension[4]),
        .I3(image_dimension[4]),
        .I4(image_dimension[5]),
        .I5(kernel_dimension[5]),
        .O(\wt_row[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h99696696FFFFFFFF)) 
    \wt_row[3]_i_41 
       (.I0(kernel_dimension[7]),
        .I1(image_dimension[7]),
        .I2(image_dimension[6]),
        .I3(kernel_dimension[6]),
        .I4(\wt_row[3]_i_59_n_0 ),
        .I5(\wt_row[3]_i_56_n_0 ),
        .O(\wt_row[3]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h9969FFFF)) 
    \wt_row[3]_i_42 
       (.I0(kernel_dimension[5]),
        .I1(image_dimension[5]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[4]),
        .I4(B[2]),
        .O(\wt_row[3]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD7D77DD7)) 
    \wt_row[3]_i_43 
       (.I0(A[2]),
        .I1(kernel_dimension[1]),
        .I2(image_dimension[1]),
        .I3(image_dimension[0]),
        .I4(kernel_dimension[0]),
        .O(\wt_row[3]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \wt_row[3]_i_44 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(image_dimension[5]),
        .I3(kernel_dimension[5]),
        .O(A[1]));
  LUT6 #(
    .INIT(64'hD77D288228822882)) 
    \wt_row[3]_i_45 
       (.I0(B[1]),
        .I1(\wt_row[3]_i_59_n_0 ),
        .I2(\wt_row[3]_i_60_n_0 ),
        .I3(\wt_row[3]_i_61_n_0 ),
        .I4(B[2]),
        .I5(A[2]),
        .O(\wt_row[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'hB2DBB2B2FFFFFFFF)) 
    \wt_row[3]_i_46 
       (.I0(image_dimension[7]),
        .I1(kernel_dimension[7]),
        .I2(\wt_row[3]_i_59_n_0 ),
        .I3(kernel_dimension[6]),
        .I4(image_dimension[6]),
        .I5(\wt_row[3]_i_56_n_0 ),
        .O(\wt_row[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hEBAABEFF820028AA)) 
    \wt_row[3]_i_47 
       (.I0(\wt_row[3]_i_62_n_0 ),
        .I1(image_dimension[0]),
        .I2(kernel_dimension[0]),
        .I3(A[1]),
        .I4(\wt_row[3]_i_63_n_0 ),
        .I5(\wt_row[3]_i_52_n_0 ),
        .O(\wt_row[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h27777888D8887888)) 
    \wt_row[3]_i_48 
       (.I0(\wt_row[3]_i_37_n_0 ),
        .I1(B[2]),
        .I2(A[1]),
        .I3(B[1]),
        .I4(\wt_row[3]_i_56_n_0 ),
        .I5(A[2]),
        .O(cnvlt_cmpltd1[2]));
  LUT6 #(
    .INIT(64'h27777888D8887888)) 
    \wt_row[3]_i_49 
       (.I0(kernel_dimension[4]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_49_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \wt_row[3]_i_5 
       (.I0(wt_row02_out),
        .I1(wt_row1__7),
        .O(wt_row03_out));
  LUT6 #(
    .INIT(64'h7FFF800080008000)) 
    \wt_row[3]_i_50 
       (.I0(kernel_dimension[5]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[2]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[7]),
        .O(\wt_row[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hD72828288282D728)) 
    \wt_row[3]_i_51 
       (.I0(\wt_row[3]_i_56_n_0 ),
        .I1(image_dimension[5]),
        .I2(kernel_dimension[5]),
        .I3(B[1]),
        .I4(image_dimension[4]),
        .I5(kernel_dimension[4]),
        .O(cnvlt_cmpltd1[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7888)) 
    \wt_row[3]_i_52 
       (.I0(kernel_dimension[0]),
        .I1(kernel_dimension[5]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[4]),
        .O(\wt_row[3]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wt_row[3]_i_53 
       (.I0(kernel_dimension[4]),
        .I1(kernel_dimension[0]),
        .O(\wt_row[3]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h9009)) 
    \wt_row[3]_i_54 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[0]),
        .I3(image_dimension[0]),
        .O(cnvlt_cmpltd1[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h4BB4)) 
    \wt_row[3]_i_55 
       (.I0(kernel_dimension[0]),
        .I1(image_dimension[0]),
        .I2(image_dimension[1]),
        .I3(kernel_dimension[1]),
        .O(B[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \wt_row[3]_i_56 
       (.I0(image_dimension[0]),
        .I1(kernel_dimension[0]),
        .O(\wt_row[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h4520BADFBADF4520)) 
    \wt_row[3]_i_57 
       (.I0(image_dimension[1]),
        .I1(kernel_dimension[0]),
        .I2(image_dimension[0]),
        .I3(kernel_dimension[1]),
        .I4(image_dimension[2]),
        .I5(kernel_dimension[2]),
        .O(B[2]));
  LUT6 #(
    .INIT(64'h4520BADFBADF4520)) 
    \wt_row[3]_i_58 
       (.I0(image_dimension[5]),
        .I1(kernel_dimension[4]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[5]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(A[2]));
  LUT6 #(
    .INIT(64'hBAFF00200020BAFF)) 
    \wt_row[3]_i_59 
       (.I0(image_dimension[5]),
        .I1(kernel_dimension[4]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[5]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \wt_row[3]_i_6 
       (.I0(\wt_row[3]_i_12_n_0 ),
        .I1(\wt_row_reg[3]_0 [2]),
        .I2(\wt_row_reg[3]_0 [3]),
        .I3(\wt_row_reg[3]_0 [0]),
        .I4(\wt_row_reg[3]_0 [1]),
        .I5(\wt_row[3]_i_13_n_0 ),
        .O(\wt_row[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \wt_row[3]_i_60 
       (.I0(kernel_dimension[6]),
        .I1(image_dimension[6]),
        .O(\wt_row[3]_i_60_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \wt_row[3]_i_61 
       (.I0(image_dimension[7]),
        .I1(kernel_dimension[7]),
        .O(\wt_row[3]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wt_row[3]_i_62 
       (.I0(image_dimension[0]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[0]),
        .I3(kernel_dimension[4]),
        .O(\wt_row[3]_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hF66FF66F6FF6F66F)) 
    \wt_row[3]_i_63 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[1]),
        .I3(image_dimension[1]),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'h28828228AAAAAAAA)) 
    \wt_row[3]_i_7 
       (.I0(\wt_row[3]_i_14_n_0 ),
        .I1(\wt_row[3]_i_15_n_0 ),
        .I2(cnvlt_cmpltd1[4]),
        .I3(\wt_row[3]_i_17_n_0 ),
        .I4(\rd_address_reg[4]_0 [4]),
        .I5(\wt_row[3]_i_18_n_0 ),
        .O(dec_addr__1));
  LUT6 #(
    .INIT(64'h8888888222222228)) 
    \wt_row[3]_i_8 
       (.I0(\wt_row[3]_i_19_n_0 ),
        .I1(Q[3]),
        .I2(kernel_dimension[2]),
        .I3(kernel_dimension[0]),
        .I4(kernel_dimension[1]),
        .I5(kernel_dimension[3]),
        .O(wt_row02_out));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \wt_row[3]_i_9 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\wt_row[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[0] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(\wt_row_reg[3]_0 [0]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[1] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(\wt_row_reg[3]_0 [1]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[2] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(\wt_row_reg[3]_0 [2]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[3] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(\wt_row_reg[3]_0 [3]),
        .R(\wt_row[3]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "hardware_acceletor_controller_0_0,controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "controller,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    arestn,
    reading_ended,
    image_dimension,
    kernel_dimension,
    vir_wr_enable,
    start_wr_fsm,
    ou_wr_enable,
    in_mem_rd_addr,
    wt_mem_rd_addr,
    vr_mem_wr_addr,
    ou_mem_rd_addr,
    ou_mem_wr_addr,
    rd_address);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, INSERT_VIP 0" *) input clk;
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

  wire \<const0> ;
  wire arestn;
  wire clk;
  wire [7:0]image_dimension;
  wire [7:0]in_mem_rd_addr;
  wire [7:0]kernel_dimension;
  wire n_0_157;
  wire [3:0]\^ou_mem_rd_addr ;
  wire [7:0]ou_mem_wr_addr;
  wire ou_wr_enable;
  wire [4:0]rd_address;
  wire reading_ended;
  wire start_wr_fsm;
  wire vir_wr_enable;
  wire [7:0]vr_mem_wr_addr;
  wire [7:0]wt_mem_rd_addr;

  assign ou_mem_rd_addr[7] = \<const0> ;
  assign ou_mem_rd_addr[6] = \<const0> ;
  assign ou_mem_rd_addr[5] = \<const0> ;
  assign ou_mem_rd_addr[4] = \<const0> ;
  assign ou_mem_rd_addr[3:0] = \^ou_mem_rd_addr [3:0];
  GND GND
       (.G(\<const0> ));
  LUT1 #(
    .INIT(2'h1)) 
    i_157
       (.I0(arestn),
        .O(n_0_157));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller inst
       (.Q(wt_mem_rd_addr[3:0]),
        .arestn(arestn),
        .clk(clk),
        .image_dimension(image_dimension),
        .in_mem_rd_addr(in_mem_rd_addr),
        .kernel_dimension(kernel_dimension),
        .\o_column_reg[3]_0 (ou_mem_wr_addr[3:0]),
        .\o_row_reg[3]_0 (ou_mem_wr_addr[7:4]),
        .ou_wr_enable(ou_wr_enable),
        .\rd_address_reg[4]_0 (rd_address),
        .reading_ended(reading_ended),
        .\s_column_reg[3]_0 (\^ou_mem_rd_addr ),
        .start_wr_fsm(start_wr_fsm),
        .\vir_column_reg[3]_0 (vr_mem_wr_addr[3:0]),
        .\vir_row_reg[3]_0 (vr_mem_wr_addr[7:4]),
        .vir_wr_enable(vir_wr_enable),
        .\wt_row_reg[3]_0 (wt_mem_rd_addr[7:4]));
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
