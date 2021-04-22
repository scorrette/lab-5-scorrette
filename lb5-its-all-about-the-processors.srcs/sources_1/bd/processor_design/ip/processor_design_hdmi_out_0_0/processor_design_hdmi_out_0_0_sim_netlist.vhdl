-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:31:30 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_hdmi_out_0_0/processor_design_hdmi_out_0_0_sim_netlist.vhdl
-- Design      : processor_design_hdmi_out_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_OutputSERDES is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_OutputSERDES : entity is "OutputSERDES";
end processor_design_hdmi_out_0_0_OutputSERDES;

architecture STRUCTURE of processor_design_hdmi_out_0_0_OutputSERDES is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Clk_p,
      OB => TMDS_Clk_n
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => '0',
      D4 => '0',
      D5 => '0',
      D6 => '1',
      D7 => '1',
      D8 => '1',
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => aRst,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => '1',
      D4 => '1',
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => aRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_OutputSERDES_0 is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    aRst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_OutputSERDES_0 : entity is "OutputSERDES";
end processor_design_hdmi_out_0_0_OutputSERDES_0;

architecture STRUCTURE of processor_design_hdmi_out_0_0_OutputSERDES_0 is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => aRst,
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => aRst,
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_OutputSERDES_2 is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_OutputSERDES_2 : entity is "OutputSERDES";
end processor_design_hdmi_out_0_0_OutputSERDES_2;

architecture STRUCTURE of processor_design_hdmi_out_0_0_OutputSERDES_2 is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => \out\(0),
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => \out\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_OutputSERDES_4 is
  port (
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 0 to 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 0 to 0 );
    SerialClk : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    pDataOut : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_OutputSERDES_4 : entity is "OutputSERDES";
end processor_design_hdmi_out_0_0_OutputSERDES_4;

architecture STRUCTURE of processor_design_hdmi_out_0_0_OutputSERDES_4 is
  signal I : STD_LOGIC;
  signal SHIFTIN1 : STD_LOGIC;
  signal SHIFTIN2 : STD_LOGIC;
  signal NLW_SerializerMaster_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerMaster_TQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_OQ_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TBYTEOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TFB_UNCONNECTED : STD_LOGIC;
  signal NLW_SerializerSlave_TQ_UNCONNECTED : STD_LOGIC;
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OutputBuffer : label is "DONT_CARE";
  attribute box_type : string;
  attribute box_type of OutputBuffer : label is "PRIMITIVE";
  attribute box_type of SerializerMaster : label is "PRIMITIVE";
  attribute box_type of SerializerSlave : label is "PRIMITIVE";
begin
OutputBuffer: unisim.vcomponents.OBUFDS
     port map (
      I => I,
      O => TMDS_Data_p(0),
      OB => TMDS_Data_n(0)
    );
SerializerMaster: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "MASTER",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => pDataOut(0),
      D2 => pDataOut(1),
      D3 => pDataOut(2),
      D4 => pDataOut(3),
      D5 => pDataOut(4),
      D6 => pDataOut(5),
      D7 => pDataOut(6),
      D8 => pDataOut(7),
      OCE => '1',
      OFB => NLW_SerializerMaster_OFB_UNCONNECTED,
      OQ => I,
      RST => \out\(0),
      SHIFTIN1 => SHIFTIN1,
      SHIFTIN2 => SHIFTIN2,
      SHIFTOUT1 => NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED,
      SHIFTOUT2 => NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerMaster_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerMaster_TFB_UNCONNECTED,
      TQ => NLW_SerializerMaster_TQ_UNCONNECTED
    );
SerializerSlave: unisim.vcomponents.OSERDESE2
    generic map(
      DATA_RATE_OQ => "DDR",
      DATA_RATE_TQ => "SDR",
      DATA_WIDTH => 10,
      INIT_OQ => '0',
      INIT_TQ => '0',
      IS_CLKDIV_INVERTED => '0',
      IS_CLK_INVERTED => '0',
      IS_D1_INVERTED => '0',
      IS_D2_INVERTED => '0',
      IS_D3_INVERTED => '0',
      IS_D4_INVERTED => '0',
      IS_D5_INVERTED => '0',
      IS_D6_INVERTED => '0',
      IS_D7_INVERTED => '0',
      IS_D8_INVERTED => '0',
      IS_T1_INVERTED => '0',
      IS_T2_INVERTED => '0',
      IS_T3_INVERTED => '0',
      IS_T4_INVERTED => '0',
      SERDES_MODE => "SLAVE",
      SRVAL_OQ => '0',
      SRVAL_TQ => '0',
      TBYTE_CTL => "FALSE",
      TBYTE_SRC => "FALSE",
      TRISTATE_WIDTH => 1
    )
        port map (
      CLK => SerialClk,
      CLKDIV => PixelClk,
      D1 => '0',
      D2 => '0',
      D3 => pDataOut(8),
      D4 => pDataOut(9),
      D5 => '0',
      D6 => '0',
      D7 => '0',
      D8 => '0',
      OCE => '1',
      OFB => NLW_SerializerSlave_OFB_UNCONNECTED,
      OQ => NLW_SerializerSlave_OQ_UNCONNECTED,
      RST => \out\(0),
      SHIFTIN1 => '0',
      SHIFTIN2 => '0',
      SHIFTOUT1 => SHIFTIN1,
      SHIFTOUT2 => SHIFTIN2,
      T1 => '0',
      T2 => '0',
      T3 => '0',
      T4 => '0',
      TBYTEIN => '0',
      TBYTEOUT => NLW_SerializerSlave_TBYTEOUT_UNCONNECTED,
      TCE => '0',
      TFB => NLW_SerializerSlave_TFB_UNCONNECTED,
      TQ => NLW_SerializerSlave_TQ_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_SyncAsync is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    PixelClk : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_SyncAsync : entity is "SyncAsync";
end processor_design_hdmi_out_0_0_SyncAsync;

architecture STRUCTURE of processor_design_hdmi_out_0_0_SyncAsync is
  signal oSyncStages : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute async_reg : string;
  attribute async_reg of oSyncStages : signal is "true";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \oSyncStages_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \oSyncStages_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \oSyncStages_reg[1]\ : label is std.standard.true;
  attribute KEEP of \oSyncStages_reg[1]\ : label is "yes";
begin
  \out\(0) <= oSyncStages(1);
\oSyncStages_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => '0',
      PRE => AS(0),
      Q => oSyncStages(0)
    );
\oSyncStages_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => oSyncStages(0),
      PRE => AS(0),
      Q => oSyncStages(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_TMDS_Encoder is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid_pHSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    vid_pVDE : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_TMDS_Encoder : entity is "TMDS_Encoder";
end processor_design_hdmi_out_0_0_TMDS_Encoder;

architecture STRUCTURE of processor_design_hdmi_out_0_0_TMDS_Encoder is
  signal \DataEncoders[2].DataEncoder/pVde_2\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal cnt_t_3 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9_n_0\ : STD_LOGIC;
  signal minusOp : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal n0q_m_2 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n0q_m_2[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal n1q_m_1 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \n1q_m_2[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_6_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal pC0_1 : STD_LOGIC;
  signal pC0_2 : STD_LOGIC;
  signal pC1_1 : STD_LOGIC;
  signal pC1_2 : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal pVde_1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in6_in_1 : STD_LOGIC;
  signal p_0_in7_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_0_in8_in_0 : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in12_in : STD_LOGIC;
  signal \q_m_2[1]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2[6]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_2_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  signal q_out_20_in : STD_LOGIC_VECTOR ( 9 downto 2 );
  signal sum_bits : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2__1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_7\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_10\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2\ : label is "soft_lutpair1";
begin
  SR(0) <= \^sr\(0);
\cnt_t_3[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9F60609F609F9F60"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt_t_3[3]_i_4_n_0\,
      I2 => \cnt_t_3[2]_i_4_n_0\,
      I3 => \n1q_m_2_reg_n_0_[1]\,
      I4 => n0q_m_2(1),
      I5 => cnt_t_3(1),
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"995AAA5A5A665AAA"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2__0_n_0\,
      I1 => \cnt_t_3[3]_i_4_n_0\,
      I2 => \cnt_t_3[2]_i_3_n_0\,
      I3 => cnt_t_3(1),
      I4 => \cnt_t_3[2]_i_4_n_0\,
      I5 => p_0_in,
      O => cnt_t_2(2)
    );
\cnt_t_3[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96699696"
    )
        port map (
      I0 => cnt_t_3(2),
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => n0q_m_2(2),
      I3 => n0q_m_2(1),
      I4 => \n1q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_2__0_n_0\
    );
\cnt_t_3[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => n0q_m_2(1),
      O => \cnt_t_3[2]_i_3_n_0\
    );
\cnt_t_3[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFD0000"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => \cnt_t_3[4]_i_6_n_0\,
      I5 => cnt_t_3(4),
      O => \cnt_t_3[2]_i_4_n_0\
    );
\cnt_t_3[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2__1_n_0\,
      I1 => \cnt_t_3[3]_i_3_n_0\,
      I2 => \cnt_t_3[3]_i_4_n_0\,
      I3 => \cnt_t_3[3]_i_5_n_0\,
      I4 => \cnt_t_3[4]_i_3__1_n_0\,
      I5 => \cnt_t_3[3]_i_6_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => \cnt_t_3[4]_i_8_n_0\,
      O => \cnt_t_3[3]_i_2__1_n_0\
    );
\cnt_t_3[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41D70000FFFF41D7"
    )
        port map (
      I0 => cnt_t_3(1),
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      I4 => \cnt_t_3[3]_i_7_n_0\,
      I5 => cnt_t_3(2),
      O => \cnt_t_3[3]_i_3_n_0\
    );
\cnt_t_3[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F1F00FFFFFFF0F"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[0]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => cnt_t_3(4),
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \cnt_t_3[4]_i_6_n_0\,
      O => \cnt_t_3[3]_i_4_n_0\
    );
\cnt_t_3[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8E8EEE88888E8"
    )
        port map (
      I0 => cnt_t_3(2),
      I1 => \cnt_t_3[3]_i_7_n_0\,
      I2 => cnt_t_3(1),
      I3 => n0q_m_2(1),
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => p_0_in,
      O => \cnt_t_3[3]_i_5_n_0\
    );
\cnt_t_3[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BBF04DF04DF9BBF"
    )
        port map (
      I0 => n0q_m_2(1),
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => cnt_t_3(1),
      I3 => cnt_t_3(2),
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => n0q_m_2(2),
      O => \cnt_t_3[3]_i_6_n_0\
    );
\cnt_t_3[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => n0q_m_2(1),
      I2 => n0q_m_2(2),
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_7_n_0\
    );
\cnt_t_3[4]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \DataEncoders[2].DataEncoder/pVde_2\,
      O => \^sr\(0)
    );
\cnt_t_3[4]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20BA"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => n0q_m_2(1),
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => n0q_m_2(2),
      O => \cnt_t_3[4]_i_10_n_0\
    );
\cnt_t_3[4]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01550101"
    )
        port map (
      I0 => p_0_in,
      I1 => cnt_t_3(4),
      I2 => \cnt_t_3[4]_i_6_n_0\,
      I3 => \cnt_t_3[4]_i_7_n_0\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_3__1_n_0\
    );
\cnt_t_3[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77CF03448830FCBB"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5_n_0\,
      I1 => \cnt_t_3[3]_i_4_n_0\,
      I2 => \cnt_t_3[3]_i_3_n_0\,
      I3 => cnt_t_3(3),
      I4 => \cnt_t_3[4]_i_8_n_0\,
      I5 => \cnt_t_3[4]_i_9_n_0\,
      O => \cnt_t_3[4]_i_4_n_0\
    );
\cnt_t_3[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69A65A69A59A69A"
    )
        port map (
      I0 => cnt_t_3(4),
      I1 => \cnt_t_3[4]_i_10_n_0\,
      I2 => n0q_m_2(3),
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => cnt_t_3(3),
      I5 => \cnt_t_3[3]_i_6_n_0\,
      O => \cnt_t_3[4]_i_5_n_0\
    );
\cnt_t_3[4]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt_t_3(3),
      I1 => cnt_t_3(1),
      I2 => cnt_t_3(2),
      O => \cnt_t_3[4]_i_6_n_0\
    );
\cnt_t_3[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_7_n_0\
    );
\cnt_t_3[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D04A2FBA2FB5D04"
    )
        port map (
      I0 => n0q_m_2(2),
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => n0q_m_2(1),
      I3 => \n1q_m_2_reg_n_0_[2]\,
      I4 => n0q_m_2(3),
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_8_n_0\
    );
\cnt_t_3[4]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"95A9"
    )
        port map (
      I0 => cnt_t_3(4),
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_10_n_0\,
      I3 => n0q_m_2(3),
      O => \cnt_t_3[4]_i_9_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => cnt_t_3(1),
      R => \^sr\(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(2),
      Q => cnt_t_3(2),
      R => \^sr\(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => cnt_t_3(3),
      R => \^sr\(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => cnt_t_3(4),
      R => \^sr\(0)
    );
\cnt_t_3_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[4]_i_4_n_0\,
      I1 => \cnt_t_3[4]_i_5_n_0\,
      O => cnt_t_2(4),
      S => \cnt_t_3[4]_i_3__1_n_0\
    );
\n0q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696669669969"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      I2 => \n1q_m_2[3]_i_4_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_6_n_0\,
      I5 => \n1q_m_2[3]_i_5_n_0\,
      O => minusOp(1)
    );
\n0q_m_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8EF7FF0800EF8E"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5_n_0\,
      I1 => \n1q_m_2[3]_i_6_n_0\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1q_m_2[3]_i_4_n_0\,
      I4 => \n1q_m_2[3]_i_3_n_0\,
      I5 => \n1q_m_2[3]_i_2_n_0\,
      O => \n0q_m_2[2]_i_1_n_0\
    );
\n0q_m_2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_6_n_0\,
      I2 => \n1q_m_2[3]_i_5_n_0\,
      I3 => \n1q_m_2[3]_i_4_n_0\,
      I4 => \n1q_m_2[3]_i_3_n_0\,
      I5 => \n1q_m_2[3]_i_2_n_0\,
      O => minusOp(3)
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => minusOp(1),
      Q => n0q_m_2(1),
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[2]_i_1_n_0\,
      Q => n0q_m_2(2),
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => minusOp(3),
      Q => n0q_m_2(3),
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => sum_bits(0)
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => sum_bits(1)
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => sum_bits(2)
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => sum_bits(3)
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => sum_bits(0),
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => sum_bits(1),
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => sum_bits(2),
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => sum_bits(3),
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5_n_0\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in2_in,
      I3 => \n1q_m_2[3]_i_4_n_0\,
      O => \n1q_m_2[0]_i_1_n_0\
    );
\n1q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      I2 => \n1q_m_2[3]_i_2_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_5_n_0\,
      I5 => \n1q_m_2[3]_i_6_n_0\,
      O => n1q_m_1(1)
    );
\n1q_m_2[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBFFFFD00022BBF"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5_n_0\,
      I2 => \n1q_m_2[3]_i_6_n_0\,
      I3 => \n1q_m_2[3]_i_4_n_0\,
      I4 => \n1q_m_2[3]_i_2_n_0\,
      I5 => \n1q_m_2[3]_i_3_n_0\,
      O => n1q_m_1(2)
    );
\n1q_m_2[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2_n_0\,
      I1 => \n1q_m_2[3]_i_3_n_0\,
      I2 => \n1q_m_2[3]_i_4_n_0\,
      I3 => \n1q_m_2[3]_i_5_n_0\,
      I4 => \n1q_m_2[3]_i_6_n_0\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => n1q_m_1(3)
    );
\n1q_m_2[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C33C96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => \q_m_2[8]_i_1_n_0\,
      O => \n1q_m_2[3]_i_2_n_0\
    );
\n1q_m_2[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3693"
    )
        port map (
      I0 => p_0_in6_in_1,
      I1 => \q_m_2[7]_i_2_n_0\,
      I2 => \q_m_2[8]_i_1_n_0\,
      I3 => p_0_in8_in_0,
      O => \n1q_m_2[3]_i_3_n_0\
    );
\n1q_m_2[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q_m_2[7]_i_2_n_0\,
      I1 => \q_m_2[8]_i_1_n_0\,
      I2 => p_0_in8_in_0,
      O => \n1q_m_2[3]_i_4_n_0\
    );
\n1q_m_2[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in6_in_1,
      I1 => \q_m_2[7]_i_2_n_0\,
      I2 => \q_m_2[8]_i_1_n_0\,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in_0,
      O => \n1q_m_2[3]_i_5_n_0\
    );
\n1q_m_2[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[3]_i_6_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[0]_i_1_n_0\,
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(1),
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(2),
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => n1q_m_1(3),
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
pC0_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pHSync,
      Q => pC0_1,
      R => '0'
    );
pC0_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pC0_1,
      Q => pC0_2,
      R => '0'
    );
pC1_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pVSync,
      Q => pC1_1,
      R => '0'
    );
pC1_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pC1_1,
      Q => pC1_2,
      R => '0'
    );
\pDataOutRaw[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => \cnt_t_3[4]_i_3__1_n_0\,
      I4 => \q_m_2_reg_n_0_[0]\,
      I5 => \cnt_t_3[3]_i_4_n_0\,
      O => \pDataOutRaw[0]_i_1__1_n_0\
    );
\pDataOutRaw[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => \cnt_t_3[4]_i_3__1_n_0\,
      I4 => \q_m_2_reg_n_0_[1]\,
      I5 => \cnt_t_3[3]_i_4_n_0\,
      O => \pDataOutRaw[1]_i_1__1_n_0\
    );
\pDataOutRaw[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF000FF44444444"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \cnt_t_3[4]_i_3__1_n_0\,
      I3 => \q_m_2_reg_n_0_[2]\,
      I4 => \cnt_t_3[3]_i_4_n_0\,
      I5 => \DataEncoders[2].DataEncoder/pVde_2\,
      O => q_out_20_in(2)
    );
\pDataOutRaw[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => \cnt_t_3[4]_i_3__1_n_0\,
      I4 => \q_m_2_reg_n_0_[3]\,
      I5 => \cnt_t_3[3]_i_4_n_0\,
      O => \pDataOutRaw[3]_i_1__1_n_0\
    );
\pDataOutRaw[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF000FF44444444"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \cnt_t_3[4]_i_3__1_n_0\,
      I3 => \q_m_2_reg_n_0_[4]\,
      I4 => \cnt_t_3[3]_i_4_n_0\,
      I5 => \DataEncoders[2].DataEncoder/pVde_2\,
      O => q_out_20_in(4)
    );
\pDataOutRaw[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => \cnt_t_3[4]_i_3__1_n_0\,
      I4 => \q_m_2_reg_n_0_[5]\,
      I5 => \cnt_t_3[3]_i_4_n_0\,
      O => \pDataOutRaw[5]_i_1__1_n_0\
    );
\pDataOutRaw[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FF000FF44444444"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \cnt_t_3[4]_i_3__1_n_0\,
      I3 => \q_m_2_reg_n_0_[6]\,
      I4 => \cnt_t_3[3]_i_4_n_0\,
      I5 => \DataEncoders[2].DataEncoder/pVde_2\,
      O => q_out_20_in(6)
    );
\pDataOutRaw[7]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFBFB0B0B0BFBFB"
    )
        port map (
      I0 => pC0_2,
      I1 => pC1_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => \cnt_t_3[4]_i_3__1_n_0\,
      I4 => \q_m_2_reg_n_0_[7]\,
      I5 => \cnt_t_3[3]_i_4_n_0\,
      O => \pDataOutRaw[7]_i_1__1_n_0\
    );
\pDataOutRaw[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A3A0"
    )
        port map (
      I0 => p_0_in,
      I1 => pC0_2,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => pC1_2,
      O => q_out_20_in(8)
    );
\pDataOutRaw[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => pC1_2,
      I1 => \DataEncoders[2].DataEncoder/pVde_2\,
      I2 => pC0_2,
      O => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0B0BF"
    )
        port map (
      I0 => \cnt_t_3[4]_i_3__1_n_0\,
      I1 => \cnt_t_3[3]_i_4_n_0\,
      I2 => \DataEncoders[2].DataEncoder/pVde_2\,
      I3 => pC0_2,
      I4 => pC1_2,
      O => q_out_20_in(9)
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__1_n_0\,
      Q => Q(0),
      R => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__1_n_0\,
      Q => Q(1),
      R => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(2),
      Q => Q(2),
      S => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__1_n_0\,
      Q => Q(3),
      R => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(4),
      Q => Q(4),
      S => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__1_n_0\,
      Q => Q(5),
      R => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(6),
      Q => Q(6),
      S => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__1_n_0\,
      Q => Q(7),
      R => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(8),
      Q => Q(8),
      S => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => q_out_20_in(9),
      Q => Q(9),
      S => \pDataOutRaw[9]_i_1__1_n_0\
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in_1,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in_0,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
pVde_1_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pVDE,
      Q => pVde_1,
      R => '0'
    );
pVde_2_reg: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => pVde_1,
      Q => \DataEncoders[2].DataEncoder/pVde_2\,
      R => '0'
    );
\q_m_2[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA5599669566"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[1]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[0]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[1]\,
      I5 => \n1d_1_reg_n_0_[3]\,
      O => \q_m_2[1]_i_1_n_0\
    );
\q_m_2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      O => p_0_in9_in
    );
\q_m_2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \q_m_2[8]_i_1_n_0\,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => p_0_in8_in
    );
\q_m_2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in4_in,
      O => p_0_in7_in
    );
\q_m_2[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_m_2[8]_i_1_n_0\,
      I1 => \q_m_2[7]_i_2_n_0\,
      I2 => p_0_in6_in_1,
      O => p_0_in6_in
    );
\q_m_2[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in8_in_0,
      I1 => \q_m_2[7]_i_2_n_0\,
      I2 => p_0_in6_in_1,
      O => \q_m_2[6]_i_1_n_0\
    );
\q_m_2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_2[8]_i_1_n_0\,
      I1 => \q_m_2[7]_i_2_n_0\,
      I2 => p_0_in6_in_1,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in_0,
      O => p_1_in12_in
    );
\q_m_2[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \q_m_2[7]_i_2_n_0\
    );
\q_m_2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105555"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[3]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[2]\,
      O => \q_m_2[8]_i_1_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[1]_i_1_n_0\,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in9_in,
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in8_in,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in7_in,
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in6_in,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[6]_i_1_n_0\,
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_1_in12_in,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_TMDS_Encoder_1 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PixelClk : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_TMDS_Encoder_1 : entity is "TMDS_Encoder";
end processor_design_hdmi_out_0_0_TMDS_Encoder_1;

architecture STRUCTURE of processor_design_hdmi_out_0_0_TMDS_Encoder_1 is
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_2__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_10__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_11_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_12_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_13_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_14_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1d_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \q_m_2[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_10__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_11\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_13\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_3\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_8__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_4__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_5__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_6__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pDataOutRaw[5]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2__0\ : label is "soft_lutpair11";
begin
\cnt_t_3[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669966969969696"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3[4]_i_4__0_n_0\,
      I4 => \cnt_t_3[2]_i_4__0_n_0\,
      I5 => p_0_in,
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A569A9A596A6A6A"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2__1_n_0\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3[2]_i_3__0_n_0\,
      I3 => \cnt_t_3[4]_i_4__0_n_0\,
      I4 => \cnt_t_3[2]_i_4__0_n_0\,
      I5 => p_0_in,
      O => cnt_t_2(2)
    );
\cnt_t_3[2]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96966996"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[1]\,
      I4 => \n0q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_2__1_n_0\
    );
\cnt_t_3[2]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_3__0_n_0\
    );
\cnt_t_3[2]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD0000FFFDFFFD"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => \cnt_t_3_reg_n_0_[4]\,
      I5 => \cnt_t_3[4]_i_12_n_0\,
      O => \cnt_t_3[2]_i_4__0_n_0\
    );
\cnt_t_3[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2_n_0\,
      I1 => \cnt_t_3[3]_i_3__0_n_0\,
      I2 => \cnt_t_3[4]_i_4__0_n_0\,
      I3 => \cnt_t_3[3]_i_4__0_n_0\,
      I4 => \cnt_t_3[4]_i_6__1_n_0\,
      I5 => \cnt_t_3[3]_i_5__0_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__0_n_0\,
      O => \cnt_t_3[3]_i_2_n_0\
    );
\cnt_t_3[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41D70000FFFF41D7"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      I4 => \cnt_t_3[4]_i_11_n_0\,
      I5 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_3__0_n_0\
    );
\cnt_t_3[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE8E8EEE88888E8"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \cnt_t_3[4]_i_11_n_0\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => p_0_in,
      O => \cnt_t_3[3]_i_4__0_n_0\
    );
\cnt_t_3[3]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BBF04DF04DF9BBF"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \n0q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_5__0_n_0\
    );
\cnt_t_3[4]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41D7"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      O => \cnt_t_3[4]_i_10__0_n_0\
    );
\cnt_t_3[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_11_n_0\
    );
\cnt_t_3[4]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_12_n_0\
    );
\cnt_t_3[4]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"147D"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      O => \cnt_t_3[4]_i_13_n_0\
    );
\cnt_t_3[4]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_14_n_0\
    );
\cnt_t_3[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[4]_i_2_n_0\,
      I1 => \cnt_t_3[4]_i_3_n_0\,
      I2 => \cnt_t_3[4]_i_4__0_n_0\,
      I3 => \cnt_t_3[4]_i_5__0_n_0\,
      I4 => \cnt_t_3[4]_i_6__1_n_0\,
      I5 => \cnt_t_3[4]_i_7__0_n_0\,
      O => cnt_t_2(4)
    );
\cnt_t_3[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"599A"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_8__0_n_0\,
      I3 => \n0q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_2_n_0\
    );
\cnt_t_3[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D444DDD4"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_9__0_n_0\,
      I2 => \cnt_t_3[4]_i_10__0_n_0\,
      I3 => \cnt_t_3[4]_i_11_n_0\,
      I4 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_3_n_0\
    );
\cnt_t_3[4]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCABFCABFCABFCBB"
    )
        port map (
      I0 => \cnt_t_3[4]_i_12_n_0\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      I3 => \cnt_t_3_reg_n_0_[4]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => \n1q_m_2_reg_n_0_[0]\,
      O => \cnt_t_3[4]_i_4__0_n_0\
    );
\cnt_t_3[4]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8E8E00"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \cnt_t_3[4]_i_11_n_0\,
      I2 => \cnt_t_3[4]_i_13_n_0\,
      I3 => \cnt_t_3_reg_n_0_[3]\,
      I4 => \cnt_t_3[4]_i_9__0_n_0\,
      O => \cnt_t_3[4]_i_5__0_n_0\
    );
\cnt_t_3[4]_i_6__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt_t_3[4]_i_12_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3[4]_i_14_n_0\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_6__1_n_0\
    );
\cnt_t_3[4]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F07FFFF00007F07"
    )
        port map (
      I0 => \cnt_t_3[2]_i_3__0_n_0\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      I3 => \cnt_t_3[4]_i_11_n_0\,
      I4 => \cnt_t_3_reg_n_0_[3]\,
      I5 => \cnt_t_3[4]_i_9__0_n_0\,
      O => \cnt_t_3[4]_i_7__0_n_0\
    );
\cnt_t_3[4]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AEF"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[2]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_8__0_n_0\
    );
\cnt_t_3[4]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F75108AE08AEF751"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[2]\,
      I4 => \n0q_m_2_reg_n_0_[3]\,
      I5 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_9__0_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => \cnt_t_3_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(2),
      Q => \cnt_t_3_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => \cnt_t_3_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => \cnt_t_3_reg_n_0_[4]\,
      R => SR(0)
    );
\n0q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696669669969"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      I2 => \n1q_m_2[3]_i_4__0_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_6__0_n_0\,
      I5 => \n1q_m_2[3]_i_5__0_n_0\,
      O => \n0q_m_2[1]_i_1__0_n_0\
    );
\n0q_m_2[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8EF7FF0800EF8E"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5__0_n_0\,
      I1 => \n1q_m_2[3]_i_6__0_n_0\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1q_m_2[3]_i_4__0_n_0\,
      I4 => \n1q_m_2[3]_i_3__0_n_0\,
      I5 => \n1q_m_2[3]_i_2__0_n_0\,
      O => \n0q_m_2[2]_i_1__0_n_0\
    );
\n0q_m_2[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_6__0_n_0\,
      I2 => \n1q_m_2[3]_i_5__0_n_0\,
      I3 => \n1q_m_2[3]_i_4__0_n_0\,
      I4 => \n1q_m_2[3]_i_3__0_n_0\,
      I5 => \n1q_m_2[3]_i_2__0_n_0\,
      O => \n0q_m_2[3]_i_1__0_n_0\
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[1]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[2]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[3]_i_1__0_n_0\,
      Q => \n0q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => \n1d_1[0]_i_1_n_0\
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => \n1d_1[1]_i_1_n_0\
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => \n1d_1[2]_i_1_n_0\
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => \n1d_1[3]_i_1_n_0\
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[0]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[1]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[2]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[3]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5__0_n_0\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in2_in,
      I3 => \n1q_m_2[3]_i_4__0_n_0\,
      O => \n1q_m_2[0]_i_1__0_n_0\
    );
\n1q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      I2 => \n1q_m_2[3]_i_2__0_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_5__0_n_0\,
      I5 => \n1q_m_2[3]_i_6__0_n_0\,
      O => \n1q_m_2[1]_i_1__0_n_0\
    );
\n1q_m_2[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBFFFFD00022BBF"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5__0_n_0\,
      I2 => \n1q_m_2[3]_i_6__0_n_0\,
      I3 => \n1q_m_2[3]_i_4__0_n_0\,
      I4 => \n1q_m_2[3]_i_2__0_n_0\,
      I5 => \n1q_m_2[3]_i_3__0_n_0\,
      O => \n1q_m_2[2]_i_1__0_n_0\
    );
\n1q_m_2[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__0_n_0\,
      I1 => \n1q_m_2[3]_i_3__0_n_0\,
      I2 => \n1q_m_2[3]_i_4__0_n_0\,
      I3 => \n1q_m_2[3]_i_5__0_n_0\,
      I4 => \n1q_m_2[3]_i_6__0_n_0\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[3]_i_1__0_n_0\
    );
\n1q_m_2[3]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C33C96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => \q_m_2[8]_i_1__0_n_0\,
      O => \n1q_m_2[3]_i_2__0_n_0\
    );
\n1q_m_2[3]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3693"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \q_m_2[7]_i_2__0_n_0\,
      I2 => \q_m_2[8]_i_1__0_n_0\,
      I3 => p_0_in8_in,
      O => \n1q_m_2[3]_i_3__0_n_0\
    );
\n1q_m_2[3]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q_m_2[7]_i_2__0_n_0\,
      I1 => \q_m_2[8]_i_1__0_n_0\,
      I2 => p_0_in8_in,
      O => \n1q_m_2[3]_i_4__0_n_0\
    );
\n1q_m_2[3]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \q_m_2[7]_i_2__0_n_0\,
      I2 => \q_m_2[8]_i_1__0_n_0\,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in,
      O => \n1q_m_2[3]_i_5__0_n_0\
    );
\n1q_m_2[3]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[3]_i_6__0_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[0]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[1]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[2]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[3]_i_1__0_n_0\,
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\pDataOutRaw[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      I1 => \q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[0]_i_1_n_0\
    );
\pDataOutRaw[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      I1 => \q_m_2_reg_n_0_[1]\,
      O => \pDataOutRaw[1]_i_1_n_0\
    );
\pDataOutRaw[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[4]_i_4__0_n_0\,
      I1 => \q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_6__1_n_0\,
      O => \pDataOutRaw[2]_i_1__0_n_0\
    );
\pDataOutRaw[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      I1 => \q_m_2_reg_n_0_[3]\,
      O => \pDataOutRaw[3]_i_1_n_0\
    );
\pDataOutRaw[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[4]_i_4__0_n_0\,
      I1 => \q_m_2_reg_n_0_[4]\,
      I2 => \cnt_t_3[4]_i_6__1_n_0\,
      O => \pDataOutRaw[4]_i_1__0_n_0\
    );
\pDataOutRaw[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      I1 => \q_m_2_reg_n_0_[5]\,
      O => \pDataOutRaw[5]_i_1_n_0\
    );
\pDataOutRaw[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[4]_i_4__0_n_0\,
      I1 => \q_m_2_reg_n_0_[6]\,
      I2 => \cnt_t_3[4]_i_6__1_n_0\,
      O => \pDataOutRaw[6]_i_1__0_n_0\
    );
\pDataOutRaw[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      I1 => \q_m_2_reg_n_0_[7]\,
      O => \pDataOutRaw[7]_i_1_n_0\
    );
\pDataOutRaw[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__0_n_0\,
      O => \pDataOutRaw[9]_i_1_n_0\
    );
\pDataOutRaw[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEE1FE200E213"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_14_n_0\,
      I3 => \cnt_t_3_reg_n_0_[4]\,
      I4 => \cnt_t_3[4]_i_12_n_0\,
      I5 => p_0_in,
      O => \pDataOutRaw[9]_i_2__0_n_0\
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[0]_i_1_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[1]_i_1_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[2]_i_1__0_n_0\,
      Q => Q(2),
      S => SR(0)
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[3]_i_1_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[4]_i_1__0_n_0\,
      Q => Q(4),
      S => SR(0)
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[5]_i_1_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[6]_i_1__0_n_0\,
      Q => Q(6),
      S => SR(0)
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[7]_i_1_n_0\,
      Q => Q(7),
      R => SR(0)
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in,
      Q => Q(8),
      S => SR(0)
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[9]_i_1_n_0\,
      Q => Q(9),
      S => SR(0)
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
\q_m_2[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA5599669566"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[1]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[0]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[1]\,
      I5 => \n1d_1_reg_n_0_[3]\,
      O => \q_m_2[1]_i_1__0_n_0\
    );
\q_m_2[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      O => \q_m_2[2]_i_1__0_n_0\
    );
\q_m_2[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \q_m_2[8]_i_1__0_n_0\,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \q_m_2[3]_i_1__0_n_0\
    );
\q_m_2[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in4_in,
      O => \q_m_2[4]_i_1__0_n_0\
    );
\q_m_2[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_m_2[8]_i_1__0_n_0\,
      I1 => \q_m_2[7]_i_2__0_n_0\,
      I2 => p_0_in6_in,
      O => \q_m_2[5]_i_1__0_n_0\
    );
\q_m_2[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \q_m_2[7]_i_2__0_n_0\,
      I2 => p_0_in6_in,
      O => \q_m_2[6]_i_1__0_n_0\
    );
\q_m_2[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_2[8]_i_1__0_n_0\,
      I1 => \q_m_2[7]_i_2__0_n_0\,
      I2 => p_0_in6_in,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in,
      O => \q_m_2[7]_i_1__0_n_0\
    );
\q_m_2[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \q_m_2[7]_i_2__0_n_0\
    );
\q_m_2[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105555"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[3]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[2]\,
      O => \q_m_2[8]_i_1__0_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[1]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[2]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[3]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[4]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[5]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[6]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[7]_i_1__0_n_0\,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1__0_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_TMDS_Encoder_3 is
  port (
    Q : out STD_LOGIC_VECTOR ( 9 downto 0 );
    PixelClk : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_TMDS_Encoder_3 : entity is "TMDS_Encoder";
end processor_design_hdmi_out_0_0_TMDS_Encoder_3;

architecture STRUCTURE of processor_design_hdmi_out_0_0_TMDS_Encoder_3 is
  signal cnt_t_2 : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \cnt_t_3[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[2]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[3]_i_7__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_4__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_5__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_6__0_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_7__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_8__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3[4]_i_9__1_n_0\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_t_3_reg_n_0_[4]\ : STD_LOGIC;
  signal \n0q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n0q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1d_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[0]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[1]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_3_n_0\ : STD_LOGIC;
  signal \n1d_1[3]_i_4_n_0\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1d_1_reg_n_0_[3]\ : STD_LOGIC;
  signal \n1q_m_2[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_3__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_4__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_5__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2[3]_i_6__1_n_0\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \n1q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \pDataOutRaw[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \pDataOutRaw[9]_i_2__1_n_0\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[0]\ : STD_LOGIC;
  signal \pDataOut_1_reg_n_0_[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_0_in10_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_0_in4_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal \q_m_2[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \q_m_2[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[3]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[4]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[5]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[6]\ : STD_LOGIC;
  signal \q_m_2_reg_n_0_[7]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_t_3[2]_i_3__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_2__0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt_t_3[3]_i_7__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_5__1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt_t_3[4]_i_9__1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \n1d_1[0]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1d_1[3]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \n1q_m_2[0]_i_1__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_2__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_3__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_4__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_5__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \n1q_m_2[3]_i_6__1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \pDataOutRaw[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pDataOutRaw[3]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \pDataOutRaw[4]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pDataOutRaw[5]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \pDataOutRaw[6]_i_1__1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \pDataOutRaw[7]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \q_m_2[3]_i_1__1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \q_m_2[4]_i_1__1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \q_m_2[5]_i_1__1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \q_m_2[6]_i_1__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_1__1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \q_m_2[7]_i_2__1\ : label is "soft_lutpair27";
begin
\cnt_t_3[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669966969969696"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3[3]_i_4__1_n_0\,
      I4 => \cnt_t_3[2]_i_4__1_n_0\,
      I5 => p_0_in,
      O => cnt_t_2(1)
    );
\cnt_t_3[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"59A959599A959595"
    )
        port map (
      I0 => \cnt_t_3[2]_i_2_n_0\,
      I1 => \cnt_t_3[2]_i_3__1_n_0\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3[3]_i_4__1_n_0\,
      I4 => \cnt_t_3[2]_i_4__1_n_0\,
      I5 => p_0_in,
      O => cnt_t_2(2)
    );
\cnt_t_3[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_2_n_0\
    );
\cnt_t_3[2]_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      O => \cnt_t_3[2]_i_3__1_n_0\
    );
\cnt_t_3[2]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFD0000FFFDFFFD"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[0]\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => \cnt_t_3_reg_n_0_[4]\,
      I5 => \cnt_t_3[4]_i_5__1_n_0\,
      O => \cnt_t_3[2]_i_4__1_n_0\
    );
\cnt_t_3[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555556A6AAAA56A6"
    )
        port map (
      I0 => \cnt_t_3[3]_i_2__0_n_0\,
      I1 => \cnt_t_3[3]_i_3__1_n_0\,
      I2 => \cnt_t_3[3]_i_4__1_n_0\,
      I3 => \cnt_t_3[3]_i_5__1_n_0\,
      I4 => \cnt_t_3[4]_i_2__0_n_0\,
      I5 => \cnt_t_3[3]_i_6__0_n_0\,
      O => cnt_t_2(3)
    );
\cnt_t_3[3]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3[4]_i_8__1_n_0\,
      O => \cnt_t_3[3]_i_2__0_n_0\
    );
\cnt_t_3[3]_i_3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"41D70000FFFF41D7"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      I4 => \cnt_t_3[3]_i_7__0_n_0\,
      I5 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_3__1_n_0\
    );
\cnt_t_3[3]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCABFCABFCABFCBB"
    )
        port map (
      I0 => \cnt_t_3[4]_i_5__1_n_0\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \n1q_m_2_reg_n_0_[2]\,
      I3 => \cnt_t_3_reg_n_0_[4]\,
      I4 => \n1q_m_2_reg_n_0_[1]\,
      I5 => \n1q_m_2_reg_n_0_[0]\,
      O => \cnt_t_3[3]_i_4__1_n_0\
    );
\cnt_t_3[3]_i_5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEB82EB820000"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => p_0_in,
      I4 => \cnt_t_3_reg_n_0_[2]\,
      I5 => \cnt_t_3[3]_i_7__0_n_0\,
      O => \cnt_t_3[3]_i_5__1_n_0\
    );
\cnt_t_3[3]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9BBF04DF04DF9BBF"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[1]\,
      I3 => \cnt_t_3_reg_n_0_[2]\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \n0q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_6__0_n_0\
    );
\cnt_t_3[3]_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n0q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[2]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[3]_i_7__0_n_0\
    );
\cnt_t_3[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04550404"
    )
        port map (
      I0 => p_0_in,
      I1 => \cnt_t_3[4]_i_5__1_n_0\,
      I2 => \cnt_t_3_reg_n_0_[4]\,
      I3 => \cnt_t_3[4]_i_6__0_n_0\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_2__0_n_0\
    );
\cnt_t_3[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0B4873CC3B4870F"
    )
        port map (
      I0 => \cnt_t_3[3]_i_5__1_n_0\,
      I1 => \cnt_t_3[3]_i_4__1_n_0\,
      I2 => \cnt_t_3[4]_i_7__1_n_0\,
      I3 => \cnt_t_3_reg_n_0_[3]\,
      I4 => \cnt_t_3[4]_i_8__1_n_0\,
      I5 => \cnt_t_3[3]_i_3__1_n_0\,
      O => \cnt_t_3[4]_i_3__0_n_0\
    );
\cnt_t_3[4]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A96A95A96A56A96A"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \n0q_m_2_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_9__1_n_0\,
      I3 => \n1q_m_2_reg_n_0_[3]\,
      I4 => \cnt_t_3_reg_n_0_[3]\,
      I5 => \cnt_t_3[3]_i_6__0_n_0\,
      O => \cnt_t_3[4]_i_4__1_n_0\
    );
\cnt_t_3[4]_i_5__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[3]\,
      I1 => \cnt_t_3_reg_n_0_[1]\,
      I2 => \cnt_t_3_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_5__1_n_0\
    );
\cnt_t_3[4]_i_6__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[1]\,
      I1 => \n1q_m_2_reg_n_0_[0]\,
      I2 => \n1q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_6__0_n_0\
    );
\cnt_t_3[4]_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A665"
    )
        port map (
      I0 => \cnt_t_3_reg_n_0_[4]\,
      I1 => \n1q_m_2_reg_n_0_[3]\,
      I2 => \cnt_t_3[4]_i_9__1_n_0\,
      I3 => \n0q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_7__1_n_0\
    );
\cnt_t_3[4]_i_8__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9959AA9A66A65565"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \n0q_m_2_reg_n_0_[2]\,
      I2 => \n1q_m_2_reg_n_0_[1]\,
      I3 => \n0q_m_2_reg_n_0_[1]\,
      I4 => \n1q_m_2_reg_n_0_[2]\,
      I5 => \n0q_m_2_reg_n_0_[3]\,
      O => \cnt_t_3[4]_i_8__1_n_0\
    );
\cnt_t_3[4]_i_9__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2FB"
    )
        port map (
      I0 => \n0q_m_2_reg_n_0_[2]\,
      I1 => \n1q_m_2_reg_n_0_[1]\,
      I2 => \n0q_m_2_reg_n_0_[1]\,
      I3 => \n1q_m_2_reg_n_0_[2]\,
      O => \cnt_t_3[4]_i_9__1_n_0\
    );
\cnt_t_3_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(1),
      Q => \cnt_t_3_reg_n_0_[1]\,
      R => SR(0)
    );
\cnt_t_3_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(2),
      Q => \cnt_t_3_reg_n_0_[2]\,
      R => SR(0)
    );
\cnt_t_3_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(3),
      Q => \cnt_t_3_reg_n_0_[3]\,
      R => SR(0)
    );
\cnt_t_3_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => PixelClk,
      CE => '1',
      D => cnt_t_2(4),
      Q => \cnt_t_3_reg_n_0_[4]\,
      R => SR(0)
    );
\cnt_t_3_reg[4]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cnt_t_3[4]_i_3__0_n_0\,
      I1 => \cnt_t_3[4]_i_4__1_n_0\,
      O => cnt_t_2(4),
      S => \cnt_t_3[4]_i_2__0_n_0\
    );
\n0q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6696696669669969"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      I2 => \n1q_m_2[3]_i_4__1_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_6__1_n_0\,
      I5 => \n1q_m_2[3]_i_5__1_n_0\,
      O => \n0q_m_2[1]_i_1__1_n_0\
    );
\n0q_m_2[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF8EF7FF0800EF8E"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5__1_n_0\,
      I1 => \n1q_m_2[3]_i_6__1_n_0\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1q_m_2[3]_i_4__1_n_0\,
      I4 => \n1q_m_2[3]_i_3__1_n_0\,
      I5 => \n1q_m_2[3]_i_2__1_n_0\,
      O => \n0q_m_2[2]_i_1__1_n_0\
    );
\n0q_m_2[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_6__1_n_0\,
      I2 => \n1q_m_2[3]_i_5__1_n_0\,
      I3 => \n1q_m_2[3]_i_4__1_n_0\,
      I4 => \n1q_m_2[3]_i_3__1_n_0\,
      I5 => \n1q_m_2[3]_i_2__1_n_0\,
      O => \n0q_m_2[3]_i_1__1_n_0\
    );
\n0q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[1]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n0q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[2]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n0q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n0q_m_2[3]_i_1__1_n_0\,
      Q => \n0q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\n1d_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => vid_pData(7),
      I1 => vid_pData(0),
      I2 => \n1d_1[0]_i_2_n_0\,
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => vid_pData(4),
      O => \n1d_1[0]_i_1_n_0\
    );
\n1d_1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => vid_pData(1),
      I1 => vid_pData(3),
      I2 => vid_pData(2),
      O => \n1d_1[0]_i_2_n_0\
    );
\n1d_1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[1]_i_2_n_0\,
      I2 => \n1d_1[3]_i_3_n_0\,
      O => \n1d_1[1]_i_1_n_0\
    );
\n1d_1[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"171717E817E8E8E8"
    )
        port map (
      I0 => vid_pData(4),
      I1 => vid_pData(5),
      I2 => vid_pData(6),
      I3 => vid_pData(1),
      I4 => vid_pData(2),
      I5 => vid_pData(3),
      O => \n1d_1[1]_i_2_n_0\
    );
\n1d_1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E7E7EE87EE8E8E8"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => \n1d_1[2]_i_2_n_0\,
      I3 => vid_pData(3),
      I4 => vid_pData(2),
      I5 => vid_pData(1),
      O => \n1d_1[2]_i_1_n_0\
    );
\n1d_1[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(6),
      I1 => vid_pData(5),
      I2 => vid_pData(4),
      O => \n1d_1[2]_i_2_n_0\
    );
\n1d_1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880800000000000"
    )
        port map (
      I0 => \n1d_1[3]_i_2_n_0\,
      I1 => \n1d_1[3]_i_3_n_0\,
      I2 => vid_pData(4),
      I3 => vid_pData(5),
      I4 => vid_pData(6),
      I5 => \n1d_1[3]_i_4_n_0\,
      O => \n1d_1[3]_i_1_n_0\
    );
\n1d_1[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9600009600969600"
    )
        port map (
      I0 => vid_pData(5),
      I1 => vid_pData(6),
      I2 => vid_pData(4),
      I3 => vid_pData(7),
      I4 => vid_pData(0),
      I5 => \n1d_1[0]_i_2_n_0\,
      O => \n1d_1[3]_i_2_n_0\
    );
\n1d_1[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E88E8EE8"
    )
        port map (
      I0 => vid_pData(0),
      I1 => vid_pData(7),
      I2 => vid_pData(2),
      I3 => vid_pData(3),
      I4 => vid_pData(1),
      O => \n1d_1[3]_i_3_n_0\
    );
\n1d_1[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => vid_pData(3),
      I1 => vid_pData(2),
      I2 => vid_pData(1),
      O => \n1d_1[3]_i_4_n_0\
    );
\n1d_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[0]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[0]\,
      R => '0'
    );
\n1d_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[1]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[1]\,
      R => '0'
    );
\n1d_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[2]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[2]\,
      R => '0'
    );
\n1d_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1d_1[3]_i_1_n_0\,
      Q => \n1d_1_reg_n_0_[3]\,
      R => '0'
    );
\n1q_m_2[0]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \n1q_m_2[3]_i_5__1_n_0\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in2_in,
      I3 => \n1q_m_2[3]_i_4__1_n_0\,
      O => \n1q_m_2[0]_i_1__1_n_0\
    );
\n1q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96C33C963C96693C"
    )
        port map (
      I0 => \n1q_m_2[3]_i_4__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      I2 => \n1q_m_2[3]_i_2__1_n_0\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1q_m_2[3]_i_5__1_n_0\,
      I5 => \n1q_m_2[3]_i_6__1_n_0\,
      O => \n1q_m_2[1]_i_1__1_n_0\
    );
\n1q_m_2[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2BBFFFFD00022BBF"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \n1q_m_2[3]_i_5__1_n_0\,
      I2 => \n1q_m_2[3]_i_6__1_n_0\,
      I3 => \n1q_m_2[3]_i_4__1_n_0\,
      I4 => \n1q_m_2[3]_i_2__1_n_0\,
      I5 => \n1q_m_2[3]_i_3__1_n_0\,
      O => \n1q_m_2[2]_i_1__1_n_0\
    );
\n1q_m_2[3]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \n1q_m_2[3]_i_2__1_n_0\,
      I1 => \n1q_m_2[3]_i_3__1_n_0\,
      I2 => \n1q_m_2[3]_i_4__1_n_0\,
      I3 => \n1q_m_2[3]_i_5__1_n_0\,
      I4 => \n1q_m_2[3]_i_6__1_n_0\,
      I5 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[3]_i_1__1_n_0\
    );
\n1q_m_2[3]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96C33C96"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => \q_m_2[8]_i_1__1_n_0\,
      O => \n1q_m_2[3]_i_2__1_n_0\
    );
\n1q_m_2[3]_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3693"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \q_m_2[7]_i_2__1_n_0\,
      I2 => \q_m_2[8]_i_1__1_n_0\,
      I3 => p_0_in8_in,
      O => \n1q_m_2[3]_i_3__1_n_0\
    );
\n1q_m_2[3]_i_4__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \q_m_2[7]_i_2__1_n_0\,
      I1 => \q_m_2[8]_i_1__1_n_0\,
      I2 => p_0_in8_in,
      O => \n1q_m_2[3]_i_4__1_n_0\
    );
\n1q_m_2[3]_i_5__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in6_in,
      I1 => \q_m_2[7]_i_2__1_n_0\,
      I2 => \q_m_2[8]_i_1__1_n_0\,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in,
      O => \n1q_m_2[3]_i_5__1_n_0\
    );
\n1q_m_2[3]_i_6__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      O => \n1q_m_2[3]_i_6__1_n_0\
    );
\n1q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[0]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\n1q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[1]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\n1q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[2]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\n1q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \n1q_m_2[3]_i_1__1_n_0\,
      Q => \n1q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\pDataOutRaw[0]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \q_m_2_reg_n_0_[0]\,
      O => \pDataOutRaw[0]_i_1__0_n_0\
    );
\pDataOutRaw[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \q_m_2_reg_n_0_[1]\,
      O => \pDataOutRaw[1]_i_1__0_n_0\
    );
\pDataOutRaw[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4__1_n_0\,
      I1 => \q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \pDataOutRaw[2]_i_1__1_n_0\
    );
\pDataOutRaw[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \q_m_2_reg_n_0_[3]\,
      O => \pDataOutRaw[3]_i_1__0_n_0\
    );
\pDataOutRaw[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4__1_n_0\,
      I1 => \q_m_2_reg_n_0_[4]\,
      I2 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \pDataOutRaw[4]_i_1__1_n_0\
    );
\pDataOutRaw[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \q_m_2_reg_n_0_[5]\,
      O => \pDataOutRaw[5]_i_1__0_n_0\
    );
\pDataOutRaw[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"39"
    )
        port map (
      I0 => \cnt_t_3[3]_i_4__1_n_0\,
      I1 => \q_m_2_reg_n_0_[6]\,
      I2 => \cnt_t_3[4]_i_2__0_n_0\,
      O => \pDataOutRaw[6]_i_1__1_n_0\
    );
\pDataOutRaw[7]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      I1 => \q_m_2_reg_n_0_[7]\,
      O => \pDataOutRaw[7]_i_1__0_n_0\
    );
\pDataOutRaw[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \pDataOutRaw[9]_i_2__1_n_0\,
      O => \pDataOutRaw[9]_i_1__0_n_0\
    );
\pDataOutRaw[9]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFFEE1FE200E213"
    )
        port map (
      I0 => \n1q_m_2_reg_n_0_[3]\,
      I1 => \n1q_m_2_reg_n_0_[2]\,
      I2 => \cnt_t_3[4]_i_6__0_n_0\,
      I3 => \cnt_t_3_reg_n_0_[4]\,
      I4 => \cnt_t_3[4]_i_5__1_n_0\,
      I5 => p_0_in,
      O => \pDataOutRaw[9]_i_2__1_n_0\
    );
\pDataOutRaw_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[0]_i_1__0_n_0\,
      Q => Q(0),
      R => SR(0)
    );
\pDataOutRaw_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[1]_i_1__0_n_0\,
      Q => Q(1),
      R => SR(0)
    );
\pDataOutRaw_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[2]_i_1__1_n_0\,
      Q => Q(2),
      S => SR(0)
    );
\pDataOutRaw_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[3]_i_1__0_n_0\,
      Q => Q(3),
      R => SR(0)
    );
\pDataOutRaw_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[4]_i_1__1_n_0\,
      Q => Q(4),
      S => SR(0)
    );
\pDataOutRaw_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[5]_i_1__0_n_0\,
      Q => Q(5),
      R => SR(0)
    );
\pDataOutRaw_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[6]_i_1__1_n_0\,
      Q => Q(6),
      S => SR(0)
    );
\pDataOutRaw_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[7]_i_1__0_n_0\,
      Q => Q(7),
      R => SR(0)
    );
\pDataOutRaw_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => p_0_in,
      Q => Q(8),
      S => SR(0)
    );
\pDataOutRaw_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOutRaw[9]_i_1__0_n_0\,
      Q => Q(9),
      S => SR(0)
    );
\pDataOut_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(0),
      Q => \pDataOut_1_reg_n_0_[0]\,
      R => '0'
    );
\pDataOut_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(1),
      Q => \pDataOut_1_reg_n_0_[1]\,
      R => '0'
    );
\pDataOut_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(2),
      Q => p_0_in0_in,
      R => '0'
    );
\pDataOut_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(3),
      Q => p_0_in2_in,
      R => '0'
    );
\pDataOut_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(4),
      Q => p_0_in4_in,
      R => '0'
    );
\pDataOut_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(5),
      Q => p_0_in6_in,
      R => '0'
    );
\pDataOut_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(6),
      Q => p_0_in8_in,
      R => '0'
    );
\pDataOut_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => vid_pData(7),
      Q => p_0_in10_in,
      R => '0'
    );
\q_m_2[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA55AA5599669566"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[1]\,
      I1 => \n1d_1_reg_n_0_[2]\,
      I2 => \n1d_1_reg_n_0_[0]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[1]\,
      I5 => \n1d_1_reg_n_0_[3]\,
      O => \q_m_2[1]_i_1__1_n_0\
    );
\q_m_2[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \pDataOut_1_reg_n_0_[0]\,
      I1 => \pDataOut_1_reg_n_0_[1]\,
      I2 => p_0_in0_in,
      O => \q_m_2[2]_i_1__1_n_0\
    );
\q_m_2[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => \q_m_2[8]_i_1__1_n_0\,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \q_m_2[3]_i_1__1_n_0\
    );
\q_m_2[4]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => p_0_in2_in,
      I1 => \pDataOut_1_reg_n_0_[0]\,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => p_0_in0_in,
      I4 => p_0_in4_in,
      O => \q_m_2[4]_i_1__1_n_0\
    );
\q_m_2[5]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \q_m_2[8]_i_1__1_n_0\,
      I1 => \q_m_2[7]_i_2__1_n_0\,
      I2 => p_0_in6_in,
      O => \q_m_2[5]_i_1__1_n_0\
    );
\q_m_2[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => \q_m_2[7]_i_2__1_n_0\,
      I2 => p_0_in6_in,
      O => \q_m_2[6]_i_1__1_n_0\
    );
\q_m_2[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96696996"
    )
        port map (
      I0 => \q_m_2[8]_i_1__1_n_0\,
      I1 => \q_m_2[7]_i_2__1_n_0\,
      I2 => p_0_in6_in,
      I3 => p_0_in10_in,
      I4 => p_0_in8_in,
      O => \q_m_2[7]_i_1__1_n_0\
    );
\q_m_2[7]_i_2__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969669"
    )
        port map (
      I0 => p_0_in4_in,
      I1 => p_0_in0_in,
      I2 => \pDataOut_1_reg_n_0_[1]\,
      I3 => \pDataOut_1_reg_n_0_[0]\,
      I4 => p_0_in2_in,
      O => \q_m_2[7]_i_2__1_n_0\
    );
\q_m_2[8]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00105555"
    )
        port map (
      I0 => \n1d_1_reg_n_0_[3]\,
      I1 => \n1d_1_reg_n_0_[1]\,
      I2 => \pDataOut_1_reg_n_0_[0]\,
      I3 => \n1d_1_reg_n_0_[0]\,
      I4 => \n1d_1_reg_n_0_[2]\,
      O => \q_m_2[8]_i_1__1_n_0\
    );
\q_m_2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \pDataOut_1_reg_n_0_[0]\,
      Q => \q_m_2_reg_n_0_[0]\,
      R => '0'
    );
\q_m_2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[1]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[1]\,
      R => '0'
    );
\q_m_2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[2]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[2]\,
      R => '0'
    );
\q_m_2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[3]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[3]\,
      R => '0'
    );
\q_m_2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[4]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[4]\,
      R => '0'
    );
\q_m_2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[5]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[5]\,
      R => '0'
    );
\q_m_2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[6]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[6]\,
      R => '0'
    );
\q_m_2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[7]_i_1__1_n_0\,
      Q => \q_m_2_reg_n_0_[7]\,
      R => '0'
    );
\q_m_2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => PixelClk,
      CE => '1',
      D => \q_m_2[8]_i_1__1_n_0\,
      Q => p_0_in,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_ResetBridge is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    aRst : in STD_LOGIC;
    PixelClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_ResetBridge : entity is "ResetBridge";
end processor_design_hdmi_out_0_0_ResetBridge;

architecture STRUCTURE of processor_design_hdmi_out_0_0_ResetBridge is
  signal aRst_int : STD_LOGIC;
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of aRst_int : signal is "true";
begin
  aRst_int <= aRst;
SyncAsyncx: entity work.processor_design_hdmi_out_0_0_SyncAsync
     port map (
      AS(0) => aRst_int,
      PixelClk => PixelClk,
      \out\(0) => \out\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_rgb2dvi is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst : in STD_LOGIC;
    aRst_n : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_rgb2dvi : entity is "rgb2dvi";
  attribute kClkPrimitive : string;
  attribute kClkPrimitive of processor_design_hdmi_out_0_0_rgb2dvi : entity is "PLL";
  attribute kClkRange : integer;
  attribute kClkRange of processor_design_hdmi_out_0_0_rgb2dvi : entity is 1;
  attribute kClkSwap : string;
  attribute kClkSwap of processor_design_hdmi_out_0_0_rgb2dvi : entity is "FALSE";
  attribute kD0Swap : string;
  attribute kD0Swap of processor_design_hdmi_out_0_0_rgb2dvi : entity is "FALSE";
  attribute kD1Swap : string;
  attribute kD1Swap of processor_design_hdmi_out_0_0_rgb2dvi : entity is "FALSE";
  attribute kD2Swap : string;
  attribute kD2Swap of processor_design_hdmi_out_0_0_rgb2dvi : entity is "FALSE";
  attribute kGenerateSerialClk : string;
  attribute kGenerateSerialClk of processor_design_hdmi_out_0_0_rgb2dvi : entity is "FALSE";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of processor_design_hdmi_out_0_0_rgb2dvi : entity is "TRUE";
end processor_design_hdmi_out_0_0_rgb2dvi;

architecture STRUCTURE of processor_design_hdmi_out_0_0_rgb2dvi is
  signal \pDataOutRaw[0]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pDataOutRaw[1]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pDataOutRaw[2]\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pRstLck : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
begin
ClockSerializer: entity work.processor_design_hdmi_out_0_0_OutputSERDES
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      aRst => pRstLck
    );
\DataEncoders[0].DataEncoder\: entity work.processor_design_hdmi_out_0_0_TMDS_Encoder
     port map (
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[0]\(9 downto 0),
      SR(0) => p_1_in,
      vid_pData(7 downto 0) => vid_pData(15 downto 8),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
\DataEncoders[0].DataSerializer\: entity work.processor_design_hdmi_out_0_0_OutputSERDES_0
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(0),
      TMDS_Data_p(0) => TMDS_Data_p(0),
      aRst => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[0]\(9 downto 0)
    );
\DataEncoders[1].DataEncoder\: entity work.processor_design_hdmi_out_0_0_TMDS_Encoder_1
     port map (
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[1]\(9 downto 0),
      SR(0) => p_1_in,
      vid_pData(7 downto 0) => vid_pData(7 downto 0)
    );
\DataEncoders[1].DataSerializer\: entity work.processor_design_hdmi_out_0_0_OutputSERDES_2
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(1),
      TMDS_Data_p(0) => TMDS_Data_p(1),
      \out\(0) => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[1]\(9 downto 0)
    );
\DataEncoders[2].DataEncoder\: entity work.processor_design_hdmi_out_0_0_TMDS_Encoder_3
     port map (
      PixelClk => PixelClk,
      Q(9 downto 0) => \pDataOutRaw[2]\(9 downto 0),
      SR(0) => p_1_in,
      vid_pData(7 downto 0) => vid_pData(23 downto 16)
    );
\DataEncoders[2].DataSerializer\: entity work.processor_design_hdmi_out_0_0_OutputSERDES_4
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Data_n(0) => TMDS_Data_n(2),
      TMDS_Data_p(0) => TMDS_Data_p(2),
      \out\(0) => pRstLck,
      pDataOut(9 downto 0) => \pDataOutRaw[2]\(9 downto 0)
    );
LockLostReset: entity work.processor_design_hdmi_out_0_0_ResetBridge
     port map (
      PixelClk => PixelClk,
      aRst => aRst,
      \out\(0) => pRstLck
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_rgb2dvi_0 is
  port (
    TMDS_Clk_p : out STD_LOGIC;
    TMDS_Clk_n : out STD_LOGIC;
    TMDS_Data_p : out STD_LOGIC_VECTOR ( 2 downto 0 );
    TMDS_Data_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    aRst : in STD_LOGIC;
    vid_pData : in STD_LOGIC_VECTOR ( 23 downto 0 );
    vid_pVDE : in STD_LOGIC;
    vid_pHSync : in STD_LOGIC;
    vid_pVSync : in STD_LOGIC;
    PixelClk : in STD_LOGIC;
    SerialClk : in STD_LOGIC
  );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_hdmi_out_0_0_rgb2dvi_0 : entity is "rgb2dvi_0,rgb2dvi,{}";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_rgb2dvi_0 : entity is "rgb2dvi_0";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_hdmi_out_0_0_rgb2dvi_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_hdmi_out_0_0_rgb2dvi_0 : entity is "rgb2dvi,Vivado 2018.2";
end processor_design_hdmi_out_0_0_rgb2dvi_0;

architecture STRUCTURE of processor_design_hdmi_out_0_0_rgb2dvi_0 is
  attribute kClkPrimitive : string;
  attribute kClkPrimitive of U0 : label is "PLL";
  attribute kClkRange : integer;
  attribute kClkRange of U0 : label is 1;
  attribute kClkSwap : string;
  attribute kClkSwap of U0 : label is "FALSE";
  attribute kD0Swap : string;
  attribute kD0Swap of U0 : label is "FALSE";
  attribute kD1Swap : string;
  attribute kD1Swap of U0 : label is "FALSE";
  attribute kD2Swap : string;
  attribute kD2Swap of U0 : label is "FALSE";
  attribute kGenerateSerialClk : string;
  attribute kGenerateSerialClk of U0 : label is "FALSE";
  attribute kRstActiveHigh : string;
  attribute kRstActiveHigh of U0 : label is "TRUE";
  attribute x_interface_info : string;
  attribute x_interface_info of PixelClk : signal is "xilinx.com:signal:clock:1.0 PixelClk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of PixelClk : signal is "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of SerialClk : signal is "xilinx.com:signal:clock:1.0 SerialClk CLK";
  attribute x_interface_parameter of SerialClk : signal is "XIL_INTERFACENAME SerialClk, ASSOCIATED_RESET aRst:aRst_n:pRst:pRst_n, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of TMDS_Clk_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK";
  attribute x_interface_parameter of TMDS_Clk_n : signal is "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of TMDS_Clk_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK";
  attribute x_interface_parameter of TMDS_Clk_p : signal is "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of aRst : signal is "xilinx.com:signal:reset:1.0 AsyncRst RST";
  attribute x_interface_parameter of aRst : signal is "XIL_INTERFACENAME AsyncRst, POLARITY ACTIVE_HIGH";
  attribute x_interface_info of vid_pHSync : signal is "xilinx.com:interface:vid_io:1.0 RGB HSYNC";
  attribute x_interface_info of vid_pVDE : signal is "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO";
  attribute x_interface_info of vid_pVSync : signal is "xilinx.com:interface:vid_io:1.0 RGB VSYNC";
  attribute x_interface_info of TMDS_Data_n : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_N";
  attribute x_interface_info of TMDS_Data_p : signal is "digilentinc.com:interface:tmds:1.0 TMDS DATA_P";
  attribute x_interface_info of vid_pData : signal is "xilinx.com:interface:vid_io:1.0 RGB DATA";
begin
U0: entity work.processor_design_hdmi_out_0_0_rgb2dvi
     port map (
      PixelClk => PixelClk,
      SerialClk => SerialClk,
      TMDS_Clk_n => TMDS_Clk_n,
      TMDS_Clk_p => TMDS_Clk_p,
      TMDS_Data_n(2 downto 0) => TMDS_Data_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => TMDS_Data_p(2 downto 0),
      aRst => aRst,
      aRst_n => '1',
      vid_pData(23 downto 0) => vid_pData(23 downto 0),
      vid_pHSync => vid_pHSync,
      vid_pVDE => vid_pVDE,
      vid_pVSync => vid_pVSync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0_hdmi_out is
  port (
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_hdmi_out_0_0_hdmi_out : entity is "hdmi_out";
end processor_design_hdmi_out_0_0_hdmi_out;

architecture STRUCTURE of processor_design_hdmi_out_0_0_hdmi_out is
  signal b8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal b80 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal g8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal g80 : STD_LOGIC_VECTOR ( 13 downto 3 );
  signal r8 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal r80 : STD_LOGIC_VECTOR ( 12 downto 3 );
  signal vga2hdmi_i_100_n_0 : STD_LOGIC;
  signal vga2hdmi_i_101_n_0 : STD_LOGIC;
  signal vga2hdmi_i_102_n_0 : STD_LOGIC;
  signal vga2hdmi_i_102_n_2 : STD_LOGIC;
  signal vga2hdmi_i_102_n_3 : STD_LOGIC;
  signal vga2hdmi_i_103_n_0 : STD_LOGIC;
  signal vga2hdmi_i_104_n_0 : STD_LOGIC;
  signal vga2hdmi_i_105_n_0 : STD_LOGIC;
  signal vga2hdmi_i_106_n_0 : STD_LOGIC;
  signal vga2hdmi_i_107_n_0 : STD_LOGIC;
  signal vga2hdmi_i_108_n_0 : STD_LOGIC;
  signal vga2hdmi_i_110_n_0 : STD_LOGIC;
  signal vga2hdmi_i_111_n_0 : STD_LOGIC;
  signal vga2hdmi_i_112_n_0 : STD_LOGIC;
  signal vga2hdmi_i_113_n_0 : STD_LOGIC;
  signal vga2hdmi_i_114_n_0 : STD_LOGIC;
  signal vga2hdmi_i_114_n_1 : STD_LOGIC;
  signal vga2hdmi_i_114_n_2 : STD_LOGIC;
  signal vga2hdmi_i_114_n_3 : STD_LOGIC;
  signal vga2hdmi_i_114_n_4 : STD_LOGIC;
  signal vga2hdmi_i_114_n_5 : STD_LOGIC;
  signal vga2hdmi_i_114_n_6 : STD_LOGIC;
  signal vga2hdmi_i_114_n_7 : STD_LOGIC;
  signal vga2hdmi_i_115_n_0 : STD_LOGIC;
  signal vga2hdmi_i_116_n_0 : STD_LOGIC;
  signal vga2hdmi_i_117_n_0 : STD_LOGIC;
  signal vga2hdmi_i_118_n_0 : STD_LOGIC;
  signal vga2hdmi_i_119_n_0 : STD_LOGIC;
  signal vga2hdmi_i_120_n_0 : STD_LOGIC;
  signal vga2hdmi_i_121_n_0 : STD_LOGIC;
  signal vga2hdmi_i_122_n_0 : STD_LOGIC;
  signal vga2hdmi_i_123_n_0 : STD_LOGIC;
  signal vga2hdmi_i_123_n_1 : STD_LOGIC;
  signal vga2hdmi_i_123_n_2 : STD_LOGIC;
  signal vga2hdmi_i_123_n_3 : STD_LOGIC;
  signal vga2hdmi_i_123_n_4 : STD_LOGIC;
  signal vga2hdmi_i_123_n_5 : STD_LOGIC;
  signal vga2hdmi_i_123_n_6 : STD_LOGIC;
  signal vga2hdmi_i_123_n_7 : STD_LOGIC;
  signal vga2hdmi_i_124_n_3 : STD_LOGIC;
  signal vga2hdmi_i_125_n_0 : STD_LOGIC;
  signal vga2hdmi_i_125_n_1 : STD_LOGIC;
  signal vga2hdmi_i_125_n_2 : STD_LOGIC;
  signal vga2hdmi_i_125_n_3 : STD_LOGIC;
  signal vga2hdmi_i_126_n_0 : STD_LOGIC;
  signal vga2hdmi_i_127_n_0 : STD_LOGIC;
  signal vga2hdmi_i_128_n_0 : STD_LOGIC;
  signal vga2hdmi_i_129_n_0 : STD_LOGIC;
  signal vga2hdmi_i_130_n_0 : STD_LOGIC;
  signal vga2hdmi_i_131_n_0 : STD_LOGIC;
  signal vga2hdmi_i_132_n_0 : STD_LOGIC;
  signal vga2hdmi_i_133_n_0 : STD_LOGIC;
  signal vga2hdmi_i_134_n_3 : STD_LOGIC;
  signal vga2hdmi_i_135_n_0 : STD_LOGIC;
  signal vga2hdmi_i_136_n_0 : STD_LOGIC;
  signal vga2hdmi_i_137_n_0 : STD_LOGIC;
  signal vga2hdmi_i_138_n_0 : STD_LOGIC;
  signal vga2hdmi_i_139_n_0 : STD_LOGIC;
  signal vga2hdmi_i_140_n_0 : STD_LOGIC;
  signal vga2hdmi_i_141_n_0 : STD_LOGIC;
  signal vga2hdmi_i_141_n_1 : STD_LOGIC;
  signal vga2hdmi_i_141_n_2 : STD_LOGIC;
  signal vga2hdmi_i_141_n_3 : STD_LOGIC;
  signal vga2hdmi_i_141_n_4 : STD_LOGIC;
  signal vga2hdmi_i_141_n_5 : STD_LOGIC;
  signal vga2hdmi_i_141_n_6 : STD_LOGIC;
  signal vga2hdmi_i_141_n_7 : STD_LOGIC;
  signal vga2hdmi_i_142_n_0 : STD_LOGIC;
  signal vga2hdmi_i_143_n_0 : STD_LOGIC;
  signal vga2hdmi_i_144_n_0 : STD_LOGIC;
  signal vga2hdmi_i_145_n_0 : STD_LOGIC;
  signal vga2hdmi_i_146_n_0 : STD_LOGIC;
  signal vga2hdmi_i_147_n_0 : STD_LOGIC;
  signal vga2hdmi_i_148_n_0 : STD_LOGIC;
  signal vga2hdmi_i_149_n_0 : STD_LOGIC;
  signal vga2hdmi_i_150_n_0 : STD_LOGIC;
  signal vga2hdmi_i_150_n_1 : STD_LOGIC;
  signal vga2hdmi_i_150_n_2 : STD_LOGIC;
  signal vga2hdmi_i_150_n_3 : STD_LOGIC;
  signal vga2hdmi_i_150_n_4 : STD_LOGIC;
  signal vga2hdmi_i_150_n_5 : STD_LOGIC;
  signal vga2hdmi_i_150_n_6 : STD_LOGIC;
  signal vga2hdmi_i_150_n_7 : STD_LOGIC;
  signal vga2hdmi_i_151_n_3 : STD_LOGIC;
  signal vga2hdmi_i_152_n_0 : STD_LOGIC;
  signal vga2hdmi_i_152_n_1 : STD_LOGIC;
  signal vga2hdmi_i_152_n_2 : STD_LOGIC;
  signal vga2hdmi_i_152_n_3 : STD_LOGIC;
  signal vga2hdmi_i_153_n_0 : STD_LOGIC;
  signal vga2hdmi_i_154_n_0 : STD_LOGIC;
  signal vga2hdmi_i_155_n_0 : STD_LOGIC;
  signal vga2hdmi_i_156_n_0 : STD_LOGIC;
  signal vga2hdmi_i_157_n_0 : STD_LOGIC;
  signal vga2hdmi_i_158_n_0 : STD_LOGIC;
  signal vga2hdmi_i_159_n_0 : STD_LOGIC;
  signal vga2hdmi_i_160_n_0 : STD_LOGIC;
  signal vga2hdmi_i_162_n_0 : STD_LOGIC;
  signal vga2hdmi_i_162_n_1 : STD_LOGIC;
  signal vga2hdmi_i_162_n_2 : STD_LOGIC;
  signal vga2hdmi_i_162_n_3 : STD_LOGIC;
  signal vga2hdmi_i_163_n_0 : STD_LOGIC;
  signal vga2hdmi_i_164_n_0 : STD_LOGIC;
  signal vga2hdmi_i_165_n_0 : STD_LOGIC;
  signal vga2hdmi_i_166_n_0 : STD_LOGIC;
  signal vga2hdmi_i_166_n_2 : STD_LOGIC;
  signal vga2hdmi_i_166_n_3 : STD_LOGIC;
  signal vga2hdmi_i_167_n_0 : STD_LOGIC;
  signal vga2hdmi_i_168_n_0 : STD_LOGIC;
  signal vga2hdmi_i_169_n_0 : STD_LOGIC;
  signal vga2hdmi_i_170_n_0 : STD_LOGIC;
  signal vga2hdmi_i_171_n_0 : STD_LOGIC;
  signal vga2hdmi_i_172_n_0 : STD_LOGIC;
  signal vga2hdmi_i_174_n_0 : STD_LOGIC;
  signal vga2hdmi_i_175_n_0 : STD_LOGIC;
  signal vga2hdmi_i_176_n_0 : STD_LOGIC;
  signal vga2hdmi_i_177_n_0 : STD_LOGIC;
  signal vga2hdmi_i_178_n_0 : STD_LOGIC;
  signal vga2hdmi_i_178_n_1 : STD_LOGIC;
  signal vga2hdmi_i_178_n_2 : STD_LOGIC;
  signal vga2hdmi_i_178_n_3 : STD_LOGIC;
  signal vga2hdmi_i_178_n_4 : STD_LOGIC;
  signal vga2hdmi_i_178_n_5 : STD_LOGIC;
  signal vga2hdmi_i_178_n_6 : STD_LOGIC;
  signal vga2hdmi_i_178_n_7 : STD_LOGIC;
  signal vga2hdmi_i_179_n_0 : STD_LOGIC;
  signal vga2hdmi_i_180_n_0 : STD_LOGIC;
  signal vga2hdmi_i_181_n_0 : STD_LOGIC;
  signal vga2hdmi_i_182_n_0 : STD_LOGIC;
  signal vga2hdmi_i_183_n_0 : STD_LOGIC;
  signal vga2hdmi_i_184_n_0 : STD_LOGIC;
  signal vga2hdmi_i_185_n_0 : STD_LOGIC;
  signal vga2hdmi_i_186_n_0 : STD_LOGIC;
  signal vga2hdmi_i_187_n_0 : STD_LOGIC;
  signal vga2hdmi_i_187_n_1 : STD_LOGIC;
  signal vga2hdmi_i_187_n_2 : STD_LOGIC;
  signal vga2hdmi_i_187_n_3 : STD_LOGIC;
  signal vga2hdmi_i_187_n_4 : STD_LOGIC;
  signal vga2hdmi_i_187_n_5 : STD_LOGIC;
  signal vga2hdmi_i_187_n_6 : STD_LOGIC;
  signal vga2hdmi_i_187_n_7 : STD_LOGIC;
  signal vga2hdmi_i_188_n_3 : STD_LOGIC;
  signal vga2hdmi_i_189_n_0 : STD_LOGIC;
  signal vga2hdmi_i_189_n_1 : STD_LOGIC;
  signal vga2hdmi_i_189_n_2 : STD_LOGIC;
  signal vga2hdmi_i_189_n_3 : STD_LOGIC;
  signal vga2hdmi_i_190_n_0 : STD_LOGIC;
  signal vga2hdmi_i_191_n_0 : STD_LOGIC;
  signal vga2hdmi_i_192_n_0 : STD_LOGIC;
  signal vga2hdmi_i_193_n_0 : STD_LOGIC;
  signal vga2hdmi_i_194_n_0 : STD_LOGIC;
  signal vga2hdmi_i_195_n_0 : STD_LOGIC;
  signal vga2hdmi_i_196_n_0 : STD_LOGIC;
  signal vga2hdmi_i_197_n_0 : STD_LOGIC;
  signal vga2hdmi_i_198_n_0 : STD_LOGIC;
  signal vga2hdmi_i_199_n_0 : STD_LOGIC;
  signal vga2hdmi_i_200_n_0 : STD_LOGIC;
  signal vga2hdmi_i_201_n_0 : STD_LOGIC;
  signal vga2hdmi_i_202_n_0 : STD_LOGIC;
  signal vga2hdmi_i_203_n_0 : STD_LOGIC;
  signal vga2hdmi_i_204_n_0 : STD_LOGIC;
  signal vga2hdmi_i_205_n_0 : STD_LOGIC;
  signal vga2hdmi_i_206_n_0 : STD_LOGIC;
  signal vga2hdmi_i_207_n_0 : STD_LOGIC;
  signal vga2hdmi_i_208_n_0 : STD_LOGIC;
  signal vga2hdmi_i_209_n_0 : STD_LOGIC;
  signal vga2hdmi_i_210_n_0 : STD_LOGIC;
  signal vga2hdmi_i_210_n_1 : STD_LOGIC;
  signal vga2hdmi_i_210_n_2 : STD_LOGIC;
  signal vga2hdmi_i_210_n_3 : STD_LOGIC;
  signal vga2hdmi_i_210_n_4 : STD_LOGIC;
  signal vga2hdmi_i_210_n_5 : STD_LOGIC;
  signal vga2hdmi_i_210_n_6 : STD_LOGIC;
  signal vga2hdmi_i_210_n_7 : STD_LOGIC;
  signal vga2hdmi_i_211_n_0 : STD_LOGIC;
  signal vga2hdmi_i_212_n_0 : STD_LOGIC;
  signal vga2hdmi_i_213_n_0 : STD_LOGIC;
  signal vga2hdmi_i_214_n_0 : STD_LOGIC;
  signal vga2hdmi_i_215_n_0 : STD_LOGIC;
  signal vga2hdmi_i_215_n_1 : STD_LOGIC;
  signal vga2hdmi_i_215_n_2 : STD_LOGIC;
  signal vga2hdmi_i_215_n_3 : STD_LOGIC;
  signal vga2hdmi_i_216_n_0 : STD_LOGIC;
  signal vga2hdmi_i_217_n_0 : STD_LOGIC;
  signal vga2hdmi_i_218_n_0 : STD_LOGIC;
  signal vga2hdmi_i_219_n_0 : STD_LOGIC;
  signal vga2hdmi_i_220_n_0 : STD_LOGIC;
  signal vga2hdmi_i_221_n_0 : STD_LOGIC;
  signal vga2hdmi_i_222_n_0 : STD_LOGIC;
  signal vga2hdmi_i_223_n_0 : STD_LOGIC;
  signal vga2hdmi_i_224_n_0 : STD_LOGIC;
  signal vga2hdmi_i_225_n_0 : STD_LOGIC;
  signal vga2hdmi_i_226_n_0 : STD_LOGIC;
  signal vga2hdmi_i_227_n_0 : STD_LOGIC;
  signal vga2hdmi_i_228_n_0 : STD_LOGIC;
  signal vga2hdmi_i_229_n_0 : STD_LOGIC;
  signal vga2hdmi_i_230_n_0 : STD_LOGIC;
  signal vga2hdmi_i_231_n_0 : STD_LOGIC;
  signal vga2hdmi_i_231_n_1 : STD_LOGIC;
  signal vga2hdmi_i_231_n_2 : STD_LOGIC;
  signal vga2hdmi_i_231_n_3 : STD_LOGIC;
  signal vga2hdmi_i_231_n_4 : STD_LOGIC;
  signal vga2hdmi_i_231_n_5 : STD_LOGIC;
  signal vga2hdmi_i_231_n_6 : STD_LOGIC;
  signal vga2hdmi_i_231_n_7 : STD_LOGIC;
  signal vga2hdmi_i_232_n_0 : STD_LOGIC;
  signal vga2hdmi_i_233_n_0 : STD_LOGIC;
  signal vga2hdmi_i_234_n_0 : STD_LOGIC;
  signal vga2hdmi_i_235_n_0 : STD_LOGIC;
  signal vga2hdmi_i_236_n_0 : STD_LOGIC;
  signal vga2hdmi_i_236_n_1 : STD_LOGIC;
  signal vga2hdmi_i_236_n_2 : STD_LOGIC;
  signal vga2hdmi_i_236_n_3 : STD_LOGIC;
  signal vga2hdmi_i_237_n_0 : STD_LOGIC;
  signal vga2hdmi_i_238_n_0 : STD_LOGIC;
  signal vga2hdmi_i_239_n_0 : STD_LOGIC;
  signal vga2hdmi_i_240_n_0 : STD_LOGIC;
  signal vga2hdmi_i_241_n_0 : STD_LOGIC;
  signal vga2hdmi_i_242_n_0 : STD_LOGIC;
  signal vga2hdmi_i_243_n_0 : STD_LOGIC;
  signal vga2hdmi_i_244_n_0 : STD_LOGIC;
  signal vga2hdmi_i_245_n_0 : STD_LOGIC;
  signal vga2hdmi_i_246_n_0 : STD_LOGIC;
  signal vga2hdmi_i_247_n_0 : STD_LOGIC;
  signal vga2hdmi_i_248_n_0 : STD_LOGIC;
  signal vga2hdmi_i_249_n_0 : STD_LOGIC;
  signal vga2hdmi_i_250_n_0 : STD_LOGIC;
  signal vga2hdmi_i_251_n_0 : STD_LOGIC;
  signal vga2hdmi_i_252_n_0 : STD_LOGIC;
  signal vga2hdmi_i_253_n_0 : STD_LOGIC;
  signal vga2hdmi_i_254_n_0 : STD_LOGIC;
  signal vga2hdmi_i_255_n_0 : STD_LOGIC;
  signal vga2hdmi_i_256_n_0 : STD_LOGIC;
  signal vga2hdmi_i_257_n_0 : STD_LOGIC;
  signal vga2hdmi_i_258_n_0 : STD_LOGIC;
  signal vga2hdmi_i_259_n_0 : STD_LOGIC;
  signal vga2hdmi_i_25_n_1 : STD_LOGIC;
  signal vga2hdmi_i_25_n_3 : STD_LOGIC;
  signal vga2hdmi_i_25_n_6 : STD_LOGIC;
  signal vga2hdmi_i_25_n_7 : STD_LOGIC;
  signal vga2hdmi_i_260_n_0 : STD_LOGIC;
  signal vga2hdmi_i_261_n_0 : STD_LOGIC;
  signal vga2hdmi_i_262_n_0 : STD_LOGIC;
  signal vga2hdmi_i_263_n_0 : STD_LOGIC;
  signal vga2hdmi_i_264_n_0 : STD_LOGIC;
  signal vga2hdmi_i_264_n_1 : STD_LOGIC;
  signal vga2hdmi_i_264_n_2 : STD_LOGIC;
  signal vga2hdmi_i_264_n_3 : STD_LOGIC;
  signal vga2hdmi_i_264_n_4 : STD_LOGIC;
  signal vga2hdmi_i_264_n_5 : STD_LOGIC;
  signal vga2hdmi_i_264_n_6 : STD_LOGIC;
  signal vga2hdmi_i_264_n_7 : STD_LOGIC;
  signal vga2hdmi_i_265_n_0 : STD_LOGIC;
  signal vga2hdmi_i_266_n_0 : STD_LOGIC;
  signal vga2hdmi_i_267_n_0 : STD_LOGIC;
  signal vga2hdmi_i_268_n_0 : STD_LOGIC;
  signal vga2hdmi_i_269_n_0 : STD_LOGIC;
  signal vga2hdmi_i_269_n_1 : STD_LOGIC;
  signal vga2hdmi_i_269_n_2 : STD_LOGIC;
  signal vga2hdmi_i_269_n_3 : STD_LOGIC;
  signal vga2hdmi_i_26_n_0 : STD_LOGIC;
  signal vga2hdmi_i_26_n_1 : STD_LOGIC;
  signal vga2hdmi_i_26_n_2 : STD_LOGIC;
  signal vga2hdmi_i_26_n_3 : STD_LOGIC;
  signal vga2hdmi_i_26_n_4 : STD_LOGIC;
  signal vga2hdmi_i_26_n_5 : STD_LOGIC;
  signal vga2hdmi_i_26_n_6 : STD_LOGIC;
  signal vga2hdmi_i_26_n_7 : STD_LOGIC;
  signal vga2hdmi_i_270_n_0 : STD_LOGIC;
  signal vga2hdmi_i_271_n_0 : STD_LOGIC;
  signal vga2hdmi_i_272_n_0 : STD_LOGIC;
  signal vga2hdmi_i_273_n_0 : STD_LOGIC;
  signal vga2hdmi_i_274_n_0 : STD_LOGIC;
  signal vga2hdmi_i_275_n_0 : STD_LOGIC;
  signal vga2hdmi_i_276_n_0 : STD_LOGIC;
  signal vga2hdmi_i_277_n_0 : STD_LOGIC;
  signal vga2hdmi_i_278_n_0 : STD_LOGIC;
  signal vga2hdmi_i_278_n_1 : STD_LOGIC;
  signal vga2hdmi_i_278_n_2 : STD_LOGIC;
  signal vga2hdmi_i_278_n_3 : STD_LOGIC;
  signal vga2hdmi_i_278_n_4 : STD_LOGIC;
  signal vga2hdmi_i_278_n_5 : STD_LOGIC;
  signal vga2hdmi_i_278_n_6 : STD_LOGIC;
  signal vga2hdmi_i_278_n_7 : STD_LOGIC;
  signal vga2hdmi_i_279_n_0 : STD_LOGIC;
  signal vga2hdmi_i_27_n_0 : STD_LOGIC;
  signal vga2hdmi_i_280_n_0 : STD_LOGIC;
  signal vga2hdmi_i_281_n_0 : STD_LOGIC;
  signal vga2hdmi_i_282_n_0 : STD_LOGIC;
  signal vga2hdmi_i_283_n_0 : STD_LOGIC;
  signal vga2hdmi_i_284_n_0 : STD_LOGIC;
  signal vga2hdmi_i_285_n_0 : STD_LOGIC;
  signal vga2hdmi_i_286_n_0 : STD_LOGIC;
  signal vga2hdmi_i_287_n_0 : STD_LOGIC;
  signal vga2hdmi_i_288_n_0 : STD_LOGIC;
  signal vga2hdmi_i_289_n_0 : STD_LOGIC;
  signal vga2hdmi_i_28_n_0 : STD_LOGIC;
  signal vga2hdmi_i_28_n_1 : STD_LOGIC;
  signal vga2hdmi_i_28_n_2 : STD_LOGIC;
  signal vga2hdmi_i_28_n_3 : STD_LOGIC;
  signal vga2hdmi_i_28_n_4 : STD_LOGIC;
  signal vga2hdmi_i_28_n_5 : STD_LOGIC;
  signal vga2hdmi_i_290_n_0 : STD_LOGIC;
  signal vga2hdmi_i_290_n_1 : STD_LOGIC;
  signal vga2hdmi_i_290_n_2 : STD_LOGIC;
  signal vga2hdmi_i_290_n_3 : STD_LOGIC;
  signal vga2hdmi_i_290_n_4 : STD_LOGIC;
  signal vga2hdmi_i_290_n_5 : STD_LOGIC;
  signal vga2hdmi_i_290_n_6 : STD_LOGIC;
  signal vga2hdmi_i_290_n_7 : STD_LOGIC;
  signal vga2hdmi_i_291_n_0 : STD_LOGIC;
  signal vga2hdmi_i_292_n_0 : STD_LOGIC;
  signal vga2hdmi_i_293_n_0 : STD_LOGIC;
  signal vga2hdmi_i_294_n_0 : STD_LOGIC;
  signal vga2hdmi_i_295_n_0 : STD_LOGIC;
  signal vga2hdmi_i_296_n_0 : STD_LOGIC;
  signal vga2hdmi_i_297_n_0 : STD_LOGIC;
  signal vga2hdmi_i_298_n_0 : STD_LOGIC;
  signal vga2hdmi_i_299_n_0 : STD_LOGIC;
  signal vga2hdmi_i_29_n_3 : STD_LOGIC;
  signal vga2hdmi_i_300_n_0 : STD_LOGIC;
  signal vga2hdmi_i_301_n_0 : STD_LOGIC;
  signal vga2hdmi_i_302_n_0 : STD_LOGIC;
  signal vga2hdmi_i_302_n_1 : STD_LOGIC;
  signal vga2hdmi_i_302_n_2 : STD_LOGIC;
  signal vga2hdmi_i_302_n_3 : STD_LOGIC;
  signal vga2hdmi_i_302_n_4 : STD_LOGIC;
  signal vga2hdmi_i_302_n_5 : STD_LOGIC;
  signal vga2hdmi_i_302_n_6 : STD_LOGIC;
  signal vga2hdmi_i_302_n_7 : STD_LOGIC;
  signal vga2hdmi_i_303_n_0 : STD_LOGIC;
  signal vga2hdmi_i_304_n_0 : STD_LOGIC;
  signal vga2hdmi_i_305_n_0 : STD_LOGIC;
  signal vga2hdmi_i_306_n_0 : STD_LOGIC;
  signal vga2hdmi_i_307_n_0 : STD_LOGIC;
  signal vga2hdmi_i_308_n_0 : STD_LOGIC;
  signal vga2hdmi_i_309_n_0 : STD_LOGIC;
  signal vga2hdmi_i_30_n_3 : STD_LOGIC;
  signal vga2hdmi_i_30_n_6 : STD_LOGIC;
  signal vga2hdmi_i_30_n_7 : STD_LOGIC;
  signal vga2hdmi_i_310_n_0 : STD_LOGIC;
  signal vga2hdmi_i_311_n_0 : STD_LOGIC;
  signal vga2hdmi_i_312_n_0 : STD_LOGIC;
  signal vga2hdmi_i_313_n_0 : STD_LOGIC;
  signal vga2hdmi_i_314_n_0 : STD_LOGIC;
  signal vga2hdmi_i_315_n_0 : STD_LOGIC;
  signal vga2hdmi_i_316_n_0 : STD_LOGIC;
  signal vga2hdmi_i_317_n_0 : STD_LOGIC;
  signal vga2hdmi_i_318_n_0 : STD_LOGIC;
  signal vga2hdmi_i_319_n_0 : STD_LOGIC;
  signal vga2hdmi_i_31_n_3 : STD_LOGIC;
  signal vga2hdmi_i_320_n_0 : STD_LOGIC;
  signal vga2hdmi_i_321_n_0 : STD_LOGIC;
  signal vga2hdmi_i_322_n_0 : STD_LOGIC;
  signal vga2hdmi_i_32_n_0 : STD_LOGIC;
  signal vga2hdmi_i_32_n_2 : STD_LOGIC;
  signal vga2hdmi_i_32_n_3 : STD_LOGIC;
  signal vga2hdmi_i_32_n_5 : STD_LOGIC;
  signal vga2hdmi_i_32_n_6 : STD_LOGIC;
  signal vga2hdmi_i_32_n_7 : STD_LOGIC;
  signal vga2hdmi_i_33_n_0 : STD_LOGIC;
  signal vga2hdmi_i_33_n_1 : STD_LOGIC;
  signal vga2hdmi_i_33_n_2 : STD_LOGIC;
  signal vga2hdmi_i_33_n_3 : STD_LOGIC;
  signal vga2hdmi_i_33_n_4 : STD_LOGIC;
  signal vga2hdmi_i_33_n_5 : STD_LOGIC;
  signal vga2hdmi_i_33_n_6 : STD_LOGIC;
  signal vga2hdmi_i_33_n_7 : STD_LOGIC;
  signal vga2hdmi_i_34_n_0 : STD_LOGIC;
  signal vga2hdmi_i_35_n_2 : STD_LOGIC;
  signal vga2hdmi_i_35_n_3 : STD_LOGIC;
  signal vga2hdmi_i_36_n_2 : STD_LOGIC;
  signal vga2hdmi_i_36_n_3 : STD_LOGIC;
  signal vga2hdmi_i_36_n_5 : STD_LOGIC;
  signal vga2hdmi_i_36_n_6 : STD_LOGIC;
  signal vga2hdmi_i_36_n_7 : STD_LOGIC;
  signal vga2hdmi_i_37_n_2 : STD_LOGIC;
  signal vga2hdmi_i_37_n_3 : STD_LOGIC;
  signal vga2hdmi_i_38_n_0 : STD_LOGIC;
  signal vga2hdmi_i_38_n_1 : STD_LOGIC;
  signal vga2hdmi_i_38_n_2 : STD_LOGIC;
  signal vga2hdmi_i_38_n_3 : STD_LOGIC;
  signal vga2hdmi_i_38_n_4 : STD_LOGIC;
  signal vga2hdmi_i_39_n_1 : STD_LOGIC;
  signal vga2hdmi_i_39_n_3 : STD_LOGIC;
  signal vga2hdmi_i_39_n_6 : STD_LOGIC;
  signal vga2hdmi_i_39_n_7 : STD_LOGIC;
  signal vga2hdmi_i_40_n_0 : STD_LOGIC;
  signal vga2hdmi_i_40_n_1 : STD_LOGIC;
  signal vga2hdmi_i_40_n_2 : STD_LOGIC;
  signal vga2hdmi_i_40_n_3 : STD_LOGIC;
  signal vga2hdmi_i_40_n_4 : STD_LOGIC;
  signal vga2hdmi_i_40_n_5 : STD_LOGIC;
  signal vga2hdmi_i_40_n_6 : STD_LOGIC;
  signal vga2hdmi_i_40_n_7 : STD_LOGIC;
  signal vga2hdmi_i_41_n_0 : STD_LOGIC;
  signal vga2hdmi_i_42_n_0 : STD_LOGIC;
  signal vga2hdmi_i_42_n_1 : STD_LOGIC;
  signal vga2hdmi_i_42_n_2 : STD_LOGIC;
  signal vga2hdmi_i_42_n_3 : STD_LOGIC;
  signal vga2hdmi_i_42_n_4 : STD_LOGIC;
  signal vga2hdmi_i_42_n_5 : STD_LOGIC;
  signal vga2hdmi_i_43_n_3 : STD_LOGIC;
  signal vga2hdmi_i_44_n_3 : STD_LOGIC;
  signal vga2hdmi_i_44_n_6 : STD_LOGIC;
  signal vga2hdmi_i_44_n_7 : STD_LOGIC;
  signal vga2hdmi_i_45_n_3 : STD_LOGIC;
  signal vga2hdmi_i_46_n_0 : STD_LOGIC;
  signal vga2hdmi_i_46_n_1 : STD_LOGIC;
  signal vga2hdmi_i_46_n_2 : STD_LOGIC;
  signal vga2hdmi_i_46_n_3 : STD_LOGIC;
  signal vga2hdmi_i_47_n_0 : STD_LOGIC;
  signal vga2hdmi_i_48_n_0 : STD_LOGIC;
  signal vga2hdmi_i_48_n_1 : STD_LOGIC;
  signal vga2hdmi_i_48_n_2 : STD_LOGIC;
  signal vga2hdmi_i_48_n_3 : STD_LOGIC;
  signal vga2hdmi_i_49_n_0 : STD_LOGIC;
  signal vga2hdmi_i_50_n_0 : STD_LOGIC;
  signal vga2hdmi_i_51_n_0 : STD_LOGIC;
  signal vga2hdmi_i_52_n_0 : STD_LOGIC;
  signal vga2hdmi_i_53_n_0 : STD_LOGIC;
  signal vga2hdmi_i_54_n_0 : STD_LOGIC;
  signal vga2hdmi_i_55_n_0 : STD_LOGIC;
  signal vga2hdmi_i_56_n_0 : STD_LOGIC;
  signal vga2hdmi_i_56_n_1 : STD_LOGIC;
  signal vga2hdmi_i_56_n_2 : STD_LOGIC;
  signal vga2hdmi_i_56_n_3 : STD_LOGIC;
  signal vga2hdmi_i_56_n_4 : STD_LOGIC;
  signal vga2hdmi_i_56_n_5 : STD_LOGIC;
  signal vga2hdmi_i_56_n_6 : STD_LOGIC;
  signal vga2hdmi_i_56_n_7 : STD_LOGIC;
  signal vga2hdmi_i_57_n_0 : STD_LOGIC;
  signal vga2hdmi_i_58_n_0 : STD_LOGIC;
  signal vga2hdmi_i_59_n_0 : STD_LOGIC;
  signal vga2hdmi_i_60_n_0 : STD_LOGIC;
  signal vga2hdmi_i_60_n_1 : STD_LOGIC;
  signal vga2hdmi_i_60_n_2 : STD_LOGIC;
  signal vga2hdmi_i_60_n_3 : STD_LOGIC;
  signal vga2hdmi_i_61_n_0 : STD_LOGIC;
  signal vga2hdmi_i_62_n_0 : STD_LOGIC;
  signal vga2hdmi_i_63_n_0 : STD_LOGIC;
  signal vga2hdmi_i_63_n_1 : STD_LOGIC;
  signal vga2hdmi_i_63_n_2 : STD_LOGIC;
  signal vga2hdmi_i_63_n_3 : STD_LOGIC;
  signal vga2hdmi_i_64_n_0 : STD_LOGIC;
  signal vga2hdmi_i_65_n_0 : STD_LOGIC;
  signal vga2hdmi_i_66_n_0 : STD_LOGIC;
  signal vga2hdmi_i_67_n_0 : STD_LOGIC;
  signal vga2hdmi_i_68_n_0 : STD_LOGIC;
  signal vga2hdmi_i_69_n_0 : STD_LOGIC;
  signal vga2hdmi_i_69_n_1 : STD_LOGIC;
  signal vga2hdmi_i_69_n_2 : STD_LOGIC;
  signal vga2hdmi_i_69_n_3 : STD_LOGIC;
  signal vga2hdmi_i_69_n_4 : STD_LOGIC;
  signal vga2hdmi_i_69_n_5 : STD_LOGIC;
  signal vga2hdmi_i_69_n_6 : STD_LOGIC;
  signal vga2hdmi_i_69_n_7 : STD_LOGIC;
  signal vga2hdmi_i_70_n_0 : STD_LOGIC;
  signal vga2hdmi_i_71_n_0 : STD_LOGIC;
  signal vga2hdmi_i_72_n_0 : STD_LOGIC;
  signal vga2hdmi_i_73_n_0 : STD_LOGIC;
  signal vga2hdmi_i_74_n_0 : STD_LOGIC;
  signal vga2hdmi_i_75_n_0 : STD_LOGIC;
  signal vga2hdmi_i_75_n_1 : STD_LOGIC;
  signal vga2hdmi_i_75_n_2 : STD_LOGIC;
  signal vga2hdmi_i_75_n_3 : STD_LOGIC;
  signal vga2hdmi_i_76_n_0 : STD_LOGIC;
  signal vga2hdmi_i_77_n_0 : STD_LOGIC;
  signal vga2hdmi_i_78_n_0 : STD_LOGIC;
  signal vga2hdmi_i_79_n_0 : STD_LOGIC;
  signal vga2hdmi_i_80_n_0 : STD_LOGIC;
  signal vga2hdmi_i_80_n_1 : STD_LOGIC;
  signal vga2hdmi_i_80_n_2 : STD_LOGIC;
  signal vga2hdmi_i_80_n_3 : STD_LOGIC;
  signal vga2hdmi_i_81_n_0 : STD_LOGIC;
  signal vga2hdmi_i_82_n_0 : STD_LOGIC;
  signal vga2hdmi_i_83_n_0 : STD_LOGIC;
  signal vga2hdmi_i_84_n_0 : STD_LOGIC;
  signal vga2hdmi_i_85_n_0 : STD_LOGIC;
  signal vga2hdmi_i_85_n_1 : STD_LOGIC;
  signal vga2hdmi_i_85_n_2 : STD_LOGIC;
  signal vga2hdmi_i_85_n_3 : STD_LOGIC;
  signal vga2hdmi_i_86_n_0 : STD_LOGIC;
  signal vga2hdmi_i_87_n_0 : STD_LOGIC;
  signal vga2hdmi_i_87_n_1 : STD_LOGIC;
  signal vga2hdmi_i_87_n_2 : STD_LOGIC;
  signal vga2hdmi_i_87_n_3 : STD_LOGIC;
  signal vga2hdmi_i_88_n_0 : STD_LOGIC;
  signal vga2hdmi_i_89_n_0 : STD_LOGIC;
  signal vga2hdmi_i_90_n_0 : STD_LOGIC;
  signal vga2hdmi_i_91_n_0 : STD_LOGIC;
  signal vga2hdmi_i_92_n_0 : STD_LOGIC;
  signal vga2hdmi_i_93_n_0 : STD_LOGIC;
  signal vga2hdmi_i_94_n_0 : STD_LOGIC;
  signal vga2hdmi_i_95_n_0 : STD_LOGIC;
  signal vga2hdmi_i_95_n_1 : STD_LOGIC;
  signal vga2hdmi_i_95_n_2 : STD_LOGIC;
  signal vga2hdmi_i_95_n_3 : STD_LOGIC;
  signal vga2hdmi_i_95_n_4 : STD_LOGIC;
  signal vga2hdmi_i_95_n_5 : STD_LOGIC;
  signal vga2hdmi_i_95_n_6 : STD_LOGIC;
  signal vga2hdmi_i_95_n_7 : STD_LOGIC;
  signal vga2hdmi_i_96_n_0 : STD_LOGIC;
  signal vga2hdmi_i_97_n_0 : STD_LOGIC;
  signal vga2hdmi_i_98_n_0 : STD_LOGIC;
  signal vga2hdmi_i_99_n_0 : STD_LOGIC;
  signal vga2hdmi_i_99_n_1 : STD_LOGIC;
  signal vga2hdmi_i_99_n_2 : STD_LOGIC;
  signal vga2hdmi_i_99_n_3 : STD_LOGIC;
  signal NLW_vga2hdmi_i_102_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_vga2hdmi_i_102_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vga2hdmi_i_124_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_124_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_125_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_134_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_134_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_151_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_151_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_152_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_166_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_vga2hdmi_i_166_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vga2hdmi_i_188_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_188_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_189_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_215_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_236_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_25_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_25_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_269_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_28_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vga2hdmi_i_29_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_29_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_30_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_30_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_31_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_31_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_32_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 to 2 );
  signal NLW_vga2hdmi_i_32_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vga2hdmi_i_35_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_35_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vga2hdmi_i_36_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_36_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_vga2hdmi_i_37_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_37_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_38_O_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_vga2hdmi_i_39_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_39_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_42_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_vga2hdmi_i_43_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_43_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_44_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_44_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_vga2hdmi_i_45_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_vga2hdmi_i_45_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_46_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vga2hdmi_i_48_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_60_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_63_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vga2hdmi_i_75_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_80_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_85_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_vga2hdmi_i_87_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_vga2hdmi_i_99_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vga2hdmi : label is "rgb2dvi_0,rgb2dvi,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of vga2hdmi : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of vga2hdmi : label is "rgb2dvi,Vivado 2018.2";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of vga2hdmi_i_10 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of vga2hdmi_i_11 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of vga2hdmi_i_12 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of vga2hdmi_i_13 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of vga2hdmi_i_15 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of vga2hdmi_i_16 : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of vga2hdmi_i_18 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of vga2hdmi_i_19 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of vga2hdmi_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of vga2hdmi_i_20 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of vga2hdmi_i_21 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of vga2hdmi_i_23 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of vga2hdmi_i_24 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of vga2hdmi_i_3 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of vga2hdmi_i_4 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of vga2hdmi_i_5 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of vga2hdmi_i_7 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of vga2hdmi_i_8 : label is "soft_lutpair41";
begin
vga2hdmi: entity work.processor_design_hdmi_out_0_0_rgb2dvi_0
     port map (
      PixelClk => en,
      SerialClk => clk,
      TMDS_Clk_n => hdmi_tx_clk_n,
      TMDS_Clk_p => hdmi_tx_clk_p,
      TMDS_Data_n(2 downto 0) => hdmi_tx_n(2 downto 0),
      TMDS_Data_p(2 downto 0) => hdmi_tx_p(2 downto 0),
      aRst => '0',
      vid_pData(23 downto 16) => r8(7 downto 0),
      vid_pData(15 downto 8) => g8(7 downto 0),
      vid_pData(7 downto 0) => b8(7 downto 0),
      vid_pHSync => hs,
      vid_pVDE => vid,
      vid_pVSync => vs
    );
vga2hdmi_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => vga2hdmi_i_25_n_7,
      I1 => vga2hdmi_i_26_n_5,
      I2 => vga2hdmi_i_27_n_0,
      I3 => vga2hdmi_i_26_n_6,
      I4 => vga2hdmi_i_26_n_4,
      I5 => vga2hdmi_i_25_n_6,
      O => r8(7)
    );
vga2hdmi_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => vga2hdmi_i_32_n_7,
      I1 => vga2hdmi_i_33_n_5,
      I2 => vga2hdmi_i_34_n_0,
      I3 => vga2hdmi_i_33_n_4,
      I4 => vga2hdmi_i_32_n_6,
      O => g8(6)
    );
vga2hdmi_i_100: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_44_n_7,
      I1 => b80(11),
      O => vga2hdmi_i_100_n_0
    );
vga2hdmi_i_101: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => b80(11),
      I1 => vga2hdmi_i_44_n_7,
      I2 => b80(12),
      I3 => vga2hdmi_i_44_n_6,
      O => vga2hdmi_i_101_n_0
    );
vga2hdmi_i_102: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_102_n_0,
      CO(2) => NLW_vga2hdmi_i_102_CO_UNCONNECTED(2),
      CO(1) => vga2hdmi_i_102_n_2,
      CO(0) => vga2hdmi_i_102_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => vga2hdmi_i_198_n_0,
      DI(1) => vga2hdmi_i_199_n_0,
      DI(0) => '0',
      O(3) => NLW_vga2hdmi_i_102_O_UNCONNECTED(3),
      O(2 downto 0) => r80(5 downto 3),
      S(3) => '1',
      S(2) => vga2hdmi_i_200_n_0,
      S(1) => vga2hdmi_i_201_n_0,
      S(0) => vga2hdmi_i_202_n_0
    );
vga2hdmi_i_103: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => r(1),
      I1 => r(0),
      I2 => r(2),
      O => vga2hdmi_i_103_n_0
    );
vga2hdmi_i_104: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => r(2),
      I1 => r(1),
      I2 => r(0),
      O => vga2hdmi_i_104_n_0
    );
vga2hdmi_i_105: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => r(2),
      I1 => r(0),
      I2 => r(1),
      O => vga2hdmi_i_105_n_0
    );
vga2hdmi_i_106: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => r(2),
      I1 => r(0),
      I2 => r(1),
      O => vga2hdmi_i_106_n_0
    );
vga2hdmi_i_107: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r(1),
      O => vga2hdmi_i_107_n_0
    );
vga2hdmi_i_108: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r(0),
      O => vga2hdmi_i_108_n_0
    );
vga2hdmi_i_109: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_102_n_0,
      O => r80(7)
    );
vga2hdmi_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => vga2hdmi_i_33_n_4,
      I1 => vga2hdmi_i_34_n_0,
      I2 => vga2hdmi_i_33_n_5,
      I3 => vga2hdmi_i_32_n_7,
      O => g8(5)
    );
vga2hdmi_i_110: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_102_n_0,
      O => vga2hdmi_i_110_n_0
    );
vga2hdmi_i_111: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => vga2hdmi_i_102_n_0,
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      O => vga2hdmi_i_111_n_0
    );
vga2hdmi_i_112: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_102_n_0,
      I1 => r(1),
      I2 => r(0),
      O => vga2hdmi_i_112_n_0
    );
vga2hdmi_i_113: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r80(5),
      I1 => r(0),
      O => vga2hdmi_i_113_n_0
    );
vga2hdmi_i_114: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_114_n_0,
      CO(2) => vga2hdmi_i_114_n_1,
      CO(1) => vga2hdmi_i_114_n_2,
      CO(0) => vga2hdmi_i_114_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_203_n_0,
      DI(2) => vga2hdmi_i_204_n_0,
      DI(1) => vga2hdmi_i_205_n_0,
      DI(0) => '0',
      O(3) => vga2hdmi_i_114_n_4,
      O(2) => vga2hdmi_i_114_n_5,
      O(1) => vga2hdmi_i_114_n_6,
      O(0) => vga2hdmi_i_114_n_7,
      S(3) => vga2hdmi_i_206_n_0,
      S(2) => vga2hdmi_i_207_n_0,
      S(1) => vga2hdmi_i_208_n_0,
      S(0) => vga2hdmi_i_209_n_0
    );
vga2hdmi_i_115: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_25_n_7,
      I1 => vga2hdmi_i_26_n_5,
      I2 => vga2hdmi_i_123_n_6,
      O => vga2hdmi_i_115_n_0
    );
vga2hdmi_i_116: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_123_n_7,
      I1 => vga2hdmi_i_26_n_4,
      I2 => vga2hdmi_i_26_n_6,
      O => vga2hdmi_i_116_n_0
    );
vga2hdmi_i_117: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_210_n_4,
      I1 => vga2hdmi_i_26_n_5,
      I2 => vga2hdmi_i_26_n_7,
      O => vga2hdmi_i_117_n_0
    );
vga2hdmi_i_118: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_210_n_5,
      I1 => vga2hdmi_i_26_n_6,
      I2 => vga2hdmi_i_28_n_4,
      O => vga2hdmi_i_118_n_0
    );
vga2hdmi_i_119: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_123_n_6,
      I1 => vga2hdmi_i_26_n_5,
      I2 => vga2hdmi_i_25_n_7,
      I3 => vga2hdmi_i_25_n_6,
      I4 => vga2hdmi_i_123_n_5,
      I5 => vga2hdmi_i_26_n_4,
      O => vga2hdmi_i_119_n_0
    );
vga2hdmi_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => vga2hdmi_i_33_n_5,
      I1 => vga2hdmi_i_34_n_0,
      I2 => vga2hdmi_i_33_n_4,
      O => g8(4)
    );
vga2hdmi_i_120: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_26_n_6,
      I1 => vga2hdmi_i_26_n_4,
      I2 => vga2hdmi_i_123_n_7,
      I3 => vga2hdmi_i_25_n_7,
      I4 => vga2hdmi_i_123_n_6,
      I5 => vga2hdmi_i_26_n_5,
      O => vga2hdmi_i_120_n_0
    );
vga2hdmi_i_121: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_26_n_7,
      I1 => vga2hdmi_i_26_n_5,
      I2 => vga2hdmi_i_210_n_4,
      I3 => vga2hdmi_i_123_n_7,
      I4 => vga2hdmi_i_26_n_4,
      I5 => vga2hdmi_i_26_n_6,
      O => vga2hdmi_i_121_n_0
    );
vga2hdmi_i_122: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_28_n_4,
      I1 => vga2hdmi_i_26_n_6,
      I2 => vga2hdmi_i_210_n_5,
      I3 => vga2hdmi_i_210_n_4,
      I4 => vga2hdmi_i_26_n_5,
      I5 => vga2hdmi_i_26_n_7,
      O => vga2hdmi_i_122_n_0
    );
vga2hdmi_i_123: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_210_n_0,
      CO(3) => vga2hdmi_i_123_n_0,
      CO(2) => vga2hdmi_i_123_n_1,
      CO(1) => vga2hdmi_i_123_n_2,
      CO(0) => vga2hdmi_i_123_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_25_n_1,
      DI(2) => vga2hdmi_i_25_n_6,
      DI(1) => vga2hdmi_i_25_n_7,
      DI(0) => vga2hdmi_i_26_n_4,
      O(3) => vga2hdmi_i_123_n_4,
      O(2) => vga2hdmi_i_123_n_5,
      O(1) => vga2hdmi_i_123_n_6,
      O(0) => vga2hdmi_i_123_n_7,
      S(3) => vga2hdmi_i_211_n_0,
      S(2) => vga2hdmi_i_212_n_0,
      S(1) => vga2hdmi_i_213_n_0,
      S(0) => vga2hdmi_i_214_n_0
    );
vga2hdmi_i_124: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_123_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_124_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_124_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_vga2hdmi_i_124_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
vga2hdmi_i_125: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_215_n_0,
      CO(3) => vga2hdmi_i_125_n_0,
      CO(2) => vga2hdmi_i_125_n_1,
      CO(1) => vga2hdmi_i_125_n_2,
      CO(0) => vga2hdmi_i_125_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_216_n_0,
      DI(2) => vga2hdmi_i_217_n_0,
      DI(1) => vga2hdmi_i_218_n_0,
      DI(0) => vga2hdmi_i_219_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_125_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_220_n_0,
      S(2) => vga2hdmi_i_221_n_0,
      S(1) => vga2hdmi_i_222_n_0,
      S(0) => vga2hdmi_i_223_n_0
    );
vga2hdmi_i_126: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_56_n_4,
      I1 => r80(10),
      O => vga2hdmi_i_126_n_0
    );
vga2hdmi_i_127: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_56_n_5,
      I1 => r80(9),
      O => vga2hdmi_i_127_n_0
    );
vga2hdmi_i_128: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_56_n_6,
      I1 => r80(8),
      O => vga2hdmi_i_128_n_0
    );
vga2hdmi_i_129: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vga2hdmi_i_56_n_7,
      I1 => vga2hdmi_i_102_n_0,
      O => vga2hdmi_i_129_n_0
    );
vga2hdmi_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_34_n_0,
      I1 => vga2hdmi_i_33_n_5,
      O => g8(3)
    );
vga2hdmi_i_130: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => r80(10),
      I1 => vga2hdmi_i_56_n_4,
      I2 => r80(11),
      I3 => vga2hdmi_i_30_n_7,
      O => vga2hdmi_i_130_n_0
    );
vga2hdmi_i_131: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => r80(9),
      I1 => vga2hdmi_i_56_n_5,
      I2 => r80(10),
      I3 => vga2hdmi_i_56_n_4,
      O => vga2hdmi_i_131_n_0
    );
vga2hdmi_i_132: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => r80(8),
      I1 => vga2hdmi_i_56_n_6,
      I2 => r80(9),
      I3 => vga2hdmi_i_56_n_5,
      O => vga2hdmi_i_132_n_0
    );
vga2hdmi_i_133: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => vga2hdmi_i_102_n_0,
      I1 => vga2hdmi_i_56_n_7,
      I2 => r80(8),
      I3 => vga2hdmi_i_56_n_6,
      O => vga2hdmi_i_133_n_0
    );
vga2hdmi_i_134: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_162_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_134_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_134_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_vga2hdmi_i_134_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
vga2hdmi_i_135: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => g(1),
      I1 => g(0),
      I2 => g(2),
      O => vga2hdmi_i_135_n_0
    );
vga2hdmi_i_136: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => g(2),
      I1 => g(1),
      I2 => g(0),
      O => vga2hdmi_i_136_n_0
    );
vga2hdmi_i_137: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => g(2),
      I1 => g(0),
      I2 => g(1),
      O => vga2hdmi_i_137_n_0
    );
vga2hdmi_i_138: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => g(2),
      I1 => g(0),
      I2 => g(1),
      O => vga2hdmi_i_138_n_0
    );
vga2hdmi_i_139: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g(1),
      O => vga2hdmi_i_139_n_0
    );
vga2hdmi_i_14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFF008A0000"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      I1 => g80(13),
      I2 => vga2hdmi_i_36_n_5,
      I3 => vga2hdmi_i_37_n_2,
      I4 => vga2hdmi_i_38_n_4,
      I5 => vga2hdmi_i_33_n_6,
      O => g8(2)
    );
vga2hdmi_i_140: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g(0),
      O => vga2hdmi_i_140_n_0
    );
vga2hdmi_i_141: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_141_n_0,
      CO(2) => vga2hdmi_i_141_n_1,
      CO(1) => vga2hdmi_i_141_n_2,
      CO(0) => vga2hdmi_i_141_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_224_n_0,
      DI(2) => vga2hdmi_i_225_n_0,
      DI(1) => vga2hdmi_i_226_n_0,
      DI(0) => '0',
      O(3) => vga2hdmi_i_141_n_4,
      O(2) => vga2hdmi_i_141_n_5,
      O(1) => vga2hdmi_i_141_n_6,
      O(0) => vga2hdmi_i_141_n_7,
      S(3) => vga2hdmi_i_227_n_0,
      S(2) => vga2hdmi_i_228_n_0,
      S(1) => vga2hdmi_i_229_n_0,
      S(0) => vga2hdmi_i_230_n_0
    );
vga2hdmi_i_142: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_32_n_6,
      I1 => vga2hdmi_i_33_n_5,
      I2 => vga2hdmi_i_150_n_6,
      O => vga2hdmi_i_142_n_0
    );
vga2hdmi_i_143: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_150_n_7,
      I1 => vga2hdmi_i_32_n_7,
      I2 => vga2hdmi_i_33_n_6,
      O => vga2hdmi_i_143_n_0
    );
vga2hdmi_i_144: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_231_n_4,
      I1 => vga2hdmi_i_33_n_4,
      I2 => vga2hdmi_i_33_n_7,
      O => vga2hdmi_i_144_n_0
    );
vga2hdmi_i_145: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_231_n_5,
      I1 => vga2hdmi_i_33_n_5,
      I2 => vga2hdmi_i_38_n_4,
      O => vga2hdmi_i_145_n_0
    );
vga2hdmi_i_146: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_150_n_6,
      I1 => vga2hdmi_i_33_n_5,
      I2 => vga2hdmi_i_32_n_6,
      I3 => vga2hdmi_i_32_n_5,
      I4 => vga2hdmi_i_150_n_5,
      I5 => vga2hdmi_i_33_n_4,
      O => vga2hdmi_i_146_n_0
    );
vga2hdmi_i_147: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_33_n_6,
      I1 => vga2hdmi_i_32_n_7,
      I2 => vga2hdmi_i_150_n_7,
      I3 => vga2hdmi_i_32_n_6,
      I4 => vga2hdmi_i_150_n_6,
      I5 => vga2hdmi_i_33_n_5,
      O => vga2hdmi_i_147_n_0
    );
vga2hdmi_i_148: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      I1 => vga2hdmi_i_33_n_4,
      I2 => vga2hdmi_i_231_n_4,
      I3 => vga2hdmi_i_150_n_7,
      I4 => vga2hdmi_i_32_n_7,
      I5 => vga2hdmi_i_33_n_6,
      O => vga2hdmi_i_148_n_0
    );
vga2hdmi_i_149: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_38_n_4,
      I1 => vga2hdmi_i_33_n_5,
      I2 => vga2hdmi_i_231_n_5,
      I3 => vga2hdmi_i_231_n_4,
      I4 => vga2hdmi_i_33_n_4,
      I5 => vga2hdmi_i_33_n_7,
      O => vga2hdmi_i_149_n_0
    );
vga2hdmi_i_15: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD2202"
    )
        port map (
      I0 => vga2hdmi_i_38_n_4,
      I1 => vga2hdmi_i_37_n_2,
      I2 => vga2hdmi_i_36_n_5,
      I3 => g80(13),
      I4 => vga2hdmi_i_33_n_7,
      O => g8(1)
    );
vga2hdmi_i_150: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_231_n_0,
      CO(3) => vga2hdmi_i_150_n_0,
      CO(2) => vga2hdmi_i_150_n_1,
      CO(1) => vga2hdmi_i_150_n_2,
      CO(0) => vga2hdmi_i_150_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_32_n_0,
      DI(2) => vga2hdmi_i_32_n_5,
      DI(1) => vga2hdmi_i_32_n_6,
      DI(0) => vga2hdmi_i_32_n_7,
      O(3) => vga2hdmi_i_150_n_4,
      O(2) => vga2hdmi_i_150_n_5,
      O(1) => vga2hdmi_i_150_n_6,
      O(0) => vga2hdmi_i_150_n_7,
      S(3) => vga2hdmi_i_232_n_0,
      S(2) => vga2hdmi_i_233_n_0,
      S(1) => vga2hdmi_i_234_n_0,
      S(0) => vga2hdmi_i_235_n_0
    );
vga2hdmi_i_151: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_150_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_151_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_151_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_vga2hdmi_i_151_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
vga2hdmi_i_152: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_236_n_0,
      CO(3) => vga2hdmi_i_152_n_0,
      CO(2) => vga2hdmi_i_152_n_1,
      CO(1) => vga2hdmi_i_152_n_2,
      CO(0) => vga2hdmi_i_152_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_237_n_0,
      DI(2) => vga2hdmi_i_238_n_0,
      DI(1) => vga2hdmi_i_239_n_0,
      DI(0) => vga2hdmi_i_240_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_152_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_241_n_0,
      S(2) => vga2hdmi_i_242_n_0,
      S(1) => vga2hdmi_i_243_n_0,
      S(0) => vga2hdmi_i_244_n_0
    );
vga2hdmi_i_153: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_69_n_4,
      I1 => g80(10),
      O => vga2hdmi_i_153_n_0
    );
vga2hdmi_i_154: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_69_n_5,
      I1 => g80(9),
      O => vga2hdmi_i_154_n_0
    );
vga2hdmi_i_155: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_69_n_6,
      I1 => g80(8),
      O => vga2hdmi_i_155_n_0
    );
vga2hdmi_i_156: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vga2hdmi_i_69_n_7,
      I1 => vga2hdmi_i_134_n_3,
      O => vga2hdmi_i_156_n_0
    );
vga2hdmi_i_157: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => g80(10),
      I1 => vga2hdmi_i_69_n_4,
      I2 => g80(11),
      I3 => vga2hdmi_i_36_n_7,
      O => vga2hdmi_i_157_n_0
    );
vga2hdmi_i_158: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => g80(9),
      I1 => vga2hdmi_i_69_n_5,
      I2 => g80(10),
      I3 => vga2hdmi_i_69_n_4,
      O => vga2hdmi_i_158_n_0
    );
vga2hdmi_i_159: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => g80(8),
      I1 => vga2hdmi_i_69_n_6,
      I2 => g80(9),
      I3 => vga2hdmi_i_69_n_5,
      O => vga2hdmi_i_159_n_0
    );
vga2hdmi_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F40B"
    )
        port map (
      I0 => g80(13),
      I1 => vga2hdmi_i_36_n_5,
      I2 => vga2hdmi_i_37_n_2,
      I3 => vga2hdmi_i_38_n_4,
      O => g8(0)
    );
vga2hdmi_i_160: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => vga2hdmi_i_134_n_3,
      I1 => vga2hdmi_i_69_n_7,
      I2 => g80(8),
      I3 => vga2hdmi_i_69_n_6,
      O => vga2hdmi_i_160_n_0
    );
vga2hdmi_i_161: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_134_n_3,
      O => g80(7)
    );
vga2hdmi_i_162: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_162_n_0,
      CO(2) => vga2hdmi_i_162_n_1,
      CO(1) => vga2hdmi_i_162_n_2,
      CO(0) => vga2hdmi_i_162_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_245_n_0,
      DI(2) => vga2hdmi_i_246_n_0,
      DI(1) => vga2hdmi_i_247_n_0,
      DI(0) => '0',
      O(3 downto 0) => g80(6 downto 3),
      S(3) => vga2hdmi_i_248_n_0,
      S(2) => vga2hdmi_i_249_n_0,
      S(1) => vga2hdmi_i_250_n_0,
      S(0) => vga2hdmi_i_251_n_0
    );
vga2hdmi_i_163: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9996"
    )
        port map (
      I0 => g80(8),
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      O => vga2hdmi_i_163_n_0
    );
vga2hdmi_i_164: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_134_n_3,
      I1 => g(1),
      I2 => g(0),
      O => vga2hdmi_i_164_n_0
    );
vga2hdmi_i_165: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g80(6),
      I1 => g(0),
      O => vga2hdmi_i_165_n_0
    );
vga2hdmi_i_166: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_166_n_0,
      CO(2) => NLW_vga2hdmi_i_166_CO_UNCONNECTED(2),
      CO(1) => vga2hdmi_i_166_n_2,
      CO(0) => vga2hdmi_i_166_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => vga2hdmi_i_252_n_0,
      DI(1) => vga2hdmi_i_253_n_0,
      DI(0) => '0',
      O(3) => NLW_vga2hdmi_i_166_O_UNCONNECTED(3),
      O(2 downto 0) => b80(5 downto 3),
      S(3) => '1',
      S(2) => vga2hdmi_i_254_n_0,
      S(1) => vga2hdmi_i_255_n_0,
      S(0) => vga2hdmi_i_256_n_0
    );
vga2hdmi_i_167: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => b(1),
      I1 => b(0),
      I2 => b(2),
      O => vga2hdmi_i_167_n_0
    );
vga2hdmi_i_168: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => b(2),
      I1 => b(1),
      I2 => b(0),
      O => vga2hdmi_i_168_n_0
    );
vga2hdmi_i_169: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => b(2),
      I1 => b(0),
      I2 => b(1),
      O => vga2hdmi_i_169_n_0
    );
vga2hdmi_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => vga2hdmi_i_39_n_7,
      I1 => vga2hdmi_i_40_n_5,
      I2 => vga2hdmi_i_41_n_0,
      I3 => vga2hdmi_i_40_n_6,
      I4 => vga2hdmi_i_40_n_4,
      I5 => vga2hdmi_i_39_n_6,
      O => b8(7)
    );
vga2hdmi_i_170: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => b(2),
      I1 => b(0),
      I2 => b(1),
      O => vga2hdmi_i_170_n_0
    );
vga2hdmi_i_171: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(1),
      O => vga2hdmi_i_171_n_0
    );
vga2hdmi_i_172: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(0),
      O => vga2hdmi_i_172_n_0
    );
vga2hdmi_i_173: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_166_n_0,
      O => b80(7)
    );
vga2hdmi_i_174: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_166_n_0,
      O => vga2hdmi_i_174_n_0
    );
vga2hdmi_i_175: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6669"
    )
        port map (
      I0 => vga2hdmi_i_166_n_0,
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      O => vga2hdmi_i_175_n_0
    );
vga2hdmi_i_176: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_166_n_0,
      I1 => b(1),
      I2 => b(0),
      O => vga2hdmi_i_176_n_0
    );
vga2hdmi_i_177: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b80(5),
      I1 => b(0),
      O => vga2hdmi_i_177_n_0
    );
vga2hdmi_i_178: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_178_n_0,
      CO(2) => vga2hdmi_i_178_n_1,
      CO(1) => vga2hdmi_i_178_n_2,
      CO(0) => vga2hdmi_i_178_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_257_n_0,
      DI(2) => vga2hdmi_i_258_n_0,
      DI(1) => vga2hdmi_i_259_n_0,
      DI(0) => '0',
      O(3) => vga2hdmi_i_178_n_4,
      O(2) => vga2hdmi_i_178_n_5,
      O(1) => vga2hdmi_i_178_n_6,
      O(0) => vga2hdmi_i_178_n_7,
      S(3) => vga2hdmi_i_260_n_0,
      S(2) => vga2hdmi_i_261_n_0,
      S(1) => vga2hdmi_i_262_n_0,
      S(0) => vga2hdmi_i_263_n_0
    );
vga2hdmi_i_179: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_39_n_7,
      I1 => vga2hdmi_i_40_n_5,
      I2 => vga2hdmi_i_187_n_6,
      O => vga2hdmi_i_179_n_0
    );
vga2hdmi_i_18: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => vga2hdmi_i_40_n_4,
      I1 => vga2hdmi_i_40_n_6,
      I2 => vga2hdmi_i_41_n_0,
      I3 => vga2hdmi_i_40_n_5,
      I4 => vga2hdmi_i_39_n_7,
      O => b8(6)
    );
vga2hdmi_i_180: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_187_n_7,
      I1 => vga2hdmi_i_40_n_4,
      I2 => vga2hdmi_i_40_n_6,
      O => vga2hdmi_i_180_n_0
    );
vga2hdmi_i_181: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_264_n_4,
      I1 => vga2hdmi_i_40_n_5,
      I2 => vga2hdmi_i_40_n_7,
      O => vga2hdmi_i_181_n_0
    );
vga2hdmi_i_182: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_264_n_5,
      I1 => vga2hdmi_i_40_n_6,
      I2 => vga2hdmi_i_42_n_4,
      O => vga2hdmi_i_182_n_0
    );
vga2hdmi_i_183: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_187_n_6,
      I1 => vga2hdmi_i_40_n_5,
      I2 => vga2hdmi_i_39_n_7,
      I3 => vga2hdmi_i_39_n_6,
      I4 => vga2hdmi_i_187_n_5,
      I5 => vga2hdmi_i_40_n_4,
      O => vga2hdmi_i_183_n_0
    );
vga2hdmi_i_184: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_40_n_6,
      I1 => vga2hdmi_i_40_n_4,
      I2 => vga2hdmi_i_187_n_7,
      I3 => vga2hdmi_i_39_n_7,
      I4 => vga2hdmi_i_187_n_6,
      I5 => vga2hdmi_i_40_n_5,
      O => vga2hdmi_i_184_n_0
    );
vga2hdmi_i_185: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_40_n_7,
      I1 => vga2hdmi_i_40_n_5,
      I2 => vga2hdmi_i_264_n_4,
      I3 => vga2hdmi_i_187_n_7,
      I4 => vga2hdmi_i_40_n_4,
      I5 => vga2hdmi_i_40_n_6,
      O => vga2hdmi_i_185_n_0
    );
vga2hdmi_i_186: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_42_n_4,
      I1 => vga2hdmi_i_40_n_6,
      I2 => vga2hdmi_i_264_n_5,
      I3 => vga2hdmi_i_264_n_4,
      I4 => vga2hdmi_i_40_n_5,
      I5 => vga2hdmi_i_40_n_7,
      O => vga2hdmi_i_186_n_0
    );
vga2hdmi_i_187: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_264_n_0,
      CO(3) => vga2hdmi_i_187_n_0,
      CO(2) => vga2hdmi_i_187_n_1,
      CO(1) => vga2hdmi_i_187_n_2,
      CO(0) => vga2hdmi_i_187_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_39_n_1,
      DI(2) => vga2hdmi_i_39_n_6,
      DI(1) => vga2hdmi_i_39_n_7,
      DI(0) => vga2hdmi_i_40_n_4,
      O(3) => vga2hdmi_i_187_n_4,
      O(2) => vga2hdmi_i_187_n_5,
      O(1) => vga2hdmi_i_187_n_6,
      O(0) => vga2hdmi_i_187_n_7,
      S(3) => vga2hdmi_i_265_n_0,
      S(2) => vga2hdmi_i_266_n_0,
      S(1) => vga2hdmi_i_267_n_0,
      S(0) => vga2hdmi_i_268_n_0
    );
vga2hdmi_i_188: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_187_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_188_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_188_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_vga2hdmi_i_188_O_UNCONNECTED(3 downto 0),
      S(3 downto 0) => B"0001"
    );
vga2hdmi_i_189: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_269_n_0,
      CO(3) => vga2hdmi_i_189_n_0,
      CO(2) => vga2hdmi_i_189_n_1,
      CO(1) => vga2hdmi_i_189_n_2,
      CO(0) => vga2hdmi_i_189_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_270_n_0,
      DI(2) => vga2hdmi_i_271_n_0,
      DI(1) => vga2hdmi_i_272_n_0,
      DI(0) => vga2hdmi_i_273_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_189_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_274_n_0,
      S(2) => vga2hdmi_i_275_n_0,
      S(1) => vga2hdmi_i_276_n_0,
      S(0) => vga2hdmi_i_277_n_0
    );
vga2hdmi_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => vga2hdmi_i_40_n_5,
      I1 => vga2hdmi_i_41_n_0,
      I2 => vga2hdmi_i_40_n_6,
      I3 => vga2hdmi_i_40_n_4,
      O => b8(5)
    );
vga2hdmi_i_190: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_95_n_4,
      I1 => b80(10),
      O => vga2hdmi_i_190_n_0
    );
vga2hdmi_i_191: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_95_n_5,
      I1 => b80(9),
      O => vga2hdmi_i_191_n_0
    );
vga2hdmi_i_192: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_95_n_6,
      I1 => b80(8),
      O => vga2hdmi_i_192_n_0
    );
vga2hdmi_i_193: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vga2hdmi_i_95_n_7,
      I1 => vga2hdmi_i_166_n_0,
      O => vga2hdmi_i_193_n_0
    );
vga2hdmi_i_194: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => b80(10),
      I1 => vga2hdmi_i_95_n_4,
      I2 => b80(11),
      I3 => vga2hdmi_i_44_n_7,
      O => vga2hdmi_i_194_n_0
    );
vga2hdmi_i_195: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => b80(9),
      I1 => vga2hdmi_i_95_n_5,
      I2 => b80(10),
      I3 => vga2hdmi_i_95_n_4,
      O => vga2hdmi_i_195_n_0
    );
vga2hdmi_i_196: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => b80(8),
      I1 => vga2hdmi_i_95_n_6,
      I2 => b80(9),
      I3 => vga2hdmi_i_95_n_5,
      O => vga2hdmi_i_196_n_0
    );
vga2hdmi_i_197: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7887"
    )
        port map (
      I0 => vga2hdmi_i_166_n_0,
      I1 => vga2hdmi_i_95_n_7,
      I2 => b80(8),
      I3 => vga2hdmi_i_95_n_6,
      O => vga2hdmi_i_197_n_0
    );
vga2hdmi_i_198: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => r(2),
      I1 => r(0),
      I2 => r(1),
      I3 => r(4),
      O => vga2hdmi_i_198_n_0
    );
vga2hdmi_i_199: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => r(2),
      I1 => r(0),
      I2 => r(1),
      I3 => r(3),
      O => vga2hdmi_i_199_n_0
    );
vga2hdmi_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => vga2hdmi_i_26_n_4,
      I1 => vga2hdmi_i_26_n_6,
      I2 => vga2hdmi_i_27_n_0,
      I3 => vga2hdmi_i_26_n_5,
      I4 => vga2hdmi_i_25_n_7,
      O => r8(6)
    );
vga2hdmi_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => vga2hdmi_i_40_n_6,
      I1 => vga2hdmi_i_41_n_0,
      I2 => vga2hdmi_i_40_n_5,
      O => b8(4)
    );
vga2hdmi_i_200: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => r(4),
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      O => vga2hdmi_i_200_n_0
    );
vga2hdmi_i_201: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333336"
    )
        port map (
      I0 => r(3),
      I1 => r(4),
      I2 => r(1),
      I3 => r(0),
      I4 => r(2),
      O => vga2hdmi_i_201_n_0
    );
vga2hdmi_i_202: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => r(3),
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      O => vga2hdmi_i_202_n_0
    );
vga2hdmi_i_203: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_210_n_6,
      I1 => vga2hdmi_i_26_n_7,
      I2 => vga2hdmi_i_28_n_5,
      O => vga2hdmi_i_203_n_0
    );
vga2hdmi_i_204: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_26_n_7,
      I1 => vga2hdmi_i_28_n_5,
      I2 => vga2hdmi_i_210_n_6,
      O => vga2hdmi_i_204_n_0
    );
vga2hdmi_i_205: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_278_n_4,
      I1 => vga2hdmi_i_28_n_5,
      O => vga2hdmi_i_205_n_0
    );
vga2hdmi_i_206: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_28_n_5,
      I1 => vga2hdmi_i_26_n_7,
      I2 => vga2hdmi_i_210_n_6,
      I3 => vga2hdmi_i_210_n_5,
      I4 => vga2hdmi_i_26_n_6,
      I5 => vga2hdmi_i_28_n_4,
      O => vga2hdmi_i_206_n_0
    );
vga2hdmi_i_207: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => vga2hdmi_i_210_n_6,
      I1 => vga2hdmi_i_28_n_5,
      I2 => vga2hdmi_i_26_n_7,
      I3 => vga2hdmi_i_28_n_4,
      I4 => vga2hdmi_i_210_n_7,
      O => vga2hdmi_i_207_n_0
    );
vga2hdmi_i_208: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => vga2hdmi_i_28_n_5,
      I1 => vga2hdmi_i_278_n_4,
      I2 => vga2hdmi_i_28_n_4,
      I3 => vga2hdmi_i_210_n_7,
      O => vga2hdmi_i_208_n_0
    );
vga2hdmi_i_209: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vga2hdmi_i_28_n_5,
      I1 => vga2hdmi_i_278_n_4,
      O => vga2hdmi_i_209_n_0
    );
vga2hdmi_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_41_n_0,
      I1 => vga2hdmi_i_40_n_6,
      O => b8(3)
    );
vga2hdmi_i_210: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_278_n_0,
      CO(3) => vga2hdmi_i_210_n_0,
      CO(2) => vga2hdmi_i_210_n_1,
      CO(1) => vga2hdmi_i_210_n_2,
      CO(0) => vga2hdmi_i_210_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_26_n_5,
      DI(2) => vga2hdmi_i_26_n_6,
      DI(1) => vga2hdmi_i_26_n_7,
      DI(0) => vga2hdmi_i_28_n_4,
      O(3) => vga2hdmi_i_210_n_4,
      O(2) => vga2hdmi_i_210_n_5,
      O(1) => vga2hdmi_i_210_n_6,
      O(0) => vga2hdmi_i_210_n_7,
      S(3) => vga2hdmi_i_279_n_0,
      S(2) => vga2hdmi_i_280_n_0,
      S(1) => vga2hdmi_i_281_n_0,
      S(0) => vga2hdmi_i_282_n_0
    );
vga2hdmi_i_211: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_25_n_1,
      O => vga2hdmi_i_211_n_0
    );
vga2hdmi_i_212: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_25_n_6,
      O => vga2hdmi_i_212_n_0
    );
vga2hdmi_i_213: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_25_n_7,
      O => vga2hdmi_i_213_n_0
    );
vga2hdmi_i_214: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_26_n_4,
      I1 => vga2hdmi_i_25_n_1,
      O => vga2hdmi_i_214_n_0
    );
vga2hdmi_i_215: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_215_n_0,
      CO(2) => vga2hdmi_i_215_n_1,
      CO(1) => vga2hdmi_i_215_n_2,
      CO(0) => vga2hdmi_i_215_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_283_n_0,
      DI(2) => vga2hdmi_i_284_n_0,
      DI(1) => vga2hdmi_i_285_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_215_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_286_n_0,
      S(2) => vga2hdmi_i_287_n_0,
      S(1) => vga2hdmi_i_288_n_0,
      S(0) => vga2hdmi_i_289_n_0
    );
vga2hdmi_i_216: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vga2hdmi_i_114_n_4,
      I1 => vga2hdmi_i_102_n_0,
      O => vga2hdmi_i_216_n_0
    );
vga2hdmi_i_217: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_114_n_5,
      I1 => r80(5),
      O => vga2hdmi_i_217_n_0
    );
vga2hdmi_i_218: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_114_n_6,
      I1 => r80(4),
      O => vga2hdmi_i_218_n_0
    );
vga2hdmi_i_219: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_114_n_7,
      I1 => r80(3),
      O => vga2hdmi_i_219_n_0
    );
vga2hdmi_i_22: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFF008A0000"
    )
        port map (
      I0 => vga2hdmi_i_42_n_4,
      I1 => b80(12),
      I2 => vga2hdmi_i_44_n_6,
      I3 => vga2hdmi_i_45_n_3,
      I4 => vga2hdmi_i_42_n_5,
      I5 => vga2hdmi_i_40_n_7,
      O => b8(2)
    );
vga2hdmi_i_220: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => vga2hdmi_i_114_n_4,
      I1 => vga2hdmi_i_102_n_0,
      I2 => vga2hdmi_i_56_n_7,
      O => vga2hdmi_i_220_n_0
    );
vga2hdmi_i_221: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => r80(5),
      I1 => vga2hdmi_i_114_n_5,
      I2 => vga2hdmi_i_102_n_0,
      I3 => vga2hdmi_i_114_n_4,
      O => vga2hdmi_i_221_n_0
    );
vga2hdmi_i_222: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => r80(4),
      I1 => vga2hdmi_i_114_n_6,
      I2 => r80(5),
      I3 => vga2hdmi_i_114_n_5,
      O => vga2hdmi_i_222_n_0
    );
vga2hdmi_i_223: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => r80(3),
      I1 => vga2hdmi_i_114_n_7,
      I2 => vga2hdmi_i_114_n_6,
      I3 => r80(4),
      O => vga2hdmi_i_223_n_0
    );
vga2hdmi_i_224: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_33_n_5,
      I1 => vga2hdmi_i_38_n_4,
      I2 => vga2hdmi_i_231_n_5,
      O => vga2hdmi_i_224_n_0
    );
vga2hdmi_i_225: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_231_n_7,
      I1 => vga2hdmi_i_33_n_7,
      O => vga2hdmi_i_225_n_0
    );
vga2hdmi_i_226: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_290_n_4,
      I1 => vga2hdmi_i_38_n_4,
      O => vga2hdmi_i_226_n_0
    );
vga2hdmi_i_227: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => vga2hdmi_i_231_n_5,
      I1 => vga2hdmi_i_38_n_4,
      I2 => vga2hdmi_i_33_n_5,
      I3 => vga2hdmi_i_33_n_6,
      I4 => vga2hdmi_i_231_n_6,
      O => vga2hdmi_i_227_n_0
    );
vga2hdmi_i_228: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      I1 => vga2hdmi_i_231_n_7,
      I2 => vga2hdmi_i_33_n_6,
      I3 => vga2hdmi_i_231_n_6,
      O => vga2hdmi_i_228_n_0
    );
vga2hdmi_i_229: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => vga2hdmi_i_38_n_4,
      I1 => vga2hdmi_i_290_n_4,
      I2 => vga2hdmi_i_33_n_7,
      I3 => vga2hdmi_i_231_n_7,
      O => vga2hdmi_i_229_n_0
    );
vga2hdmi_i_23: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD2202"
    )
        port map (
      I0 => vga2hdmi_i_42_n_5,
      I1 => vga2hdmi_i_45_n_3,
      I2 => vga2hdmi_i_44_n_6,
      I3 => b80(12),
      I4 => vga2hdmi_i_42_n_4,
      O => b8(1)
    );
vga2hdmi_i_230: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vga2hdmi_i_38_n_4,
      I1 => vga2hdmi_i_290_n_4,
      O => vga2hdmi_i_230_n_0
    );
vga2hdmi_i_231: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_290_n_0,
      CO(3) => vga2hdmi_i_231_n_0,
      CO(2) => vga2hdmi_i_231_n_1,
      CO(1) => vga2hdmi_i_231_n_2,
      CO(0) => vga2hdmi_i_231_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_33_n_4,
      DI(2) => vga2hdmi_i_33_n_5,
      DI(1) => vga2hdmi_i_33_n_6,
      DI(0) => vga2hdmi_i_33_n_7,
      O(3) => vga2hdmi_i_231_n_4,
      O(2) => vga2hdmi_i_231_n_5,
      O(1) => vga2hdmi_i_231_n_6,
      O(0) => vga2hdmi_i_231_n_7,
      S(3) => vga2hdmi_i_291_n_0,
      S(2) => vga2hdmi_i_292_n_0,
      S(1) => vga2hdmi_i_293_n_0,
      S(0) => vga2hdmi_i_294_n_0
    );
vga2hdmi_i_232: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_32_n_0,
      O => vga2hdmi_i_232_n_0
    );
vga2hdmi_i_233: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_32_n_5,
      O => vga2hdmi_i_233_n_0
    );
vga2hdmi_i_234: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_32_n_6,
      O => vga2hdmi_i_234_n_0
    );
vga2hdmi_i_235: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_32_n_7,
      I1 => vga2hdmi_i_32_n_0,
      O => vga2hdmi_i_235_n_0
    );
vga2hdmi_i_236: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_236_n_0,
      CO(2) => vga2hdmi_i_236_n_1,
      CO(1) => vga2hdmi_i_236_n_2,
      CO(0) => vga2hdmi_i_236_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_295_n_0,
      DI(2) => vga2hdmi_i_296_n_0,
      DI(1) => vga2hdmi_i_297_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_236_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_298_n_0,
      S(2) => vga2hdmi_i_299_n_0,
      S(1) => vga2hdmi_i_300_n_0,
      S(0) => vga2hdmi_i_301_n_0
    );
vga2hdmi_i_237: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_141_n_4,
      I1 => g80(6),
      O => vga2hdmi_i_237_n_0
    );
vga2hdmi_i_238: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_141_n_5,
      I1 => g80(5),
      O => vga2hdmi_i_238_n_0
    );
vga2hdmi_i_239: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_141_n_6,
      I1 => g80(4),
      O => vga2hdmi_i_239_n_0
    );
vga2hdmi_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F40B"
    )
        port map (
      I0 => b80(12),
      I1 => vga2hdmi_i_44_n_6,
      I2 => vga2hdmi_i_45_n_3,
      I3 => vga2hdmi_i_42_n_5,
      O => b8(0)
    );
vga2hdmi_i_240: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_141_n_7,
      I1 => g80(3),
      O => vga2hdmi_i_240_n_0
    );
vga2hdmi_i_241: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => g80(6),
      I1 => vga2hdmi_i_141_n_4,
      I2 => vga2hdmi_i_134_n_3,
      I3 => vga2hdmi_i_69_n_7,
      O => vga2hdmi_i_241_n_0
    );
vga2hdmi_i_242: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => g80(5),
      I1 => vga2hdmi_i_141_n_5,
      I2 => g80(6),
      I3 => vga2hdmi_i_141_n_4,
      O => vga2hdmi_i_242_n_0
    );
vga2hdmi_i_243: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => g80(4),
      I1 => vga2hdmi_i_141_n_6,
      I2 => vga2hdmi_i_141_n_5,
      I3 => g80(5),
      O => vga2hdmi_i_243_n_0
    );
vga2hdmi_i_244: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => g80(3),
      I1 => vga2hdmi_i_141_n_7,
      I2 => vga2hdmi_i_141_n_6,
      I3 => g80(4),
      O => vga2hdmi_i_244_n_0
    );
vga2hdmi_i_245: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => g(2),
      I1 => g(0),
      I2 => g(1),
      I3 => g(5),
      O => vga2hdmi_i_245_n_0
    );
vga2hdmi_i_246: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => g(2),
      I1 => g(0),
      I2 => g(1),
      I3 => g(4),
      O => vga2hdmi_i_246_n_0
    );
vga2hdmi_i_247: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => g(2),
      I1 => g(0),
      I2 => g(1),
      I3 => g(3),
      O => vga2hdmi_i_247_n_0
    );
vga2hdmi_i_248: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => g(5),
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      O => vga2hdmi_i_248_n_0
    );
vga2hdmi_i_249: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999993"
    )
        port map (
      I0 => g(4),
      I1 => g(5),
      I2 => g(1),
      I3 => g(0),
      I4 => g(2),
      O => vga2hdmi_i_249_n_0
    );
vga2hdmi_i_25: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_26_n_0,
      CO(3) => NLW_vga2hdmi_i_25_CO_UNCONNECTED(3),
      CO(2) => vga2hdmi_i_25_n_1,
      CO(1) => NLW_vga2hdmi_i_25_CO_UNCONNECTED(1),
      CO(0) => vga2hdmi_i_25_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => NLW_vga2hdmi_i_25_O_UNCONNECTED(3 downto 2),
      O(1) => vga2hdmi_i_25_n_6,
      O(0) => vga2hdmi_i_25_n_7,
      S(3 downto 2) => B"01",
      S(1 downto 0) => r80(12 downto 11)
    );
vga2hdmi_i_250: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333336"
    )
        port map (
      I0 => g(3),
      I1 => g(4),
      I2 => g(1),
      I3 => g(0),
      I4 => g(2),
      O => vga2hdmi_i_250_n_0
    );
vga2hdmi_i_251: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => g(3),
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      O => vga2hdmi_i_251_n_0
    );
vga2hdmi_i_252: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => b(2),
      I1 => b(0),
      I2 => b(1),
      I3 => b(4),
      O => vga2hdmi_i_252_n_0
    );
vga2hdmi_i_253: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => b(2),
      I1 => b(0),
      I2 => b(1),
      I3 => b(3),
      O => vga2hdmi_i_253_n_0
    );
vga2hdmi_i_254: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5557"
    )
        port map (
      I0 => b(4),
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      O => vga2hdmi_i_254_n_0
    );
vga2hdmi_i_255: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33333336"
    )
        port map (
      I0 => b(3),
      I1 => b(4),
      I2 => b(1),
      I3 => b(0),
      I4 => b(2),
      O => vga2hdmi_i_255_n_0
    );
vga2hdmi_i_256: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
        port map (
      I0 => b(3),
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      O => vga2hdmi_i_256_n_0
    );
vga2hdmi_i_257: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => vga2hdmi_i_264_n_6,
      I1 => vga2hdmi_i_40_n_7,
      I2 => vga2hdmi_i_42_n_5,
      O => vga2hdmi_i_257_n_0
    );
vga2hdmi_i_258: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => vga2hdmi_i_40_n_7,
      I1 => vga2hdmi_i_42_n_5,
      I2 => vga2hdmi_i_264_n_6,
      O => vga2hdmi_i_258_n_0
    );
vga2hdmi_i_259: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_302_n_4,
      I1 => vga2hdmi_i_42_n_5,
      O => vga2hdmi_i_259_n_0
    );
vga2hdmi_i_26: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_28_n_0,
      CO(3) => vga2hdmi_i_26_n_0,
      CO(2) => vga2hdmi_i_26_n_1,
      CO(1) => vga2hdmi_i_26_n_2,
      CO(0) => vga2hdmi_i_26_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => r80(12),
      O(3) => vga2hdmi_i_26_n_4,
      O(2) => vga2hdmi_i_26_n_5,
      O(1) => vga2hdmi_i_26_n_6,
      O(0) => vga2hdmi_i_26_n_7,
      S(3 downto 1) => r80(10 downto 8),
      S(0) => vga2hdmi_i_47_n_0
    );
vga2hdmi_i_260: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B24D4DB24DB2B24D"
    )
        port map (
      I0 => vga2hdmi_i_42_n_5,
      I1 => vga2hdmi_i_40_n_7,
      I2 => vga2hdmi_i_264_n_6,
      I3 => vga2hdmi_i_264_n_5,
      I4 => vga2hdmi_i_40_n_6,
      I5 => vga2hdmi_i_42_n_4,
      O => vga2hdmi_i_260_n_0
    );
vga2hdmi_i_261: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => vga2hdmi_i_264_n_6,
      I1 => vga2hdmi_i_42_n_5,
      I2 => vga2hdmi_i_40_n_7,
      I3 => vga2hdmi_i_42_n_4,
      I4 => vga2hdmi_i_264_n_7,
      O => vga2hdmi_i_261_n_0
    );
vga2hdmi_i_262: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => vga2hdmi_i_42_n_5,
      I1 => vga2hdmi_i_302_n_4,
      I2 => vga2hdmi_i_42_n_4,
      I3 => vga2hdmi_i_264_n_7,
      O => vga2hdmi_i_262_n_0
    );
vga2hdmi_i_263: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => vga2hdmi_i_42_n_5,
      I1 => vga2hdmi_i_302_n_4,
      O => vga2hdmi_i_263_n_0
    );
vga2hdmi_i_264: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_302_n_0,
      CO(3) => vga2hdmi_i_264_n_0,
      CO(2) => vga2hdmi_i_264_n_1,
      CO(1) => vga2hdmi_i_264_n_2,
      CO(0) => vga2hdmi_i_264_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_40_n_5,
      DI(2) => vga2hdmi_i_40_n_6,
      DI(1) => vga2hdmi_i_40_n_7,
      DI(0) => vga2hdmi_i_42_n_4,
      O(3) => vga2hdmi_i_264_n_4,
      O(2) => vga2hdmi_i_264_n_5,
      O(1) => vga2hdmi_i_264_n_6,
      O(0) => vga2hdmi_i_264_n_7,
      S(3) => vga2hdmi_i_303_n_0,
      S(2) => vga2hdmi_i_304_n_0,
      S(1) => vga2hdmi_i_305_n_0,
      S(0) => vga2hdmi_i_306_n_0
    );
vga2hdmi_i_265: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_39_n_1,
      O => vga2hdmi_i_265_n_0
    );
vga2hdmi_i_266: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_39_n_6,
      O => vga2hdmi_i_266_n_0
    );
vga2hdmi_i_267: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_39_n_7,
      O => vga2hdmi_i_267_n_0
    );
vga2hdmi_i_268: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_40_n_4,
      I1 => vga2hdmi_i_39_n_1,
      O => vga2hdmi_i_268_n_0
    );
vga2hdmi_i_269: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_269_n_0,
      CO(2) => vga2hdmi_i_269_n_1,
      CO(1) => vga2hdmi_i_269_n_2,
      CO(0) => vga2hdmi_i_269_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_307_n_0,
      DI(2) => vga2hdmi_i_308_n_0,
      DI(1) => vga2hdmi_i_309_n_0,
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_269_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_310_n_0,
      S(2) => vga2hdmi_i_311_n_0,
      S(1) => vga2hdmi_i_312_n_0,
      S(0) => vga2hdmi_i_313_n_0
    );
vga2hdmi_i_27: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFFFFFFFF"
    )
        port map (
      I0 => vga2hdmi_i_28_n_4,
      I1 => r80(12),
      I2 => vga2hdmi_i_30_n_6,
      I3 => vga2hdmi_i_31_n_3,
      I4 => vga2hdmi_i_28_n_5,
      I5 => vga2hdmi_i_26_n_7,
      O => vga2hdmi_i_27_n_0
    );
vga2hdmi_i_270: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => vga2hdmi_i_178_n_4,
      I1 => vga2hdmi_i_166_n_0,
      O => vga2hdmi_i_270_n_0
    );
vga2hdmi_i_271: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_178_n_5,
      I1 => b80(5),
      O => vga2hdmi_i_271_n_0
    );
vga2hdmi_i_272: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_178_n_6,
      I1 => b80(4),
      O => vga2hdmi_i_272_n_0
    );
vga2hdmi_i_273: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_178_n_7,
      I1 => b80(3),
      O => vga2hdmi_i_273_n_0
    );
vga2hdmi_i_274: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => vga2hdmi_i_178_n_4,
      I1 => vga2hdmi_i_166_n_0,
      I2 => vga2hdmi_i_95_n_7,
      O => vga2hdmi_i_274_n_0
    );
vga2hdmi_i_275: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => b80(5),
      I1 => vga2hdmi_i_178_n_5,
      I2 => vga2hdmi_i_166_n_0,
      I3 => vga2hdmi_i_178_n_4,
      O => vga2hdmi_i_275_n_0
    );
vga2hdmi_i_276: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => b80(4),
      I1 => vga2hdmi_i_178_n_6,
      I2 => b80(5),
      I3 => vga2hdmi_i_178_n_5,
      O => vga2hdmi_i_276_n_0
    );
vga2hdmi_i_277: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => b80(3),
      I1 => vga2hdmi_i_178_n_7,
      I2 => vga2hdmi_i_178_n_6,
      I3 => b80(4),
      O => vga2hdmi_i_277_n_0
    );
vga2hdmi_i_278: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_278_n_0,
      CO(2) => vga2hdmi_i_278_n_1,
      CO(1) => vga2hdmi_i_278_n_2,
      CO(0) => vga2hdmi_i_278_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_28_n_5,
      DI(2 downto 0) => B"001",
      O(3) => vga2hdmi_i_278_n_4,
      O(2) => vga2hdmi_i_278_n_5,
      O(1) => vga2hdmi_i_278_n_6,
      O(0) => vga2hdmi_i_278_n_7,
      S(3) => vga2hdmi_i_314_n_0,
      S(2) => vga2hdmi_i_315_n_0,
      S(1) => vga2hdmi_i_316_n_0,
      S(0) => vga2hdmi_i_28_n_5
    );
vga2hdmi_i_279: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_26_n_5,
      I1 => vga2hdmi_i_25_n_6,
      O => vga2hdmi_i_279_n_0
    );
vga2hdmi_i_28: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_48_n_0,
      CO(3) => vga2hdmi_i_28_n_0,
      CO(2) => vga2hdmi_i_28_n_1,
      CO(1) => vga2hdmi_i_28_n_2,
      CO(0) => vga2hdmi_i_28_n_3,
      CYINIT => '0',
      DI(3 downto 0) => r80(11 downto 8),
      O(3) => vga2hdmi_i_28_n_4,
      O(2) => vga2hdmi_i_28_n_5,
      O(1 downto 0) => NLW_vga2hdmi_i_28_O_UNCONNECTED(1 downto 0),
      S(3) => vga2hdmi_i_49_n_0,
      S(2) => vga2hdmi_i_50_n_0,
      S(1) => vga2hdmi_i_51_n_0,
      S(0) => vga2hdmi_i_52_n_0
    );
vga2hdmi_i_280: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_26_n_6,
      I1 => vga2hdmi_i_25_n_7,
      O => vga2hdmi_i_280_n_0
    );
vga2hdmi_i_281: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_26_n_7,
      I1 => vga2hdmi_i_26_n_4,
      O => vga2hdmi_i_281_n_0
    );
vga2hdmi_i_282: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_28_n_4,
      I1 => vga2hdmi_i_26_n_5,
      O => vga2hdmi_i_282_n_0
    );
vga2hdmi_i_283: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE1"
    )
        port map (
      I0 => r(1),
      I1 => r(0),
      I2 => r(2),
      I3 => vga2hdmi_i_278_n_5,
      O => vga2hdmi_i_283_n_0
    );
vga2hdmi_i_284: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => r(0),
      I1 => r(1),
      I2 => vga2hdmi_i_278_n_6,
      O => vga2hdmi_i_284_n_0
    );
vga2hdmi_i_285: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_278_n_7,
      I1 => r(0),
      O => vga2hdmi_i_285_n_0
    );
vga2hdmi_i_286: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEB11141114EEEB"
    )
        port map (
      I0 => vga2hdmi_i_278_n_5,
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      I4 => vga2hdmi_i_114_n_7,
      I5 => r80(3),
      O => vga2hdmi_i_286_n_0
    );
vga2hdmi_i_287: unisim.vcomponents.LUT5
    generic map(
      INIT => X"366CC993"
    )
        port map (
      I0 => vga2hdmi_i_278_n_6,
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      I4 => vga2hdmi_i_278_n_5,
      O => vga2hdmi_i_287_n_0
    );
vga2hdmi_i_288: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C93"
    )
        port map (
      I0 => vga2hdmi_i_278_n_7,
      I1 => r(1),
      I2 => r(0),
      I3 => vga2hdmi_i_278_n_6,
      O => vga2hdmi_i_288_n_0
    );
vga2hdmi_i_289: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r(0),
      I1 => vga2hdmi_i_278_n_7,
      O => vga2hdmi_i_289_n_0
    );
vga2hdmi_i_29: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_46_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_29_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_29_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_53_n_0,
      O(3 downto 2) => NLW_vga2hdmi_i_29_O_UNCONNECTED(3 downto 2),
      O(1 downto 0) => r80(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => vga2hdmi_i_54_n_0,
      S(0) => vga2hdmi_i_55_n_0
    );
vga2hdmi_i_290: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_290_n_0,
      CO(2) => vga2hdmi_i_290_n_1,
      CO(1) => vga2hdmi_i_290_n_2,
      CO(0) => vga2hdmi_i_290_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_38_n_4,
      DI(2 downto 0) => B"001",
      O(3) => vga2hdmi_i_290_n_4,
      O(2) => vga2hdmi_i_290_n_5,
      O(1) => vga2hdmi_i_290_n_6,
      O(0) => vga2hdmi_i_290_n_7,
      S(3) => vga2hdmi_i_317_n_0,
      S(2) => vga2hdmi_i_318_n_0,
      S(1) => vga2hdmi_i_319_n_0,
      S(0) => vga2hdmi_i_38_n_4
    );
vga2hdmi_i_291: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_33_n_4,
      I1 => vga2hdmi_i_32_n_5,
      O => vga2hdmi_i_291_n_0
    );
vga2hdmi_i_292: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_33_n_5,
      I1 => vga2hdmi_i_32_n_6,
      O => vga2hdmi_i_292_n_0
    );
vga2hdmi_i_293: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_33_n_6,
      I1 => vga2hdmi_i_32_n_7,
      O => vga2hdmi_i_293_n_0
    );
vga2hdmi_i_294: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      I1 => vga2hdmi_i_33_n_4,
      O => vga2hdmi_i_294_n_0
    );
vga2hdmi_i_295: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE1"
    )
        port map (
      I0 => g(1),
      I1 => g(0),
      I2 => g(2),
      I3 => vga2hdmi_i_290_n_5,
      O => vga2hdmi_i_295_n_0
    );
vga2hdmi_i_296: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => g(0),
      I1 => g(1),
      I2 => vga2hdmi_i_290_n_6,
      O => vga2hdmi_i_296_n_0
    );
vga2hdmi_i_297: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_290_n_7,
      I1 => g(0),
      O => vga2hdmi_i_297_n_0
    );
vga2hdmi_i_298: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEB11141114EEEB"
    )
        port map (
      I0 => vga2hdmi_i_290_n_5,
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      I4 => vga2hdmi_i_141_n_7,
      I5 => g80(3),
      O => vga2hdmi_i_298_n_0
    );
vga2hdmi_i_299: unisim.vcomponents.LUT5
    generic map(
      INIT => X"366CC993"
    )
        port map (
      I0 => vga2hdmi_i_290_n_6,
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      I4 => vga2hdmi_i_290_n_5,
      O => vga2hdmi_i_299_n_0
    );
vga2hdmi_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => vga2hdmi_i_26_n_5,
      I1 => vga2hdmi_i_27_n_0,
      I2 => vga2hdmi_i_26_n_6,
      I3 => vga2hdmi_i_26_n_4,
      O => r8(5)
    );
vga2hdmi_i_30: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_56_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_30_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_30_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_57_n_0,
      O(3 downto 2) => NLW_vga2hdmi_i_30_O_UNCONNECTED(3 downto 2),
      O(1) => vga2hdmi_i_30_n_6,
      O(0) => vga2hdmi_i_30_n_7,
      S(3 downto 2) => B"00",
      S(1) => vga2hdmi_i_58_n_0,
      S(0) => vga2hdmi_i_59_n_0
    );
vga2hdmi_i_300: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C93"
    )
        port map (
      I0 => vga2hdmi_i_290_n_7,
      I1 => g(1),
      I2 => g(0),
      I3 => vga2hdmi_i_290_n_6,
      O => vga2hdmi_i_300_n_0
    );
vga2hdmi_i_301: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g(0),
      I1 => vga2hdmi_i_290_n_7,
      O => vga2hdmi_i_301_n_0
    );
vga2hdmi_i_302: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_302_n_0,
      CO(2) => vga2hdmi_i_302_n_1,
      CO(1) => vga2hdmi_i_302_n_2,
      CO(0) => vga2hdmi_i_302_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_42_n_5,
      DI(2 downto 0) => B"001",
      O(3) => vga2hdmi_i_302_n_4,
      O(2) => vga2hdmi_i_302_n_5,
      O(1) => vga2hdmi_i_302_n_6,
      O(0) => vga2hdmi_i_302_n_7,
      S(3) => vga2hdmi_i_320_n_0,
      S(2) => vga2hdmi_i_321_n_0,
      S(1) => vga2hdmi_i_322_n_0,
      S(0) => vga2hdmi_i_42_n_5
    );
vga2hdmi_i_303: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_40_n_5,
      I1 => vga2hdmi_i_39_n_6,
      O => vga2hdmi_i_303_n_0
    );
vga2hdmi_i_304: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_40_n_6,
      I1 => vga2hdmi_i_39_n_7,
      O => vga2hdmi_i_304_n_0
    );
vga2hdmi_i_305: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_40_n_7,
      I1 => vga2hdmi_i_40_n_4,
      O => vga2hdmi_i_305_n_0
    );
vga2hdmi_i_306: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_42_n_4,
      I1 => vga2hdmi_i_40_n_5,
      O => vga2hdmi_i_306_n_0
    );
vga2hdmi_i_307: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE1"
    )
        port map (
      I0 => b(1),
      I1 => b(0),
      I2 => b(2),
      I3 => vga2hdmi_i_302_n_5,
      O => vga2hdmi_i_307_n_0
    );
vga2hdmi_i_308: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => b(0),
      I1 => b(1),
      I2 => vga2hdmi_i_302_n_6,
      O => vga2hdmi_i_308_n_0
    );
vga2hdmi_i_309: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => vga2hdmi_i_302_n_7,
      I1 => b(0),
      O => vga2hdmi_i_309_n_0
    );
vga2hdmi_i_31: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_60_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_31_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_31_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_61_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_31_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => vga2hdmi_i_62_n_0
    );
vga2hdmi_i_310: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEB11141114EEEB"
    )
        port map (
      I0 => vga2hdmi_i_302_n_5,
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      I4 => vga2hdmi_i_178_n_7,
      I5 => b80(3),
      O => vga2hdmi_i_310_n_0
    );
vga2hdmi_i_311: unisim.vcomponents.LUT5
    generic map(
      INIT => X"366CC993"
    )
        port map (
      I0 => vga2hdmi_i_302_n_6,
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      I4 => vga2hdmi_i_302_n_5,
      O => vga2hdmi_i_311_n_0
    );
vga2hdmi_i_312: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6C93"
    )
        port map (
      I0 => vga2hdmi_i_302_n_7,
      I1 => b(1),
      I2 => b(0),
      I3 => vga2hdmi_i_302_n_6,
      O => vga2hdmi_i_312_n_0
    );
vga2hdmi_i_313: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b(0),
      I1 => vga2hdmi_i_302_n_7,
      O => vga2hdmi_i_313_n_0
    );
vga2hdmi_i_314: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_28_n_5,
      I1 => vga2hdmi_i_26_n_6,
      O => vga2hdmi_i_314_n_0
    );
vga2hdmi_i_315: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_26_n_7,
      O => vga2hdmi_i_315_n_0
    );
vga2hdmi_i_316: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_28_n_4,
      O => vga2hdmi_i_316_n_0
    );
vga2hdmi_i_317: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_38_n_4,
      I1 => vga2hdmi_i_33_n_5,
      O => vga2hdmi_i_317_n_0
    );
vga2hdmi_i_318: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_33_n_6,
      O => vga2hdmi_i_318_n_0
    );
vga2hdmi_i_319: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      O => vga2hdmi_i_319_n_0
    );
vga2hdmi_i_32: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_33_n_0,
      CO(3) => vga2hdmi_i_32_n_0,
      CO(2) => NLW_vga2hdmi_i_32_CO_UNCONNECTED(2),
      CO(1) => vga2hdmi_i_32_n_2,
      CO(0) => vga2hdmi_i_32_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_vga2hdmi_i_32_O_UNCONNECTED(3),
      O(2) => vga2hdmi_i_32_n_5,
      O(1) => vga2hdmi_i_32_n_6,
      O(0) => vga2hdmi_i_32_n_7,
      S(3) => '1',
      S(2 downto 0) => g80(13 downto 11)
    );
vga2hdmi_i_320: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_42_n_5,
      I1 => vga2hdmi_i_40_n_6,
      O => vga2hdmi_i_320_n_0
    );
vga2hdmi_i_321: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_40_n_7,
      O => vga2hdmi_i_321_n_0
    );
vga2hdmi_i_322: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => vga2hdmi_i_42_n_4,
      O => vga2hdmi_i_322_n_0
    );
vga2hdmi_i_33: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_38_n_0,
      CO(3) => vga2hdmi_i_33_n_0,
      CO(2) => vga2hdmi_i_33_n_1,
      CO(1) => vga2hdmi_i_33_n_2,
      CO(0) => vga2hdmi_i_33_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => g80(13),
      O(3) => vga2hdmi_i_33_n_4,
      O(2) => vga2hdmi_i_33_n_5,
      O(1) => vga2hdmi_i_33_n_6,
      O(0) => vga2hdmi_i_33_n_7,
      S(3 downto 1) => g80(10 downto 8),
      S(0) => vga2hdmi_i_64_n_0
    );
vga2hdmi_i_34: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFFFFFFFF"
    )
        port map (
      I0 => vga2hdmi_i_33_n_7,
      I1 => g80(13),
      I2 => vga2hdmi_i_36_n_5,
      I3 => vga2hdmi_i_37_n_2,
      I4 => vga2hdmi_i_38_n_4,
      I5 => vga2hdmi_i_33_n_6,
      O => vga2hdmi_i_34_n_0
    );
vga2hdmi_i_35: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_63_n_0,
      CO(3 downto 2) => NLW_vga2hdmi_i_35_CO_UNCONNECTED(3 downto 2),
      CO(1) => vga2hdmi_i_35_n_2,
      CO(0) => vga2hdmi_i_35_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => g(3),
      DI(0) => vga2hdmi_i_65_n_0,
      O(3) => NLW_vga2hdmi_i_35_O_UNCONNECTED(3),
      O(2 downto 0) => g80(13 downto 11),
      S(3) => '0',
      S(2) => vga2hdmi_i_66_n_0,
      S(1) => vga2hdmi_i_67_n_0,
      S(0) => vga2hdmi_i_68_n_0
    );
vga2hdmi_i_36: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_69_n_0,
      CO(3 downto 2) => NLW_vga2hdmi_i_36_CO_UNCONNECTED(3 downto 2),
      CO(1) => vga2hdmi_i_36_n_2,
      CO(0) => vga2hdmi_i_36_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => vga2hdmi_i_70_n_0,
      DI(0) => vga2hdmi_i_71_n_0,
      O(3) => NLW_vga2hdmi_i_36_O_UNCONNECTED(3),
      O(2) => vga2hdmi_i_36_n_5,
      O(1) => vga2hdmi_i_36_n_6,
      O(0) => vga2hdmi_i_36_n_7,
      S(3) => '0',
      S(2) => vga2hdmi_i_72_n_0,
      S(1) => vga2hdmi_i_73_n_0,
      S(0) => vga2hdmi_i_74_n_0
    );
vga2hdmi_i_37: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_75_n_0,
      CO(3 downto 2) => NLW_vga2hdmi_i_37_CO_UNCONNECTED(3 downto 2),
      CO(1) => vga2hdmi_i_37_n_2,
      CO(0) => vga2hdmi_i_37_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => vga2hdmi_i_76_n_0,
      DI(0) => vga2hdmi_i_77_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_37_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => vga2hdmi_i_78_n_0,
      S(0) => vga2hdmi_i_79_n_0
    );
vga2hdmi_i_38: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_80_n_0,
      CO(3) => vga2hdmi_i_38_n_0,
      CO(2) => vga2hdmi_i_38_n_1,
      CO(1) => vga2hdmi_i_38_n_2,
      CO(0) => vga2hdmi_i_38_n_3,
      CYINIT => '0',
      DI(3 downto 0) => g80(12 downto 9),
      O(3) => vga2hdmi_i_38_n_4,
      O(2 downto 0) => NLW_vga2hdmi_i_38_O_UNCONNECTED(2 downto 0),
      S(3) => vga2hdmi_i_81_n_0,
      S(2) => vga2hdmi_i_82_n_0,
      S(1) => vga2hdmi_i_83_n_0,
      S(0) => vga2hdmi_i_84_n_0
    );
vga2hdmi_i_39: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_40_n_0,
      CO(3) => NLW_vga2hdmi_i_39_CO_UNCONNECTED(3),
      CO(2) => vga2hdmi_i_39_n_1,
      CO(1) => NLW_vga2hdmi_i_39_CO_UNCONNECTED(1),
      CO(0) => vga2hdmi_i_39_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => NLW_vga2hdmi_i_39_O_UNCONNECTED(3 downto 2),
      O(1) => vga2hdmi_i_39_n_6,
      O(0) => vga2hdmi_i_39_n_7,
      S(3 downto 2) => B"01",
      S(1 downto 0) => b80(12 downto 11)
    );
vga2hdmi_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => vga2hdmi_i_26_n_6,
      I1 => vga2hdmi_i_27_n_0,
      I2 => vga2hdmi_i_26_n_5,
      O => r8(4)
    );
vga2hdmi_i_40: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_42_n_0,
      CO(3) => vga2hdmi_i_40_n_0,
      CO(2) => vga2hdmi_i_40_n_1,
      CO(1) => vga2hdmi_i_40_n_2,
      CO(0) => vga2hdmi_i_40_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => b80(12),
      O(3) => vga2hdmi_i_40_n_4,
      O(2) => vga2hdmi_i_40_n_5,
      O(1) => vga2hdmi_i_40_n_6,
      O(0) => vga2hdmi_i_40_n_7,
      S(3 downto 1) => b80(10 downto 8),
      S(0) => vga2hdmi_i_86_n_0
    );
vga2hdmi_i_41: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFFFFFFFFFF"
    )
        port map (
      I0 => vga2hdmi_i_42_n_4,
      I1 => b80(12),
      I2 => vga2hdmi_i_44_n_6,
      I3 => vga2hdmi_i_45_n_3,
      I4 => vga2hdmi_i_42_n_5,
      I5 => vga2hdmi_i_40_n_7,
      O => vga2hdmi_i_41_n_0
    );
vga2hdmi_i_42: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_87_n_0,
      CO(3) => vga2hdmi_i_42_n_0,
      CO(2) => vga2hdmi_i_42_n_1,
      CO(1) => vga2hdmi_i_42_n_2,
      CO(0) => vga2hdmi_i_42_n_3,
      CYINIT => '0',
      DI(3 downto 0) => b80(11 downto 8),
      O(3) => vga2hdmi_i_42_n_4,
      O(2) => vga2hdmi_i_42_n_5,
      O(1 downto 0) => NLW_vga2hdmi_i_42_O_UNCONNECTED(1 downto 0),
      S(3) => vga2hdmi_i_88_n_0,
      S(2) => vga2hdmi_i_89_n_0,
      S(1) => vga2hdmi_i_90_n_0,
      S(0) => vga2hdmi_i_91_n_0
    );
vga2hdmi_i_43: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_85_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_43_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_43_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_92_n_0,
      O(3 downto 2) => NLW_vga2hdmi_i_43_O_UNCONNECTED(3 downto 2),
      O(1 downto 0) => b80(12 downto 11),
      S(3 downto 2) => B"00",
      S(1) => vga2hdmi_i_93_n_0,
      S(0) => vga2hdmi_i_94_n_0
    );
vga2hdmi_i_44: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_95_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_44_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_44_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_96_n_0,
      O(3 downto 2) => NLW_vga2hdmi_i_44_O_UNCONNECTED(3 downto 2),
      O(1) => vga2hdmi_i_44_n_6,
      O(0) => vga2hdmi_i_44_n_7,
      S(3 downto 2) => B"00",
      S(1) => vga2hdmi_i_97_n_0,
      S(0) => vga2hdmi_i_98_n_0
    );
vga2hdmi_i_45: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_99_n_0,
      CO(3 downto 1) => NLW_vga2hdmi_i_45_CO_UNCONNECTED(3 downto 1),
      CO(0) => vga2hdmi_i_45_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => vga2hdmi_i_100_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_45_O_UNCONNECTED(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => vga2hdmi_i_101_n_0
    );
vga2hdmi_i_46: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_46_n_0,
      CO(2) => vga2hdmi_i_46_n_1,
      CO(1) => vga2hdmi_i_46_n_2,
      CO(0) => vga2hdmi_i_46_n_3,
      CYINIT => vga2hdmi_i_102_n_0,
      DI(3) => vga2hdmi_i_103_n_0,
      DI(2) => vga2hdmi_i_104_n_0,
      DI(1) => vga2hdmi_i_105_n_0,
      DI(0) => '0',
      O(3 downto 1) => r80(10 downto 8),
      O(0) => NLW_vga2hdmi_i_46_O_UNCONNECTED(0),
      S(3) => vga2hdmi_i_106_n_0,
      S(2) => vga2hdmi_i_107_n_0,
      S(1) => vga2hdmi_i_108_n_0,
      S(0) => '1'
    );
vga2hdmi_i_47: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r80(12),
      I1 => vga2hdmi_i_102_n_0,
      O => vga2hdmi_i_47_n_0
    );
vga2hdmi_i_48: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_48_n_0,
      CO(2) => vga2hdmi_i_48_n_1,
      CO(1) => vga2hdmi_i_48_n_2,
      CO(0) => vga2hdmi_i_48_n_3,
      CYINIT => '0',
      DI(3) => r80(7),
      DI(2) => vga2hdmi_i_110_n_0,
      DI(1) => r80(5),
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_48_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_111_n_0,
      S(2) => vga2hdmi_i_112_n_0,
      S(1) => vga2hdmi_i_113_n_0,
      S(0) => r80(4)
    );
vga2hdmi_i_49: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r80(11),
      I1 => vga2hdmi_i_102_n_0,
      O => vga2hdmi_i_49_n_0
    );
vga2hdmi_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => vga2hdmi_i_27_n_0,
      I1 => vga2hdmi_i_26_n_6,
      O => r8(3)
    );
vga2hdmi_i_50: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r80(10),
      I1 => r80(5),
      O => vga2hdmi_i_50_n_0
    );
vga2hdmi_i_51: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r80(9),
      I1 => r80(4),
      O => vga2hdmi_i_51_n_0
    );
vga2hdmi_i_52: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r80(8),
      I1 => r80(3),
      O => vga2hdmi_i_52_n_0
    );
vga2hdmi_i_53: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r(3),
      O => vga2hdmi_i_53_n_0
    );
vga2hdmi_i_54: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => r(3),
      I1 => r(4),
      O => vga2hdmi_i_54_n_0
    );
vga2hdmi_i_55: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9995"
    )
        port map (
      I0 => r(3),
      I1 => r(2),
      I2 => r(0),
      I3 => r(1),
      O => vga2hdmi_i_55_n_0
    );
vga2hdmi_i_56: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_114_n_0,
      CO(3) => vga2hdmi_i_56_n_0,
      CO(2) => vga2hdmi_i_56_n_1,
      CO(1) => vga2hdmi_i_56_n_2,
      CO(0) => vga2hdmi_i_56_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_115_n_0,
      DI(2) => vga2hdmi_i_116_n_0,
      DI(1) => vga2hdmi_i_117_n_0,
      DI(0) => vga2hdmi_i_118_n_0,
      O(3) => vga2hdmi_i_56_n_4,
      O(2) => vga2hdmi_i_56_n_5,
      O(1) => vga2hdmi_i_56_n_6,
      O(0) => vga2hdmi_i_56_n_7,
      S(3) => vga2hdmi_i_119_n_0,
      S(2) => vga2hdmi_i_120_n_0,
      S(1) => vga2hdmi_i_121_n_0,
      S(0) => vga2hdmi_i_122_n_0
    );
vga2hdmi_i_57: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_25_n_6,
      I1 => vga2hdmi_i_26_n_4,
      I2 => vga2hdmi_i_123_n_5,
      O => vga2hdmi_i_57_n_0
    );
vga2hdmi_i_58: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C369693C"
    )
        port map (
      I0 => vga2hdmi_i_25_n_1,
      I1 => vga2hdmi_i_25_n_6,
      I2 => vga2hdmi_i_124_n_3,
      I3 => vga2hdmi_i_25_n_7,
      I4 => vga2hdmi_i_123_n_4,
      O => vga2hdmi_i_58_n_0
    );
vga2hdmi_i_59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_123_n_5,
      I1 => vga2hdmi_i_26_n_4,
      I2 => vga2hdmi_i_25_n_6,
      I3 => vga2hdmi_i_25_n_1,
      I4 => vga2hdmi_i_123_n_4,
      I5 => vga2hdmi_i_25_n_7,
      O => vga2hdmi_i_59_n_0
    );
vga2hdmi_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF75FFFF008A0000"
    )
        port map (
      I0 => vga2hdmi_i_28_n_4,
      I1 => r80(12),
      I2 => vga2hdmi_i_30_n_6,
      I3 => vga2hdmi_i_31_n_3,
      I4 => vga2hdmi_i_28_n_5,
      I5 => vga2hdmi_i_26_n_7,
      O => r8(2)
    );
vga2hdmi_i_60: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_125_n_0,
      CO(3) => vga2hdmi_i_60_n_0,
      CO(2) => vga2hdmi_i_60_n_1,
      CO(1) => vga2hdmi_i_60_n_2,
      CO(0) => vga2hdmi_i_60_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_126_n_0,
      DI(2) => vga2hdmi_i_127_n_0,
      DI(1) => vga2hdmi_i_128_n_0,
      DI(0) => vga2hdmi_i_129_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_60_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_130_n_0,
      S(2) => vga2hdmi_i_131_n_0,
      S(1) => vga2hdmi_i_132_n_0,
      S(0) => vga2hdmi_i_133_n_0
    );
vga2hdmi_i_61: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_30_n_7,
      I1 => r80(11),
      O => vga2hdmi_i_61_n_0
    );
vga2hdmi_i_62: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => r80(11),
      I1 => vga2hdmi_i_30_n_7,
      I2 => r80(12),
      I3 => vga2hdmi_i_30_n_6,
      O => vga2hdmi_i_62_n_0
    );
vga2hdmi_i_63: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_63_n_0,
      CO(2) => vga2hdmi_i_63_n_1,
      CO(1) => vga2hdmi_i_63_n_2,
      CO(0) => vga2hdmi_i_63_n_3,
      CYINIT => vga2hdmi_i_134_n_3,
      DI(3) => vga2hdmi_i_135_n_0,
      DI(2) => vga2hdmi_i_136_n_0,
      DI(1) => vga2hdmi_i_137_n_0,
      DI(0) => '0',
      O(3 downto 1) => g80(10 downto 8),
      O(0) => NLW_vga2hdmi_i_63_O_UNCONNECTED(0),
      S(3) => vga2hdmi_i_138_n_0,
      S(2) => vga2hdmi_i_139_n_0,
      S(1) => vga2hdmi_i_140_n_0,
      S(0) => '1'
    );
vga2hdmi_i_64: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => g80(13),
      I1 => vga2hdmi_i_134_n_3,
      O => vga2hdmi_i_64_n_0
    );
vga2hdmi_i_65: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => g(3),
      O => vga2hdmi_i_65_n_0
    );
vga2hdmi_i_66: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => g(4),
      I1 => g(5),
      O => vga2hdmi_i_66_n_0
    );
vga2hdmi_i_67: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => g(3),
      I1 => g(4),
      O => vga2hdmi_i_67_n_0
    );
vga2hdmi_i_68: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9995"
    )
        port map (
      I0 => g(3),
      I1 => g(2),
      I2 => g(0),
      I3 => g(1),
      O => vga2hdmi_i_68_n_0
    );
vga2hdmi_i_69: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_141_n_0,
      CO(3) => vga2hdmi_i_69_n_0,
      CO(2) => vga2hdmi_i_69_n_1,
      CO(1) => vga2hdmi_i_69_n_2,
      CO(0) => vga2hdmi_i_69_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_142_n_0,
      DI(2) => vga2hdmi_i_143_n_0,
      DI(1) => vga2hdmi_i_144_n_0,
      DI(0) => vga2hdmi_i_145_n_0,
      O(3) => vga2hdmi_i_69_n_4,
      O(2) => vga2hdmi_i_69_n_5,
      O(1) => vga2hdmi_i_69_n_6,
      O(0) => vga2hdmi_i_69_n_7,
      S(3) => vga2hdmi_i_146_n_0,
      S(2) => vga2hdmi_i_147_n_0,
      S(1) => vga2hdmi_i_148_n_0,
      S(0) => vga2hdmi_i_149_n_0
    );
vga2hdmi_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFD2202"
    )
        port map (
      I0 => vga2hdmi_i_28_n_5,
      I1 => vga2hdmi_i_31_n_3,
      I2 => vga2hdmi_i_30_n_6,
      I3 => r80(12),
      I4 => vga2hdmi_i_28_n_4,
      O => r8(1)
    );
vga2hdmi_i_70: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_32_n_0,
      I1 => vga2hdmi_i_32_n_7,
      I2 => vga2hdmi_i_150_n_4,
      O => vga2hdmi_i_70_n_0
    );
vga2hdmi_i_71: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_32_n_5,
      I1 => vga2hdmi_i_33_n_4,
      I2 => vga2hdmi_i_150_n_5,
      O => vga2hdmi_i_71_n_0
    );
vga2hdmi_i_72: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => vga2hdmi_i_32_n_6,
      I1 => vga2hdmi_i_151_n_3,
      I2 => vga2hdmi_i_32_n_5,
      O => vga2hdmi_i_72_n_0
    );
vga2hdmi_i_73: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8E71718E"
    )
        port map (
      I0 => vga2hdmi_i_150_n_4,
      I1 => vga2hdmi_i_32_n_7,
      I2 => vga2hdmi_i_32_n_0,
      I3 => vga2hdmi_i_32_n_6,
      I4 => vga2hdmi_i_151_n_3,
      O => vga2hdmi_i_73_n_0
    );
vga2hdmi_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_150_n_5,
      I1 => vga2hdmi_i_33_n_4,
      I2 => vga2hdmi_i_32_n_5,
      I3 => vga2hdmi_i_32_n_0,
      I4 => vga2hdmi_i_150_n_4,
      I5 => vga2hdmi_i_32_n_7,
      O => vga2hdmi_i_74_n_0
    );
vga2hdmi_i_75: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_152_n_0,
      CO(3) => vga2hdmi_i_75_n_0,
      CO(2) => vga2hdmi_i_75_n_1,
      CO(1) => vga2hdmi_i_75_n_2,
      CO(0) => vga2hdmi_i_75_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_153_n_0,
      DI(2) => vga2hdmi_i_154_n_0,
      DI(1) => vga2hdmi_i_155_n_0,
      DI(0) => vga2hdmi_i_156_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_75_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_157_n_0,
      S(2) => vga2hdmi_i_158_n_0,
      S(1) => vga2hdmi_i_159_n_0,
      S(0) => vga2hdmi_i_160_n_0
    );
vga2hdmi_i_76: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_36_n_6,
      I1 => g80(12),
      O => vga2hdmi_i_76_n_0
    );
vga2hdmi_i_77: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => vga2hdmi_i_36_n_7,
      I1 => g80(11),
      O => vga2hdmi_i_77_n_0
    );
vga2hdmi_i_78: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => g80(12),
      I1 => vga2hdmi_i_36_n_6,
      I2 => g80(13),
      I3 => vga2hdmi_i_36_n_5,
      O => vga2hdmi_i_78_n_0
    );
vga2hdmi_i_79: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => g80(11),
      I1 => vga2hdmi_i_36_n_7,
      I2 => g80(12),
      I3 => vga2hdmi_i_36_n_6,
      O => vga2hdmi_i_79_n_0
    );
vga2hdmi_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F40B"
    )
        port map (
      I0 => r80(12),
      I1 => vga2hdmi_i_30_n_6,
      I2 => vga2hdmi_i_31_n_3,
      I3 => vga2hdmi_i_28_n_5,
      O => r8(0)
    );
vga2hdmi_i_80: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_80_n_0,
      CO(2) => vga2hdmi_i_80_n_1,
      CO(1) => vga2hdmi_i_80_n_2,
      CO(0) => vga2hdmi_i_80_n_3,
      CYINIT => '0',
      DI(3 downto 1) => g80(8 downto 6),
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_80_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_163_n_0,
      S(2) => vga2hdmi_i_164_n_0,
      S(1) => vga2hdmi_i_165_n_0,
      S(0) => g80(5)
    );
vga2hdmi_i_81: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g80(12),
      I1 => g80(6),
      O => vga2hdmi_i_81_n_0
    );
vga2hdmi_i_82: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g80(11),
      I1 => g80(5),
      O => vga2hdmi_i_82_n_0
    );
vga2hdmi_i_83: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g80(10),
      I1 => g80(4),
      O => vga2hdmi_i_83_n_0
    );
vga2hdmi_i_84: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => g80(9),
      I1 => g80(3),
      O => vga2hdmi_i_84_n_0
    );
vga2hdmi_i_85: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_85_n_0,
      CO(2) => vga2hdmi_i_85_n_1,
      CO(1) => vga2hdmi_i_85_n_2,
      CO(0) => vga2hdmi_i_85_n_3,
      CYINIT => vga2hdmi_i_166_n_0,
      DI(3) => vga2hdmi_i_167_n_0,
      DI(2) => vga2hdmi_i_168_n_0,
      DI(1) => vga2hdmi_i_169_n_0,
      DI(0) => '0',
      O(3 downto 1) => b80(10 downto 8),
      O(0) => NLW_vga2hdmi_i_85_O_UNCONNECTED(0),
      S(3) => vga2hdmi_i_170_n_0,
      S(2) => vga2hdmi_i_171_n_0,
      S(1) => vga2hdmi_i_172_n_0,
      S(0) => '1'
    );
vga2hdmi_i_86: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b80(12),
      I1 => vga2hdmi_i_166_n_0,
      O => vga2hdmi_i_86_n_0
    );
vga2hdmi_i_87: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => vga2hdmi_i_87_n_0,
      CO(2) => vga2hdmi_i_87_n_1,
      CO(1) => vga2hdmi_i_87_n_2,
      CO(0) => vga2hdmi_i_87_n_3,
      CYINIT => '0',
      DI(3) => b80(7),
      DI(2) => vga2hdmi_i_174_n_0,
      DI(1) => b80(5),
      DI(0) => '0',
      O(3 downto 0) => NLW_vga2hdmi_i_87_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_175_n_0,
      S(2) => vga2hdmi_i_176_n_0,
      S(1) => vga2hdmi_i_177_n_0,
      S(0) => b80(4)
    );
vga2hdmi_i_88: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b80(11),
      I1 => vga2hdmi_i_166_n_0,
      O => vga2hdmi_i_88_n_0
    );
vga2hdmi_i_89: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b80(10),
      I1 => b80(5),
      O => vga2hdmi_i_89_n_0
    );
vga2hdmi_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => vga2hdmi_i_32_n_6,
      I1 => vga2hdmi_i_33_n_4,
      I2 => vga2hdmi_i_34_n_0,
      I3 => vga2hdmi_i_33_n_5,
      I4 => vga2hdmi_i_32_n_7,
      I5 => vga2hdmi_i_32_n_5,
      O => g8(7)
    );
vga2hdmi_i_90: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b80(9),
      I1 => b80(4),
      O => vga2hdmi_i_90_n_0
    );
vga2hdmi_i_91: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => b80(8),
      I1 => b80(3),
      O => vga2hdmi_i_91_n_0
    );
vga2hdmi_i_92: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => b(3),
      O => vga2hdmi_i_92_n_0
    );
vga2hdmi_i_93: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => b(3),
      I1 => b(4),
      O => vga2hdmi_i_93_n_0
    );
vga2hdmi_i_94: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9995"
    )
        port map (
      I0 => b(3),
      I1 => b(2),
      I2 => b(0),
      I3 => b(1),
      O => vga2hdmi_i_94_n_0
    );
vga2hdmi_i_95: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_178_n_0,
      CO(3) => vga2hdmi_i_95_n_0,
      CO(2) => vga2hdmi_i_95_n_1,
      CO(1) => vga2hdmi_i_95_n_2,
      CO(0) => vga2hdmi_i_95_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_179_n_0,
      DI(2) => vga2hdmi_i_180_n_0,
      DI(1) => vga2hdmi_i_181_n_0,
      DI(0) => vga2hdmi_i_182_n_0,
      O(3) => vga2hdmi_i_95_n_4,
      O(2) => vga2hdmi_i_95_n_5,
      O(1) => vga2hdmi_i_95_n_6,
      O(0) => vga2hdmi_i_95_n_7,
      S(3) => vga2hdmi_i_183_n_0,
      S(2) => vga2hdmi_i_184_n_0,
      S(1) => vga2hdmi_i_185_n_0,
      S(0) => vga2hdmi_i_186_n_0
    );
vga2hdmi_i_96: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => vga2hdmi_i_39_n_6,
      I1 => vga2hdmi_i_40_n_4,
      I2 => vga2hdmi_i_187_n_5,
      O => vga2hdmi_i_96_n_0
    );
vga2hdmi_i_97: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C369693C"
    )
        port map (
      I0 => vga2hdmi_i_39_n_1,
      I1 => vga2hdmi_i_39_n_6,
      I2 => vga2hdmi_i_188_n_3,
      I3 => vga2hdmi_i_39_n_7,
      I4 => vga2hdmi_i_187_n_4,
      O => vga2hdmi_i_97_n_0
    );
vga2hdmi_i_98: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E71718E718E8E71"
    )
        port map (
      I0 => vga2hdmi_i_187_n_5,
      I1 => vga2hdmi_i_40_n_4,
      I2 => vga2hdmi_i_39_n_6,
      I3 => vga2hdmi_i_39_n_1,
      I4 => vga2hdmi_i_187_n_4,
      I5 => vga2hdmi_i_39_n_7,
      O => vga2hdmi_i_98_n_0
    );
vga2hdmi_i_99: unisim.vcomponents.CARRY4
     port map (
      CI => vga2hdmi_i_189_n_0,
      CO(3) => vga2hdmi_i_99_n_0,
      CO(2) => vga2hdmi_i_99_n_1,
      CO(1) => vga2hdmi_i_99_n_2,
      CO(0) => vga2hdmi_i_99_n_3,
      CYINIT => '0',
      DI(3) => vga2hdmi_i_190_n_0,
      DI(2) => vga2hdmi_i_191_n_0,
      DI(1) => vga2hdmi_i_192_n_0,
      DI(0) => vga2hdmi_i_193_n_0,
      O(3 downto 0) => NLW_vga2hdmi_i_99_O_UNCONNECTED(3 downto 0),
      S(3) => vga2hdmi_i_194_n_0,
      S(2) => vga2hdmi_i_195_n_0,
      S(1) => vga2hdmi_i_196_n_0,
      S(0) => vga2hdmi_i_197_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_hdmi_out_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_hdmi_out_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_hdmi_out_0_0 : entity is "processor_design_hdmi_out_0_0,hdmi_out,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_hdmi_out_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_hdmi_out_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_hdmi_out_0_0 : entity is "hdmi_out,Vivado 2018.2";
end processor_design_hdmi_out_0_0;

architecture STRUCTURE of processor_design_hdmi_out_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of hdmi_tx_clk_n : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N";
  attribute x_interface_info of hdmi_tx_clk_p : signal is "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P";
begin
U0: entity work.processor_design_hdmi_out_0_0_hdmi_out
     port map (
      b(4 downto 0) => b(4 downto 0),
      clk => clk,
      en => en,
      g(5 downto 0) => g(5 downto 0),
      hdmi_tx_clk_n => hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_tx_clk_p,
      hdmi_tx_n(2 downto 0) => hdmi_tx_n(2 downto 0),
      hdmi_tx_p(2 downto 0) => hdmi_tx_p(2 downto 0),
      hs => hs,
      r(4 downto 0) => r(4 downto 0),
      vid => vid,
      vs => vs
    );
end STRUCTURE;
