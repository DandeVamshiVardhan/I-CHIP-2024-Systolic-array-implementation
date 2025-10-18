-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:32:15 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {E:/vivado
--               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_axi_master_0_1/hardware_accelerator_axi_master_0_1_sim_netlist.vhdl}
-- Design      : hardware_accelerator_axi_master_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_accelerator_axi_master_0_1_axi_master is
  port (
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RREADY : out STD_LOGIC;
    output_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    weight_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    input_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ended_multiplication : out STD_LOGIC;
    ended_convolution : out STD_LOGIC;
    M_AXI_ARVALID : out STD_LOGIC;
    ended_reading_cnvtn_data : out STD_LOGIC;
    ended_reading_mltn_data : out STD_LOGIC;
    capture_wi_data : out STD_LOGIC;
    capture_in_data : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    start_multiplication : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_ACLK : in STD_LOGIC;
    output_memory_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    start_mltpn_writing_fsm : in STD_LOGIC;
    matrix_a_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_convolution : in STD_LOGIC;
    matrix_b_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    matrix_a_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    image_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kernel_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARREADY : in STD_LOGIC;
    matrix_b_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_cnvtn_writing_fsm : in STD_LOGIC;
    M_AXI_BVALID : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hardware_accelerator_axi_master_0_1_axi_master : entity is "axi_master";
end hardware_accelerator_axi_master_0_1_axi_master;

architecture STRUCTURE of hardware_accelerator_axi_master_0_1_axi_master is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[10]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[11]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[12]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[13]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[8]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[9]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[10]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[11]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[12]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[13]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[8]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[9]\ : STD_LOGIC;
  signal \FSM_onehot_w_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[5]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[6]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state[7]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[4]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[5]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[6]\ : STD_LOGIC;
  signal \FSM_onehot_w_state_reg_n_0_[7]\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arvalid\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC;
  signal \^m_axi_rready\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  signal axi_araddr : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__1_n_7\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry__2_n_7\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \axi_araddr0_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal \axi_araddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_5_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_6_n_0\ : STD_LOGIC;
  signal \axi_araddr[31]_i_7_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_arvalid0 : STD_LOGIC;
  signal axi_arvalid_i_2_n_0 : STD_LOGIC;
  signal axi_awaddr0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \axi_awaddr0_carry__0_n_0\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_1\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_2\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_3\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_4\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_5\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_6\ : STD_LOGIC;
  signal \axi_awaddr0_carry__0_n_7\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_0\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_1\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_2\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_3\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_4\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_5\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_6\ : STD_LOGIC;
  signal \axi_awaddr0_carry__1_n_7\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_2\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_3\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_4\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_5\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_6\ : STD_LOGIC;
  signal \axi_awaddr0_carry__2_n_7\ : STD_LOGIC;
  signal axi_awaddr0_carry_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr0_carry_n_0 : STD_LOGIC;
  signal axi_awaddr0_carry_n_1 : STD_LOGIC;
  signal axi_awaddr0_carry_n_2 : STD_LOGIC;
  signal axi_awaddr0_carry_n_3 : STD_LOGIC;
  signal axi_awaddr0_carry_n_4 : STD_LOGIC;
  signal axi_awaddr0_carry_n_5 : STD_LOGIC;
  signal axi_awaddr0_carry_n_6 : STD_LOGIC;
  signal axi_awaddr0_carry_n_7 : STD_LOGIC;
  signal \axi_awaddr[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[31]_i_2_n_0\ : STD_LOGIC;
  signal axi_awvalid_i_1_n_0 : STD_LOGIC;
  signal axi_bready0 : STD_LOGIC;
  signal axi_rready_i_1_n_0 : STD_LOGIC;
  signal \axi_wdata[31]_i_1_n_0\ : STD_LOGIC;
  signal axi_wvalid_i_1_n_0 : STD_LOGIC;
  signal cnvtn_w_cmpltd1 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \cnvtn_w_cmpltd__0\ : STD_LOGIC;
  signal data4 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal ended_convolution_INST_0_i_3_n_0 : STD_LOGIC;
  signal ended_convolution_INST_0_i_4_n_0 : STD_LOGIC;
  signal ended_convolution_INST_0_i_5_n_0 : STD_LOGIC;
  signal ended_convolution_INST_0_i_6_n_0 : STD_LOGIC;
  signal ended_multiplication_INST_0_i_2_n_0 : STD_LOGIC;
  signal ended_multiplication_INST_0_i_3_n_0 : STD_LOGIC;
  signal ended_reading_cnvtn_data_INST_0_i_3_n_0 : STD_LOGIC;
  signal ended_reading_cnvtn_data_INST_0_i_4_n_0 : STD_LOGIC;
  signal ended_reading_mltn_data_INST_0_i_1_n_0 : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \in_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_10_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_11_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_12_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_13_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_14_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_15_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_16_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_17_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_4_n_0\ : STD_LOGIC;
  signal \in_row[3]_i_5_n_0\ : STD_LOGIC;
  signal inc_in_column : STD_LOGIC;
  signal inc_in_row : STD_LOGIC;
  signal inc_o_column : STD_LOGIC;
  signal inc_o_row : STD_LOGIC;
  signal inc_wi_column : STD_LOGIC;
  signal inc_wi_row : STD_LOGIC;
  signal \initialise_cnvtn_w_addr__0\ : STD_LOGIC;
  signal initialise_image_addr : STD_LOGIC;
  signal initialise_matrix_a_addr : STD_LOGIC;
  signal \^input_memory_address\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \mltpn_w_cmpltd__0\ : STD_LOGIC;
  signal \o_clm_eq_cvltn__6\ : STD_LOGIC;
  signal \o_clm_eq_mltpn__6\ : STD_LOGIC;
  signal \o_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_column[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_7_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_8_n_0\ : STD_LOGIC;
  signal \^output_memory_address\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^weight_memory_address\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \wi_clm_eq_b__6\ : STD_LOGIC;
  signal \wi_clm_eq_kernel__6\ : STD_LOGIC;
  signal \wi_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \wi_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \wi_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \wi_row[3]_i_7_n_0\ : STD_LOGIC;
  signal \wi_row[3]_i_8_n_0\ : STD_LOGIC;
  signal \wi_row_eq_b__6\ : STD_LOGIC;
  signal \wi_row_eq_kernel__6\ : STD_LOGIC;
  signal \NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_axi_awaddr0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \NLW_axi_awaddr0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[10]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_state[11]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_state[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state[13]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_state[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_state[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_state[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[9]_i_1\ : label is "soft_lutpair16";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[10]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[11]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[12]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[13]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[4]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[5]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[6]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[7]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[8]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[9]\ : label is "iSTATE:000000000001000,iSTATE0:000000000010000,iSTATE1:010000000000000,iSTATE2:000000000000100,iSTATE3:000100000000000,iSTATE4:001000000000000,iSTATE5:000010000000000,iSTATE6:000000000000010,iSTATE7:000000000000001,iSTATE8:000001000000000,iSTATE9:000000010000000,iSTATE10:000000001000000,iSTATE11:000000100000000,iSTATE12:1111,iSTATE13:100000000000000,iSTATE14:000000000100000";
  attribute SOFT_HLUTNM of \FSM_onehot_w_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_onehot_w_state[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_onehot_w_state[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \FSM_onehot_w_state[6]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_w_state[7]_i_1\ : label is "soft_lutpair6";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[0]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[1]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[2]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[3]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[4]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[5]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[6]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute FSM_ENCODED_STATES of \FSM_onehot_w_state_reg[7]\ : label is "iSTATE:00000001,iSTATE0:00000010,iSTATE1:01000000,iSTATE2:10000000,iSTATE3:00000100,iSTATE4:00001000,iSTATE5:00010000,iSTATE6:00100000";
  attribute SOFT_HLUTNM of capture_in_data_INST_0 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of capture_wi_data_INST_0 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ended_convolution_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of ended_convolution_INST_0_i_3 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of ended_multiplication_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of ended_multiplication_INST_0_i_2 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ended_multiplication_INST_0_i_3 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of ended_reading_cnvtn_data_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of ended_reading_mltn_data_INST_0 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \in_column[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \in_column[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \in_column[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \in_column[3]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \in_row[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \in_row[1]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \in_row[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \in_row[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \o_column[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_column[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_column[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_column[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \o_column[3]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_row[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_row[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \o_row[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_row[3]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \o_row[3]_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wi_column[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wi_column[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \wi_column[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wi_column[3]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wi_row[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wi_row[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \wi_row[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wi_row[3]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \wi_row[3]_i_7\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wi_row[3]_i_8\ : label is "soft_lutpair3";
begin
  M_AXI_ARADDR(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  M_AXI_ARVALID <= \^m_axi_arvalid\;
  M_AXI_AWADDR(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_AWVALID <= \^m_axi_awvalid\;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_RREADY <= \^m_axi_rready\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
  input_memory_address(7 downto 0) <= \^input_memory_address\(7 downto 0);
  output_memory_address(7 downto 0) <= \^output_memory_address\(7 downto 0);
  weight_memory_address(7 downto 0) <= \^weight_memory_address\(7 downto 0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_convolution,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[9]\,
      I1 => M_AXI_RVALID,
      O => \FSM_onehot_state[10]_i_1_n_0\
    );
\FSM_onehot_state[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[13]\,
      I1 => ended_reading_mltn_data_INST_0_i_1_n_0,
      I2 => \in_row[3]_i_4_n_0\,
      O => \FSM_onehot_state[11]_i_1_n_0\
    );
\FSM_onehot_state[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => \FSM_onehot_state_reg_n_0_[11]\,
      O => \FSM_onehot_state[12]_i_1_n_0\
    );
\FSM_onehot_state[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[12]\,
      I1 => M_AXI_RVALID,
      O => \FSM_onehot_state[13]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => p_1_in(1),
      I2 => p_1_in(0),
      I3 => start_convolution,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \FSM_onehot_state_reg_n_0_[2]\,
      I2 => \FSM_onehot_state_reg_n_0_[1]\,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => M_AXI_RVALID,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF70"
    )
        port map (
      I0 => \wi_row_eq_kernel__6\,
      I1 => \wi_clm_eq_kernel__6\,
      I2 => \FSM_onehot_state_reg_n_0_[6]\,
      I3 => \in_row[3]_i_5_n_0\,
      O => \FSM_onehot_state[4]_i_1_n_0\
    );
\FSM_onehot_state[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \FSM_onehot_state_reg_n_0_[5]\,
      I2 => \FSM_onehot_state_reg_n_0_[4]\,
      O => \FSM_onehot_state[5]_i_1_n_0\
    );
\FSM_onehot_state[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => M_AXI_RVALID,
      O => \FSM_onehot_state[6]_i_1_n_0\
    );
\FSM_onehot_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80FF8080"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \wi_clm_eq_kernel__6\,
      I2 => \wi_row_eq_kernel__6\,
      I3 => start_multiplication,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[7]_i_1_n_0\
    );
\FSM_onehot_state[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2A2A2A"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \p_0_in__0_0\(1),
      I2 => \p_0_in__0_0\(0),
      I3 => start_multiplication,
      I4 => \FSM_onehot_state_reg_n_0_[7]\,
      O => \FSM_onehot_state[8]_i_1_n_0\
    );
\FSM_onehot_state[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => M_AXI_RVALID,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      O => \FSM_onehot_state[9]_i_1_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[10]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[10]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[11]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[11]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[12]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[12]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[13]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[13]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[1]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[2]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[4]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[4]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[5]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[5]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[6]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[6]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[7]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[7]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[8]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[8]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_state[9]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[9]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[0]\,
      I1 => start_cnvtn_writing_fsm,
      O => \FSM_onehot_w_state[0]_i_1_n_0\
    );
\FSM_onehot_w_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[7]\,
      I1 => start_cnvtn_writing_fsm,
      I2 => \FSM_onehot_w_state_reg_n_0_[0]\,
      O => \FSM_onehot_w_state[1]_i_1_n_0\
    );
\FSM_onehot_w_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => \cnvtn_w_cmpltd__0\,
      I1 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I2 => start_mltpn_writing_fsm,
      I3 => \FSM_onehot_w_state_reg_n_0_[2]\,
      O => \FSM_onehot_w_state[2]_i_1_n_0\
    );
\FSM_onehot_w_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I1 => start_mltpn_writing_fsm,
      I2 => \FSM_onehot_w_state_reg_n_0_[5]\,
      I3 => \mltpn_w_cmpltd__0\,
      I4 => \FSM_onehot_w_state_reg_n_0_[3]\,
      O => \FSM_onehot_w_state[3]_i_1_n_0\
    );
\FSM_onehot_w_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F22"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[3]\,
      I1 => \mltpn_w_cmpltd__0\,
      I2 => M_AXI_WREADY,
      I3 => \FSM_onehot_w_state_reg_n_0_[4]\,
      O => \FSM_onehot_w_state[4]_i_1_n_0\
    );
\FSM_onehot_w_state[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[4]\,
      I1 => M_AXI_WREADY,
      O => \FSM_onehot_w_state[5]_i_1_n_0\
    );
\FSM_onehot_w_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \cnvtn_w_cmpltd__0\,
      I1 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I2 => M_AXI_WREADY,
      I3 => \FSM_onehot_w_state_reg_n_0_[6]\,
      O => \FSM_onehot_w_state[6]_i_1_n_0\
    );
\FSM_onehot_w_state[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[6]\,
      I1 => M_AXI_WREADY,
      O => \FSM_onehot_w_state[7]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[0]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[0]\,
      S => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[1]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[1]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[2]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[2]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[3]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[3]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[4]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[4]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[5]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[5]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[6]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[6]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\FSM_onehot_w_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => \FSM_onehot_w_state[7]_i_1_n_0\,
      Q => \FSM_onehot_w_state_reg_n_0_[7]\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr0_inferred__0/i__carry\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \axi_araddr0_inferred__0/i__carry_n_0\,
      CO(6) => \axi_araddr0_inferred__0/i__carry_n_1\,
      CO(5) => \axi_araddr0_inferred__0/i__carry_n_2\,
      CO(4) => \axi_araddr0_inferred__0/i__carry_n_3\,
      CO(3) => \axi_araddr0_inferred__0/i__carry_n_4\,
      CO(2) => \axi_araddr0_inferred__0/i__carry_n_5\,
      CO(1) => \axi_araddr0_inferred__0/i__carry_n_6\,
      CO(0) => \axi_araddr0_inferred__0/i__carry_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \^m_axi_araddr\(2),
      DI(0) => '0',
      O(7 downto 0) => data4(8 downto 1),
      S(7 downto 2) => \^m_axi_araddr\(8 downto 3),
      S(1) => \i__carry_i_1_n_0\,
      S(0) => \^m_axi_araddr\(1)
    );
\axi_araddr0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr0_inferred__0/i__carry_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr0_inferred__0/i__carry__0_n_0\,
      CO(6) => \axi_araddr0_inferred__0/i__carry__0_n_1\,
      CO(5) => \axi_araddr0_inferred__0/i__carry__0_n_2\,
      CO(4) => \axi_araddr0_inferred__0/i__carry__0_n_3\,
      CO(3) => \axi_araddr0_inferred__0/i__carry__0_n_4\,
      CO(2) => \axi_araddr0_inferred__0/i__carry__0_n_5\,
      CO(1) => \axi_araddr0_inferred__0/i__carry__0_n_6\,
      CO(0) => \axi_araddr0_inferred__0/i__carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data4(16 downto 9),
      S(7 downto 0) => \^m_axi_araddr\(16 downto 9)
    );
\axi_araddr0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr0_inferred__0/i__carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_araddr0_inferred__0/i__carry__1_n_0\,
      CO(6) => \axi_araddr0_inferred__0/i__carry__1_n_1\,
      CO(5) => \axi_araddr0_inferred__0/i__carry__1_n_2\,
      CO(4) => \axi_araddr0_inferred__0/i__carry__1_n_3\,
      CO(3) => \axi_araddr0_inferred__0/i__carry__1_n_4\,
      CO(2) => \axi_araddr0_inferred__0/i__carry__1_n_5\,
      CO(1) => \axi_araddr0_inferred__0/i__carry__1_n_6\,
      CO(0) => \axi_araddr0_inferred__0/i__carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => data4(24 downto 17),
      S(7 downto 0) => \^m_axi_araddr\(24 downto 17)
    );
\axi_araddr0_inferred__0/i__carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_araddr0_inferred__0/i__carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_axi_araddr0_inferred__0/i__carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \axi_araddr0_inferred__0/i__carry__2_n_2\,
      CO(4) => \axi_araddr0_inferred__0/i__carry__2_n_3\,
      CO(3) => \axi_araddr0_inferred__0/i__carry__2_n_4\,
      CO(2) => \axi_araddr0_inferred__0/i__carry__2_n_5\,
      CO(1) => \axi_araddr0_inferred__0/i__carry__2_n_6\,
      CO(0) => \axi_araddr0_inferred__0/i__carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_axi_araddr0_inferred__0/i__carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => data4(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => \^m_axi_araddr\(31 downto 25)
    );
\axi_araddr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[0]_i_2_n_0\,
      I1 => \^m_axi_araddr\(0),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(0),
      O => \axi_araddr[0]_i_1_n_0\
    );
\axi_araddr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(0),
      I2 => image_address(0),
      I3 => kernel_address(0),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[0]_i_2_n_0\
    );
\axi_araddr[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[10]_i_2_n_0\,
      I1 => data4(10),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(10),
      O => \axi_araddr[10]_i_1_n_0\
    );
\axi_araddr[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(10),
      I2 => image_address(10),
      I3 => kernel_address(10),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[10]_i_2_n_0\
    );
\axi_araddr[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[11]_i_2_n_0\,
      I1 => data4(11),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(11),
      O => \axi_araddr[11]_i_1_n_0\
    );
\axi_araddr[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(11),
      I2 => image_address(11),
      I3 => kernel_address(11),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[11]_i_2_n_0\
    );
\axi_araddr[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[12]_i_2_n_0\,
      I1 => data4(12),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(12),
      O => \axi_araddr[12]_i_1_n_0\
    );
\axi_araddr[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(12),
      I2 => image_address(12),
      I3 => kernel_address(12),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[12]_i_2_n_0\
    );
\axi_araddr[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[13]_i_2_n_0\,
      I1 => data4(13),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(13),
      O => \axi_araddr[13]_i_1_n_0\
    );
\axi_araddr[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(13),
      I2 => image_address(13),
      I3 => kernel_address(13),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[13]_i_2_n_0\
    );
\axi_araddr[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[14]_i_2_n_0\,
      I1 => data4(14),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(14),
      O => \axi_araddr[14]_i_1_n_0\
    );
\axi_araddr[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(14),
      I2 => image_address(14),
      I3 => kernel_address(14),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[14]_i_2_n_0\
    );
\axi_araddr[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[15]_i_2_n_0\,
      I1 => data4(15),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(15),
      O => \axi_araddr[15]_i_1_n_0\
    );
\axi_araddr[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(15),
      I2 => image_address(15),
      I3 => kernel_address(15),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[15]_i_2_n_0\
    );
\axi_araddr[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[16]_i_2_n_0\,
      I1 => data4(16),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(16),
      O => \axi_araddr[16]_i_1_n_0\
    );
\axi_araddr[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(16),
      I2 => image_address(16),
      I3 => kernel_address(16),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[16]_i_2_n_0\
    );
\axi_araddr[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[17]_i_2_n_0\,
      I1 => data4(17),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(17),
      O => \axi_araddr[17]_i_1_n_0\
    );
\axi_araddr[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(17),
      I2 => image_address(17),
      I3 => kernel_address(17),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[17]_i_2_n_0\
    );
\axi_araddr[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[18]_i_2_n_0\,
      I1 => data4(18),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(18),
      O => \axi_araddr[18]_i_1_n_0\
    );
\axi_araddr[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(18),
      I2 => image_address(18),
      I3 => kernel_address(18),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[18]_i_2_n_0\
    );
\axi_araddr[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[19]_i_2_n_0\,
      I1 => data4(19),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(19),
      O => \axi_araddr[19]_i_1_n_0\
    );
\axi_araddr[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(19),
      I2 => image_address(19),
      I3 => kernel_address(19),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[19]_i_2_n_0\
    );
\axi_araddr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[1]_i_2_n_0\,
      I1 => data4(1),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(1),
      O => \axi_araddr[1]_i_1_n_0\
    );
\axi_araddr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(1),
      I2 => image_address(1),
      I3 => kernel_address(1),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[1]_i_2_n_0\
    );
\axi_araddr[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[20]_i_2_n_0\,
      I1 => data4(20),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(20),
      O => \axi_araddr[20]_i_1_n_0\
    );
\axi_araddr[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(20),
      I2 => image_address(20),
      I3 => kernel_address(20),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[20]_i_2_n_0\
    );
\axi_araddr[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[21]_i_2_n_0\,
      I1 => data4(21),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(21),
      O => \axi_araddr[21]_i_1_n_0\
    );
\axi_araddr[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(21),
      I2 => image_address(21),
      I3 => kernel_address(21),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[21]_i_2_n_0\
    );
\axi_araddr[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[22]_i_2_n_0\,
      I1 => data4(22),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(22),
      O => \axi_araddr[22]_i_1_n_0\
    );
\axi_araddr[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(22),
      I2 => image_address(22),
      I3 => kernel_address(22),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[22]_i_2_n_0\
    );
\axi_araddr[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[23]_i_2_n_0\,
      I1 => data4(23),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(23),
      O => \axi_araddr[23]_i_1_n_0\
    );
\axi_araddr[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(23),
      I2 => image_address(23),
      I3 => kernel_address(23),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[23]_i_2_n_0\
    );
\axi_araddr[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[24]_i_2_n_0\,
      I1 => data4(24),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(24),
      O => \axi_araddr[24]_i_1_n_0\
    );
\axi_araddr[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(24),
      I2 => image_address(24),
      I3 => kernel_address(24),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[24]_i_2_n_0\
    );
\axi_araddr[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[25]_i_2_n_0\,
      I1 => data4(25),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(25),
      O => \axi_araddr[25]_i_1_n_0\
    );
\axi_araddr[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(25),
      I2 => image_address(25),
      I3 => kernel_address(25),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[25]_i_2_n_0\
    );
\axi_araddr[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[26]_i_2_n_0\,
      I1 => data4(26),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(26),
      O => \axi_araddr[26]_i_1_n_0\
    );
\axi_araddr[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(26),
      I2 => image_address(26),
      I3 => kernel_address(26),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[26]_i_2_n_0\
    );
\axi_araddr[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[27]_i_2_n_0\,
      I1 => data4(27),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(27),
      O => \axi_araddr[27]_i_1_n_0\
    );
\axi_araddr[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(27),
      I2 => image_address(27),
      I3 => kernel_address(27),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[27]_i_2_n_0\
    );
\axi_araddr[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[28]_i_2_n_0\,
      I1 => data4(28),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(28),
      O => \axi_araddr[28]_i_1_n_0\
    );
\axi_araddr[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(28),
      I2 => image_address(28),
      I3 => kernel_address(28),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[28]_i_2_n_0\
    );
\axi_araddr[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[29]_i_2_n_0\,
      I1 => data4(29),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(29),
      O => \axi_araddr[29]_i_1_n_0\
    );
\axi_araddr[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(29),
      I2 => image_address(29),
      I3 => kernel_address(29),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[29]_i_2_n_0\
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[2]_i_2_n_0\,
      I1 => data4(2),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(2),
      I2 => image_address(2),
      I3 => kernel_address(2),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[2]_i_2_n_0\
    );
\axi_araddr[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[30]_i_2_n_0\,
      I1 => data4(30),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(30),
      O => \axi_araddr[30]_i_1_n_0\
    );
\axi_araddr[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(30),
      I2 => image_address(30),
      I3 => kernel_address(30),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[30]_i_2_n_0\
    );
\axi_araddr[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \^m_axi_arvalid\,
      I2 => initialise_image_addr,
      I3 => initialise_matrix_a_addr,
      I4 => \in_row[3]_i_5_n_0\,
      I5 => \in_row[3]_i_4_n_0\,
      O => axi_araddr
    );
\axi_araddr[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[31]_i_5_n_0\,
      I1 => data4(31),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(31),
      O => \axi_araddr[31]_i_2_n_0\
    );
\axi_araddr[31]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => start_convolution,
      O => initialise_image_addr
    );
\axi_araddr[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => start_multiplication,
      O => initialise_matrix_a_addr
    );
\axi_araddr[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(31),
      I2 => image_address(31),
      I3 => kernel_address(31),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[31]_i_5_n_0\
    );
\axi_araddr[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFF8F8F8"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[7]\,
      I1 => start_multiplication,
      I2 => \in_row[3]_i_5_n_0\,
      I3 => start_convolution,
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      I5 => \in_row[3]_i_4_n_0\,
      O => \axi_araddr[31]_i_6_n_0\
    );
\axi_araddr[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002A002A002A"
    )
        port map (
      I0 => \in_row[3]_i_4_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[7]\,
      I2 => start_multiplication,
      I3 => \in_row[3]_i_5_n_0\,
      I4 => start_convolution,
      I5 => \FSM_onehot_state_reg_n_0_[0]\,
      O => \axi_araddr[31]_i_7_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[3]_i_2_n_0\,
      I1 => data4(3),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(3),
      I2 => image_address(3),
      I3 => kernel_address(3),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[4]_i_2_n_0\,
      I1 => data4(4),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(4),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(4),
      I2 => image_address(4),
      I3 => kernel_address(4),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[5]_i_2_n_0\,
      I1 => data4(5),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(5),
      O => \axi_araddr[5]_i_1_n_0\
    );
\axi_araddr[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(5),
      I2 => image_address(5),
      I3 => kernel_address(5),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[5]_i_2_n_0\
    );
\axi_araddr[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[6]_i_2_n_0\,
      I1 => data4(6),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(6),
      O => \axi_araddr[6]_i_1_n_0\
    );
\axi_araddr[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(6),
      I2 => image_address(6),
      I3 => kernel_address(6),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[6]_i_2_n_0\
    );
\axi_araddr[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[7]_i_2_n_0\,
      I1 => data4(7),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(7),
      O => \axi_araddr[7]_i_1_n_0\
    );
\axi_araddr[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(7),
      I2 => image_address(7),
      I3 => kernel_address(7),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[7]_i_2_n_0\
    );
\axi_araddr[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[8]_i_2_n_0\,
      I1 => data4(8),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(8),
      O => \axi_araddr[8]_i_1_n_0\
    );
\axi_araddr[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(8),
      I2 => image_address(8),
      I3 => kernel_address(8),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[8]_i_2_n_0\
    );
\axi_araddr[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAEAE"
    )
        port map (
      I0 => \axi_araddr[9]_i_2_n_0\,
      I1 => data4(9),
      I2 => \axi_araddr[31]_i_6_n_0\,
      I3 => \axi_araddr[31]_i_7_n_0\,
      I4 => matrix_b_address(9),
      O => \axi_araddr[9]_i_1_n_0\
    );
\axi_araddr[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0FF00F0F08888"
    )
        port map (
      I0 => initialise_matrix_a_addr,
      I1 => matrix_a_address(9),
      I2 => image_address(9),
      I3 => kernel_address(9),
      I4 => initialise_image_addr,
      I5 => \in_row[3]_i_5_n_0\,
      O => \axi_araddr[9]_i_2_n_0\
    );
\axi_araddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[0]_i_1_n_0\,
      Q => \^m_axi_araddr\(0),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[10]_i_1_n_0\,
      Q => \^m_axi_araddr\(10),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[11]_i_1_n_0\,
      Q => \^m_axi_araddr\(11),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[12]_i_1_n_0\,
      Q => \^m_axi_araddr\(12),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[13]_i_1_n_0\,
      Q => \^m_axi_araddr\(13),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[14]_i_1_n_0\,
      Q => \^m_axi_araddr\(14),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[15]_i_1_n_0\,
      Q => \^m_axi_araddr\(15),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[16]_i_1_n_0\,
      Q => \^m_axi_araddr\(16),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[17]_i_1_n_0\,
      Q => \^m_axi_araddr\(17),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[18]_i_1_n_0\,
      Q => \^m_axi_araddr\(18),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[19]_i_1_n_0\,
      Q => \^m_axi_araddr\(19),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[1]_i_1_n_0\,
      Q => \^m_axi_araddr\(1),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[20]_i_1_n_0\,
      Q => \^m_axi_araddr\(20),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[21]_i_1_n_0\,
      Q => \^m_axi_araddr\(21),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[22]_i_1_n_0\,
      Q => \^m_axi_araddr\(22),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[23]_i_1_n_0\,
      Q => \^m_axi_araddr\(23),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[24]_i_1_n_0\,
      Q => \^m_axi_araddr\(24),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[25]_i_1_n_0\,
      Q => \^m_axi_araddr\(25),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[26]_i_1_n_0\,
      Q => \^m_axi_araddr\(26),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[27]_i_1_n_0\,
      Q => \^m_axi_araddr\(27),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[28]_i_1_n_0\,
      Q => \^m_axi_araddr\(28),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[29]_i_1_n_0\,
      Q => \^m_axi_araddr\(29),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[2]_i_1_n_0\,
      Q => \^m_axi_araddr\(2),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[30]_i_1_n_0\,
      Q => \^m_axi_araddr\(30),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[31]_i_2_n_0\,
      Q => \^m_axi_araddr\(31),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[3]_i_1_n_0\,
      Q => \^m_axi_araddr\(3),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[4]_i_1_n_0\,
      Q => \^m_axi_araddr\(4),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[5]_i_1_n_0\,
      Q => \^m_axi_araddr\(5),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[6]_i_1_n_0\,
      Q => \^m_axi_araddr\(6),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[7]_i_1_n_0\,
      Q => \^m_axi_araddr\(7),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[8]_i_1_n_0\,
      Q => \^m_axi_araddr\(8),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_araddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => axi_araddr,
      D => \axi_araddr[9]_i_1_n_0\,
      Q => \^m_axi_araddr\(9),
      R => \axi_awaddr[31]_i_1_n_0\
    );
axi_arvalid_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \axi_araddr[31]_i_6_n_0\,
      I1 => M_AXI_ARESETN,
      O => axi_arvalid0
    );
axi_arvalid_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => M_AXI_ARREADY,
      I1 => \^m_axi_arvalid\,
      I2 => \FSM_onehot_state_reg_n_0_[8]\,
      I3 => \FSM_onehot_state_reg_n_0_[11]\,
      I4 => \FSM_onehot_state_reg_n_0_[1]\,
      I5 => \FSM_onehot_state_reg_n_0_[4]\,
      O => axi_arvalid_i_2_n_0
    );
axi_arvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_arvalid_i_2_n_0,
      Q => \^m_axi_arvalid\,
      R => axi_arvalid0
    );
axi_awaddr0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => axi_awaddr0_carry_n_0,
      CO(6) => axi_awaddr0_carry_n_1,
      CO(5) => axi_awaddr0_carry_n_2,
      CO(4) => axi_awaddr0_carry_n_3,
      CO(3) => axi_awaddr0_carry_n_4,
      CO(2) => axi_awaddr0_carry_n_5,
      CO(1) => axi_awaddr0_carry_n_6,
      CO(0) => axi_awaddr0_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => \^m_axi_awaddr\(2),
      DI(0) => '0',
      O(7 downto 0) => axi_awaddr0(8 downto 1),
      S(7 downto 2) => \^m_axi_awaddr\(8 downto 3),
      S(1) => axi_awaddr0_carry_i_1_n_0,
      S(0) => \^m_axi_awaddr\(1)
    );
\axi_awaddr0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => axi_awaddr0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \axi_awaddr0_carry__0_n_0\,
      CO(6) => \axi_awaddr0_carry__0_n_1\,
      CO(5) => \axi_awaddr0_carry__0_n_2\,
      CO(4) => \axi_awaddr0_carry__0_n_3\,
      CO(3) => \axi_awaddr0_carry__0_n_4\,
      CO(2) => \axi_awaddr0_carry__0_n_5\,
      CO(1) => \axi_awaddr0_carry__0_n_6\,
      CO(0) => \axi_awaddr0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => axi_awaddr0(16 downto 9),
      S(7 downto 0) => \^m_axi_awaddr\(16 downto 9)
    );
\axi_awaddr0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_awaddr0_carry__1_n_0\,
      CO(6) => \axi_awaddr0_carry__1_n_1\,
      CO(5) => \axi_awaddr0_carry__1_n_2\,
      CO(4) => \axi_awaddr0_carry__1_n_3\,
      CO(3) => \axi_awaddr0_carry__1_n_4\,
      CO(2) => \axi_awaddr0_carry__1_n_5\,
      CO(1) => \axi_awaddr0_carry__1_n_6\,
      CO(0) => \axi_awaddr0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => axi_awaddr0(24 downto 17),
      S(7 downto 0) => \^m_axi_awaddr\(24 downto 17)
    );
\axi_awaddr0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_awaddr0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7 downto 6) => \NLW_axi_awaddr0_carry__2_CO_UNCONNECTED\(7 downto 6),
      CO(5) => \axi_awaddr0_carry__2_n_2\,
      CO(4) => \axi_awaddr0_carry__2_n_3\,
      CO(3) => \axi_awaddr0_carry__2_n_4\,
      CO(2) => \axi_awaddr0_carry__2_n_5\,
      CO(1) => \axi_awaddr0_carry__2_n_6\,
      CO(0) => \axi_awaddr0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \NLW_axi_awaddr0_carry__2_O_UNCONNECTED\(7),
      O(6 downto 0) => axi_awaddr0(31 downto 25),
      S(7) => '0',
      S(6 downto 0) => \^m_axi_awaddr\(31 downto 25)
    );
axi_awaddr0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_awaddr\(2),
      O => axi_awaddr0_carry_i_1_n_0
    );
\axi_awaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => \^m_axi_awaddr\(0),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(0),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(0),
      O => p_2_in(0)
    );
\axi_awaddr[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(10),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(10),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(10),
      O => p_2_in(10)
    );
\axi_awaddr[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(11),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(11),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(11),
      O => p_2_in(11)
    );
\axi_awaddr[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(12),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(12),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(12),
      O => p_2_in(12)
    );
\axi_awaddr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(13),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(13),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(13),
      O => p_2_in(13)
    );
\axi_awaddr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(14),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(14),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(14),
      O => p_2_in(14)
    );
\axi_awaddr[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(15),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(15),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(15),
      O => p_2_in(15)
    );
\axi_awaddr[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(16),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(16),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(16),
      O => p_2_in(16)
    );
\axi_awaddr[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(17),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(17),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(17),
      O => p_2_in(17)
    );
\axi_awaddr[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(18),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(18),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(18),
      O => p_2_in(18)
    );
\axi_awaddr[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(19),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(19),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(19),
      O => p_2_in(19)
    );
\axi_awaddr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(1),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(1),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(1),
      O => p_2_in(1)
    );
\axi_awaddr[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(20),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(20),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(20),
      O => p_2_in(20)
    );
\axi_awaddr[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(21),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(21),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(21),
      O => p_2_in(21)
    );
\axi_awaddr[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(22),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(22),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(22),
      O => p_2_in(22)
    );
\axi_awaddr[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(23),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(23),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(23),
      O => p_2_in(23)
    );
\axi_awaddr[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(24),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(24),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(24),
      O => p_2_in(24)
    );
\axi_awaddr[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(25),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(25),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(25),
      O => p_2_in(25)
    );
\axi_awaddr[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(26),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(26),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(26),
      O => p_2_in(26)
    );
\axi_awaddr[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(27),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(27),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(27),
      O => p_2_in(27)
    );
\axi_awaddr[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(28),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(28),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(28),
      O => p_2_in(28)
    );
\axi_awaddr[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(29),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(29),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(29),
      O => p_2_in(29)
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(2),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(2),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(2),
      O => p_2_in(2)
    );
\axi_awaddr[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(30),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(30),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(30),
      O => p_2_in(30)
    );
\axi_awaddr[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => M_AXI_ARESETN,
      O => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^m_axi_awvalid\,
      I1 => M_AXI_AWREADY,
      I2 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I3 => start_mltpn_writing_fsm,
      I4 => \FSM_onehot_w_state_reg_n_0_[0]\,
      I5 => start_cnvtn_writing_fsm,
      O => \axi_awaddr[31]_i_2_n_0\
    );
\axi_awaddr[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(31),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(31),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(31),
      O => p_2_in(31)
    );
\axi_awaddr[31]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[0]\,
      I1 => start_cnvtn_writing_fsm,
      O => \initialise_cnvtn_w_addr__0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(3),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(3),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(3),
      O => p_2_in(3)
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(4),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(4),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(4),
      O => p_2_in(4)
    );
\axi_awaddr[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(5),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(5),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(5),
      O => p_2_in(5)
    );
\axi_awaddr[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(6),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(6),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(6),
      O => p_2_in(6)
    );
\axi_awaddr[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(7),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(7),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(7),
      O => p_2_in(7)
    );
\axi_awaddr[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(8),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(8),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(8),
      O => p_2_in(8)
    );
\axi_awaddr[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEA2A0000EA2A"
    )
        port map (
      I0 => axi_awaddr0(9),
      I1 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I2 => start_mltpn_writing_fsm,
      I3 => matrix_a_address(9),
      I4 => \initialise_cnvtn_w_addr__0\,
      I5 => image_address(9),
      O => p_2_in(9)
    );
\axi_awaddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(0),
      Q => \^m_axi_awaddr\(0),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(10),
      Q => \^m_axi_awaddr\(10),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(11),
      Q => \^m_axi_awaddr\(11),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(12),
      Q => \^m_axi_awaddr\(12),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(13),
      Q => \^m_axi_awaddr\(13),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(14),
      Q => \^m_axi_awaddr\(14),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(15),
      Q => \^m_axi_awaddr\(15),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(16),
      Q => \^m_axi_awaddr\(16),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(17),
      Q => \^m_axi_awaddr\(17),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(18),
      Q => \^m_axi_awaddr\(18),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(19),
      Q => \^m_axi_awaddr\(19),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(1),
      Q => \^m_axi_awaddr\(1),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(20),
      Q => \^m_axi_awaddr\(20),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(21),
      Q => \^m_axi_awaddr\(21),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(22),
      Q => \^m_axi_awaddr\(22),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(23),
      Q => \^m_axi_awaddr\(23),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(24),
      Q => \^m_axi_awaddr\(24),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(25),
      Q => \^m_axi_awaddr\(25),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(26),
      Q => \^m_axi_awaddr\(26),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(27),
      Q => \^m_axi_awaddr\(27),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(28),
      Q => \^m_axi_awaddr\(28),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(29),
      Q => \^m_axi_awaddr\(29),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(2),
      Q => \^m_axi_awaddr\(2),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(30),
      Q => \^m_axi_awaddr\(30),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(31),
      Q => \^m_axi_awaddr\(31),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(3),
      Q => \^m_axi_awaddr\(3),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(4),
      Q => \^m_axi_awaddr\(4),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(5),
      Q => \^m_axi_awaddr\(5),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(6),
      Q => \^m_axi_awaddr\(6),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(7),
      Q => \^m_axi_awaddr\(7),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(8),
      Q => \^m_axi_awaddr\(8),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_awaddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_awaddr[31]_i_2_n_0\,
      D => p_2_in(9),
      Q => \^m_axi_awaddr\(9),
      R => \axi_awaddr[31]_i_1_n_0\
    );
axi_awvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[3]\,
      I1 => \mltpn_w_cmpltd__0\,
      I2 => \^m_axi_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I5 => \cnvtn_w_cmpltd__0\,
      O => axi_awvalid_i_1_n_0
    );
axi_awvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_awvalid_i_1_n_0,
      Q => \^m_axi_awvalid\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
axi_bready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      O => axi_bready0
    );
axi_bready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_bready0,
      Q => \^m_axi_bready\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
axi_rready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \^m_axi_rready\,
      I1 => M_AXI_RVALID,
      O => axi_rready_i_1_n_0
    );
axi_rready_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_rready_i_1_n_0,
      Q => \^m_axi_rready\,
      R => axi_arvalid0
    );
\axi_wdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \^m_axi_wvalid\,
      I1 => M_AXI_WREADY,
      I2 => \FSM_onehot_w_state_reg_n_0_[2]\,
      I3 => start_mltpn_writing_fsm,
      I4 => \FSM_onehot_w_state_reg_n_0_[0]\,
      I5 => start_cnvtn_writing_fsm,
      O => \axi_wdata[31]_i_1_n_0\
    );
\axi_wdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(0),
      Q => M_AXI_WDATA(0),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(10),
      Q => M_AXI_WDATA(10),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(11),
      Q => M_AXI_WDATA(11),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(12),
      Q => M_AXI_WDATA(12),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(13),
      Q => M_AXI_WDATA(13),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(14),
      Q => M_AXI_WDATA(14),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(15),
      Q => M_AXI_WDATA(15),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(16),
      Q => M_AXI_WDATA(16),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(17),
      Q => M_AXI_WDATA(17),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(18),
      Q => M_AXI_WDATA(18),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(19),
      Q => M_AXI_WDATA(19),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(1),
      Q => M_AXI_WDATA(1),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(20),
      Q => M_AXI_WDATA(20),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(21),
      Q => M_AXI_WDATA(21),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(22),
      Q => M_AXI_WDATA(22),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(23),
      Q => M_AXI_WDATA(23),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(24),
      Q => M_AXI_WDATA(24),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(25),
      Q => M_AXI_WDATA(25),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(26),
      Q => M_AXI_WDATA(26),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(27),
      Q => M_AXI_WDATA(27),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(28),
      Q => M_AXI_WDATA(28),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(29),
      Q => M_AXI_WDATA(29),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(2),
      Q => M_AXI_WDATA(2),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(30),
      Q => M_AXI_WDATA(30),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(31),
      Q => M_AXI_WDATA(31),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(3),
      Q => M_AXI_WDATA(3),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(4),
      Q => M_AXI_WDATA(4),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(5),
      Q => M_AXI_WDATA(5),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(6),
      Q => M_AXI_WDATA(6),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(7),
      Q => M_AXI_WDATA(7),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(8),
      Q => M_AXI_WDATA(8),
      R => \axi_awaddr[31]_i_1_n_0\
    );
\axi_wdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => \axi_wdata[31]_i_1_n_0\,
      D => output_memory_data(9),
      Q => M_AXI_WDATA(9),
      R => \axi_awaddr[31]_i_1_n_0\
    );
axi_wvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F222F2FFFF22F2"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[3]\,
      I1 => \mltpn_w_cmpltd__0\,
      I2 => \^m_axi_wvalid\,
      I3 => M_AXI_WREADY,
      I4 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I5 => \cnvtn_w_cmpltd__0\,
      O => axi_wvalid_i_1_n_0
    );
axi_wvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => M_AXI_ACLK,
      CE => '1',
      D => axi_wvalid_i_1_n_0,
      Q => \^m_axi_wvalid\,
      R => \axi_awaddr[31]_i_1_n_0\
    );
capture_in_data_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[2]\,
      I1 => \FSM_onehot_state_reg_n_0_[9]\,
      I2 => M_AXI_RVALID,
      O => capture_in_data
    );
capture_wi_data_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[5]\,
      I1 => \FSM_onehot_state_reg_n_0_[12]\,
      I2 => M_AXI_RVALID,
      O => capture_wi_data
    );
ended_convolution_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[7]\,
      I1 => \cnvtn_w_cmpltd__0\,
      O => ended_convolution
    );
ended_convolution_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0090900090000090"
    )
        port map (
      I0 => cnvtn_w_cmpltd1(2),
      I1 => \^output_memory_address\(6),
      I2 => ended_convolution_INST_0_i_3_n_0,
      I3 => ended_convolution_INST_0_i_4_n_0,
      I4 => ended_convolution_INST_0_i_5_n_0,
      I5 => \^output_memory_address\(7),
      O => \cnvtn_w_cmpltd__0\
    );
ended_convolution_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666696696996666"
    )
        port map (
      I0 => image_dimension(6),
      I1 => kernel_dimension(6),
      I2 => kernel_dimension(4),
      I3 => image_dimension(4),
      I4 => kernel_dimension(5),
      I5 => image_dimension(5),
      O => cnvtn_w_cmpltd1(2)
    );
ended_convolution_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96000000"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => \^output_memory_address\(4),
      I3 => ended_multiplication_INST_0_i_3_n_0,
      I4 => ended_convolution_INST_0_i_6_n_0,
      O => ended_convolution_INST_0_i_3_n_0
    );
ended_convolution_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBFB00200020BBFB"
    )
        port map (
      I0 => image_dimension(5),
      I1 => kernel_dimension(5),
      I2 => image_dimension(4),
      I3 => kernel_dimension(4),
      I4 => kernel_dimension(6),
      I5 => image_dimension(6),
      O => ended_convolution_INST_0_i_4_n_0
    );
ended_convolution_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9969"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => image_dimension(7),
      I2 => image_dimension(6),
      I3 => kernel_dimension(6),
      O => ended_convolution_INST_0_i_5_n_0
    );
ended_convolution_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4BB4B44B"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => image_dimension(5),
      I3 => kernel_dimension(5),
      I4 => \^output_memory_address\(5),
      O => ended_convolution_INST_0_i_6_n_0
    );
ended_multiplication_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[5]\,
      I1 => \mltpn_w_cmpltd__0\,
      O => ended_multiplication
    );
ended_multiplication_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200008200000000"
    )
        port map (
      I0 => ended_multiplication_INST_0_i_2_n_0,
      I1 => \^output_memory_address\(6),
      I2 => matrix_a_dimension(6),
      I3 => \^output_memory_address\(5),
      I4 => matrix_a_dimension(5),
      I5 => ended_multiplication_INST_0_i_3_n_0,
      O => \mltpn_w_cmpltd__0\
    );
ended_multiplication_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^output_memory_address\(7),
      I1 => matrix_a_dimension(7),
      I2 => \^output_memory_address\(4),
      I3 => matrix_a_dimension(4),
      O => ended_multiplication_INST_0_i_2_n_0
    );
ended_multiplication_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^output_memory_address\(1),
      I1 => \^output_memory_address\(0),
      I2 => \^output_memory_address\(3),
      I3 => \^output_memory_address\(2),
      O => ended_multiplication_INST_0_i_3_n_0
    );
ended_reading_cnvtn_data_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \wi_clm_eq_kernel__6\,
      I2 => \wi_row_eq_kernel__6\,
      O => ended_reading_cnvtn_data
    );
ended_reading_cnvtn_data_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => ended_reading_cnvtn_data_INST_0_i_3_n_0,
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(0),
      I3 => kernel_dimension(2),
      I4 => kernel_dimension(3),
      I5 => \^weight_memory_address\(3),
      O => \wi_clm_eq_kernel__6\
    );
ended_reading_cnvtn_data_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => ended_reading_cnvtn_data_INST_0_i_4_n_0,
      I1 => kernel_dimension(5),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(6),
      I4 => kernel_dimension(7),
      I5 => \^weight_memory_address\(7),
      O => \wi_row_eq_kernel__6\
    );
ended_reading_cnvtn_data_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \^weight_memory_address\(0),
      I1 => \^weight_memory_address\(1),
      I2 => \^weight_memory_address\(2),
      I3 => kernel_dimension(2),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(1),
      O => ended_reading_cnvtn_data_INST_0_i_3_n_0
    );
ended_reading_cnvtn_data_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \^weight_memory_address\(4),
      I1 => \^weight_memory_address\(5),
      I2 => \^weight_memory_address\(6),
      I3 => kernel_dimension(6),
      I4 => kernel_dimension(4),
      I5 => kernel_dimension(5),
      O => ended_reading_cnvtn_data_INST_0_i_4_n_0
    );
ended_reading_mltn_data_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[13]\,
      I1 => ended_reading_mltn_data_INST_0_i_1_n_0,
      O => ended_reading_mltn_data
    );
ended_reading_mltn_data_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \wi_row_eq_b__6\,
      I1 => \wi_clm_eq_b__6\,
      O => ended_reading_mltn_data_INST_0_i_1_n_0
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_axi_araddr\(2),
      O => \i__carry_i_1_n_0\
    );
\in_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^input_memory_address\(0),
      O => \p_0_in__3\(0)
    );
\in_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^input_memory_address\(0),
      I1 => \^input_memory_address\(1),
      O => \p_0_in__3\(1)
    );
\in_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^input_memory_address\(0),
      I1 => \^input_memory_address\(1),
      I2 => \^input_memory_address\(2),
      O => \p_0_in__3\(2)
    );
\in_column[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \FSM_onehot_state_reg_n_0_[3]\,
      I2 => p_1_in(0),
      I3 => \p_0_in__0_0\(0),
      I4 => \FSM_onehot_state_reg_n_0_[10]\,
      O => \in_column[3]_i_1_n_0\
    );
\in_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \p_0_in__0_0\(0),
      I1 => \FSM_onehot_state_reg_n_0_[10]\,
      I2 => p_1_in(0),
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      O => inc_in_column
    );
\in_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^input_memory_address\(2),
      I1 => \^input_memory_address\(1),
      I2 => \^input_memory_address\(0),
      I3 => \^input_memory_address\(3),
      O => \p_0_in__3\(3)
    );
\in_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_column,
      D => \p_0_in__3\(0),
      Q => \^input_memory_address\(0),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_column,
      D => \p_0_in__3\(1),
      Q => \^input_memory_address\(1),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_column,
      D => \p_0_in__3\(2),
      Q => \^input_memory_address\(2),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_column,
      D => \p_0_in__3\(3),
      Q => \^input_memory_address\(3),
      R => \in_column[3]_i_1_n_0\
    );
\in_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^input_memory_address\(4),
      O => \p_0_in__4\(0)
    );
\in_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^input_memory_address\(4),
      I1 => \^input_memory_address\(5),
      O => \p_0_in__4\(1)
    );
\in_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^input_memory_address\(4),
      I1 => \^input_memory_address\(5),
      I2 => \^input_memory_address\(6),
      O => \p_0_in__4\(2)
    );
\in_row[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \in_row[3]_i_4_n_0\,
      I1 => \in_row[3]_i_5_n_0\,
      I2 => M_AXI_ARESETN,
      O => \in_row[3]_i_1_n_0\
    );
\in_row[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \^input_memory_address\(0),
      I1 => \^input_memory_address\(1),
      I2 => \^input_memory_address\(2),
      I3 => matrix_a_dimension(2),
      I4 => matrix_a_dimension(0),
      I5 => matrix_a_dimension(1),
      O => \in_row[3]_i_10_n_0\
    );
\in_row[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \^input_memory_address\(3),
      I1 => matrix_a_dimension(3),
      I2 => matrix_a_dimension(2),
      I3 => matrix_a_dimension(0),
      I4 => matrix_a_dimension(1),
      O => \in_row[3]_i_11_n_0\
    );
\in_row[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004100120020880"
    )
        port map (
      I0 => \^input_memory_address\(4),
      I1 => \^input_memory_address\(5),
      I2 => \^input_memory_address\(6),
      I3 => matrix_a_dimension(6),
      I4 => matrix_a_dimension(5),
      I5 => matrix_a_dimension(4),
      O => \in_row[3]_i_12_n_0\
    );
\in_row[3]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \^input_memory_address\(7),
      I1 => matrix_a_dimension(7),
      I2 => matrix_a_dimension(6),
      I3 => matrix_a_dimension(5),
      I4 => matrix_a_dimension(4),
      O => \in_row[3]_i_13_n_0\
    );
\in_row[3]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004100120020880"
    )
        port map (
      I0 => \^input_memory_address\(0),
      I1 => \^input_memory_address\(1),
      I2 => \^input_memory_address\(2),
      I3 => image_dimension(2),
      I4 => image_dimension(1),
      I5 => image_dimension(0),
      O => \in_row[3]_i_14_n_0\
    );
\in_row[3]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \^input_memory_address\(3),
      I1 => image_dimension(3),
      I2 => image_dimension(2),
      I3 => image_dimension(1),
      I4 => image_dimension(0),
      O => \in_row[3]_i_15_n_0\
    );
\in_row[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \^input_memory_address\(4),
      I1 => \^input_memory_address\(5),
      I2 => \^input_memory_address\(6),
      I3 => image_dimension(6),
      I4 => image_dimension(4),
      I5 => image_dimension(5),
      O => \in_row[3]_i_16_n_0\
    );
\in_row[3]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999996"
    )
        port map (
      I0 => \^input_memory_address\(7),
      I1 => image_dimension(7),
      I2 => image_dimension(6),
      I3 => image_dimension(4),
      I4 => image_dimension(5),
      O => \in_row[3]_i_17_n_0\
    );
\in_row[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => \p_0_in__0_0\(1),
      I1 => \p_0_in__0_0\(0),
      I2 => \FSM_onehot_state_reg_n_0_[10]\,
      I3 => p_1_in(1),
      I4 => p_1_in(0),
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => inc_in_row
    );
\in_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^input_memory_address\(6),
      I1 => \^input_memory_address\(5),
      I2 => \^input_memory_address\(4),
      I3 => \^input_memory_address\(7),
      O => \p_0_in__4\(3)
    );
\in_row[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[10]\,
      I1 => \in_row[3]_i_10_n_0\,
      I2 => \in_row[3]_i_11_n_0\,
      I3 => \in_row[3]_i_12_n_0\,
      I4 => \in_row[3]_i_13_n_0\,
      O => \in_row[3]_i_4_n_0\
    );
\in_row[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[3]\,
      I1 => \in_row[3]_i_14_n_0\,
      I2 => \in_row[3]_i_15_n_0\,
      I3 => \in_row[3]_i_16_n_0\,
      I4 => \in_row[3]_i_17_n_0\,
      O => \in_row[3]_i_5_n_0\
    );
\in_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => \in_row[3]_i_12_n_0\,
      I1 => matrix_a_dimension(4),
      I2 => matrix_a_dimension(5),
      I3 => matrix_a_dimension(6),
      I4 => matrix_a_dimension(7),
      I5 => \^input_memory_address\(7),
      O => \p_0_in__0_0\(1)
    );
\in_row[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => \in_row[3]_i_10_n_0\,
      I1 => matrix_a_dimension(1),
      I2 => matrix_a_dimension(0),
      I3 => matrix_a_dimension(2),
      I4 => matrix_a_dimension(3),
      I5 => \^input_memory_address\(3),
      O => \p_0_in__0_0\(0)
    );
\in_row[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => \in_row[3]_i_16_n_0\,
      I1 => image_dimension(5),
      I2 => image_dimension(4),
      I3 => image_dimension(6),
      I4 => image_dimension(7),
      I5 => \^input_memory_address\(7),
      O => p_1_in(1)
    );
\in_row[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => \in_row[3]_i_14_n_0\,
      I1 => image_dimension(0),
      I2 => image_dimension(1),
      I3 => image_dimension(2),
      I4 => image_dimension(3),
      I5 => \^input_memory_address\(3),
      O => p_1_in(0)
    );
\in_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_row,
      D => \p_0_in__4\(0),
      Q => \^input_memory_address\(4),
      R => \in_row[3]_i_1_n_0\
    );
\in_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_row,
      D => \p_0_in__4\(1),
      Q => \^input_memory_address\(5),
      R => \in_row[3]_i_1_n_0\
    );
\in_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_row,
      D => \p_0_in__4\(2),
      Q => \^input_memory_address\(6),
      R => \in_row[3]_i_1_n_0\
    );
\in_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_in_row,
      D => \p_0_in__4\(3),
      Q => \^input_memory_address\(7),
      R => \in_row[3]_i_1_n_0\
    );
\o_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^output_memory_address\(0),
      O => p_0_in(0)
    );
\o_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^output_memory_address\(0),
      I1 => \^output_memory_address\(1),
      O => p_0_in(1)
    );
\o_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^output_memory_address\(1),
      I1 => \^output_memory_address\(0),
      I2 => \^output_memory_address\(2),
      O => p_0_in(2)
    );
\o_column[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFDFDDD"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \o_row[3]_i_5_n_0\,
      I2 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I3 => \o_clm_eq_cvltn__6\,
      I4 => \cnvtn_w_cmpltd__0\,
      O => \o_column[3]_i_1_n_0\
    );
\o_column[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"020202FF02020202"
    )
        port map (
      I0 => \FSM_onehot_w_state_reg_n_0_[3]\,
      I1 => \mltpn_w_cmpltd__0\,
      I2 => \o_clm_eq_mltpn__6\,
      I3 => \o_clm_eq_cvltn__6\,
      I4 => \cnvtn_w_cmpltd__0\,
      I5 => \FSM_onehot_w_state_reg_n_0_[1]\,
      O => inc_o_column
    );
\o_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^output_memory_address\(2),
      I1 => \^output_memory_address\(0),
      I2 => \^output_memory_address\(1),
      I3 => \^output_memory_address\(3),
      O => p_0_in(3)
    );
\o_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009000906000"
    )
        port map (
      I0 => matrix_b_dimension(3),
      I1 => \^output_memory_address\(3),
      I2 => \o_column[3]_i_5_n_0\,
      I3 => \^output_memory_address\(2),
      I4 => matrix_b_dimension(2),
      I5 => \wi_row[3]_i_8_n_0\,
      O => \o_clm_eq_mltpn__6\
    );
\o_column[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => \^output_memory_address\(1),
      I1 => matrix_b_dimension(1),
      I2 => matrix_b_dimension(0),
      I3 => \^output_memory_address\(0),
      O => \o_column[3]_i_5_n_0\
    );
\o_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_column,
      D => p_0_in(0),
      Q => \^output_memory_address\(0),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_column,
      D => p_0_in(1),
      Q => \^output_memory_address\(1),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_column,
      D => p_0_in(2),
      Q => \^output_memory_address\(2),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_column,
      D => p_0_in(3),
      Q => \^output_memory_address\(3),
      R => \o_column[3]_i_1_n_0\
    );
\o_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^output_memory_address\(4),
      O => \p_0_in__0\(0)
    );
\o_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^output_memory_address\(4),
      I1 => \^output_memory_address\(5),
      O => \p_0_in__0\(1)
    );
\o_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^output_memory_address\(4),
      I1 => \^output_memory_address\(5),
      I2 => \^output_memory_address\(6),
      O => \p_0_in__0\(2)
    );
\o_row[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \cnvtn_w_cmpltd__0\,
      I1 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I2 => M_AXI_ARESETN,
      O => \o_row[3]_i_1_n_0\
    );
\o_row[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF40"
    )
        port map (
      I0 => \cnvtn_w_cmpltd__0\,
      I1 => \o_clm_eq_cvltn__6\,
      I2 => \FSM_onehot_w_state_reg_n_0_[1]\,
      I3 => \o_row[3]_i_5_n_0\,
      O => inc_o_row
    );
\o_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^output_memory_address\(6),
      I1 => \^output_memory_address\(5),
      I2 => \^output_memory_address\(4),
      I3 => \^output_memory_address\(7),
      O => \p_0_in__0\(3)
    );
\o_row[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996000000000000"
    )
        port map (
      I0 => \o_row[3]_i_6_n_0\,
      I1 => image_dimension(2),
      I2 => kernel_dimension(2),
      I3 => \^output_memory_address\(2),
      I4 => \o_row[3]_i_7_n_0\,
      I5 => \o_row[3]_i_8_n_0\,
      O => \o_clm_eq_cvltn__6\
    );
\o_row[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \mltpn_w_cmpltd__0\,
      I1 => \FSM_onehot_w_state_reg_n_0_[3]\,
      I2 => \o_clm_eq_mltpn__6\,
      O => \o_row[3]_i_5_n_0\
    );
\o_row[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D4DD"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => image_dimension(1),
      I2 => image_dimension(0),
      I3 => kernel_dimension(0),
      O => \o_row[3]_i_6_n_0\
    );
\o_row[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1482412828148241"
    )
        port map (
      I0 => \^output_memory_address\(0),
      I1 => \^output_memory_address\(1),
      I2 => kernel_dimension(1),
      I3 => image_dimension(0),
      I4 => image_dimension(1),
      I5 => kernel_dimension(0),
      O => \o_row[3]_i_7_n_0\
    );
\o_row[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999666996669996"
    )
        port map (
      I0 => kernel_dimension(3),
      I1 => image_dimension(3),
      I2 => \o_row[3]_i_6_n_0\,
      I3 => image_dimension(2),
      I4 => kernel_dimension(2),
      I5 => \^output_memory_address\(3),
      O => \o_row[3]_i_8_n_0\
    );
\o_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_row,
      D => \p_0_in__0\(0),
      Q => \^output_memory_address\(4),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_row,
      D => \p_0_in__0\(1),
      Q => \^output_memory_address\(5),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_row,
      D => \p_0_in__0\(2),
      Q => \^output_memory_address\(6),
      R => \o_row[3]_i_1_n_0\
    );
\o_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_o_row,
      D => \p_0_in__0\(3),
      Q => \^output_memory_address\(7),
      R => \o_row[3]_i_1_n_0\
    );
\wi_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^weight_memory_address\(0),
      O => \p_0_in__1\(0)
    );
\wi_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^weight_memory_address\(0),
      I1 => \^weight_memory_address\(1),
      O => \p_0_in__1\(1)
    );
\wi_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^weight_memory_address\(0),
      I1 => \^weight_memory_address\(1),
      I2 => \^weight_memory_address\(2),
      O => \p_0_in__1\(2)
    );
\wi_column[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFD5D5D5"
    )
        port map (
      I0 => M_AXI_ARESETN,
      I1 => \FSM_onehot_state_reg_n_0_[13]\,
      I2 => \wi_clm_eq_b__6\,
      I3 => \wi_clm_eq_kernel__6\,
      I4 => \FSM_onehot_state_reg_n_0_[6]\,
      O => \wi_column[3]_i_1_n_0\
    );
\wi_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
        port map (
      I0 => \wi_clm_eq_b__6\,
      I1 => \FSM_onehot_state_reg_n_0_[13]\,
      I2 => \wi_clm_eq_kernel__6\,
      I3 => \FSM_onehot_state_reg_n_0_[6]\,
      O => inc_wi_column
    );
\wi_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^weight_memory_address\(2),
      I1 => \^weight_memory_address\(1),
      I2 => \^weight_memory_address\(0),
      I3 => \^weight_memory_address\(3),
      O => \p_0_in__1\(3)
    );
\wi_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_column,
      D => \p_0_in__1\(0),
      Q => \^weight_memory_address\(0),
      R => \wi_column[3]_i_1_n_0\
    );
\wi_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_column,
      D => \p_0_in__1\(1),
      Q => \^weight_memory_address\(1),
      R => \wi_column[3]_i_1_n_0\
    );
\wi_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_column,
      D => \p_0_in__1\(2),
      Q => \^weight_memory_address\(2),
      R => \wi_column[3]_i_1_n_0\
    );
\wi_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_column,
      D => \p_0_in__1\(3),
      Q => \^weight_memory_address\(3),
      R => \wi_column[3]_i_1_n_0\
    );
\wi_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^weight_memory_address\(4),
      O => \p_0_in__2\(0)
    );
\wi_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^weight_memory_address\(4),
      I1 => \^weight_memory_address\(5),
      O => \p_0_in__2\(1)
    );
\wi_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^weight_memory_address\(5),
      I1 => \^weight_memory_address\(4),
      I2 => \^weight_memory_address\(6),
      O => \p_0_in__2\(2)
    );
\wi_row[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80FFFFFF80FF80FF"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[6]\,
      I1 => \wi_clm_eq_kernel__6\,
      I2 => \wi_row_eq_kernel__6\,
      I3 => M_AXI_ARESETN,
      I4 => ended_reading_mltn_data_INST_0_i_1_n_0,
      I5 => \FSM_onehot_state_reg_n_0_[13]\,
      O => \wi_row[3]_i_1_n_0\
    );
\wi_row[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40FF404040404040"
    )
        port map (
      I0 => \wi_row_eq_b__6\,
      I1 => \wi_clm_eq_b__6\,
      I2 => \FSM_onehot_state_reg_n_0_[13]\,
      I3 => \wi_row_eq_kernel__6\,
      I4 => \wi_clm_eq_kernel__6\,
      I5 => \FSM_onehot_state_reg_n_0_[6]\,
      O => inc_wi_row
    );
\wi_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^weight_memory_address\(6),
      I1 => \^weight_memory_address\(4),
      I2 => \^weight_memory_address\(5),
      I3 => \^weight_memory_address\(7),
      O => \p_0_in__2\(3)
    );
\wi_row[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA800020002AAA8"
    )
        port map (
      I0 => \wi_row[3]_i_6_n_0\,
      I1 => matrix_b_dimension(5),
      I2 => matrix_b_dimension(4),
      I3 => matrix_b_dimension(6),
      I4 => matrix_b_dimension(7),
      I5 => \^weight_memory_address\(7),
      O => \wi_row_eq_b__6\
    );
\wi_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9000009000906000"
    )
        port map (
      I0 => matrix_b_dimension(3),
      I1 => \^weight_memory_address\(3),
      I2 => \wi_row[3]_i_7_n_0\,
      I3 => \^weight_memory_address\(2),
      I4 => matrix_b_dimension(2),
      I5 => \wi_row[3]_i_8_n_0\,
      O => \wi_clm_eq_b__6\
    );
\wi_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4004200210010880"
    )
        port map (
      I0 => \^weight_memory_address\(4),
      I1 => \^weight_memory_address\(5),
      I2 => \^weight_memory_address\(6),
      I3 => matrix_b_dimension(6),
      I4 => matrix_b_dimension(4),
      I5 => matrix_b_dimension(5),
      O => \wi_row[3]_i_6_n_0\
    );
\wi_row[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0690"
    )
        port map (
      I0 => \^weight_memory_address\(1),
      I1 => matrix_b_dimension(1),
      I2 => matrix_b_dimension(0),
      I3 => \^weight_memory_address\(0),
      O => \wi_row[3]_i_7_n_0\
    );
\wi_row[3]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => matrix_b_dimension(0),
      I1 => matrix_b_dimension(1),
      O => \wi_row[3]_i_8_n_0\
    );
\wi_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_row,
      D => \p_0_in__2\(0),
      Q => \^weight_memory_address\(4),
      R => \wi_row[3]_i_1_n_0\
    );
\wi_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_row,
      D => \p_0_in__2\(1),
      Q => \^weight_memory_address\(5),
      R => \wi_row[3]_i_1_n_0\
    );
\wi_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_row,
      D => \p_0_in__2\(2),
      Q => \^weight_memory_address\(6),
      R => \wi_row[3]_i_1_n_0\
    );
\wi_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => M_AXI_ACLK,
      CE => inc_wi_row,
      D => \p_0_in__2\(3),
      Q => \^weight_memory_address\(7),
      R => \wi_row[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_accelerator_axi_master_0_1 is
  port (
    start_convolution : in STD_LOGIC;
    image_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ended_convolution : out STD_LOGIC;
    start_multiplication : in STD_LOGIC;
    matrix_a_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    matrix_a_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    matrix_b_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    matrix_b_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ended_multiplication : out STD_LOGIC;
    output_memory_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_cnvtn_writing_fsm : in STD_LOGIC;
    start_mltpn_writing_fsm : in STD_LOGIC;
    input_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    weight_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    capture_in_data : out STD_LOGIC;
    capture_wi_data : out STD_LOGIC;
    ended_reading_cnvtn_data : out STD_LOGIC;
    ended_reading_mltn_data : out STD_LOGIC;
    rd_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ACLK : in STD_LOGIC;
    M_AXI_ARESETN : in STD_LOGIC;
    M_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_AWVALID : out STD_LOGIC;
    M_AXI_AWREADY : in STD_LOGIC;
    M_AXI_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_WVALID : out STD_LOGIC;
    M_AXI_WREADY : in STD_LOGIC;
    M_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_BVALID : in STD_LOGIC;
    M_AXI_BREADY : out STD_LOGIC;
    M_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_ARVALID : out STD_LOGIC;
    M_AXI_ARREADY : in STD_LOGIC;
    M_AXI_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_RVALID : in STD_LOGIC;
    M_AXI_RREADY : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware_accelerator_axi_master_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hardware_accelerator_axi_master_0_1 : entity is "hardware_accelerator_axi_master_0_1,axi_master,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hardware_accelerator_axi_master_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hardware_accelerator_axi_master_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hardware_accelerator_axi_master_0_1 : entity is "axi_master,Vivado 2018.3";
end hardware_accelerator_axi_master_0_1;

architecture STRUCTURE of hardware_accelerator_axi_master_0_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of M_AXI_ACLK : signal is "xilinx.com:signal:clock:1.0 M_AXI_ACLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXI_ACLK : signal is "XIL_INTERFACENAME M_AXI_ACLK, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET M_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_accelerator_M_AXI_ACLK_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARESETN : signal is "xilinx.com:signal:reset:1.0 M_AXI_ARESETN RST";
  attribute X_INTERFACE_PARAMETER of M_AXI_ARESETN : signal is "XIL_INTERFACENAME M_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_ARREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of M_AXI_ARVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of M_AXI_AWREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of M_AXI_AWVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of M_AXI_BREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of M_AXI_BVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of M_AXI_RREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of M_AXI_RREADY : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN hardware_accelerator_M_AXI_ACLK_0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_RVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of M_AXI_WREADY : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of M_AXI_WVALID : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of M_AXI_ARADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of M_AXI_ARPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of M_AXI_AWADDR : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of M_AXI_AWPROT : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of M_AXI_BRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of M_AXI_RDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of M_AXI_RRESP : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of M_AXI_WDATA : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of M_AXI_WSTRB : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
begin
  M_AXI_ARPROT(2) <= \<const0>\;
  M_AXI_ARPROT(1) <= \<const0>\;
  M_AXI_ARPROT(0) <= \<const1>\;
  M_AXI_AWPROT(2) <= \<const0>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_WSTRB(3) <= \<const1>\;
  M_AXI_WSTRB(2) <= \<const1>\;
  M_AXI_WSTRB(1) <= \<const1>\;
  M_AXI_WSTRB(0) <= \<const1>\;
  \^m_axi_rdata\(31 downto 0) <= M_AXI_RDATA(31 downto 0);
  rd_data(31 downto 0) <= \^m_axi_rdata\(31 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.hardware_accelerator_axi_master_0_1_axi_master
     port map (
      M_AXI_ACLK => M_AXI_ACLK,
      M_AXI_ARADDR(31 downto 0) => M_AXI_ARADDR(31 downto 0),
      M_AXI_ARESETN => M_AXI_ARESETN,
      M_AXI_ARREADY => M_AXI_ARREADY,
      M_AXI_ARVALID => M_AXI_ARVALID,
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_RREADY => M_AXI_RREADY,
      M_AXI_RVALID => M_AXI_RVALID,
      M_AXI_WDATA(31 downto 0) => M_AXI_WDATA(31 downto 0),
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WVALID => M_AXI_WVALID,
      capture_in_data => capture_in_data,
      capture_wi_data => capture_wi_data,
      ended_convolution => ended_convolution,
      ended_multiplication => ended_multiplication,
      ended_reading_cnvtn_data => ended_reading_cnvtn_data,
      ended_reading_mltn_data => ended_reading_mltn_data,
      image_address(31 downto 0) => image_address(31 downto 0),
      image_dimension(7 downto 0) => image_dimension(7 downto 0),
      input_memory_address(7 downto 0) => input_memory_address(7 downto 0),
      kernel_address(31 downto 0) => kernel_address(31 downto 0),
      kernel_dimension(7 downto 0) => kernel_dimension(7 downto 0),
      matrix_a_address(31 downto 0) => matrix_a_address(31 downto 0),
      matrix_a_dimension(7 downto 0) => matrix_a_dimension(7 downto 0),
      matrix_b_address(31 downto 0) => matrix_b_address(31 downto 0),
      matrix_b_dimension(7 downto 0) => matrix_b_dimension(7 downto 0),
      output_memory_address(7 downto 0) => output_memory_address(7 downto 0),
      output_memory_data(31 downto 0) => output_memory_data(31 downto 0),
      start_cnvtn_writing_fsm => start_cnvtn_writing_fsm,
      start_convolution => start_convolution,
      start_mltpn_writing_fsm => start_mltpn_writing_fsm,
      start_multiplication => start_multiplication,
      weight_memory_address(7 downto 0) => weight_memory_address(7 downto 0)
    );
end STRUCTURE;
