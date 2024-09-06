-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 19:19:31 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {d:/B.Tech/RTL_resources/verilog FPGA course
--               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/ripple_carry_adder_4bit/ip/ripple_carry_adder_4bit_fa_0_2/ripple_carry_adder_4bit_fa_0_2_stub.vhdl}
-- Design      : ripple_carry_adder_4bit_fa_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_carry_adder_4bit_fa_0_2 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sout : out STD_LOGIC
  );

end ripple_carry_adder_4bit_fa_0_2;

architecture stub of ripple_carry_adder_4bit_fa_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,cin,cout,sout";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "fa,Vivado 2019.1";
begin
end;
