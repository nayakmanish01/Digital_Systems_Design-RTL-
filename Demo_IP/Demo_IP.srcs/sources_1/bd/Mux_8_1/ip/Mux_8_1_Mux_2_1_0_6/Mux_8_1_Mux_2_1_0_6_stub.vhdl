-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 17:45:03 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top Mux_8_1_Mux_2_1_0_6 -prefix
--               Mux_8_1_Mux_2_1_0_6_ Mux_8_1_Mux_2_1_0_0_stub.vhdl
-- Design      : Mux_8_1_Mux_2_1_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux_8_1_Mux_2_1_0_6 is
  Port ( 
    S : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    I : out STD_LOGIC
  );

end Mux_8_1_Mux_2_1_0_6;

architecture stub of Mux_8_1_Mux_2_1_0_6 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "S,A,B,I";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Mux_2_1,Vivado 2019.1";
begin
end;
