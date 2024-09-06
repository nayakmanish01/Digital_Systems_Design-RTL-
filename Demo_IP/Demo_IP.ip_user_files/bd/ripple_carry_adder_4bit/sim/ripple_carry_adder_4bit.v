//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 19:17:43 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target ripple_carry_adder_4bit.bd
//Design      : ripple_carry_adder_4bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module hier_0_imp_J7018U
   (Dout,
    Dout1,
    Dout2,
    Dout3,
    a_in);
  output [0:0]Dout;
  output [0:0]Dout1;
  output [0:0]Dout2;
  output [0:0]Dout3;
  input [3:0]a_in;

  wire [3:0]a_in_1;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;

  assign Dout[0] = xlslice_0_Dout;
  assign Dout1[0] = xlslice_1_Dout;
  assign Dout2[0] = xlslice_2_Dout;
  assign Dout3[0] = xlslice_3_Dout;
  assign a_in_1 = a_in[3:0];
  ripple_carry_adder_4bit_xlslice_0_0 xlslice_0
       (.Din(a_in_1),
        .Dout(xlslice_0_Dout));
  ripple_carry_adder_4bit_xlslice_0_1 xlslice_1
       (.Din(a_in_1),
        .Dout(xlslice_1_Dout));
  ripple_carry_adder_4bit_xlslice_0_2 xlslice_2
       (.Din(a_in_1),
        .Dout(xlslice_2_Dout));
  ripple_carry_adder_4bit_xlslice_0_3 xlslice_3
       (.Din(a_in_1),
        .Dout(xlslice_3_Dout));
endmodule

module hier_1_imp_1IE51EX
   (Dout,
    Dout1,
    Dout2,
    Dout3,
    b_in);
  output [0:0]Dout;
  output [0:0]Dout1;
  output [0:0]Dout2;
  output [0:0]Dout3;
  input [3:0]b_in;

  wire [3:0]b_in_1;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;

  assign Dout[0] = xlslice_4_Dout;
  assign Dout1[0] = xlslice_5_Dout;
  assign Dout2[0] = xlslice_7_Dout;
  assign Dout3[0] = xlslice_6_Dout;
  assign b_in_1 = b_in[3:0];
  ripple_carry_adder_4bit_xlslice_0_4 xlslice_4
       (.Din(b_in_1),
        .Dout(xlslice_4_Dout));
  ripple_carry_adder_4bit_xlslice_1_0 xlslice_5
       (.Din(b_in_1),
        .Dout(xlslice_5_Dout));
  ripple_carry_adder_4bit_xlslice_2_0 xlslice_6
       (.Din(b_in_1),
        .Dout(xlslice_6_Dout));
  ripple_carry_adder_4bit_xlslice_3_0 xlslice_7
       (.Din(b_in_1),
        .Dout(xlslice_7_Dout));
endmodule

(* CORE_GENERATION_INFO = "ripple_carry_adder_4bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ripple_carry_adder_4bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "ripple_carry_adder_4bit.hwdef" *) 
module ripple_carry_adder_4bit
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

  wire [3:0]a_in_1;
  wire [3:0]b_in_1;
  wire cin_0_1;
  wire fa_0_cout;
  wire fa_0_sout;
  wire fa_1_cout;
  wire fa_1_sout;
  wire fa_2_cout;
  wire fa_2_sout;
  wire fa_3_cout;
  wire fa_3_sout;
  wire [3:0]xlconcat_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;

  assign Sout[3:0] = xlconcat_0_dout;
  assign a_in_1 = a_in[3:0];
  assign b_in_1 = b_in[3:0];
  assign cin_0_1 = cin;
  assign cout = fa_0_cout;
  ripple_carry_adder_4bit_fa_0_0 fa_0
       (.a(xlslice_3_Dout),
        .b(xlslice_6_Dout),
        .cin(fa_1_cout),
        .cout(fa_0_cout),
        .sout(fa_0_sout));
  ripple_carry_adder_4bit_fa_0_1 fa_1
       (.a(xlslice_2_Dout),
        .b(xlslice_7_Dout),
        .cin(fa_3_cout),
        .cout(fa_1_cout),
        .sout(fa_1_sout));
  ripple_carry_adder_4bit_fa_0_2 fa_2
       (.a(xlslice_0_Dout),
        .b(xlslice_4_Dout),
        .cin(cin_0_1),
        .cout(fa_2_cout),
        .sout(fa_2_sout));
  ripple_carry_adder_4bit_fa_0_3 fa_3
       (.a(xlslice_1_Dout),
        .b(xlslice_5_Dout),
        .cin(fa_2_cout),
        .cout(fa_3_cout),
        .sout(fa_3_sout));
  hier_0_imp_J7018U hier_0
       (.Dout(xlslice_0_Dout),
        .Dout1(xlslice_1_Dout),
        .Dout2(xlslice_2_Dout),
        .Dout3(xlslice_3_Dout),
        .a_in(a_in_1));
  hier_1_imp_1IE51EX hier_1
       (.Dout(xlslice_4_Dout),
        .Dout1(xlslice_5_Dout),
        .Dout2(xlslice_7_Dout),
        .Dout3(xlslice_6_Dout),
        .b_in(b_in_1));
  ripple_carry_adder_4bit_xlconcat_0_0 xlconcat_0
       (.In0(fa_2_sout),
        .In1(fa_3_sout),
        .In2(fa_1_sout),
        .In3(fa_0_sout),
        .dout(xlconcat_0_dout));
endmodule
