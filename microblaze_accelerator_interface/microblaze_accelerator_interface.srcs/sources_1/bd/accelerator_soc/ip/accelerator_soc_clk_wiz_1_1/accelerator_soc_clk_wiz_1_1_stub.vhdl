-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 12 11:05:58 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top accelerator_soc_clk_wiz_1_1 -prefix
--               accelerator_soc_clk_wiz_1_1_ accelerator_soc_clk_wiz_1_1_stub.vhdl
-- Design      : accelerator_soc_clk_wiz_1_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accelerator_soc_clk_wiz_1_1 is
  Port ( 
    clk_out1 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end accelerator_soc_clk_wiz_1_1;

architecture stub of accelerator_soc_clk_wiz_1_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_out1,reset,locked,clk_in1";
begin
end;
