//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Tue Jun 11 11:33:16 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target barrel_shifter_4_bit.bd
//Design      : barrel_shifter_4_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "barrel_shifter_4_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=barrel_shifter_4_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=4,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "barrel_shifter_4_bit.hwdef" *) 
module barrel_shifter_4_bit
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

  wire MUX_4_1_0_Mux_out;
  wire MUX_4_1_1_Mux_out;
  wire MUX_4_1_2_Mux_out;
  wire MUX_4_1_3_Mux_out;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire S1_0_1;
  wire S_0_0_1;

  assign Mux_out_0 = MUX_4_1_0_Mux_out;
  assign Mux_out_1 = MUX_4_1_1_Mux_out;
  assign Mux_out_2 = MUX_4_1_2_Mux_out;
  assign Mux_out_3 = MUX_4_1_3_Mux_out;
  assign Net = I1;
  assign Net1 = I2;
  assign Net2 = I0;
  assign Net3 = I3;
  assign S1_0_1 = S1;
  assign S_0_0_1 = S0;
  barrel_shifter_4_bit_MUX_4_1_0_0 MUX_4_1_0
       (.I0(Net2),
        .I1(Net),
        .I2(Net1),
        .I3(Net3),
        .Mux_out(MUX_4_1_0_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
  barrel_shifter_4_bit_MUX_4_1_0_1 MUX_4_1_1
       (.I0(Net),
        .I1(Net1),
        .I2(Net3),
        .I3(Net2),
        .Mux_out(MUX_4_1_1_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
  barrel_shifter_4_bit_MUX_4_1_0_2 MUX_4_1_2
       (.I0(Net1),
        .I1(Net3),
        .I2(Net2),
        .I3(Net),
        .Mux_out(MUX_4_1_2_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
  barrel_shifter_4_bit_MUX_4_1_0_3 MUX_4_1_3
       (.I0(Net3),
        .I1(Net2),
        .I2(Net),
        .I3(Net1),
        .Mux_out(MUX_4_1_3_Mux_out),
        .S1(S1_0_1),
        .S_0(S_0_0_1));
endmodule
