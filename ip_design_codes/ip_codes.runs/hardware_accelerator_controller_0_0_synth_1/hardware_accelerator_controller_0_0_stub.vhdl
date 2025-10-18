-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:42:13 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_accelerator_controller_0_0_stub.vhdl
-- Design      : hardware_accelerator_controller_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,arestn,ended_reading_cnvtn_data,image_dimension[7:0],kernel_dimension[7:0],ended_reading_mltn_data,matrix_a_dimension[7:0],matrix_b_dimension[7:0],rst_module,cvltn_or_mltpn,vir_wr_enable,ou_wr_enable,start_cnvtn_writing_fsm,start_mltpn_writing_fsm,in_mem_rd_addr[7:0],wt_mem_rd_addr[7:0],vr_mem_wr_addr[7:0],ou_mem_wr_addr[7:0],ou_mem_rd_addr[7:0],rd_address[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "controller,Vivado 2018.3";
begin
end;
