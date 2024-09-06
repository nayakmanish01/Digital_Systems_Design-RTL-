-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Sat Jun  1 18:23:13 2024
-- Host        : LAPTOP-NR6LMCBI running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {d:/B.Tech/RTL_resources/verilog FPGA course
--               Projects/Demo_IP/Demo_IP.srcs/sources_1/bd/shift_reg/ip/shift_reg_dff_0_0/shift_reg_dff_0_0_sim_netlist.vhdl}
-- Design      : shift_reg_dff_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg_dff_0_0_dff is
  port (
    q : out STD_LOGIC;
    clk : in STD_LOGIC;
    din : in STD_LOGIC;
    clr : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of shift_reg_dff_0_0_dff : entity is "dff";
end shift_reg_dff_0_0_dff;

architecture STRUCTURE of shift_reg_dff_0_0_dff is
  signal q_i_1_n_0 : STD_LOGIC;
begin
q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => din,
      I1 => clr,
      O => q_i_1_n_0
    );
q_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => q_i_1_n_0,
      Q => q,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shift_reg_dff_0_0 is
  port (
    din : in STD_LOGIC;
    clk : in STD_LOGIC;
    clr : in STD_LOGIC;
    q : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shift_reg_dff_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shift_reg_dff_0_0 : entity is "shift_reg_dff_0_0,dff,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shift_reg_dff_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of shift_reg_dff_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shift_reg_dff_0_0 : entity is "dff,Vivado 2019.1";
end shift_reg_dff_0_0;

architecture STRUCTURE of shift_reg_dff_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN shift_reg_clk_0, INSERT_VIP 0";
begin
inst: entity work.shift_reg_dff_0_0_dff
     port map (
      clk => clk,
      clr => clr,
      din => din,
      q => q
    );
end STRUCTURE;
