--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Apr 15 20:45:36 2021
--Host        : canis running 64-bit major release  (build 9200)
--Command     : generate_target processor_design_wrapper.bd
--Design      : processor_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_wrapper is
  port (
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end processor_design_wrapper;

architecture STRUCTURE of processor_design_wrapper is
  component processor_design is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TXD : in STD_LOGIC;
    RXD : out STD_LOGIC;
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC
  );
  end component processor_design;
begin
processor_design_i: component processor_design
     port map (
      CTS => CTS,
      RTS => RTS,
      RXD => RXD,
      TXD => TXD,
      btn => btn,
      clk => clk,
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_n(2 downto 0) => hdmi_tx_n(2 downto 0),
      hdmi_tx_p(2 downto 0) => hdmi_tx_p(2 downto 0)
    );
end STRUCTURE;
