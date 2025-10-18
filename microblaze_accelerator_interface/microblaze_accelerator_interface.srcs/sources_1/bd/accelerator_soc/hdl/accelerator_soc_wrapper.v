//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue May 13 17:31:01 2025
//Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
//Command     : generate_target accelerator_soc_wrapper.bd
//Design      : accelerator_soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module accelerator_soc_wrapper
   (clk_in1_0,
    irq_0,
    reset,
    uart2_pl_rxd,
    uart2_pl_txd);
  input clk_in1_0;
  output irq_0;
  input reset;
  input uart2_pl_rxd;
  output uart2_pl_txd;

  wire clk_in1_0;
  wire irq_0;
  wire reset;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;

  accelerator_soc accelerator_soc_i
       (.clk_in1_0(clk_in1_0),
        .irq_0(irq_0),
        .reset(reset),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd));
endmodule
