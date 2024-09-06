//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 10:10:57 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target MUX_4_1_wrapper.bd
//Design      : MUX_4_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MUX_4_1_wrapper
   (I0,
    I1,
    I2,
    I3,
    Mux_out,
    S1,
    S_0);
  input I0;
  input I1;
  input I2;
  input I3;
  output Mux_out;
  input S1;
  input S_0;

  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire Mux_out;
  wire S1;
  wire S_0;

  MUX_4_1 MUX_4_1_i
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .Mux_out(Mux_out),
        .S1(S1),
        .S_0(S_0));
endmodule
