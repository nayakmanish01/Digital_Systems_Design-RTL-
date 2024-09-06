//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 11:33:16 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target barrel_shifter_4_bit_wrapper.bd
//Design      : barrel_shifter_4_bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module barrel_shifter_4_bit_wrapper
   (I0,
    I1,
    I2,
    I3,
    Mux_out_0,
    Mux_out_1,
    Mux_out_2,
    Mux_out_3,
    S0,
    S1);
  input I0;
  input I1;
  input I2;
  input I3;
  output Mux_out_0;
  output Mux_out_1;
  output Mux_out_2;
  output Mux_out_3;
  input S0;
  input S1;

  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire Mux_out_0;
  wire Mux_out_1;
  wire Mux_out_2;
  wire Mux_out_3;
  wire S0;
  wire S1;

  barrel_shifter_4_bit barrel_shifter_4_bit_i
       (.I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .Mux_out_0(Mux_out_0),
        .Mux_out_1(Mux_out_1),
        .Mux_out_2(Mux_out_2),
        .Mux_out_3(Mux_out_3),
        .S0(S0),
        .S1(S1));
endmodule
