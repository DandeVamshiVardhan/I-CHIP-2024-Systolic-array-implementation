-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:32:12 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {E:/vivado
--               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_and_gate_0_0/hardware_accelerator_and_gate_0_0_stub.vhdl}
-- Design      : hardware_accelerator_and_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hardware_accelerator_and_gate_0_0 is
  Port ( 
    in1 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    and_value : out STD_LOGIC
  );

end hardware_accelerator_and_gate_0_0;

architecture stub of hardware_accelerator_and_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in1,in2,and_value";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "and_gate,Vivado 2018.3";
begin
end;
