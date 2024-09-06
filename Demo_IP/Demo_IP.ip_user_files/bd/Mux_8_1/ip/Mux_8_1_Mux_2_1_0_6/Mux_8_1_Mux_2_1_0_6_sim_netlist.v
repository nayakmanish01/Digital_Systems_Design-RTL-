// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Sat Jun  1 17:45:03 2024
// Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top Mux_8_1_Mux_2_1_0_6 -prefix
//               Mux_8_1_Mux_2_1_0_6_ Mux_8_1_Mux_2_1_0_0_sim_netlist.v
// Design      : Mux_8_1_Mux_2_1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Mux_8_1_Mux_2_1_0_6_Mux_2_1
   (I,
    A,
    S,
    B);
  output I;
  input A;
  input S;
  input B;

  wire A;
  wire B;
  wire I;
  wire S;

  LUT3 #(
    .INIT(8'hE2)) 
    I__0
       (.I0(A),
        .I1(S),
        .I2(B),
        .O(I));
endmodule

(* CHECK_LICENSE_TYPE = "Mux_8_1_Mux_2_1_0_0,Mux_2_1,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "Mux_2_1,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Mux_8_1_Mux_2_1_0_6
   (S,
    A,
    B,
    I);
  input S;
  input A;
  input B;
  output I;

  wire A;
  wire B;
  wire I;
  wire S;

  Mux_8_1_Mux_2_1_0_6_Mux_2_1 inst
       (.A(A),
        .B(B),
        .I(I),
        .S(S));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
