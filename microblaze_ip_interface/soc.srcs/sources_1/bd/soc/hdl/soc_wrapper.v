//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri May 23 22:29:56 2025
//Host        : LAPTOP-7P8LB6PD running 64-bit major release  (build 9200)
//Command     : generate_target soc_wrapper.bd
//Design      : soc_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module soc_wrapper
   (clk_100MHz,
    convolution_interrupt_0,
    interrupt,
    multiplication_interrupt_0,
    reset,
    uart2_pl_rxd,
    uart2_pl_txd);
  input clk_100MHz;
  output convolution_interrupt_0;
  output interrupt;
  output multiplication_interrupt_0;
  input reset;
  input uart2_pl_rxd;
  output uart2_pl_txd;

  wire clk_100MHz;
  wire convolution_interrupt_0;
  wire interrupt;
  wire multiplication_interrupt_0;
  wire reset;
  wire uart2_pl_rxd;
  wire uart2_pl_txd;

  soc soc_i
       (.clk_100MHz(clk_100MHz),
        .convolution_interrupt_0(convolution_interrupt_0),
        .interrupt(interrupt),
        .multiplication_interrupt_0(multiplication_interrupt_0),
        .reset(reset),
        .uart2_pl_rxd(uart2_pl_rxd),
        .uart2_pl_txd(uart2_pl_txd));
endmodule
