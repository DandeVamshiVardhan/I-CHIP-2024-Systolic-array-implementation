-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:42:15 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {E:/vivado
--               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_controller_0_0/hardware_accelerator_controller_0_0_sim_netlist.vhdl}
-- Design      : hardware_accelerator_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_accelerator_controller_0_0_controller is
  port (
    rd_address : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wt_mem_rd_addr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_mltpn_writing_fsm : out STD_LOGIC;
    rst_module : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ou_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vr_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_wr_enable : out STD_LOGIC;
    in_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    start_cnvtn_writing_fsm : out STD_LOGIC;
    vir_wr_enable : out STD_LOGIC;
    cvltn_or_mltpn : out STD_LOGIC;
    arestn : in STD_LOGIC;
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    matrix_b_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    matrix_a_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ended_reading_cnvtn_data : in STD_LOGIC;
    ended_reading_mltn_data : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hardware_accelerator_controller_0_0_controller : entity is "controller";
end hardware_accelerator_controller_0_0_controller;

architecture STRUCTURE of hardware_accelerator_controller_0_0_controller is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clear : STD_LOGIC;
  signal ctrl_n_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ctrl_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctrl_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl_state[0]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_11_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_12_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_13_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_14_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_15_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_16_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_17_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_18_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_19_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_20_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_21_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \ctrl_state[1]_i_9_n_0\ : STD_LOGIC;
  signal in_column : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \in_column[2]_i_1_n_0\ : STD_LOGIC;
  signal in_column_0 : STD_LOGIC;
  signal \^in_mem_rd_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \in_mem_rd_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_mem_rd_addr[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal in_row : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \in_row[0]_i_1_n_0\ : STD_LOGIC;
  signal \in_row[1]_i_1_n_0\ : STD_LOGIC;
  signal \in_row[2]_i_2_n_0\ : STD_LOGIC;
  signal in_row_1 : STD_LOGIC;
  signal inc_addr : STD_LOGIC;
  signal inc_o_column : STD_LOGIC;
  signal inc_o_row : STD_LOGIC;
  signal inc_rd_address : STD_LOGIC;
  signal inc_s_column : STD_LOGIC;
  signal inc_s_row : STD_LOGIC;
  signal \o_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_column[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \^ou_mem_rd_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ou_mem_wr_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_address\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \rd_address[4]_i_3_n_0\ : STD_LOGIC;
  signal rst_module_INST_0_i_10_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_11_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_1_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_2_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_3_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_4_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_5_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_6_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_7_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_8_n_0 : STD_LOGIC;
  signal rst_module_INST_0_i_9_n_0 : STD_LOGIC;
  signal \s_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_row[3]_i_3_n_0\ : STD_LOGIC;
  signal \s_row[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \vir_column[3]_i_4_n_0\ : STD_LOGIC;
  signal \vir_column[3]_i_5_n_0\ : STD_LOGIC;
  signal \vir_column[3]_i_6_n_0\ : STD_LOGIC;
  signal \vir_column[3]_i_7_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_4_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_7_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_8_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_9_n_0\ : STD_LOGIC;
  signal \^vr_mem_wr_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wt_column[1]_i_2_n_0\ : STD_LOGIC;
  signal \wt_column[2]_i_2_n_0\ : STD_LOGIC;
  signal \wt_column[2]_i_3_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_2_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_4_n_0\ : STD_LOGIC;
  signal \^wt_mem_rd_addr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wt_row[2]_i_2_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_10_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_11_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_12_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_13_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_14_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_15_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_16_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_17_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_18_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_19_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_20_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_21_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_22_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_23_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_24_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_25_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_26_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_27_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_28_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_29_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_2_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_30_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_31_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_32_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_33_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_34_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_35_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_36_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_37_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_38_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_39_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_40_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_41_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_42_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_43_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_44_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_45_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_46_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_47_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_48_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_49_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_4_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_50_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_51_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_52_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_53_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_54_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_55_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_56_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_57_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_7_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_8_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_9_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_state[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \ctrl_state[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ctrl_state[0]_i_6\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \ctrl_state[0]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_18\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_19\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_20\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_21\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \ctrl_state[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of cvltn_or_mltpn_INST_0 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \in_column[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \in_column[2]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[0]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[1]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[3]_INST_0_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[4]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[5]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[7]_INST_0_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \in_row[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \in_row[2]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \o_column[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_column[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \o_column[2]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_column[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \o_column[3]_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_row[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_row[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \o_row[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \o_row[3]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of ou_wr_enable_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \rd_address[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_address[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \rd_address[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_address[4]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \rd_address[4]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of rst_module_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of rst_module_INST_0_i_10 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of rst_module_INST_0_i_11 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of rst_module_INST_0_i_4 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of rst_module_INST_0_i_5 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of rst_module_INST_0_i_7 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_column[0]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_column[1]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_column[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_column[3]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_row[0]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_row[1]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_row[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_row[3]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of start_cnvtn_writing_fsm_INST_0 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of start_mltpn_writing_fsm_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \vir_column[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \vir_column[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \vir_column[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \vir_column[3]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \vir_column[3]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \vir_row[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vir_row[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \vir_row[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \vir_row[3]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \vir_row[3]_i_8\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of vir_wr_enable_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \wt_column[1]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \wt_column[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wt_column[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wt_row[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wt_row[2]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wt_row[3]_i_10\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \wt_row[3]_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wt_row[3]_i_12\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wt_row[3]_i_14\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wt_row[3]_i_29\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wt_row[3]_i_30\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wt_row[3]_i_31\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wt_row[3]_i_32\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wt_row[3]_i_34\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wt_row[3]_i_38\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wt_row[3]_i_39\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wt_row[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wt_row[3]_i_46\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \wt_row[3]_i_47\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wt_row[3]_i_49\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wt_row[3]_i_54\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \wt_row[3]_i_55\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wt_row[3]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wt_row[3]_i_9\ : label is "soft_lutpair1";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  in_mem_rd_addr(7 downto 0) <= \^in_mem_rd_addr\(7 downto 0);
  ou_mem_rd_addr(7 downto 0) <= \^ou_mem_rd_addr\(7 downto 0);
  ou_mem_wr_addr(7 downto 0) <= \^ou_mem_wr_addr\(7 downto 0);
  rd_address(4 downto 0) <= \^rd_address\(4 downto 0);
  vr_mem_wr_addr(7 downto 0) <= \^vr_mem_wr_addr\(7 downto 0);
  wt_mem_rd_addr(3 downto 0) <= \^wt_mem_rd_addr\(3 downto 0);
\ctrl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFE0E0E0"
    )
        port map (
      I0 => \rd_address[4]_i_3_n_0\,
      I1 => \ctrl_state[0]_i_2_n_0\,
      I2 => ctrl_state(2),
      I3 => \ctrl_state[1]_i_4_n_0\,
      I4 => \ctrl_state[0]_i_3_n_0\,
      I5 => \ctrl_state[0]_i_4_n_0\,
      O => ctrl_n_state(0)
    );
\ctrl_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA80"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => \s_row[3]_i_3_n_0\,
      I2 => \s_row[3]_i_4_n_0\,
      I3 => ctrl_state(0),
      O => \ctrl_state[0]_i_2_n_0\
    );
\ctrl_state[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABAAAAABAAAAAAAA"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => \ctrl_state[0]_i_5_n_0\,
      I2 => \ctrl_state[0]_i_6_n_0\,
      I3 => \wt_row[3]_i_15_n_0\,
      I4 => \wt_row[3]_i_14_n_0\,
      I5 => \wt_row[3]_i_13_n_0\,
      O => \ctrl_state[0]_i_3_n_0\
    );
\ctrl_state[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \ctrl_state[1]_i_2_n_0\,
      I1 => ctrl_state(0),
      I2 => ended_reading_cnvtn_data,
      I3 => ctrl_state(1),
      O => \ctrl_state[0]_i_4_n_0\
    );
\ctrl_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B6FBDF6DDF6DB6FB"
    )
        port map (
      I0 => \^rd_address\(1),
      I1 => \wt_row[3]_i_29_n_0\,
      I2 => \wt_row[3]_i_30_n_0\,
      I3 => \wt_row[3]_i_28_n_0\,
      I4 => \ctrl_state[0]_i_7_n_0\,
      I5 => \^rd_address\(2),
      O => \ctrl_state[0]_i_5_n_0\
    );
\ctrl_state[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA5A6669"
    )
        port map (
      I0 => \^rd_address\(0),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(4),
      I3 => image_dimension(0),
      I4 => image_dimension(4),
      O => \ctrl_state[0]_i_6_n_0\
    );
\ctrl_state[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \wt_row[3]_i_18_n_0\,
      I1 => \wt_row[3]_i_17_n_0\,
      O => \ctrl_state[0]_i_7_n_0\
    );
\ctrl_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFFFAF11"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => \ctrl_state[1]_i_2_n_0\,
      I2 => \ctrl_state[1]_i_3_n_0\,
      I3 => ctrl_state(2),
      I4 => \ctrl_state[1]_i_4_n_0\,
      O => ctrl_n_state(1)
    );
\ctrl_state[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \ctrl_state[1]_i_15_n_0\,
      I1 => matrix_a_dimension(7),
      I2 => matrix_a_dimension(3),
      O => \ctrl_state[1]_i_10_n_0\
    );
\ctrl_state[1]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99969666"
    )
        port map (
      I0 => matrix_b_dimension(7),
      I1 => matrix_b_dimension(3),
      I2 => matrix_b_dimension(2),
      I3 => \ctrl_state[1]_i_19_n_0\,
      I4 => matrix_b_dimension(6),
      O => \ctrl_state[1]_i_11_n_0\
    );
\ctrl_state[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE8EE88EE8EEEE"
    )
        port map (
      I0 => \ctrl_state[1]_i_20_n_0\,
      I1 => \ctrl_state[1]_i_18_n_0\,
      I2 => matrix_a_dimension(0),
      I3 => matrix_a_dimension(4),
      I4 => matrix_b_dimension(0),
      I5 => matrix_b_dimension(4),
      O => \ctrl_state[1]_i_12_n_0\
    );
\ctrl_state[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077FF880F880077F"
    )
        port map (
      I0 => matrix_a_dimension(4),
      I1 => matrix_a_dimension(0),
      I2 => matrix_a_dimension(5),
      I3 => matrix_a_dimension(1),
      I4 => matrix_a_dimension(2),
      I5 => matrix_a_dimension(6),
      O => \ctrl_state[1]_i_13_n_0\
    );
\ctrl_state[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"157FEA80EA80157F"
    )
        port map (
      I0 => matrix_b_dimension(5),
      I1 => matrix_b_dimension(4),
      I2 => matrix_b_dimension(0),
      I3 => matrix_b_dimension(1),
      I4 => matrix_b_dimension(2),
      I5 => matrix_b_dimension(6),
      O => \ctrl_state[1]_i_14_n_0\
    );
\ctrl_state[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEAEAEAA8808080"
    )
        port map (
      I0 => matrix_a_dimension(2),
      I1 => matrix_a_dimension(1),
      I2 => matrix_a_dimension(5),
      I3 => matrix_a_dimension(0),
      I4 => matrix_a_dimension(4),
      I5 => matrix_a_dimension(6),
      O => \ctrl_state[1]_i_15_n_0\
    );
\ctrl_state[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9FF9FFFFFFFF9FF9"
    )
        port map (
      I0 => \ctrl_state[1]_i_13_n_0\,
      I1 => \^rd_address\(2),
      I2 => \^rd_address\(1),
      I3 => \ctrl_state[1]_i_20_n_0\,
      I4 => \^rd_address\(0),
      I5 => \ctrl_state[1]_i_21_n_0\,
      O => \ctrl_state[1]_i_16_n_0\
    );
\ctrl_state[1]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => matrix_b_dimension(4),
      I1 => matrix_b_dimension(0),
      O => \ctrl_state[1]_i_17_n_0\
    );
\ctrl_state[1]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => matrix_b_dimension(0),
      I1 => matrix_b_dimension(4),
      I2 => matrix_b_dimension(1),
      I3 => matrix_b_dimension(5),
      O => \ctrl_state[1]_i_18_n_0\
    );
\ctrl_state[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => matrix_b_dimension(1),
      I1 => matrix_b_dimension(0),
      I2 => matrix_b_dimension(4),
      I3 => matrix_b_dimension(5),
      O => \ctrl_state[1]_i_19_n_0\
    );
\ctrl_state[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \vir_row[3]_i_4_n_0\,
      I1 => \vir_row[3]_i_5_n_0\,
      I2 => ctrl_state(0),
      O => \ctrl_state[1]_i_2_n_0\
    );
\ctrl_state[1]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => matrix_a_dimension(0),
      I1 => matrix_a_dimension(4),
      I2 => matrix_a_dimension(1),
      I3 => matrix_a_dimension(5),
      O => \ctrl_state[1]_i_20_n_0\
    );
\ctrl_state[1]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => matrix_a_dimension(4),
      I1 => matrix_a_dimension(0),
      O => \ctrl_state[1]_i_21_n_0\
    );
\ctrl_state[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E2FF"
    )
        port map (
      I0 => \ctrl_state[1]_i_5_n_0\,
      I1 => \ctrl_state[1]_i_6_n_0\,
      I2 => \ctrl_state[1]_i_7_n_0\,
      I3 => ctrl_state(0),
      O => \ctrl_state[1]_i_3_n_0\
    );
\ctrl_state[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF00"
    )
        port map (
      I0 => rst_module_INST_0_i_1_n_0,
      I1 => rst_module_INST_0_i_2_n_0,
      I2 => ctrl_state(0),
      I3 => ctrl_state(1),
      O => \ctrl_state[1]_i_4_n_0\
    );
\ctrl_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF6BBFFDD6"
    )
        port map (
      I0 => \^rd_address\(3),
      I1 => \ctrl_state[1]_i_8_n_0\,
      I2 => matrix_b_dimension(3),
      I3 => matrix_b_dimension(7),
      I4 => \^rd_address\(4),
      I5 => \ctrl_state[1]_i_9_n_0\,
      O => \ctrl_state[1]_i_5_n_0\
    );
\ctrl_state[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B2BB22B2"
    )
        port map (
      I0 => \ctrl_state[1]_i_10_n_0\,
      I1 => \ctrl_state[1]_i_11_n_0\,
      I2 => \ctrl_state[1]_i_12_n_0\,
      I3 => \ctrl_state[1]_i_13_n_0\,
      I4 => \ctrl_state[1]_i_14_n_0\,
      O => \ctrl_state[1]_i_6_n_0\
    );
\ctrl_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7BBDBDDE"
    )
        port map (
      I0 => \^rd_address\(3),
      I1 => \^rd_address\(4),
      I2 => \ctrl_state[1]_i_15_n_0\,
      I3 => matrix_a_dimension(7),
      I4 => matrix_a_dimension(3),
      I5 => \ctrl_state[1]_i_16_n_0\,
      O => \ctrl_state[1]_i_7_n_0\
    );
\ctrl_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEAAAA8888000"
    )
        port map (
      I0 => matrix_b_dimension(6),
      I1 => matrix_b_dimension(5),
      I2 => matrix_b_dimension(4),
      I3 => matrix_b_dimension(0),
      I4 => matrix_b_dimension(1),
      I5 => matrix_b_dimension(2),
      O => \ctrl_state[1]_i_8_n_0\
    );
\ctrl_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF66FF66FFFFF"
    )
        port map (
      I0 => \ctrl_state[1]_i_17_n_0\,
      I1 => \^rd_address\(0),
      I2 => \^rd_address\(2),
      I3 => \ctrl_state[1]_i_14_n_0\,
      I4 => \^rd_address\(1),
      I5 => \ctrl_state[1]_i_18_n_0\,
      O => \ctrl_state[1]_i_9_n_0\
    );
\ctrl_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF40FF00"
    )
        port map (
      I0 => rst_module_INST_0_i_1_n_0,
      I1 => rst_module_INST_0_i_2_n_0,
      I2 => ctrl_state(0),
      I3 => ctrl_state(2),
      I4 => ctrl_state(1),
      O => ctrl_n_state(2)
    );
\ctrl_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_n_state(0),
      Q => ctrl_state(0),
      R => clear
    );
\ctrl_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_n_state(1),
      Q => ctrl_state(1),
      R => clear
    );
\ctrl_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ctrl_n_state(2),
      Q => ctrl_state(2),
      R => clear
    );
cvltn_or_mltpn_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(1),
      O => cvltn_or_mltpn
    );
\in_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_column(0),
      O => p_1_in(0)
    );
\in_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_column(0),
      I1 => in_column(1),
      O => p_1_in(1)
    );
\in_column[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FF"
    )
        port map (
      I0 => inc_addr,
      I1 => \vir_column[3]_i_6_n_0\,
      I2 => \vir_row[3]_i_5_n_0\,
      I3 => arestn,
      O => \in_column[2]_i_1_n_0\
    );
\in_column[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => in_column(2),
      I1 => in_column(1),
      I2 => in_column(0),
      O => p_1_in(2)
    );
\in_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => p_1_in(0),
      Q => in_column(0),
      R => \in_column[2]_i_1_n_0\
    );
\in_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => p_1_in(1),
      Q => in_column(1),
      R => \in_column[2]_i_1_n_0\
    );
\in_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => p_1_in(2),
      Q => in_column(2),
      R => \in_column[2]_i_1_n_0\
    );
\in_mem_rd_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => in_column(0),
      O => \^in_mem_rd_addr\(0)
    );
\in_mem_rd_addr[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => in_column(0),
      I1 => \^q\(0),
      I2 => in_column(1),
      I3 => \^q\(1),
      O => \^in_mem_rd_addr\(1)
    );
\in_mem_rd_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => in_column(1),
      I1 => \^q\(1),
      I2 => in_column(0),
      I3 => \^q\(0),
      I4 => in_column(2),
      I5 => \^q\(2),
      O => \^in_mem_rd_addr\(2)
    );
\in_mem_rd_addr[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \^q\(3),
      I1 => in_column(2),
      I2 => \^q\(2),
      I3 => \in_mem_rd_addr[3]_INST_0_i_1_n_0\,
      O => \^in_mem_rd_addr\(3)
    );
\in_mem_rd_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \^q\(0),
      I1 => in_column(0),
      I2 => \^q\(1),
      I3 => in_column(1),
      O => \in_mem_rd_addr[3]_INST_0_i_1_n_0\
    );
\in_mem_rd_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(0),
      I1 => in_row(0),
      O => \^in_mem_rd_addr\(4)
    );
\in_mem_rd_addr[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => in_row(1),
      I1 => \^wt_mem_rd_addr\(1),
      I2 => \^wt_mem_rd_addr\(0),
      I3 => in_row(0),
      O => \^in_mem_rd_addr\(5)
    );
\in_mem_rd_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9996966696669666"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(2),
      I1 => in_row(2),
      I2 => \^wt_mem_rd_addr\(1),
      I3 => in_row(1),
      I4 => \^wt_mem_rd_addr\(0),
      I5 => in_row(0),
      O => \^in_mem_rd_addr\(6)
    );
\in_mem_rd_addr[7]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(3),
      I1 => in_row(2),
      I2 => \^wt_mem_rd_addr\(2),
      I3 => \in_mem_rd_addr[7]_INST_0_i_1_n_0\,
      O => \^in_mem_rd_addr\(7)
    );
\in_mem_rd_addr[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E888"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(1),
      I1 => in_row(1),
      I2 => \^wt_mem_rd_addr\(0),
      I3 => in_row(0),
      O => \in_mem_rd_addr[7]_INST_0_i_1_n_0\
    );
\in_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_row(0),
      O => \in_row[0]_i_1_n_0\
    );
\in_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => in_row(0),
      I1 => in_row(1),
      O => \in_row[1]_i_1_n_0\
    );
\in_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => inc_addr,
      I1 => \vir_column[3]_i_6_n_0\,
      I2 => \vir_row[3]_i_5_n_0\,
      O => in_row_1
    );
\in_row[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => in_row(2),
      I1 => in_row(1),
      I2 => in_row(0),
      O => \in_row[2]_i_2_n_0\
    );
\in_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row_1,
      D => \in_row[0]_i_1_n_0\,
      Q => in_row(0),
      R => clear
    );
\in_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row_1,
      D => \in_row[1]_i_1_n_0\,
      Q => in_row(1),
      R => clear
    );
\in_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row_1,
      D => \in_row[2]_i_2_n_0\,
      Q => in_row(2),
      R => clear
    );
\o_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(0),
      O => \p_0_in__1\(0)
    );
\o_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(0),
      I1 => \^ou_mem_wr_addr\(1),
      O => \p_0_in__1\(1)
    );
\o_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(2),
      I1 => \^ou_mem_wr_addr\(1),
      I2 => \^ou_mem_wr_addr\(0),
      O => \p_0_in__1\(2)
    );
\o_column[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF080000FFFFFFFF"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      I3 => inc_s_row,
      I4 => \o_column[3]_i_4_n_0\,
      I5 => arestn,
      O => \o_column[3]_i_1_n_0\
    );
\o_column[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \o_column[3]_i_4_n_0\,
      O => inc_o_column
    );
\o_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(3),
      I1 => \^ou_mem_wr_addr\(0),
      I2 => \^ou_mem_wr_addr\(1),
      I3 => \^ou_mem_wr_addr\(2),
      O => \p_0_in__1\(3)
    );
\o_column[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAFCFFF"
    )
        port map (
      I0 => rst_module_INST_0_i_2_n_0,
      I1 => \s_row[3]_i_3_n_0\,
      I2 => ctrl_state(1),
      I3 => ctrl_state(2),
      I4 => ctrl_state(0),
      O => \o_column[3]_i_4_n_0\
    );
\o_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_column,
      D => \p_0_in__1\(0),
      Q => \^ou_mem_wr_addr\(0),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_column,
      D => \p_0_in__1\(1),
      Q => \^ou_mem_wr_addr\(1),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_column,
      D => \p_0_in__1\(2),
      Q => \^ou_mem_wr_addr\(2),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_column,
      D => \p_0_in__1\(3),
      Q => \^ou_mem_wr_addr\(3),
      R => \o_column[3]_i_1_n_0\
    );
\o_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(4),
      O => \p_0_in__2\(0)
    );
\o_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(4),
      I1 => \^ou_mem_wr_addr\(5),
      O => \p_0_in__2\(1)
    );
\o_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(6),
      I1 => \^ou_mem_wr_addr\(5),
      I2 => \^ou_mem_wr_addr\(4),
      O => \p_0_in__2\(2)
    );
\o_row[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400000FFFFFFFF"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(1),
      I2 => ctrl_state(0),
      I3 => rst_module_INST_0_i_1_n_0,
      I4 => rst_module_INST_0_i_2_n_0,
      I5 => arestn,
      O => \o_row[3]_i_1_n_0\
    );
\o_row[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0800FFFF0000"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      I3 => rst_module_INST_0_i_1_n_0,
      I4 => inc_s_row,
      I5 => rst_module_INST_0_i_2_n_0,
      O => inc_o_row
    );
\o_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(7),
      I1 => \^ou_mem_wr_addr\(4),
      I2 => \^ou_mem_wr_addr\(5),
      I3 => \^ou_mem_wr_addr\(6),
      O => \p_0_in__2\(3)
    );
\o_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_row,
      D => \p_0_in__2\(0),
      Q => \^ou_mem_wr_addr\(4),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_row,
      D => \p_0_in__2\(1),
      Q => \^ou_mem_wr_addr\(5),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_row,
      D => \p_0_in__2\(2),
      Q => \^ou_mem_wr_addr\(6),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_o_row,
      D => \p_0_in__2\(3),
      Q => \^ou_mem_wr_addr\(7),
      R => \o_row[3]_i_1_n_0\
    );
ou_wr_enable_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(2),
      I2 => ctrl_state(1),
      O => ou_wr_enable
    );
\rd_address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rd_address\(0),
      O => \p_0_in__0\(0)
    );
\rd_address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_address\(0),
      I1 => \^rd_address\(1),
      O => \p_0_in__0\(1)
    );
\rd_address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^rd_address\(2),
      I1 => \^rd_address\(1),
      I2 => \^rd_address\(0),
      O => \p_0_in__0\(2)
    );
\rd_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^rd_address\(3),
      I1 => \^rd_address\(2),
      I2 => \^rd_address\(0),
      I3 => \^rd_address\(1),
      O => \p_0_in__0\(3)
    );
\rd_address[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => \rd_address[4]_i_3_n_0\,
      I2 => \wt_row[3]_i_9_n_0\,
      I3 => \wt_row[3]_i_6_n_0\,
      O => inc_rd_address
    );
\rd_address[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^rd_address\(4),
      I1 => \^rd_address\(1),
      I2 => \^rd_address\(0),
      I3 => \^rd_address\(2),
      I4 => \^rd_address\(3),
      O => \p_0_in__0\(4)
    );
\rd_address[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
        port map (
      I0 => \ctrl_state[1]_i_3_n_0\,
      I1 => ended_reading_mltn_data,
      I2 => ctrl_state(0),
      I3 => ctrl_state(1),
      O => \rd_address[4]_i_3_n_0\
    );
\rd_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(0),
      Q => \^rd_address\(0),
      R => \o_row[3]_i_1_n_0\
    );
\rd_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(1),
      Q => \^rd_address\(1),
      R => \o_row[3]_i_1_n_0\
    );
\rd_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(2),
      Q => \^rd_address\(2),
      R => \o_row[3]_i_1_n_0\
    );
\rd_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(3),
      Q => \^rd_address\(3),
      R => \o_row[3]_i_1_n_0\
    );
\rd_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(4),
      Q => \^rd_address\(4),
      R => \o_row[3]_i_1_n_0\
    );
rst_module_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(1),
      I2 => ctrl_state(0),
      I3 => rst_module_INST_0_i_1_n_0,
      I4 => rst_module_INST_0_i_2_n_0,
      O => rst_module
    );
rst_module_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFEFEFBEFBFBFFE"
    )
        port map (
      I0 => rst_module_INST_0_i_3_n_0,
      I1 => \^ou_mem_wr_addr\(6),
      I2 => rst_module_INST_0_i_4_n_0,
      I3 => rst_module_INST_0_i_5_n_0,
      I4 => kernel_dimension(6),
      I5 => image_dimension(6),
      O => rst_module_INST_0_i_1_n_0
    );
rst_module_INST_0_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => image_dimension(2),
      I1 => kernel_dimension(2),
      O => rst_module_INST_0_i_10_n_0
    );
rst_module_INST_0_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => kernel_dimension(0),
      I1 => image_dimension(0),
      O => rst_module_INST_0_i_11_n_0
    );
rst_module_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0014140014000014"
    )
        port map (
      I0 => rst_module_INST_0_i_6_n_0,
      I1 => \^ou_mem_wr_addr\(0),
      I2 => rst_module_INST_0_i_7_n_0,
      I3 => \^ou_mem_wr_addr\(3),
      I4 => rst_module_INST_0_i_8_n_0,
      I5 => rst_module_INST_0_i_9_n_0,
      O => rst_module_INST_0_i_2_n_0
    );
rst_module_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFB6B6DFB6DFDFB6"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(4),
      I3 => image_dimension(5),
      I4 => kernel_dimension(5),
      I5 => \^ou_mem_wr_addr\(5),
      O => rst_module_INST_0_i_3_n_0
    );
rst_module_INST_0_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(7),
      I1 => kernel_dimension(7),
      I2 => image_dimension(7),
      O => rst_module_INST_0_i_4_n_0
    );
rst_module_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(5),
      I3 => image_dimension(5),
      O => rst_module_INST_0_i_5_n_0
    );
rst_module_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7BEEBD7BE7DD7BE"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(1),
      I1 => \^ou_mem_wr_addr\(2),
      I2 => rst_module_INST_0_i_10_n_0,
      I3 => kernel_dimension(1),
      I4 => image_dimension(1),
      I5 => rst_module_INST_0_i_11_n_0,
      O => rst_module_INST_0_i_6_n_0
    );
rst_module_INST_0_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => image_dimension(0),
      I1 => kernel_dimension(0),
      O => rst_module_INST_0_i_7_n_0
    );
rst_module_INST_0_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => image_dimension(3),
      I1 => kernel_dimension(3),
      O => rst_module_INST_0_i_8_n_0
    );
rst_module_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44D444D4D4DD44D4"
    )
        port map (
      I0 => image_dimension(2),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(1),
      I3 => image_dimension(1),
      I4 => kernel_dimension(0),
      I5 => image_dimension(0),
      O => rst_module_INST_0_i_9_n_0
    );
\s_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(0),
      O => \p_0_in__5\(0)
    );
\s_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(0),
      I1 => \^ou_mem_rd_addr\(1),
      O => \p_0_in__5\(1)
    );
\s_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(2),
      I1 => \^ou_mem_rd_addr\(1),
      I2 => \^ou_mem_rd_addr\(0),
      O => \p_0_in__5\(2)
    );
\s_column[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550040FFFFFFFF"
    )
        port map (
      I0 => inc_s_column,
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => ctrl_state(2),
      I4 => inc_s_row,
      I5 => arestn,
      O => \s_column[3]_i_1_n_0\
    );
\s_column[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0800FFFF"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      I3 => rst_module_INST_0_i_1_n_0,
      I4 => \o_column[3]_i_4_n_0\,
      O => inc_s_column
    );
\s_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(3),
      I1 => \^ou_mem_rd_addr\(0),
      I2 => \^ou_mem_rd_addr\(1),
      I3 => \^ou_mem_rd_addr\(2),
      O => \p_0_in__5\(3)
    );
\s_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_column,
      D => \p_0_in__5\(0),
      Q => \^ou_mem_rd_addr\(0),
      R => \s_column[3]_i_1_n_0\
    );
\s_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_column,
      D => \p_0_in__5\(1),
      Q => \^ou_mem_rd_addr\(1),
      R => \s_column[3]_i_1_n_0\
    );
\s_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_column,
      D => \p_0_in__5\(2),
      Q => \^ou_mem_rd_addr\(2),
      R => \s_column[3]_i_1_n_0\
    );
\s_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_column,
      D => \p_0_in__5\(3),
      Q => \^ou_mem_rd_addr\(3),
      R => \s_column[3]_i_1_n_0\
    );
\s_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(4),
      O => \p_0_in__6\(0)
    );
\s_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(4),
      I1 => \^ou_mem_rd_addr\(5),
      O => \p_0_in__6\(1)
    );
\s_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(6),
      I1 => \^ou_mem_rd_addr\(5),
      I2 => \^ou_mem_rd_addr\(4),
      O => \p_0_in__6\(2)
    );
\s_row[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \s_row[3]_i_3_n_0\,
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      I3 => ctrl_state(0),
      I4 => \s_row[3]_i_4_n_0\,
      O => inc_s_row
    );
\s_row[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^ou_mem_rd_addr\(7),
      I1 => \^ou_mem_rd_addr\(4),
      I2 => \^ou_mem_rd_addr\(5),
      I3 => \^ou_mem_rd_addr\(6),
      O => \p_0_in__6\(3)
    );
\s_row[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828282828228"
    )
        port map (
      I0 => \s_row[3]_i_5_n_0\,
      I1 => \^ou_mem_wr_addr\(3),
      I2 => matrix_b_dimension(3),
      I3 => matrix_b_dimension(0),
      I4 => matrix_b_dimension(1),
      I5 => matrix_b_dimension(2),
      O => \s_row[3]_i_3_n_0\
    );
\s_row[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8282828282828228"
    )
        port map (
      I0 => \s_row[3]_i_6_n_0\,
      I1 => \^ou_mem_wr_addr\(7),
      I2 => matrix_a_dimension(7),
      I3 => matrix_a_dimension(4),
      I4 => matrix_a_dimension(5),
      I5 => matrix_a_dimension(6),
      O => \s_row[3]_i_4_n_0\
    );
\s_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000422490090000"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(1),
      I1 => matrix_b_dimension(1),
      I2 => \^ou_mem_wr_addr\(2),
      I3 => matrix_b_dimension(2),
      I4 => matrix_b_dimension(0),
      I5 => \^ou_mem_wr_addr\(0),
      O => \s_row[3]_i_5_n_0\
    );
\s_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000128484210000"
    )
        port map (
      I0 => \^ou_mem_wr_addr\(6),
      I1 => matrix_a_dimension(5),
      I2 => matrix_a_dimension(6),
      I3 => \^ou_mem_wr_addr\(5),
      I4 => matrix_a_dimension(4),
      I5 => \^ou_mem_wr_addr\(4),
      O => \s_row[3]_i_6_n_0\
    );
\s_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_row,
      D => \p_0_in__6\(0),
      Q => \^ou_mem_rd_addr\(4),
      R => \o_row[3]_i_1_n_0\
    );
\s_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_row,
      D => \p_0_in__6\(1),
      Q => \^ou_mem_rd_addr\(5),
      R => \o_row[3]_i_1_n_0\
    );
\s_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_row,
      D => \p_0_in__6\(2),
      Q => \^ou_mem_rd_addr\(6),
      R => \o_row[3]_i_1_n_0\
    );
\s_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_s_row,
      D => \p_0_in__6\(3),
      Q => \^ou_mem_rd_addr\(7),
      R => \o_row[3]_i_1_n_0\
    );
start_cnvtn_writing_fsm_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => ctrl_state(2),
      I2 => ctrl_state(0),
      I3 => ended_reading_mltn_data,
      O => start_cnvtn_writing_fsm
    );
start_mltpn_writing_fsm_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(1),
      I2 => ctrl_state(0),
      O => start_mltpn_writing_fsm
    );
\vir_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(0),
      O => \p_0_in__3\(0)
    );
\vir_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(0),
      I1 => \^vr_mem_wr_addr\(1),
      O => \p_0_in__3\(1)
    );
\vir_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(2),
      I1 => \^vr_mem_wr_addr\(1),
      I2 => \^vr_mem_wr_addr\(0),
      O => \p_0_in__3\(2)
    );
\vir_column[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arestn,
      O => clear
    );
\vir_column[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004100"
    )
        port map (
      I0 => \vir_column[3]_i_4_n_0\,
      I1 => \vir_column[3]_i_5_n_0\,
      I2 => \^q\(3),
      I3 => inc_addr,
      I4 => \vir_column[3]_i_6_n_0\,
      O => in_column_0
    );
\vir_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(3),
      I1 => \^vr_mem_wr_addr\(0),
      I2 => \^vr_mem_wr_addr\(1),
      I3 => \^vr_mem_wr_addr\(2),
      O => \p_0_in__3\(3)
    );
\vir_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF6FF9F6FFFF6FF"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => kernel_dimension(0),
      I4 => kernel_dimension(1),
      I5 => \^q\(0),
      O => \vir_column[3]_i_4_n_0\
    );
\vir_column[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => kernel_dimension(3),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(0),
      O => \vir_column[3]_i_5_n_0\
    );
\vir_column[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5556AAA9"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => kernel_dimension(6),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(4),
      I4 => \^wt_mem_rd_addr\(3),
      I5 => \vir_column[3]_i_7_n_0\,
      O => \vir_column[3]_i_6_n_0\
    );
\vir_column[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFDEFF7FB7FFEDF"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(0),
      I1 => \^wt_mem_rd_addr\(2),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(4),
      I4 => kernel_dimension(6),
      I5 => \^wt_mem_rd_addr\(1),
      O => \vir_column[3]_i_7_n_0\
    );
\vir_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => \p_0_in__3\(0),
      Q => \^vr_mem_wr_addr\(0),
      R => clear
    );
\vir_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => \p_0_in__3\(1),
      Q => \^vr_mem_wr_addr\(1),
      R => clear
    );
\vir_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => \p_0_in__3\(2),
      Q => \^vr_mem_wr_addr\(2),
      R => clear
    );
\vir_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column_0,
      D => \p_0_in__3\(3),
      Q => \^vr_mem_wr_addr\(3),
      R => clear
    );
\vir_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(4),
      O => \p_0_in__4\(0)
    );
\vir_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(4),
      I1 => \^vr_mem_wr_addr\(5),
      O => \p_0_in__4\(1)
    );
\vir_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(6),
      I1 => \^vr_mem_wr_addr\(5),
      I2 => \^vr_mem_wr_addr\(4),
      O => \p_0_in__4\(2)
    );
\vir_row[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => in_column_0,
      I1 => arestn,
      O => \vir_row[3]_i_1_n_0\
    );
\vir_row[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000E0000"
    )
        port map (
      I0 => \vir_row[3]_i_4_n_0\,
      I1 => \vir_row[3]_i_5_n_0\,
      I2 => ctrl_state(1),
      I3 => ctrl_state(2),
      I4 => ctrl_state(0),
      O => inc_addr
    );
\vir_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \^vr_mem_wr_addr\(7),
      I1 => \^vr_mem_wr_addr\(4),
      I2 => \^vr_mem_wr_addr\(5),
      I3 => \^vr_mem_wr_addr\(6),
      O => \p_0_in__4\(3)
    );
\vir_row[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBEEEEEEEEB"
    )
        port map (
      I0 => \vir_row[3]_i_6_n_0\,
      I1 => image_dimension(7),
      I2 => image_dimension(6),
      I3 => image_dimension(4),
      I4 => image_dimension(5),
      I5 => \^in_mem_rd_addr\(7),
      O => \vir_row[3]_i_4_n_0\
    );
\vir_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5556AAA9"
    )
        port map (
      I0 => image_dimension(3),
      I1 => image_dimension(2),
      I2 => image_dimension(0),
      I3 => image_dimension(1),
      I4 => \^in_mem_rd_addr\(3),
      I5 => \vir_row[3]_i_7_n_0\,
      O => \vir_row[3]_i_5_n_0\
    );
\vir_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDEB7FEB7FFFFD"
    )
        port map (
      I0 => \^in_mem_rd_addr\(4),
      I1 => \vir_row[3]_i_8_n_0\,
      I2 => image_dimension(5),
      I3 => image_dimension(4),
      I4 => image_dimension(6),
      I5 => \vir_row[3]_i_9_n_0\,
      O => \vir_row[3]_i_6_n_0\
    );
\vir_row[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFDFDBFDBFFFFDB"
    )
        port map (
      I0 => \^in_mem_rd_addr\(0),
      I1 => image_dimension(0),
      I2 => image_dimension(1),
      I3 => image_dimension(2),
      I4 => \^in_mem_rd_addr\(2),
      I5 => \^in_mem_rd_addr\(1),
      O => \vir_row[3]_i_7_n_0\
    );
\vir_row[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => in_row(0),
      I1 => \^wt_mem_rd_addr\(0),
      I2 => \^wt_mem_rd_addr\(1),
      I3 => in_row(1),
      O => \vir_row[3]_i_8_n_0\
    );
\vir_row[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077FF880F880077F"
    )
        port map (
      I0 => in_row(0),
      I1 => \^wt_mem_rd_addr\(0),
      I2 => in_row(1),
      I3 => \^wt_mem_rd_addr\(1),
      I4 => in_row(2),
      I5 => \^wt_mem_rd_addr\(2),
      O => \vir_row[3]_i_9_n_0\
    );
\vir_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__4\(0),
      Q => \^vr_mem_wr_addr\(4),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__4\(1),
      Q => \^vr_mem_wr_addr\(5),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__4\(2),
      Q => \^vr_mem_wr_addr\(6),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__4\(3),
      Q => \^vr_mem_wr_addr\(7),
      R => \vir_row[3]_i_1_n_0\
    );
vir_wr_enable_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(2),
      I2 => ctrl_state(1),
      O => vir_wr_enable
    );
\wt_column[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0054FF57"
    )
        port map (
      I0 => \^q\(0),
      I1 => \wt_row[3]_i_8_n_0\,
      I2 => inc_addr,
      I3 => \wt_row[3]_i_9_n_0\,
      I4 => kernel_dimension(0),
      O => p_2_in(0)
    );
\wt_column[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1B0B4E4E4E4E1B0B"
    )
        port map (
      I0 => \wt_row[3]_i_10_n_0\,
      I1 => inc_addr,
      I2 => \wt_column[1]_i_2_n_0\,
      I3 => \wt_row[3]_i_8_n_0\,
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => p_2_in(1)
    );
\wt_column[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(0),
      O => \wt_column[1]_i_2_n_0\
    );
\wt_column[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A9FFA900"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(1),
      I3 => \wt_row[3]_i_10_n_0\,
      I4 => \wt_column[2]_i_2_n_0\,
      O => p_2_in(2)
    );
\wt_column[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AF0F0A55AF0F0A4"
    )
        port map (
      I0 => inc_addr,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \wt_column[2]_i_3_n_0\,
      O => \wt_column[2]_i_2_n_0\
    );
\wt_column[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(1),
      O => \wt_column[2]_i_3_n_0\
    );
\wt_column[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF80FF"
    )
        port map (
      I0 => \wt_row[3]_i_4_n_0\,
      I1 => \wt_row[3]_i_5_n_0\,
      I2 => \wt_row[3]_i_6_n_0\,
      I3 => arestn,
      I4 => \wt_row[3]_i_7_n_0\,
      O => \wt_column[3]_i_1_n_0\
    );
\wt_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \wt_row[3]_i_6_n_0\,
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      I3 => ctrl_state(0),
      O => \wt_column[3]_i_2_n_0\
    );
\wt_column[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => kernel_dimension(3),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(0),
      I4 => \wt_row[3]_i_10_n_0\,
      I5 => \wt_column[3]_i_4_n_0\,
      O => p_2_in(3)
    );
\wt_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCC96CCCCCC8"
    )
        port map (
      I0 => inc_addr,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \^q\(0),
      I5 => \vir_column[3]_i_5_n_0\,
      O => \wt_column[3]_i_4_n_0\
    );
\wt_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_column[3]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^q\(0),
      R => \wt_column[3]_i_1_n_0\
    );
\wt_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_column[3]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^q\(1),
      R => \wt_column[3]_i_1_n_0\
    );
\wt_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_column[3]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^q\(2),
      R => \wt_column[3]_i_1_n_0\
    );
\wt_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_column[3]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^q\(3),
      R => \wt_column[3]_i_1_n_0\
    );
\wt_row[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(0),
      I1 => kernel_dimension(4),
      I2 => \wt_row[3]_i_10_n_0\,
      O => p_0_in(0)
    );
\wt_row[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"909F9F909F90909F"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => kernel_dimension(5),
      I2 => \wt_row[3]_i_10_n_0\,
      I3 => inc_addr,
      I4 => \^wt_mem_rd_addr\(0),
      I5 => \^wt_mem_rd_addr\(1),
      O => p_0_in(1)
    );
\wt_row[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8BB8B8B8B8B8B88B"
    )
        port map (
      I0 => \wt_row[2]_i_2_n_0\,
      I1 => \wt_row[3]_i_10_n_0\,
      I2 => \^wt_mem_rd_addr\(2),
      I3 => inc_addr,
      I4 => \^wt_mem_rd_addr\(0),
      I5 => \^wt_mem_rd_addr\(1),
      O => p_0_in(2)
    );
\wt_row[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(5),
      O => \wt_row[2]_i_2_n_0\
    );
\wt_row[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDDDDDDD"
    )
        port map (
      I0 => arestn,
      I1 => in_column_0,
      I2 => \wt_row[3]_i_4_n_0\,
      I3 => \wt_row[3]_i_5_n_0\,
      I4 => \wt_row[3]_i_6_n_0\,
      O => \wt_row[3]_i_1_n_0\
    );
\wt_row[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \ctrl_state[1]_i_2_n_0\,
      I1 => ctrl_state(2),
      I2 => ctrl_state(1),
      O => \wt_row[3]_i_10_n_0\
    );
\wt_row[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(3),
      I1 => \^wt_mem_rd_addr\(2),
      I2 => \^wt_mem_rd_addr\(1),
      I3 => \^wt_mem_rd_addr\(0),
      I4 => inc_addr,
      O => \wt_row[3]_i_11_n_0\
    );
\wt_row[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => ctrl_state(2),
      O => \wt_row[3]_i_12_n_0\
    );
\wt_row[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D42B2BD42BD4D42B"
    )
        port map (
      I0 => \wt_row[3]_i_17_n_0\,
      I1 => \wt_row[3]_i_18_n_0\,
      I2 => \wt_row[3]_i_19_n_0\,
      I3 => \wt_row[3]_i_20_n_0\,
      I4 => \wt_row[3]_i_21_n_0\,
      I5 => \^rd_address\(3),
      O => \wt_row[3]_i_13_n_0\
    );
\wt_row[3]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"002B2BFF"
    )
        port map (
      I0 => \wt_row[3]_i_17_n_0\,
      I1 => \wt_row[3]_i_18_n_0\,
      I2 => \wt_row[3]_i_19_n_0\,
      I3 => \wt_row[3]_i_21_n_0\,
      I4 => \wt_row[3]_i_20_n_0\,
      O => \wt_row[3]_i_14_n_0\
    );
\wt_row[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \wt_row[3]_i_22_n_0\,
      I1 => \wt_row[3]_i_23_n_0\,
      I2 => \wt_row[3]_i_24_n_0\,
      I3 => \wt_row[3]_i_25_n_0\,
      I4 => \^rd_address\(4),
      I5 => \wt_row[3]_i_26_n_0\,
      O => \wt_row[3]_i_15_n_0\
    );
\wt_row[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEFEFFEEFFEFEEF"
    )
        port map (
      I0 => \ctrl_state[0]_i_6_n_0\,
      I1 => \wt_row[3]_i_27_n_0\,
      I2 => \wt_row[3]_i_28_n_0\,
      I3 => \wt_row[3]_i_29_n_0\,
      I4 => \wt_row[3]_i_30_n_0\,
      I5 => \^rd_address\(1),
      O => \wt_row[3]_i_16_n_0\
    );
\wt_row[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEF0110FEEE1EEE1"
    )
        port map (
      I0 => \wt_row[3]_i_31_n_0\,
      I1 => \wt_row[3]_i_32_n_0\,
      I2 => \wt_row[3]_i_33_n_0\,
      I3 => \wt_row[3]_i_34_n_0\,
      I4 => \wt_row[3]_i_35_n_0\,
      I5 => rst_module_INST_0_i_7_n_0,
      O => \wt_row[3]_i_17_n_0\
    );
\wt_row[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07F77888F8087888"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(2),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_18_n_0\
    );
\wt_row[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AA9FFFF00009AA9"
    )
        port map (
      I0 => \wt_row[3]_i_36_n_0\,
      I1 => \wt_row[3]_i_31_n_0\,
      I2 => image_dimension(0),
      I3 => kernel_dimension(0),
      I4 => \wt_row[3]_i_30_n_0\,
      I5 => \wt_row[3]_i_29_n_0\,
      O => \wt_row[3]_i_19_n_0\
    );
\wt_row[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFABFFAA"
    )
        port map (
      I0 => \wt_row[3]_i_7_n_0\,
      I1 => \wt_row[3]_i_8_n_0\,
      I2 => inc_addr,
      I3 => \wt_row[3]_i_9_n_0\,
      I4 => \wt_row[3]_i_6_n_0\,
      O => \wt_row[3]_i_2_n_0\
    );
\wt_row[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A9A956A95656A9"
    )
        port map (
      I0 => \wt_row[3]_i_37_n_0\,
      I1 => \wt_row[3]_i_36_n_0\,
      I2 => \wt_row[3]_i_38_n_0\,
      I3 => \wt_row[3]_i_39_n_0\,
      I4 => \wt_row[3]_i_40_n_0\,
      I5 => \wt_row[3]_i_41_n_0\,
      O => \wt_row[3]_i_20_n_0\
    );
\wt_row[3]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \wt_row[3]_i_42_n_0\,
      I1 => \wt_row[3]_i_43_n_0\,
      I2 => \wt_row[3]_i_44_n_0\,
      O => \wt_row[3]_i_21_n_0\
    );
\wt_row[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0410450438D38638"
    )
        port map (
      I0 => \wt_row[3]_i_34_n_0\,
      I1 => \wt_row[3]_i_45_n_0\,
      I2 => \wt_row[3]_i_46_n_0\,
      I3 => kernel_dimension(3),
      I4 => image_dimension(3),
      I5 => \wt_row[3]_i_31_n_0\,
      O => \wt_row[3]_i_22_n_0\
    );
\wt_row[3]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF6FF66F060"
    )
        port map (
      I0 => image_dimension(0),
      I1 => kernel_dimension(0),
      I2 => \wt_row[3]_i_35_n_0\,
      I3 => \wt_row[3]_i_47_n_0\,
      I4 => \wt_row[3]_i_32_n_0\,
      I5 => \wt_row[3]_i_38_n_0\,
      O => \wt_row[3]_i_23_n_0\
    );
\wt_row[3]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E11EE1E1E1E1E11E"
    )
        port map (
      I0 => \wt_row[3]_i_35_n_0\,
      I1 => \wt_row[3]_i_33_n_0\,
      I2 => \wt_row[3]_i_48_n_0\,
      I3 => \wt_row[3]_i_49_n_0\,
      I4 => image_dimension(0),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_24_n_0\
    );
\wt_row[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFCFCCFCF8ECFE8"
    )
        port map (
      I0 => \wt_row[3]_i_34_n_0\,
      I1 => \wt_row[3]_i_41_n_0\,
      I2 => \wt_row[3]_i_40_n_0\,
      I3 => \wt_row[3]_i_32_n_0\,
      I4 => \wt_row[3]_i_35_n_0\,
      I5 => \wt_row[3]_i_38_n_0\,
      O => \wt_row[3]_i_25_n_0\
    );
\wt_row[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"699600009669FFFF"
    )
        port map (
      I0 => \wt_row[3]_i_41_n_0\,
      I1 => \wt_row[3]_i_40_n_0\,
      I2 => \wt_row[3]_i_50_n_0\,
      I3 => \wt_row[3]_i_51_n_0\,
      I4 => \wt_row[3]_i_37_n_0\,
      I5 => \wt_row[3]_i_52_n_0\,
      O => \wt_row[3]_i_26_n_0\
    );
\wt_row[3]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \^rd_address\(2),
      I1 => \wt_row[3]_i_18_n_0\,
      I2 => \wt_row[3]_i_17_n_0\,
      I3 => \wt_row[3]_i_19_n_0\,
      O => \wt_row[3]_i_27_n_0\
    );
\wt_row[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06F90606090906F9"
    )
        port map (
      I0 => image_dimension(1),
      I1 => kernel_dimension(1),
      I2 => \wt_row[3]_i_34_n_0\,
      I3 => \wt_row[3]_i_31_n_0\,
      I4 => image_dimension(0),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_28_n_0\
    );
\wt_row[3]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => image_dimension(4),
      I1 => image_dimension(0),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(0),
      O => \wt_row[3]_i_29_n_0\
    );
\wt_row[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA9FFFFAAA90000"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => kernel_dimension(6),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(4),
      I4 => \wt_row[3]_i_10_n_0\,
      I5 => \wt_row[3]_i_11_n_0\,
      O => p_0_in(3)
    );
\wt_row[3]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8777"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(0),
      O => \wt_row[3]_i_30_n_0\
    );
\wt_row[3]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(5),
      I3 => image_dimension(5),
      O => \wt_row[3]_i_31_n_0\
    );
\wt_row[3]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => image_dimension(0),
      I1 => kernel_dimension(0),
      I2 => image_dimension(1),
      I3 => kernel_dimension(1),
      O => \wt_row[3]_i_32_n_0\
    );
\wt_row[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9699969999699699"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => image_dimension(2),
      I2 => image_dimension(1),
      I3 => kernel_dimension(1),
      I4 => image_dimension(0),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_33_n_0\
    );
\wt_row[3]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => image_dimension(4),
      I1 => kernel_dimension(4),
      O => \wt_row[3]_i_34_n_0\
    );
\wt_row[3]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999696696999999"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => image_dimension(6),
      I2 => kernel_dimension(4),
      I3 => image_dimension(4),
      I4 => image_dimension(5),
      I5 => kernel_dimension(5),
      O => \wt_row[3]_i_35_n_0\
    );
\wt_row[3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0990900909900990"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(1),
      I3 => image_dimension(1),
      I4 => kernel_dimension(0),
      I5 => image_dimension(0),
      O => \wt_row[3]_i_36_n_0\
    );
\wt_row[3]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4141144114144114"
    )
        port map (
      I0 => \wt_row[3]_i_34_n_0\,
      I1 => image_dimension(3),
      I2 => kernel_dimension(3),
      I3 => image_dimension(2),
      I4 => kernel_dimension(2),
      I5 => \wt_row[3]_i_45_n_0\,
      O => \wt_row[3]_i_37_n_0\
    );
\wt_row[3]_i_38\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF9969"
    )
        port map (
      I0 => image_dimension(5),
      I1 => kernel_dimension(5),
      I2 => image_dimension(4),
      I3 => kernel_dimension(4),
      I4 => \wt_row[3]_i_33_n_0\,
      O => \wt_row[3]_i_38_n_0\
    );
\wt_row[3]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006966"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => image_dimension(1),
      I2 => kernel_dimension(0),
      I3 => image_dimension(0),
      I4 => \wt_row[3]_i_35_n_0\,
      O => \wt_row[3]_i_39_n_0\
    );
\wt_row[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => inc_addr,
      I1 => \^wt_mem_rd_addr\(0),
      I2 => \^wt_mem_rd_addr\(1),
      O => \wt_row[3]_i_4_n_0\
    );
\wt_row[3]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69699669FFFFFFFF"
    )
        port map (
      I0 => \wt_row[3]_i_53_n_0\,
      I1 => image_dimension(7),
      I2 => kernel_dimension(7),
      I3 => image_dimension(6),
      I4 => kernel_dimension(6),
      I5 => rst_module_INST_0_i_7_n_0,
      O => \wt_row[3]_i_40_n_0\
    );
\wt_row[3]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFDD5DD"
    )
        port map (
      I0 => rst_module_INST_0_i_7_n_0,
      I1 => \wt_row[3]_i_35_n_0\,
      I2 => \wt_row[3]_i_34_n_0\,
      I3 => \wt_row[3]_i_33_n_0\,
      I4 => \wt_row[3]_i_32_n_0\,
      I5 => \wt_row[3]_i_31_n_0\,
      O => \wt_row[3]_i_41_n_0\
    );
\wt_row[3]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"73777FFF7FFF7FFF"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(2),
      I3 => kernel_dimension(4),
      I4 => kernel_dimension(1),
      I5 => kernel_dimension(5),
      O => \wt_row[3]_i_42_n_0\
    );
\wt_row[3]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888877787778777"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => kernel_dimension(3),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(6),
      I4 => kernel_dimension(2),
      I5 => kernel_dimension(5),
      O => \wt_row[3]_i_43_n_0\
    );
\wt_row[3]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080008000"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(2),
      I3 => kernel_dimension(5),
      I4 => kernel_dimension(7),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_44_n_0\
    );
\wt_row[3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66F666F6606666F6"
    )
        port map (
      I0 => image_dimension(2),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(1),
      I3 => image_dimension(1),
      I4 => image_dimension(0),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_45_n_0\
    );
\wt_row[3]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => image_dimension(2),
      I1 => kernel_dimension(2),
      O => \wt_row[3]_i_46_n_0\
    );
\wt_row[3]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => image_dimension(6),
      I2 => kernel_dimension(7),
      I3 => image_dimension(7),
      I4 => \wt_row[3]_i_53_n_0\,
      O => \wt_row[3]_i_47_n_0\
    );
\wt_row[3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BEEBBEEBEBBEBEEB"
    )
        port map (
      I0 => \wt_row[3]_i_32_n_0\,
      I1 => \wt_row[3]_i_53_n_0\,
      I2 => image_dimension(7),
      I3 => kernel_dimension(7),
      I4 => image_dimension(6),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_48_n_0\
    );
\wt_row[3]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22B2BBDB"
    )
        port map (
      I0 => image_dimension(7),
      I1 => kernel_dimension(7),
      I2 => image_dimension(6),
      I3 => kernel_dimension(6),
      I4 => \wt_row[3]_i_53_n_0\,
      O => \wt_row[3]_i_49_n_0\
    );
\wt_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^wt_mem_rd_addr\(3),
      I1 => \^wt_mem_rd_addr\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(2),
      I5 => \^q\(3),
      O => \wt_row[3]_i_5_n_0\
    );
\wt_row[3]_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE1"
    )
        port map (
      I0 => \wt_row[3]_i_33_n_0\,
      I1 => \wt_row[3]_i_31_n_0\,
      I2 => \wt_row[3]_i_35_n_0\,
      I3 => \wt_row[3]_i_32_n_0\,
      O => \wt_row[3]_i_50_n_0\
    );
\wt_row[3]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEBFFFFFFFFFFEB"
    )
        port map (
      I0 => \wt_row[3]_i_33_n_0\,
      I1 => kernel_dimension(5),
      I2 => image_dimension(5),
      I3 => \wt_row[3]_i_32_n_0\,
      I4 => image_dimension(4),
      I5 => kernel_dimension(4),
      O => \wt_row[3]_i_51_n_0\
    );
\wt_row[3]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E771188E188EE771"
    )
        port map (
      I0 => \wt_row[3]_i_42_n_0\,
      I1 => \wt_row[3]_i_43_n_0\,
      I2 => \wt_row[3]_i_54_n_0\,
      I3 => \wt_row[3]_i_55_n_0\,
      I4 => \wt_row[3]_i_56_n_0\,
      I5 => \wt_row[3]_i_57_n_0\,
      O => \wt_row[3]_i_52_n_0\
    );
\wt_row[3]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6F666F6666066F66"
    )
        port map (
      I0 => image_dimension(6),
      I1 => kernel_dimension(6),
      I2 => image_dimension(5),
      I3 => kernel_dimension(5),
      I4 => image_dimension(4),
      I5 => kernel_dimension(4),
      O => \wt_row[3]_i_53_n_0\
    );
\wt_row[3]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => kernel_dimension(0),
      I1 => kernel_dimension(7),
      O => \wt_row[3]_i_54_n_0\
    );
\wt_row[3]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(1),
      O => \wt_row[3]_i_55_n_0\
    );
\wt_row[3]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7888877787778777"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(3),
      I3 => kernel_dimension(5),
      I4 => kernel_dimension(2),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_56_n_0\
    );
\wt_row[3]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAC0800080008000"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(6),
      I3 => kernel_dimension(2),
      I4 => kernel_dimension(3),
      I5 => kernel_dimension(4),
      O => \wt_row[3]_i_57_n_0\
    );
\wt_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA2AA2"
    )
        port map (
      I0 => \wt_row[3]_i_12_n_0\,
      I1 => \wt_row[3]_i_13_n_0\,
      I2 => \wt_row[3]_i_14_n_0\,
      I3 => \wt_row[3]_i_15_n_0\,
      I4 => \wt_row[3]_i_16_n_0\,
      I5 => ctrl_state(0),
      O => \wt_row[3]_i_6_n_0\
    );
\wt_row[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0082"
    )
        port map (
      I0 => inc_addr,
      I1 => \^q\(3),
      I2 => \vir_column[3]_i_5_n_0\,
      I3 => \vir_column[3]_i_4_n_0\,
      O => \wt_row[3]_i_7_n_0\
    );
\wt_row[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \wt_row[3]_i_8_n_0\
    );
\wt_row[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => \ctrl_state[1]_i_2_n_0\,
      I2 => ctrl_state(1),
      O => \wt_row[3]_i_9_n_0\
    );
\wt_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_row[3]_i_2_n_0\,
      D => p_0_in(0),
      Q => \^wt_mem_rd_addr\(0),
      R => \wt_row[3]_i_1_n_0\
    );
\wt_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_row[3]_i_2_n_0\,
      D => p_0_in(1),
      Q => \^wt_mem_rd_addr\(1),
      R => \wt_row[3]_i_1_n_0\
    );
\wt_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_row[3]_i_2_n_0\,
      D => p_0_in(2),
      Q => \^wt_mem_rd_addr\(2),
      R => \wt_row[3]_i_1_n_0\
    );
\wt_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \wt_row[3]_i_2_n_0\,
      D => p_0_in(3),
      Q => \^wt_mem_rd_addr\(3),
      R => \wt_row[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_accelerator_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    arestn : in STD_LOGIC;
    ended_reading_cnvtn_data : in STD_LOGIC;
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ended_reading_mltn_data : in STD_LOGIC;
    matrix_a_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    matrix_b_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rst_module : out STD_LOGIC;
    cvltn_or_mltpn : out STD_LOGIC;
    vir_wr_enable : out STD_LOGIC;
    ou_wr_enable : out STD_LOGIC;
    start_cnvtn_writing_fsm : out STD_LOGIC;
    start_mltpn_writing_fsm : out STD_LOGIC;
    in_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wt_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vr_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_address : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware_accelerator_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hardware_accelerator_controller_0_0 : entity is "hardware_accelerator_controller_0_0,controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hardware_accelerator_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hardware_accelerator_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hardware_accelerator_controller_0_0 : entity is "controller,Vivado 2018.3";
end hardware_accelerator_controller_0_0;

architecture STRUCTURE of hardware_accelerator_controller_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_accelerator_S_AXI_ACLK_0, INSERT_VIP 0";
begin
inst: entity work.hardware_accelerator_controller_0_0_controller
     port map (
      Q(3 downto 0) => wt_mem_rd_addr(3 downto 0),
      arestn => arestn,
      clk => clk,
      cvltn_or_mltpn => cvltn_or_mltpn,
      ended_reading_cnvtn_data => ended_reading_cnvtn_data,
      ended_reading_mltn_data => ended_reading_mltn_data,
      image_dimension(7 downto 0) => image_dimension(7 downto 0),
      in_mem_rd_addr(7 downto 0) => in_mem_rd_addr(7 downto 0),
      kernel_dimension(7 downto 0) => kernel_dimension(7 downto 0),
      matrix_a_dimension(7 downto 0) => matrix_a_dimension(7 downto 0),
      matrix_b_dimension(7 downto 0) => matrix_b_dimension(7 downto 0),
      ou_mem_rd_addr(7 downto 0) => ou_mem_rd_addr(7 downto 0),
      ou_mem_wr_addr(7 downto 0) => ou_mem_wr_addr(7 downto 0),
      ou_wr_enable => ou_wr_enable,
      rd_address(4 downto 0) => rd_address(4 downto 0),
      rst_module => rst_module,
      start_cnvtn_writing_fsm => start_cnvtn_writing_fsm,
      start_mltpn_writing_fsm => start_mltpn_writing_fsm,
      vir_wr_enable => vir_wr_enable,
      vr_mem_wr_addr(7 downto 0) => vr_mem_wr_addr(7 downto 0),
      wt_mem_rd_addr(3 downto 0) => wt_mem_rd_addr(7 downto 4)
    );
end STRUCTURE;
