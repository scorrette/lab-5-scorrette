-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:31:30 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_hdmi_out_0_0/processor_design_hdmi_out_0_0_stub.vhdl
-- Design      : processor_design_hdmi_out_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processor_design_hdmi_out_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    r : in STD_LOGIC_VECTOR ( 4 downto 0 );
    g : in STD_LOGIC_VECTOR ( 5 downto 0 );
    b : in STD_LOGIC_VECTOR ( 4 downto 0 );
    hs : in STD_LOGIC;
    vs : in STD_LOGIC;
    vid : in STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end processor_design_hdmi_out_0_0;

architecture stub of processor_design_hdmi_out_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,r[4:0],g[5:0],b[4:0],hs,vs,vid,hdmi_tx_clk_n,hdmi_tx_clk_p,hdmi_tx_n[2:0],hdmi_tx_p[2:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "hdmi_out,Vivado 2018.2";
begin
end;
