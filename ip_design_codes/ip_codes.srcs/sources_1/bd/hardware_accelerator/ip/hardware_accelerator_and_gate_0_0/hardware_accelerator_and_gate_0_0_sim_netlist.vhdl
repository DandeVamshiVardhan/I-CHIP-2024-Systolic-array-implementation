-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Tue May 20 12:32:12 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {E:/vivado
--               files/I_CHIP_2024/ip_design_codes/ip_codes.srcs/sources_1/bd/hardware_accelerator/ip/hardware_accelerator_and_gate_0_0/hardware_accelerator_and_gate_0_0_sim_netlist.vhdl}
-- Design      : hardware_accelerator_and_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity hardware_accelerator_and_gate_0_0 is
  port (
    in1 : in STD_LOGIC;
    in2 : in STD_LOGIC;
    and_value : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of hardware_accelerator_and_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of hardware_accelerator_and_gate_0_0 : entity is "hardware_accelerator_and_gate_0_0,and_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of hardware_accelerator_and_gate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of hardware_accelerator_and_gate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of hardware_accelerator_and_gate_0_0 : entity is "and_gate,Vivado 2018.3";
end hardware_accelerator_and_gate_0_0;

architecture STRUCTURE of hardware_accelerator_and_gate_0_0 is
begin
and_value_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => in1,
      I1 => in2,
      O => and_value
    );
end STRUCTURE;
