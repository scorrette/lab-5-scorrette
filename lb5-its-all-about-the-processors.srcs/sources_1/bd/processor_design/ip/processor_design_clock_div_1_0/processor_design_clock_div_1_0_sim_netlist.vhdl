-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:12:18 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_clock_div_1_0/processor_design_clock_div_1_0_sim_netlist.vhdl
-- Design      : processor_design_clock_div_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_clock_div_1_0_clock_div is
  port (
    div : out STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_clock_div_1_0_clock_div : entity is "clock_div";
end processor_design_clock_div_1_0_clock_div;

architecture STRUCTURE of processor_design_clock_div_1_0_clock_div is
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair0";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(0),
      I1 => cnt(2),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt(1),
      I1 => cnt(0),
      I2 => cnt(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2),
      R => '0'
    );
div_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => cnt(2),
      Q => div,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_clock_div_1_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_clock_div_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_clock_div_1_0 : entity is "processor_design_clock_div_1_0,clock_div,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_clock_div_1_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_clock_div_1_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_clock_div_1_0 : entity is "clock_div,Vivado 2018.2";
end processor_design_clock_div_1_0;

architecture STRUCTURE of processor_design_clock_div_1_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
begin
U0: entity work.processor_design_clock_div_1_0_clock_div
     port map (
      clk => clk,
      div => div
    );
end STRUCTURE;
