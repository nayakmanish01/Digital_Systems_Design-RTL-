-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 18:24:36 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/B.Tech/RTL_resources/verilog FPGA course
--               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/shift_reg/ip/shift_reg_dff_0_3/shift_reg_dff_0_3_stub.vhdl}
-- Design      : shift_reg_dff_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg_dff_0_3 is
  Port ( 
    din : in STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    q : out STD_LOGIC
  );

end shift_reg_dff_0_3;

architecture stub of shift_reg_dff_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "din,clk,clr,q";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dff,Vivado 2019.1";
begin
end;
