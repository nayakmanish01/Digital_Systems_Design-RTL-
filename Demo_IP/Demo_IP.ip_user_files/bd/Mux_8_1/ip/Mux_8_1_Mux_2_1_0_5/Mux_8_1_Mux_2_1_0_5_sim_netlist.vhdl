-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 17:45:03 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top Mux_8_1_Mux_2_1_0_5 -prefix
--               Mux_8_1_Mux_2_1_0_5_ Mux_8_1_Mux_2_1_0_0_sim_netlist.vhdl
-- Design      : Mux_8_1_Mux_2_1_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mux_8_1_Mux_2_1_0_5_Mux_2_1 is
  port (
    I : out STD_LOGIC;
    A : in STD_LOGIC;
    S : in STD_LOGIC;
    B : in STD_LOGIC
  );
end Mux_8_1_Mux_2_1_0_5_Mux_2_1;

architecture STRUCTURE of Mux_8_1_Mux_2_1_0_5_Mux_2_1 is
begin
\I__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => A,
      I1 => S,
      I2 => B,
      O => I
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Mux_8_1_Mux_2_1_0_5 is
  port (
    S : in STD_LOGIC;
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    I : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Mux_8_1_Mux_2_1_0_5 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Mux_8_1_Mux_2_1_0_5 : entity is "Mux_8_1_Mux_2_1_0_0,Mux_2_1,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of Mux_8_1_Mux_2_1_0_5 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of Mux_8_1_Mux_2_1_0_5 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of Mux_8_1_Mux_2_1_0_5 : entity is "Mux_2_1,Vivado 2019.1";
end Mux_8_1_Mux_2_1_0_5;

architecture STRUCTURE of Mux_8_1_Mux_2_1_0_5 is
begin
inst: entity work.Mux_8_1_Mux_2_1_0_5_Mux_2_1
     port map (
      A => A,
      B => B,
      I => I,
      S => S
    );
end STRUCTURE;
