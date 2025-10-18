-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:42:30 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ hardware_accelerator_input_mem_0_0_stub.vhdl
-- Design      : hardware_accelerator_input_mem_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    arestn : in STD_LOGIC;
    wr_enable : in STD_LOGIC;
    wr_address : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rd_address : in STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    matrix_a_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    counter : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rd_32bit_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd_288bit_data : out STD_LOGIC_VECTOR ( 287 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,arestn,wr_enable,wr_address[7:0],rd_address[7:0],wr_data[31:0],matrix_a_dimension[7:0],counter[4:0],rd_32bit_data[31:0],rd_288bit_data[287:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "input_mem,Vivado 2018.3";
begin
end;
