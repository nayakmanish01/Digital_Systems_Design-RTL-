//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 10:10:57 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target MUX_4_1.bd
//Design      : MUX_4_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MUX_4_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MUX_4_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MUX_4_1.hwdef" *) 
module MUX_4_1
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

  wire I0_1;
  wire I1_1;
  wire I2_1;
  wire I3_1;
  wire Mux_2_1_0_I;
  wire Mux_2_1_1_I;
  wire Mux_2_1_2_I;
  wire S_0_1;
  wire S_0_2;

  assign I0_1 = I0;
  assign I1_1 = I1;
  assign I2_1 = I2;
  assign I3_1 = I3;
  assign Mux_out = Mux_2_1_2_I;
  assign S_0_1 = S1;
  assign S_0_2 = S_0;
  MUX_4_1_Mux_2_1_0_0 Mux_2_1_0
       (.A(I0_1),
        .B(I1_1),
        .I(Mux_2_1_0_I),
        .S(S_0_2));
  MUX_4_1_Mux_2_1_0_1 Mux_2_1_1
       (.A(I2_1),
        .B(I3_1),
        .I(Mux_2_1_1_I),
        .S(S_0_2));
  MUX_4_1_Mux_2_1_0_2 Mux_2_1_2
       (.A(Mux_2_1_0_I),
        .B(Mux_2_1_1_I),
        .I(Mux_2_1_2_I),
        .S(S_0_1));
endmodule
