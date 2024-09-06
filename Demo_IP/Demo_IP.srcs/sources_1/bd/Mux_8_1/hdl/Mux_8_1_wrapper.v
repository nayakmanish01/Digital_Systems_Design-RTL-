//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 17:44:30 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target Mux_8_1_wrapper.bd
//Design      : Mux_8_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Mux_8_1_wrapper
   (A_0,
    A_1,
    A_2,
    A_3,
    B_0,
    B_1,
    B_2,
    B_3,
    I_0,
    S_0,
    S_1,
    S_2);
  input A_0;
  input A_1;
  input A_2;
  input A_3;
  input B_0;
  input B_1;
  input B_2;
  input B_3;
  output I_0;
  input S_0;
  input S_1;
  input S_2;

  wire A_0;
  wire A_1;
  wire A_2;
  wire A_3;
  wire B_0;
  wire B_1;
  wire B_2;
  wire B_3;
  wire I_0;
  wire S_0;
  wire S_1;
  wire S_2;

  Mux_8_1 Mux_8_1_i
       (.A_0(A_0),
        .A_1(A_1),
        .A_2(A_2),
        .A_3(A_3),
        .B_0(B_0),
        .B_1(B_1),
        .B_2(B_2),
        .B_3(B_3),
        .I_0(I_0),
        .S_0(S_0),
        .S_1(S_1),
        .S_2(S_2));
endmodule
