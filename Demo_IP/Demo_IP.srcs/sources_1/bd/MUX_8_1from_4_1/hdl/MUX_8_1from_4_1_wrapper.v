//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 10:25:59 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target MUX_8_1from_4_1_wrapper.bd
//Design      : MUX_8_1from_4_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MUX_8_1from_4_1_wrapper
   (I0,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    Mux_out,
    S0,
    S1,
    S2);
  input I0;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  output Mux_out;
  input S0;
  input S1;
  input S2;

  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire Mux_out;
  wire S0;
  wire S1;
  wire S2;

  MUX_8_1from_4_1 MUX_8_1from_4_1_i
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .Mux_out(Mux_out),
        .S0(S0),
        .S1(S1),
        .S2(S2));
endmodule
