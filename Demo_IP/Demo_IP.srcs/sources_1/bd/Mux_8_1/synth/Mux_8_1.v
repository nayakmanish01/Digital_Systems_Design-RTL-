//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 17:44:30 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target Mux_8_1.bd
//Design      : Mux_8_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Mux_8_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Mux_8_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "Mux_8_1.hwdef" *) 
module Mux_8_1
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

  wire A_0_1;
  wire A_1_1;
  wire A_2_1;
  wire A_3_1;
  wire B_0_1;
  wire B_1_1;
  wire B_2_1;
  wire B_3_1;
  wire Mux_2_1_0_I;
  wire Mux_2_1_1_I;
  wire Mux_2_1_2_I;
  wire Mux_2_1_3_I;
  wire Mux_2_1_4_I;
  wire Mux_2_1_5_I;
  wire Mux_2_1_6_I;
  wire S_0_1;
  wire S_1_1;
  wire S_2_1;

  assign A_0_1 = A_0;
  assign A_1_1 = A_1;
  assign A_2_1 = A_2;
  assign A_3_1 = A_3;
  assign B_0_1 = B_0;
  assign B_1_1 = B_1;
  assign B_2_1 = B_2;
  assign B_3_1 = B_3;
  assign I_0 = Mux_2_1_6_I;
  assign S_0_1 = S_0;
  assign S_1_1 = S_1;
  assign S_2_1 = S_2;
  Mux_8_1_Mux_2_1_0_0 Mux_2_1_0
       (.A(A_0_1),
        .B(B_0_1),
        .I(Mux_2_1_0_I),
        .S(S_0_1));
  Mux_8_1_Mux_2_1_0_1 Mux_2_1_1
       (.A(A_1_1),
        .B(B_1_1),
        .I(Mux_2_1_1_I),
        .S(S_0_1));
  Mux_8_1_Mux_2_1_0_2 Mux_2_1_2
       (.A(A_2_1),
        .B(B_2_1),
        .I(Mux_2_1_2_I),
        .S(S_0_1));
  Mux_8_1_Mux_2_1_0_3 Mux_2_1_3
       (.A(A_3_1),
        .B(B_3_1),
        .I(Mux_2_1_3_I),
        .S(S_0_1));
  Mux_8_1_Mux_2_1_0_4 Mux_2_1_4
       (.A(Mux_2_1_2_I),
        .B(Mux_2_1_3_I),
        .I(Mux_2_1_4_I),
        .S(S_1_1));
  Mux_8_1_Mux_2_1_0_5 Mux_2_1_5
       (.A(Mux_2_1_0_I),
        .B(Mux_2_1_1_I),
        .I(Mux_2_1_5_I),
        .S(S_1_1));
  Mux_8_1_Mux_2_1_0_6 Mux_2_1_6
       (.A(Mux_2_1_5_I),
        .B(Mux_2_1_4_I),
        .I(Mux_2_1_6_I),
        .S(S_2_1));
endmodule
