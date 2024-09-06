// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  1 18:24:36 2024
// Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/B.Tech/RTL_resources/verilog FPGA course
//               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/shift_reg/ip/shift_reg_dff_0_3/shift_reg_dff_0_3_stub.v}
// Design      : shift_reg_dff_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dff,Vivado 2019.1" *)
module shift_reg_dff_0_3(din, clk, clr, q)
/* synthesis syn_black_box black_box_pad_pin="din,clk,clr,q" */;
  input din;
  input clk;
  input clr;
  output q;
endmodule
