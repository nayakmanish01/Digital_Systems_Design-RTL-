//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 10:25:59 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target MUX_8_1from_4_1.bd
//Design      : MUX_8_1from_4_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MUX_8_1from_4_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MUX_8_1from_4_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=2,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MUX_8_1from_4_1.hwdef" *) 
module MUX_8_1from_4_1
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

  wire I0_1;
  wire I1_1;
  wire I2_1;
  wire I3_1;
  wire I4_1;
  wire I5_1;
  wire I6_1;
  wire I7_1;
  wire MUX_4_1_0_Mux_out;
  wire MUX_4_1_1_Mux_out;
  wire Mux_2_1_0_I;
  wire S1_0_1;
  wire S_0_0_1;
  wire S_0_1;

  assign I0_1 = I0;
  assign I1_1 = I1;
  assign I2_1 = I2;
  assign I3_1 = I3;
  assign I4_1 = I4;
  assign I5_1 = I5;
  assign I6_1 = I6;
  assign I7_1 = I7;
  assign Mux_out = Mux_2_1_0_I;
  assign S1_0_1 = S1;
  assign S_0_0_1 = S0;
  assign S_0_1 = S2;
  MUX_8_1from_4_1_MUX_4_1_0_0 MUX_4_1_0
       (.I0(I0_1),
        .I1(I1_1),
        .I2(I2_1),
        .I3(I3_1),
        .Mux_out(MUX_4_1_0_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
  MUX_8_1from_4_1_MUX_4_1_0_1 MUX_4_1_1
       (.I0(I4_1),
        .I1(I5_1),
        .I2(I6_1),
        .I3(I7_1),
        .Mux_out(MUX_4_1_1_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
  MUX_8_1from_4_1_Mux_2_1_0_0 Mux_2_1_0
       (.A(MUX_4_1_0_Mux_out),
        .B(MUX_4_1_1_Mux_out),
        .I(Mux_2_1_0_I),
        .S(S_0_1));
endmodule
