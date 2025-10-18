// (c) Copyright 1995-2025 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:controller:1.0
// IP Revision: 1

(* X_CORE_INFO = "controller,Vivado 2018.3" *)
(* CHECK_LICENSE_TYPE = "hardware_acceletor_controller_0_0,controller,{}" *)
(* CORE_GENERATION_INFO = "hardware_acceletor_controller_0_0,controller,{x_ipProduct=Vivado 2018.3,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=controller,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,IDLE=000,RD_IN_DATA=001,IN_PRCSS=010,WT_IN_OUT_MEM=011,START_WR=100}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module hardware_acceletor_controller_0_0 (
  clk,
  arestn,
  reading_ended,
  image_dimension,
  kernel_dimension,
  vir_wr_enable,
  start_wr_fsm,
  ou_wr_enable,
  in_mem_rd_addr,
  wt_mem_rd_addr,
  vr_mem_wr_addr,
  ou_mem_rd_addr,
  ou_mem_wr_addr,
  rd_address
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN hardware_acceletor_S_AXI_ACLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire arestn;
input wire reading_ended;
input wire [7 : 0] image_dimension;
input wire [7 : 0] kernel_dimension;
output wire vir_wr_enable;
output wire start_wr_fsm;
output wire ou_wr_enable;
output wire [7 : 0] in_mem_rd_addr;
output wire [7 : 0] wt_mem_rd_addr;
output wire [7 : 0] vr_mem_wr_addr;
output wire [7 : 0] ou_mem_rd_addr;
output wire [7 : 0] ou_mem_wr_addr;
output wire [4 : 0] rd_address;

  controller #(
    .IDLE(3'B000),
    .RD_IN_DATA(3'B001),
    .IN_PRCSS(3'B010),
    .WT_IN_OUT_MEM(3'B011),
    .START_WR(3'B100)
  ) inst (
    .clk(clk),
    .arestn(arestn),
    .reading_ended(reading_ended),
    .image_dimension(image_dimension),
    .kernel_dimension(kernel_dimension),
    .vir_wr_enable(vir_wr_enable),
    .start_wr_fsm(start_wr_fsm),
    .ou_wr_enable(ou_wr_enable),
    .in_mem_rd_addr(in_mem_rd_addr),
    .wt_mem_rd_addr(wt_mem_rd_addr),
    .vr_mem_wr_addr(vr_mem_wr_addr),
    .ou_mem_rd_addr(ou_mem_rd_addr),
    .ou_mem_wr_addr(ou_mem_wr_addr),
    .rd_address(rd_address)
  );
endmodule
