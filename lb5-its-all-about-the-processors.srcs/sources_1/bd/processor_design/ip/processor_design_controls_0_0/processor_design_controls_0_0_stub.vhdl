-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:12:19 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_controls_0_0/processor_design_controls_0_0_stub.vhdl
-- Design      : processor_design_controls_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity processor_design_controls_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbRST : out STD_LOGIC;
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbWrEn : out STD_LOGIC;
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    irWord : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    d_wr_en : out STD_LOGIC;
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    send : out STD_LOGIC;
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end processor_design_controls_0_0;

architecture stub of processor_design_controls_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,en,rst,rID1[4:0],rID2[4:0],wr_enR1,wr_enR2,regrD1[15:0],regrD2[15:0],regwD1[15:0],regwD2[15:0],fbRST,fbAddr1[11:0],fbWrEn,fbDin1[15:0],fbDout1[15:0],irAddr[13:0],irWord[31:0],dAddr[14:0],d_wr_en,dOut[15:0],dIn[15:0],aluA[15:0],aluB[15:0],aluOp[3:0],aluResult[15:0],ready,newChar,send,charRec[7:0],charSend[7:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "controls,Vivado 2018.2";
begin
end;
