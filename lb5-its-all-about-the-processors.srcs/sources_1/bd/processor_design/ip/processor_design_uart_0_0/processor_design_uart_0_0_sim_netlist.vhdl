-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:12:18 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_uart_0_0/processor_design_uart_0_0_sim_netlist.vhdl
-- Design      : processor_design_uart_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_uart_0_0_uart_rx is
  port (
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rx : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_uart_0_0_uart_rx : entity is "uart_rx";
end processor_design_uart_0_0_uart_rx;

architecture STRUCTURE of processor_design_uart_0_0_uart_rx is
  signal \FSM_onehot_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[2]\ : signal is "yes";
  signal \char[7]_i_1_n_0\ : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[0]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal count_0 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal d : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal maj : STD_LOGIC;
  signal \^newchar\ : STD_LOGIC;
  signal newChar_i_1_n_0 : STD_LOGIC;
  signal newChar_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal p_0_in_1 : STD_LOGIC;
  signal p_1_in3_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_curr_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP of \FSM_onehot_curr_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "idle:001,start:010,data:100,";
  attribute KEEP of \FSM_onehot_curr_reg[2]\ : label is "yes";
begin
  newChar <= \^newchar\;
\FSM_onehot_curr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      O => \FSM_onehot_curr[0]_i_1_n_0\
    );
\FSM_onehot_curr[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \FSM_onehot_curr[1]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[1]\,
      I1 => \FSM_onehot_curr[2]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => \FSM_onehot_curr[2]_i_1_n_0\
    );
\FSM_onehot_curr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA20AA2020"
    )
        port map (
      I0 => en,
      I1 => maj,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      I3 => newChar_i_2_n_0,
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \FSM_onehot_curr[2]_i_2_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[0]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[1]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_onehot_curr[2]_i_1_n_0\,
      Q => \FSM_onehot_curr_reg_n_0_[2]\,
      R => rst
    );
\char[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => newChar_i_2_n_0,
      I2 => maj,
      I3 => en,
      I4 => rst,
      O => \char[7]_i_1_n_0\
    );
\char_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(0),
      Q => charRec(0),
      R => '0'
    );
\char_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(1),
      Q => charRec(1),
      R => '0'
    );
\char_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(2),
      Q => charRec(2),
      R => '0'
    );
\char_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(3),
      Q => charRec(3),
      R => '0'
    );
\char_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(4),
      Q => charRec(4),
      R => '0'
    );
\char_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(5),
      Q => charRec(5),
      R => '0'
    );
\char_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(6),
      Q => charRec(6),
      R => '0'
    );
\char_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \char[7]_i_1_n_0\,
      D => d(7),
      Q => charRec(7),
      R => '0'
    );
\count[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(0),
      O => \count[0]_i_1_n_0\
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(1),
      I2 => count(0),
      O => count_0(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA08888888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => count(1),
      I3 => count(0),
      I4 => count(2),
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \count[2]_i_1_n_0\
    );
\count[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => count(2),
      I2 => count(1),
      I3 => count(0),
      O => count_0(2)
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => \count[0]_i_1_n_0\,
      Q => count(0),
      R => rst
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(1),
      Q => count(1),
      R => rst
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => count_0(2),
      Q => count(2),
      R => rst
    );
\d[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => p_1_in3_in,
      I1 => p_0_in_1,
      I2 => p_2_in,
      O => maj
    );
\d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(1),
      Q => d(0),
      R => rst
    );
\d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(2),
      Q => d(1),
      R => rst
    );
\d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(3),
      Q => d(2),
      R => rst
    );
\d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(4),
      Q => d(3),
      R => rst
    );
\d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(5),
      Q => d(4),
      R => rst
    );
\d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(6),
      Q => d(5),
      R => rst
    );
\d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => d(7),
      Q => d(6),
      R => rst
    );
\d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \count[2]_i_1_n_0\,
      D => maj,
      Q => d(7),
      R => rst
    );
\inshift_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => rx,
      Q => p_0_in(1),
      R => '0'
    );
\inshift_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(1),
      Q => p_2_in,
      R => '0'
    );
\inshift_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_2_in,
      Q => p_0_in_1,
      R => '0'
    );
\inshift_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in_1,
      Q => p_1_in3_in,
      R => '0'
    );
newChar_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DD55FFFF88000800"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => newChar_i_2_n_0,
      I3 => maj,
      I4 => \FSM_onehot_curr_reg_n_0_[0]\,
      I5 => \^newchar\,
      O => newChar_i_1_n_0
    );
newChar_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => count(2),
      I1 => count(0),
      I2 => count(1),
      O => newChar_i_2_n_0
    );
newChar_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => newChar_i_1_n_0,
      Q => \^newchar\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_uart_0_0_uart_tx is
  port (
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_uart_0_0_uart_tx : entity is "uart_tx";
end processor_design_uart_0_0_uart_tx;

architecture STRUCTURE of processor_design_uart_0_0_uart_tx is
  signal \FSM_onehot_curr[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_curr_reg_n_0_[0]\ : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[0]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[1]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[1]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[2]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[2]\ : signal is "yes";
  signal \FSM_onehot_curr_reg_n_0_[3]\ : STD_LOGIC;
  attribute RTL_KEEP of \FSM_onehot_curr_reg_n_0_[3]\ : signal is "yes";
  signal cnt : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \d[7]_i_1_n_0\ : STD_LOGIC;
  signal \d_reg_n_0_[0]\ : STD_LOGIC;
  signal \d_reg_n_0_[1]\ : STD_LOGIC;
  signal \d_reg_n_0_[2]\ : STD_LOGIC;
  signal \d_reg_n_0_[3]\ : STD_LOGIC;
  signal \d_reg_n_0_[4]\ : STD_LOGIC;
  signal \d_reg_n_0_[5]\ : STD_LOGIC;
  signal \d_reg_n_0_[6]\ : STD_LOGIC;
  signal \d_reg_n_0_[7]\ : STD_LOGIC;
  signal \^ready\ : STD_LOGIC;
  signal ready_i_1_n_0 : STD_LOGIC;
  signal \^tx\ : STD_LOGIC;
  signal tx0_out : STD_LOGIC;
  signal tx_i_1_n_0 : STD_LOGIC;
  signal tx_i_2_n_0 : STD_LOGIC;
  signal tx_i_4_n_0 : STD_LOGIC;
  signal tx_i_5_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[0]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute KEEP : string;
  attribute KEEP of \FSM_onehot_curr_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[1]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute KEEP of \FSM_onehot_curr_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[2]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute KEEP of \FSM_onehot_curr_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_onehot_curr_reg[3]\ : label is "idle:0001,start:0010,data:0100,stop:1000";
  attribute KEEP of \FSM_onehot_curr_reg[3]\ : label is "yes";
begin
  ready <= \^ready\;
  tx <= \^tx\;
\FSM_onehot_curr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAA20"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr[3]_i_2_n_0\,
      I2 => \FSM_onehot_curr_reg_n_0_[2]\,
      I3 => \FSM_onehot_curr[3]_i_3_n_0\,
      I4 => \FSM_onehot_curr_reg_n_0_[3]\,
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \FSM_onehot_curr[3]_i_1_n_0\
    );
\FSM_onehot_curr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => cnt(2),
      I1 => cnt(0),
      I2 => cnt(1),
      O => \FSM_onehot_curr[3]_i_2_n_0\
    );
\FSM_onehot_curr[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[0]\,
      I1 => send,
      O => \FSM_onehot_curr[3]_i_3_n_0\
    );
\FSM_onehot_curr_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_curr[3]_i_1_n_0\,
      D => \FSM_onehot_curr_reg_n_0_[3]\,
      Q => \FSM_onehot_curr_reg_n_0_[0]\,
      S => rst
    );
\FSM_onehot_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_curr[3]_i_1_n_0\,
      D => \FSM_onehot_curr_reg_n_0_[0]\,
      Q => \FSM_onehot_curr_reg_n_0_[1]\,
      R => rst
    );
\FSM_onehot_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_curr[3]_i_1_n_0\,
      D => \FSM_onehot_curr_reg_n_0_[1]\,
      Q => \FSM_onehot_curr_reg_n_0_[2]\,
      R => rst
    );
\FSM_onehot_curr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \FSM_onehot_curr[3]_i_1_n_0\,
      D => \FSM_onehot_curr_reg_n_0_[2]\,
      Q => \FSM_onehot_curr_reg_n_0_[3]\,
      R => rst
    );
\cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55885588F7887788"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"58D058D0F8F078F0"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DDD8000FFFF8000"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[2]\,
      I2 => cnt(1),
      I3 => cnt(0),
      I4 => cnt(2),
      I5 => \FSM_onehot_curr_reg_n_0_[1]\,
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
      R => rst
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
      R => rst
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
      R => rst
    );
\d[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => en,
      I1 => send,
      I2 => \FSM_onehot_curr_reg_n_0_[0]\,
      O => \d[7]_i_1_n_0\
    );
\d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(0),
      Q => \d_reg_n_0_[0]\,
      R => rst
    );
\d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(1),
      Q => \d_reg_n_0_[1]\,
      R => rst
    );
\d_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(2),
      Q => \d_reg_n_0_[2]\,
      R => rst
    );
\d_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(3),
      Q => \d_reg_n_0_[3]\,
      R => rst
    );
\d_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(4),
      Q => \d_reg_n_0_[4]\,
      R => rst
    );
\d_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(5),
      Q => \d_reg_n_0_[5]\,
      R => rst
    );
\d_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(6),
      Q => \d_reg_n_0_[6]\,
      R => rst
    );
\d_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \d[7]_i_1_n_0\,
      D => charSend(7),
      Q => \d_reg_n_0_[7]\,
      R => rst
    );
ready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7FAA00"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[0]\,
      I2 => send,
      I3 => \FSM_onehot_curr_reg_n_0_[3]\,
      I4 => \^ready\,
      O => ready_i_1_n_0
    );
ready_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => ready_i_1_n_0,
      Q => \^ready\,
      S => rst
    );
tx_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \d_reg_n_0_[0]\,
      I1 => \FSM_onehot_curr_reg_n_0_[1]\,
      I2 => tx_i_2_n_0,
      I3 => tx0_out,
      I4 => \^tx\,
      O => tx_i_1_n_0
    );
tx_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8222A8888000"
    )
        port map (
      I0 => \FSM_onehot_curr_reg_n_0_[2]\,
      I1 => cnt(2),
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => tx_i_4_n_0,
      I5 => tx_i_5_n_0,
      O => tx_i_2_n_0
    );
tx_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA888"
    )
        port map (
      I0 => en,
      I1 => \FSM_onehot_curr_reg_n_0_[1]\,
      I2 => send,
      I3 => \FSM_onehot_curr_reg_n_0_[0]\,
      I4 => \FSM_onehot_curr_reg_n_0_[2]\,
      O => tx0_out
    );
tx_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \d_reg_n_0_[6]\,
      I1 => \d_reg_n_0_[7]\,
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => \d_reg_n_0_[4]\,
      I5 => \d_reg_n_0_[5]\,
      O => tx_i_4_n_0
    );
tx_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCAF0CAFFCA00CA0"
    )
        port map (
      I0 => \d_reg_n_0_[2]\,
      I1 => \d_reg_n_0_[3]\,
      I2 => cnt(0),
      I3 => cnt(1),
      I4 => \d_reg_n_0_[0]\,
      I5 => \d_reg_n_0_[1]\,
      O => tx_i_5_n_0
    );
tx_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => tx_i_1_n_0,
      Q => \^tx\,
      S => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_uart_0_0_uart is
  port (
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 );
    newChar : out STD_LOGIC;
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    rst : in STD_LOGIC;
    clk : in STD_LOGIC;
    rx : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    en : in STD_LOGIC;
    send : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_uart_0_0_uart : entity is "uart";
end processor_design_uart_0_0_uart;

architecture STRUCTURE of processor_design_uart_0_0_uart is
begin
r_x: entity work.processor_design_uart_0_0_uart_rx
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      rst => rst,
      rx => rx
    );
t_x: entity work.processor_design_uart_0_0_uart_tx
     port map (
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      ready => ready,
      rst => rst,
      send => send,
      tx => tx
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_uart_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_uart_0_0 : entity is "processor_design_uart_0_0,uart,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_uart_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_uart_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_uart_0_0 : entity is "uart,Vivado 2018.2";
end processor_design_uart_0_0;

architecture STRUCTURE of processor_design_uart_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_HIGH";
begin
U0: entity work.processor_design_uart_0_0_uart
     port map (
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      en => en,
      newChar => newChar,
      ready => ready,
      rst => rst,
      rx => rx,
      send => send,
      tx => tx
    );
end STRUCTURE;
