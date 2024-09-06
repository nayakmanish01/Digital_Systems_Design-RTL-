//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 18:22:46 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target shift_reg_wrapper.bd
//Design      : shift_reg_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module shift_reg_wrapper
   (clk_0,
    clr_0,
    din_0,
    q_0);
  input clk_0;
  input clr_0;
  input din_0;
  output q_0;

  wire clk_0;
  wire clr_0;
  wire din_0;
  wire q_0;

  shift_reg shift_reg_i
       (.clk_0(clk_0),
        .clr_0(clr_0),
        .din_0(din_0),
        .q_0(q_0));
endmodule
