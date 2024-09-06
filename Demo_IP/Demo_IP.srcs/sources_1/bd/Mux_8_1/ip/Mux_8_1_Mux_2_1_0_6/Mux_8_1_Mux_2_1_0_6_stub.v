// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  1 17:45:03 2024
// Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top Mux_8_1_Mux_2_1_0_6 -prefix
//               Mux_8_1_Mux_2_1_0_6_ Mux_8_1_Mux_2_1_0_0_stub.v
// Design      : Mux_8_1_Mux_2_1_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Mux_2_1,Vivado 2019.1" *)
module Mux_8_1_Mux_2_1_0_6(S, A, B, I)
/* synthesis syn_black_box black_box_pad_pin="S,A,B,I" */;
  input S;
  input A;
  input B;
  output I;
endmodule
