//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Sep  5 16:40:00 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target BCD_7_seg_display.bd
//Design      : BCD_7_seg_display
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "BCD_7_seg_display,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=BCD_7_seg_display,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "BCD_7_seg_display.hwdef" *) 
module BCD_7_seg_display
   (Bin,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.BIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.BIN, LAYERED_METADATA undef" *) input [3:0]Bin;
  output [0:0]a;
  output [0:0]b;
  output [0:0]c;
  output [0:0]d;
  output [0:0]e;
  output [0:0]f;
  output [0:0]g;

  wire [6:0]BCD_to_7_seg_0_sout;
  wire [3:0]Bin_1;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;

  assign Bin_1 = Bin[3:0];
  assign a[0] = xlslice_0_Dout;
  assign b[0] = xlslice_1_Dout;
  assign c[0] = xlslice_2_Dout;
  assign d[0] = xlslice_3_Dout;
  assign e[0] = xlslice_4_Dout;
  assign f[0] = xlslice_5_Dout;
  assign g[0] = xlslice_6_Dout;
  BCD_7_seg_display_BCD_to_7_seg_0_0 BCD_to_7_seg_0
       (.bin(Bin_1),
        .sout(BCD_to_7_seg_0_sout));
  bus_split_imp_1S6DXH5 bus_split
       (.Din(BCD_to_7_seg_0_sout),
        .a(xlslice_0_Dout),
        .b(xlslice_1_Dout),
        .c(xlslice_2_Dout),
        .d(xlslice_3_Dout),
        .e(xlslice_4_Dout),
        .f(xlslice_5_Dout),
        .g(xlslice_6_Dout));
endmodule

module bus_split_imp_1S6DXH5
   (Din,
    a,
    b,
    c,
    d,
    e,
    f,
    g);
  input [6:0]Din;
  output [0:0]a;
  output [0:0]b;
  output [0:0]c;
  output [0:0]d;
  output [0:0]e;
  output [0:0]f;
  output [0:0]g;

  wire [6:0]BCD_to_7_seg_0_sout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;

  assign BCD_to_7_seg_0_sout = Din[6:0];
  assign a[0] = xlslice_0_Dout;
  assign b[0] = xlslice_1_Dout;
  assign c[0] = xlslice_2_Dout;
  assign d[0] = xlslice_3_Dout;
  assign e[0] = xlslice_4_Dout;
  assign f[0] = xlslice_5_Dout;
  assign g[0] = xlslice_6_Dout;
  BCD_7_seg_display_xlslice_0_2 xlslice_0
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_0_Dout));
  BCD_7_seg_display_xlslice_0_3 xlslice_1
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_1_Dout));
  BCD_7_seg_display_xlslice_0_4 xlslice_2
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_2_Dout));
  BCD_7_seg_display_xlslice_0_5 xlslice_3
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_3_Dout));
  BCD_7_seg_display_xlslice_0_6 xlslice_4
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_4_Dout));
  BCD_7_seg_display_xlslice_0_7 xlslice_5
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_5_Dout));
  BCD_7_seg_display_xlslice_0_8 xlslice_6
       (.Din(BCD_to_7_seg_0_sout),
        .Dout(xlslice_6_Dout));
endmodule
