//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Sep  5 16:40:00 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target BCD_7_seg_display_wrapper.bd
//Design      : BCD_7_seg_display_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module BCD_7_seg_display_wrapper
   (Bin,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input [3:0]Bin;
  output [0:0]a;
  output [0:0]b;
  output [0:0]c;
  output [0:0]d;
  output [0:0]e;
  output [0:0]f;
  output [0:0]g;

  wire [3:0]Bin;
  wire [0:0]a;
  wire [0:0]b;
  wire [0:0]c;
  wire [0:0]d;
  wire [0:0]e;
  wire [0:0]f;
  wire [0:0]g;

  BCD_7_seg_display BCD_7_seg_display_i
       (.Bin(Bin),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g));
endmodule
