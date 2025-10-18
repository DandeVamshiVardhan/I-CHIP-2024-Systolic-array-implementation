-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Mon May 12 08:52:33 2025
-- Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {E:/vivado files/axi master and slave implementation/axi-4
--               implmentation.srcs/sources_1/bd/hardware_acceletor/ip/hardware_acceletor_axi_master_0_0/hardware_acceletor_axi_master_0_0_stub.vhdl}
-- Design      : hardware_acceletor_axi_master_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu7ev-ffvc1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity hardware_acceletor_axi_master_0_0 is
  Port ( 
    start_convolution : in STD_LOGIC;
    image_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    image_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    kernel_address : in STD_LOGIC_VECTOR ( 31 downto 0 );
    kernel_dimension : in STD_LOGIC_VECTOR ( 7 downto 0 );
    output_image_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    start_writing_fsm : in STD_LOGIC;
    input_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    weight_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    output_memory_address : out STD_LOGIC_VECTOR ( 7 downto 0 );
    capture_image_data : out STD_LOGIC;
    capture_kernel_data : out STD_LOGIC;
    ended_reading : out STD_LOGIC;
    ended_convolution : out STD_LOGIC;
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

end hardware_acceletor_axi_master_0_0;

architecture stub of hardware_acceletor_axi_master_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "start_convolution,image_address[31:0],image_dimension[7:0],kernel_address[31:0],kernel_dimension[7:0],output_image_data[31:0],start_writing_fsm,input_memory_address[7:0],weight_memory_address[7:0],output_memory_address[7:0],capture_image_data,capture_kernel_data,ended_reading,ended_convolution,rd_data[31:0],M_AXI_ACLK,M_AXI_ARESETN,M_AXI_AWADDR[31:0],M_AXI_AWPROT[2:0],M_AXI_AWVALID,M_AXI_AWREADY,M_AXI_WDATA[31:0],M_AXI_WSTRB[3:0],M_AXI_WVALID,M_AXI_WREADY,M_AXI_BRESP[1:0],M_AXI_BVALID,M_AXI_BREADY,M_AXI_ARADDR[31:0],M_AXI_ARPROT[2:0],M_AXI_ARVALID,M_AXI_ARREADY,M_AXI_RDATA[31:0],M_AXI_RRESP[1:0],M_AXI_RVALID,M_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "axi_master,Vivado 2018.3";
begin
end;
