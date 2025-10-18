-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 12 11:32:06 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top accelerator_soc_hardware_acceletor_w_0_2 -prefix
--               accelerator_soc_hardware_acceletor_w_0_2_ accelerator_soc_hardware_acceletor_w_0_2_stub.vhdl
-- Design      : accelerator_soc_hardware_acceletor_w_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accelerator_soc_hardware_acceletor_w_0_2 is
  Port ( 
    M_AXI_0_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_arready : in STD_LOGIC;
    M_AXI_0_arvalid : out STD_LOGIC;
    M_AXI_0_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_0_awready : in STD_LOGIC;
    M_AXI_0_awvalid : out STD_LOGIC;
    M_AXI_0_bready : out STD_LOGIC;
    M_AXI_0_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_bvalid : in STD_LOGIC;
    M_AXI_0_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_rready : out STD_LOGIC;
    M_AXI_0_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_0_rvalid : in STD_LOGIC;
    M_AXI_0_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_0_wready : in STD_LOGIC;
    M_AXI_0_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_0_wvalid : out STD_LOGIC;
    S_AXI_0_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_0_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_arready : out STD_LOGIC;
    S_AXI_0_arvalid : in STD_LOGIC;
    S_AXI_0_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    S_AXI_0_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_0_awready : out STD_LOGIC;
    S_AXI_0_awvalid : in STD_LOGIC;
    S_AXI_0_bready : in STD_LOGIC;
    S_AXI_0_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_bvalid : out STD_LOGIC;
    S_AXI_0_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_rready : in STD_LOGIC;
    S_AXI_0_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_0_rvalid : out STD_LOGIC;
    S_AXI_0_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_0_wready : out STD_LOGIC;
    S_AXI_0_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_0_wvalid : in STD_LOGIC;
    S_AXI_ACLK : in STD_LOGIC;
    S_AXI_ARESETN : in STD_LOGIC;
    interrupt_0 : out STD_LOGIC
  );

end accelerator_soc_hardware_acceletor_w_0_2;

architecture stub of accelerator_soc_hardware_acceletor_w_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_AXI_0_araddr[31:0],M_AXI_0_arprot[2:0],M_AXI_0_arready,M_AXI_0_arvalid,M_AXI_0_awaddr[31:0],M_AXI_0_awprot[2:0],M_AXI_0_awready,M_AXI_0_awvalid,M_AXI_0_bready,M_AXI_0_bresp[1:0],M_AXI_0_bvalid,M_AXI_0_rdata[31:0],M_AXI_0_rready,M_AXI_0_rresp[1:0],M_AXI_0_rvalid,M_AXI_0_wdata[31:0],M_AXI_0_wready,M_AXI_0_wstrb[3:0],M_AXI_0_wvalid,S_AXI_0_araddr[4:0],S_AXI_0_arprot[2:0],S_AXI_0_arready,S_AXI_0_arvalid,S_AXI_0_awaddr[4:0],S_AXI_0_awprot[2:0],S_AXI_0_awready,S_AXI_0_awvalid,S_AXI_0_bready,S_AXI_0_bresp[1:0],S_AXI_0_bvalid,S_AXI_0_rdata[31:0],S_AXI_0_rready,S_AXI_0_rresp[1:0],S_AXI_0_rvalid,S_AXI_0_wdata[31:0],S_AXI_0_wready,S_AXI_0_wstrb[3:0],S_AXI_0_wvalid,S_AXI_ACLK,S_AXI_ARESETN,interrupt_0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hardware_acceletor_wrapper,Vivado 2018.3";
begin
end;
