// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue May 20 12:42:13 2025
// Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_accelerator_controller_0_0_sim_netlist.v
// Design      : hardware_accelerator_controller_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu7ev-ffvc1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller
   (rd_address,
    wt_mem_rd_addr,
    start_mltpn_writing_fsm,
    rst_module,
    Q,
    ou_mem_wr_addr,
    vr_mem_wr_addr,
    ou_mem_rd_addr,
    ou_wr_enable,
    in_mem_rd_addr,
    start_cnvtn_writing_fsm,
    vir_wr_enable,
    cvltn_or_mltpn,
    arestn,
    image_dimension,
    kernel_dimension,
    clk,
    matrix_b_dimension,
    matrix_a_dimension,
    ended_reading_cnvtn_data,
    ended_reading_mltn_data);
  output [4:0]rd_address;
  output [3:0]wt_mem_rd_addr;
  output start_mltpn_writing_fsm;
  output rst_module;
  output [3:0]Q;
  output [7:0]ou_mem_wr_addr;
  output [7:0]vr_mem_wr_addr;
  output [7:0]ou_mem_rd_addr;
  output ou_wr_enable;
  output [7:0]in_mem_rd_addr;
  output start_cnvtn_writing_fsm;
  output vir_wr_enable;
  output cvltn_or_mltpn;
  input arestn;
  input [7:0]image_dimension;
  input [7:0]kernel_dimension;
  input clk;
  input [7:0]matrix_b_dimension;
  input [7:0]matrix_a_dimension;
  input ended_reading_cnvtn_data;
  input ended_reading_mltn_data;

  wire [3:0]Q;
  wire arestn;
  wire clear;
  wire clk;
  wire [2:0]ctrl_n_state;
  wire [2:0]ctrl_state;
  wire \ctrl_state[0]_i_2_n_0 ;
  wire \ctrl_state[0]_i_3_n_0 ;
  wire \ctrl_state[0]_i_4_n_0 ;
  wire \ctrl_state[0]_i_5_n_0 ;
  wire \ctrl_state[0]_i_6_n_0 ;
  wire \ctrl_state[0]_i_7_n_0 ;
  wire \ctrl_state[1]_i_10_n_0 ;
  wire \ctrl_state[1]_i_11_n_0 ;
  wire \ctrl_state[1]_i_12_n_0 ;
  wire \ctrl_state[1]_i_13_n_0 ;
  wire \ctrl_state[1]_i_14_n_0 ;
  wire \ctrl_state[1]_i_15_n_0 ;
  wire \ctrl_state[1]_i_16_n_0 ;
  wire \ctrl_state[1]_i_17_n_0 ;
  wire \ctrl_state[1]_i_18_n_0 ;
  wire \ctrl_state[1]_i_19_n_0 ;
  wire \ctrl_state[1]_i_20_n_0 ;
  wire \ctrl_state[1]_i_21_n_0 ;
  wire \ctrl_state[1]_i_2_n_0 ;
  wire \ctrl_state[1]_i_3_n_0 ;
  wire \ctrl_state[1]_i_4_n_0 ;
  wire \ctrl_state[1]_i_5_n_0 ;
  wire \ctrl_state[1]_i_6_n_0 ;
  wire \ctrl_state[1]_i_7_n_0 ;
  wire \ctrl_state[1]_i_8_n_0 ;
  wire \ctrl_state[1]_i_9_n_0 ;
  wire cvltn_or_mltpn;
  wire ended_reading_cnvtn_data;
  wire ended_reading_mltn_data;
  wire [7:0]image_dimension;
  wire [2:0]in_column;
  wire \in_column[2]_i_1_n_0 ;
  wire in_column_0;
  wire [7:0]in_mem_rd_addr;
  wire \in_mem_rd_addr[3]_INST_0_i_1_n_0 ;
  wire \in_mem_rd_addr[7]_INST_0_i_1_n_0 ;
  wire [2:0]in_row;
  wire \in_row[0]_i_1_n_0 ;
  wire \in_row[1]_i_1_n_0 ;
  wire \in_row[2]_i_2_n_0 ;
  wire in_row_1;
  wire inc_addr;
  wire inc_o_column;
  wire inc_o_row;
  wire inc_rd_address;
  wire inc_s_column;
  wire inc_s_row;
  wire [7:0]kernel_dimension;
  wire [7:0]matrix_a_dimension;
  wire [7:0]matrix_b_dimension;
  wire \o_column[3]_i_1_n_0 ;
  wire \o_column[3]_i_4_n_0 ;
  wire \o_row[3]_i_1_n_0 ;
  wire [7:0]ou_mem_rd_addr;
  wire [7:0]ou_mem_wr_addr;
  wire ou_wr_enable;
  wire [3:0]p_0_in;
  wire [4:0]p_0_in__0;
  wire [3:0]p_0_in__1;
  wire [3:0]p_0_in__2;
  wire [3:0]p_0_in__3;
  wire [3:0]p_0_in__4;
  wire [3:0]p_0_in__5;
  wire [3:0]p_0_in__6;
  wire [2:0]p_1_in;
  wire [3:0]p_2_in;
  wire [4:0]rd_address;
  wire \rd_address[4]_i_3_n_0 ;
  wire rst_module;
  wire rst_module_INST_0_i_10_n_0;
  wire rst_module_INST_0_i_11_n_0;
  wire rst_module_INST_0_i_1_n_0;
  wire rst_module_INST_0_i_2_n_0;
  wire rst_module_INST_0_i_3_n_0;
  wire rst_module_INST_0_i_4_n_0;
  wire rst_module_INST_0_i_5_n_0;
  wire rst_module_INST_0_i_6_n_0;
  wire rst_module_INST_0_i_7_n_0;
  wire rst_module_INST_0_i_8_n_0;
  wire rst_module_INST_0_i_9_n_0;
  wire \s_column[3]_i_1_n_0 ;
  wire \s_row[3]_i_3_n_0 ;
  wire \s_row[3]_i_4_n_0 ;
  wire \s_row[3]_i_5_n_0 ;
  wire \s_row[3]_i_6_n_0 ;
  wire start_cnvtn_writing_fsm;
  wire start_mltpn_writing_fsm;
  wire \vir_column[3]_i_4_n_0 ;
  wire \vir_column[3]_i_5_n_0 ;
  wire \vir_column[3]_i_6_n_0 ;
  wire \vir_column[3]_i_7_n_0 ;
  wire \vir_row[3]_i_1_n_0 ;
  wire \vir_row[3]_i_4_n_0 ;
  wire \vir_row[3]_i_5_n_0 ;
  wire \vir_row[3]_i_6_n_0 ;
  wire \vir_row[3]_i_7_n_0 ;
  wire \vir_row[3]_i_8_n_0 ;
  wire \vir_row[3]_i_9_n_0 ;
  wire vir_wr_enable;
  wire [7:0]vr_mem_wr_addr;
  wire \wt_column[1]_i_2_n_0 ;
  wire \wt_column[2]_i_2_n_0 ;
  wire \wt_column[2]_i_3_n_0 ;
  wire \wt_column[3]_i_1_n_0 ;
  wire \wt_column[3]_i_2_n_0 ;
  wire \wt_column[3]_i_4_n_0 ;
  wire [3:0]wt_mem_rd_addr;
  wire \wt_row[2]_i_2_n_0 ;
  wire \wt_row[3]_i_10_n_0 ;
  wire \wt_row[3]_i_11_n_0 ;
  wire \wt_row[3]_i_12_n_0 ;
  wire \wt_row[3]_i_13_n_0 ;
  wire \wt_row[3]_i_14_n_0 ;
  wire \wt_row[3]_i_15_n_0 ;
  wire \wt_row[3]_i_16_n_0 ;
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
  wire \wt_row[3]_i_33_n_0 ;
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
  wire \wt_row[3]_i_44_n_0 ;
  wire \wt_row[3]_i_45_n_0 ;
  wire \wt_row[3]_i_46_n_0 ;
  wire \wt_row[3]_i_47_n_0 ;
  wire \wt_row[3]_i_48_n_0 ;
  wire \wt_row[3]_i_49_n_0 ;
  wire \wt_row[3]_i_4_n_0 ;
  wire \wt_row[3]_i_50_n_0 ;
  wire \wt_row[3]_i_51_n_0 ;
  wire \wt_row[3]_i_52_n_0 ;
  wire \wt_row[3]_i_53_n_0 ;
  wire \wt_row[3]_i_54_n_0 ;
  wire \wt_row[3]_i_55_n_0 ;
  wire \wt_row[3]_i_56_n_0 ;
  wire \wt_row[3]_i_57_n_0 ;
  wire \wt_row[3]_i_5_n_0 ;
  wire \wt_row[3]_i_6_n_0 ;
  wire \wt_row[3]_i_7_n_0 ;
  wire \wt_row[3]_i_8_n_0 ;
  wire \wt_row[3]_i_9_n_0 ;

  LUT6 #(
    .INIT(64'hEFEFEFEFEFE0E0E0)) 
    \ctrl_state[0]_i_1 
       (.I0(\rd_address[4]_i_3_n_0 ),
        .I1(\ctrl_state[0]_i_2_n_0 ),
        .I2(ctrl_state[2]),
        .I3(\ctrl_state[1]_i_4_n_0 ),
        .I4(\ctrl_state[0]_i_3_n_0 ),
        .I5(\ctrl_state[0]_i_4_n_0 ),
        .O(ctrl_n_state[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hAA80)) 
    \ctrl_state[0]_i_2 
       (.I0(ctrl_state[1]),
        .I1(\s_row[3]_i_3_n_0 ),
        .I2(\s_row[3]_i_4_n_0 ),
        .I3(ctrl_state[0]),
        .O(\ctrl_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABAAAAABAAAAAAAA)) 
    \ctrl_state[0]_i_3 
       (.I0(ctrl_state[0]),
        .I1(\ctrl_state[0]_i_5_n_0 ),
        .I2(\ctrl_state[0]_i_6_n_0 ),
        .I3(\wt_row[3]_i_15_n_0 ),
        .I4(\wt_row[3]_i_14_n_0 ),
        .I5(\wt_row[3]_i_13_n_0 ),
        .O(\ctrl_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \ctrl_state[0]_i_4 
       (.I0(\ctrl_state[1]_i_2_n_0 ),
        .I1(ctrl_state[0]),
        .I2(ended_reading_cnvtn_data),
        .I3(ctrl_state[1]),
        .O(\ctrl_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hB6FBDF6DDF6DB6FB)) 
    \ctrl_state[0]_i_5 
       (.I0(rd_address[1]),
        .I1(\wt_row[3]_i_29_n_0 ),
        .I2(\wt_row[3]_i_30_n_0 ),
        .I3(\wt_row[3]_i_28_n_0 ),
        .I4(\ctrl_state[0]_i_7_n_0 ),
        .I5(rd_address[2]),
        .O(\ctrl_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hAA5A6669)) 
    \ctrl_state[0]_i_6 
       (.I0(rd_address[0]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[4]),
        .I3(image_dimension[0]),
        .I4(image_dimension[4]),
        .O(\ctrl_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_state[0]_i_7 
       (.I0(\wt_row[3]_i_18_n_0 ),
        .I1(\wt_row[3]_i_17_n_0 ),
        .O(\ctrl_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAFFFAF11)) 
    \ctrl_state[1]_i_1 
       (.I0(ctrl_state[1]),
        .I1(\ctrl_state[1]_i_2_n_0 ),
        .I2(\ctrl_state[1]_i_3_n_0 ),
        .I3(ctrl_state[2]),
        .I4(\ctrl_state[1]_i_4_n_0 ),
        .O(ctrl_n_state[1]));
  LUT3 #(
    .INIT(8'h96)) 
    \ctrl_state[1]_i_10 
       (.I0(\ctrl_state[1]_i_15_n_0 ),
        .I1(matrix_a_dimension[7]),
        .I2(matrix_a_dimension[3]),
        .O(\ctrl_state[1]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h99969666)) 
    \ctrl_state[1]_i_11 
       (.I0(matrix_b_dimension[7]),
        .I1(matrix_b_dimension[3]),
        .I2(matrix_b_dimension[2]),
        .I3(\ctrl_state[1]_i_19_n_0 ),
        .I4(matrix_b_dimension[6]),
        .O(\ctrl_state[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hEEEE8EE88EE8EEEE)) 
    \ctrl_state[1]_i_12 
       (.I0(\ctrl_state[1]_i_20_n_0 ),
        .I1(\ctrl_state[1]_i_18_n_0 ),
        .I2(matrix_a_dimension[0]),
        .I3(matrix_a_dimension[4]),
        .I4(matrix_b_dimension[0]),
        .I5(matrix_b_dimension[4]),
        .O(\ctrl_state[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h077FF880F880077F)) 
    \ctrl_state[1]_i_13 
       (.I0(matrix_a_dimension[4]),
        .I1(matrix_a_dimension[0]),
        .I2(matrix_a_dimension[5]),
        .I3(matrix_a_dimension[1]),
        .I4(matrix_a_dimension[2]),
        .I5(matrix_a_dimension[6]),
        .O(\ctrl_state[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h157FEA80EA80157F)) 
    \ctrl_state[1]_i_14 
       (.I0(matrix_b_dimension[5]),
        .I1(matrix_b_dimension[4]),
        .I2(matrix_b_dimension[0]),
        .I3(matrix_b_dimension[1]),
        .I4(matrix_b_dimension[2]),
        .I5(matrix_b_dimension[6]),
        .O(\ctrl_state[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFEEAEAEAA8808080)) 
    \ctrl_state[1]_i_15 
       (.I0(matrix_a_dimension[2]),
        .I1(matrix_a_dimension[1]),
        .I2(matrix_a_dimension[5]),
        .I3(matrix_a_dimension[0]),
        .I4(matrix_a_dimension[4]),
        .I5(matrix_a_dimension[6]),
        .O(\ctrl_state[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9FF9FFFFFFFF9FF9)) 
    \ctrl_state[1]_i_16 
       (.I0(\ctrl_state[1]_i_13_n_0 ),
        .I1(rd_address[2]),
        .I2(rd_address[1]),
        .I3(\ctrl_state[1]_i_20_n_0 ),
        .I4(rd_address[0]),
        .I5(\ctrl_state[1]_i_21_n_0 ),
        .O(\ctrl_state[1]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_state[1]_i_17 
       (.I0(matrix_b_dimension[4]),
        .I1(matrix_b_dimension[0]),
        .O(\ctrl_state[1]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \ctrl_state[1]_i_18 
       (.I0(matrix_b_dimension[0]),
        .I1(matrix_b_dimension[4]),
        .I2(matrix_b_dimension[1]),
        .I3(matrix_b_dimension[5]),
        .O(\ctrl_state[1]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEA80)) 
    \ctrl_state[1]_i_19 
       (.I0(matrix_b_dimension[1]),
        .I1(matrix_b_dimension[0]),
        .I2(matrix_b_dimension[4]),
        .I3(matrix_b_dimension[5]),
        .O(\ctrl_state[1]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'hEF)) 
    \ctrl_state[1]_i_2 
       (.I0(\vir_row[3]_i_4_n_0 ),
        .I1(\vir_row[3]_i_5_n_0 ),
        .I2(ctrl_state[0]),
        .O(\ctrl_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \ctrl_state[1]_i_20 
       (.I0(matrix_a_dimension[0]),
        .I1(matrix_a_dimension[4]),
        .I2(matrix_a_dimension[1]),
        .I3(matrix_a_dimension[5]),
        .O(\ctrl_state[1]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ctrl_state[1]_i_21 
       (.I0(matrix_a_dimension[4]),
        .I1(matrix_a_dimension[0]),
        .O(\ctrl_state[1]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'hE2FF)) 
    \ctrl_state[1]_i_3 
       (.I0(\ctrl_state[1]_i_5_n_0 ),
        .I1(\ctrl_state[1]_i_6_n_0 ),
        .I2(\ctrl_state[1]_i_7_n_0 ),
        .I3(ctrl_state[0]),
        .O(\ctrl_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hBF00)) 
    \ctrl_state[1]_i_4 
       (.I0(rst_module_INST_0_i_1_n_0),
        .I1(rst_module_INST_0_i_2_n_0),
        .I2(ctrl_state[0]),
        .I3(ctrl_state[1]),
        .O(\ctrl_state[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF6BBFFDD6)) 
    \ctrl_state[1]_i_5 
       (.I0(rd_address[3]),
        .I1(\ctrl_state[1]_i_8_n_0 ),
        .I2(matrix_b_dimension[3]),
        .I3(matrix_b_dimension[7]),
        .I4(rd_address[4]),
        .I5(\ctrl_state[1]_i_9_n_0 ),
        .O(\ctrl_state[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB2BB22B2)) 
    \ctrl_state[1]_i_6 
       (.I0(\ctrl_state[1]_i_10_n_0 ),
        .I1(\ctrl_state[1]_i_11_n_0 ),
        .I2(\ctrl_state[1]_i_12_n_0 ),
        .I3(\ctrl_state[1]_i_13_n_0 ),
        .I4(\ctrl_state[1]_i_14_n_0 ),
        .O(\ctrl_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF7BBDBDDE)) 
    \ctrl_state[1]_i_7 
       (.I0(rd_address[3]),
        .I1(rd_address[4]),
        .I2(\ctrl_state[1]_i_15_n_0 ),
        .I3(matrix_a_dimension[7]),
        .I4(matrix_a_dimension[3]),
        .I5(\ctrl_state[1]_i_16_n_0 ),
        .O(\ctrl_state[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEEEEAAAA8888000)) 
    \ctrl_state[1]_i_8 
       (.I0(matrix_b_dimension[6]),
        .I1(matrix_b_dimension[5]),
        .I2(matrix_b_dimension[4]),
        .I3(matrix_b_dimension[0]),
        .I4(matrix_b_dimension[1]),
        .I5(matrix_b_dimension[2]),
        .O(\ctrl_state[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF66FF66FFFFF)) 
    \ctrl_state[1]_i_9 
       (.I0(\ctrl_state[1]_i_17_n_0 ),
        .I1(rd_address[0]),
        .I2(rd_address[2]),
        .I3(\ctrl_state[1]_i_14_n_0 ),
        .I4(rd_address[1]),
        .I5(\ctrl_state[1]_i_18_n_0 ),
        .O(\ctrl_state[1]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFF40FF00)) 
    \ctrl_state[2]_i_1 
       (.I0(rst_module_INST_0_i_1_n_0),
        .I1(rst_module_INST_0_i_2_n_0),
        .I2(ctrl_state[0]),
        .I3(ctrl_state[2]),
        .I4(ctrl_state[1]),
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
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    cvltn_or_mltpn_INST_0
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[1]),
        .O(cvltn_or_mltpn));
  LUT1 #(
    .INIT(2'h1)) 
    \in_column[0]_i_1 
       (.I0(in_column[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_column[1]_i_1 
       (.I0(in_column[0]),
        .I1(in_column[1]),
        .O(p_1_in[1]));
  LUT4 #(
    .INIT(16'h02FF)) 
    \in_column[2]_i_1 
       (.I0(inc_addr),
        .I1(\vir_column[3]_i_6_n_0 ),
        .I2(\vir_row[3]_i_5_n_0 ),
        .I3(arestn),
        .O(\in_column[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \in_column[2]_i_2 
       (.I0(in_column[2]),
        .I1(in_column[1]),
        .I2(in_column[0]),
        .O(p_1_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[0] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_1_in[0]),
        .Q(in_column[0]),
        .R(\in_column[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[1] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_1_in[1]),
        .Q(in_column[1]),
        .R(\in_column[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_column_reg[2] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_1_in[2]),
        .Q(in_column[2]),
        .R(\in_column[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_mem_rd_addr[0]_INST_0 
       (.I0(Q[0]),
        .I1(in_column[0]),
        .O(in_mem_rd_addr[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h8778)) 
    \in_mem_rd_addr[1]_INST_0 
       (.I0(in_column[0]),
        .I1(Q[0]),
        .I2(in_column[1]),
        .I3(Q[1]),
        .O(in_mem_rd_addr[1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    \in_mem_rd_addr[2]_INST_0 
       (.I0(in_column[1]),
        .I1(Q[1]),
        .I2(in_column[0]),
        .I3(Q[0]),
        .I4(in_column[2]),
        .I5(Q[2]),
        .O(in_mem_rd_addr[2]));
  LUT4 #(
    .INIT(16'h566A)) 
    \in_mem_rd_addr[3]_INST_0 
       (.I0(Q[3]),
        .I1(in_column[2]),
        .I2(Q[2]),
        .I3(\in_mem_rd_addr[3]_INST_0_i_1_n_0 ),
        .O(in_mem_rd_addr[3]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF880)) 
    \in_mem_rd_addr[3]_INST_0_i_1 
       (.I0(Q[0]),
        .I1(in_column[0]),
        .I2(Q[1]),
        .I3(in_column[1]),
        .O(\in_mem_rd_addr[3]_INST_0_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_mem_rd_addr[4]_INST_0 
       (.I0(wt_mem_rd_addr[0]),
        .I1(in_row[0]),
        .O(in_mem_rd_addr[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h9666)) 
    \in_mem_rd_addr[5]_INST_0 
       (.I0(in_row[1]),
        .I1(wt_mem_rd_addr[1]),
        .I2(wt_mem_rd_addr[0]),
        .I3(in_row[0]),
        .O(in_mem_rd_addr[5]));
  LUT6 #(
    .INIT(64'h9996966696669666)) 
    \in_mem_rd_addr[6]_INST_0 
       (.I0(wt_mem_rd_addr[2]),
        .I1(in_row[2]),
        .I2(wt_mem_rd_addr[1]),
        .I3(in_row[1]),
        .I4(wt_mem_rd_addr[0]),
        .I5(in_row[0]),
        .O(in_mem_rd_addr[6]));
  LUT4 #(
    .INIT(16'h566A)) 
    \in_mem_rd_addr[7]_INST_0 
       (.I0(wt_mem_rd_addr[3]),
        .I1(in_row[2]),
        .I2(wt_mem_rd_addr[2]),
        .I3(\in_mem_rd_addr[7]_INST_0_i_1_n_0 ),
        .O(in_mem_rd_addr[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hE888)) 
    \in_mem_rd_addr[7]_INST_0_i_1 
       (.I0(wt_mem_rd_addr[1]),
        .I1(in_row[1]),
        .I2(wt_mem_rd_addr[0]),
        .I3(in_row[0]),
        .O(\in_mem_rd_addr[7]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \in_row[0]_i_1 
       (.I0(in_row[0]),
        .O(\in_row[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \in_row[1]_i_1 
       (.I0(in_row[0]),
        .I1(in_row[1]),
        .O(\in_row[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \in_row[2]_i_1 
       (.I0(inc_addr),
        .I1(\vir_column[3]_i_6_n_0 ),
        .I2(\vir_row[3]_i_5_n_0 ),
        .O(in_row_1));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \in_row[2]_i_2 
       (.I0(in_row[2]),
        .I1(in_row[1]),
        .I2(in_row[0]),
        .O(\in_row[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[0] 
       (.C(clk),
        .CE(in_row_1),
        .D(\in_row[0]_i_1_n_0 ),
        .Q(in_row[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[1] 
       (.C(clk),
        .CE(in_row_1),
        .D(\in_row[1]_i_1_n_0 ),
        .Q(in_row[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \in_row_reg[2] 
       (.C(clk),
        .CE(in_row_1),
        .D(\in_row[2]_i_2_n_0 ),
        .Q(in_row[2]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_column[0]_i_1 
       (.I0(ou_mem_wr_addr[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_column[1]_i_1 
       (.I0(ou_mem_wr_addr[0]),
        .I1(ou_mem_wr_addr[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_column[2]_i_1 
       (.I0(ou_mem_wr_addr[2]),
        .I1(ou_mem_wr_addr[1]),
        .I2(ou_mem_wr_addr[0]),
        .O(p_0_in__1[2]));
  LUT6 #(
    .INIT(64'hFF080000FFFFFFFF)) 
    \o_column[3]_i_1 
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .I3(inc_s_row),
        .I4(\o_column[3]_i_4_n_0 ),
        .I5(arestn),
        .O(\o_column[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_column[3]_i_2 
       (.I0(\o_column[3]_i_4_n_0 ),
        .O(inc_o_column));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \o_column[3]_i_3 
       (.I0(ou_mem_wr_addr[3]),
        .I1(ou_mem_wr_addr[0]),
        .I2(ou_mem_wr_addr[1]),
        .I3(ou_mem_wr_addr[2]),
        .O(p_0_in__1[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFAFCFFF)) 
    \o_column[3]_i_4 
       (.I0(rst_module_INST_0_i_2_n_0),
        .I1(\s_row[3]_i_3_n_0 ),
        .I2(ctrl_state[1]),
        .I3(ctrl_state[2]),
        .I4(ctrl_state[0]),
        .O(\o_column[3]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[0] 
       (.C(clk),
        .CE(inc_o_column),
        .D(p_0_in__1[0]),
        .Q(ou_mem_wr_addr[0]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[1] 
       (.C(clk),
        .CE(inc_o_column),
        .D(p_0_in__1[1]),
        .Q(ou_mem_wr_addr[1]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[2] 
       (.C(clk),
        .CE(inc_o_column),
        .D(p_0_in__1[2]),
        .Q(ou_mem_wr_addr[2]),
        .R(\o_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_column_reg[3] 
       (.C(clk),
        .CE(inc_o_column),
        .D(p_0_in__1[3]),
        .Q(ou_mem_wr_addr[3]),
        .R(\o_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_row[0]_i_1 
       (.I0(ou_mem_wr_addr[4]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_row[1]_i_1 
       (.I0(ou_mem_wr_addr[4]),
        .I1(ou_mem_wr_addr[5]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \o_row[2]_i_1 
       (.I0(ou_mem_wr_addr[6]),
        .I1(ou_mem_wr_addr[5]),
        .I2(ou_mem_wr_addr[4]),
        .O(p_0_in__2[2]));
  LUT6 #(
    .INIT(64'h00400000FFFFFFFF)) 
    \o_row[3]_i_1 
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[0]),
        .I3(rst_module_INST_0_i_1_n_0),
        .I4(rst_module_INST_0_i_2_n_0),
        .I5(arestn),
        .O(\o_row[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0800FFFF0000)) 
    \o_row[3]_i_2 
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .I3(rst_module_INST_0_i_1_n_0),
        .I4(inc_s_row),
        .I5(rst_module_INST_0_i_2_n_0),
        .O(inc_o_row));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \o_row[3]_i_3 
       (.I0(ou_mem_wr_addr[7]),
        .I1(ou_mem_wr_addr[4]),
        .I2(ou_mem_wr_addr[5]),
        .I3(ou_mem_wr_addr[6]),
        .O(p_0_in__2[3]));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[0] 
       (.C(clk),
        .CE(inc_o_row),
        .D(p_0_in__2[0]),
        .Q(ou_mem_wr_addr[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[1] 
       (.C(clk),
        .CE(inc_o_row),
        .D(p_0_in__2[1]),
        .Q(ou_mem_wr_addr[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[2] 
       (.C(clk),
        .CE(inc_o_row),
        .D(p_0_in__2[2]),
        .Q(ou_mem_wr_addr[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \o_row_reg[3] 
       (.C(clk),
        .CE(inc_o_row),
        .D(p_0_in__2[3]),
        .Q(ou_mem_wr_addr[7]),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h60)) 
    ou_wr_enable_INST_0
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[2]),
        .I2(ctrl_state[1]),
        .O(ou_wr_enable));
  LUT1 #(
    .INIT(2'h1)) 
    \rd_address[0]_i_1 
       (.I0(rd_address[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rd_address[1]_i_1 
       (.I0(rd_address[0]),
        .I1(rd_address[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \rd_address[2]_i_1 
       (.I0(rd_address[2]),
        .I1(rd_address[1]),
        .I2(rd_address[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \rd_address[3]_i_1 
       (.I0(rd_address[3]),
        .I1(rd_address[2]),
        .I2(rd_address[0]),
        .I3(rd_address[1]),
        .O(p_0_in__0[3]));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \rd_address[4]_i_1 
       (.I0(ctrl_state[2]),
        .I1(\rd_address[4]_i_3_n_0 ),
        .I2(\wt_row[3]_i_9_n_0 ),
        .I3(\wt_row[3]_i_6_n_0 ),
        .O(inc_rd_address));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \rd_address[4]_i_2 
       (.I0(rd_address[4]),
        .I1(rd_address[1]),
        .I2(rd_address[0]),
        .I3(rd_address[2]),
        .I4(rd_address[3]),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \rd_address[4]_i_3 
       (.I0(\ctrl_state[1]_i_3_n_0 ),
        .I1(ended_reading_mltn_data),
        .I2(ctrl_state[0]),
        .I3(ctrl_state[1]),
        .O(\rd_address[4]_i_3_n_0 ));
  FDRE \rd_address_reg[0] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[0]),
        .Q(rd_address[0]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \rd_address_reg[1] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[1]),
        .Q(rd_address[1]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \rd_address_reg[2] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[2]),
        .Q(rd_address[2]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \rd_address_reg[3] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[3]),
        .Q(rd_address[3]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE \rd_address_reg[4] 
       (.C(clk),
        .CE(inc_rd_address),
        .D(p_0_in__0[4]),
        .Q(rd_address[4]),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFBFFFFF)) 
    rst_module_INST_0
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[0]),
        .I3(rst_module_INST_0_i_1_n_0),
        .I4(rst_module_INST_0_i_2_n_0),
        .O(rst_module));
  LUT6 #(
    .INIT(64'hBFFEFEFBEFBFBFFE)) 
    rst_module_INST_0_i_1
       (.I0(rst_module_INST_0_i_3_n_0),
        .I1(ou_mem_wr_addr[6]),
        .I2(rst_module_INST_0_i_4_n_0),
        .I3(rst_module_INST_0_i_5_n_0),
        .I4(kernel_dimension[6]),
        .I5(image_dimension[6]),
        .O(rst_module_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    rst_module_INST_0_i_10
       (.I0(image_dimension[2]),
        .I1(kernel_dimension[2]),
        .O(rst_module_INST_0_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    rst_module_INST_0_i_11
       (.I0(kernel_dimension[0]),
        .I1(image_dimension[0]),
        .O(rst_module_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0014140014000014)) 
    rst_module_INST_0_i_2
       (.I0(rst_module_INST_0_i_6_n_0),
        .I1(ou_mem_wr_addr[0]),
        .I2(rst_module_INST_0_i_7_n_0),
        .I3(ou_mem_wr_addr[3]),
        .I4(rst_module_INST_0_i_8_n_0),
        .I5(rst_module_INST_0_i_9_n_0),
        .O(rst_module_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hDFB6B6DFB6DFDFB6)) 
    rst_module_INST_0_i_3
       (.I0(ou_mem_wr_addr[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[4]),
        .I3(image_dimension[5]),
        .I4(kernel_dimension[5]),
        .I5(ou_mem_wr_addr[5]),
        .O(rst_module_INST_0_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h96)) 
    rst_module_INST_0_i_4
       (.I0(ou_mem_wr_addr[7]),
        .I1(kernel_dimension[7]),
        .I2(image_dimension[7]),
        .O(rst_module_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h20F2)) 
    rst_module_INST_0_i_5
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[5]),
        .I3(image_dimension[5]),
        .O(rst_module_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'hD7BEEBD7BE7DD7BE)) 
    rst_module_INST_0_i_6
       (.I0(ou_mem_wr_addr[1]),
        .I1(ou_mem_wr_addr[2]),
        .I2(rst_module_INST_0_i_10_n_0),
        .I3(kernel_dimension[1]),
        .I4(image_dimension[1]),
        .I5(rst_module_INST_0_i_11_n_0),
        .O(rst_module_INST_0_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h9)) 
    rst_module_INST_0_i_7
       (.I0(image_dimension[0]),
        .I1(kernel_dimension[0]),
        .O(rst_module_INST_0_i_7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    rst_module_INST_0_i_8
       (.I0(image_dimension[3]),
        .I1(kernel_dimension[3]),
        .O(rst_module_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h44D444D4D4DD44D4)) 
    rst_module_INST_0_i_9
       (.I0(image_dimension[2]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[1]),
        .I3(image_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(image_dimension[0]),
        .O(rst_module_INST_0_i_9_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_column[0]_i_1 
       (.I0(ou_mem_rd_addr[0]),
        .O(p_0_in__5[0]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_column[1]_i_1 
       (.I0(ou_mem_rd_addr[0]),
        .I1(ou_mem_rd_addr[1]),
        .O(p_0_in__5[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_column[2]_i_1 
       (.I0(ou_mem_rd_addr[2]),
        .I1(ou_mem_rd_addr[1]),
        .I2(ou_mem_rd_addr[0]),
        .O(p_0_in__5[2]));
  LUT6 #(
    .INIT(64'h55550040FFFFFFFF)) 
    \s_column[3]_i_1 
       (.I0(inc_s_column),
        .I1(ctrl_state[0]),
        .I2(ctrl_state[1]),
        .I3(ctrl_state[2]),
        .I4(inc_s_row),
        .I5(arestn),
        .O(\s_column[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0800FFFF)) 
    \s_column[3]_i_2 
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .I3(rst_module_INST_0_i_1_n_0),
        .I4(\o_column[3]_i_4_n_0 ),
        .O(inc_s_column));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_column[3]_i_3 
       (.I0(ou_mem_rd_addr[3]),
        .I1(ou_mem_rd_addr[0]),
        .I2(ou_mem_rd_addr[1]),
        .I3(ou_mem_rd_addr[2]),
        .O(p_0_in__5[3]));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[0] 
       (.C(clk),
        .CE(inc_s_column),
        .D(p_0_in__5[0]),
        .Q(ou_mem_rd_addr[0]),
        .R(\s_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[1] 
       (.C(clk),
        .CE(inc_s_column),
        .D(p_0_in__5[1]),
        .Q(ou_mem_rd_addr[1]),
        .R(\s_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[2] 
       (.C(clk),
        .CE(inc_s_column),
        .D(p_0_in__5[2]),
        .Q(ou_mem_rd_addr[2]),
        .R(\s_column[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_column_reg[3] 
       (.C(clk),
        .CE(inc_s_column),
        .D(p_0_in__5[3]),
        .Q(ou_mem_rd_addr[3]),
        .R(\s_column[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \s_row[0]_i_1 
       (.I0(ou_mem_rd_addr[4]),
        .O(p_0_in__6[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_row[1]_i_1 
       (.I0(ou_mem_rd_addr[4]),
        .I1(ou_mem_rd_addr[5]),
        .O(p_0_in__6[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \s_row[2]_i_1 
       (.I0(ou_mem_rd_addr[6]),
        .I1(ou_mem_rd_addr[5]),
        .I2(ou_mem_rd_addr[4]),
        .O(p_0_in__6[2]));
  LUT5 #(
    .INIT(32'h00000080)) 
    \s_row[3]_i_1 
       (.I0(\s_row[3]_i_3_n_0 ),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .I3(ctrl_state[0]),
        .I4(\s_row[3]_i_4_n_0 ),
        .O(inc_s_row));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \s_row[3]_i_2 
       (.I0(ou_mem_rd_addr[7]),
        .I1(ou_mem_rd_addr[4]),
        .I2(ou_mem_rd_addr[5]),
        .I3(ou_mem_rd_addr[6]),
        .O(p_0_in__6[3]));
  LUT6 #(
    .INIT(64'h8282828282828228)) 
    \s_row[3]_i_3 
       (.I0(\s_row[3]_i_5_n_0 ),
        .I1(ou_mem_wr_addr[3]),
        .I2(matrix_b_dimension[3]),
        .I3(matrix_b_dimension[0]),
        .I4(matrix_b_dimension[1]),
        .I5(matrix_b_dimension[2]),
        .O(\s_row[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8282828282828228)) 
    \s_row[3]_i_4 
       (.I0(\s_row[3]_i_6_n_0 ),
        .I1(ou_mem_wr_addr[7]),
        .I2(matrix_a_dimension[7]),
        .I3(matrix_a_dimension[4]),
        .I4(matrix_a_dimension[5]),
        .I5(matrix_a_dimension[6]),
        .O(\s_row[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000422490090000)) 
    \s_row[3]_i_5 
       (.I0(ou_mem_wr_addr[1]),
        .I1(matrix_b_dimension[1]),
        .I2(ou_mem_wr_addr[2]),
        .I3(matrix_b_dimension[2]),
        .I4(matrix_b_dimension[0]),
        .I5(ou_mem_wr_addr[0]),
        .O(\s_row[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000128484210000)) 
    \s_row[3]_i_6 
       (.I0(ou_mem_wr_addr[6]),
        .I1(matrix_a_dimension[5]),
        .I2(matrix_a_dimension[6]),
        .I3(ou_mem_wr_addr[5]),
        .I4(matrix_a_dimension[4]),
        .I5(ou_mem_wr_addr[4]),
        .O(\s_row[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_row_reg[0] 
       (.C(clk),
        .CE(inc_s_row),
        .D(p_0_in__6[0]),
        .Q(ou_mem_rd_addr[4]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_row_reg[1] 
       (.C(clk),
        .CE(inc_s_row),
        .D(p_0_in__6[1]),
        .Q(ou_mem_rd_addr[5]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_row_reg[2] 
       (.C(clk),
        .CE(inc_s_row),
        .D(p_0_in__6[2]),
        .Q(ou_mem_rd_addr[6]),
        .R(\o_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_row_reg[3] 
       (.C(clk),
        .CE(inc_s_row),
        .D(p_0_in__6[3]),
        .Q(ou_mem_rd_addr[7]),
        .R(\o_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    start_cnvtn_writing_fsm_INST_0
       (.I0(ctrl_state[1]),
        .I1(ctrl_state[2]),
        .I2(ctrl_state[0]),
        .I3(ended_reading_mltn_data),
        .O(start_cnvtn_writing_fsm));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h80)) 
    start_mltpn_writing_fsm_INST_0
       (.I0(ctrl_state[2]),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[0]),
        .O(start_mltpn_writing_fsm));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vir_column[0]_i_1 
       (.I0(vr_mem_wr_addr[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vir_column[1]_i_1 
       (.I0(vr_mem_wr_addr[0]),
        .I1(vr_mem_wr_addr[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vir_column[2]_i_1 
       (.I0(vr_mem_wr_addr[2]),
        .I1(vr_mem_wr_addr[1]),
        .I2(vr_mem_wr_addr[0]),
        .O(p_0_in__3[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \vir_column[3]_i_1 
       (.I0(arestn),
        .O(clear));
  LUT5 #(
    .INIT(32'h00004100)) 
    \vir_column[3]_i_2 
       (.I0(\vir_column[3]_i_4_n_0 ),
        .I1(\vir_column[3]_i_5_n_0 ),
        .I2(Q[3]),
        .I3(inc_addr),
        .I4(\vir_column[3]_i_6_n_0 ),
        .O(in_column_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vir_column[3]_i_3 
       (.I0(vr_mem_wr_addr[3]),
        .I1(vr_mem_wr_addr[0]),
        .I2(vr_mem_wr_addr[1]),
        .I3(vr_mem_wr_addr[2]),
        .O(p_0_in__3[3]));
  LUT6 #(
    .INIT(64'hFFF6FF9F6FFFF6FF)) 
    \vir_column[3]_i_4 
       (.I0(kernel_dimension[2]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(kernel_dimension[0]),
        .I4(kernel_dimension[1]),
        .I5(Q[0]),
        .O(\vir_column[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \vir_column[3]_i_5 
       (.I0(kernel_dimension[3]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[0]),
        .O(\vir_column[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5556AAA9)) 
    \vir_column[3]_i_6 
       (.I0(kernel_dimension[7]),
        .I1(kernel_dimension[6]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[4]),
        .I4(wt_mem_rd_addr[3]),
        .I5(\vir_column[3]_i_7_n_0 ),
        .O(\vir_column[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFDEFF7FB7FFEDF)) 
    \vir_column[3]_i_7 
       (.I0(wt_mem_rd_addr[0]),
        .I1(wt_mem_rd_addr[2]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[4]),
        .I4(kernel_dimension[6]),
        .I5(wt_mem_rd_addr[1]),
        .O(\vir_column[3]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[0] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_0_in__3[0]),
        .Q(vr_mem_wr_addr[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[1] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_0_in__3[1]),
        .Q(vr_mem_wr_addr[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[2] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_0_in__3[2]),
        .Q(vr_mem_wr_addr[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \vir_column_reg[3] 
       (.C(clk),
        .CE(in_column_0),
        .D(p_0_in__3[3]),
        .Q(vr_mem_wr_addr[3]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vir_row[0]_i_1 
       (.I0(vr_mem_wr_addr[4]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vir_row[1]_i_1 
       (.I0(vr_mem_wr_addr[4]),
        .I1(vr_mem_wr_addr[5]),
        .O(p_0_in__4[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \vir_row[2]_i_1 
       (.I0(vr_mem_wr_addr[6]),
        .I1(vr_mem_wr_addr[5]),
        .I2(vr_mem_wr_addr[4]),
        .O(p_0_in__4[2]));
  LUT2 #(
    .INIT(4'hB)) 
    \vir_row[3]_i_1 
       (.I0(in_column_0),
        .I1(arestn),
        .O(\vir_row[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000E0000)) 
    \vir_row[3]_i_2 
       (.I0(\vir_row[3]_i_4_n_0 ),
        .I1(\vir_row[3]_i_5_n_0 ),
        .I2(ctrl_state[1]),
        .I3(ctrl_state[2]),
        .I4(ctrl_state[0]),
        .O(inc_addr));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \vir_row[3]_i_3 
       (.I0(vr_mem_wr_addr[7]),
        .I1(vr_mem_wr_addr[4]),
        .I2(vr_mem_wr_addr[5]),
        .I3(vr_mem_wr_addr[6]),
        .O(p_0_in__4[3]));
  LUT6 #(
    .INIT(64'hBBBBBBBEEEEEEEEB)) 
    \vir_row[3]_i_4 
       (.I0(\vir_row[3]_i_6_n_0 ),
        .I1(image_dimension[7]),
        .I2(image_dimension[6]),
        .I3(image_dimension[4]),
        .I4(image_dimension[5]),
        .I5(in_mem_rd_addr[7]),
        .O(\vir_row[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF5556AAA9)) 
    \vir_row[3]_i_5 
       (.I0(image_dimension[3]),
        .I1(image_dimension[2]),
        .I2(image_dimension[0]),
        .I3(image_dimension[1]),
        .I4(in_mem_rd_addr[3]),
        .I5(\vir_row[3]_i_7_n_0 ),
        .O(\vir_row[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDEB7FEB7FFFFD)) 
    \vir_row[3]_i_6 
       (.I0(in_mem_rd_addr[4]),
        .I1(\vir_row[3]_i_8_n_0 ),
        .I2(image_dimension[5]),
        .I3(image_dimension[4]),
        .I4(image_dimension[6]),
        .I5(\vir_row[3]_i_9_n_0 ),
        .O(\vir_row[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hBFFDFDBFDBFFFFDB)) 
    \vir_row[3]_i_7 
       (.I0(in_mem_rd_addr[0]),
        .I1(image_dimension[0]),
        .I2(image_dimension[1]),
        .I3(image_dimension[2]),
        .I4(in_mem_rd_addr[2]),
        .I5(in_mem_rd_addr[1]),
        .O(\vir_row[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \vir_row[3]_i_8 
       (.I0(in_row[0]),
        .I1(wt_mem_rd_addr[0]),
        .I2(wt_mem_rd_addr[1]),
        .I3(in_row[1]),
        .O(\vir_row[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h077FF880F880077F)) 
    \vir_row[3]_i_9 
       (.I0(in_row[0]),
        .I1(wt_mem_rd_addr[0]),
        .I2(in_row[1]),
        .I3(wt_mem_rd_addr[1]),
        .I4(in_row[2]),
        .I5(wt_mem_rd_addr[2]),
        .O(\vir_row[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[0] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__4[0]),
        .Q(vr_mem_wr_addr[4]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[1] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__4[1]),
        .Q(vr_mem_wr_addr[5]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[2] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__4[2]),
        .Q(vr_mem_wr_addr[6]),
        .R(\vir_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vir_row_reg[3] 
       (.C(clk),
        .CE(inc_addr),
        .D(p_0_in__4[3]),
        .Q(vr_mem_wr_addr[7]),
        .R(\vir_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h02)) 
    vir_wr_enable_INST_0
       (.I0(ctrl_state[0]),
        .I1(ctrl_state[2]),
        .I2(ctrl_state[1]),
        .O(vir_wr_enable));
  LUT5 #(
    .INIT(32'h0054FF57)) 
    \wt_column[0]_i_1 
       (.I0(Q[0]),
        .I1(\wt_row[3]_i_8_n_0 ),
        .I2(inc_addr),
        .I3(\wt_row[3]_i_9_n_0 ),
        .I4(kernel_dimension[0]),
        .O(p_2_in[0]));
  LUT6 #(
    .INIT(64'h1B0B4E4E4E4E1B0B)) 
    \wt_column[1]_i_1 
       (.I0(\wt_row[3]_i_10_n_0 ),
        .I1(inc_addr),
        .I2(\wt_column[1]_i_2_n_0 ),
        .I3(\wt_row[3]_i_8_n_0 ),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wt_column[1]_i_2 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[0]),
        .O(\wt_column[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \wt_column[2]_i_1 
       (.I0(kernel_dimension[2]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[1]),
        .I3(\wt_row[3]_i_10_n_0 ),
        .I4(\wt_column[2]_i_2_n_0 ),
        .O(p_2_in[2]));
  LUT6 #(
    .INIT(64'h5AF0F0A55AF0F0A4)) 
    \wt_column[2]_i_2 
       (.I0(inc_addr),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\wt_column[2]_i_3_n_0 ),
        .O(\wt_column[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wt_column[2]_i_3 
       (.I0(kernel_dimension[2]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[1]),
        .O(\wt_column[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF80FF)) 
    \wt_column[3]_i_1 
       (.I0(\wt_row[3]_i_4_n_0 ),
        .I1(\wt_row[3]_i_5_n_0 ),
        .I2(\wt_row[3]_i_6_n_0 ),
        .I3(arestn),
        .I4(\wt_row[3]_i_7_n_0 ),
        .O(\wt_column[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \wt_column[3]_i_2 
       (.I0(\wt_row[3]_i_6_n_0 ),
        .I1(ctrl_state[1]),
        .I2(ctrl_state[2]),
        .I3(ctrl_state[0]),
        .O(\wt_column[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \wt_column[3]_i_3 
       (.I0(kernel_dimension[3]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[0]),
        .I4(\wt_row[3]_i_10_n_0 ),
        .I5(\wt_column[3]_i_4_n_0 ),
        .O(p_2_in[3]));
  LUT6 #(
    .INIT(64'h6CCCCCC96CCCCCC8)) 
    \wt_column[3]_i_4 
       (.I0(inc_addr),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\vir_column[3]_i_5_n_0 ),
        .O(\wt_column[3]_i_4_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \wt_row[0]_i_1 
       (.I0(wt_mem_rd_addr[0]),
        .I1(kernel_dimension[4]),
        .I2(\wt_row[3]_i_10_n_0 ),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h909F9F909F90909F)) 
    \wt_row[1]_i_1 
       (.I0(kernel_dimension[4]),
        .I1(kernel_dimension[5]),
        .I2(\wt_row[3]_i_10_n_0 ),
        .I3(inc_addr),
        .I4(wt_mem_rd_addr[0]),
        .I5(wt_mem_rd_addr[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h8BB8B8B8B8B8B88B)) 
    \wt_row[2]_i_1 
       (.I0(\wt_row[2]_i_2_n_0 ),
        .I1(\wt_row[3]_i_10_n_0 ),
        .I2(wt_mem_rd_addr[2]),
        .I3(inc_addr),
        .I4(wt_mem_rd_addr[0]),
        .I5(wt_mem_rd_addr[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \wt_row[2]_i_2 
       (.I0(kernel_dimension[6]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[5]),
        .O(\wt_row[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFDDDDDDD)) 
    \wt_row[3]_i_1 
       (.I0(arestn),
        .I1(in_column_0),
        .I2(\wt_row[3]_i_4_n_0 ),
        .I3(\wt_row[3]_i_5_n_0 ),
        .I4(\wt_row[3]_i_6_n_0 ),
        .O(\wt_row[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wt_row[3]_i_10 
       (.I0(\ctrl_state[1]_i_2_n_0 ),
        .I1(ctrl_state[2]),
        .I2(ctrl_state[1]),
        .O(\wt_row[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \wt_row[3]_i_11 
       (.I0(wt_mem_rd_addr[3]),
        .I1(wt_mem_rd_addr[2]),
        .I2(wt_mem_rd_addr[1]),
        .I3(wt_mem_rd_addr[0]),
        .I4(inc_addr),
        .O(\wt_row[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wt_row[3]_i_12 
       (.I0(ctrl_state[1]),
        .I1(ctrl_state[2]),
        .O(\wt_row[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hD42B2BD42BD4D42B)) 
    \wt_row[3]_i_13 
       (.I0(\wt_row[3]_i_17_n_0 ),
        .I1(\wt_row[3]_i_18_n_0 ),
        .I2(\wt_row[3]_i_19_n_0 ),
        .I3(\wt_row[3]_i_20_n_0 ),
        .I4(\wt_row[3]_i_21_n_0 ),
        .I5(rd_address[3]),
        .O(\wt_row[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h002B2BFF)) 
    \wt_row[3]_i_14 
       (.I0(\wt_row[3]_i_17_n_0 ),
        .I1(\wt_row[3]_i_18_n_0 ),
        .I2(\wt_row[3]_i_19_n_0 ),
        .I3(\wt_row[3]_i_21_n_0 ),
        .I4(\wt_row[3]_i_20_n_0 ),
        .O(\wt_row[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \wt_row[3]_i_15 
       (.I0(\wt_row[3]_i_22_n_0 ),
        .I1(\wt_row[3]_i_23_n_0 ),
        .I2(\wt_row[3]_i_24_n_0 ),
        .I3(\wt_row[3]_i_25_n_0 ),
        .I4(rd_address[4]),
        .I5(\wt_row[3]_i_26_n_0 ),
        .O(\wt_row[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFEEFEFFEEFFEFEEF)) 
    \wt_row[3]_i_16 
       (.I0(\ctrl_state[0]_i_6_n_0 ),
        .I1(\wt_row[3]_i_27_n_0 ),
        .I2(\wt_row[3]_i_28_n_0 ),
        .I3(\wt_row[3]_i_29_n_0 ),
        .I4(\wt_row[3]_i_30_n_0 ),
        .I5(rd_address[1]),
        .O(\wt_row[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hEEF0110FEEE1EEE1)) 
    \wt_row[3]_i_17 
       (.I0(\wt_row[3]_i_31_n_0 ),
        .I1(\wt_row[3]_i_32_n_0 ),
        .I2(\wt_row[3]_i_33_n_0 ),
        .I3(\wt_row[3]_i_34_n_0 ),
        .I4(\wt_row[3]_i_35_n_0 ),
        .I5(rst_module_INST_0_i_7_n_0),
        .O(\wt_row[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h07F77888F8087888)) 
    \wt_row[3]_i_18 
       (.I0(kernel_dimension[5]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[2]),
        .I4(kernel_dimension[0]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9AA9FFFF00009AA9)) 
    \wt_row[3]_i_19 
       (.I0(\wt_row[3]_i_36_n_0 ),
        .I1(\wt_row[3]_i_31_n_0 ),
        .I2(image_dimension[0]),
        .I3(kernel_dimension[0]),
        .I4(\wt_row[3]_i_30_n_0 ),
        .I5(\wt_row[3]_i_29_n_0 ),
        .O(\wt_row[3]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'hFFABFFAA)) 
    \wt_row[3]_i_2 
       (.I0(\wt_row[3]_i_7_n_0 ),
        .I1(\wt_row[3]_i_8_n_0 ),
        .I2(inc_addr),
        .I3(\wt_row[3]_i_9_n_0 ),
        .I4(\wt_row[3]_i_6_n_0 ),
        .O(\wt_row[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h56A9A956A95656A9)) 
    \wt_row[3]_i_20 
       (.I0(\wt_row[3]_i_37_n_0 ),
        .I1(\wt_row[3]_i_36_n_0 ),
        .I2(\wt_row[3]_i_38_n_0 ),
        .I3(\wt_row[3]_i_39_n_0 ),
        .I4(\wt_row[3]_i_40_n_0 ),
        .I5(\wt_row[3]_i_41_n_0 ),
        .O(\wt_row[3]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \wt_row[3]_i_21 
       (.I0(\wt_row[3]_i_42_n_0 ),
        .I1(\wt_row[3]_i_43_n_0 ),
        .I2(\wt_row[3]_i_44_n_0 ),
        .O(\wt_row[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0410450438D38638)) 
    \wt_row[3]_i_22 
       (.I0(\wt_row[3]_i_34_n_0 ),
        .I1(\wt_row[3]_i_45_n_0 ),
        .I2(\wt_row[3]_i_46_n_0 ),
        .I3(kernel_dimension[3]),
        .I4(image_dimension[3]),
        .I5(\wt_row[3]_i_31_n_0 ),
        .O(\wt_row[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF6FF66F060)) 
    \wt_row[3]_i_23 
       (.I0(image_dimension[0]),
        .I1(kernel_dimension[0]),
        .I2(\wt_row[3]_i_35_n_0 ),
        .I3(\wt_row[3]_i_47_n_0 ),
        .I4(\wt_row[3]_i_32_n_0 ),
        .I5(\wt_row[3]_i_38_n_0 ),
        .O(\wt_row[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hE11EE1E1E1E1E11E)) 
    \wt_row[3]_i_24 
       (.I0(\wt_row[3]_i_35_n_0 ),
        .I1(\wt_row[3]_i_33_n_0 ),
        .I2(\wt_row[3]_i_48_n_0 ),
        .I3(\wt_row[3]_i_49_n_0 ),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFCCFCF8ECFE8)) 
    \wt_row[3]_i_25 
       (.I0(\wt_row[3]_i_34_n_0 ),
        .I1(\wt_row[3]_i_41_n_0 ),
        .I2(\wt_row[3]_i_40_n_0 ),
        .I3(\wt_row[3]_i_32_n_0 ),
        .I4(\wt_row[3]_i_35_n_0 ),
        .I5(\wt_row[3]_i_38_n_0 ),
        .O(\wt_row[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h699600009669FFFF)) 
    \wt_row[3]_i_26 
       (.I0(\wt_row[3]_i_41_n_0 ),
        .I1(\wt_row[3]_i_40_n_0 ),
        .I2(\wt_row[3]_i_50_n_0 ),
        .I3(\wt_row[3]_i_51_n_0 ),
        .I4(\wt_row[3]_i_37_n_0 ),
        .I5(\wt_row[3]_i_52_n_0 ),
        .O(\wt_row[3]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h9669)) 
    \wt_row[3]_i_27 
       (.I0(rd_address[2]),
        .I1(\wt_row[3]_i_18_n_0 ),
        .I2(\wt_row[3]_i_17_n_0 ),
        .I3(\wt_row[3]_i_19_n_0 ),
        .O(\wt_row[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h06F90606090906F9)) 
    \wt_row[3]_i_28 
       (.I0(image_dimension[1]),
        .I1(kernel_dimension[1]),
        .I2(\wt_row[3]_i_34_n_0 ),
        .I3(\wt_row[3]_i_31_n_0 ),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wt_row[3]_i_29 
       (.I0(image_dimension[4]),
        .I1(image_dimension[0]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[0]),
        .O(\wt_row[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAAA9FFFFAAA90000)) 
    \wt_row[3]_i_3 
       (.I0(kernel_dimension[7]),
        .I1(kernel_dimension[6]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[4]),
        .I4(\wt_row[3]_i_10_n_0 ),
        .I5(\wt_row[3]_i_11_n_0 ),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8777)) 
    \wt_row[3]_i_30 
       (.I0(kernel_dimension[4]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[5]),
        .I3(kernel_dimension[0]),
        .O(\wt_row[3]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \wt_row[3]_i_31 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[5]),
        .I3(image_dimension[5]),
        .O(\wt_row[3]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \wt_row[3]_i_32 
       (.I0(image_dimension[0]),
        .I1(kernel_dimension[0]),
        .I2(image_dimension[1]),
        .I3(kernel_dimension[1]),
        .O(\wt_row[3]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h9699969999699699)) 
    \wt_row[3]_i_33 
       (.I0(kernel_dimension[2]),
        .I1(image_dimension[2]),
        .I2(image_dimension[1]),
        .I3(kernel_dimension[1]),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \wt_row[3]_i_34 
       (.I0(image_dimension[4]),
        .I1(kernel_dimension[4]),
        .O(\wt_row[3]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h9999696696999999)) 
    \wt_row[3]_i_35 
       (.I0(kernel_dimension[6]),
        .I1(image_dimension[6]),
        .I2(kernel_dimension[4]),
        .I3(image_dimension[4]),
        .I4(image_dimension[5]),
        .I5(kernel_dimension[5]),
        .O(\wt_row[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0990900909900990)) 
    \wt_row[3]_i_36 
       (.I0(kernel_dimension[4]),
        .I1(image_dimension[4]),
        .I2(kernel_dimension[1]),
        .I3(image_dimension[1]),
        .I4(kernel_dimension[0]),
        .I5(image_dimension[0]),
        .O(\wt_row[3]_i_36_n_0 ));
  LUT6 #(
    .INIT(64'h4141144114144114)) 
    \wt_row[3]_i_37 
       (.I0(\wt_row[3]_i_34_n_0 ),
        .I1(image_dimension[3]),
        .I2(kernel_dimension[3]),
        .I3(image_dimension[2]),
        .I4(kernel_dimension[2]),
        .I5(\wt_row[3]_i_45_n_0 ),
        .O(\wt_row[3]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF9969)) 
    \wt_row[3]_i_38 
       (.I0(image_dimension[5]),
        .I1(kernel_dimension[5]),
        .I2(image_dimension[4]),
        .I3(kernel_dimension[4]),
        .I4(\wt_row[3]_i_33_n_0 ),
        .O(\wt_row[3]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00006966)) 
    \wt_row[3]_i_39 
       (.I0(kernel_dimension[1]),
        .I1(image_dimension[1]),
        .I2(kernel_dimension[0]),
        .I3(image_dimension[0]),
        .I4(\wt_row[3]_i_35_n_0 ),
        .O(\wt_row[3]_i_39_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wt_row[3]_i_4 
       (.I0(inc_addr),
        .I1(wt_mem_rd_addr[0]),
        .I2(wt_mem_rd_addr[1]),
        .O(\wt_row[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h69699669FFFFFFFF)) 
    \wt_row[3]_i_40 
       (.I0(\wt_row[3]_i_53_n_0 ),
        .I1(image_dimension[7]),
        .I2(kernel_dimension[7]),
        .I3(image_dimension[6]),
        .I4(kernel_dimension[6]),
        .I5(rst_module_INST_0_i_7_n_0),
        .O(\wt_row[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFDD5DD)) 
    \wt_row[3]_i_41 
       (.I0(rst_module_INST_0_i_7_n_0),
        .I1(\wt_row[3]_i_35_n_0 ),
        .I2(\wt_row[3]_i_34_n_0 ),
        .I3(\wt_row[3]_i_33_n_0 ),
        .I4(\wt_row[3]_i_32_n_0 ),
        .I5(\wt_row[3]_i_31_n_0 ),
        .O(\wt_row[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h73777FFF7FFF7FFF)) 
    \wt_row[3]_i_42 
       (.I0(kernel_dimension[6]),
        .I1(kernel_dimension[0]),
        .I2(kernel_dimension[2]),
        .I3(kernel_dimension[4]),
        .I4(kernel_dimension[1]),
        .I5(kernel_dimension[5]),
        .O(\wt_row[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \wt_row[3]_i_43 
       (.I0(kernel_dimension[4]),
        .I1(kernel_dimension[3]),
        .I2(kernel_dimension[1]),
        .I3(kernel_dimension[6]),
        .I4(kernel_dimension[2]),
        .I5(kernel_dimension[5]),
        .O(\wt_row[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF800080008000)) 
    \wt_row[3]_i_44 
       (.I0(kernel_dimension[1]),
        .I1(kernel_dimension[4]),
        .I2(kernel_dimension[2]),
        .I3(kernel_dimension[5]),
        .I4(kernel_dimension[7]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h66F666F6606666F6)) 
    \wt_row[3]_i_45 
       (.I0(image_dimension[2]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[1]),
        .I3(image_dimension[1]),
        .I4(image_dimension[0]),
        .I5(kernel_dimension[0]),
        .O(\wt_row[3]_i_45_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \wt_row[3]_i_46 
       (.I0(image_dimension[2]),
        .I1(kernel_dimension[2]),
        .O(\wt_row[3]_i_46_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h4BB4B44B)) 
    \wt_row[3]_i_47 
       (.I0(kernel_dimension[6]),
        .I1(image_dimension[6]),
        .I2(kernel_dimension[7]),
        .I3(image_dimension[7]),
        .I4(\wt_row[3]_i_53_n_0 ),
        .O(\wt_row[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBBEEBEBBEBEEB)) 
    \wt_row[3]_i_48 
       (.I0(\wt_row[3]_i_32_n_0 ),
        .I1(\wt_row[3]_i_53_n_0 ),
        .I2(image_dimension[7]),
        .I3(kernel_dimension[7]),
        .I4(image_dimension[6]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h22B2BBDB)) 
    \wt_row[3]_i_49 
       (.I0(image_dimension[7]),
        .I1(kernel_dimension[7]),
        .I2(image_dimension[6]),
        .I3(kernel_dimension[6]),
        .I4(\wt_row[3]_i_53_n_0 ),
        .O(\wt_row[3]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wt_row[3]_i_5 
       (.I0(wt_mem_rd_addr[3]),
        .I1(wt_mem_rd_addr[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\wt_row[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEEE1)) 
    \wt_row[3]_i_50 
       (.I0(\wt_row[3]_i_33_n_0 ),
        .I1(\wt_row[3]_i_31_n_0 ),
        .I2(\wt_row[3]_i_35_n_0 ),
        .I3(\wt_row[3]_i_32_n_0 ),
        .O(\wt_row[3]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBFFFFFFFFFFEB)) 
    \wt_row[3]_i_51 
       (.I0(\wt_row[3]_i_33_n_0 ),
        .I1(kernel_dimension[5]),
        .I2(image_dimension[5]),
        .I3(\wt_row[3]_i_32_n_0 ),
        .I4(image_dimension[4]),
        .I5(kernel_dimension[4]),
        .O(\wt_row[3]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'hE771188E188EE771)) 
    \wt_row[3]_i_52 
       (.I0(\wt_row[3]_i_42_n_0 ),
        .I1(\wt_row[3]_i_43_n_0 ),
        .I2(\wt_row[3]_i_54_n_0 ),
        .I3(\wt_row[3]_i_55_n_0 ),
        .I4(\wt_row[3]_i_56_n_0 ),
        .I5(\wt_row[3]_i_57_n_0 ),
        .O(\wt_row[3]_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h6F666F6666066F66)) 
    \wt_row[3]_i_53 
       (.I0(image_dimension[6]),
        .I1(kernel_dimension[6]),
        .I2(image_dimension[5]),
        .I3(kernel_dimension[5]),
        .I4(image_dimension[4]),
        .I5(kernel_dimension[4]),
        .O(\wt_row[3]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \wt_row[3]_i_54 
       (.I0(kernel_dimension[0]),
        .I1(kernel_dimension[7]),
        .O(\wt_row[3]_i_54_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \wt_row[3]_i_55 
       (.I0(kernel_dimension[5]),
        .I1(kernel_dimension[2]),
        .I2(kernel_dimension[4]),
        .I3(kernel_dimension[1]),
        .O(\wt_row[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h7888877787778777)) 
    \wt_row[3]_i_56 
       (.I0(kernel_dimension[7]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[3]),
        .I3(kernel_dimension[5]),
        .I4(kernel_dimension[2]),
        .I5(kernel_dimension[6]),
        .O(\wt_row[3]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'hEAC0800080008000)) 
    \wt_row[3]_i_57 
       (.I0(kernel_dimension[5]),
        .I1(kernel_dimension[1]),
        .I2(kernel_dimension[6]),
        .I3(kernel_dimension[2]),
        .I4(kernel_dimension[3]),
        .I5(kernel_dimension[4]),
        .O(\wt_row[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA2AA2)) 
    \wt_row[3]_i_6 
       (.I0(\wt_row[3]_i_12_n_0 ),
        .I1(\wt_row[3]_i_13_n_0 ),
        .I2(\wt_row[3]_i_14_n_0 ),
        .I3(\wt_row[3]_i_15_n_0 ),
        .I4(\wt_row[3]_i_16_n_0 ),
        .I5(ctrl_state[0]),
        .O(\wt_row[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0082)) 
    \wt_row[3]_i_7 
       (.I0(inc_addr),
        .I1(Q[3]),
        .I2(\vir_column[3]_i_5_n_0 ),
        .I3(\vir_column[3]_i_4_n_0 ),
        .O(\wt_row[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wt_row[3]_i_8 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\wt_row[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \wt_row[3]_i_9 
       (.I0(ctrl_state[2]),
        .I1(\ctrl_state[1]_i_2_n_0 ),
        .I2(ctrl_state[1]),
        .O(\wt_row[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[0] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[0]),
        .Q(wt_mem_rd_addr[0]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[1] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[1]),
        .Q(wt_mem_rd_addr[1]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[2] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[2]),
        .Q(wt_mem_rd_addr[2]),
        .R(\wt_row[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wt_row_reg[3] 
       (.C(clk),
        .CE(\wt_row[3]_i_2_n_0 ),
        .D(p_0_in[3]),
        .Q(wt_mem_rd_addr[3]),
        .R(\wt_row[3]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "hardware_accelerator_controller_0_0,controller,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "controller,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    arestn,
    ended_reading_cnvtn_data,
    image_dimension,
    kernel_dimension,
    ended_reading_mltn_data,
    matrix_a_dimension,
    matrix_b_dimension,
    rst_module,
    cvltn_or_mltpn,
    vir_wr_enable,
    ou_wr_enable,
    start_cnvtn_writing_fsm,
    start_mltpn_writing_fsm,
    in_mem_rd_addr,
    wt_mem_rd_addr,
    vr_mem_wr_addr,
    ou_mem_wr_addr,
    ou_mem_rd_addr,
    rd_address);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_accelerator_S_AXI_ACLK_0, INSERT_VIP 0" *) input clk;
  input arestn;
  input ended_reading_cnvtn_data;
  input [7:0]image_dimension;
  input [7:0]kernel_dimension;
  input ended_reading_mltn_data;
  input [7:0]matrix_a_dimension;
  input [7:0]matrix_b_dimension;
  output rst_module;
  output cvltn_or_mltpn;
  output vir_wr_enable;
  output ou_wr_enable;
  output start_cnvtn_writing_fsm;
  output start_mltpn_writing_fsm;
  output [7:0]in_mem_rd_addr;
  output [7:0]wt_mem_rd_addr;
  output [7:0]vr_mem_wr_addr;
  output [7:0]ou_mem_wr_addr;
  output [7:0]ou_mem_rd_addr;
  output [4:0]rd_address;

  wire arestn;
  wire clk;
  wire cvltn_or_mltpn;
  wire ended_reading_cnvtn_data;
  wire ended_reading_mltn_data;
  wire [7:0]image_dimension;
  wire [7:0]in_mem_rd_addr;
  wire [7:0]kernel_dimension;
  wire [7:0]matrix_a_dimension;
  wire [7:0]matrix_b_dimension;
  wire [7:0]ou_mem_rd_addr;
  wire [7:0]ou_mem_wr_addr;
  wire ou_wr_enable;
  wire [4:0]rd_address;
  wire rst_module;
  wire start_cnvtn_writing_fsm;
  wire start_mltpn_writing_fsm;
  wire vir_wr_enable;
  wire [7:0]vr_mem_wr_addr;
  wire [7:0]wt_mem_rd_addr;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_controller inst
       (.Q(wt_mem_rd_addr[3:0]),
        .arestn(arestn),
        .clk(clk),
        .cvltn_or_mltpn(cvltn_or_mltpn),
        .ended_reading_cnvtn_data(ended_reading_cnvtn_data),
        .ended_reading_mltn_data(ended_reading_mltn_data),
        .image_dimension(image_dimension),
        .in_mem_rd_addr(in_mem_rd_addr),
        .kernel_dimension(kernel_dimension),
        .matrix_a_dimension(matrix_a_dimension),
        .matrix_b_dimension(matrix_b_dimension),
        .ou_mem_rd_addr(ou_mem_rd_addr),
        .ou_mem_wr_addr(ou_mem_wr_addr),
        .ou_wr_enable(ou_wr_enable),
        .rd_address(rd_address),
        .rst_module(rst_module),
        .start_cnvtn_writing_fsm(start_cnvtn_writing_fsm),
        .start_mltpn_writing_fsm(start_mltpn_writing_fsm),
        .vir_wr_enable(vir_wr_enable),
        .vr_mem_wr_addr(vr_mem_wr_addr),
        .wt_mem_rd_addr(wt_mem_rd_addr[7:4]));
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
