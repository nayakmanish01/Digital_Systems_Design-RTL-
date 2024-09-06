// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  1 19:18:13 2024
// Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {d:/B.Tech/RTL_resources/verilog FPGA course
//               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/ripple_carry_adder_4bit/ip/ripple_carry_adder_4bit_fa_0_0/ripple_carry_adder_4bit_fa_0_0_stub.v}
// Design      : ripple_carry_adder_4bit_fa_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fa,Vivado 2019.1" *)
module ripple_carry_adder_4bit_fa_0_0(a, b, cin, cout, sout)
/* synthesis syn_black_box black_box_pad_pin="a,b,cin,cout,sout" */;
  input a;
  input b;
  input cin;
  output cout;
  output sout;
endmodule
