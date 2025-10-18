-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun May 11 22:38:27 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {e:/vivado files/axi master and slave implementation/axi-4
--               implmentation.srcs/sources_1/bd/hardware_acceletor/ip/hardware_acceletor_controller_0_0/hardware_acceletor_controller_0_0_sim_netlist.vhdl}
-- Design      : hardware_acceletor_controller_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_acceletor_controller_0_0_controller is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \wt_row_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    in_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vir_wr_enable : out STD_LOGIC;
    \rd_address_reg[4]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \o_row_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_column_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ou_wr_enable : out STD_LOGIC;
    \vir_column_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \vir_row_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \s_column_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    start_wr_fsm : out STD_LOGIC;
    reading_ended : in STD_LOGIC;
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    arestn : in STD_LOGIC;
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of hardware_acceletor_controller_0_0_controller : entity is "controller";
end hardware_acceletor_controller_0_0_controller;

architecture STRUCTURE of hardware_acceletor_controller_0_0_controller is
  signal A : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal B : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal clear : STD_LOGIC;
  signal cnvlt_cmpltd : STD_LOGIC;
  signal cnvlt_cmpltd1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ctrl_n_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ctrl_state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \ctrl_state[0]_i_2_n_0\ : STD_LOGIC;
  signal data : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \dec_addr__1\ : STD_LOGIC;
  signal in_column : STD_LOGIC;
  signal \in_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \in_column[3]_i_5_n_0\ : STD_LOGIC;
  signal \in_column[3]_i_6_n_0\ : STD_LOGIC;
  signal \in_column[3]_i_7_n_0\ : STD_LOGIC;
  signal \in_column_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^in_mem_rd_addr\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \in_mem_rd_addr[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \in_mem_rd_addr[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal in_row : STD_LOGIC;
  signal \in_row_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal inc_addr : STD_LOGIC;
  signal inc_rd_address : STD_LOGIC;
  signal inc_wr_address : STD_LOGIC;
  signal \o_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \^o_column_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal o_mem_wr_cmpltd00_out : STD_LOGIC;
  signal \o_mem_wr_cmpltd__0\ : STD_LOGIC;
  signal o_row : STD_LOGIC;
  signal \o_row[3]_i_4_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \o_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \^o_row_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__4\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__5\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \p_0_in__7\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rd_address_reg[4]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \s_column[3]_i_4_n_0\ : STD_LOGIC;
  signal \s_column[3]_i_5_n_0\ : STD_LOGIC;
  signal \s_column[3]_i_6_n_0\ : STD_LOGIC;
  signal \s_column[3]_i_7_n_0\ : STD_LOGIC;
  signal \^s_column_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \st_wt_r_c__0\ : STD_LOGIC;
  signal \^vir_column_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \vir_mem_wr_cmpltd0__6\ : STD_LOGIC;
  signal \vir_mem_wr_cmpltd__0\ : STD_LOGIC;
  signal \vir_row[3]_i_1_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_5_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \vir_row[3]_i_7_n_0\ : STD_LOGIC;
  signal \^vir_row_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \wt_column[2]_i_3_n_0\ : STD_LOGIC;
  signal \wt_column[2]_i_4_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_1_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_2_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_4_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_6_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_7_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_8_n_0\ : STD_LOGIC;
  signal \wt_column[3]_i_9_n_0\ : STD_LOGIC;
  signal wt_row02_out : STD_LOGIC;
  signal wt_row03_out : STD_LOGIC;
  signal wt_row11_in : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \wt_row1__7\ : STD_LOGIC;
  signal \wt_row[3]_i_10_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_12_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_13_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_14_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_15_n_0\ : STD_LOGIC;
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
  signal \wt_row[3]_i_45_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_46_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_47_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_49_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_50_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_52_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_53_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_56_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_59_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_60_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_61_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_62_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_63_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_6_n_0\ : STD_LOGIC;
  signal \wt_row[3]_i_9_n_0\ : STD_LOGIC;
  signal \^wt_row_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ctrl_state[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ctrl_state[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ctrl_state[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \in_column[1]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \in_column[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \in_column[3]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[0]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[3]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[4]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[5]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \in_mem_rd_addr[7]_INST_0_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \in_row[1]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \in_row[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \in_row[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \o_column[0]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_column[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \o_column[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_column[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \o_row[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_row[1]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \o_row[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_row[3]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \o_row[3]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of ou_wr_enable_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \rd_address[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_address[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \rd_address[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \rd_address[4]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_column[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_column[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_column[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_column[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \s_column[3]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_column[3]_i_7\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of start_wr_fsm_INST_0 : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \vir_column[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \vir_column[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \vir_column[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \vir_column[3]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \vir_row[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \vir_row[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \vir_row[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \vir_row[3]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of vir_wr_enable_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \wt_column[1]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wt_column[2]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wt_column[3]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \wt_column[3]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \wt_column[3]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wt_row[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wt_row[2]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wt_row[3]_i_11\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \wt_row[3]_i_12\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \wt_row[3]_i_13\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \wt_row[3]_i_14\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \wt_row[3]_i_23\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \wt_row[3]_i_24\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wt_row[3]_i_27\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wt_row[3]_i_31\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \wt_row[3]_i_32\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wt_row[3]_i_35\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \wt_row[3]_i_37\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wt_row[3]_i_4\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \wt_row[3]_i_42\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \wt_row[3]_i_43\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wt_row[3]_i_44\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \wt_row[3]_i_52\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \wt_row[3]_i_53\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \wt_row[3]_i_54\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wt_row[3]_i_55\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wt_row[3]_i_56\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \wt_row[3]_i_60\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \wt_row[3]_i_62\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \wt_row[3]_i_9\ : label is "soft_lutpair2";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  in_mem_rd_addr(7 downto 0) <= \^in_mem_rd_addr\(7 downto 0);
  \o_column_reg[3]_0\(3 downto 0) <= \^o_column_reg[3]_0\(3 downto 0);
  \o_row_reg[3]_0\(3 downto 0) <= \^o_row_reg[3]_0\(3 downto 0);
  \rd_address_reg[4]_0\(4 downto 0) <= \^rd_address_reg[4]_0\(4 downto 0);
  \s_column_reg[3]_0\(3 downto 0) <= \^s_column_reg[3]_0\(3 downto 0);
  \vir_column_reg[3]_0\(3 downto 0) <= \^vir_column_reg[3]_0\(3 downto 0);
  \vir_row_reg[3]_0\(3 downto 0) <= \^vir_row_reg[3]_0\(3 downto 0);
  \wt_row_reg[3]_0\(3 downto 0) <= \^wt_row_reg[3]_0\(3 downto 0);
\ctrl_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4545444455444444"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => \ctrl_state[0]_i_2_n_0\,
      I2 => \o_mem_wr_cmpltd__0\,
      I3 => cnvlt_cmpltd,
      I4 => ctrl_state(1),
      I5 => ctrl_state(0),
      O => ctrl_n_state(0)
    );
\ctrl_state[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005C"
    )
        port map (
      I0 => \vir_mem_wr_cmpltd__0\,
      I1 => reading_ended,
      I2 => ctrl_state(0),
      I3 => ctrl_state(1),
      O => \ctrl_state[0]_i_2_n_0\
    );
\ctrl_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"82282882"
    )
        port map (
      I0 => \wt_row[3]_i_18_n_0\,
      I1 => \^rd_address_reg[4]_0\(4),
      I2 => \wt_row[3]_i_17_n_0\,
      I3 => cnvlt_cmpltd1(4),
      I4 => \wt_row[3]_i_15_n_0\,
      O => cnvlt_cmpltd
    );
\ctrl_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15044444"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(1),
      I2 => \o_mem_wr_cmpltd__0\,
      I3 => \vir_mem_wr_cmpltd__0\,
      I4 => ctrl_state(0),
      O => ctrl_n_state(1)
    );
\ctrl_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0380"
    )
        port map (
      I0 => \o_mem_wr_cmpltd__0\,
      I1 => ctrl_state(1),
      I2 => ctrl_state(0),
      I3 => ctrl_state(2),
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
\in_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\in_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      I1 => \in_column_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\in_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      I1 => \in_column_reg__0\(1),
      I2 => \in_column_reg__0\(2),
      O => \p_0_in__1\(2)
    );
\in_column[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D555"
    )
        port map (
      I0 => arestn,
      I1 => inc_addr,
      I2 => \vir_mem_wr_cmpltd0__6\,
      I3 => \wt_row1__7\,
      O => \in_column[3]_i_1_n_0\
    );
\in_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \in_column_reg__0\(1),
      I1 => \in_column_reg__0\(0),
      I2 => \in_column_reg__0\(2),
      I3 => \in_column_reg__0\(3),
      O => \p_0_in__1\(3)
    );
\in_column[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040400808040480"
    )
        port map (
      I0 => \^in_mem_rd_addr\(2),
      I1 => \in_column[3]_i_5_n_0\,
      I2 => \^in_mem_rd_addr\(3),
      I3 => image_dimension(2),
      I4 => \in_column[3]_i_6_n_0\,
      I5 => image_dimension(3),
      O => \vir_mem_wr_cmpltd0__6\
    );
\in_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888222222228"
    )
        port map (
      I0 => \in_column[3]_i_7_n_0\,
      I1 => \^wt_row_reg[3]_0\(3),
      I2 => kernel_dimension(6),
      I3 => kernel_dimension(4),
      I4 => kernel_dimension(5),
      I5 => kernel_dimension(7),
      O => \wt_row1__7\
    );
\in_column[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600966900"
    )
        port map (
      I0 => \^q\(1),
      I1 => \in_column_reg__0\(1),
      I2 => image_dimension(1),
      I3 => image_dimension(0),
      I4 => \in_column_reg__0\(0),
      I5 => \^q\(0),
      O => \in_column[3]_i_5_n_0\
    );
\in_column[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => image_dimension(0),
      I1 => image_dimension(1),
      O => \in_column[3]_i_6_n_0\
    );
\in_column[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200804010280"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(0),
      I1 => \^wt_row_reg[3]_0\(1),
      I2 => \^wt_row_reg[3]_0\(2),
      I3 => kernel_dimension(5),
      I4 => kernel_dimension(4),
      I5 => kernel_dimension(6),
      O => \in_column[3]_i_7_n_0\
    );
\in_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__1\(0),
      Q => \in_column_reg__0\(0),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__1\(1),
      Q => \in_column_reg__0\(1),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__1\(2),
      Q => \in_column_reg__0\(2),
      R => \in_column[3]_i_1_n_0\
    );
\in_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__1\(3),
      Q => \in_column_reg__0\(3),
      R => \in_column[3]_i_1_n_0\
    );
\in_mem_rd_addr[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      I1 => \^q\(0),
      O => \^in_mem_rd_addr\(0)
    );
\in_mem_rd_addr[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \in_column_reg__0\(1),
      O => \^in_mem_rd_addr\(1)
    );
\in_mem_rd_addr[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \in_column_reg__0\(1),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \in_column_reg__0\(0),
      I4 => \^q\(2),
      I5 => \in_column_reg__0\(2),
      O => \^in_mem_rd_addr\(2)
    );
\in_mem_rd_addr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \in_column_reg__0\(2),
      I1 => \^q\(2),
      I2 => \in_mem_rd_addr[3]_INST_0_i_1_n_0\,
      I3 => \^q\(3),
      I4 => \in_column_reg__0\(3),
      O => \^in_mem_rd_addr\(3)
    );
\in_mem_rd_addr[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \in_column_reg__0\(0),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \in_column_reg__0\(1),
      O => \in_mem_rd_addr[3]_INST_0_i_1_n_0\
    );
\in_mem_rd_addr[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      I1 => \^wt_row_reg[3]_0\(0),
      O => \^in_mem_rd_addr\(4)
    );
\in_mem_rd_addr[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      I1 => \^wt_row_reg[3]_0\(0),
      I2 => \^wt_row_reg[3]_0\(1),
      I3 => \in_row_reg__0\(1),
      O => \^in_mem_rd_addr\(5)
    );
\in_mem_rd_addr[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E88817771777E888"
    )
        port map (
      I0 => \in_row_reg__0\(1),
      I1 => \^wt_row_reg[3]_0\(1),
      I2 => \^wt_row_reg[3]_0\(0),
      I3 => \in_row_reg__0\(0),
      I4 => \^wt_row_reg[3]_0\(2),
      I5 => \in_row_reg__0\(2),
      O => \^in_mem_rd_addr\(6)
    );
\in_mem_rd_addr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \in_row_reg__0\(2),
      I1 => \^wt_row_reg[3]_0\(2),
      I2 => \in_mem_rd_addr[7]_INST_0_i_1_n_0\,
      I3 => \^wt_row_reg[3]_0\(3),
      I4 => \in_row_reg__0\(3),
      O => \^in_mem_rd_addr\(7)
    );
\in_mem_rd_addr[7]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F880"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      I1 => \^wt_row_reg[3]_0\(0),
      I2 => \^wt_row_reg[3]_0\(1),
      I3 => \in_row_reg__0\(1),
      O => \in_mem_rd_addr[7]_INST_0_i_1_n_0\
    );
\in_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\in_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      I1 => \in_row_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\in_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \in_row_reg__0\(0),
      I1 => \in_row_reg__0\(1),
      I2 => \in_row_reg__0\(2),
      O => \p_0_in__2\(2)
    );
\in_row[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \wt_row1__7\,
      I1 => \vir_mem_wr_cmpltd0__6\,
      I2 => inc_addr,
      O => in_row
    );
\in_row[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \in_row_reg__0\(1),
      I1 => \in_row_reg__0\(0),
      I2 => \in_row_reg__0\(2),
      I3 => \in_row_reg__0\(3),
      O => \p_0_in__2\(3)
    );
\in_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row,
      D => \p_0_in__2\(0),
      Q => \in_row_reg__0\(0),
      R => clear
    );
\in_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row,
      D => \p_0_in__2\(1),
      Q => \in_row_reg__0\(1),
      R => clear
    );
\in_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row,
      D => \p_0_in__2\(2),
      Q => \in_row_reg__0\(2),
      R => clear
    );
\in_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_row,
      D => \p_0_in__2\(3),
      Q => \in_row_reg__0\(3),
      R => clear
    );
\o_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_column_reg[3]_0\(0),
      O => \p_0_in__3\(0)
    );
\o_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^o_column_reg[3]_0\(0),
      I1 => \^o_column_reg[3]_0\(1),
      O => \p_0_in__3\(1)
    );
\o_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^o_column_reg[3]_0\(0),
      I1 => \^o_column_reg[3]_0\(1),
      I2 => \^o_column_reg[3]_0\(2),
      O => \p_0_in__3\(2)
    );
\o_column[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00400000FFFFFFFF"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => \o_mem_wr_cmpltd__0\,
      I4 => o_mem_wr_cmpltd00_out,
      I5 => arestn,
      O => \o_column[3]_i_1_n_0\
    );
\o_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^o_column_reg[3]_0\(1),
      I1 => \^o_column_reg[3]_0\(0),
      I2 => \^o_column_reg[3]_0\(2),
      I3 => \^o_column_reg[3]_0\(3),
      O => \p_0_in__3\(3)
    );
\o_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__3\(0),
      Q => \^o_column_reg[3]_0\(0),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__3\(1),
      Q => \^o_column_reg[3]_0\(1),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__3\(2),
      Q => \^o_column_reg[3]_0\(2),
      R => \o_column[3]_i_1_n_0\
    );
\o_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__3\(3),
      Q => \^o_column_reg[3]_0\(3),
      R => \o_column[3]_i_1_n_0\
    );
\o_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^o_row_reg[3]_0\(0),
      O => \p_0_in__4\(0)
    );
\o_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^o_row_reg[3]_0\(0),
      I1 => \^o_row_reg[3]_0\(1),
      O => \p_0_in__4\(1)
    );
\o_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^o_row_reg[3]_0\(0),
      I1 => \^o_row_reg[3]_0\(1),
      I2 => \^o_row_reg[3]_0\(2),
      O => \p_0_in__4\(2)
    );
\o_row[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => \o_mem_wr_cmpltd__0\,
      I4 => o_mem_wr_cmpltd00_out,
      O => o_row
    );
\o_row[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^o_row_reg[3]_0\(1),
      I1 => \^o_row_reg[3]_0\(0),
      I2 => \^o_row_reg[3]_0\(2),
      I3 => \^o_row_reg[3]_0\(3),
      O => \p_0_in__4\(3)
    );
\o_row[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996000000000000"
    )
        port map (
      I0 => image_dimension(2),
      I1 => kernel_dimension(2),
      I2 => \o_row[3]_i_4_n_0\,
      I3 => \^o_column_reg[3]_0\(2),
      I4 => \o_row[3]_i_5_n_0\,
      I5 => \o_row[3]_i_6_n_0\,
      O => o_mem_wr_cmpltd00_out
    );
\o_row[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FB"
    )
        port map (
      I0 => image_dimension(0),
      I1 => kernel_dimension(0),
      I2 => image_dimension(1),
      I3 => kernel_dimension(1),
      O => \o_row[3]_i_4_n_0\
    );
\o_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096690069000069"
    )
        port map (
      I0 => \^o_column_reg[3]_0\(1),
      I1 => kernel_dimension(1),
      I2 => image_dimension(1),
      I3 => image_dimension(0),
      I4 => kernel_dimension(0),
      I5 => \^o_column_reg[3]_0\(0),
      O => \o_row[3]_i_5_n_0\
    );
\o_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966996996996696"
    )
        port map (
      I0 => image_dimension(3),
      I1 => kernel_dimension(3),
      I2 => image_dimension(2),
      I3 => kernel_dimension(2),
      I4 => \o_row[3]_i_4_n_0\,
      I5 => \^o_column_reg[3]_0\(3),
      O => \o_row[3]_i_6_n_0\
    );
\o_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o_row,
      D => \p_0_in__4\(0),
      Q => \^o_row_reg[3]_0\(0),
      R => clear
    );
\o_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o_row,
      D => \p_0_in__4\(1),
      Q => \^o_row_reg[3]_0\(1),
      R => clear
    );
\o_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o_row,
      D => \p_0_in__4\(2),
      Q => \^o_row_reg[3]_0\(2),
      R => clear
    );
\o_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => o_row,
      D => \p_0_in__4\(3),
      Q => \^o_row_reg[3]_0\(3),
      R => clear
    );
ou_wr_enable_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => ctrl_state(0),
      I2 => ctrl_state(2),
      O => ou_wr_enable
    );
\rd_address[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(0),
      O => \p_0_in__0\(0)
    );
\rd_address[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(0),
      I1 => \^rd_address_reg[4]_0\(1),
      O => \p_0_in__0\(1)
    );
\rd_address[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(0),
      I1 => \^rd_address_reg[4]_0\(1),
      I2 => \^rd_address_reg[4]_0\(2),
      O => \p_0_in__0\(2)
    );
\rd_address[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(1),
      I1 => \^rd_address_reg[4]_0\(0),
      I2 => \^rd_address_reg[4]_0\(2),
      I3 => \^rd_address_reg[4]_0\(3),
      O => \p_0_in__0\(3)
    );
\rd_address[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \dec_addr__1\,
      I1 => \st_wt_r_c__0\,
      O => inc_rd_address
    );
\rd_address[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(2),
      I1 => \^rd_address_reg[4]_0\(0),
      I2 => \^rd_address_reg[4]_0\(1),
      I3 => \^rd_address_reg[4]_0\(3),
      I4 => \^rd_address_reg[4]_0\(4),
      O => \p_0_in__0\(4)
    );
\rd_address_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(0),
      Q => \^rd_address_reg[4]_0\(0),
      R => clear
    );
\rd_address_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(1),
      Q => \^rd_address_reg[4]_0\(1),
      R => clear
    );
\rd_address_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(2),
      Q => \^rd_address_reg[4]_0\(2),
      R => clear
    );
\rd_address_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(3),
      Q => \^rd_address_reg[4]_0\(3),
      R => clear
    );
\rd_address_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => inc_rd_address,
      D => \p_0_in__0\(4),
      Q => \^rd_address_reg[4]_0\(4),
      R => clear
    );
\s_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_column_reg[3]_0\(0),
      O => \p_0_in__7\(0)
    );
\s_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^s_column_reg[3]_0\(0),
      I1 => \^s_column_reg[3]_0\(1),
      O => \p_0_in__7\(1)
    );
\s_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^s_column_reg[3]_0\(0),
      I1 => \^s_column_reg[3]_0\(1),
      I2 => \^s_column_reg[3]_0\(2),
      O => \p_0_in__7\(2)
    );
\s_column[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => \o_mem_wr_cmpltd__0\,
      O => inc_wr_address
    );
\s_column[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^s_column_reg[3]_0\(1),
      I1 => \^s_column_reg[3]_0\(0),
      I2 => \^s_column_reg[3]_0\(2),
      I3 => \^s_column_reg[3]_0\(3),
      O => \p_0_in__7\(3)
    );
\s_column[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880800800000000"
    )
        port map (
      I0 => \s_column[3]_i_4_n_0\,
      I1 => \s_column[3]_i_5_n_0\,
      I2 => \^o_row_reg[3]_0\(2),
      I3 => \s_column[3]_i_6_n_0\,
      I4 => \s_column[3]_i_7_n_0\,
      I5 => o_mem_wr_cmpltd00_out,
      O => \o_mem_wr_cmpltd__0\
    );
\s_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966996996996696"
    )
        port map (
      I0 => image_dimension(7),
      I1 => kernel_dimension(7),
      I2 => image_dimension(6),
      I3 => kernel_dimension(6),
      I4 => \s_column[3]_i_6_n_0\,
      I5 => \^o_row_reg[3]_0\(3),
      O => \s_column[3]_i_4_n_0\
    );
\s_column[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096690069000069"
    )
        port map (
      I0 => \^o_row_reg[3]_0\(1),
      I1 => kernel_dimension(5),
      I2 => image_dimension(5),
      I3 => image_dimension(4),
      I4 => kernel_dimension(4),
      I5 => \^o_row_reg[3]_0\(0),
      O => \s_column[3]_i_5_n_0\
    );
\s_column[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0FB"
    )
        port map (
      I0 => image_dimension(4),
      I1 => kernel_dimension(4),
      I2 => image_dimension(5),
      I3 => kernel_dimension(5),
      O => \s_column[3]_i_6_n_0\
    );
\s_column[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => image_dimension(6),
      I1 => kernel_dimension(6),
      O => \s_column[3]_i_7_n_0\
    );
\s_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__7\(0),
      Q => \^s_column_reg[3]_0\(0),
      R => clear
    );
\s_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__7\(1),
      Q => \^s_column_reg[3]_0\(1),
      R => clear
    );
\s_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__7\(2),
      Q => \^s_column_reg[3]_0\(2),
      R => clear
    );
\s_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_wr_address,
      D => \p_0_in__7\(3),
      Q => \^s_column_reg[3]_0\(3),
      R => clear
    );
start_wr_fsm_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => ctrl_state(2),
      I2 => ctrl_state(0),
      O => start_wr_fsm
    );
\vir_column[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vir_column_reg[3]_0\(0),
      O => \p_0_in__5\(0)
    );
\vir_column[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vir_column_reg[3]_0\(0),
      I1 => \^vir_column_reg[3]_0\(1),
      O => \p_0_in__5\(1)
    );
\vir_column[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^vir_column_reg[3]_0\(0),
      I1 => \^vir_column_reg[3]_0\(1),
      I2 => \^vir_column_reg[3]_0\(2),
      O => \p_0_in__5\(2)
    );
\vir_column[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arestn,
      O => clear
    );
\vir_column[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inc_addr,
      I1 => wt_row03_out,
      O => in_column
    );
\vir_column[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^vir_column_reg[3]_0\(1),
      I1 => \^vir_column_reg[3]_0\(0),
      I2 => \^vir_column_reg[3]_0\(2),
      I3 => \^vir_column_reg[3]_0\(3),
      O => \p_0_in__5\(3)
    );
\vir_column_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__5\(0),
      Q => \^vir_column_reg[3]_0\(0),
      R => clear
    );
\vir_column_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__5\(1),
      Q => \^vir_column_reg[3]_0\(1),
      R => clear
    );
\vir_column_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__5\(2),
      Q => \^vir_column_reg[3]_0\(2),
      R => clear
    );
\vir_column_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => in_column,
      D => \p_0_in__5\(3),
      Q => \^vir_column_reg[3]_0\(3),
      R => clear
    );
\vir_row[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^vir_row_reg[3]_0\(0),
      O => \p_0_in__6\(0)
    );
\vir_row[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^vir_row_reg[3]_0\(0),
      I1 => \^vir_row_reg[3]_0\(1),
      O => \p_0_in__6\(1)
    );
\vir_row[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^vir_row_reg[3]_0\(0),
      I1 => \^vir_row_reg[3]_0\(1),
      I2 => \^vir_row_reg[3]_0\(2),
      O => \p_0_in__6\(2)
    );
\vir_row[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => wt_row03_out,
      I1 => inc_addr,
      I2 => arestn,
      O => \vir_row[3]_i_1_n_0\
    );
\vir_row[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => \vir_mem_wr_cmpltd__0\,
      O => inc_addr
    );
\vir_row[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^vir_row_reg[3]_0\(1),
      I1 => \^vir_row_reg[3]_0\(0),
      I2 => \^vir_row_reg[3]_0\(2),
      I3 => \^vir_row_reg[3]_0\(3),
      O => \p_0_in__6\(3)
    );
\vir_row[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \vir_row[3]_i_5_n_0\,
      I1 => \vir_mem_wr_cmpltd0__6\,
      O => \vir_mem_wr_cmpltd__0\
    );
\vir_row[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8040400808040480"
    )
        port map (
      I0 => \^in_mem_rd_addr\(6),
      I1 => \vir_row[3]_i_6_n_0\,
      I2 => \^in_mem_rd_addr\(7),
      I3 => image_dimension(6),
      I4 => \vir_row[3]_i_7_n_0\,
      I5 => image_dimension(7),
      O => \vir_row[3]_i_5_n_0\
    );
\vir_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600966900"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(1),
      I1 => \in_row_reg__0\(1),
      I2 => image_dimension(5),
      I3 => image_dimension(4),
      I4 => \in_row_reg__0\(0),
      I5 => \^wt_row_reg[3]_0\(0),
      O => \vir_row[3]_i_6_n_0\
    );
\vir_row[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => image_dimension(4),
      I1 => image_dimension(5),
      O => \vir_row[3]_i_7_n_0\
    );
\vir_row_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__6\(0),
      Q => \^vir_row_reg[3]_0\(0),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__6\(1),
      Q => \^vir_row_reg[3]_0\(1),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__6\(2),
      Q => \^vir_row_reg[3]_0\(2),
      R => \vir_row[3]_i_1_n_0\
    );
\vir_row_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => inc_addr,
      D => \p_0_in__6\(3),
      Q => \^vir_row_reg[3]_0\(3),
      R => \vir_row[3]_i_1_n_0\
    );
vir_wr_enable_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_state(1),
      I1 => ctrl_state(0),
      I2 => ctrl_state(2),
      O => vir_wr_enable
    );
\wt_column[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22327737"
    )
        port map (
      I0 => \st_wt_r_c__0\,
      I1 => kernel_dimension(0),
      I2 => \wt_row[3]_i_9_n_0\,
      I3 => inc_addr,
      I4 => \^q\(0),
      O => p_2_in(0)
    );
\wt_column[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE14BE14FF00EB41"
    )
        port map (
      I0 => \st_wt_r_c__0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => wt_row11_in(1),
      I4 => \wt_row[3]_i_9_n_0\,
      I5 => inc_addr,
      O => p_2_in(1)
    );
\wt_column[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => kernel_dimension(0),
      I1 => kernel_dimension(1),
      O => wt_row11_in(1)
    );
\wt_column[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBB8BBB888B8"
    )
        port map (
      I0 => wt_row11_in(2),
      I1 => \st_wt_r_c__0\,
      I2 => \wt_column[2]_i_3_n_0\,
      I3 => inc_addr,
      I4 => \^q\(2),
      I5 => \wt_column[2]_i_4_n_0\,
      O => p_2_in(2)
    );
\wt_column[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(2),
      O => wt_row11_in(2)
    );
\wt_column[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A5A5A585858585A"
    )
        port map (
      I0 => \wt_row[3]_i_13_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => kernel_dimension(1),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(2),
      O => \wt_column[2]_i_3_n_0\
    );
\wt_column[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => \wt_column[2]_i_4_n_0\
    );
\wt_column[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5404FFFF"
    )
        port map (
      I0 => \st_wt_r_c__0\,
      I1 => \wt_column[3]_i_4_n_0\,
      I2 => inc_addr,
      I3 => wt_row02_out,
      I4 => arestn,
      O => \wt_column[3]_i_1_n_0\
    );
\wt_column[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \dec_addr__1\,
      I1 => inc_addr,
      I2 => \st_wt_r_c__0\,
      O => \wt_column[3]_i_2_n_0\
    );
\wt_column[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBB8BBB888B8"
    )
        port map (
      I0 => wt_row11_in(3),
      I1 => \st_wt_r_c__0\,
      I2 => \wt_column[3]_i_6_n_0\,
      I3 => inc_addr,
      I4 => \^q\(3),
      I5 => \wt_column[3]_i_7_n_0\,
      O => p_2_in(3)
    );
\wt_column[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A22A2AA200000000"
    )
        port map (
      I0 => \wt_row[3]_i_6_n_0\,
      I1 => \wt_row[3]_i_18_n_0\,
      I2 => \^rd_address_reg[4]_0\(4),
      I3 => \wt_row[3]_i_17_n_0\,
      I4 => \wt_column[3]_i_8_n_0\,
      I5 => \wt_row[3]_i_14_n_0\,
      O => \wt_column[3]_i_4_n_0\
    );
\wt_column[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => kernel_dimension(0),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(3),
      O => wt_row11_in(3)
    );
\wt_column[3]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E1F0E0"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
      I4 => wt_row11_in(3),
      O => \wt_column[3]_i_6_n_0\
    );
\wt_column[3]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \wt_column[3]_i_7_n_0\
    );
\wt_column[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \wt_row[3]_i_15_n_0\,
      I1 => \wt_row[3]_i_31_n_0\,
      I2 => \wt_row[3]_i_30_n_0\,
      I3 => \wt_row[3]_i_29_n_0\,
      I4 => \wt_row[3]_i_28_n_0\,
      I5 => \wt_column[3]_i_9_n_0\,
      O => \wt_column[3]_i_8_n_0\
    );
\wt_column[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000069969669"
    )
        port map (
      I0 => \wt_row[3]_i_43_n_0\,
      I1 => \wt_row[3]_i_42_n_0\,
      I2 => \wt_row[3]_i_41_n_0\,
      I3 => \wt_row[3]_i_40_n_0\,
      I4 => \wt_row[3]_i_39_n_0\,
      I5 => \wt_row[3]_i_26_n_0\,
      O => \wt_column[3]_i_9_n_0\
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
      INIT => X"47"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => \st_wt_r_c__0\,
      I2 => \^wt_row_reg[3]_0\(0),
      O => p_0_in(0)
    );
\wt_row[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF6900690069FF69"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(0),
      I1 => inc_addr,
      I2 => \^wt_row_reg[3]_0\(1),
      I3 => \st_wt_r_c__0\,
      I4 => kernel_dimension(4),
      I5 => kernel_dimension(5),
      O => p_0_in(1)
    );
\wt_row[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6AA900006AA9"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(2),
      I1 => \^wt_row_reg[3]_0\(1),
      I2 => inc_addr,
      I3 => \^wt_row_reg[3]_0\(0),
      I4 => \st_wt_r_c__0\,
      I5 => data(2),
      O => p_0_in(2)
    );
\wt_row[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(6),
      O => data(2)
    );
\wt_row[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45404040FFFFFFFF"
    )
        port map (
      I0 => \st_wt_r_c__0\,
      I1 => wt_row03_out,
      I2 => inc_addr,
      I3 => \wt_row[3]_i_6_n_0\,
      I4 => \dec_addr__1\,
      I5 => arestn,
      O => \wt_row[3]_i_1_n_0\
    );
\wt_row[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000200AAAAABAA"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(0),
      I1 => \vir_mem_wr_cmpltd__0\,
      I2 => ctrl_state(1),
      I3 => ctrl_state(0),
      I4 => ctrl_state(2),
      I5 => \^wt_row_reg[3]_0\(1),
      O => \wt_row[3]_i_10_n_0\
    );
\wt_row[3]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(7),
      O => data(3)
    );
\wt_row[3]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      O => \wt_row[3]_i_12_n_0\
    );
\wt_row[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \wt_row[3]_i_13_n_0\
    );
\wt_row[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ctrl_state(0),
      I1 => ctrl_state(1),
      I2 => ctrl_state(2),
      O => \wt_row[3]_i_14_n_0\
    );
\wt_row[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E17887E11E87781E"
    )
        port map (
      I0 => \wt_row[3]_i_20_n_0\,
      I1 => \wt_row[3]_i_21_n_0\,
      I2 => \wt_row[3]_i_22_n_0\,
      I3 => \wt_row[3]_i_23_n_0\,
      I4 => \wt_row[3]_i_24_n_0\,
      I5 => \wt_row[3]_i_25_n_0\,
      O => \wt_row[3]_i_15_n_0\
    );
\wt_row[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BB4B44BB44B4BB4"
    )
        port map (
      I0 => \wt_row[3]_i_26_n_0\,
      I1 => \wt_row[3]_i_27_n_0\,
      I2 => \wt_row[3]_i_28_n_0\,
      I3 => \wt_row[3]_i_29_n_0\,
      I4 => \wt_row[3]_i_30_n_0\,
      I5 => \wt_row[3]_i_31_n_0\,
      O => cnvlt_cmpltd1(4)
    );
\wt_row[3]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \wt_row[3]_i_32_n_0\,
      I1 => cnvlt_cmpltd1(3),
      I2 => \wt_row[3]_i_34_n_0\,
      O => \wt_row[3]_i_17_n_0\
    );
\wt_row[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8008088008808008"
    )
        port map (
      I0 => \wt_row[3]_i_35_n_0\,
      I1 => \wt_row[3]_i_36_n_0\,
      I2 => \^rd_address_reg[4]_0\(3),
      I3 => \wt_row[3]_i_32_n_0\,
      I4 => cnvlt_cmpltd1(3),
      I5 => \wt_row[3]_i_34_n_0\,
      O => \wt_row[3]_i_18_n_0\
    );
\wt_row[3]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010200804010280"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => kernel_dimension(1),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(2),
      O => \wt_row[3]_i_19_n_0\
    );
\wt_row[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFAAA"
    )
        port map (
      I0 => \st_wt_r_c__0\,
      I1 => wt_row02_out,
      I2 => \dec_addr__1\,
      I3 => \wt_row[3]_i_9_n_0\,
      I4 => inc_addr,
      O => \wt_row[3]_i_2_n_0\
    );
\wt_row[3]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(6),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(3),
      I4 => kernel_dimension(5),
      I5 => kernel_dimension(2),
      O => \wt_row[3]_i_20_n_0\
    );
\wt_row[3]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0C0A00000008000"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(0),
      I3 => kernel_dimension(5),
      I4 => kernel_dimension(2),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_21_n_0\
    );
\wt_row[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(6),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(3),
      I4 => kernel_dimension(5),
      I5 => kernel_dimension(2),
      O => \wt_row[3]_i_22_n_0\
    );
\wt_row[3]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => kernel_dimension(0),
      O => \wt_row[3]_i_23_n_0\
    );
\wt_row[3]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => kernel_dimension(2),
      I1 => kernel_dimension(4),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(5),
      O => \wt_row[3]_i_24_n_0\
    );
\wt_row[3]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => kernel_dimension(1),
      I1 => kernel_dimension(7),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(3),
      I4 => kernel_dimension(6),
      I5 => kernel_dimension(2),
      O => \wt_row[3]_i_25_n_0\
    );
\wt_row[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7D77DD77D7DD77D"
    )
        port map (
      I0 => \wt_row[3]_i_37_n_0\,
      I1 => kernel_dimension(3),
      I2 => image_dimension(3),
      I3 => image_dimension(2),
      I4 => kernel_dimension(2),
      I5 => \wt_row[3]_i_38_n_0\,
      O => \wt_row[3]_i_26_n_0\
    );
\wt_row[3]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \wt_row[3]_i_39_n_0\,
      I1 => \wt_row[3]_i_40_n_0\,
      I2 => \wt_row[3]_i_41_n_0\,
      I3 => \wt_row[3]_i_42_n_0\,
      I4 => \wt_row[3]_i_43_n_0\,
      O => \wt_row[3]_i_27_n_0\
    );
\wt_row[3]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7D77DD77D7DD77D"
    )
        port map (
      I0 => A(1),
      I1 => kernel_dimension(3),
      I2 => image_dimension(3),
      I3 => image_dimension(2),
      I4 => kernel_dimension(2),
      I5 => \wt_row[3]_i_38_n_0\,
      O => \wt_row[3]_i_28_n_0\
    );
\wt_row[3]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2DBB2B2FFFFFFFF"
    )
        port map (
      I0 => image_dimension(3),
      I1 => kernel_dimension(3),
      I2 => \wt_row[3]_i_38_n_0\,
      I3 => kernel_dimension(2),
      I4 => image_dimension(2),
      I5 => \wt_row[3]_i_37_n_0\,
      O => \wt_row[3]_i_29_n_0\
    );
\wt_row[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF6AA900006AA9"
    )
        port map (
      I0 => \^wt_row_reg[3]_0\(3),
      I1 => \^wt_row_reg[3]_0\(1),
      I2 => \wt_row[3]_i_10_n_0\,
      I3 => \^wt_row_reg[3]_0\(2),
      I4 => \st_wt_r_c__0\,
      I5 => data(3),
      O => p_0_in(3)
    );
\wt_row[3]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => \wt_row[3]_i_43_n_0\,
      I1 => \wt_row[3]_i_42_n_0\,
      I2 => \wt_row[3]_i_41_n_0\,
      I3 => \wt_row[3]_i_45_n_0\,
      I4 => \wt_row[3]_i_46_n_0\,
      O => \wt_row[3]_i_30_n_0\
    );
\wt_row[3]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8EE8E88E"
    )
        port map (
      I0 => \wt_row[3]_i_39_n_0\,
      I1 => \wt_row[3]_i_40_n_0\,
      I2 => \wt_row[3]_i_41_n_0\,
      I3 => \wt_row[3]_i_42_n_0\,
      I4 => \wt_row[3]_i_43_n_0\,
      O => \wt_row[3]_i_31_n_0\
    );
\wt_row[3]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \wt_row[3]_i_47_n_0\,
      I1 => cnvlt_cmpltd1(2),
      I2 => \wt_row[3]_i_49_n_0\,
      O => \wt_row[3]_i_32_n_0\
    );
\wt_row[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \wt_row[3]_i_26_n_0\,
      I1 => \wt_row[3]_i_43_n_0\,
      I2 => \wt_row[3]_i_42_n_0\,
      I3 => \wt_row[3]_i_41_n_0\,
      I4 => \wt_row[3]_i_40_n_0\,
      I5 => \wt_row[3]_i_39_n_0\,
      O => cnvlt_cmpltd1(3)
    );
\wt_row[3]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \wt_row[3]_i_21_n_0\,
      I1 => \wt_row[3]_i_50_n_0\,
      I2 => \wt_row[3]_i_20_n_0\,
      O => \wt_row[3]_i_34_n_0\
    );
\wt_row[3]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \wt_row[3]_i_49_n_0\,
      I1 => cnvlt_cmpltd1(2),
      I2 => \wt_row[3]_i_47_n_0\,
      I3 => \^rd_address_reg[4]_0\(2),
      O => \wt_row[3]_i_35_n_0\
    );
\wt_row[3]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0096690069000069"
    )
        port map (
      I0 => \^rd_address_reg[4]_0\(1),
      I1 => cnvlt_cmpltd1(1),
      I2 => \wt_row[3]_i_52_n_0\,
      I3 => \^rd_address_reg[4]_0\(0),
      I4 => \wt_row[3]_i_53_n_0\,
      I5 => cnvlt_cmpltd1(0),
      O => \wt_row[3]_i_36_n_0\
    );
\wt_row[3]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => image_dimension(4),
      I1 => kernel_dimension(4),
      O => \wt_row[3]_i_37_n_0\
    );
\wt_row[3]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFF00200020BAFF"
    )
        port map (
      I0 => image_dimension(1),
      I1 => kernel_dimension(0),
      I2 => image_dimension(0),
      I3 => kernel_dimension(1),
      I4 => image_dimension(2),
      I5 => kernel_dimension(2),
      O => \wt_row[3]_i_38_n_0\
    );
\wt_row[3]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0C0A00000008000"
    )
        port map (
      I0 => B(1),
      I1 => \wt_row[3]_i_37_n_0\,
      I2 => \wt_row[3]_i_56_n_0\,
      I3 => A(1),
      I4 => B(2),
      I5 => A(2),
      O => \wt_row[3]_i_39_n_0\
    );
\wt_row[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => ctrl_state(2),
      I1 => ctrl_state(0),
      I2 => ctrl_state(1),
      I3 => \vir_mem_wr_cmpltd__0\,
      O => \st_wt_r_c__0\
    );
\wt_row[3]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800880080000"
    )
        port map (
      I0 => B(2),
      I1 => B(1),
      I2 => kernel_dimension(4),
      I3 => image_dimension(4),
      I4 => image_dimension(5),
      I5 => kernel_dimension(5),
      O => \wt_row[3]_i_40_n_0\
    );
\wt_row[3]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99696696FFFFFFFF"
    )
        port map (
      I0 => kernel_dimension(7),
      I1 => image_dimension(7),
      I2 => image_dimension(6),
      I3 => kernel_dimension(6),
      I4 => \wt_row[3]_i_59_n_0\,
      I5 => \wt_row[3]_i_56_n_0\,
      O => \wt_row[3]_i_41_n_0\
    );
\wt_row[3]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"9969FFFF"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => image_dimension(5),
      I2 => image_dimension(4),
      I3 => kernel_dimension(4),
      I4 => B(2),
      O => \wt_row[3]_i_42_n_0\
    );
\wt_row[3]_i_43\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7D77DD7"
    )
        port map (
      I0 => A(2),
      I1 => kernel_dimension(1),
      I2 => image_dimension(1),
      I3 => image_dimension(0),
      I4 => kernel_dimension(0),
      O => \wt_row[3]_i_43_n_0\
    );
\wt_row[3]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => image_dimension(5),
      I3 => kernel_dimension(5),
      O => A(1)
    );
\wt_row[3]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D77D288228822882"
    )
        port map (
      I0 => B(1),
      I1 => \wt_row[3]_i_59_n_0\,
      I2 => \wt_row[3]_i_60_n_0\,
      I3 => \wt_row[3]_i_61_n_0\,
      I4 => B(2),
      I5 => A(2),
      O => \wt_row[3]_i_45_n_0\
    );
\wt_row[3]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2DBB2B2FFFFFFFF"
    )
        port map (
      I0 => image_dimension(7),
      I1 => kernel_dimension(7),
      I2 => \wt_row[3]_i_59_n_0\,
      I3 => kernel_dimension(6),
      I4 => image_dimension(6),
      I5 => \wt_row[3]_i_56_n_0\,
      O => \wt_row[3]_i_46_n_0\
    );
\wt_row[3]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EBAABEFF820028AA"
    )
        port map (
      I0 => \wt_row[3]_i_62_n_0\,
      I1 => image_dimension(0),
      I2 => kernel_dimension(0),
      I3 => A(1),
      I4 => \wt_row[3]_i_63_n_0\,
      I5 => \wt_row[3]_i_52_n_0\,
      O => \wt_row[3]_i_47_n_0\
    );
\wt_row[3]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27777888D8887888"
    )
        port map (
      I0 => \wt_row[3]_i_37_n_0\,
      I1 => B(2),
      I2 => A(1),
      I3 => B(1),
      I4 => \wt_row[3]_i_56_n_0\,
      I5 => A(2),
      O => cnvlt_cmpltd1(2)
    );
\wt_row[3]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27777888D8887888"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => kernel_dimension(2),
      I2 => kernel_dimension(5),
      I3 => kernel_dimension(1),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_49_n_0\
    );
\wt_row[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => wt_row02_out,
      I1 => \wt_row1__7\,
      O => wt_row03_out
    );
\wt_row[3]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF800080008000"
    )
        port map (
      I0 => kernel_dimension(5),
      I1 => kernel_dimension(1),
      I2 => kernel_dimension(4),
      I3 => kernel_dimension(2),
      I4 => kernel_dimension(0),
      I5 => kernel_dimension(7),
      O => \wt_row[3]_i_50_n_0\
    );
\wt_row[3]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D72828288282D728"
    )
        port map (
      I0 => \wt_row[3]_i_56_n_0\,
      I1 => image_dimension(5),
      I2 => kernel_dimension(5),
      I3 => B(1),
      I4 => image_dimension(4),
      I5 => kernel_dimension(4),
      O => cnvlt_cmpltd1(1)
    );
\wt_row[3]_i_52\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => kernel_dimension(0),
      I1 => kernel_dimension(5),
      I2 => kernel_dimension(1),
      I3 => kernel_dimension(4),
      O => \wt_row[3]_i_52_n_0\
    );
\wt_row[3]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => kernel_dimension(0),
      O => \wt_row[3]_i_53_n_0\
    );
\wt_row[3]_i_54\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(0),
      I3 => image_dimension(0),
      O => cnvlt_cmpltd1(0)
    );
\wt_row[3]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => kernel_dimension(0),
      I1 => image_dimension(0),
      I2 => image_dimension(1),
      I3 => kernel_dimension(1),
      O => B(1)
    );
\wt_row[3]_i_56\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => image_dimension(0),
      I1 => kernel_dimension(0),
      O => \wt_row[3]_i_56_n_0\
    );
\wt_row[3]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4520BADFBADF4520"
    )
        port map (
      I0 => image_dimension(1),
      I1 => kernel_dimension(0),
      I2 => image_dimension(0),
      I3 => kernel_dimension(1),
      I4 => image_dimension(2),
      I5 => kernel_dimension(2),
      O => B(2)
    );
\wt_row[3]_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4520BADFBADF4520"
    )
        port map (
      I0 => image_dimension(5),
      I1 => kernel_dimension(4),
      I2 => image_dimension(4),
      I3 => kernel_dimension(5),
      I4 => image_dimension(6),
      I5 => kernel_dimension(6),
      O => A(2)
    );
\wt_row[3]_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAFF00200020BAFF"
    )
        port map (
      I0 => image_dimension(5),
      I1 => kernel_dimension(4),
      I2 => image_dimension(4),
      I3 => kernel_dimension(5),
      I4 => image_dimension(6),
      I5 => kernel_dimension(6),
      O => \wt_row[3]_i_59_n_0\
    );
\wt_row[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \wt_row[3]_i_12_n_0\,
      I1 => \^wt_row_reg[3]_0\(2),
      I2 => \^wt_row_reg[3]_0\(3),
      I3 => \^wt_row_reg[3]_0\(0),
      I4 => \^wt_row_reg[3]_0\(1),
      I5 => \wt_row[3]_i_13_n_0\,
      O => \wt_row[3]_i_6_n_0\
    );
\wt_row[3]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => kernel_dimension(6),
      I1 => image_dimension(6),
      O => \wt_row[3]_i_60_n_0\
    );
\wt_row[3]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => image_dimension(7),
      I1 => kernel_dimension(7),
      O => \wt_row[3]_i_61_n_0\
    );
\wt_row[3]_i_62\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => image_dimension(0),
      I1 => image_dimension(4),
      I2 => kernel_dimension(0),
      I3 => kernel_dimension(4),
      O => \wt_row[3]_i_62_n_0\
    );
\wt_row[3]_i_63\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F66FF66F6FF6F66F"
    )
        port map (
      I0 => kernel_dimension(4),
      I1 => image_dimension(4),
      I2 => kernel_dimension(1),
      I3 => image_dimension(1),
      I4 => image_dimension(0),
      I5 => kernel_dimension(0),
      O => \wt_row[3]_i_63_n_0\
    );
\wt_row[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"28828228AAAAAAAA"
    )
        port map (
      I0 => \wt_row[3]_i_14_n_0\,
      I1 => \wt_row[3]_i_15_n_0\,
      I2 => cnvlt_cmpltd1(4),
      I3 => \wt_row[3]_i_17_n_0\,
      I4 => \^rd_address_reg[4]_0\(4),
      I5 => \wt_row[3]_i_18_n_0\,
      O => \dec_addr__1\
    );
\wt_row[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888222222228"
    )
        port map (
      I0 => \wt_row[3]_i_19_n_0\,
      I1 => \^q\(3),
      I2 => kernel_dimension(2),
      I3 => kernel_dimension(0),
      I4 => kernel_dimension(1),
      I5 => kernel_dimension(3),
      O => wt_row02_out
    );
\wt_row[3]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(3),
      I3 => \^q\(2),
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
      Q => \^wt_row_reg[3]_0\(0),
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
      Q => \^wt_row_reg[3]_0\(1),
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
      Q => \^wt_row_reg[3]_0\(2),
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
      Q => \^wt_row_reg[3]_0\(3),
      R => \wt_row[3]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_acceletor_controller_0_0 is
  port (
    clk : in STD_LOGIC;
    arestn : in STD_LOGIC;
    reading_ended : in STD_LOGIC;
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    vir_wr_enable : out STD_LOGIC;
    start_wr_fsm : out STD_LOGIC;
    ou_wr_enable : out STD_LOGIC;
    in_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wt_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    vr_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_mem_rd_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ou_mem_wr_addr : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_address : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware_acceletor_controller_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hardware_acceletor_controller_0_0 : entity is "hardware_acceletor_controller_0_0,controller,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hardware_acceletor_controller_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hardware_acceletor_controller_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hardware_acceletor_controller_0_0 : entity is "controller,Vivado 2018.3";
end hardware_acceletor_controller_0_0;

architecture STRUCTURE of hardware_acceletor_controller_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal n_0_157 : STD_LOGIC;
  signal \^ou_mem_rd_addr\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, INSERT_VIP 0";
begin
  ou_mem_rd_addr(7) <= \<const0>\;
  ou_mem_rd_addr(6) <= \<const0>\;
  ou_mem_rd_addr(5) <= \<const0>\;
  ou_mem_rd_addr(4) <= \<const0>\;
  ou_mem_rd_addr(3 downto 0) <= \^ou_mem_rd_addr\(3 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
i_157: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arestn,
      O => n_0_157
    );
inst: entity work.hardware_acceletor_controller_0_0_controller
     port map (
      Q(3 downto 0) => wt_mem_rd_addr(3 downto 0),
      arestn => arestn,
      clk => clk,
      image_dimension(7 downto 0) => image_dimension(7 downto 0),
      in_mem_rd_addr(7 downto 0) => in_mem_rd_addr(7 downto 0),
      kernel_dimension(7 downto 0) => kernel_dimension(7 downto 0),
      \o_column_reg[3]_0\(3 downto 0) => ou_mem_wr_addr(3 downto 0),
      \o_row_reg[3]_0\(3 downto 0) => ou_mem_wr_addr(7 downto 4),
      ou_wr_enable => ou_wr_enable,
      \rd_address_reg[4]_0\(4 downto 0) => rd_address(4 downto 0),
      reading_ended => reading_ended,
      \s_column_reg[3]_0\(3 downto 0) => \^ou_mem_rd_addr\(3 downto 0),
      start_wr_fsm => start_wr_fsm,
      \vir_column_reg[3]_0\(3 downto 0) => vr_mem_wr_addr(3 downto 0),
      \vir_row_reg[3]_0\(3 downto 0) => vr_mem_wr_addr(7 downto 4),
      vir_wr_enable => vir_wr_enable,
      \wt_row_reg[3]_0\(3 downto 0) => wt_mem_rd_addr(7 downto 4)
    );
end STRUCTURE;
