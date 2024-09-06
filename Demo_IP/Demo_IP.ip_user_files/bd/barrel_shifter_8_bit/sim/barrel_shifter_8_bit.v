//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Thu Sep  5 17:52:48 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target barrel_shifter_8_bit.bd
//Design      : barrel_shifter_8_bit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "barrel_shifter_8_bit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=barrel_shifter_8_bit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=43,numReposBlks=42,numNonXlnxBlks=0,numHierBlks=1,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "barrel_shifter_8_bit.hwdef" *) 
module barrel_shifter_8_bit
   (Din,
    Dout,
    lr,
    s_0,
    s_1,
    s_2);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.DIN DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.DIN, LAYERED_METADATA undef" *) input [7:0]Din;
  output [7:0]Dout;
  input lr;
  input s_0;
  input s_1;
  input s_2;

  wire [7:0]Din_1;
  wire Mux_2_1_0_I;
  wire Mux_2_1_10_I;
  wire Mux_2_1_11_I;
  wire Mux_2_1_12_I;
  wire Mux_2_1_13_I;
  wire Mux_2_1_14_I;
  wire Mux_2_1_15_I;
  wire Mux_2_1_16_I;
  wire Mux_2_1_17_I;
  wire Mux_2_1_18_I;
  wire Mux_2_1_19_I;
  wire Mux_2_1_1_I;
  wire Mux_2_1_20_I;
  wire Mux_2_1_21_I;
  wire Mux_2_1_22_I;
  wire Mux_2_1_23_I;
  wire Mux_2_1_24_I;
  wire Mux_2_1_25_I;
  wire Mux_2_1_26_I;
  wire Mux_2_1_27_I;
  wire Mux_2_1_28_I;
  wire Mux_2_1_29_I;
  wire Mux_2_1_2_I;
  wire Mux_2_1_30_I;
  wire Mux_2_1_31_I;
  wire Mux_2_1_3_I;
  wire Mux_2_1_4_I;
  wire Mux_2_1_5_I;
  wire Mux_2_1_6_I;
  wire Mux_2_1_7_I;
  wire Mux_2_1_8_I;
  wire Mux_2_1_9_I;
  wire Net;
  wire Net1;
  wire Net2;
  wire Net3;
  wire [7:0]xlconcat_0_dout;
  wire [0:0]xlconstant_0_dout;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;

  assign Din_1 = Din[7:0];
  assign Dout[7:0] = xlconcat_0_dout;
  assign Net = s_0;
  assign Net1 = s_1;
  assign Net2 = s_2;
  assign Net3 = lr;
  barrel_shifter_8_bit_Mux_2_1_0_0 Mux_2_1_0
       (.A(xlslice_0_Dout),
        .B(xlslice_7_Dout),
        .I(Mux_2_1_0_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_0_1 Mux_2_1_1
       (.A(xlslice_1_Dout),
        .B(xlslice_6_Dout),
        .I(Mux_2_1_1_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_2_0 Mux_2_1_10
       (.A(Mux_2_1_2_I),
        .B(Mux_2_1_3_I),
        .I(Mux_2_1_10_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_3_0 Mux_2_1_11
       (.A(Mux_2_1_3_I),
        .B(Mux_2_1_4_I),
        .I(Mux_2_1_11_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_4_0 Mux_2_1_12
       (.A(Mux_2_1_4_I),
        .B(Mux_2_1_5_I),
        .I(Mux_2_1_12_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_5_0 Mux_2_1_13
       (.A(Mux_2_1_5_I),
        .B(Mux_2_1_6_I),
        .I(Mux_2_1_13_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_6_0 Mux_2_1_14
       (.A(Mux_2_1_6_I),
        .B(Mux_2_1_7_I),
        .I(Mux_2_1_14_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_7_0 Mux_2_1_15
       (.A(Mux_2_1_7_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_15_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_0_9 Mux_2_1_16
       (.A(Mux_2_1_8_I),
        .B(Mux_2_1_10_I),
        .I(Mux_2_1_16_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_1_1 Mux_2_1_17
       (.A(Mux_2_1_9_I),
        .B(Mux_2_1_11_I),
        .I(Mux_2_1_17_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_10_0 Mux_2_1_18
       (.A(Mux_2_1_10_I),
        .B(Mux_2_1_12_I),
        .I(Mux_2_1_18_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_11_0 Mux_2_1_19
       (.A(Mux_2_1_11_I),
        .B(Mux_2_1_13_I),
        .I(Mux_2_1_19_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_0_2 Mux_2_1_2
       (.A(xlslice_2_Dout),
        .B(xlslice_5_Dout),
        .I(Mux_2_1_2_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_12_0 Mux_2_1_20
       (.A(Mux_2_1_12_I),
        .B(Mux_2_1_14_I),
        .I(Mux_2_1_20_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_13_0 Mux_2_1_21
       (.A(Mux_2_1_13_I),
        .B(Mux_2_1_15_I),
        .I(Mux_2_1_21_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_14_0 Mux_2_1_22
       (.A(Mux_2_1_14_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_22_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_15_0 Mux_2_1_23
       (.A(Mux_2_1_15_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_23_I),
        .S(Net1));
  barrel_shifter_8_bit_Mux_2_1_2_1 Mux_2_1_24
       (.A(Mux_2_1_16_I),
        .B(Mux_2_1_20_I),
        .I(Mux_2_1_24_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_3_1 Mux_2_1_25
       (.A(Mux_2_1_17_I),
        .B(Mux_2_1_21_I),
        .I(Mux_2_1_25_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_4_1 Mux_2_1_26
       (.A(Mux_2_1_18_I),
        .B(Mux_2_1_22_I),
        .I(Mux_2_1_26_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_5_1 Mux_2_1_27
       (.A(Mux_2_1_19_I),
        .B(Mux_2_1_23_I),
        .I(Mux_2_1_27_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_6_1 Mux_2_1_28
       (.A(Mux_2_1_20_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_28_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_7_1 Mux_2_1_29
       (.A(Mux_2_1_21_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_29_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_0_3 Mux_2_1_3
       (.A(xlslice_3_Dout),
        .B(xlslice_4_Dout),
        .I(Mux_2_1_3_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_8_0 Mux_2_1_30
       (.A(Mux_2_1_22_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_30_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_9_0 Mux_2_1_31
       (.A(Mux_2_1_23_I),
        .B(xlconstant_0_dout),
        .I(Mux_2_1_31_I),
        .S(Net2));
  barrel_shifter_8_bit_Mux_2_1_0_4 Mux_2_1_4
       (.A(xlslice_4_Dout),
        .B(xlslice_3_Dout),
        .I(Mux_2_1_4_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_0_5 Mux_2_1_5
       (.A(xlslice_5_Dout),
        .B(xlslice_2_Dout),
        .I(Mux_2_1_5_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_0_6 Mux_2_1_6
       (.A(xlslice_6_Dout),
        .B(xlslice_1_Dout),
        .I(Mux_2_1_6_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_0_7 Mux_2_1_7
       (.A(xlslice_7_Dout),
        .B(xlslice_0_Dout),
        .I(Mux_2_1_7_I),
        .S(Net3));
  barrel_shifter_8_bit_Mux_2_1_0_8 Mux_2_1_8
       (.A(Mux_2_1_0_I),
        .B(Mux_2_1_1_I),
        .I(Mux_2_1_8_I),
        .S(Net));
  barrel_shifter_8_bit_Mux_2_1_1_0 Mux_2_1_9
       (.A(Mux_2_1_1_I),
        .B(Mux_2_1_2_I),
        .I(Mux_2_1_9_I),
        .S(Net));
  input_split_imp_AE0FWQ input_split
       (.Din(Din_1),
        .Dout(xlslice_0_Dout),
        .Dout1(xlslice_1_Dout),
        .Dout2(xlslice_2_Dout),
        .Dout3(xlslice_3_Dout),
        .Dout4(xlslice_4_Dout),
        .Dout5(xlslice_5_Dout),
        .Dout6(xlslice_6_Dout),
        .Dout7(xlslice_7_Dout));
  barrel_shifter_8_bit_xlconcat_0_0 xlconcat_0
       (.In0(Mux_2_1_31_I),
        .In1(Mux_2_1_30_I),
        .In2(Mux_2_1_29_I),
        .In3(Mux_2_1_28_I),
        .In4(Mux_2_1_27_I),
        .In5(Mux_2_1_26_I),
        .In6(Mux_2_1_25_I),
        .In7(Mux_2_1_24_I),
        .dout(xlconcat_0_dout));
  barrel_shifter_8_bit_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module input_split_imp_AE0FWQ
   (Din,
    Dout,
    Dout1,
    Dout2,
    Dout3,
    Dout4,
    Dout5,
    Dout6,
    Dout7);
  input [7:0]Din;
  output [0:0]Dout;
  output [0:0]Dout1;
  output [0:0]Dout2;
  output [0:0]Dout3;
  output [0:0]Dout4;
  output [0:0]Dout5;
  output [0:0]Dout6;
  output [0:0]Dout7;

  wire [7:0]Din_1;
  wire [0:0]xlslice_0_Dout;
  wire [0:0]xlslice_1_Dout;
  wire [0:0]xlslice_2_Dout;
  wire [0:0]xlslice_3_Dout;
  wire [0:0]xlslice_4_Dout;
  wire [0:0]xlslice_5_Dout;
  wire [0:0]xlslice_6_Dout;
  wire [0:0]xlslice_7_Dout;

  assign Din_1 = Din[7:0];
  assign Dout[0] = xlslice_0_Dout;
  assign Dout1[0] = xlslice_1_Dout;
  assign Dout2[0] = xlslice_2_Dout;
  assign Dout3[0] = xlslice_3_Dout;
  assign Dout4[0] = xlslice_4_Dout;
  assign Dout5[0] = xlslice_5_Dout;
  assign Dout6[0] = xlslice_6_Dout;
  assign Dout7[0] = xlslice_7_Dout;
  barrel_shifter_8_bit_xlslice_0_0 xlslice_0
       (.Din(Din_1),
        .Dout(xlslice_0_Dout));
  barrel_shifter_8_bit_xlslice_0_1 xlslice_1
       (.Din(Din_1),
        .Dout(xlslice_1_Dout));
  barrel_shifter_8_bit_xlslice_0_2 xlslice_2
       (.Din(Din_1),
        .Dout(xlslice_2_Dout));
  barrel_shifter_8_bit_xlslice_2_0 xlslice_3
       (.Din(Din_1),
        .Dout(xlslice_3_Dout));
  barrel_shifter_8_bit_xlslice_2_1 xlslice_4
       (.Din(Din_1),
        .Dout(xlslice_4_Dout));
  barrel_shifter_8_bit_xlslice_2_2 xlslice_5
       (.Din(Din_1),
        .Dout(xlslice_5_Dout));
  barrel_shifter_8_bit_xlslice_5_0 xlslice_6
       (.Din(Din_1),
        .Dout(xlslice_6_Dout));
  barrel_shifter_8_bit_xlslice_5_1 xlslice_7
       (.Din(Din_1),
        .Dout(xlslice_7_Dout));
endmodule
