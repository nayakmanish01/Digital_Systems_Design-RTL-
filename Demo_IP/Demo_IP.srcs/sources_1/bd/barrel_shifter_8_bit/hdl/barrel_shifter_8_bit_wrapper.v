//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Sep  5 17:52:48 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target barrel_shifter_8_bit_wrapper.bd
//Design      : barrel_shifter_8_bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module barrel_shifter_8_bit_wrapper
   (Din,
    Dout,
    lr,
    s_0,
    s_1,
    s_2);
  input [7:0]Din;
  output [7:0]Dout;
  input lr;
  input s_0;
  input s_1;
  input s_2;

  wire [7:0]Din;
  wire [7:0]Dout;
  wire lr;
  wire s_0;
  wire s_1;
  wire s_2;

  barrel_shifter_8_bit barrel_shifter_8_bit_i
       (.Din(Din),
        .Dout(Dout),
        .lr(lr),
        .s_0(s_0),
        .s_1(s_1),
        .s_2(s_2));
endmodule
