//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
//Date        : Sat Jun  1 18:22:46 2024
//Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
//Command     : generate_target shift_reg.bd
//Design      : shift_reg
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "shift_reg,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=shift_reg,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "shift_reg.hwdef" *) 
module shift_reg
   (clk_0,
    clr_0,
    din_0,
    q_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN shift_reg_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_0;
  input clr_0;
  input din_0;
  output q_0;

  wire clk_0_1;
  wire clr_0_1;
  wire dff_0_q;
  wire dff_1_q;
  wire dff_2_q;
  wire dff_3_q;
  wire din_0_1;

  assign clk_0_1 = clk_0;
  assign clr_0_1 = clr_0;
  assign din_0_1 = din_0;
  assign q_0 = dff_3_q;
  shift_reg_dff_0_0 dff_0
       (.clk(clk_0_1),
        .clr(clr_0_1),
        .din(din_0_1),
        .q(dff_0_q));
  shift_reg_dff_0_1 dff_1
       (.clk(clk_0_1),
        .clr(clr_0_1),
        .din(dff_0_q),
        .q(dff_1_q));
  shift_reg_dff_0_2 dff_2
       (.clk(clk_0_1),
        .clr(clr_0_1),
        .din(dff_1_q),
        .q(dff_2_q));
  shift_reg_dff_0_3 dff_3
       (.clk(clk_0_1),
        .clr(clr_0_1),
        .din(dff_2_q),
        .q(dff_3_q));
endmodule
