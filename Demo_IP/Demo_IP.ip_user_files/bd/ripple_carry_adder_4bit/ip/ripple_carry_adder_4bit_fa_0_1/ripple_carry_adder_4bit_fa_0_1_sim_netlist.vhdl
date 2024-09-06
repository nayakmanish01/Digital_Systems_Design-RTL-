-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 19:18:54 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/B.Tech/RTL_resources/verilog FPGA course
--               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/ripple_carry_adder_4bit/ip/ripple_carry_adder_4bit_fa_0_1/ripple_carry_adder_4bit_fa_0_1_sim_netlist.vhdl}
-- Design      : ripple_carry_adder_4bit_fa_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ripple_carry_adder_4bit_fa_0_1_fa is
  port (
    sout : out STD_LOGIC;
    cout : out STD_LOGIC;
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ripple_carry_adder_4bit_fa_0_1_fa : entity is "fa";
end ripple_carry_adder_4bit_fa_0_1_fa;

architecture STRUCTURE of ripple_carry_adder_4bit_fa_0_1_fa is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of cout_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of sout_INST_0 : label is "soft_lutpair0";
begin
cout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => b,
      I1 => cin,
      I2 => a,
      O => cout
    );
sout_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => a,
      I1 => b,
      I2 => cin,
      O => sout
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ripple_carry_adder_4bit_fa_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    cin : in STD_LOGIC;
    cout : out STD_LOGIC;
    sout : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ripple_carry_adder_4bit_fa_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ripple_carry_adder_4bit_fa_0_1 : entity is "ripple_carry_adder_4bit_fa_0_1,fa,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ripple_carry_adder_4bit_fa_0_1 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ripple_carry_adder_4bit_fa_0_1 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ripple_carry_adder_4bit_fa_0_1 : entity is "fa,Vivado 2019.1";
end ripple_carry_adder_4bit_fa_0_1;

architecture STRUCTURE of ripple_carry_adder_4bit_fa_0_1 is
begin
inst: entity work.ripple_carry_adder_4bit_fa_0_1_fa
     port map (
      a => a,
      b => b,
      cin => cin,
      cout => cout,
      sout => sout
    );
end STRUCTURE;
