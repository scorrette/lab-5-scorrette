-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:12:18 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_my_alu_0_0/processor_design_my_alu_0_0_sim_netlist.vhdl
-- Design      : processor_design_my_alu_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_my_alu_0_0_my_alu is
  port (
    F : out STD_LOGIC_VECTOR ( 15 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_1_sp_1 : in STD_LOGIC;
    Opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    A_2_sp_1 : in STD_LOGIC;
    \A[1]_0\ : in STD_LOGIC;
    A_3_sp_1 : in STD_LOGIC;
    \A[1]_1\ : in STD_LOGIC;
    A_4_sp_1 : in STD_LOGIC;
    \A[1]_2\ : in STD_LOGIC;
    A_5_sp_1 : in STD_LOGIC;
    \A[1]_3\ : in STD_LOGIC;
    A_6_sp_1 : in STD_LOGIC;
    \A[1]_4\ : in STD_LOGIC;
    A_7_sp_1 : in STD_LOGIC;
    \A[1]_5\ : in STD_LOGIC;
    A_8_sp_1 : in STD_LOGIC;
    \A[1]_6\ : in STD_LOGIC;
    A_9_sp_1 : in STD_LOGIC;
    \A[1]_7\ : in STD_LOGIC;
    A_10_sp_1 : in STD_LOGIC;
    \A[1]_8\ : in STD_LOGIC;
    A_11_sp_1 : in STD_LOGIC;
    \A[1]_9\ : in STD_LOGIC;
    A_12_sp_1 : in STD_LOGIC;
    \A[1]_10\ : in STD_LOGIC;
    A_13_sp_1 : in STD_LOGIC;
    \A[1]_11\ : in STD_LOGIC;
    A_14_sp_1 : in STD_LOGIC;
    \A[1]_12\ : in STD_LOGIC;
    A_15_sp_1 : in STD_LOGIC;
    \A[1]_13\ : in STD_LOGIC;
    \A[15]_0\ : in STD_LOGIC;
    \A[1]_14\ : in STD_LOGIC;
    data3 : in STD_LOGIC_VECTOR ( 14 downto 0 );
    data2 : in STD_LOGIC_VECTOR ( 14 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_my_alu_0_0_my_alu : entity is "my_alu";
end processor_design_my_alu_0_0_my_alu;

architecture STRUCTURE of processor_design_my_alu_0_0_my_alu is
  signal A_10_sn_1 : STD_LOGIC;
  signal A_11_sn_1 : STD_LOGIC;
  signal A_12_sn_1 : STD_LOGIC;
  signal A_13_sn_1 : STD_LOGIC;
  signal A_14_sn_1 : STD_LOGIC;
  signal A_15_sn_1 : STD_LOGIC;
  signal A_1_sn_1 : STD_LOGIC;
  signal A_2_sn_1 : STD_LOGIC;
  signal A_3_sn_1 : STD_LOGIC;
  signal A_4_sn_1 : STD_LOGIC;
  signal A_5_sn_1 : STD_LOGIC;
  signal A_6_sn_1 : STD_LOGIC;
  signal A_7_sn_1 : STD_LOGIC;
  signal A_8_sn_1 : STD_LOGIC;
  signal A_9_sn_1 : STD_LOGIC;
  signal \F0__45_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \F0__45_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \F0__45_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \F0__45_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \F0__45_carry__0_n_0\ : STD_LOGIC;
  signal \F0__45_carry__0_n_1\ : STD_LOGIC;
  signal \F0__45_carry__0_n_2\ : STD_LOGIC;
  signal \F0__45_carry__0_n_3\ : STD_LOGIC;
  signal \F0__45_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \F0__45_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \F0__45_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \F0__45_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \F0__45_carry__1_n_0\ : STD_LOGIC;
  signal \F0__45_carry__1_n_1\ : STD_LOGIC;
  signal \F0__45_carry__1_n_2\ : STD_LOGIC;
  signal \F0__45_carry__1_n_3\ : STD_LOGIC;
  signal \F0__45_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \F0__45_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \F0__45_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \F0__45_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \F0__45_carry__2_n_1\ : STD_LOGIC;
  signal \F0__45_carry__2_n_2\ : STD_LOGIC;
  signal \F0__45_carry__2_n_3\ : STD_LOGIC;
  signal \F0__45_carry_i_1_n_0\ : STD_LOGIC;
  signal \F0__45_carry_i_2_n_0\ : STD_LOGIC;
  signal \F0__45_carry_i_3_n_0\ : STD_LOGIC;
  signal \F0__45_carry_i_4_n_0\ : STD_LOGIC;
  signal \F0__45_carry_n_0\ : STD_LOGIC;
  signal \F0__45_carry_n_1\ : STD_LOGIC;
  signal \F0__45_carry_n_2\ : STD_LOGIC;
  signal \F0__45_carry_n_3\ : STD_LOGIC;
  signal \F0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \F0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \F0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \F0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \F0_carry__0_n_0\ : STD_LOGIC;
  signal \F0_carry__0_n_1\ : STD_LOGIC;
  signal \F0_carry__0_n_2\ : STD_LOGIC;
  signal \F0_carry__0_n_3\ : STD_LOGIC;
  signal \F0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \F0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \F0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \F0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \F0_carry__1_n_0\ : STD_LOGIC;
  signal \F0_carry__1_n_1\ : STD_LOGIC;
  signal \F0_carry__1_n_2\ : STD_LOGIC;
  signal \F0_carry__1_n_3\ : STD_LOGIC;
  signal \F0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \F0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \F0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \F0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \F0_carry__2_n_1\ : STD_LOGIC;
  signal \F0_carry__2_n_2\ : STD_LOGIC;
  signal \F0_carry__2_n_3\ : STD_LOGIC;
  signal F0_carry_i_1_n_0 : STD_LOGIC;
  signal F0_carry_i_2_n_0 : STD_LOGIC;
  signal F0_carry_i_3_n_0 : STD_LOGIC;
  signal F0_carry_i_4_n_0 : STD_LOGIC;
  signal F0_carry_n_0 : STD_LOGIC;
  signal F0_carry_n_1 : STD_LOGIC;
  signal F0_carry_n_2 : STD_LOGIC;
  signal F0_carry_n_3 : STD_LOGIC;
  signal \F[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[6]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[7]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \F[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \X_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \X_carry__0_n_1\ : STD_LOGIC;
  signal \X_carry__0_n_2\ : STD_LOGIC;
  signal \X_carry__0_n_3\ : STD_LOGIC;
  signal X_carry_i_1_n_0 : STD_LOGIC;
  signal X_carry_i_2_n_0 : STD_LOGIC;
  signal X_carry_i_3_n_0 : STD_LOGIC;
  signal X_carry_i_4_n_0 : STD_LOGIC;
  signal X_carry_i_5_n_0 : STD_LOGIC;
  signal X_carry_i_6_n_0 : STD_LOGIC;
  signal X_carry_i_7_n_0 : STD_LOGIC;
  signal X_carry_i_8_n_0 : STD_LOGIC;
  signal X_carry_n_0 : STD_LOGIC;
  signal X_carry_n_1 : STD_LOGIC;
  signal X_carry_n_2 : STD_LOGIC;
  signal X_carry_n_3 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal data5 : STD_LOGIC;
  signal \NLW_F0__45_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_F0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_X_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_X_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  A_10_sn_1 <= A_10_sp_1;
  A_11_sn_1 <= A_11_sp_1;
  A_12_sn_1 <= A_12_sp_1;
  A_13_sn_1 <= A_13_sp_1;
  A_14_sn_1 <= A_14_sp_1;
  A_15_sn_1 <= A_15_sp_1;
  A_1_sn_1 <= A_1_sp_1;
  A_2_sn_1 <= A_2_sp_1;
  A_3_sn_1 <= A_3_sp_1;
  A_4_sn_1 <= A_4_sp_1;
  A_5_sn_1 <= A_5_sp_1;
  A_6_sn_1 <= A_6_sp_1;
  A_7_sn_1 <= A_7_sp_1;
  A_8_sn_1 <= A_8_sp_1;
  A_9_sn_1 <= A_9_sp_1;
\F0__45_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \F0__45_carry_n_0\,
      CO(2) => \F0__45_carry_n_1\,
      CO(1) => \F0__45_carry_n_2\,
      CO(0) => \F0__45_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \F0__45_carry_i_1_n_0\,
      S(2) => \F0__45_carry_i_2_n_0\,
      S(1) => \F0__45_carry_i_3_n_0\,
      S(0) => \F0__45_carry_i_4_n_0\
    );
\F0__45_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \F0__45_carry_n_0\,
      CO(3) => \F0__45_carry__0_n_0\,
      CO(2) => \F0__45_carry__0_n_1\,
      CO(1) => \F0__45_carry__0_n_2\,
      CO(0) => \F0__45_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \F0__45_carry__0_i_1_n_0\,
      S(2) => \F0__45_carry__0_i_2_n_0\,
      S(1) => \F0__45_carry__0_i_3_n_0\,
      S(0) => \F0__45_carry__0_i_4_n_0\
    );
\F0__45_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \F0__45_carry__0_i_1_n_0\
    );
\F0__45_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => \F0__45_carry__0_i_2_n_0\
    );
\F0__45_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \F0__45_carry__0_i_3_n_0\
    );
\F0__45_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => \F0__45_carry__0_i_4_n_0\
    );
\F0__45_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \F0__45_carry__0_n_0\,
      CO(3) => \F0__45_carry__1_n_0\,
      CO(2) => \F0__45_carry__1_n_1\,
      CO(1) => \F0__45_carry__1_n_2\,
      CO(0) => \F0__45_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \F0__45_carry__1_i_1_n_0\,
      S(2) => \F0__45_carry__1_i_2_n_0\,
      S(1) => \F0__45_carry__1_i_3_n_0\,
      S(0) => \F0__45_carry__1_i_4_n_0\
    );
\F0__45_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \F0__45_carry__1_i_1_n_0\
    );
\F0__45_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => \F0__45_carry__1_i_2_n_0\
    );
\F0__45_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => \F0__45_carry__1_i_3_n_0\
    );
\F0__45_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => \F0__45_carry__1_i_4_n_0\
    );
\F0__45_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \F0__45_carry__1_n_0\,
      CO(3) => \NLW_F0__45_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \F0__45_carry__2_n_1\,
      CO(1) => \F0__45_carry__2_n_2\,
      CO(0) => \F0__45_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(14 downto 12),
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \F0__45_carry__2_i_1_n_0\,
      S(2) => \F0__45_carry__2_i_2_n_0\,
      S(1) => \F0__45_carry__2_i_3_n_0\,
      S(0) => \F0__45_carry__2_i_4_n_0\
    );
\F0__45_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \F0__45_carry__2_i_1_n_0\
    );
\F0__45_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \F0__45_carry__2_i_2_n_0\
    );
\F0__45_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \F0__45_carry__2_i_3_n_0\
    );
\F0__45_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \F0__45_carry__2_i_4_n_0\
    );
\F0__45_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => \F0__45_carry_i_1_n_0\
    );
\F0__45_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => \F0__45_carry_i_2_n_0\
    );
\F0__45_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => \F0__45_carry_i_3_n_0\
    );
\F0__45_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => \F0__45_carry_i_4_n_0\
    );
F0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => F0_carry_n_0,
      CO(2) => F0_carry_n_1,
      CO(1) => F0_carry_n_2,
      CO(0) => F0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => A(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => F0_carry_i_1_n_0,
      S(2) => F0_carry_i_2_n_0,
      S(1) => F0_carry_i_3_n_0,
      S(0) => F0_carry_i_4_n_0
    );
\F0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => F0_carry_n_0,
      CO(3) => \F0_carry__0_n_0\,
      CO(2) => \F0_carry__0_n_1\,
      CO(1) => \F0_carry__0_n_2\,
      CO(0) => \F0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(7 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \F0_carry__0_i_1_n_0\,
      S(2) => \F0_carry__0_i_2_n_0\,
      S(1) => \F0_carry__0_i_3_n_0\,
      S(0) => \F0_carry__0_i_4_n_0\
    );
\F0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(7),
      I1 => B(7),
      O => \F0_carry__0_i_1_n_0\
    );
\F0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      O => \F0_carry__0_i_2_n_0\
    );
\F0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(5),
      I1 => B(5),
      O => \F0_carry__0_i_3_n_0\
    );
\F0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      O => \F0_carry__0_i_4_n_0\
    );
\F0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \F0_carry__0_n_0\,
      CO(3) => \F0_carry__1_n_0\,
      CO(2) => \F0_carry__1_n_1\,
      CO(1) => \F0_carry__1_n_2\,
      CO(0) => \F0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(11 downto 8),
      O(3 downto 0) => data0(11 downto 8),
      S(3) => \F0_carry__1_i_1_n_0\,
      S(2) => \F0_carry__1_i_2_n_0\,
      S(1) => \F0_carry__1_i_3_n_0\,
      S(0) => \F0_carry__1_i_4_n_0\
    );
\F0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(11),
      I1 => B(11),
      O => \F0_carry__1_i_1_n_0\
    );
\F0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      O => \F0_carry__1_i_2_n_0\
    );
\F0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(9),
      I1 => B(9),
      O => \F0_carry__1_i_3_n_0\
    );
\F0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      O => \F0_carry__1_i_4_n_0\
    );
\F0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \F0_carry__1_n_0\,
      CO(3) => \NLW_F0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \F0_carry__2_n_1\,
      CO(1) => \F0_carry__2_n_2\,
      CO(0) => \F0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => A(14 downto 12),
      O(3 downto 0) => data0(15 downto 12),
      S(3) => \F0_carry__2_i_1_n_0\,
      S(2) => \F0_carry__2_i_2_n_0\,
      S(1) => \F0_carry__2_i_3_n_0\,
      S(0) => \F0_carry__2_i_4_n_0\
    );
\F0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(15),
      I1 => B(15),
      O => \F0_carry__2_i_1_n_0\
    );
\F0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      O => \F0_carry__2_i_2_n_0\
    );
\F0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(13),
      I1 => B(13),
      O => \F0_carry__2_i_3_n_0\
    );
\F0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      O => \F0_carry__2_i_4_n_0\
    );
F0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(3),
      I1 => B(3),
      O => F0_carry_i_1_n_0
    );
F0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      O => F0_carry_i_2_n_0
    );
F0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(1),
      I1 => B(1),
      O => F0_carry_i_3_n_0
    );
F0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      O => F0_carry_i_4_n_0
    );
\F[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_1_sn_1,
      I1 => Opcode(3),
      I2 => \F[0]_INST_0_i_2_n_0\,
      I3 => Opcode(2),
      I4 => \F[0]_INST_0_i_3_n_0\,
      O => F(0)
    );
\F[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => A(1),
      I1 => Opcode(1),
      I2 => data5,
      I3 => Opcode(0),
      I4 => A(0),
      O => \F[0]_INST_0_i_2_n_0\
    );
\F[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74777444"
    )
        port map (
      I0 => A(0),
      I1 => Opcode(1),
      I2 => data1(0),
      I3 => Opcode(0),
      I4 => data0(0),
      O => \F[0]_INST_0_i_3_n_0\
    );
\F[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_11_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_9\,
      I3 => Opcode(2),
      I4 => \F[10]_INST_0_i_3_n_0\,
      O => F(10)
    );
\F[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(9),
      I1 => data2(9),
      I2 => Opcode(1),
      I3 => data1(10),
      I4 => Opcode(0),
      I5 => data0(10),
      O => \F[10]_INST_0_i_3_n_0\
    );
\F[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_12_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_10\,
      I3 => Opcode(2),
      I4 => \F[11]_INST_0_i_3_n_0\,
      O => F(11)
    );
\F[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(10),
      I1 => data2(10),
      I2 => Opcode(1),
      I3 => data1(11),
      I4 => Opcode(0),
      I5 => data0(11),
      O => \F[11]_INST_0_i_3_n_0\
    );
\F[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_13_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_11\,
      I3 => Opcode(2),
      I4 => \F[12]_INST_0_i_3_n_0\,
      O => F(12)
    );
\F[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(11),
      I1 => data2(11),
      I2 => Opcode(1),
      I3 => data1(12),
      I4 => Opcode(0),
      I5 => data0(12),
      O => \F[12]_INST_0_i_3_n_0\
    );
\F[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_14_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_12\,
      I3 => Opcode(2),
      I4 => \F[13]_INST_0_i_3_n_0\,
      O => F(13)
    );
\F[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(12),
      I1 => data2(12),
      I2 => Opcode(1),
      I3 => data1(13),
      I4 => Opcode(0),
      I5 => data0(13),
      O => \F[13]_INST_0_i_3_n_0\
    );
\F[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_15_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_13\,
      I3 => Opcode(2),
      I4 => \F[14]_INST_0_i_3_n_0\,
      O => F(14)
    );
\F[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(13),
      I1 => data2(13),
      I2 => Opcode(1),
      I3 => data1(14),
      I4 => Opcode(0),
      I5 => data0(14),
      O => \F[14]_INST_0_i_3_n_0\
    );
\F[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \A[15]_0\,
      I1 => Opcode(3),
      I2 => \A[1]_14\,
      I3 => Opcode(2),
      I4 => \F[15]_INST_0_i_3_n_0\,
      O => F(15)
    );
\F[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(14),
      I1 => data2(14),
      I2 => Opcode(1),
      I3 => data1(15),
      I4 => Opcode(0),
      I5 => data0(15),
      O => \F[15]_INST_0_i_3_n_0\
    );
\F[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_2_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_0\,
      I3 => Opcode(2),
      I4 => \F[1]_INST_0_i_3_n_0\,
      O => F(1)
    );
\F[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(0),
      I1 => data2(0),
      I2 => Opcode(1),
      I3 => data1(1),
      I4 => Opcode(0),
      I5 => data0(1),
      O => \F[1]_INST_0_i_3_n_0\
    );
\F[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_3_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_1\,
      I3 => Opcode(2),
      I4 => \F[2]_INST_0_i_3_n_0\,
      O => F(2)
    );
\F[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(1),
      I1 => data2(1),
      I2 => Opcode(1),
      I3 => data1(2),
      I4 => Opcode(0),
      I5 => data0(2),
      O => \F[2]_INST_0_i_3_n_0\
    );
\F[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_4_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_2\,
      I3 => Opcode(2),
      I4 => \F[3]_INST_0_i_3_n_0\,
      O => F(3)
    );
\F[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(2),
      I1 => data2(2),
      I2 => Opcode(1),
      I3 => data1(3),
      I4 => Opcode(0),
      I5 => data0(3),
      O => \F[3]_INST_0_i_3_n_0\
    );
\F[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_5_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_3\,
      I3 => Opcode(2),
      I4 => \F[4]_INST_0_i_3_n_0\,
      O => F(4)
    );
\F[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(3),
      I1 => data2(3),
      I2 => Opcode(1),
      I3 => data1(4),
      I4 => Opcode(0),
      I5 => data0(4),
      O => \F[4]_INST_0_i_3_n_0\
    );
\F[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_6_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_4\,
      I3 => Opcode(2),
      I4 => \F[5]_INST_0_i_3_n_0\,
      O => F(5)
    );
\F[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(4),
      I1 => data2(4),
      I2 => Opcode(1),
      I3 => data1(5),
      I4 => Opcode(0),
      I5 => data0(5),
      O => \F[5]_INST_0_i_3_n_0\
    );
\F[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_7_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_5\,
      I3 => Opcode(2),
      I4 => \F[6]_INST_0_i_3_n_0\,
      O => F(6)
    );
\F[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(5),
      I1 => data2(5),
      I2 => Opcode(1),
      I3 => data1(6),
      I4 => Opcode(0),
      I5 => data0(6),
      O => \F[6]_INST_0_i_3_n_0\
    );
\F[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_8_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_6\,
      I3 => Opcode(2),
      I4 => \F[7]_INST_0_i_3_n_0\,
      O => F(7)
    );
\F[7]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(6),
      I1 => data2(6),
      I2 => Opcode(1),
      I3 => data1(7),
      I4 => Opcode(0),
      I5 => data0(7),
      O => \F[7]_INST_0_i_3_n_0\
    );
\F[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_9_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_7\,
      I3 => Opcode(2),
      I4 => \F[8]_INST_0_i_3_n_0\,
      O => F(8)
    );
\F[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(7),
      I1 => data2(7),
      I2 => Opcode(1),
      I3 => data1(8),
      I4 => Opcode(0),
      I5 => data0(8),
      O => \F[8]_INST_0_i_3_n_0\
    );
\F[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => A_10_sn_1,
      I1 => Opcode(3),
      I2 => \A[1]_8\,
      I3 => Opcode(2),
      I4 => \F[9]_INST_0_i_3_n_0\,
      O => F(9)
    );
\F[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => data3(8),
      I1 => data2(8),
      I2 => Opcode(1),
      I3 => data1(9),
      I4 => Opcode(0),
      I5 => data0(9),
      O => \F[9]_INST_0_i_3_n_0\
    );
X_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => X_carry_n_0,
      CO(2) => X_carry_n_1,
      CO(1) => X_carry_n_2,
      CO(0) => X_carry_n_3,
      CYINIT => '0',
      DI(3) => X_carry_i_1_n_0,
      DI(2) => X_carry_i_2_n_0,
      DI(1) => X_carry_i_3_n_0,
      DI(0) => X_carry_i_4_n_0,
      O(3 downto 0) => NLW_X_carry_O_UNCONNECTED(3 downto 0),
      S(3) => X_carry_i_5_n_0,
      S(2) => X_carry_i_6_n_0,
      S(1) => X_carry_i_7_n_0,
      S(0) => X_carry_i_8_n_0
    );
\X_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => X_carry_n_0,
      CO(3) => data5,
      CO(2) => \X_carry__0_n_1\,
      CO(1) => \X_carry__0_n_2\,
      CO(0) => \X_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \X_carry__0_i_1_n_0\,
      DI(2) => \X_carry__0_i_2_n_0\,
      DI(1) => \X_carry__0_i_3_n_0\,
      DI(0) => \X_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_X_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \X_carry__0_i_5_n_0\,
      S(2) => \X_carry__0_i_6_n_0\,
      S(1) => \X_carry__0_i_7_n_0\,
      S(0) => \X_carry__0_i_8_n_0\
    );
\X_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(14),
      I1 => B(14),
      I2 => B(15),
      I3 => A(15),
      O => \X_carry__0_i_1_n_0\
    );
\X_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(12),
      I1 => B(12),
      I2 => B(13),
      I3 => A(13),
      O => \X_carry__0_i_2_n_0\
    );
\X_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(10),
      I1 => B(10),
      I2 => B(11),
      I3 => A(11),
      O => \X_carry__0_i_3_n_0\
    );
\X_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(8),
      I1 => B(8),
      I2 => B(9),
      I3 => A(9),
      O => \X_carry__0_i_4_n_0\
    );
\X_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(14),
      I1 => A(14),
      I2 => B(15),
      I3 => A(15),
      O => \X_carry__0_i_5_n_0\
    );
\X_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(12),
      I1 => A(12),
      I2 => B(13),
      I3 => A(13),
      O => \X_carry__0_i_6_n_0\
    );
\X_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(10),
      I1 => A(10),
      I2 => B(11),
      I3 => A(11),
      O => \X_carry__0_i_7_n_0\
    );
\X_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(8),
      I1 => A(8),
      I2 => B(9),
      I3 => A(9),
      O => \X_carry__0_i_8_n_0\
    );
X_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(6),
      I1 => B(6),
      I2 => B(7),
      I3 => A(7),
      O => X_carry_i_1_n_0
    );
X_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(4),
      I1 => B(4),
      I2 => B(5),
      I3 => A(5),
      O => X_carry_i_2_n_0
    );
X_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(2),
      I1 => B(2),
      I2 => B(3),
      I3 => A(3),
      O => X_carry_i_3_n_0
    );
X_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => A(0),
      I1 => B(0),
      I2 => B(1),
      I3 => A(1),
      O => X_carry_i_4_n_0
    );
X_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(6),
      I1 => A(6),
      I2 => B(7),
      I3 => A(7),
      O => X_carry_i_5_n_0
    );
X_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(4),
      I1 => A(4),
      I2 => B(5),
      I3 => A(5),
      O => X_carry_i_6_n_0
    );
X_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(2),
      I1 => A(2),
      I2 => B(3),
      I3 => A(3),
      O => X_carry_i_7_n_0
    );
X_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => B(0),
      I1 => A(0),
      I2 => B(1),
      I3 => A(1),
      O => X_carry_i_8_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_my_alu_0_0 is
  port (
    en : in STD_LOGIC;
    Opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    F : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_my_alu_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_my_alu_0_0 : entity is "processor_design_my_alu_0_0,my_alu,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_my_alu_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_my_alu_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_my_alu_0_0 : entity is "my_alu,Vivado 2018.2";
end processor_design_my_alu_0_0;

architecture STRUCTURE of processor_design_my_alu_0_0 is
  signal \F[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \F[12]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \F[12]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \F[12]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_5_n_1\ : STD_LOGIC;
  signal \F[12]_INST_0_i_5_n_2\ : STD_LOGIC;
  signal \F[12]_INST_0_i_5_n_3\ : STD_LOGIC;
  signal \F[12]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \F[12]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \F[12]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \F[12]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \F[12]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \F[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \F[15]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \F[15]_INST_0_i_5_n_2\ : STD_LOGIC;
  signal \F[15]_INST_0_i_5_n_3\ : STD_LOGIC;
  signal \F[15]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \F[15]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \F[15]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \F[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \F[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \F[4]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \F[4]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \F[4]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_5_n_1\ : STD_LOGIC;
  signal \F[4]_INST_0_i_5_n_2\ : STD_LOGIC;
  signal \F[4]_INST_0_i_5_n_3\ : STD_LOGIC;
  signal \F[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \F[4]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \F[4]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \F[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \F[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \F[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_4_n_1\ : STD_LOGIC;
  signal \F[8]_INST_0_i_4_n_2\ : STD_LOGIC;
  signal \F[8]_INST_0_i_4_n_3\ : STD_LOGIC;
  signal \F[8]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_5_n_1\ : STD_LOGIC;
  signal \F[8]_INST_0_i_5_n_2\ : STD_LOGIC;
  signal \F[8]_INST_0_i_5_n_3\ : STD_LOGIC;
  signal \F[8]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \F[8]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \F[8]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \F[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \F[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \F[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \F[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal data2 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal data3 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal data4 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal data8 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_F[15]_INST_0_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_F[15]_INST_0_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_F[15]_INST_0_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_F[15]_INST_0_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_F[15]_INST_0_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_F[15]_INST_0_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
\F[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(0),
      I2 => Opcode(1),
      I3 => A(0),
      I4 => Opcode(0),
      I5 => A(1),
      O => \F[0]_INST_0_i_1_n_0\
    );
\F[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(10),
      I2 => Opcode(1),
      I3 => A(10),
      I4 => Opcode(0),
      I5 => A(11),
      O => \F[10]_INST_0_i_1_n_0\
    );
\F[10]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(11),
      I1 => A(9),
      I2 => Opcode(1),
      I3 => data4(10),
      I4 => Opcode(0),
      O => \F[10]_INST_0_i_2_n_0\
    );
\F[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(11),
      I2 => Opcode(1),
      I3 => A(11),
      I4 => Opcode(0),
      I5 => A(12),
      O => \F[11]_INST_0_i_1_n_0\
    );
\F[11]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(12),
      I1 => A(10),
      I2 => Opcode(1),
      I3 => data4(11),
      I4 => Opcode(0),
      O => \F[11]_INST_0_i_2_n_0\
    );
\F[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(12),
      I2 => Opcode(1),
      I3 => A(12),
      I4 => Opcode(0),
      I5 => A(13),
      O => \F[12]_INST_0_i_1_n_0\
    );
\F[12]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(9),
      O => \F[12]_INST_0_i_10_n_0\
    );
\F[12]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(12),
      O => \F[12]_INST_0_i_11_n_0\
    );
\F[12]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(11),
      O => \F[12]_INST_0_i_12_n_0\
    );
\F[12]_INST_0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(10),
      O => \F[12]_INST_0_i_13_n_0\
    );
\F[12]_INST_0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(9),
      O => \F[12]_INST_0_i_14_n_0\
    );
\F[12]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(13),
      I1 => A(11),
      I2 => Opcode(1),
      I3 => data4(12),
      I4 => Opcode(0),
      O => \F[12]_INST_0_i_2_n_0\
    );
\F[12]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[8]_INST_0_i_4_n_0\,
      CO(3) => \F[12]_INST_0_i_4_n_0\,
      CO(2) => \F[12]_INST_0_i_4_n_1\,
      CO(1) => \F[12]_INST_0_i_4_n_2\,
      CO(0) => \F[12]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(12 downto 9),
      S(3) => \F[12]_INST_0_i_7_n_0\,
      S(2) => \F[12]_INST_0_i_8_n_0\,
      S(1) => \F[12]_INST_0_i_9_n_0\,
      S(0) => \F[12]_INST_0_i_10_n_0\
    );
\F[12]_INST_0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[8]_INST_0_i_5_n_0\,
      CO(3) => \F[12]_INST_0_i_5_n_0\,
      CO(2) => \F[12]_INST_0_i_5_n_1\,
      CO(1) => \F[12]_INST_0_i_5_n_2\,
      CO(0) => \F[12]_INST_0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(12 downto 9),
      O(3 downto 0) => data3(12 downto 9),
      S(3) => \F[12]_INST_0_i_11_n_0\,
      S(2) => \F[12]_INST_0_i_12_n_0\,
      S(1) => \F[12]_INST_0_i_13_n_0\,
      S(0) => \F[12]_INST_0_i_14_n_0\
    );
\F[12]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[8]_INST_0_i_6_n_0\,
      CO(3) => \F[12]_INST_0_i_6_n_0\,
      CO(2) => \F[12]_INST_0_i_6_n_1\,
      CO(1) => \F[12]_INST_0_i_6_n_2\,
      CO(0) => \F[12]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(12 downto 9),
      S(3 downto 0) => A(12 downto 9)
    );
\F[12]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(12),
      O => \F[12]_INST_0_i_7_n_0\
    );
\F[12]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(11),
      O => \F[12]_INST_0_i_8_n_0\
    );
\F[12]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(10),
      O => \F[12]_INST_0_i_9_n_0\
    );
\F[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(13),
      I2 => Opcode(1),
      I3 => A(13),
      I4 => Opcode(0),
      I5 => A(14),
      O => \F[13]_INST_0_i_1_n_0\
    );
\F[13]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(14),
      I1 => A(12),
      I2 => Opcode(1),
      I3 => data4(13),
      I4 => Opcode(0),
      O => \F[13]_INST_0_i_2_n_0\
    );
\F[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(14),
      I2 => Opcode(1),
      I3 => A(14),
      I4 => Opcode(0),
      I5 => A(15),
      O => \F[14]_INST_0_i_1_n_0\
    );
\F[14]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(15),
      I1 => A(13),
      I2 => Opcode(1),
      I3 => data4(14),
      I4 => Opcode(0),
      O => \F[14]_INST_0_i_2_n_0\
    );
\F[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"586267A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(15),
      I2 => Opcode(1),
      I3 => Opcode(0),
      I4 => A(15),
      O => \F[15]_INST_0_i_1_n_0\
    );
\F[15]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(15),
      O => \F[15]_INST_0_i_10_n_0\
    );
\F[15]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(14),
      O => \F[15]_INST_0_i_11_n_0\
    );
\F[15]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(13),
      O => \F[15]_INST_0_i_12_n_0\
    );
\F[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => A(14),
      I1 => Opcode(1),
      I2 => data4(15),
      I3 => Opcode(0),
      O => \F[15]_INST_0_i_2_n_0\
    );
\F[15]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[12]_INST_0_i_4_n_0\,
      CO(3 downto 2) => \NLW_F[15]_INST_0_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \F[15]_INST_0_i_4_n_2\,
      CO(0) => \F[15]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_F[15]_INST_0_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => data4(15 downto 13),
      S(3) => '0',
      S(2) => \F[15]_INST_0_i_7_n_0\,
      S(1) => \F[15]_INST_0_i_8_n_0\,
      S(0) => \F[15]_INST_0_i_9_n_0\
    );
\F[15]_INST_0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[12]_INST_0_i_5_n_0\,
      CO(3 downto 2) => \NLW_F[15]_INST_0_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \F[15]_INST_0_i_5_n_2\,
      CO(0) => \F[15]_INST_0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => A(14 downto 13),
      O(3) => \NLW_F[15]_INST_0_i_5_O_UNCONNECTED\(3),
      O(2 downto 0) => data3(15 downto 13),
      S(3) => '0',
      S(2) => \F[15]_INST_0_i_10_n_0\,
      S(1) => \F[15]_INST_0_i_11_n_0\,
      S(0) => \F[15]_INST_0_i_12_n_0\
    );
\F[15]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[12]_INST_0_i_6_n_0\,
      CO(3 downto 2) => \NLW_F[15]_INST_0_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \F[15]_INST_0_i_6_n_2\,
      CO(0) => \F[15]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_F[15]_INST_0_i_6_O_UNCONNECTED\(3),
      O(2 downto 0) => data2(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => A(15 downto 13)
    );
\F[15]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(15),
      O => \F[15]_INST_0_i_7_n_0\
    );
\F[15]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(14),
      O => \F[15]_INST_0_i_8_n_0\
    );
\F[15]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(13),
      O => \F[15]_INST_0_i_9_n_0\
    );
\F[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(1),
      I2 => Opcode(1),
      I3 => A(1),
      I4 => Opcode(0),
      I5 => A(2),
      O => \F[1]_INST_0_i_1_n_0\
    );
\F[1]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(2),
      I1 => A(0),
      I2 => Opcode(1),
      I3 => data4(1),
      I4 => Opcode(0),
      O => \F[1]_INST_0_i_2_n_0\
    );
\F[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(2),
      I2 => Opcode(1),
      I3 => A(2),
      I4 => Opcode(0),
      I5 => A(3),
      O => \F[2]_INST_0_i_1_n_0\
    );
\F[2]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(3),
      I1 => A(1),
      I2 => Opcode(1),
      I3 => data4(2),
      I4 => Opcode(0),
      O => \F[2]_INST_0_i_2_n_0\
    );
\F[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(3),
      I2 => Opcode(1),
      I3 => A(3),
      I4 => Opcode(0),
      I5 => A(4),
      O => \F[3]_INST_0_i_1_n_0\
    );
\F[3]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(4),
      I1 => A(2),
      I2 => Opcode(1),
      I3 => data4(3),
      I4 => Opcode(0),
      O => \F[3]_INST_0_i_2_n_0\
    );
\F[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(4),
      I2 => Opcode(1),
      I3 => A(4),
      I4 => Opcode(0),
      I5 => A(5),
      O => \F[4]_INST_0_i_1_n_0\
    );
\F[4]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(2),
      O => \F[4]_INST_0_i_10_n_0\
    );
\F[4]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(1),
      O => \F[4]_INST_0_i_11_n_0\
    );
\F[4]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(4),
      O => \F[4]_INST_0_i_12_n_0\
    );
\F[4]_INST_0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(3),
      O => \F[4]_INST_0_i_13_n_0\
    );
\F[4]_INST_0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(2),
      O => \F[4]_INST_0_i_14_n_0\
    );
\F[4]_INST_0_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(1),
      O => \F[4]_INST_0_i_15_n_0\
    );
\F[4]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(5),
      I1 => A(3),
      I2 => Opcode(1),
      I3 => data4(4),
      I4 => Opcode(0),
      O => \F[4]_INST_0_i_2_n_0\
    );
\F[4]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \F[4]_INST_0_i_4_n_0\,
      CO(2) => \F[4]_INST_0_i_4_n_1\,
      CO(1) => \F[4]_INST_0_i_4_n_2\,
      CO(0) => \F[4]_INST_0_i_4_n_3\,
      CYINIT => data8(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(4 downto 1),
      S(3) => \F[4]_INST_0_i_8_n_0\,
      S(2) => \F[4]_INST_0_i_9_n_0\,
      S(1) => \F[4]_INST_0_i_10_n_0\,
      S(0) => \F[4]_INST_0_i_11_n_0\
    );
\F[4]_INST_0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \F[4]_INST_0_i_5_n_0\,
      CO(2) => \F[4]_INST_0_i_5_n_1\,
      CO(1) => \F[4]_INST_0_i_5_n_2\,
      CO(0) => \F[4]_INST_0_i_5_n_3\,
      CYINIT => A(0),
      DI(3 downto 0) => A(4 downto 1),
      O(3 downto 0) => data3(4 downto 1),
      S(3) => \F[4]_INST_0_i_12_n_0\,
      S(2) => \F[4]_INST_0_i_13_n_0\,
      S(1) => \F[4]_INST_0_i_14_n_0\,
      S(0) => \F[4]_INST_0_i_15_n_0\
    );
\F[4]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \F[4]_INST_0_i_6_n_0\,
      CO(2) => \F[4]_INST_0_i_6_n_1\,
      CO(1) => \F[4]_INST_0_i_6_n_2\,
      CO(0) => \F[4]_INST_0_i_6_n_3\,
      CYINIT => A(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(4 downto 1),
      S(3 downto 0) => A(4 downto 1)
    );
\F[4]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(0),
      O => data8(0)
    );
\F[4]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(4),
      O => \F[4]_INST_0_i_8_n_0\
    );
\F[4]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(3),
      O => \F[4]_INST_0_i_9_n_0\
    );
\F[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(5),
      I2 => Opcode(1),
      I3 => A(5),
      I4 => Opcode(0),
      I5 => A(6),
      O => \F[5]_INST_0_i_1_n_0\
    );
\F[5]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(6),
      I1 => A(4),
      I2 => Opcode(1),
      I3 => data4(5),
      I4 => Opcode(0),
      O => \F[5]_INST_0_i_2_n_0\
    );
\F[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(6),
      I2 => Opcode(1),
      I3 => A(6),
      I4 => Opcode(0),
      I5 => A(7),
      O => \F[6]_INST_0_i_1_n_0\
    );
\F[6]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(7),
      I1 => A(5),
      I2 => Opcode(1),
      I3 => data4(6),
      I4 => Opcode(0),
      O => \F[6]_INST_0_i_2_n_0\
    );
\F[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(7),
      I2 => Opcode(1),
      I3 => A(7),
      I4 => Opcode(0),
      I5 => A(8),
      O => \F[7]_INST_0_i_1_n_0\
    );
\F[7]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(8),
      I1 => A(6),
      I2 => Opcode(1),
      I3 => data4(7),
      I4 => Opcode(0),
      O => \F[7]_INST_0_i_2_n_0\
    );
\F[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(8),
      I2 => Opcode(1),
      I3 => A(8),
      I4 => Opcode(0),
      I5 => A(9),
      O => \F[8]_INST_0_i_1_n_0\
    );
\F[8]_INST_0_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(5),
      O => \F[8]_INST_0_i_10_n_0\
    );
\F[8]_INST_0_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(8),
      O => \F[8]_INST_0_i_11_n_0\
    );
\F[8]_INST_0_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(7),
      O => \F[8]_INST_0_i_12_n_0\
    );
\F[8]_INST_0_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(6),
      O => \F[8]_INST_0_i_13_n_0\
    );
\F[8]_INST_0_i_14\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(5),
      O => \F[8]_INST_0_i_14_n_0\
    );
\F[8]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(9),
      I1 => A(7),
      I2 => Opcode(1),
      I3 => data4(8),
      I4 => Opcode(0),
      O => \F[8]_INST_0_i_2_n_0\
    );
\F[8]_INST_0_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[4]_INST_0_i_4_n_0\,
      CO(3) => \F[8]_INST_0_i_4_n_0\,
      CO(2) => \F[8]_INST_0_i_4_n_1\,
      CO(1) => \F[8]_INST_0_i_4_n_2\,
      CO(0) => \F[8]_INST_0_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data4(8 downto 5),
      S(3) => \F[8]_INST_0_i_7_n_0\,
      S(2) => \F[8]_INST_0_i_8_n_0\,
      S(1) => \F[8]_INST_0_i_9_n_0\,
      S(0) => \F[8]_INST_0_i_10_n_0\
    );
\F[8]_INST_0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[4]_INST_0_i_5_n_0\,
      CO(3) => \F[8]_INST_0_i_5_n_0\,
      CO(2) => \F[8]_INST_0_i_5_n_1\,
      CO(1) => \F[8]_INST_0_i_5_n_2\,
      CO(0) => \F[8]_INST_0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => A(8 downto 5),
      O(3 downto 0) => data3(8 downto 5),
      S(3) => \F[8]_INST_0_i_11_n_0\,
      S(2) => \F[8]_INST_0_i_12_n_0\,
      S(1) => \F[8]_INST_0_i_13_n_0\,
      S(0) => \F[8]_INST_0_i_14_n_0\
    );
\F[8]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \F[4]_INST_0_i_6_n_0\,
      CO(3) => \F[8]_INST_0_i_6_n_0\,
      CO(2) => \F[8]_INST_0_i_6_n_1\,
      CO(1) => \F[8]_INST_0_i_6_n_2\,
      CO(0) => \F[8]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data2(8 downto 5),
      S(3 downto 0) => A(8 downto 5)
    );
\F[8]_INST_0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(8),
      O => \F[8]_INST_0_i_7_n_0\
    );
\F[8]_INST_0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(7),
      O => \F[8]_INST_0_i_8_n_0\
    );
\F[8]_INST_0_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => A(6),
      O => \F[8]_INST_0_i_9_n_0\
    );
\F[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"586767AD586762A8"
    )
        port map (
      I0 => Opcode(2),
      I1 => B(9),
      I2 => Opcode(1),
      I3 => A(9),
      I4 => Opcode(0),
      I5 => A(10),
      O => \F[9]_INST_0_i_1_n_0\
    );
\F[9]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => A(10),
      I1 => A(8),
      I2 => Opcode(1),
      I3 => data4(9),
      I4 => Opcode(0),
      O => \F[9]_INST_0_i_2_n_0\
    );
U0: entity work.processor_design_my_alu_0_0_my_alu
     port map (
      A(15 downto 0) => A(15 downto 0),
      \A[15]_0\ => \F[15]_INST_0_i_1_n_0\,
      \A[1]_0\ => \F[1]_INST_0_i_2_n_0\,
      \A[1]_1\ => \F[2]_INST_0_i_2_n_0\,
      \A[1]_10\ => \F[11]_INST_0_i_2_n_0\,
      \A[1]_11\ => \F[12]_INST_0_i_2_n_0\,
      \A[1]_12\ => \F[13]_INST_0_i_2_n_0\,
      \A[1]_13\ => \F[14]_INST_0_i_2_n_0\,
      \A[1]_14\ => \F[15]_INST_0_i_2_n_0\,
      \A[1]_2\ => \F[3]_INST_0_i_2_n_0\,
      \A[1]_3\ => \F[4]_INST_0_i_2_n_0\,
      \A[1]_4\ => \F[5]_INST_0_i_2_n_0\,
      \A[1]_5\ => \F[6]_INST_0_i_2_n_0\,
      \A[1]_6\ => \F[7]_INST_0_i_2_n_0\,
      \A[1]_7\ => \F[8]_INST_0_i_2_n_0\,
      \A[1]_8\ => \F[9]_INST_0_i_2_n_0\,
      \A[1]_9\ => \F[10]_INST_0_i_2_n_0\,
      A_10_sp_1 => \F[9]_INST_0_i_1_n_0\,
      A_11_sp_1 => \F[10]_INST_0_i_1_n_0\,
      A_12_sp_1 => \F[11]_INST_0_i_1_n_0\,
      A_13_sp_1 => \F[12]_INST_0_i_1_n_0\,
      A_14_sp_1 => \F[13]_INST_0_i_1_n_0\,
      A_15_sp_1 => \F[14]_INST_0_i_1_n_0\,
      A_1_sp_1 => \F[0]_INST_0_i_1_n_0\,
      A_2_sp_1 => \F[1]_INST_0_i_1_n_0\,
      A_3_sp_1 => \F[2]_INST_0_i_1_n_0\,
      A_4_sp_1 => \F[3]_INST_0_i_1_n_0\,
      A_5_sp_1 => \F[4]_INST_0_i_1_n_0\,
      A_6_sp_1 => \F[5]_INST_0_i_1_n_0\,
      A_7_sp_1 => \F[6]_INST_0_i_1_n_0\,
      A_8_sp_1 => \F[7]_INST_0_i_1_n_0\,
      A_9_sp_1 => \F[8]_INST_0_i_1_n_0\,
      B(15 downto 0) => B(15 downto 0),
      F(15 downto 0) => F(15 downto 0),
      Opcode(3 downto 0) => Opcode(3 downto 0),
      data2(14 downto 0) => data2(15 downto 1),
      data3(14 downto 0) => data3(15 downto 1)
    );
end STRUCTURE;
