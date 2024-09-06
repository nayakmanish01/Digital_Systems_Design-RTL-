//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 19:17:43 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target ripple_carry_adder_4bit_wrapper.bd
//Design      : ripple_carry_adder_4bit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ripple_carry_adder_4bit_wrapper
   (Sout,
    a_in,
    b_in,
    cin,
    cout);
  output [3:0]Sout;
  input [3:0]a_in;
  input [3:0]b_in;
  input cin;
  output cout;

  wire [3:0]Sout;
  wire [3:0]a_in;
  wire [3:0]b_in;
  wire cin;
  wire cout;

  ripple_carry_adder_4bit ripple_carry_adder_4bit_i
       (.Sout(Sout),
        .a_in(a_in),
        .b_in(b_in),
        .cin(cin),
        .cout(cout));
endmodule
