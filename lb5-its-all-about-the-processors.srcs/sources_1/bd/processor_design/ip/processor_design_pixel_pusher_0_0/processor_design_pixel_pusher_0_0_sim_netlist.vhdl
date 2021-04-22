-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:31:25 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_pixel_pusher_0_0/processor_design_pixel_pusher_0_0_sim_netlist.vhdl
-- Design      : processor_design_pixel_pusher_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_pixel_pusher_0_0_pixel_pusher is
  port (
    r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
    en : in STD_LOGIC;
    hcount : in STD_LOGIC_VECTOR ( 3 downto 0 );
    vid : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 15 downto 0 );
    clk : in STD_LOGIC;
    vs : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_pixel_pusher_0_0_pixel_pusher : entity is "pixel_pusher";
end processor_design_pixel_pusher_0_0_pixel_pusher;

architecture STRUCTURE of processor_design_pixel_pusher_0_0_pixel_pusher is
  signal \^addr\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal addr_count : STD_LOGIC;
  signal \addr_count[11]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count[11]_i_4_n_0\ : STD_LOGIC;
  signal \addr_count[3]_i_2_n_0\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_1\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_4\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_5\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_6\ : STD_LOGIC;
  signal \addr_count_reg[11]_i_3_n_7\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \addr_count_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \addr_count_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \r[4]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_addr_count_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  addr(11 downto 0) <= \^addr\(11 downto 0);
\addr_count[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => en,
      I1 => vs,
      I2 => \addr_count[11]_i_4_n_0\,
      O => \addr_count[11]_i_1_n_0\
    );
\addr_count[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => en,
      I1 => hcount(3),
      I2 => hcount(2),
      I3 => hcount(0),
      I4 => hcount(1),
      I5 => vid,
      O => addr_count
    );
\addr_count[11]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => vid,
      I1 => hcount(1),
      I2 => hcount(0),
      I3 => hcount(2),
      I4 => hcount(3),
      O => \addr_count[11]_i_4_n_0\
    );
\addr_count[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^addr\(0),
      O => \addr_count[3]_i_2_n_0\
    );
\addr_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[3]_i_1_n_7\,
      Q => \^addr\(0),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[11]_i_3_n_5\,
      Q => \^addr\(10),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[11]_i_3_n_4\,
      Q => \^addr\(11),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_count_reg[7]_i_1_n_0\,
      CO(3) => \NLW_addr_count_reg[11]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \addr_count_reg[11]_i_3_n_1\,
      CO(1) => \addr_count_reg[11]_i_3_n_2\,
      CO(0) => \addr_count_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_count_reg[11]_i_3_n_4\,
      O(2) => \addr_count_reg[11]_i_3_n_5\,
      O(1) => \addr_count_reg[11]_i_3_n_6\,
      O(0) => \addr_count_reg[11]_i_3_n_7\,
      S(3 downto 0) => \^addr\(11 downto 8)
    );
\addr_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[3]_i_1_n_6\,
      Q => \^addr\(1),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[3]_i_1_n_5\,
      Q => \^addr\(2),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[3]_i_1_n_4\,
      Q => \^addr\(3),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addr_count_reg[3]_i_1_n_0\,
      CO(2) => \addr_count_reg[3]_i_1_n_1\,
      CO(1) => \addr_count_reg[3]_i_1_n_2\,
      CO(0) => \addr_count_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \addr_count_reg[3]_i_1_n_4\,
      O(2) => \addr_count_reg[3]_i_1_n_5\,
      O(1) => \addr_count_reg[3]_i_1_n_6\,
      O(0) => \addr_count_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^addr\(3 downto 1),
      S(0) => \addr_count[3]_i_2_n_0\
    );
\addr_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[7]_i_1_n_7\,
      Q => \^addr\(4),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[7]_i_1_n_6\,
      Q => \^addr\(5),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[7]_i_1_n_5\,
      Q => \^addr\(6),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[7]_i_1_n_4\,
      Q => \^addr\(7),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \addr_count_reg[3]_i_1_n_0\,
      CO(3) => \addr_count_reg[7]_i_1_n_0\,
      CO(2) => \addr_count_reg[7]_i_1_n_1\,
      CO(1) => \addr_count_reg[7]_i_1_n_2\,
      CO(0) => \addr_count_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \addr_count_reg[7]_i_1_n_4\,
      O(2) => \addr_count_reg[7]_i_1_n_5\,
      O(1) => \addr_count_reg[7]_i_1_n_6\,
      O(0) => \addr_count_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^addr\(7 downto 4)
    );
\addr_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[11]_i_3_n_7\,
      Q => \^addr\(8),
      R => \addr_count[11]_i_1_n_0\
    );
\addr_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => addr_count,
      D => \addr_count_reg[11]_i_3_n_6\,
      Q => \^addr\(9),
      R => \addr_count[11]_i_1_n_0\
    );
\b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(0),
      Q => b(0),
      R => \r[4]_i_1_n_0\
    );
\b_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(1),
      Q => b(1),
      R => \r[4]_i_1_n_0\
    );
\b_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(2),
      Q => b(2),
      R => \r[4]_i_1_n_0\
    );
\b_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(3),
      Q => b(3),
      R => \r[4]_i_1_n_0\
    );
\b_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(4),
      Q => b(4),
      R => \r[4]_i_1_n_0\
    );
\g_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(5),
      Q => g(0),
      R => \r[4]_i_1_n_0\
    );
\g_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(6),
      Q => g(1),
      R => \r[4]_i_1_n_0\
    );
\g_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(7),
      Q => g(2),
      R => \r[4]_i_1_n_0\
    );
\g_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(8),
      Q => g(3),
      R => \r[4]_i_1_n_0\
    );
\g_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(9),
      Q => g(4),
      R => \r[4]_i_1_n_0\
    );
\g_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(10),
      Q => g(5),
      R => \r[4]_i_1_n_0\
    );
\r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => en,
      I1 => hcount(3),
      I2 => hcount(2),
      I3 => hcount(0),
      I4 => hcount(1),
      I5 => vid,
      O => \r[4]_i_1_n_0\
    );
\r_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(11),
      Q => r(0),
      R => \r[4]_i_1_n_0\
    );
\r_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(12),
      Q => r(1),
      R => \r[4]_i_1_n_0\
    );
\r_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(13),
      Q => r(2),
      R => \r[4]_i_1_n_0\
    );
\r_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(14),
      Q => r(3),
      R => \r[4]_i_1_n_0\
    );
\r_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => en,
      D => pixel(15),
      Q => r(4),
      R => \r[4]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_pixel_pusher_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    vs : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hcount : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_pixel_pusher_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_pixel_pusher_0_0 : entity is "processor_design_pixel_pusher_0_0,pixel_pusher,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_pixel_pusher_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_pixel_pusher_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_pixel_pusher_0_0 : entity is "pixel_pusher,Vivado 2018.2";
end processor_design_pixel_pusher_0_0;

architecture STRUCTURE of processor_design_pixel_pusher_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
begin
U0: entity work.processor_design_pixel_pusher_0_0_pixel_pusher
     port map (
      addr(11 downto 0) => addr(11 downto 0),
      b(4 downto 0) => b(4 downto 0),
      clk => clk,
      en => en,
      g(5 downto 0) => g(5 downto 0),
      hcount(3 downto 0) => hcount(9 downto 6),
      pixel(15 downto 0) => pixel(15 downto 0),
      r(4 downto 0) => r(4 downto 0),
      vid => vid,
      vs => vs
    );
end STRUCTURE;
