// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:31:30 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_hdmi_out_0_0/processor_design_hdmi_out_0_0_sim_netlist.v
// Design      : processor_design_hdmi_out_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_hdmi_out_0_0,hdmi_out,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "hdmi_out,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_hdmi_out_0_0
   (clk,
    en,
    r,
    g,
    b,
    hs,
    vs,
    vid,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_n,
    hdmi_tx_p);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  input [4:0]r;
  input [5:0]g;
  input [4:0]b;
  input hs;
  input vs;
  input vid;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_N" *) output hdmi_tx_clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 hdmi_tx CLK_P" *) output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_n;
  output [2:0]hdmi_tx_p;

  wire [4:0]b;
  wire clk;
  wire en;
  wire [5:0]g;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_tx_clk_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire hdmi_tx_clk_p;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_tx_n;
  (* IOSTANDARD = "TMDS_33" *) (* SLEW = "SLOW" *) wire [2:0]hdmi_tx_p;
  wire hs;
  wire [4:0]r;
  wire vid;
  wire vs;

  processor_design_hdmi_out_0_0_hdmi_out U0
       (.b(b),
        .clk(clk),
        .en(en),
        .g(g),
        .hdmi_tx_clk_n(hdmi_tx_clk_n),
        .hdmi_tx_clk_p(hdmi_tx_clk_p),
        .hdmi_tx_n(hdmi_tx_n),
        .hdmi_tx_p(hdmi_tx_p),
        .hs(hs),
        .r(r),
        .vid(vid),
        .vs(vs));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module processor_design_hdmi_out_0_0_OutputSERDES
   (TMDS_Clk_p,
    TMDS_Clk_n,
    SerialClk,
    PixelClk,
    aRst);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  input SerialClk;
  input PixelClk;
  input aRst;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire aRst;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Clk_p),
        .OB(TMDS_Clk_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b0),
        .D4(1'b0),
        .D5(1'b0),
        .D6(1'b1),
        .D7(1'b1),
        .D8(1'b1),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(aRst),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(1'b1),
        .D4(1'b1),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module processor_design_hdmi_out_0_0_OutputSERDES_0
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    aRst);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input aRst;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire aRst;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(aRst),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(aRst),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module processor_design_hdmi_out_0_0_OutputSERDES_2
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input [0:0]out;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(out),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "OutputSERDES" *) 
module processor_design_hdmi_out_0_0_OutputSERDES_4
   (TMDS_Data_p,
    TMDS_Data_n,
    SerialClk,
    PixelClk,
    pDataOut,
    out);
  output [0:0]TMDS_Data_p;
  output [0:0]TMDS_Data_n;
  input SerialClk;
  input PixelClk;
  input [9:0]pDataOut;
  input [0:0]out;

  wire I;
  wire PixelClk;
  wire SHIFTIN1;
  wire SHIFTIN2;
  wire SerialClk;
  wire [0:0]TMDS_Data_n;
  wire [0:0]TMDS_Data_p;
  wire [0:0]out;
  wire [9:0]pDataOut;
  wire NLW_SerializerMaster_OFB_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED;
  wire NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED;
  wire NLW_SerializerMaster_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerMaster_TFB_UNCONNECTED;
  wire NLW_SerializerMaster_TQ_UNCONNECTED;
  wire NLW_SerializerSlave_OFB_UNCONNECTED;
  wire NLW_SerializerSlave_OQ_UNCONNECTED;
  wire NLW_SerializerSlave_TBYTEOUT_UNCONNECTED;
  wire NLW_SerializerSlave_TFB_UNCONNECTED;
  wire NLW_SerializerSlave_TQ_UNCONNECTED;

  (* CAPACITANCE = "DONT_CARE" *) 
  (* box_type = "PRIMITIVE" *) 
  OBUFDS OutputBuffer
       (.I(I),
        .O(TMDS_Data_p),
        .OB(TMDS_Data_n));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("MASTER"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerMaster
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(pDataOut[0]),
        .D2(pDataOut[1]),
        .D3(pDataOut[2]),
        .D4(pDataOut[3]),
        .D5(pDataOut[4]),
        .D6(pDataOut[5]),
        .D7(pDataOut[6]),
        .D8(pDataOut[7]),
        .OCE(1'b1),
        .OFB(NLW_SerializerMaster_OFB_UNCONNECTED),
        .OQ(I),
        .RST(out),
        .SHIFTIN1(SHIFTIN1),
        .SHIFTIN2(SHIFTIN2),
        .SHIFTOUT1(NLW_SerializerMaster_SHIFTOUT1_UNCONNECTED),
        .SHIFTOUT2(NLW_SerializerMaster_SHIFTOUT2_UNCONNECTED),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerMaster_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerMaster_TFB_UNCONNECTED),
        .TQ(NLW_SerializerMaster_TQ_UNCONNECTED));
  (* box_type = "PRIMITIVE" *) 
  OSERDESE2 #(
    .DATA_RATE_OQ("DDR"),
    .DATA_RATE_TQ("SDR"),
    .DATA_WIDTH(10),
    .INIT_OQ(1'b0),
    .INIT_TQ(1'b0),
    .IS_CLKDIV_INVERTED(1'b0),
    .IS_CLK_INVERTED(1'b0),
    .IS_D1_INVERTED(1'b0),
    .IS_D2_INVERTED(1'b0),
    .IS_D3_INVERTED(1'b0),
    .IS_D4_INVERTED(1'b0),
    .IS_D5_INVERTED(1'b0),
    .IS_D6_INVERTED(1'b0),
    .IS_D7_INVERTED(1'b0),
    .IS_D8_INVERTED(1'b0),
    .IS_T1_INVERTED(1'b0),
    .IS_T2_INVERTED(1'b0),
    .IS_T3_INVERTED(1'b0),
    .IS_T4_INVERTED(1'b0),
    .SERDES_MODE("SLAVE"),
    .SRVAL_OQ(1'b0),
    .SRVAL_TQ(1'b0),
    .TBYTE_CTL("FALSE"),
    .TBYTE_SRC("FALSE"),
    .TRISTATE_WIDTH(1)) 
    SerializerSlave
       (.CLK(SerialClk),
        .CLKDIV(PixelClk),
        .D1(1'b0),
        .D2(1'b0),
        .D3(pDataOut[8]),
        .D4(pDataOut[9]),
        .D5(1'b0),
        .D6(1'b0),
        .D7(1'b0),
        .D8(1'b0),
        .OCE(1'b1),
        .OFB(NLW_SerializerSlave_OFB_UNCONNECTED),
        .OQ(NLW_SerializerSlave_OQ_UNCONNECTED),
        .RST(out),
        .SHIFTIN1(1'b0),
        .SHIFTIN2(1'b0),
        .SHIFTOUT1(SHIFTIN1),
        .SHIFTOUT2(SHIFTIN2),
        .T1(1'b0),
        .T2(1'b0),
        .T3(1'b0),
        .T4(1'b0),
        .TBYTEIN(1'b0),
        .TBYTEOUT(NLW_SerializerSlave_TBYTEOUT_UNCONNECTED),
        .TCE(1'b0),
        .TFB(NLW_SerializerSlave_TFB_UNCONNECTED),
        .TQ(NLW_SerializerSlave_TQ_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "ResetBridge" *) 
module processor_design_hdmi_out_0_0_ResetBridge
   (out,
    aRst,
    PixelClk);
  output [0:0]out;
  input aRst;
  input PixelClk;

  wire PixelClk;
  (* RTL_KEEP = "true" *) wire aRst_int;
  wire [0:0]out;

  assign aRst_int = aRst;
  processor_design_hdmi_out_0_0_SyncAsync SyncAsyncx
       (.AS(aRst_int),
        .PixelClk(PixelClk),
        .out(out));
endmodule

(* ORIG_REF_NAME = "SyncAsync" *) 
module processor_design_hdmi_out_0_0_SyncAsync
   (out,
    PixelClk,
    AS);
  output [0:0]out;
  input PixelClk;
  input [0:0]AS;

  wire [0:0]AS;
  wire PixelClk;
  (* async_reg = "true" *) wire [1:0]oSyncStages;

  assign out[0] = oSyncStages[1];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(AS),
        .Q(oSyncStages[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b1)) 
    \oSyncStages_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(oSyncStages[0]),
        .PRE(AS),
        .Q(oSyncStages[1]));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module processor_design_hdmi_out_0_0_TMDS_Encoder
   (SR,
    Q,
    vid_pHSync,
    PixelClk,
    vid_pVSync,
    vid_pVDE,
    vid_pData);
  output [0:0]SR;
  output [9:0]Q;
  input vid_pHSync;
  input PixelClk;
  input vid_pVSync;
  input vid_pVDE;
  input [7:0]vid_pData;

  wire \DataEncoders[2].DataEncoder/pVde_2 ;
  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire [4:1]cnt_t_3;
  wire \cnt_t_3[2]_i_2__0_n_0 ;
  wire \cnt_t_3[2]_i_3_n_0 ;
  wire \cnt_t_3[2]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_2__1_n_0 ;
  wire \cnt_t_3[3]_i_3_n_0 ;
  wire \cnt_t_3[3]_i_4_n_0 ;
  wire \cnt_t_3[3]_i_5_n_0 ;
  wire \cnt_t_3[3]_i_6_n_0 ;
  wire \cnt_t_3[3]_i_7_n_0 ;
  wire \cnt_t_3[4]_i_10_n_0 ;
  wire \cnt_t_3[4]_i_3__1_n_0 ;
  wire \cnt_t_3[4]_i_4_n_0 ;
  wire \cnt_t_3[4]_i_5_n_0 ;
  wire \cnt_t_3[4]_i_6_n_0 ;
  wire \cnt_t_3[4]_i_7_n_0 ;
  wire \cnt_t_3[4]_i_8_n_0 ;
  wire \cnt_t_3[4]_i_9_n_0 ;
  wire [3:1]minusOp;
  wire [3:1]n0q_m_2;
  wire \n0q_m_2[2]_i_1_n_0 ;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire [3:1]n1q_m_1;
  wire \n1q_m_2[0]_i_1_n_0 ;
  wire \n1q_m_2[3]_i_2_n_0 ;
  wire \n1q_m_2[3]_i_3_n_0 ;
  wire \n1q_m_2[3]_i_4_n_0 ;
  wire \n1q_m_2[3]_i_5_n_0 ;
  wire \n1q_m_2[3]_i_6_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire pC0_1;
  wire pC0_2;
  wire pC1_1;
  wire pC1_2;
  wire \pDataOutRaw[0]_i_1__1_n_0 ;
  wire \pDataOutRaw[1]_i_1__1_n_0 ;
  wire \pDataOutRaw[3]_i_1__1_n_0 ;
  wire \pDataOutRaw[5]_i_1__1_n_0 ;
  wire \pDataOutRaw[7]_i_1__1_n_0 ;
  wire \pDataOutRaw[9]_i_1__1_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire pVde_1;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in6_in_1;
  wire p_0_in7_in;
  wire p_0_in8_in;
  wire p_0_in8_in_0;
  wire p_0_in9_in;
  wire p_1_in12_in;
  wire \q_m_2[1]_i_1_n_0 ;
  wire \q_m_2[6]_i_1_n_0 ;
  wire \q_m_2[7]_i_2_n_0 ;
  wire \q_m_2[8]_i_1_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [9:2]q_out_20_in;
  wire [3:0]sum_bits;
  wire [7:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  LUT6 #(
    .INIT(64'h9F60609F609F9F60)) 
    \cnt_t_3[1]_i_1 
       (.I0(p_0_in),
        .I1(\cnt_t_3[3]_i_4_n_0 ),
        .I2(\cnt_t_3[2]_i_4_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(n0q_m_2[1]),
        .I5(cnt_t_3[1]),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h995AAA5A5A665AAA)) 
    \cnt_t_3[2]_i_1 
       (.I0(\cnt_t_3[2]_i_2__0_n_0 ),
        .I1(\cnt_t_3[3]_i_4_n_0 ),
        .I2(\cnt_t_3[2]_i_3_n_0 ),
        .I3(cnt_t_3[1]),
        .I4(\cnt_t_3[2]_i_4_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h96699696)) 
    \cnt_t_3[2]_i_2__0 
       (.I0(cnt_t_3[2]),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(n0q_m_2[2]),
        .I3(n0q_m_2[1]),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(n0q_m_2[1]),
        .O(\cnt_t_3[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFDFFFDFFFD0000)) 
    \cnt_t_3[2]_i_4 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[0] ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(\cnt_t_3[4]_i_6_n_0 ),
        .I5(cnt_t_3[4]),
        .O(\cnt_t_3[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1 
       (.I0(\cnt_t_3[3]_i_2__1_n_0 ),
        .I1(\cnt_t_3[3]_i_3_n_0 ),
        .I2(\cnt_t_3[3]_i_4_n_0 ),
        .I3(\cnt_t_3[3]_i_5_n_0 ),
        .I4(\cnt_t_3[4]_i_3__1_n_0 ),
        .I5(\cnt_t_3[3]_i_6_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cnt_t_3[3]_i_2__1 
       (.I0(cnt_t_3[3]),
        .I1(\cnt_t_3[4]_i_8_n_0 ),
        .O(\cnt_t_3[3]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h41D70000FFFF41D7)) 
    \cnt_t_3[3]_i_3 
       (.I0(cnt_t_3[1]),
        .I1(n0q_m_2[1]),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3[3]_i_7_n_0 ),
        .I5(cnt_t_3[2]),
        .O(\cnt_t_3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F1F00FFFFFFF0F)) 
    \cnt_t_3[3]_i_4 
       (.I0(\n1q_m_2_reg_n_0_[0] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(cnt_t_3[4]),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\cnt_t_3[4]_i_6_n_0 ),
        .O(\cnt_t_3[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8E8EEE88888E8)) 
    \cnt_t_3[3]_i_5 
       (.I0(cnt_t_3[2]),
        .I1(\cnt_t_3[3]_i_7_n_0 ),
        .I2(cnt_t_3[1]),
        .I3(n0q_m_2[1]),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\cnt_t_3[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9BBF04DF04DF9BBF)) 
    \cnt_t_3[3]_i_6 
       (.I0(n0q_m_2[1]),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(cnt_t_3[1]),
        .I3(cnt_t_3[2]),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(n0q_m_2[2]),
        .O(\cnt_t_3[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(n0q_m_2[1]),
        .I2(n0q_m_2[2]),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_t_3[4]_i_1 
       (.I0(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h20BA)) 
    \cnt_t_3[4]_i_10 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(n0q_m_2[1]),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(n0q_m_2[2]),
        .O(\cnt_t_3[4]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h01550101)) 
    \cnt_t_3[4]_i_3__1 
       (.I0(p_0_in),
        .I1(cnt_t_3[4]),
        .I2(\cnt_t_3[4]_i_6_n_0 ),
        .I3(\cnt_t_3[4]_i_7_n_0 ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h77CF03448830FCBB)) 
    \cnt_t_3[4]_i_4 
       (.I0(\cnt_t_3[3]_i_5_n_0 ),
        .I1(\cnt_t_3[3]_i_4_n_0 ),
        .I2(\cnt_t_3[3]_i_3_n_0 ),
        .I3(cnt_t_3[3]),
        .I4(\cnt_t_3[4]_i_8_n_0 ),
        .I5(\cnt_t_3[4]_i_9_n_0 ),
        .O(\cnt_t_3[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hA69A65A69A59A69A)) 
    \cnt_t_3[4]_i_5 
       (.I0(cnt_t_3[4]),
        .I1(\cnt_t_3[4]_i_10_n_0 ),
        .I2(n0q_m_2[3]),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(cnt_t_3[3]),
        .I5(\cnt_t_3[3]_i_6_n_0 ),
        .O(\cnt_t_3[4]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_6 
       (.I0(cnt_t_3[3]),
        .I1(cnt_t_3[1]),
        .I2(cnt_t_3[2]),
        .O(\cnt_t_3[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_7 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5D04A2FBA2FB5D04)) 
    \cnt_t_3[4]_i_8 
       (.I0(n0q_m_2[2]),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(n0q_m_2[1]),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .I4(n0q_m_2[3]),
        .I5(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h95A9)) 
    \cnt_t_3[4]_i_9 
       (.I0(cnt_t_3[4]),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_10_n_0 ),
        .I3(n0q_m_2[3]),
        .O(\cnt_t_3[4]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(cnt_t_3[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(cnt_t_3[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(cnt_t_3[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(cnt_t_3[4]),
        .R(SR));
  MUXF7 \cnt_t_3_reg[4]_i_2 
       (.I0(\cnt_t_3[4]_i_4_n_0 ),
        .I1(\cnt_t_3[4]_i_5_n_0 ),
        .O(cnt_t_2[4]),
        .S(\cnt_t_3[4]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \n0q_m_2[1]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .I2(\n1q_m_2[3]_i_4_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_6_n_0 ),
        .I5(\n1q_m_2[3]_i_5_n_0 ),
        .O(minusOp[1]));
  LUT6 #(
    .INIT(64'hEF8EF7FF0800EF8E)) 
    \n0q_m_2[2]_i_1 
       (.I0(\n1q_m_2[3]_i_5_n_0 ),
        .I1(\n1q_m_2[3]_i_6_n_0 ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1q_m_2[3]_i_4_n_0 ),
        .I4(\n1q_m_2[3]_i_3_n_0 ),
        .I5(\n1q_m_2[3]_i_2_n_0 ),
        .O(\n0q_m_2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \n0q_m_2[3]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_6_n_0 ),
        .I2(\n1q_m_2[3]_i_5_n_0 ),
        .I3(\n1q_m_2[3]_i_4_n_0 ),
        .I4(\n1q_m_2[3]_i_3_n_0 ),
        .I5(\n1q_m_2[3]_i_2_n_0 ),
        .O(minusOp[3]));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(minusOp[1]),
        .Q(n0q_m_2[1]),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1_n_0 ),
        .Q(n0q_m_2[2]),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(minusOp[3]),
        .Q(n0q_m_2[3]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(sum_bits[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(sum_bits[1]));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(sum_bits[2]));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(sum_bits[3]));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[0]),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[1]),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[2]),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(sum_bits[3]),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[0]_i_1 
       (.I0(\n1q_m_2[3]_i_5_n_0 ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .I3(\n1q_m_2[3]_i_4_n_0 ),
        .O(\n1q_m_2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m_2[1]_i_1 
       (.I0(\n1q_m_2[3]_i_4_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .I2(\n1q_m_2[3]_i_2_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_5_n_0 ),
        .I5(\n1q_m_2[3]_i_6_n_0 ),
        .O(n1q_m_1[1]));
  LUT6 #(
    .INIT(64'h2BBFFFFD00022BBF)) 
    \n1q_m_2[2]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5_n_0 ),
        .I2(\n1q_m_2[3]_i_6_n_0 ),
        .I3(\n1q_m_2[3]_i_4_n_0 ),
        .I4(\n1q_m_2[3]_i_2_n_0 ),
        .I5(\n1q_m_2[3]_i_3_n_0 ),
        .O(n1q_m_1[2]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \n1q_m_2[3]_i_1 
       (.I0(\n1q_m_2[3]_i_2_n_0 ),
        .I1(\n1q_m_2[3]_i_3_n_0 ),
        .I2(\n1q_m_2[3]_i_4_n_0 ),
        .I3(\n1q_m_2[3]_i_5_n_0 ),
        .I4(\n1q_m_2[3]_i_6_n_0 ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(n1q_m_1[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_2 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(\q_m_2[8]_i_1_n_0 ),
        .O(\n1q_m_2[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h3693)) 
    \n1q_m_2[3]_i_3 
       (.I0(p_0_in6_in_1),
        .I1(\q_m_2[7]_i_2_n_0 ),
        .I2(\q_m_2[8]_i_1_n_0 ),
        .I3(p_0_in8_in_0),
        .O(\n1q_m_2[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_4 
       (.I0(\q_m_2[7]_i_2_n_0 ),
        .I1(\q_m_2[8]_i_1_n_0 ),
        .I2(p_0_in8_in_0),
        .O(\n1q_m_2[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \n1q_m_2[3]_i_5 
       (.I0(p_0_in6_in_1),
        .I1(\q_m_2[7]_i_2_n_0 ),
        .I2(\q_m_2[8]_i_1_n_0 ),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in_0),
        .O(\n1q_m_2[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_6 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .O(\n1q_m_2[3]_i_6_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[1]),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[2]),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(n1q_m_1[3]),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE pC0_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pHSync),
        .Q(pC0_1),
        .R(1'b0));
  FDRE pC0_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC0_1),
        .Q(pC0_2),
        .R(1'b0));
  FDRE pC1_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVSync),
        .Q(pC1_1),
        .R(1'b0));
  FDRE pC1_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pC1_1),
        .Q(pC1_2),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[0]_i_1__1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[0] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[1]_i_1__1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[1] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF000FF44444444)) 
    \pDataOutRaw[2]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\cnt_t_3[4]_i_3__1_n_0 ),
        .I3(\q_m_2_reg_n_0_[2] ),
        .I4(\cnt_t_3[3]_i_4_n_0 ),
        .I5(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(q_out_20_in[2]));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[3]_i_1__1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[3] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[3]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF000FF44444444)) 
    \pDataOutRaw[4]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\cnt_t_3[4]_i_3__1_n_0 ),
        .I3(\q_m_2_reg_n_0_[4] ),
        .I4(\cnt_t_3[3]_i_4_n_0 ),
        .I5(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(q_out_20_in[4]));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[5]_i_1__1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[5] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0FF000FF44444444)) 
    \pDataOutRaw[6]_i_1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\cnt_t_3[4]_i_3__1_n_0 ),
        .I3(\q_m_2_reg_n_0_[6] ),
        .I4(\cnt_t_3[3]_i_4_n_0 ),
        .I5(\DataEncoders[2].DataEncoder/pVde_2 ),
        .O(q_out_20_in[6]));
  LUT6 #(
    .INIT(64'h0BFBFB0B0B0BFBFB)) 
    \pDataOutRaw[7]_i_1__1 
       (.I0(pC0_2),
        .I1(pC1_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(\cnt_t_3[4]_i_3__1_n_0 ),
        .I4(\q_m_2_reg_n_0_[7] ),
        .I5(\cnt_t_3[3]_i_4_n_0 ),
        .O(\pDataOutRaw[7]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hA3A0)) 
    \pDataOutRaw[8]_i_1 
       (.I0(p_0_in),
        .I1(pC0_2),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(pC1_2),
        .O(q_out_20_in[8]));
  LUT3 #(
    .INIT(8'h01)) 
    \pDataOutRaw[9]_i_1__1 
       (.I0(pC1_2),
        .I1(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I2(pC0_2),
        .O(\pDataOutRaw[9]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'hBFB0B0BF)) 
    \pDataOutRaw[9]_i_2 
       (.I0(\cnt_t_3[4]_i_3__1_n_0 ),
        .I1(\cnt_t_3[3]_i_4_n_0 ),
        .I2(\DataEncoders[2].DataEncoder/pVde_2 ),
        .I3(pC0_2),
        .I4(pC1_2),
        .O(q_out_20_in[9]));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[2]),
        .Q(Q[2]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[4]),
        .Q(Q[4]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[6]),
        .Q(Q[6]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[8]),
        .Q(Q[8]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(q_out_20_in[9]),
        .Q(Q[9]),
        .S(\pDataOutRaw[9]_i_1__1_n_0 ));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in_1),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in_0),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in),
        .R(1'b0));
  FDRE pVde_1_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pVDE),
        .Q(pVde_1),
        .R(1'b0));
  FDRE pVde_2_reg
       (.C(PixelClk),
        .CE(1'b1),
        .D(pVde_1),
        .Q(\DataEncoders[2].DataEncoder/pVde_2 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA55AA5599669566)) 
    \q_m_2[1]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[1] ),
        .I5(\n1d_1_reg_n_0_[3] ),
        .O(\q_m_2[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in0_in),
        .O(p_0_in9_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1 
       (.I0(\q_m_2[8]_i_1_n_0 ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(p_0_in8_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(p_0_in4_in),
        .O(p_0_in7_in));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[5]_i_1 
       (.I0(\q_m_2[8]_i_1_n_0 ),
        .I1(\q_m_2[7]_i_2_n_0 ),
        .I2(p_0_in6_in_1),
        .O(p_0_in6_in));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[6]_i_1 
       (.I0(p_0_in8_in_0),
        .I1(\q_m_2[7]_i_2_n_0 ),
        .I2(p_0_in6_in_1),
        .O(\q_m_2[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[7]_i_1 
       (.I0(\q_m_2[8]_i_1_n_0 ),
        .I1(\q_m_2[7]_i_2_n_0 ),
        .I2(p_0_in6_in_1),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in_0),
        .O(p_1_in12_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_2 
       (.I0(p_0_in4_in),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\q_m_2[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00105555)) 
    \q_m_2[8]_i_1 
       (.I0(\n1d_1_reg_n_0_[3] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[2] ),
        .O(\q_m_2[8]_i_1_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1_n_0 ),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in9_in),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in8_in),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in7_in),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in6_in),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[6]_i_1_n_0 ),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_1_in12_in),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module processor_design_hdmi_out_0_0_TMDS_Encoder_1
   (Q,
    PixelClk,
    vid_pData,
    SR);
  output [9:0]Q;
  input PixelClk;
  input [7:0]vid_pData;
  input [0:0]SR;

  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3[2]_i_2__1_n_0 ;
  wire \cnt_t_3[2]_i_3__0_n_0 ;
  wire \cnt_t_3[2]_i_4__0_n_0 ;
  wire \cnt_t_3[3]_i_2_n_0 ;
  wire \cnt_t_3[3]_i_3__0_n_0 ;
  wire \cnt_t_3[3]_i_4__0_n_0 ;
  wire \cnt_t_3[3]_i_5__0_n_0 ;
  wire \cnt_t_3[4]_i_10__0_n_0 ;
  wire \cnt_t_3[4]_i_11_n_0 ;
  wire \cnt_t_3[4]_i_12_n_0 ;
  wire \cnt_t_3[4]_i_13_n_0 ;
  wire \cnt_t_3[4]_i_14_n_0 ;
  wire \cnt_t_3[4]_i_2_n_0 ;
  wire \cnt_t_3[4]_i_3_n_0 ;
  wire \cnt_t_3[4]_i_4__0_n_0 ;
  wire \cnt_t_3[4]_i_5__0_n_0 ;
  wire \cnt_t_3[4]_i_6__1_n_0 ;
  wire \cnt_t_3[4]_i_7__0_n_0 ;
  wire \cnt_t_3[4]_i_8__0_n_0 ;
  wire \cnt_t_3[4]_i_9__0_n_0 ;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n0q_m_2[1]_i_1__0_n_0 ;
  wire \n0q_m_2[2]_i_1__0_n_0 ;
  wire \n0q_m_2[3]_i_1__0_n_0 ;
  wire \n0q_m_2_reg_n_0_[1] ;
  wire \n0q_m_2_reg_n_0_[2] ;
  wire \n0q_m_2_reg_n_0_[3] ;
  wire \n1d_1[0]_i_1_n_0 ;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_1_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_1_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_1_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire \n1q_m_2[0]_i_1__0_n_0 ;
  wire \n1q_m_2[1]_i_1__0_n_0 ;
  wire \n1q_m_2[2]_i_1__0_n_0 ;
  wire \n1q_m_2[3]_i_1__0_n_0 ;
  wire \n1q_m_2[3]_i_2__0_n_0 ;
  wire \n1q_m_2[3]_i_3__0_n_0 ;
  wire \n1q_m_2[3]_i_4__0_n_0 ;
  wire \n1q_m_2[3]_i_5__0_n_0 ;
  wire \n1q_m_2[3]_i_6__0_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[0]_i_1_n_0 ;
  wire \pDataOutRaw[1]_i_1_n_0 ;
  wire \pDataOutRaw[2]_i_1__0_n_0 ;
  wire \pDataOutRaw[3]_i_1_n_0 ;
  wire \pDataOutRaw[4]_i_1__0_n_0 ;
  wire \pDataOutRaw[5]_i_1_n_0 ;
  wire \pDataOutRaw[6]_i_1__0_n_0 ;
  wire \pDataOutRaw[7]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_1_n_0 ;
  wire \pDataOutRaw[9]_i_2__0_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire \q_m_2[1]_i_1__0_n_0 ;
  wire \q_m_2[2]_i_1__0_n_0 ;
  wire \q_m_2[3]_i_1__0_n_0 ;
  wire \q_m_2[4]_i_1__0_n_0 ;
  wire \q_m_2[5]_i_1__0_n_0 ;
  wire \q_m_2[6]_i_1__0_n_0 ;
  wire \q_m_2[7]_i_1__0_n_0 ;
  wire \q_m_2[7]_i_2__0_n_0 ;
  wire \q_m_2[8]_i_1__0_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [7:0]vid_pData;

  LUT6 #(
    .INIT(64'h9669966969969696)) 
    \cnt_t_3[1]_i_1__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3[4]_i_4__0_n_0 ),
        .I4(\cnt_t_3[2]_i_4__0_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h9A569A9A596A6A6A)) 
    \cnt_t_3[2]_i_1__0 
       (.I0(\cnt_t_3[2]_i_2__1_n_0 ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3[2]_i_3__0_n_0 ),
        .I3(\cnt_t_3[4]_i_4__0_n_0 ),
        .I4(\cnt_t_3[2]_i_4__0_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h96966996)) 
    \cnt_t_3[2]_i_2__1 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[1] ),
        .I4(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \cnt_t_3[2]_i_4__0 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[0] ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(\cnt_t_3_reg_n_0_[4] ),
        .I5(\cnt_t_3[4]_i_12_n_0 ),
        .O(\cnt_t_3[2]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1__0 
       (.I0(\cnt_t_3[3]_i_2_n_0 ),
        .I1(\cnt_t_3[3]_i_3__0_n_0 ),
        .I2(\cnt_t_3[4]_i_4__0_n_0 ),
        .I3(\cnt_t_3[3]_i_4__0_n_0 ),
        .I4(\cnt_t_3[4]_i_6__1_n_0 ),
        .I5(\cnt_t_3[3]_i_5__0_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[3]_i_2 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3[4]_i_9__0_n_0 ),
        .O(\cnt_t_3[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h41D70000FFFF41D7)) 
    \cnt_t_3[3]_i_3__0 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3[4]_i_11_n_0 ),
        .I5(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEE8E8EEE88888E8)) 
    \cnt_t_3[3]_i_4__0 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\cnt_t_3[4]_i_11_n_0 ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\cnt_t_3[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'h9BBF04DF04DF9BBF)) 
    \cnt_t_3[3]_i_5__0 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h41D7)) 
    \cnt_t_3[4]_i_10__0 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(\cnt_t_3[4]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hB44B)) 
    \cnt_t_3[4]_i_11 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_12 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h147D)) 
    \cnt_t_3[4]_i_13 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .O(\cnt_t_3[4]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_14 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[4]_i_1__0 
       (.I0(\cnt_t_3[4]_i_2_n_0 ),
        .I1(\cnt_t_3[4]_i_3_n_0 ),
        .I2(\cnt_t_3[4]_i_4__0_n_0 ),
        .I3(\cnt_t_3[4]_i_5__0_n_0 ),
        .I4(\cnt_t_3[4]_i_6__1_n_0 ),
        .I5(\cnt_t_3[4]_i_7__0_n_0 ),
        .O(cnt_t_2[4]));
  LUT4 #(
    .INIT(16'h599A)) 
    \cnt_t_3[4]_i_2 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_8__0_n_0 ),
        .I3(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hD444DDD4)) 
    \cnt_t_3[4]_i_3 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3[4]_i_9__0_n_0 ),
        .I2(\cnt_t_3[4]_i_10__0_n_0 ),
        .I3(\cnt_t_3[4]_i_11_n_0 ),
        .I4(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCABFCABFCABFCBB)) 
    \cnt_t_3[4]_i_4__0 
       (.I0(\cnt_t_3[4]_i_12_n_0 ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\n1q_m_2_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(\n1q_m_2_reg_n_0_[0] ),
        .O(\cnt_t_3[4]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'hFF8E8E00)) 
    \cnt_t_3[4]_i_5__0 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\cnt_t_3[4]_i_11_n_0 ),
        .I2(\cnt_t_3[4]_i_13_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[3] ),
        .I4(\cnt_t_3[4]_i_9__0_n_0 ),
        .O(\cnt_t_3[4]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_6__1 
       (.I0(p_0_in),
        .I1(\cnt_t_3[4]_i_12_n_0 ),
        .I2(\cnt_t_3_reg_n_0_[4] ),
        .I3(\cnt_t_3[4]_i_14_n_0 ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h7F07FFFF00007F07)) 
    \cnt_t_3[4]_i_7__0 
       (.I0(\cnt_t_3[2]_i_3__0_n_0 ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .I3(\cnt_t_3[4]_i_11_n_0 ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(\cnt_t_3[4]_i_9__0_n_0 ),
        .O(\cnt_t_3[4]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8AEF)) 
    \cnt_t_3[4]_i_8__0 
       (.I0(\n0q_m_2_reg_n_0_[2] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hF75108AE08AEF751)) 
    \cnt_t_3[4]_i_9__0 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[2] ),
        .I4(\n0q_m_2_reg_n_0_[3] ),
        .I5(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \n0q_m_2[1]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .I2(\n1q_m_2[3]_i_4__0_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_6__0_n_0 ),
        .I5(\n1q_m_2[3]_i_5__0_n_0 ),
        .O(\n0q_m_2[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEF8EF7FF0800EF8E)) 
    \n0q_m_2[2]_i_1__0 
       (.I0(\n1q_m_2[3]_i_5__0_n_0 ),
        .I1(\n1q_m_2[3]_i_6__0_n_0 ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1q_m_2[3]_i_4__0_n_0 ),
        .I4(\n1q_m_2[3]_i_3__0_n_0 ),
        .I5(\n1q_m_2[3]_i_2__0_n_0 ),
        .O(\n0q_m_2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \n0q_m_2[3]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_6__0_n_0 ),
        .I2(\n1q_m_2[3]_i_5__0_n_0 ),
        .I3(\n1q_m_2[3]_i_4__0_n_0 ),
        .I4(\n1q_m_2[3]_i_3__0_n_0 ),
        .I5(\n1q_m_2[3]_i_2__0_n_0 ),
        .O(\n0q_m_2[3]_i_1__0_n_0 ));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__0_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(\n1d_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(\n1d_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(\n1d_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(\n1d_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[0]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[1]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[2]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[3]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[0]_i_1__0 
       (.I0(\n1q_m_2[3]_i_5__0_n_0 ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .I3(\n1q_m_2[3]_i_4__0_n_0 ),
        .O(\n1q_m_2[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m_2[1]_i_1__0 
       (.I0(\n1q_m_2[3]_i_4__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .I2(\n1q_m_2[3]_i_2__0_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_5__0_n_0 ),
        .I5(\n1q_m_2[3]_i_6__0_n_0 ),
        .O(\n1q_m_2[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h2BBFFFFD00022BBF)) 
    \n1q_m_2[2]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5__0_n_0 ),
        .I2(\n1q_m_2[3]_i_6__0_n_0 ),
        .I3(\n1q_m_2[3]_i_4__0_n_0 ),
        .I4(\n1q_m_2[3]_i_2__0_n_0 ),
        .I5(\n1q_m_2[3]_i_3__0_n_0 ),
        .O(\n1q_m_2[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \n1q_m_2[3]_i_1__0 
       (.I0(\n1q_m_2[3]_i_2__0_n_0 ),
        .I1(\n1q_m_2[3]_i_3__0_n_0 ),
        .I2(\n1q_m_2[3]_i_4__0_n_0 ),
        .I3(\n1q_m_2[3]_i_5__0_n_0 ),
        .I4(\n1q_m_2[3]_i_6__0_n_0 ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(\n1q_m_2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_2__0 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(\q_m_2[8]_i_1__0_n_0 ),
        .O(\n1q_m_2[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h3693)) 
    \n1q_m_2[3]_i_3__0 
       (.I0(p_0_in6_in),
        .I1(\q_m_2[7]_i_2__0_n_0 ),
        .I2(\q_m_2[8]_i_1__0_n_0 ),
        .I3(p_0_in8_in),
        .O(\n1q_m_2[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_4__0 
       (.I0(\q_m_2[7]_i_2__0_n_0 ),
        .I1(\q_m_2[8]_i_1__0_n_0 ),
        .I2(p_0_in8_in),
        .O(\n1q_m_2[3]_i_4__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \n1q_m_2[3]_i_5__0 
       (.I0(p_0_in6_in),
        .I1(\q_m_2[7]_i_2__0_n_0 ),
        .I2(\q_m_2[8]_i_1__0_n_0 ),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in),
        .O(\n1q_m_2[3]_i_5__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_6__0 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .O(\n1q_m_2[3]_i_6__0_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[1]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[2]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[3]_i_1__0_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[0]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[0] ),
        .O(\pDataOutRaw[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[1]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[2]_i_1__0 
       (.I0(\cnt_t_3[4]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_6__1_n_0 ),
        .O(\pDataOutRaw[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[3]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[3] ),
        .O(\pDataOutRaw[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[4]_i_1__0 
       (.I0(\cnt_t_3[4]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[4] ),
        .I2(\cnt_t_3[4]_i_6__1_n_0 ),
        .O(\pDataOutRaw[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[5]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[5] ),
        .O(\pDataOutRaw[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[6]_i_1__0 
       (.I0(\cnt_t_3[4]_i_4__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[6] ),
        .I2(\cnt_t_3[4]_i_6__1_n_0 ),
        .O(\pDataOutRaw[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[7]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .I1(\q_m_2_reg_n_0_[7] ),
        .O(\pDataOutRaw[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pDataOutRaw[9]_i_1 
       (.I0(\pDataOutRaw[9]_i_2__0_n_0 ),
        .O(\pDataOutRaw[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEE1FE200E213)) 
    \pDataOutRaw[9]_i_2__0 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_14_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\cnt_t_3[4]_i_12_n_0 ),
        .I5(p_0_in),
        .O(\pDataOutRaw[9]_i_2__0_n_0 ));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .S(SR));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .S(SR));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .S(SR));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[8]),
        .S(SR));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1_n_0 ),
        .Q(Q[9]),
        .S(SR));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA55AA5599669566)) 
    \q_m_2[1]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[1] ),
        .I5(\n1d_1_reg_n_0_[3] ),
        .O(\q_m_2[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__0 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in0_in),
        .O(\q_m_2[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1__0 
       (.I0(\q_m_2[8]_i_1__0_n_0 ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\q_m_2[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__0 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(p_0_in4_in),
        .O(\q_m_2[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[5]_i_1__0 
       (.I0(\q_m_2[8]_i_1__0_n_0 ),
        .I1(\q_m_2[7]_i_2__0_n_0 ),
        .I2(p_0_in6_in),
        .O(\q_m_2[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[6]_i_1__0 
       (.I0(p_0_in8_in),
        .I1(\q_m_2[7]_i_2__0_n_0 ),
        .I2(p_0_in6_in),
        .O(\q_m_2[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[7]_i_1__0 
       (.I0(\q_m_2[8]_i_1__0_n_0 ),
        .I1(\q_m_2[7]_i_2__0_n_0 ),
        .I2(p_0_in6_in),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in),
        .O(\q_m_2[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_2__0 
       (.I0(p_0_in4_in),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\q_m_2[7]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h00105555)) 
    \q_m_2[8]_i_1__0 
       (.I0(\n1d_1_reg_n_0_[3] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[2] ),
        .O(\q_m_2[8]_i_1__0_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[2]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[4]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[6]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[7]_i_1__0_n_0 ),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__0_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "TMDS_Encoder" *) 
module processor_design_hdmi_out_0_0_TMDS_Encoder_3
   (Q,
    PixelClk,
    vid_pData,
    SR);
  output [9:0]Q;
  input PixelClk;
  input [7:0]vid_pData;
  input [0:0]SR;

  wire PixelClk;
  wire [9:0]Q;
  wire [0:0]SR;
  wire [4:1]cnt_t_2;
  wire \cnt_t_3[2]_i_2_n_0 ;
  wire \cnt_t_3[2]_i_3__1_n_0 ;
  wire \cnt_t_3[2]_i_4__1_n_0 ;
  wire \cnt_t_3[3]_i_2__0_n_0 ;
  wire \cnt_t_3[3]_i_3__1_n_0 ;
  wire \cnt_t_3[3]_i_4__1_n_0 ;
  wire \cnt_t_3[3]_i_5__1_n_0 ;
  wire \cnt_t_3[3]_i_6__0_n_0 ;
  wire \cnt_t_3[3]_i_7__0_n_0 ;
  wire \cnt_t_3[4]_i_2__0_n_0 ;
  wire \cnt_t_3[4]_i_3__0_n_0 ;
  wire \cnt_t_3[4]_i_4__1_n_0 ;
  wire \cnt_t_3[4]_i_5__1_n_0 ;
  wire \cnt_t_3[4]_i_6__0_n_0 ;
  wire \cnt_t_3[4]_i_7__1_n_0 ;
  wire \cnt_t_3[4]_i_8__1_n_0 ;
  wire \cnt_t_3[4]_i_9__1_n_0 ;
  wire \cnt_t_3_reg_n_0_[1] ;
  wire \cnt_t_3_reg_n_0_[2] ;
  wire \cnt_t_3_reg_n_0_[3] ;
  wire \cnt_t_3_reg_n_0_[4] ;
  wire \n0q_m_2[1]_i_1__1_n_0 ;
  wire \n0q_m_2[2]_i_1__1_n_0 ;
  wire \n0q_m_2[3]_i_1__1_n_0 ;
  wire \n0q_m_2_reg_n_0_[1] ;
  wire \n0q_m_2_reg_n_0_[2] ;
  wire \n0q_m_2_reg_n_0_[3] ;
  wire \n1d_1[0]_i_1_n_0 ;
  wire \n1d_1[0]_i_2_n_0 ;
  wire \n1d_1[1]_i_1_n_0 ;
  wire \n1d_1[1]_i_2_n_0 ;
  wire \n1d_1[2]_i_1_n_0 ;
  wire \n1d_1[2]_i_2_n_0 ;
  wire \n1d_1[3]_i_1_n_0 ;
  wire \n1d_1[3]_i_2_n_0 ;
  wire \n1d_1[3]_i_3_n_0 ;
  wire \n1d_1[3]_i_4_n_0 ;
  wire \n1d_1_reg_n_0_[0] ;
  wire \n1d_1_reg_n_0_[1] ;
  wire \n1d_1_reg_n_0_[2] ;
  wire \n1d_1_reg_n_0_[3] ;
  wire \n1q_m_2[0]_i_1__1_n_0 ;
  wire \n1q_m_2[1]_i_1__1_n_0 ;
  wire \n1q_m_2[2]_i_1__1_n_0 ;
  wire \n1q_m_2[3]_i_1__1_n_0 ;
  wire \n1q_m_2[3]_i_2__1_n_0 ;
  wire \n1q_m_2[3]_i_3__1_n_0 ;
  wire \n1q_m_2[3]_i_4__1_n_0 ;
  wire \n1q_m_2[3]_i_5__1_n_0 ;
  wire \n1q_m_2[3]_i_6__1_n_0 ;
  wire \n1q_m_2_reg_n_0_[0] ;
  wire \n1q_m_2_reg_n_0_[1] ;
  wire \n1q_m_2_reg_n_0_[2] ;
  wire \n1q_m_2_reg_n_0_[3] ;
  wire \pDataOutRaw[0]_i_1__0_n_0 ;
  wire \pDataOutRaw[1]_i_1__0_n_0 ;
  wire \pDataOutRaw[2]_i_1__1_n_0 ;
  wire \pDataOutRaw[3]_i_1__0_n_0 ;
  wire \pDataOutRaw[4]_i_1__1_n_0 ;
  wire \pDataOutRaw[5]_i_1__0_n_0 ;
  wire \pDataOutRaw[6]_i_1__1_n_0 ;
  wire \pDataOutRaw[7]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_1__0_n_0 ;
  wire \pDataOutRaw[9]_i_2__1_n_0 ;
  wire \pDataOut_1_reg_n_0_[0] ;
  wire \pDataOut_1_reg_n_0_[1] ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in10_in;
  wire p_0_in2_in;
  wire p_0_in4_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire \q_m_2[1]_i_1__1_n_0 ;
  wire \q_m_2[2]_i_1__1_n_0 ;
  wire \q_m_2[3]_i_1__1_n_0 ;
  wire \q_m_2[4]_i_1__1_n_0 ;
  wire \q_m_2[5]_i_1__1_n_0 ;
  wire \q_m_2[6]_i_1__1_n_0 ;
  wire \q_m_2[7]_i_1__1_n_0 ;
  wire \q_m_2[7]_i_2__1_n_0 ;
  wire \q_m_2[8]_i_1__1_n_0 ;
  wire \q_m_2_reg_n_0_[0] ;
  wire \q_m_2_reg_n_0_[1] ;
  wire \q_m_2_reg_n_0_[2] ;
  wire \q_m_2_reg_n_0_[3] ;
  wire \q_m_2_reg_n_0_[4] ;
  wire \q_m_2_reg_n_0_[5] ;
  wire \q_m_2_reg_n_0_[6] ;
  wire \q_m_2_reg_n_0_[7] ;
  wire [7:0]vid_pData;

  LUT6 #(
    .INIT(64'h9669966969969696)) 
    \cnt_t_3[1]_i_1__1 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3[3]_i_4__1_n_0 ),
        .I4(\cnt_t_3[2]_i_4__1_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[1]));
  LUT6 #(
    .INIT(64'h59A959599A959595)) 
    \cnt_t_3[2]_i_1__1 
       (.I0(\cnt_t_3[2]_i_2_n_0 ),
        .I1(\cnt_t_3[2]_i_3__1_n_0 ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3[3]_i_4__1_n_0 ),
        .I4(\cnt_t_3[2]_i_4__1_n_0 ),
        .I5(p_0_in),
        .O(cnt_t_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h69966969)) 
    \cnt_t_3[2]_i_2 
       (.I0(\cnt_t_3_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[2]_i_3__1 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .O(\cnt_t_3[2]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFD0000FFFDFFFD)) 
    \cnt_t_3[2]_i_4__1 
       (.I0(\n1q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[0] ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(\cnt_t_3_reg_n_0_[4] ),
        .I5(\cnt_t_3[4]_i_5__1_n_0 ),
        .O(\cnt_t_3[2]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'h555556A6AAAA56A6)) 
    \cnt_t_3[3]_i_1__1 
       (.I0(\cnt_t_3[3]_i_2__0_n_0 ),
        .I1(\cnt_t_3[3]_i_3__1_n_0 ),
        .I2(\cnt_t_3[3]_i_4__1_n_0 ),
        .I3(\cnt_t_3[3]_i_5__1_n_0 ),
        .I4(\cnt_t_3[4]_i_2__0_n_0 ),
        .I5(\cnt_t_3[3]_i_6__0_n_0 ),
        .O(cnt_t_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \cnt_t_3[3]_i_2__0 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3[4]_i_8__1_n_0 ),
        .O(\cnt_t_3[3]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h41D70000FFFF41D7)) 
    \cnt_t_3[3]_i_3__1 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3[3]_i_7__0_n_0 ),
        .I5(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFCABFCABFCABFCBB)) 
    \cnt_t_3[3]_i_4__1 
       (.I0(\cnt_t_3[4]_i_5__1_n_0 ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\n1q_m_2_reg_n_0_[2] ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\n1q_m_2_reg_n_0_[1] ),
        .I5(\n1q_m_2_reg_n_0_[0] ),
        .O(\cnt_t_3[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEB82EB820000)) 
    \cnt_t_3[3]_i_5__1 
       (.I0(\cnt_t_3_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(p_0_in),
        .I4(\cnt_t_3_reg_n_0_[2] ),
        .I5(\cnt_t_3[3]_i_7__0_n_0 ),
        .O(\cnt_t_3[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h9BBF04DF04DF9BBF)) 
    \cnt_t_3[3]_i_6__0 
       (.I0(\n0q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[1] ),
        .I3(\cnt_t_3_reg_n_0_[2] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hD22D)) 
    \cnt_t_3[3]_i_7__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n0q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[2] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[3]_i_7__0_n_0 ));
  LUT5 #(
    .INIT(32'h04550404)) 
    \cnt_t_3[4]_i_2__0 
       (.I0(p_0_in),
        .I1(\cnt_t_3[4]_i_5__1_n_0 ),
        .I2(\cnt_t_3_reg_n_0_[4] ),
        .I3(\cnt_t_3[4]_i_6__0_n_0 ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hF0B4873CC3B4870F)) 
    \cnt_t_3[4]_i_3__0 
       (.I0(\cnt_t_3[3]_i_5__1_n_0 ),
        .I1(\cnt_t_3[3]_i_4__1_n_0 ),
        .I2(\cnt_t_3[4]_i_7__1_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[3] ),
        .I4(\cnt_t_3[4]_i_8__1_n_0 ),
        .I5(\cnt_t_3[3]_i_3__1_n_0 ),
        .O(\cnt_t_3[4]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hA96A95A96A56A96A)) 
    \cnt_t_3[4]_i_4__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n0q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_9__1_n_0 ),
        .I3(\n1q_m_2_reg_n_0_[3] ),
        .I4(\cnt_t_3_reg_n_0_[3] ),
        .I5(\cnt_t_3[3]_i_6__0_n_0 ),
        .O(\cnt_t_3[4]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \cnt_t_3[4]_i_5__1 
       (.I0(\cnt_t_3_reg_n_0_[3] ),
        .I1(\cnt_t_3_reg_n_0_[1] ),
        .I2(\cnt_t_3_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_5__1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cnt_t_3[4]_i_6__0 
       (.I0(\n1q_m_2_reg_n_0_[1] ),
        .I1(\n1q_m_2_reg_n_0_[0] ),
        .I2(\n1q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hA665)) 
    \cnt_t_3[4]_i_7__1 
       (.I0(\cnt_t_3_reg_n_0_[4] ),
        .I1(\n1q_m_2_reg_n_0_[3] ),
        .I2(\cnt_t_3[4]_i_9__1_n_0 ),
        .I3(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'h9959AA9A66A65565)) 
    \cnt_t_3[4]_i_8__1 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n0q_m_2_reg_n_0_[2] ),
        .I2(\n1q_m_2_reg_n_0_[1] ),
        .I3(\n0q_m_2_reg_n_0_[1] ),
        .I4(\n1q_m_2_reg_n_0_[2] ),
        .I5(\n0q_m_2_reg_n_0_[3] ),
        .O(\cnt_t_3[4]_i_8__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hA2FB)) 
    \cnt_t_3[4]_i_9__1 
       (.I0(\n0q_m_2_reg_n_0_[2] ),
        .I1(\n1q_m_2_reg_n_0_[1] ),
        .I2(\n0q_m_2_reg_n_0_[1] ),
        .I3(\n1q_m_2_reg_n_0_[2] ),
        .O(\cnt_t_3[4]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[1]),
        .Q(\cnt_t_3_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[2]),
        .Q(\cnt_t_3_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[3]),
        .Q(\cnt_t_3_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_t_3_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(cnt_t_2[4]),
        .Q(\cnt_t_3_reg_n_0_[4] ),
        .R(SR));
  MUXF7 \cnt_t_3_reg[4]_i_1 
       (.I0(\cnt_t_3[4]_i_3__0_n_0 ),
        .I1(\cnt_t_3[4]_i_4__1_n_0 ),
        .O(cnt_t_2[4]),
        .S(\cnt_t_3[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h6696696669669969)) 
    \n0q_m_2[1]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .I2(\n1q_m_2[3]_i_4__1_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_6__1_n_0 ),
        .I5(\n1q_m_2[3]_i_5__1_n_0 ),
        .O(\n0q_m_2[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hEF8EF7FF0800EF8E)) 
    \n0q_m_2[2]_i_1__1 
       (.I0(\n1q_m_2[3]_i_5__1_n_0 ),
        .I1(\n1q_m_2[3]_i_6__1_n_0 ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1q_m_2[3]_i_4__1_n_0 ),
        .I4(\n1q_m_2[3]_i_3__1_n_0 ),
        .I5(\n1q_m_2[3]_i_2__1_n_0 ),
        .O(\n0q_m_2[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \n0q_m_2[3]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_6__1_n_0 ),
        .I2(\n1q_m_2[3]_i_5__1_n_0 ),
        .I3(\n1q_m_2[3]_i_4__1_n_0 ),
        .I4(\n1q_m_2[3]_i_3__1_n_0 ),
        .I5(\n1q_m_2[3]_i_2__1_n_0 ),
        .O(\n0q_m_2[3]_i_1__1_n_0 ));
  FDRE \n0q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[1]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[2]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n0q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n0q_m_2[3]_i_1__1_n_0 ),
        .Q(\n0q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \n1d_1[0]_i_1 
       (.I0(vid_pData[7]),
        .I1(vid_pData[0]),
        .I2(\n1d_1[0]_i_2_n_0 ),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(vid_pData[4]),
        .O(\n1d_1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[0]_i_2 
       (.I0(vid_pData[1]),
        .I1(vid_pData[3]),
        .I2(vid_pData[2]),
        .O(\n1d_1[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \n1d_1[1]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[1]_i_2_n_0 ),
        .I2(\n1d_1[3]_i_3_n_0 ),
        .O(\n1d_1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \n1d_1[1]_i_2 
       (.I0(vid_pData[4]),
        .I1(vid_pData[5]),
        .I2(vid_pData[6]),
        .I3(vid_pData[1]),
        .I4(vid_pData[2]),
        .I5(vid_pData[3]),
        .O(\n1d_1[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7E7E7EE87EE8E8E8)) 
    \n1d_1[2]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(\n1d_1[2]_i_2_n_0 ),
        .I3(vid_pData[3]),
        .I4(vid_pData[2]),
        .I5(vid_pData[1]),
        .O(\n1d_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[2]_i_2 
       (.I0(vid_pData[6]),
        .I1(vid_pData[5]),
        .I2(vid_pData[4]),
        .O(\n1d_1[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8880800000000000)) 
    \n1d_1[3]_i_1 
       (.I0(\n1d_1[3]_i_2_n_0 ),
        .I1(\n1d_1[3]_i_3_n_0 ),
        .I2(vid_pData[4]),
        .I3(vid_pData[5]),
        .I4(vid_pData[6]),
        .I5(\n1d_1[3]_i_4_n_0 ),
        .O(\n1d_1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \n1d_1[3]_i_2 
       (.I0(vid_pData[5]),
        .I1(vid_pData[6]),
        .I2(vid_pData[4]),
        .I3(vid_pData[7]),
        .I4(vid_pData[0]),
        .I5(\n1d_1[0]_i_2_n_0 ),
        .O(\n1d_1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hE88E8EE8)) 
    \n1d_1[3]_i_3 
       (.I0(vid_pData[0]),
        .I1(vid_pData[7]),
        .I2(vid_pData[2]),
        .I3(vid_pData[3]),
        .I4(vid_pData[1]),
        .O(\n1d_1[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hE8)) 
    \n1d_1[3]_i_4 
       (.I0(vid_pData[3]),
        .I1(vid_pData[2]),
        .I2(vid_pData[1]),
        .O(\n1d_1[3]_i_4_n_0 ));
  FDRE \n1d_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[0]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1d_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[1]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1d_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[2]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1d_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1d_1[3]_i_1_n_0 ),
        .Q(\n1d_1_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \n1q_m_2[0]_i_1__1 
       (.I0(\n1q_m_2[3]_i_5__1_n_0 ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in2_in),
        .I3(\n1q_m_2[3]_i_4__1_n_0 ),
        .O(\n1q_m_2[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h96C33C963C96693C)) 
    \n1q_m_2[1]_i_1__1 
       (.I0(\n1q_m_2[3]_i_4__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .I2(\n1q_m_2[3]_i_2__1_n_0 ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1q_m_2[3]_i_5__1_n_0 ),
        .I5(\n1q_m_2[3]_i_6__1_n_0 ),
        .O(\n1q_m_2[1]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h2BBFFFFD00022BBF)) 
    \n1q_m_2[2]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\n1q_m_2[3]_i_5__1_n_0 ),
        .I2(\n1q_m_2[3]_i_6__1_n_0 ),
        .I3(\n1q_m_2[3]_i_4__1_n_0 ),
        .I4(\n1q_m_2[3]_i_2__1_n_0 ),
        .I5(\n1q_m_2[3]_i_3__1_n_0 ),
        .O(\n1q_m_2[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \n1q_m_2[3]_i_1__1 
       (.I0(\n1q_m_2[3]_i_2__1_n_0 ),
        .I1(\n1q_m_2[3]_i_3__1_n_0 ),
        .I2(\n1q_m_2[3]_i_4__1_n_0 ),
        .I3(\n1q_m_2[3]_i_5__1_n_0 ),
        .I4(\n1q_m_2[3]_i_6__1_n_0 ),
        .I5(\pDataOut_1_reg_n_0_[0] ),
        .O(\n1q_m_2[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h96C33C96)) 
    \n1q_m_2[3]_i_2__1 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(\q_m_2[8]_i_1__1_n_0 ),
        .O(\n1q_m_2[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h3693)) 
    \n1q_m_2[3]_i_3__1 
       (.I0(p_0_in6_in),
        .I1(\q_m_2[7]_i_2__1_n_0 ),
        .I2(\q_m_2[8]_i_1__1_n_0 ),
        .I3(p_0_in8_in),
        .O(\n1q_m_2[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_4__1 
       (.I0(\q_m_2[7]_i_2__1_n_0 ),
        .I1(\q_m_2[8]_i_1__1_n_0 ),
        .I2(p_0_in8_in),
        .O(\n1q_m_2[3]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \n1q_m_2[3]_i_5__1 
       (.I0(p_0_in6_in),
        .I1(\q_m_2[7]_i_2__1_n_0 ),
        .I2(\q_m_2[8]_i_1__1_n_0 ),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in),
        .O(\n1q_m_2[3]_i_5__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \n1q_m_2[3]_i_6__1 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .O(\n1q_m_2[3]_i_6__1_n_0 ));
  FDRE \n1q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[0]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[1]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[2]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \n1q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\n1q_m_2[3]_i_1__1_n_0 ),
        .Q(\n1q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[0]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[0] ),
        .O(\pDataOutRaw[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[1]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[1] ),
        .O(\pDataOutRaw[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[2]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[3]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[3] ),
        .O(\pDataOutRaw[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[4]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[4] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[5]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[5] ),
        .O(\pDataOutRaw[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h39)) 
    \pDataOutRaw[6]_i_1__1 
       (.I0(\cnt_t_3[3]_i_4__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[6] ),
        .I2(\cnt_t_3[4]_i_2__0_n_0 ),
        .O(\pDataOutRaw[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \pDataOutRaw[7]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .I1(\q_m_2_reg_n_0_[7] ),
        .O(\pDataOutRaw[7]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \pDataOutRaw[9]_i_1__0 
       (.I0(\pDataOutRaw[9]_i_2__1_n_0 ),
        .O(\pDataOutRaw[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEFFEE1FE200E213)) 
    \pDataOutRaw[9]_i_2__1 
       (.I0(\n1q_m_2_reg_n_0_[3] ),
        .I1(\n1q_m_2_reg_n_0_[2] ),
        .I2(\cnt_t_3[4]_i_6__0_n_0 ),
        .I3(\cnt_t_3_reg_n_0_[4] ),
        .I4(\cnt_t_3[4]_i_5__1_n_0 ),
        .I5(p_0_in),
        .O(\pDataOutRaw[9]_i_2__1_n_0 ));
  FDRE \pDataOutRaw_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE \pDataOutRaw_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDSE \pDataOutRaw_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .S(SR));
  FDRE \pDataOutRaw_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDSE \pDataOutRaw_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .S(SR));
  FDRE \pDataOutRaw_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDSE \pDataOutRaw_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .S(SR));
  FDRE \pDataOutRaw_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(SR));
  FDSE \pDataOutRaw_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(Q[8]),
        .S(SR));
  FDSE \pDataOutRaw_reg[9] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOutRaw[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .S(SR));
  FDRE \pDataOut_1_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[0]),
        .Q(\pDataOut_1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[1]),
        .Q(\pDataOut_1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pDataOut_1_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[2]),
        .Q(p_0_in0_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[3]),
        .Q(p_0_in2_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[4]),
        .Q(p_0_in4_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[5]),
        .Q(p_0_in6_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[6]),
        .Q(p_0_in8_in),
        .R(1'b0));
  FDRE \pDataOut_1_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(vid_pData[7]),
        .Q(p_0_in10_in),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAA55AA5599669566)) 
    \q_m_2[1]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[1] ),
        .I1(\n1d_1_reg_n_0_[2] ),
        .I2(\n1d_1_reg_n_0_[0] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[1] ),
        .I5(\n1d_1_reg_n_0_[3] ),
        .O(\q_m_2[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[2]_i_1__1 
       (.I0(\pDataOut_1_reg_n_0_[0] ),
        .I1(\pDataOut_1_reg_n_0_[1] ),
        .I2(p_0_in0_in),
        .O(\q_m_2[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[3]_i_1__1 
       (.I0(\q_m_2[8]_i_1__1_n_0 ),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\q_m_2[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[4]_i_1__1 
       (.I0(p_0_in2_in),
        .I1(\pDataOut_1_reg_n_0_[0] ),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(p_0_in4_in),
        .O(\q_m_2[4]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \q_m_2[5]_i_1__1 
       (.I0(\q_m_2[8]_i_1__1_n_0 ),
        .I1(\q_m_2[7]_i_2__1_n_0 ),
        .I2(p_0_in6_in),
        .O(\q_m_2[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \q_m_2[6]_i_1__1 
       (.I0(p_0_in8_in),
        .I1(\q_m_2[7]_i_2__1_n_0 ),
        .I2(p_0_in6_in),
        .O(\q_m_2[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \q_m_2[7]_i_1__1 
       (.I0(\q_m_2[8]_i_1__1_n_0 ),
        .I1(\q_m_2[7]_i_2__1_n_0 ),
        .I2(p_0_in6_in),
        .I3(p_0_in10_in),
        .I4(p_0_in8_in),
        .O(\q_m_2[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h69969669)) 
    \q_m_2[7]_i_2__1 
       (.I0(p_0_in4_in),
        .I1(p_0_in0_in),
        .I2(\pDataOut_1_reg_n_0_[1] ),
        .I3(\pDataOut_1_reg_n_0_[0] ),
        .I4(p_0_in2_in),
        .O(\q_m_2[7]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h00105555)) 
    \q_m_2[8]_i_1__1 
       (.I0(\n1d_1_reg_n_0_[3] ),
        .I1(\n1d_1_reg_n_0_[1] ),
        .I2(\pDataOut_1_reg_n_0_[0] ),
        .I3(\n1d_1_reg_n_0_[0] ),
        .I4(\n1d_1_reg_n_0_[2] ),
        .O(\q_m_2[8]_i_1__1_n_0 ));
  FDRE \q_m_2_reg[0] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\pDataOut_1_reg_n_0_[0] ),
        .Q(\q_m_2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \q_m_2_reg[1] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[1]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \q_m_2_reg[2] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[2]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \q_m_2_reg[3] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[3]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \q_m_2_reg[4] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[4]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \q_m_2_reg[5] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[5]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \q_m_2_reg[6] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[6]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \q_m_2_reg[7] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[7]_i_1__1_n_0 ),
        .Q(\q_m_2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \q_m_2_reg[8] 
       (.C(PixelClk),
        .CE(1'b1),
        .D(\q_m_2[8]_i_1__1_n_0 ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "hdmi_out" *) 
module processor_design_hdmi_out_0_0_hdmi_out
   (clk,
    en,
    r,
    g,
    b,
    hs,
    vs,
    vid,
    hdmi_tx_clk_n,
    hdmi_tx_clk_p,
    hdmi_tx_n,
    hdmi_tx_p);
  input clk;
  input en;
  input [4:0]r;
  input [5:0]g;
  input [4:0]b;
  input hs;
  input vs;
  input vid;
  output hdmi_tx_clk_n;
  output hdmi_tx_clk_p;
  output [2:0]hdmi_tx_n;
  output [2:0]hdmi_tx_p;

  wire [4:0]b;
  wire [7:0]b8;
  wire [12:3]b80;
  wire clk;
  wire en;
  wire [5:0]g;
  wire [7:0]g8;
  wire [13:3]g80;
  wire hdmi_tx_clk_n;
  wire hdmi_tx_clk_p;
  wire [2:0]hdmi_tx_n;
  wire [2:0]hdmi_tx_p;
  wire hs;
  wire [4:0]r;
  wire [7:0]r8;
  wire [12:3]r80;
  wire vga2hdmi_i_100_n_0;
  wire vga2hdmi_i_101_n_0;
  wire vga2hdmi_i_102_n_0;
  wire vga2hdmi_i_102_n_2;
  wire vga2hdmi_i_102_n_3;
  wire vga2hdmi_i_103_n_0;
  wire vga2hdmi_i_104_n_0;
  wire vga2hdmi_i_105_n_0;
  wire vga2hdmi_i_106_n_0;
  wire vga2hdmi_i_107_n_0;
  wire vga2hdmi_i_108_n_0;
  wire vga2hdmi_i_110_n_0;
  wire vga2hdmi_i_111_n_0;
  wire vga2hdmi_i_112_n_0;
  wire vga2hdmi_i_113_n_0;
  wire vga2hdmi_i_114_n_0;
  wire vga2hdmi_i_114_n_1;
  wire vga2hdmi_i_114_n_2;
  wire vga2hdmi_i_114_n_3;
  wire vga2hdmi_i_114_n_4;
  wire vga2hdmi_i_114_n_5;
  wire vga2hdmi_i_114_n_6;
  wire vga2hdmi_i_114_n_7;
  wire vga2hdmi_i_115_n_0;
  wire vga2hdmi_i_116_n_0;
  wire vga2hdmi_i_117_n_0;
  wire vga2hdmi_i_118_n_0;
  wire vga2hdmi_i_119_n_0;
  wire vga2hdmi_i_120_n_0;
  wire vga2hdmi_i_121_n_0;
  wire vga2hdmi_i_122_n_0;
  wire vga2hdmi_i_123_n_0;
  wire vga2hdmi_i_123_n_1;
  wire vga2hdmi_i_123_n_2;
  wire vga2hdmi_i_123_n_3;
  wire vga2hdmi_i_123_n_4;
  wire vga2hdmi_i_123_n_5;
  wire vga2hdmi_i_123_n_6;
  wire vga2hdmi_i_123_n_7;
  wire vga2hdmi_i_124_n_3;
  wire vga2hdmi_i_125_n_0;
  wire vga2hdmi_i_125_n_1;
  wire vga2hdmi_i_125_n_2;
  wire vga2hdmi_i_125_n_3;
  wire vga2hdmi_i_126_n_0;
  wire vga2hdmi_i_127_n_0;
  wire vga2hdmi_i_128_n_0;
  wire vga2hdmi_i_129_n_0;
  wire vga2hdmi_i_130_n_0;
  wire vga2hdmi_i_131_n_0;
  wire vga2hdmi_i_132_n_0;
  wire vga2hdmi_i_133_n_0;
  wire vga2hdmi_i_134_n_3;
  wire vga2hdmi_i_135_n_0;
  wire vga2hdmi_i_136_n_0;
  wire vga2hdmi_i_137_n_0;
  wire vga2hdmi_i_138_n_0;
  wire vga2hdmi_i_139_n_0;
  wire vga2hdmi_i_140_n_0;
  wire vga2hdmi_i_141_n_0;
  wire vga2hdmi_i_141_n_1;
  wire vga2hdmi_i_141_n_2;
  wire vga2hdmi_i_141_n_3;
  wire vga2hdmi_i_141_n_4;
  wire vga2hdmi_i_141_n_5;
  wire vga2hdmi_i_141_n_6;
  wire vga2hdmi_i_141_n_7;
  wire vga2hdmi_i_142_n_0;
  wire vga2hdmi_i_143_n_0;
  wire vga2hdmi_i_144_n_0;
  wire vga2hdmi_i_145_n_0;
  wire vga2hdmi_i_146_n_0;
  wire vga2hdmi_i_147_n_0;
  wire vga2hdmi_i_148_n_0;
  wire vga2hdmi_i_149_n_0;
  wire vga2hdmi_i_150_n_0;
  wire vga2hdmi_i_150_n_1;
  wire vga2hdmi_i_150_n_2;
  wire vga2hdmi_i_150_n_3;
  wire vga2hdmi_i_150_n_4;
  wire vga2hdmi_i_150_n_5;
  wire vga2hdmi_i_150_n_6;
  wire vga2hdmi_i_150_n_7;
  wire vga2hdmi_i_151_n_3;
  wire vga2hdmi_i_152_n_0;
  wire vga2hdmi_i_152_n_1;
  wire vga2hdmi_i_152_n_2;
  wire vga2hdmi_i_152_n_3;
  wire vga2hdmi_i_153_n_0;
  wire vga2hdmi_i_154_n_0;
  wire vga2hdmi_i_155_n_0;
  wire vga2hdmi_i_156_n_0;
  wire vga2hdmi_i_157_n_0;
  wire vga2hdmi_i_158_n_0;
  wire vga2hdmi_i_159_n_0;
  wire vga2hdmi_i_160_n_0;
  wire vga2hdmi_i_162_n_0;
  wire vga2hdmi_i_162_n_1;
  wire vga2hdmi_i_162_n_2;
  wire vga2hdmi_i_162_n_3;
  wire vga2hdmi_i_163_n_0;
  wire vga2hdmi_i_164_n_0;
  wire vga2hdmi_i_165_n_0;
  wire vga2hdmi_i_166_n_0;
  wire vga2hdmi_i_166_n_2;
  wire vga2hdmi_i_166_n_3;
  wire vga2hdmi_i_167_n_0;
  wire vga2hdmi_i_168_n_0;
  wire vga2hdmi_i_169_n_0;
  wire vga2hdmi_i_170_n_0;
  wire vga2hdmi_i_171_n_0;
  wire vga2hdmi_i_172_n_0;
  wire vga2hdmi_i_174_n_0;
  wire vga2hdmi_i_175_n_0;
  wire vga2hdmi_i_176_n_0;
  wire vga2hdmi_i_177_n_0;
  wire vga2hdmi_i_178_n_0;
  wire vga2hdmi_i_178_n_1;
  wire vga2hdmi_i_178_n_2;
  wire vga2hdmi_i_178_n_3;
  wire vga2hdmi_i_178_n_4;
  wire vga2hdmi_i_178_n_5;
  wire vga2hdmi_i_178_n_6;
  wire vga2hdmi_i_178_n_7;
  wire vga2hdmi_i_179_n_0;
  wire vga2hdmi_i_180_n_0;
  wire vga2hdmi_i_181_n_0;
  wire vga2hdmi_i_182_n_0;
  wire vga2hdmi_i_183_n_0;
  wire vga2hdmi_i_184_n_0;
  wire vga2hdmi_i_185_n_0;
  wire vga2hdmi_i_186_n_0;
  wire vga2hdmi_i_187_n_0;
  wire vga2hdmi_i_187_n_1;
  wire vga2hdmi_i_187_n_2;
  wire vga2hdmi_i_187_n_3;
  wire vga2hdmi_i_187_n_4;
  wire vga2hdmi_i_187_n_5;
  wire vga2hdmi_i_187_n_6;
  wire vga2hdmi_i_187_n_7;
  wire vga2hdmi_i_188_n_3;
  wire vga2hdmi_i_189_n_0;
  wire vga2hdmi_i_189_n_1;
  wire vga2hdmi_i_189_n_2;
  wire vga2hdmi_i_189_n_3;
  wire vga2hdmi_i_190_n_0;
  wire vga2hdmi_i_191_n_0;
  wire vga2hdmi_i_192_n_0;
  wire vga2hdmi_i_193_n_0;
  wire vga2hdmi_i_194_n_0;
  wire vga2hdmi_i_195_n_0;
  wire vga2hdmi_i_196_n_0;
  wire vga2hdmi_i_197_n_0;
  wire vga2hdmi_i_198_n_0;
  wire vga2hdmi_i_199_n_0;
  wire vga2hdmi_i_200_n_0;
  wire vga2hdmi_i_201_n_0;
  wire vga2hdmi_i_202_n_0;
  wire vga2hdmi_i_203_n_0;
  wire vga2hdmi_i_204_n_0;
  wire vga2hdmi_i_205_n_0;
  wire vga2hdmi_i_206_n_0;
  wire vga2hdmi_i_207_n_0;
  wire vga2hdmi_i_208_n_0;
  wire vga2hdmi_i_209_n_0;
  wire vga2hdmi_i_210_n_0;
  wire vga2hdmi_i_210_n_1;
  wire vga2hdmi_i_210_n_2;
  wire vga2hdmi_i_210_n_3;
  wire vga2hdmi_i_210_n_4;
  wire vga2hdmi_i_210_n_5;
  wire vga2hdmi_i_210_n_6;
  wire vga2hdmi_i_210_n_7;
  wire vga2hdmi_i_211_n_0;
  wire vga2hdmi_i_212_n_0;
  wire vga2hdmi_i_213_n_0;
  wire vga2hdmi_i_214_n_0;
  wire vga2hdmi_i_215_n_0;
  wire vga2hdmi_i_215_n_1;
  wire vga2hdmi_i_215_n_2;
  wire vga2hdmi_i_215_n_3;
  wire vga2hdmi_i_216_n_0;
  wire vga2hdmi_i_217_n_0;
  wire vga2hdmi_i_218_n_0;
  wire vga2hdmi_i_219_n_0;
  wire vga2hdmi_i_220_n_0;
  wire vga2hdmi_i_221_n_0;
  wire vga2hdmi_i_222_n_0;
  wire vga2hdmi_i_223_n_0;
  wire vga2hdmi_i_224_n_0;
  wire vga2hdmi_i_225_n_0;
  wire vga2hdmi_i_226_n_0;
  wire vga2hdmi_i_227_n_0;
  wire vga2hdmi_i_228_n_0;
  wire vga2hdmi_i_229_n_0;
  wire vga2hdmi_i_230_n_0;
  wire vga2hdmi_i_231_n_0;
  wire vga2hdmi_i_231_n_1;
  wire vga2hdmi_i_231_n_2;
  wire vga2hdmi_i_231_n_3;
  wire vga2hdmi_i_231_n_4;
  wire vga2hdmi_i_231_n_5;
  wire vga2hdmi_i_231_n_6;
  wire vga2hdmi_i_231_n_7;
  wire vga2hdmi_i_232_n_0;
  wire vga2hdmi_i_233_n_0;
  wire vga2hdmi_i_234_n_0;
  wire vga2hdmi_i_235_n_0;
  wire vga2hdmi_i_236_n_0;
  wire vga2hdmi_i_236_n_1;
  wire vga2hdmi_i_236_n_2;
  wire vga2hdmi_i_236_n_3;
  wire vga2hdmi_i_237_n_0;
  wire vga2hdmi_i_238_n_0;
  wire vga2hdmi_i_239_n_0;
  wire vga2hdmi_i_240_n_0;
  wire vga2hdmi_i_241_n_0;
  wire vga2hdmi_i_242_n_0;
  wire vga2hdmi_i_243_n_0;
  wire vga2hdmi_i_244_n_0;
  wire vga2hdmi_i_245_n_0;
  wire vga2hdmi_i_246_n_0;
  wire vga2hdmi_i_247_n_0;
  wire vga2hdmi_i_248_n_0;
  wire vga2hdmi_i_249_n_0;
  wire vga2hdmi_i_250_n_0;
  wire vga2hdmi_i_251_n_0;
  wire vga2hdmi_i_252_n_0;
  wire vga2hdmi_i_253_n_0;
  wire vga2hdmi_i_254_n_0;
  wire vga2hdmi_i_255_n_0;
  wire vga2hdmi_i_256_n_0;
  wire vga2hdmi_i_257_n_0;
  wire vga2hdmi_i_258_n_0;
  wire vga2hdmi_i_259_n_0;
  wire vga2hdmi_i_25_n_1;
  wire vga2hdmi_i_25_n_3;
  wire vga2hdmi_i_25_n_6;
  wire vga2hdmi_i_25_n_7;
  wire vga2hdmi_i_260_n_0;
  wire vga2hdmi_i_261_n_0;
  wire vga2hdmi_i_262_n_0;
  wire vga2hdmi_i_263_n_0;
  wire vga2hdmi_i_264_n_0;
  wire vga2hdmi_i_264_n_1;
  wire vga2hdmi_i_264_n_2;
  wire vga2hdmi_i_264_n_3;
  wire vga2hdmi_i_264_n_4;
  wire vga2hdmi_i_264_n_5;
  wire vga2hdmi_i_264_n_6;
  wire vga2hdmi_i_264_n_7;
  wire vga2hdmi_i_265_n_0;
  wire vga2hdmi_i_266_n_0;
  wire vga2hdmi_i_267_n_0;
  wire vga2hdmi_i_268_n_0;
  wire vga2hdmi_i_269_n_0;
  wire vga2hdmi_i_269_n_1;
  wire vga2hdmi_i_269_n_2;
  wire vga2hdmi_i_269_n_3;
  wire vga2hdmi_i_26_n_0;
  wire vga2hdmi_i_26_n_1;
  wire vga2hdmi_i_26_n_2;
  wire vga2hdmi_i_26_n_3;
  wire vga2hdmi_i_26_n_4;
  wire vga2hdmi_i_26_n_5;
  wire vga2hdmi_i_26_n_6;
  wire vga2hdmi_i_26_n_7;
  wire vga2hdmi_i_270_n_0;
  wire vga2hdmi_i_271_n_0;
  wire vga2hdmi_i_272_n_0;
  wire vga2hdmi_i_273_n_0;
  wire vga2hdmi_i_274_n_0;
  wire vga2hdmi_i_275_n_0;
  wire vga2hdmi_i_276_n_0;
  wire vga2hdmi_i_277_n_0;
  wire vga2hdmi_i_278_n_0;
  wire vga2hdmi_i_278_n_1;
  wire vga2hdmi_i_278_n_2;
  wire vga2hdmi_i_278_n_3;
  wire vga2hdmi_i_278_n_4;
  wire vga2hdmi_i_278_n_5;
  wire vga2hdmi_i_278_n_6;
  wire vga2hdmi_i_278_n_7;
  wire vga2hdmi_i_279_n_0;
  wire vga2hdmi_i_27_n_0;
  wire vga2hdmi_i_280_n_0;
  wire vga2hdmi_i_281_n_0;
  wire vga2hdmi_i_282_n_0;
  wire vga2hdmi_i_283_n_0;
  wire vga2hdmi_i_284_n_0;
  wire vga2hdmi_i_285_n_0;
  wire vga2hdmi_i_286_n_0;
  wire vga2hdmi_i_287_n_0;
  wire vga2hdmi_i_288_n_0;
  wire vga2hdmi_i_289_n_0;
  wire vga2hdmi_i_28_n_0;
  wire vga2hdmi_i_28_n_1;
  wire vga2hdmi_i_28_n_2;
  wire vga2hdmi_i_28_n_3;
  wire vga2hdmi_i_28_n_4;
  wire vga2hdmi_i_28_n_5;
  wire vga2hdmi_i_290_n_0;
  wire vga2hdmi_i_290_n_1;
  wire vga2hdmi_i_290_n_2;
  wire vga2hdmi_i_290_n_3;
  wire vga2hdmi_i_290_n_4;
  wire vga2hdmi_i_290_n_5;
  wire vga2hdmi_i_290_n_6;
  wire vga2hdmi_i_290_n_7;
  wire vga2hdmi_i_291_n_0;
  wire vga2hdmi_i_292_n_0;
  wire vga2hdmi_i_293_n_0;
  wire vga2hdmi_i_294_n_0;
  wire vga2hdmi_i_295_n_0;
  wire vga2hdmi_i_296_n_0;
  wire vga2hdmi_i_297_n_0;
  wire vga2hdmi_i_298_n_0;
  wire vga2hdmi_i_299_n_0;
  wire vga2hdmi_i_29_n_3;
  wire vga2hdmi_i_300_n_0;
  wire vga2hdmi_i_301_n_0;
  wire vga2hdmi_i_302_n_0;
  wire vga2hdmi_i_302_n_1;
  wire vga2hdmi_i_302_n_2;
  wire vga2hdmi_i_302_n_3;
  wire vga2hdmi_i_302_n_4;
  wire vga2hdmi_i_302_n_5;
  wire vga2hdmi_i_302_n_6;
  wire vga2hdmi_i_302_n_7;
  wire vga2hdmi_i_303_n_0;
  wire vga2hdmi_i_304_n_0;
  wire vga2hdmi_i_305_n_0;
  wire vga2hdmi_i_306_n_0;
  wire vga2hdmi_i_307_n_0;
  wire vga2hdmi_i_308_n_0;
  wire vga2hdmi_i_309_n_0;
  wire vga2hdmi_i_30_n_3;
  wire vga2hdmi_i_30_n_6;
  wire vga2hdmi_i_30_n_7;
  wire vga2hdmi_i_310_n_0;
  wire vga2hdmi_i_311_n_0;
  wire vga2hdmi_i_312_n_0;
  wire vga2hdmi_i_313_n_0;
  wire vga2hdmi_i_314_n_0;
  wire vga2hdmi_i_315_n_0;
  wire vga2hdmi_i_316_n_0;
  wire vga2hdmi_i_317_n_0;
  wire vga2hdmi_i_318_n_0;
  wire vga2hdmi_i_319_n_0;
  wire vga2hdmi_i_31_n_3;
  wire vga2hdmi_i_320_n_0;
  wire vga2hdmi_i_321_n_0;
  wire vga2hdmi_i_322_n_0;
  wire vga2hdmi_i_32_n_0;
  wire vga2hdmi_i_32_n_2;
  wire vga2hdmi_i_32_n_3;
  wire vga2hdmi_i_32_n_5;
  wire vga2hdmi_i_32_n_6;
  wire vga2hdmi_i_32_n_7;
  wire vga2hdmi_i_33_n_0;
  wire vga2hdmi_i_33_n_1;
  wire vga2hdmi_i_33_n_2;
  wire vga2hdmi_i_33_n_3;
  wire vga2hdmi_i_33_n_4;
  wire vga2hdmi_i_33_n_5;
  wire vga2hdmi_i_33_n_6;
  wire vga2hdmi_i_33_n_7;
  wire vga2hdmi_i_34_n_0;
  wire vga2hdmi_i_35_n_2;
  wire vga2hdmi_i_35_n_3;
  wire vga2hdmi_i_36_n_2;
  wire vga2hdmi_i_36_n_3;
  wire vga2hdmi_i_36_n_5;
  wire vga2hdmi_i_36_n_6;
  wire vga2hdmi_i_36_n_7;
  wire vga2hdmi_i_37_n_2;
  wire vga2hdmi_i_37_n_3;
  wire vga2hdmi_i_38_n_0;
  wire vga2hdmi_i_38_n_1;
  wire vga2hdmi_i_38_n_2;
  wire vga2hdmi_i_38_n_3;
  wire vga2hdmi_i_38_n_4;
  wire vga2hdmi_i_39_n_1;
  wire vga2hdmi_i_39_n_3;
  wire vga2hdmi_i_39_n_6;
  wire vga2hdmi_i_39_n_7;
  wire vga2hdmi_i_40_n_0;
  wire vga2hdmi_i_40_n_1;
  wire vga2hdmi_i_40_n_2;
  wire vga2hdmi_i_40_n_3;
  wire vga2hdmi_i_40_n_4;
  wire vga2hdmi_i_40_n_5;
  wire vga2hdmi_i_40_n_6;
  wire vga2hdmi_i_40_n_7;
  wire vga2hdmi_i_41_n_0;
  wire vga2hdmi_i_42_n_0;
  wire vga2hdmi_i_42_n_1;
  wire vga2hdmi_i_42_n_2;
  wire vga2hdmi_i_42_n_3;
  wire vga2hdmi_i_42_n_4;
  wire vga2hdmi_i_42_n_5;
  wire vga2hdmi_i_43_n_3;
  wire vga2hdmi_i_44_n_3;
  wire vga2hdmi_i_44_n_6;
  wire vga2hdmi_i_44_n_7;
  wire vga2hdmi_i_45_n_3;
  wire vga2hdmi_i_46_n_0;
  wire vga2hdmi_i_46_n_1;
  wire vga2hdmi_i_46_n_2;
  wire vga2hdmi_i_46_n_3;
  wire vga2hdmi_i_47_n_0;
  wire vga2hdmi_i_48_n_0;
  wire vga2hdmi_i_48_n_1;
  wire vga2hdmi_i_48_n_2;
  wire vga2hdmi_i_48_n_3;
  wire vga2hdmi_i_49_n_0;
  wire vga2hdmi_i_50_n_0;
  wire vga2hdmi_i_51_n_0;
  wire vga2hdmi_i_52_n_0;
  wire vga2hdmi_i_53_n_0;
  wire vga2hdmi_i_54_n_0;
  wire vga2hdmi_i_55_n_0;
  wire vga2hdmi_i_56_n_0;
  wire vga2hdmi_i_56_n_1;
  wire vga2hdmi_i_56_n_2;
  wire vga2hdmi_i_56_n_3;
  wire vga2hdmi_i_56_n_4;
  wire vga2hdmi_i_56_n_5;
  wire vga2hdmi_i_56_n_6;
  wire vga2hdmi_i_56_n_7;
  wire vga2hdmi_i_57_n_0;
  wire vga2hdmi_i_58_n_0;
  wire vga2hdmi_i_59_n_0;
  wire vga2hdmi_i_60_n_0;
  wire vga2hdmi_i_60_n_1;
  wire vga2hdmi_i_60_n_2;
  wire vga2hdmi_i_60_n_3;
  wire vga2hdmi_i_61_n_0;
  wire vga2hdmi_i_62_n_0;
  wire vga2hdmi_i_63_n_0;
  wire vga2hdmi_i_63_n_1;
  wire vga2hdmi_i_63_n_2;
  wire vga2hdmi_i_63_n_3;
  wire vga2hdmi_i_64_n_0;
  wire vga2hdmi_i_65_n_0;
  wire vga2hdmi_i_66_n_0;
  wire vga2hdmi_i_67_n_0;
  wire vga2hdmi_i_68_n_0;
  wire vga2hdmi_i_69_n_0;
  wire vga2hdmi_i_69_n_1;
  wire vga2hdmi_i_69_n_2;
  wire vga2hdmi_i_69_n_3;
  wire vga2hdmi_i_69_n_4;
  wire vga2hdmi_i_69_n_5;
  wire vga2hdmi_i_69_n_6;
  wire vga2hdmi_i_69_n_7;
  wire vga2hdmi_i_70_n_0;
  wire vga2hdmi_i_71_n_0;
  wire vga2hdmi_i_72_n_0;
  wire vga2hdmi_i_73_n_0;
  wire vga2hdmi_i_74_n_0;
  wire vga2hdmi_i_75_n_0;
  wire vga2hdmi_i_75_n_1;
  wire vga2hdmi_i_75_n_2;
  wire vga2hdmi_i_75_n_3;
  wire vga2hdmi_i_76_n_0;
  wire vga2hdmi_i_77_n_0;
  wire vga2hdmi_i_78_n_0;
  wire vga2hdmi_i_79_n_0;
  wire vga2hdmi_i_80_n_0;
  wire vga2hdmi_i_80_n_1;
  wire vga2hdmi_i_80_n_2;
  wire vga2hdmi_i_80_n_3;
  wire vga2hdmi_i_81_n_0;
  wire vga2hdmi_i_82_n_0;
  wire vga2hdmi_i_83_n_0;
  wire vga2hdmi_i_84_n_0;
  wire vga2hdmi_i_85_n_0;
  wire vga2hdmi_i_85_n_1;
  wire vga2hdmi_i_85_n_2;
  wire vga2hdmi_i_85_n_3;
  wire vga2hdmi_i_86_n_0;
  wire vga2hdmi_i_87_n_0;
  wire vga2hdmi_i_87_n_1;
  wire vga2hdmi_i_87_n_2;
  wire vga2hdmi_i_87_n_3;
  wire vga2hdmi_i_88_n_0;
  wire vga2hdmi_i_89_n_0;
  wire vga2hdmi_i_90_n_0;
  wire vga2hdmi_i_91_n_0;
  wire vga2hdmi_i_92_n_0;
  wire vga2hdmi_i_93_n_0;
  wire vga2hdmi_i_94_n_0;
  wire vga2hdmi_i_95_n_0;
  wire vga2hdmi_i_95_n_1;
  wire vga2hdmi_i_95_n_2;
  wire vga2hdmi_i_95_n_3;
  wire vga2hdmi_i_95_n_4;
  wire vga2hdmi_i_95_n_5;
  wire vga2hdmi_i_95_n_6;
  wire vga2hdmi_i_95_n_7;
  wire vga2hdmi_i_96_n_0;
  wire vga2hdmi_i_97_n_0;
  wire vga2hdmi_i_98_n_0;
  wire vga2hdmi_i_99_n_0;
  wire vga2hdmi_i_99_n_1;
  wire vga2hdmi_i_99_n_2;
  wire vga2hdmi_i_99_n_3;
  wire vid;
  wire vs;
  wire [2:2]NLW_vga2hdmi_i_102_CO_UNCONNECTED;
  wire [3:3]NLW_vga2hdmi_i_102_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_124_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_124_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_125_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_134_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_134_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_151_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_151_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_152_O_UNCONNECTED;
  wire [2:2]NLW_vga2hdmi_i_166_CO_UNCONNECTED;
  wire [3:3]NLW_vga2hdmi_i_166_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_188_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_188_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_189_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_215_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_236_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_25_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_25_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_269_O_UNCONNECTED;
  wire [1:0]NLW_vga2hdmi_i_28_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_29_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_29_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_30_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_30_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_31_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_31_O_UNCONNECTED;
  wire [2:2]NLW_vga2hdmi_i_32_CO_UNCONNECTED;
  wire [3:3]NLW_vga2hdmi_i_32_O_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_35_CO_UNCONNECTED;
  wire [3:3]NLW_vga2hdmi_i_35_O_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_36_CO_UNCONNECTED;
  wire [3:3]NLW_vga2hdmi_i_36_O_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_37_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_37_O_UNCONNECTED;
  wire [2:0]NLW_vga2hdmi_i_38_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_39_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_39_O_UNCONNECTED;
  wire [1:0]NLW_vga2hdmi_i_42_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_43_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_43_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_44_CO_UNCONNECTED;
  wire [3:2]NLW_vga2hdmi_i_44_O_UNCONNECTED;
  wire [3:1]NLW_vga2hdmi_i_45_CO_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_45_O_UNCONNECTED;
  wire [0:0]NLW_vga2hdmi_i_46_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_48_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_60_O_UNCONNECTED;
  wire [0:0]NLW_vga2hdmi_i_63_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_75_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_80_O_UNCONNECTED;
  wire [0:0]NLW_vga2hdmi_i_85_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_87_O_UNCONNECTED;
  wire [3:0]NLW_vga2hdmi_i_99_O_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "rgb2dvi_0,rgb2dvi,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "rgb2dvi,Vivado 2018.2" *) 
  processor_design_hdmi_out_0_0_rgb2dvi_0 vga2hdmi
       (.PixelClk(en),
        .SerialClk(clk),
        .TMDS_Clk_n(hdmi_tx_clk_n),
        .TMDS_Clk_p(hdmi_tx_clk_p),
        .TMDS_Data_n(hdmi_tx_n),
        .TMDS_Data_p(hdmi_tx_p),
        .aRst(1'b0),
        .vid_pData({r8,g8,b8}),
        .vid_pHSync(hs),
        .vid_pVDE(vid),
        .vid_pVSync(vs));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    vga2hdmi_i_1
       (.I0(vga2hdmi_i_25_n_7),
        .I1(vga2hdmi_i_26_n_5),
        .I2(vga2hdmi_i_27_n_0),
        .I3(vga2hdmi_i_26_n_6),
        .I4(vga2hdmi_i_26_n_4),
        .I5(vga2hdmi_i_25_n_6),
        .O(r8[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    vga2hdmi_i_10
       (.I0(vga2hdmi_i_32_n_7),
        .I1(vga2hdmi_i_33_n_5),
        .I2(vga2hdmi_i_34_n_0),
        .I3(vga2hdmi_i_33_n_4),
        .I4(vga2hdmi_i_32_n_6),
        .O(g8[6]));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_100
       (.I0(vga2hdmi_i_44_n_7),
        .I1(b80[11]),
        .O(vga2hdmi_i_100_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_101
       (.I0(b80[11]),
        .I1(vga2hdmi_i_44_n_7),
        .I2(b80[12]),
        .I3(vga2hdmi_i_44_n_6),
        .O(vga2hdmi_i_101_n_0));
  CARRY4 vga2hdmi_i_102
       (.CI(1'b0),
        .CO({vga2hdmi_i_102_n_0,NLW_vga2hdmi_i_102_CO_UNCONNECTED[2],vga2hdmi_i_102_n_2,vga2hdmi_i_102_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,vga2hdmi_i_198_n_0,vga2hdmi_i_199_n_0,1'b0}),
        .O({NLW_vga2hdmi_i_102_O_UNCONNECTED[3],r80[5:3]}),
        .S({1'b1,vga2hdmi_i_200_n_0,vga2hdmi_i_201_n_0,vga2hdmi_i_202_n_0}));
  LUT3 #(
    .INIT(8'h1F)) 
    vga2hdmi_i_103
       (.I0(r[1]),
        .I1(r[0]),
        .I2(r[2]),
        .O(vga2hdmi_i_103_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    vga2hdmi_i_104
       (.I0(r[2]),
        .I1(r[1]),
        .I2(r[0]),
        .O(vga2hdmi_i_104_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    vga2hdmi_i_105
       (.I0(r[2]),
        .I1(r[0]),
        .I2(r[1]),
        .O(vga2hdmi_i_105_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    vga2hdmi_i_106
       (.I0(r[2]),
        .I1(r[0]),
        .I2(r[1]),
        .O(vga2hdmi_i_106_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_107
       (.I0(r[1]),
        .O(vga2hdmi_i_107_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_108
       (.I0(r[0]),
        .O(vga2hdmi_i_108_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_109
       (.I0(vga2hdmi_i_102_n_0),
        .O(r80[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    vga2hdmi_i_11
       (.I0(vga2hdmi_i_33_n_4),
        .I1(vga2hdmi_i_34_n_0),
        .I2(vga2hdmi_i_33_n_5),
        .I3(vga2hdmi_i_32_n_7),
        .O(g8[5]));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_110
       (.I0(vga2hdmi_i_102_n_0),
        .O(vga2hdmi_i_110_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    vga2hdmi_i_111
       (.I0(vga2hdmi_i_102_n_0),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .O(vga2hdmi_i_111_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_112
       (.I0(vga2hdmi_i_102_n_0),
        .I1(r[1]),
        .I2(r[0]),
        .O(vga2hdmi_i_112_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_113
       (.I0(r80[5]),
        .I1(r[0]),
        .O(vga2hdmi_i_113_n_0));
  CARRY4 vga2hdmi_i_114
       (.CI(1'b0),
        .CO({vga2hdmi_i_114_n_0,vga2hdmi_i_114_n_1,vga2hdmi_i_114_n_2,vga2hdmi_i_114_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_203_n_0,vga2hdmi_i_204_n_0,vga2hdmi_i_205_n_0,1'b0}),
        .O({vga2hdmi_i_114_n_4,vga2hdmi_i_114_n_5,vga2hdmi_i_114_n_6,vga2hdmi_i_114_n_7}),
        .S({vga2hdmi_i_206_n_0,vga2hdmi_i_207_n_0,vga2hdmi_i_208_n_0,vga2hdmi_i_209_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_115
       (.I0(vga2hdmi_i_25_n_7),
        .I1(vga2hdmi_i_26_n_5),
        .I2(vga2hdmi_i_123_n_6),
        .O(vga2hdmi_i_115_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_116
       (.I0(vga2hdmi_i_123_n_7),
        .I1(vga2hdmi_i_26_n_4),
        .I2(vga2hdmi_i_26_n_6),
        .O(vga2hdmi_i_116_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_117
       (.I0(vga2hdmi_i_210_n_4),
        .I1(vga2hdmi_i_26_n_5),
        .I2(vga2hdmi_i_26_n_7),
        .O(vga2hdmi_i_117_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_118
       (.I0(vga2hdmi_i_210_n_5),
        .I1(vga2hdmi_i_26_n_6),
        .I2(vga2hdmi_i_28_n_4),
        .O(vga2hdmi_i_118_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_119
       (.I0(vga2hdmi_i_123_n_6),
        .I1(vga2hdmi_i_26_n_5),
        .I2(vga2hdmi_i_25_n_7),
        .I3(vga2hdmi_i_25_n_6),
        .I4(vga2hdmi_i_123_n_5),
        .I5(vga2hdmi_i_26_n_4),
        .O(vga2hdmi_i_119_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    vga2hdmi_i_12
       (.I0(vga2hdmi_i_33_n_5),
        .I1(vga2hdmi_i_34_n_0),
        .I2(vga2hdmi_i_33_n_4),
        .O(g8[4]));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_120
       (.I0(vga2hdmi_i_26_n_6),
        .I1(vga2hdmi_i_26_n_4),
        .I2(vga2hdmi_i_123_n_7),
        .I3(vga2hdmi_i_25_n_7),
        .I4(vga2hdmi_i_123_n_6),
        .I5(vga2hdmi_i_26_n_5),
        .O(vga2hdmi_i_120_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_121
       (.I0(vga2hdmi_i_26_n_7),
        .I1(vga2hdmi_i_26_n_5),
        .I2(vga2hdmi_i_210_n_4),
        .I3(vga2hdmi_i_123_n_7),
        .I4(vga2hdmi_i_26_n_4),
        .I5(vga2hdmi_i_26_n_6),
        .O(vga2hdmi_i_121_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_122
       (.I0(vga2hdmi_i_28_n_4),
        .I1(vga2hdmi_i_26_n_6),
        .I2(vga2hdmi_i_210_n_5),
        .I3(vga2hdmi_i_210_n_4),
        .I4(vga2hdmi_i_26_n_5),
        .I5(vga2hdmi_i_26_n_7),
        .O(vga2hdmi_i_122_n_0));
  CARRY4 vga2hdmi_i_123
       (.CI(vga2hdmi_i_210_n_0),
        .CO({vga2hdmi_i_123_n_0,vga2hdmi_i_123_n_1,vga2hdmi_i_123_n_2,vga2hdmi_i_123_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_25_n_1,vga2hdmi_i_25_n_6,vga2hdmi_i_25_n_7,vga2hdmi_i_26_n_4}),
        .O({vga2hdmi_i_123_n_4,vga2hdmi_i_123_n_5,vga2hdmi_i_123_n_6,vga2hdmi_i_123_n_7}),
        .S({vga2hdmi_i_211_n_0,vga2hdmi_i_212_n_0,vga2hdmi_i_213_n_0,vga2hdmi_i_214_n_0}));
  CARRY4 vga2hdmi_i_124
       (.CI(vga2hdmi_i_123_n_0),
        .CO({NLW_vga2hdmi_i_124_CO_UNCONNECTED[3:1],vga2hdmi_i_124_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vga2hdmi_i_124_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 vga2hdmi_i_125
       (.CI(vga2hdmi_i_215_n_0),
        .CO({vga2hdmi_i_125_n_0,vga2hdmi_i_125_n_1,vga2hdmi_i_125_n_2,vga2hdmi_i_125_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_216_n_0,vga2hdmi_i_217_n_0,vga2hdmi_i_218_n_0,vga2hdmi_i_219_n_0}),
        .O(NLW_vga2hdmi_i_125_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_220_n_0,vga2hdmi_i_221_n_0,vga2hdmi_i_222_n_0,vga2hdmi_i_223_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_126
       (.I0(vga2hdmi_i_56_n_4),
        .I1(r80[10]),
        .O(vga2hdmi_i_126_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_127
       (.I0(vga2hdmi_i_56_n_5),
        .I1(r80[9]),
        .O(vga2hdmi_i_127_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_128
       (.I0(vga2hdmi_i_56_n_6),
        .I1(r80[8]),
        .O(vga2hdmi_i_128_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    vga2hdmi_i_129
       (.I0(vga2hdmi_i_56_n_7),
        .I1(vga2hdmi_i_102_n_0),
        .O(vga2hdmi_i_129_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_13
       (.I0(vga2hdmi_i_34_n_0),
        .I1(vga2hdmi_i_33_n_5),
        .O(g8[3]));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_130
       (.I0(r80[10]),
        .I1(vga2hdmi_i_56_n_4),
        .I2(r80[11]),
        .I3(vga2hdmi_i_30_n_7),
        .O(vga2hdmi_i_130_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_131
       (.I0(r80[9]),
        .I1(vga2hdmi_i_56_n_5),
        .I2(r80[10]),
        .I3(vga2hdmi_i_56_n_4),
        .O(vga2hdmi_i_131_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_132
       (.I0(r80[8]),
        .I1(vga2hdmi_i_56_n_6),
        .I2(r80[9]),
        .I3(vga2hdmi_i_56_n_5),
        .O(vga2hdmi_i_132_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    vga2hdmi_i_133
       (.I0(vga2hdmi_i_102_n_0),
        .I1(vga2hdmi_i_56_n_7),
        .I2(r80[8]),
        .I3(vga2hdmi_i_56_n_6),
        .O(vga2hdmi_i_133_n_0));
  CARRY4 vga2hdmi_i_134
       (.CI(vga2hdmi_i_162_n_0),
        .CO({NLW_vga2hdmi_i_134_CO_UNCONNECTED[3:1],vga2hdmi_i_134_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vga2hdmi_i_134_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  LUT3 #(
    .INIT(8'h1F)) 
    vga2hdmi_i_135
       (.I0(g[1]),
        .I1(g[0]),
        .I2(g[2]),
        .O(vga2hdmi_i_135_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    vga2hdmi_i_136
       (.I0(g[2]),
        .I1(g[1]),
        .I2(g[0]),
        .O(vga2hdmi_i_136_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    vga2hdmi_i_137
       (.I0(g[2]),
        .I1(g[0]),
        .I2(g[1]),
        .O(vga2hdmi_i_137_n_0));
  LUT3 #(
    .INIT(8'h95)) 
    vga2hdmi_i_138
       (.I0(g[2]),
        .I1(g[0]),
        .I2(g[1]),
        .O(vga2hdmi_i_138_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_139
       (.I0(g[1]),
        .O(vga2hdmi_i_139_n_0));
  LUT6 #(
    .INIT(64'hFF75FFFF008A0000)) 
    vga2hdmi_i_14
       (.I0(vga2hdmi_i_33_n_7),
        .I1(g80[13]),
        .I2(vga2hdmi_i_36_n_5),
        .I3(vga2hdmi_i_37_n_2),
        .I4(vga2hdmi_i_38_n_4),
        .I5(vga2hdmi_i_33_n_6),
        .O(g8[2]));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_140
       (.I0(g[0]),
        .O(vga2hdmi_i_140_n_0));
  CARRY4 vga2hdmi_i_141
       (.CI(1'b0),
        .CO({vga2hdmi_i_141_n_0,vga2hdmi_i_141_n_1,vga2hdmi_i_141_n_2,vga2hdmi_i_141_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_224_n_0,vga2hdmi_i_225_n_0,vga2hdmi_i_226_n_0,1'b0}),
        .O({vga2hdmi_i_141_n_4,vga2hdmi_i_141_n_5,vga2hdmi_i_141_n_6,vga2hdmi_i_141_n_7}),
        .S({vga2hdmi_i_227_n_0,vga2hdmi_i_228_n_0,vga2hdmi_i_229_n_0,vga2hdmi_i_230_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_142
       (.I0(vga2hdmi_i_32_n_6),
        .I1(vga2hdmi_i_33_n_5),
        .I2(vga2hdmi_i_150_n_6),
        .O(vga2hdmi_i_142_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_143
       (.I0(vga2hdmi_i_150_n_7),
        .I1(vga2hdmi_i_32_n_7),
        .I2(vga2hdmi_i_33_n_6),
        .O(vga2hdmi_i_143_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_144
       (.I0(vga2hdmi_i_231_n_4),
        .I1(vga2hdmi_i_33_n_4),
        .I2(vga2hdmi_i_33_n_7),
        .O(vga2hdmi_i_144_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_145
       (.I0(vga2hdmi_i_231_n_5),
        .I1(vga2hdmi_i_33_n_5),
        .I2(vga2hdmi_i_38_n_4),
        .O(vga2hdmi_i_145_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_146
       (.I0(vga2hdmi_i_150_n_6),
        .I1(vga2hdmi_i_33_n_5),
        .I2(vga2hdmi_i_32_n_6),
        .I3(vga2hdmi_i_32_n_5),
        .I4(vga2hdmi_i_150_n_5),
        .I5(vga2hdmi_i_33_n_4),
        .O(vga2hdmi_i_146_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_147
       (.I0(vga2hdmi_i_33_n_6),
        .I1(vga2hdmi_i_32_n_7),
        .I2(vga2hdmi_i_150_n_7),
        .I3(vga2hdmi_i_32_n_6),
        .I4(vga2hdmi_i_150_n_6),
        .I5(vga2hdmi_i_33_n_5),
        .O(vga2hdmi_i_147_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_148
       (.I0(vga2hdmi_i_33_n_7),
        .I1(vga2hdmi_i_33_n_4),
        .I2(vga2hdmi_i_231_n_4),
        .I3(vga2hdmi_i_150_n_7),
        .I4(vga2hdmi_i_32_n_7),
        .I5(vga2hdmi_i_33_n_6),
        .O(vga2hdmi_i_148_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_149
       (.I0(vga2hdmi_i_38_n_4),
        .I1(vga2hdmi_i_33_n_5),
        .I2(vga2hdmi_i_231_n_5),
        .I3(vga2hdmi_i_231_n_4),
        .I4(vga2hdmi_i_33_n_4),
        .I5(vga2hdmi_i_33_n_7),
        .O(vga2hdmi_i_149_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hDDFD2202)) 
    vga2hdmi_i_15
       (.I0(vga2hdmi_i_38_n_4),
        .I1(vga2hdmi_i_37_n_2),
        .I2(vga2hdmi_i_36_n_5),
        .I3(g80[13]),
        .I4(vga2hdmi_i_33_n_7),
        .O(g8[1]));
  CARRY4 vga2hdmi_i_150
       (.CI(vga2hdmi_i_231_n_0),
        .CO({vga2hdmi_i_150_n_0,vga2hdmi_i_150_n_1,vga2hdmi_i_150_n_2,vga2hdmi_i_150_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_32_n_0,vga2hdmi_i_32_n_5,vga2hdmi_i_32_n_6,vga2hdmi_i_32_n_7}),
        .O({vga2hdmi_i_150_n_4,vga2hdmi_i_150_n_5,vga2hdmi_i_150_n_6,vga2hdmi_i_150_n_7}),
        .S({vga2hdmi_i_232_n_0,vga2hdmi_i_233_n_0,vga2hdmi_i_234_n_0,vga2hdmi_i_235_n_0}));
  CARRY4 vga2hdmi_i_151
       (.CI(vga2hdmi_i_150_n_0),
        .CO({NLW_vga2hdmi_i_151_CO_UNCONNECTED[3:1],vga2hdmi_i_151_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vga2hdmi_i_151_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 vga2hdmi_i_152
       (.CI(vga2hdmi_i_236_n_0),
        .CO({vga2hdmi_i_152_n_0,vga2hdmi_i_152_n_1,vga2hdmi_i_152_n_2,vga2hdmi_i_152_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_237_n_0,vga2hdmi_i_238_n_0,vga2hdmi_i_239_n_0,vga2hdmi_i_240_n_0}),
        .O(NLW_vga2hdmi_i_152_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_241_n_0,vga2hdmi_i_242_n_0,vga2hdmi_i_243_n_0,vga2hdmi_i_244_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_153
       (.I0(vga2hdmi_i_69_n_4),
        .I1(g80[10]),
        .O(vga2hdmi_i_153_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_154
       (.I0(vga2hdmi_i_69_n_5),
        .I1(g80[9]),
        .O(vga2hdmi_i_154_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_155
       (.I0(vga2hdmi_i_69_n_6),
        .I1(g80[8]),
        .O(vga2hdmi_i_155_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    vga2hdmi_i_156
       (.I0(vga2hdmi_i_69_n_7),
        .I1(vga2hdmi_i_134_n_3),
        .O(vga2hdmi_i_156_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_157
       (.I0(g80[10]),
        .I1(vga2hdmi_i_69_n_4),
        .I2(g80[11]),
        .I3(vga2hdmi_i_36_n_7),
        .O(vga2hdmi_i_157_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_158
       (.I0(g80[9]),
        .I1(vga2hdmi_i_69_n_5),
        .I2(g80[10]),
        .I3(vga2hdmi_i_69_n_4),
        .O(vga2hdmi_i_158_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_159
       (.I0(g80[8]),
        .I1(vga2hdmi_i_69_n_6),
        .I2(g80[9]),
        .I3(vga2hdmi_i_69_n_5),
        .O(vga2hdmi_i_159_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hF40B)) 
    vga2hdmi_i_16
       (.I0(g80[13]),
        .I1(vga2hdmi_i_36_n_5),
        .I2(vga2hdmi_i_37_n_2),
        .I3(vga2hdmi_i_38_n_4),
        .O(g8[0]));
  LUT4 #(
    .INIT(16'h7887)) 
    vga2hdmi_i_160
       (.I0(vga2hdmi_i_134_n_3),
        .I1(vga2hdmi_i_69_n_7),
        .I2(g80[8]),
        .I3(vga2hdmi_i_69_n_6),
        .O(vga2hdmi_i_160_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_161
       (.I0(vga2hdmi_i_134_n_3),
        .O(g80[7]));
  CARRY4 vga2hdmi_i_162
       (.CI(1'b0),
        .CO({vga2hdmi_i_162_n_0,vga2hdmi_i_162_n_1,vga2hdmi_i_162_n_2,vga2hdmi_i_162_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_245_n_0,vga2hdmi_i_246_n_0,vga2hdmi_i_247_n_0,1'b0}),
        .O(g80[6:3]),
        .S({vga2hdmi_i_248_n_0,vga2hdmi_i_249_n_0,vga2hdmi_i_250_n_0,vga2hdmi_i_251_n_0}));
  LUT4 #(
    .INIT(16'h9996)) 
    vga2hdmi_i_163
       (.I0(g80[8]),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .O(vga2hdmi_i_163_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_164
       (.I0(vga2hdmi_i_134_n_3),
        .I1(g[1]),
        .I2(g[0]),
        .O(vga2hdmi_i_164_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_165
       (.I0(g80[6]),
        .I1(g[0]),
        .O(vga2hdmi_i_165_n_0));
  CARRY4 vga2hdmi_i_166
       (.CI(1'b0),
        .CO({vga2hdmi_i_166_n_0,NLW_vga2hdmi_i_166_CO_UNCONNECTED[2],vga2hdmi_i_166_n_2,vga2hdmi_i_166_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,vga2hdmi_i_252_n_0,vga2hdmi_i_253_n_0,1'b0}),
        .O({NLW_vga2hdmi_i_166_O_UNCONNECTED[3],b80[5:3]}),
        .S({1'b1,vga2hdmi_i_254_n_0,vga2hdmi_i_255_n_0,vga2hdmi_i_256_n_0}));
  LUT3 #(
    .INIT(8'h1F)) 
    vga2hdmi_i_167
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .O(vga2hdmi_i_167_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    vga2hdmi_i_168
       (.I0(b[2]),
        .I1(b[1]),
        .I2(b[0]),
        .O(vga2hdmi_i_168_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    vga2hdmi_i_169
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .O(vga2hdmi_i_169_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    vga2hdmi_i_17
       (.I0(vga2hdmi_i_39_n_7),
        .I1(vga2hdmi_i_40_n_5),
        .I2(vga2hdmi_i_41_n_0),
        .I3(vga2hdmi_i_40_n_6),
        .I4(vga2hdmi_i_40_n_4),
        .I5(vga2hdmi_i_39_n_6),
        .O(b8[7]));
  LUT3 #(
    .INIT(8'h95)) 
    vga2hdmi_i_170
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .O(vga2hdmi_i_170_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_171
       (.I0(b[1]),
        .O(vga2hdmi_i_171_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_172
       (.I0(b[0]),
        .O(vga2hdmi_i_172_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_173
       (.I0(vga2hdmi_i_166_n_0),
        .O(b80[7]));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_174
       (.I0(vga2hdmi_i_166_n_0),
        .O(vga2hdmi_i_174_n_0));
  LUT4 #(
    .INIT(16'h6669)) 
    vga2hdmi_i_175
       (.I0(vga2hdmi_i_166_n_0),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .O(vga2hdmi_i_175_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_176
       (.I0(vga2hdmi_i_166_n_0),
        .I1(b[1]),
        .I2(b[0]),
        .O(vga2hdmi_i_176_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_177
       (.I0(b80[5]),
        .I1(b[0]),
        .O(vga2hdmi_i_177_n_0));
  CARRY4 vga2hdmi_i_178
       (.CI(1'b0),
        .CO({vga2hdmi_i_178_n_0,vga2hdmi_i_178_n_1,vga2hdmi_i_178_n_2,vga2hdmi_i_178_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_257_n_0,vga2hdmi_i_258_n_0,vga2hdmi_i_259_n_0,1'b0}),
        .O({vga2hdmi_i_178_n_4,vga2hdmi_i_178_n_5,vga2hdmi_i_178_n_6,vga2hdmi_i_178_n_7}),
        .S({vga2hdmi_i_260_n_0,vga2hdmi_i_261_n_0,vga2hdmi_i_262_n_0,vga2hdmi_i_263_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_179
       (.I0(vga2hdmi_i_39_n_7),
        .I1(vga2hdmi_i_40_n_5),
        .I2(vga2hdmi_i_187_n_6),
        .O(vga2hdmi_i_179_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    vga2hdmi_i_18
       (.I0(vga2hdmi_i_40_n_4),
        .I1(vga2hdmi_i_40_n_6),
        .I2(vga2hdmi_i_41_n_0),
        .I3(vga2hdmi_i_40_n_5),
        .I4(vga2hdmi_i_39_n_7),
        .O(b8[6]));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_180
       (.I0(vga2hdmi_i_187_n_7),
        .I1(vga2hdmi_i_40_n_4),
        .I2(vga2hdmi_i_40_n_6),
        .O(vga2hdmi_i_180_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_181
       (.I0(vga2hdmi_i_264_n_4),
        .I1(vga2hdmi_i_40_n_5),
        .I2(vga2hdmi_i_40_n_7),
        .O(vga2hdmi_i_181_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_182
       (.I0(vga2hdmi_i_264_n_5),
        .I1(vga2hdmi_i_40_n_6),
        .I2(vga2hdmi_i_42_n_4),
        .O(vga2hdmi_i_182_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_183
       (.I0(vga2hdmi_i_187_n_6),
        .I1(vga2hdmi_i_40_n_5),
        .I2(vga2hdmi_i_39_n_7),
        .I3(vga2hdmi_i_39_n_6),
        .I4(vga2hdmi_i_187_n_5),
        .I5(vga2hdmi_i_40_n_4),
        .O(vga2hdmi_i_183_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_184
       (.I0(vga2hdmi_i_40_n_6),
        .I1(vga2hdmi_i_40_n_4),
        .I2(vga2hdmi_i_187_n_7),
        .I3(vga2hdmi_i_39_n_7),
        .I4(vga2hdmi_i_187_n_6),
        .I5(vga2hdmi_i_40_n_5),
        .O(vga2hdmi_i_184_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_185
       (.I0(vga2hdmi_i_40_n_7),
        .I1(vga2hdmi_i_40_n_5),
        .I2(vga2hdmi_i_264_n_4),
        .I3(vga2hdmi_i_187_n_7),
        .I4(vga2hdmi_i_40_n_4),
        .I5(vga2hdmi_i_40_n_6),
        .O(vga2hdmi_i_185_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_186
       (.I0(vga2hdmi_i_42_n_4),
        .I1(vga2hdmi_i_40_n_6),
        .I2(vga2hdmi_i_264_n_5),
        .I3(vga2hdmi_i_264_n_4),
        .I4(vga2hdmi_i_40_n_5),
        .I5(vga2hdmi_i_40_n_7),
        .O(vga2hdmi_i_186_n_0));
  CARRY4 vga2hdmi_i_187
       (.CI(vga2hdmi_i_264_n_0),
        .CO({vga2hdmi_i_187_n_0,vga2hdmi_i_187_n_1,vga2hdmi_i_187_n_2,vga2hdmi_i_187_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_39_n_1,vga2hdmi_i_39_n_6,vga2hdmi_i_39_n_7,vga2hdmi_i_40_n_4}),
        .O({vga2hdmi_i_187_n_4,vga2hdmi_i_187_n_5,vga2hdmi_i_187_n_6,vga2hdmi_i_187_n_7}),
        .S({vga2hdmi_i_265_n_0,vga2hdmi_i_266_n_0,vga2hdmi_i_267_n_0,vga2hdmi_i_268_n_0}));
  CARRY4 vga2hdmi_i_188
       (.CI(vga2hdmi_i_187_n_0),
        .CO({NLW_vga2hdmi_i_188_CO_UNCONNECTED[3:1],vga2hdmi_i_188_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_vga2hdmi_i_188_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  CARRY4 vga2hdmi_i_189
       (.CI(vga2hdmi_i_269_n_0),
        .CO({vga2hdmi_i_189_n_0,vga2hdmi_i_189_n_1,vga2hdmi_i_189_n_2,vga2hdmi_i_189_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_270_n_0,vga2hdmi_i_271_n_0,vga2hdmi_i_272_n_0,vga2hdmi_i_273_n_0}),
        .O(NLW_vga2hdmi_i_189_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_274_n_0,vga2hdmi_i_275_n_0,vga2hdmi_i_276_n_0,vga2hdmi_i_277_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    vga2hdmi_i_19
       (.I0(vga2hdmi_i_40_n_5),
        .I1(vga2hdmi_i_41_n_0),
        .I2(vga2hdmi_i_40_n_6),
        .I3(vga2hdmi_i_40_n_4),
        .O(b8[5]));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_190
       (.I0(vga2hdmi_i_95_n_4),
        .I1(b80[10]),
        .O(vga2hdmi_i_190_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_191
       (.I0(vga2hdmi_i_95_n_5),
        .I1(b80[9]),
        .O(vga2hdmi_i_191_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_192
       (.I0(vga2hdmi_i_95_n_6),
        .I1(b80[8]),
        .O(vga2hdmi_i_192_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    vga2hdmi_i_193
       (.I0(vga2hdmi_i_95_n_7),
        .I1(vga2hdmi_i_166_n_0),
        .O(vga2hdmi_i_193_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_194
       (.I0(b80[10]),
        .I1(vga2hdmi_i_95_n_4),
        .I2(b80[11]),
        .I3(vga2hdmi_i_44_n_7),
        .O(vga2hdmi_i_194_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_195
       (.I0(b80[9]),
        .I1(vga2hdmi_i_95_n_5),
        .I2(b80[10]),
        .I3(vga2hdmi_i_95_n_4),
        .O(vga2hdmi_i_195_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_196
       (.I0(b80[8]),
        .I1(vga2hdmi_i_95_n_6),
        .I2(b80[9]),
        .I3(vga2hdmi_i_95_n_5),
        .O(vga2hdmi_i_196_n_0));
  LUT4 #(
    .INIT(16'h7887)) 
    vga2hdmi_i_197
       (.I0(vga2hdmi_i_166_n_0),
        .I1(vga2hdmi_i_95_n_7),
        .I2(b80[8]),
        .I3(vga2hdmi_i_95_n_6),
        .O(vga2hdmi_i_197_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    vga2hdmi_i_198
       (.I0(r[2]),
        .I1(r[0]),
        .I2(r[1]),
        .I3(r[4]),
        .O(vga2hdmi_i_198_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    vga2hdmi_i_199
       (.I0(r[2]),
        .I1(r[0]),
        .I2(r[1]),
        .I3(r[3]),
        .O(vga2hdmi_i_199_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    vga2hdmi_i_2
       (.I0(vga2hdmi_i_26_n_4),
        .I1(vga2hdmi_i_26_n_6),
        .I2(vga2hdmi_i_27_n_0),
        .I3(vga2hdmi_i_26_n_5),
        .I4(vga2hdmi_i_25_n_7),
        .O(r8[6]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    vga2hdmi_i_20
       (.I0(vga2hdmi_i_40_n_6),
        .I1(vga2hdmi_i_41_n_0),
        .I2(vga2hdmi_i_40_n_5),
        .O(b8[4]));
  LUT4 #(
    .INIT(16'h5557)) 
    vga2hdmi_i_200
       (.I0(r[4]),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .O(vga2hdmi_i_200_n_0));
  LUT5 #(
    .INIT(32'h33333336)) 
    vga2hdmi_i_201
       (.I0(r[3]),
        .I1(r[4]),
        .I2(r[1]),
        .I3(r[0]),
        .I4(r[2]),
        .O(vga2hdmi_i_201_n_0));
  LUT4 #(
    .INIT(16'h5556)) 
    vga2hdmi_i_202
       (.I0(r[3]),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .O(vga2hdmi_i_202_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_203
       (.I0(vga2hdmi_i_210_n_6),
        .I1(vga2hdmi_i_26_n_7),
        .I2(vga2hdmi_i_28_n_5),
        .O(vga2hdmi_i_203_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_204
       (.I0(vga2hdmi_i_26_n_7),
        .I1(vga2hdmi_i_28_n_5),
        .I2(vga2hdmi_i_210_n_6),
        .O(vga2hdmi_i_204_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_205
       (.I0(vga2hdmi_i_278_n_4),
        .I1(vga2hdmi_i_28_n_5),
        .O(vga2hdmi_i_205_n_0));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_206
       (.I0(vga2hdmi_i_28_n_5),
        .I1(vga2hdmi_i_26_n_7),
        .I2(vga2hdmi_i_210_n_6),
        .I3(vga2hdmi_i_210_n_5),
        .I4(vga2hdmi_i_26_n_6),
        .I5(vga2hdmi_i_28_n_4),
        .O(vga2hdmi_i_206_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    vga2hdmi_i_207
       (.I0(vga2hdmi_i_210_n_6),
        .I1(vga2hdmi_i_28_n_5),
        .I2(vga2hdmi_i_26_n_7),
        .I3(vga2hdmi_i_28_n_4),
        .I4(vga2hdmi_i_210_n_7),
        .O(vga2hdmi_i_207_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_208
       (.I0(vga2hdmi_i_28_n_5),
        .I1(vga2hdmi_i_278_n_4),
        .I2(vga2hdmi_i_28_n_4),
        .I3(vga2hdmi_i_210_n_7),
        .O(vga2hdmi_i_208_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_209
       (.I0(vga2hdmi_i_28_n_5),
        .I1(vga2hdmi_i_278_n_4),
        .O(vga2hdmi_i_209_n_0));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_21
       (.I0(vga2hdmi_i_41_n_0),
        .I1(vga2hdmi_i_40_n_6),
        .O(b8[3]));
  CARRY4 vga2hdmi_i_210
       (.CI(vga2hdmi_i_278_n_0),
        .CO({vga2hdmi_i_210_n_0,vga2hdmi_i_210_n_1,vga2hdmi_i_210_n_2,vga2hdmi_i_210_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_26_n_5,vga2hdmi_i_26_n_6,vga2hdmi_i_26_n_7,vga2hdmi_i_28_n_4}),
        .O({vga2hdmi_i_210_n_4,vga2hdmi_i_210_n_5,vga2hdmi_i_210_n_6,vga2hdmi_i_210_n_7}),
        .S({vga2hdmi_i_279_n_0,vga2hdmi_i_280_n_0,vga2hdmi_i_281_n_0,vga2hdmi_i_282_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_211
       (.I0(vga2hdmi_i_25_n_1),
        .O(vga2hdmi_i_211_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_212
       (.I0(vga2hdmi_i_25_n_6),
        .O(vga2hdmi_i_212_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_213
       (.I0(vga2hdmi_i_25_n_7),
        .O(vga2hdmi_i_213_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_214
       (.I0(vga2hdmi_i_26_n_4),
        .I1(vga2hdmi_i_25_n_1),
        .O(vga2hdmi_i_214_n_0));
  CARRY4 vga2hdmi_i_215
       (.CI(1'b0),
        .CO({vga2hdmi_i_215_n_0,vga2hdmi_i_215_n_1,vga2hdmi_i_215_n_2,vga2hdmi_i_215_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_283_n_0,vga2hdmi_i_284_n_0,vga2hdmi_i_285_n_0,1'b0}),
        .O(NLW_vga2hdmi_i_215_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_286_n_0,vga2hdmi_i_287_n_0,vga2hdmi_i_288_n_0,vga2hdmi_i_289_n_0}));
  LUT2 #(
    .INIT(4'h8)) 
    vga2hdmi_i_216
       (.I0(vga2hdmi_i_114_n_4),
        .I1(vga2hdmi_i_102_n_0),
        .O(vga2hdmi_i_216_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_217
       (.I0(vga2hdmi_i_114_n_5),
        .I1(r80[5]),
        .O(vga2hdmi_i_217_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_218
       (.I0(vga2hdmi_i_114_n_6),
        .I1(r80[4]),
        .O(vga2hdmi_i_218_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_219
       (.I0(vga2hdmi_i_114_n_7),
        .I1(r80[3]),
        .O(vga2hdmi_i_219_n_0));
  LUT6 #(
    .INIT(64'hFF75FFFF008A0000)) 
    vga2hdmi_i_22
       (.I0(vga2hdmi_i_42_n_4),
        .I1(b80[12]),
        .I2(vga2hdmi_i_44_n_6),
        .I3(vga2hdmi_i_45_n_3),
        .I4(vga2hdmi_i_42_n_5),
        .I5(vga2hdmi_i_40_n_7),
        .O(b8[2]));
  LUT3 #(
    .INIT(8'hB4)) 
    vga2hdmi_i_220
       (.I0(vga2hdmi_i_114_n_4),
        .I1(vga2hdmi_i_102_n_0),
        .I2(vga2hdmi_i_56_n_7),
        .O(vga2hdmi_i_220_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    vga2hdmi_i_221
       (.I0(r80[5]),
        .I1(vga2hdmi_i_114_n_5),
        .I2(vga2hdmi_i_102_n_0),
        .I3(vga2hdmi_i_114_n_4),
        .O(vga2hdmi_i_221_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_222
       (.I0(r80[4]),
        .I1(vga2hdmi_i_114_n_6),
        .I2(r80[5]),
        .I3(vga2hdmi_i_114_n_5),
        .O(vga2hdmi_i_222_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    vga2hdmi_i_223
       (.I0(r80[3]),
        .I1(vga2hdmi_i_114_n_7),
        .I2(vga2hdmi_i_114_n_6),
        .I3(r80[4]),
        .O(vga2hdmi_i_223_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_224
       (.I0(vga2hdmi_i_33_n_5),
        .I1(vga2hdmi_i_38_n_4),
        .I2(vga2hdmi_i_231_n_5),
        .O(vga2hdmi_i_224_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_225
       (.I0(vga2hdmi_i_231_n_7),
        .I1(vga2hdmi_i_33_n_7),
        .O(vga2hdmi_i_225_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_226
       (.I0(vga2hdmi_i_290_n_4),
        .I1(vga2hdmi_i_38_n_4),
        .O(vga2hdmi_i_226_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    vga2hdmi_i_227
       (.I0(vga2hdmi_i_231_n_5),
        .I1(vga2hdmi_i_38_n_4),
        .I2(vga2hdmi_i_33_n_5),
        .I3(vga2hdmi_i_33_n_6),
        .I4(vga2hdmi_i_231_n_6),
        .O(vga2hdmi_i_227_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_228
       (.I0(vga2hdmi_i_33_n_7),
        .I1(vga2hdmi_i_231_n_7),
        .I2(vga2hdmi_i_33_n_6),
        .I3(vga2hdmi_i_231_n_6),
        .O(vga2hdmi_i_228_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_229
       (.I0(vga2hdmi_i_38_n_4),
        .I1(vga2hdmi_i_290_n_4),
        .I2(vga2hdmi_i_33_n_7),
        .I3(vga2hdmi_i_231_n_7),
        .O(vga2hdmi_i_229_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hDDFD2202)) 
    vga2hdmi_i_23
       (.I0(vga2hdmi_i_42_n_5),
        .I1(vga2hdmi_i_45_n_3),
        .I2(vga2hdmi_i_44_n_6),
        .I3(b80[12]),
        .I4(vga2hdmi_i_42_n_4),
        .O(b8[1]));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_230
       (.I0(vga2hdmi_i_38_n_4),
        .I1(vga2hdmi_i_290_n_4),
        .O(vga2hdmi_i_230_n_0));
  CARRY4 vga2hdmi_i_231
       (.CI(vga2hdmi_i_290_n_0),
        .CO({vga2hdmi_i_231_n_0,vga2hdmi_i_231_n_1,vga2hdmi_i_231_n_2,vga2hdmi_i_231_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_33_n_4,vga2hdmi_i_33_n_5,vga2hdmi_i_33_n_6,vga2hdmi_i_33_n_7}),
        .O({vga2hdmi_i_231_n_4,vga2hdmi_i_231_n_5,vga2hdmi_i_231_n_6,vga2hdmi_i_231_n_7}),
        .S({vga2hdmi_i_291_n_0,vga2hdmi_i_292_n_0,vga2hdmi_i_293_n_0,vga2hdmi_i_294_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_232
       (.I0(vga2hdmi_i_32_n_0),
        .O(vga2hdmi_i_232_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_233
       (.I0(vga2hdmi_i_32_n_5),
        .O(vga2hdmi_i_233_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_234
       (.I0(vga2hdmi_i_32_n_6),
        .O(vga2hdmi_i_234_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_235
       (.I0(vga2hdmi_i_32_n_7),
        .I1(vga2hdmi_i_32_n_0),
        .O(vga2hdmi_i_235_n_0));
  CARRY4 vga2hdmi_i_236
       (.CI(1'b0),
        .CO({vga2hdmi_i_236_n_0,vga2hdmi_i_236_n_1,vga2hdmi_i_236_n_2,vga2hdmi_i_236_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_295_n_0,vga2hdmi_i_296_n_0,vga2hdmi_i_297_n_0,1'b0}),
        .O(NLW_vga2hdmi_i_236_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_298_n_0,vga2hdmi_i_299_n_0,vga2hdmi_i_300_n_0,vga2hdmi_i_301_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_237
       (.I0(vga2hdmi_i_141_n_4),
        .I1(g80[6]),
        .O(vga2hdmi_i_237_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_238
       (.I0(vga2hdmi_i_141_n_5),
        .I1(g80[5]),
        .O(vga2hdmi_i_238_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_239
       (.I0(vga2hdmi_i_141_n_6),
        .I1(g80[4]),
        .O(vga2hdmi_i_239_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hF40B)) 
    vga2hdmi_i_24
       (.I0(b80[12]),
        .I1(vga2hdmi_i_44_n_6),
        .I2(vga2hdmi_i_45_n_3),
        .I3(vga2hdmi_i_42_n_5),
        .O(b8[0]));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_240
       (.I0(vga2hdmi_i_141_n_7),
        .I1(g80[3]),
        .O(vga2hdmi_i_240_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    vga2hdmi_i_241
       (.I0(g80[6]),
        .I1(vga2hdmi_i_141_n_4),
        .I2(vga2hdmi_i_134_n_3),
        .I3(vga2hdmi_i_69_n_7),
        .O(vga2hdmi_i_241_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_242
       (.I0(g80[5]),
        .I1(vga2hdmi_i_141_n_5),
        .I2(g80[6]),
        .I3(vga2hdmi_i_141_n_4),
        .O(vga2hdmi_i_242_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    vga2hdmi_i_243
       (.I0(g80[4]),
        .I1(vga2hdmi_i_141_n_6),
        .I2(vga2hdmi_i_141_n_5),
        .I3(g80[5]),
        .O(vga2hdmi_i_243_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    vga2hdmi_i_244
       (.I0(g80[3]),
        .I1(vga2hdmi_i_141_n_7),
        .I2(vga2hdmi_i_141_n_6),
        .I3(g80[4]),
        .O(vga2hdmi_i_244_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    vga2hdmi_i_245
       (.I0(g[2]),
        .I1(g[0]),
        .I2(g[1]),
        .I3(g[5]),
        .O(vga2hdmi_i_245_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    vga2hdmi_i_246
       (.I0(g[2]),
        .I1(g[0]),
        .I2(g[1]),
        .I3(g[4]),
        .O(vga2hdmi_i_246_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    vga2hdmi_i_247
       (.I0(g[2]),
        .I1(g[0]),
        .I2(g[1]),
        .I3(g[3]),
        .O(vga2hdmi_i_247_n_0));
  LUT4 #(
    .INIT(16'h5557)) 
    vga2hdmi_i_248
       (.I0(g[5]),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .O(vga2hdmi_i_248_n_0));
  LUT5 #(
    .INIT(32'h99999993)) 
    vga2hdmi_i_249
       (.I0(g[4]),
        .I1(g[5]),
        .I2(g[1]),
        .I3(g[0]),
        .I4(g[2]),
        .O(vga2hdmi_i_249_n_0));
  CARRY4 vga2hdmi_i_25
       (.CI(vga2hdmi_i_26_n_0),
        .CO({NLW_vga2hdmi_i_25_CO_UNCONNECTED[3],vga2hdmi_i_25_n_1,NLW_vga2hdmi_i_25_CO_UNCONNECTED[1],vga2hdmi_i_25_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_vga2hdmi_i_25_O_UNCONNECTED[3:2],vga2hdmi_i_25_n_6,vga2hdmi_i_25_n_7}),
        .S({1'b0,1'b1,r80[12:11]}));
  LUT5 #(
    .INIT(32'h33333336)) 
    vga2hdmi_i_250
       (.I0(g[3]),
        .I1(g[4]),
        .I2(g[1]),
        .I3(g[0]),
        .I4(g[2]),
        .O(vga2hdmi_i_250_n_0));
  LUT4 #(
    .INIT(16'h5556)) 
    vga2hdmi_i_251
       (.I0(g[3]),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .O(vga2hdmi_i_251_n_0));
  LUT4 #(
    .INIT(16'h00FE)) 
    vga2hdmi_i_252
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(b[4]),
        .O(vga2hdmi_i_252_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    vga2hdmi_i_253
       (.I0(b[2]),
        .I1(b[0]),
        .I2(b[1]),
        .I3(b[3]),
        .O(vga2hdmi_i_253_n_0));
  LUT4 #(
    .INIT(16'h5557)) 
    vga2hdmi_i_254
       (.I0(b[4]),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .O(vga2hdmi_i_254_n_0));
  LUT5 #(
    .INIT(32'h33333336)) 
    vga2hdmi_i_255
       (.I0(b[3]),
        .I1(b[4]),
        .I2(b[1]),
        .I3(b[0]),
        .I4(b[2]),
        .O(vga2hdmi_i_255_n_0));
  LUT4 #(
    .INIT(16'h5556)) 
    vga2hdmi_i_256
       (.I0(b[3]),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .O(vga2hdmi_i_256_n_0));
  LUT3 #(
    .INIT(8'hB2)) 
    vga2hdmi_i_257
       (.I0(vga2hdmi_i_264_n_6),
        .I1(vga2hdmi_i_40_n_7),
        .I2(vga2hdmi_i_42_n_5),
        .O(vga2hdmi_i_257_n_0));
  LUT3 #(
    .INIT(8'h69)) 
    vga2hdmi_i_258
       (.I0(vga2hdmi_i_40_n_7),
        .I1(vga2hdmi_i_42_n_5),
        .I2(vga2hdmi_i_264_n_6),
        .O(vga2hdmi_i_258_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_259
       (.I0(vga2hdmi_i_302_n_4),
        .I1(vga2hdmi_i_42_n_5),
        .O(vga2hdmi_i_259_n_0));
  CARRY4 vga2hdmi_i_26
       (.CI(vga2hdmi_i_28_n_0),
        .CO({vga2hdmi_i_26_n_0,vga2hdmi_i_26_n_1,vga2hdmi_i_26_n_2,vga2hdmi_i_26_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,r80[12]}),
        .O({vga2hdmi_i_26_n_4,vga2hdmi_i_26_n_5,vga2hdmi_i_26_n_6,vga2hdmi_i_26_n_7}),
        .S({r80[10:8],vga2hdmi_i_47_n_0}));
  LUT6 #(
    .INIT(64'hB24D4DB24DB2B24D)) 
    vga2hdmi_i_260
       (.I0(vga2hdmi_i_42_n_5),
        .I1(vga2hdmi_i_40_n_7),
        .I2(vga2hdmi_i_264_n_6),
        .I3(vga2hdmi_i_264_n_5),
        .I4(vga2hdmi_i_40_n_6),
        .I5(vga2hdmi_i_42_n_4),
        .O(vga2hdmi_i_260_n_0));
  LUT5 #(
    .INIT(32'h69966969)) 
    vga2hdmi_i_261
       (.I0(vga2hdmi_i_264_n_6),
        .I1(vga2hdmi_i_42_n_5),
        .I2(vga2hdmi_i_40_n_7),
        .I3(vga2hdmi_i_42_n_4),
        .I4(vga2hdmi_i_264_n_7),
        .O(vga2hdmi_i_261_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_262
       (.I0(vga2hdmi_i_42_n_5),
        .I1(vga2hdmi_i_302_n_4),
        .I2(vga2hdmi_i_42_n_4),
        .I3(vga2hdmi_i_264_n_7),
        .O(vga2hdmi_i_262_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_263
       (.I0(vga2hdmi_i_42_n_5),
        .I1(vga2hdmi_i_302_n_4),
        .O(vga2hdmi_i_263_n_0));
  CARRY4 vga2hdmi_i_264
       (.CI(vga2hdmi_i_302_n_0),
        .CO({vga2hdmi_i_264_n_0,vga2hdmi_i_264_n_1,vga2hdmi_i_264_n_2,vga2hdmi_i_264_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_40_n_5,vga2hdmi_i_40_n_6,vga2hdmi_i_40_n_7,vga2hdmi_i_42_n_4}),
        .O({vga2hdmi_i_264_n_4,vga2hdmi_i_264_n_5,vga2hdmi_i_264_n_6,vga2hdmi_i_264_n_7}),
        .S({vga2hdmi_i_303_n_0,vga2hdmi_i_304_n_0,vga2hdmi_i_305_n_0,vga2hdmi_i_306_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_265
       (.I0(vga2hdmi_i_39_n_1),
        .O(vga2hdmi_i_265_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_266
       (.I0(vga2hdmi_i_39_n_6),
        .O(vga2hdmi_i_266_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_267
       (.I0(vga2hdmi_i_39_n_7),
        .O(vga2hdmi_i_267_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_268
       (.I0(vga2hdmi_i_40_n_4),
        .I1(vga2hdmi_i_39_n_1),
        .O(vga2hdmi_i_268_n_0));
  CARRY4 vga2hdmi_i_269
       (.CI(1'b0),
        .CO({vga2hdmi_i_269_n_0,vga2hdmi_i_269_n_1,vga2hdmi_i_269_n_2,vga2hdmi_i_269_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_307_n_0,vga2hdmi_i_308_n_0,vga2hdmi_i_309_n_0,1'b0}),
        .O(NLW_vga2hdmi_i_269_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_310_n_0,vga2hdmi_i_311_n_0,vga2hdmi_i_312_n_0,vga2hdmi_i_313_n_0}));
  LUT6 #(
    .INIT(64'hFF75FFFFFFFFFFFF)) 
    vga2hdmi_i_27
       (.I0(vga2hdmi_i_28_n_4),
        .I1(r80[12]),
        .I2(vga2hdmi_i_30_n_6),
        .I3(vga2hdmi_i_31_n_3),
        .I4(vga2hdmi_i_28_n_5),
        .I5(vga2hdmi_i_26_n_7),
        .O(vga2hdmi_i_27_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    vga2hdmi_i_270
       (.I0(vga2hdmi_i_178_n_4),
        .I1(vga2hdmi_i_166_n_0),
        .O(vga2hdmi_i_270_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_271
       (.I0(vga2hdmi_i_178_n_5),
        .I1(b80[5]),
        .O(vga2hdmi_i_271_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_272
       (.I0(vga2hdmi_i_178_n_6),
        .I1(b80[4]),
        .O(vga2hdmi_i_272_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_273
       (.I0(vga2hdmi_i_178_n_7),
        .I1(b80[3]),
        .O(vga2hdmi_i_273_n_0));
  LUT3 #(
    .INIT(8'hB4)) 
    vga2hdmi_i_274
       (.I0(vga2hdmi_i_178_n_4),
        .I1(vga2hdmi_i_166_n_0),
        .I2(vga2hdmi_i_95_n_7),
        .O(vga2hdmi_i_274_n_0));
  LUT4 #(
    .INIT(16'h4BB4)) 
    vga2hdmi_i_275
       (.I0(b80[5]),
        .I1(vga2hdmi_i_178_n_5),
        .I2(vga2hdmi_i_166_n_0),
        .I3(vga2hdmi_i_178_n_4),
        .O(vga2hdmi_i_275_n_0));
  LUT4 #(
    .INIT(16'h2DD2)) 
    vga2hdmi_i_276
       (.I0(b80[4]),
        .I1(vga2hdmi_i_178_n_6),
        .I2(b80[5]),
        .I3(vga2hdmi_i_178_n_5),
        .O(vga2hdmi_i_276_n_0));
  LUT4 #(
    .INIT(16'hD22D)) 
    vga2hdmi_i_277
       (.I0(b80[3]),
        .I1(vga2hdmi_i_178_n_7),
        .I2(vga2hdmi_i_178_n_6),
        .I3(b80[4]),
        .O(vga2hdmi_i_277_n_0));
  CARRY4 vga2hdmi_i_278
       (.CI(1'b0),
        .CO({vga2hdmi_i_278_n_0,vga2hdmi_i_278_n_1,vga2hdmi_i_278_n_2,vga2hdmi_i_278_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_28_n_5,1'b0,1'b0,1'b1}),
        .O({vga2hdmi_i_278_n_4,vga2hdmi_i_278_n_5,vga2hdmi_i_278_n_6,vga2hdmi_i_278_n_7}),
        .S({vga2hdmi_i_314_n_0,vga2hdmi_i_315_n_0,vga2hdmi_i_316_n_0,vga2hdmi_i_28_n_5}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_279
       (.I0(vga2hdmi_i_26_n_5),
        .I1(vga2hdmi_i_25_n_6),
        .O(vga2hdmi_i_279_n_0));
  CARRY4 vga2hdmi_i_28
       (.CI(vga2hdmi_i_48_n_0),
        .CO({vga2hdmi_i_28_n_0,vga2hdmi_i_28_n_1,vga2hdmi_i_28_n_2,vga2hdmi_i_28_n_3}),
        .CYINIT(1'b0),
        .DI(r80[11:8]),
        .O({vga2hdmi_i_28_n_4,vga2hdmi_i_28_n_5,NLW_vga2hdmi_i_28_O_UNCONNECTED[1:0]}),
        .S({vga2hdmi_i_49_n_0,vga2hdmi_i_50_n_0,vga2hdmi_i_51_n_0,vga2hdmi_i_52_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_280
       (.I0(vga2hdmi_i_26_n_6),
        .I1(vga2hdmi_i_25_n_7),
        .O(vga2hdmi_i_280_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_281
       (.I0(vga2hdmi_i_26_n_7),
        .I1(vga2hdmi_i_26_n_4),
        .O(vga2hdmi_i_281_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_282
       (.I0(vga2hdmi_i_28_n_4),
        .I1(vga2hdmi_i_26_n_5),
        .O(vga2hdmi_i_282_n_0));
  LUT4 #(
    .INIT(16'hFFE1)) 
    vga2hdmi_i_283
       (.I0(r[1]),
        .I1(r[0]),
        .I2(r[2]),
        .I3(vga2hdmi_i_278_n_5),
        .O(vga2hdmi_i_283_n_0));
  LUT3 #(
    .INIT(8'hF9)) 
    vga2hdmi_i_284
       (.I0(r[0]),
        .I1(r[1]),
        .I2(vga2hdmi_i_278_n_6),
        .O(vga2hdmi_i_284_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_285
       (.I0(vga2hdmi_i_278_n_7),
        .I1(r[0]),
        .O(vga2hdmi_i_285_n_0));
  LUT6 #(
    .INIT(64'hEEEB11141114EEEB)) 
    vga2hdmi_i_286
       (.I0(vga2hdmi_i_278_n_5),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .I4(vga2hdmi_i_114_n_7),
        .I5(r80[3]),
        .O(vga2hdmi_i_286_n_0));
  LUT5 #(
    .INIT(32'h366CC993)) 
    vga2hdmi_i_287
       (.I0(vga2hdmi_i_278_n_6),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .I4(vga2hdmi_i_278_n_5),
        .O(vga2hdmi_i_287_n_0));
  LUT4 #(
    .INIT(16'h6C93)) 
    vga2hdmi_i_288
       (.I0(vga2hdmi_i_278_n_7),
        .I1(r[1]),
        .I2(r[0]),
        .I3(vga2hdmi_i_278_n_6),
        .O(vga2hdmi_i_288_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_289
       (.I0(r[0]),
        .I1(vga2hdmi_i_278_n_7),
        .O(vga2hdmi_i_289_n_0));
  CARRY4 vga2hdmi_i_29
       (.CI(vga2hdmi_i_46_n_0),
        .CO({NLW_vga2hdmi_i_29_CO_UNCONNECTED[3:1],vga2hdmi_i_29_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_53_n_0}),
        .O({NLW_vga2hdmi_i_29_O_UNCONNECTED[3:2],r80[12:11]}),
        .S({1'b0,1'b0,vga2hdmi_i_54_n_0,vga2hdmi_i_55_n_0}));
  CARRY4 vga2hdmi_i_290
       (.CI(1'b0),
        .CO({vga2hdmi_i_290_n_0,vga2hdmi_i_290_n_1,vga2hdmi_i_290_n_2,vga2hdmi_i_290_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_38_n_4,1'b0,1'b0,1'b1}),
        .O({vga2hdmi_i_290_n_4,vga2hdmi_i_290_n_5,vga2hdmi_i_290_n_6,vga2hdmi_i_290_n_7}),
        .S({vga2hdmi_i_317_n_0,vga2hdmi_i_318_n_0,vga2hdmi_i_319_n_0,vga2hdmi_i_38_n_4}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_291
       (.I0(vga2hdmi_i_33_n_4),
        .I1(vga2hdmi_i_32_n_5),
        .O(vga2hdmi_i_291_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_292
       (.I0(vga2hdmi_i_33_n_5),
        .I1(vga2hdmi_i_32_n_6),
        .O(vga2hdmi_i_292_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_293
       (.I0(vga2hdmi_i_33_n_6),
        .I1(vga2hdmi_i_32_n_7),
        .O(vga2hdmi_i_293_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_294
       (.I0(vga2hdmi_i_33_n_7),
        .I1(vga2hdmi_i_33_n_4),
        .O(vga2hdmi_i_294_n_0));
  LUT4 #(
    .INIT(16'hFFE1)) 
    vga2hdmi_i_295
       (.I0(g[1]),
        .I1(g[0]),
        .I2(g[2]),
        .I3(vga2hdmi_i_290_n_5),
        .O(vga2hdmi_i_295_n_0));
  LUT3 #(
    .INIT(8'hF9)) 
    vga2hdmi_i_296
       (.I0(g[0]),
        .I1(g[1]),
        .I2(vga2hdmi_i_290_n_6),
        .O(vga2hdmi_i_296_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_297
       (.I0(vga2hdmi_i_290_n_7),
        .I1(g[0]),
        .O(vga2hdmi_i_297_n_0));
  LUT6 #(
    .INIT(64'hEEEB11141114EEEB)) 
    vga2hdmi_i_298
       (.I0(vga2hdmi_i_290_n_5),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .I4(vga2hdmi_i_141_n_7),
        .I5(g80[3]),
        .O(vga2hdmi_i_298_n_0));
  LUT5 #(
    .INIT(32'h366CC993)) 
    vga2hdmi_i_299
       (.I0(vga2hdmi_i_290_n_6),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .I4(vga2hdmi_i_290_n_5),
        .O(vga2hdmi_i_299_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    vga2hdmi_i_3
       (.I0(vga2hdmi_i_26_n_5),
        .I1(vga2hdmi_i_27_n_0),
        .I2(vga2hdmi_i_26_n_6),
        .I3(vga2hdmi_i_26_n_4),
        .O(r8[5]));
  CARRY4 vga2hdmi_i_30
       (.CI(vga2hdmi_i_56_n_0),
        .CO({NLW_vga2hdmi_i_30_CO_UNCONNECTED[3:1],vga2hdmi_i_30_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_57_n_0}),
        .O({NLW_vga2hdmi_i_30_O_UNCONNECTED[3:2],vga2hdmi_i_30_n_6,vga2hdmi_i_30_n_7}),
        .S({1'b0,1'b0,vga2hdmi_i_58_n_0,vga2hdmi_i_59_n_0}));
  LUT4 #(
    .INIT(16'h6C93)) 
    vga2hdmi_i_300
       (.I0(vga2hdmi_i_290_n_7),
        .I1(g[1]),
        .I2(g[0]),
        .I3(vga2hdmi_i_290_n_6),
        .O(vga2hdmi_i_300_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_301
       (.I0(g[0]),
        .I1(vga2hdmi_i_290_n_7),
        .O(vga2hdmi_i_301_n_0));
  CARRY4 vga2hdmi_i_302
       (.CI(1'b0),
        .CO({vga2hdmi_i_302_n_0,vga2hdmi_i_302_n_1,vga2hdmi_i_302_n_2,vga2hdmi_i_302_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_42_n_5,1'b0,1'b0,1'b1}),
        .O({vga2hdmi_i_302_n_4,vga2hdmi_i_302_n_5,vga2hdmi_i_302_n_6,vga2hdmi_i_302_n_7}),
        .S({vga2hdmi_i_320_n_0,vga2hdmi_i_321_n_0,vga2hdmi_i_322_n_0,vga2hdmi_i_42_n_5}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_303
       (.I0(vga2hdmi_i_40_n_5),
        .I1(vga2hdmi_i_39_n_6),
        .O(vga2hdmi_i_303_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_304
       (.I0(vga2hdmi_i_40_n_6),
        .I1(vga2hdmi_i_39_n_7),
        .O(vga2hdmi_i_304_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_305
       (.I0(vga2hdmi_i_40_n_7),
        .I1(vga2hdmi_i_40_n_4),
        .O(vga2hdmi_i_305_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_306
       (.I0(vga2hdmi_i_42_n_4),
        .I1(vga2hdmi_i_40_n_5),
        .O(vga2hdmi_i_306_n_0));
  LUT4 #(
    .INIT(16'hFFE1)) 
    vga2hdmi_i_307
       (.I0(b[1]),
        .I1(b[0]),
        .I2(b[2]),
        .I3(vga2hdmi_i_302_n_5),
        .O(vga2hdmi_i_307_n_0));
  LUT3 #(
    .INIT(8'hF9)) 
    vga2hdmi_i_308
       (.I0(b[0]),
        .I1(b[1]),
        .I2(vga2hdmi_i_302_n_6),
        .O(vga2hdmi_i_308_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    vga2hdmi_i_309
       (.I0(vga2hdmi_i_302_n_7),
        .I1(b[0]),
        .O(vga2hdmi_i_309_n_0));
  CARRY4 vga2hdmi_i_31
       (.CI(vga2hdmi_i_60_n_0),
        .CO({NLW_vga2hdmi_i_31_CO_UNCONNECTED[3:1],vga2hdmi_i_31_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_61_n_0}),
        .O(NLW_vga2hdmi_i_31_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,vga2hdmi_i_62_n_0}));
  LUT6 #(
    .INIT(64'hEEEB11141114EEEB)) 
    vga2hdmi_i_310
       (.I0(vga2hdmi_i_302_n_5),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .I4(vga2hdmi_i_178_n_7),
        .I5(b80[3]),
        .O(vga2hdmi_i_310_n_0));
  LUT5 #(
    .INIT(32'h366CC993)) 
    vga2hdmi_i_311
       (.I0(vga2hdmi_i_302_n_6),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .I4(vga2hdmi_i_302_n_5),
        .O(vga2hdmi_i_311_n_0));
  LUT4 #(
    .INIT(16'h6C93)) 
    vga2hdmi_i_312
       (.I0(vga2hdmi_i_302_n_7),
        .I1(b[1]),
        .I2(b[0]),
        .I3(vga2hdmi_i_302_n_6),
        .O(vga2hdmi_i_312_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_313
       (.I0(b[0]),
        .I1(vga2hdmi_i_302_n_7),
        .O(vga2hdmi_i_313_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_314
       (.I0(vga2hdmi_i_28_n_5),
        .I1(vga2hdmi_i_26_n_6),
        .O(vga2hdmi_i_314_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_315
       (.I0(vga2hdmi_i_26_n_7),
        .O(vga2hdmi_i_315_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_316
       (.I0(vga2hdmi_i_28_n_4),
        .O(vga2hdmi_i_316_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_317
       (.I0(vga2hdmi_i_38_n_4),
        .I1(vga2hdmi_i_33_n_5),
        .O(vga2hdmi_i_317_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_318
       (.I0(vga2hdmi_i_33_n_6),
        .O(vga2hdmi_i_318_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_319
       (.I0(vga2hdmi_i_33_n_7),
        .O(vga2hdmi_i_319_n_0));
  CARRY4 vga2hdmi_i_32
       (.CI(vga2hdmi_i_33_n_0),
        .CO({vga2hdmi_i_32_n_0,NLW_vga2hdmi_i_32_CO_UNCONNECTED[2],vga2hdmi_i_32_n_2,vga2hdmi_i_32_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_vga2hdmi_i_32_O_UNCONNECTED[3],vga2hdmi_i_32_n_5,vga2hdmi_i_32_n_6,vga2hdmi_i_32_n_7}),
        .S({1'b1,g80[13:11]}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_320
       (.I0(vga2hdmi_i_42_n_5),
        .I1(vga2hdmi_i_40_n_6),
        .O(vga2hdmi_i_320_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_321
       (.I0(vga2hdmi_i_40_n_7),
        .O(vga2hdmi_i_321_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_322
       (.I0(vga2hdmi_i_42_n_4),
        .O(vga2hdmi_i_322_n_0));
  CARRY4 vga2hdmi_i_33
       (.CI(vga2hdmi_i_38_n_0),
        .CO({vga2hdmi_i_33_n_0,vga2hdmi_i_33_n_1,vga2hdmi_i_33_n_2,vga2hdmi_i_33_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,g80[13]}),
        .O({vga2hdmi_i_33_n_4,vga2hdmi_i_33_n_5,vga2hdmi_i_33_n_6,vga2hdmi_i_33_n_7}),
        .S({g80[10:8],vga2hdmi_i_64_n_0}));
  LUT6 #(
    .INIT(64'hFF75FFFFFFFFFFFF)) 
    vga2hdmi_i_34
       (.I0(vga2hdmi_i_33_n_7),
        .I1(g80[13]),
        .I2(vga2hdmi_i_36_n_5),
        .I3(vga2hdmi_i_37_n_2),
        .I4(vga2hdmi_i_38_n_4),
        .I5(vga2hdmi_i_33_n_6),
        .O(vga2hdmi_i_34_n_0));
  CARRY4 vga2hdmi_i_35
       (.CI(vga2hdmi_i_63_n_0),
        .CO({NLW_vga2hdmi_i_35_CO_UNCONNECTED[3:2],vga2hdmi_i_35_n_2,vga2hdmi_i_35_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,g[3],vga2hdmi_i_65_n_0}),
        .O({NLW_vga2hdmi_i_35_O_UNCONNECTED[3],g80[13:11]}),
        .S({1'b0,vga2hdmi_i_66_n_0,vga2hdmi_i_67_n_0,vga2hdmi_i_68_n_0}));
  CARRY4 vga2hdmi_i_36
       (.CI(vga2hdmi_i_69_n_0),
        .CO({NLW_vga2hdmi_i_36_CO_UNCONNECTED[3:2],vga2hdmi_i_36_n_2,vga2hdmi_i_36_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,vga2hdmi_i_70_n_0,vga2hdmi_i_71_n_0}),
        .O({NLW_vga2hdmi_i_36_O_UNCONNECTED[3],vga2hdmi_i_36_n_5,vga2hdmi_i_36_n_6,vga2hdmi_i_36_n_7}),
        .S({1'b0,vga2hdmi_i_72_n_0,vga2hdmi_i_73_n_0,vga2hdmi_i_74_n_0}));
  CARRY4 vga2hdmi_i_37
       (.CI(vga2hdmi_i_75_n_0),
        .CO({NLW_vga2hdmi_i_37_CO_UNCONNECTED[3:2],vga2hdmi_i_37_n_2,vga2hdmi_i_37_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,vga2hdmi_i_76_n_0,vga2hdmi_i_77_n_0}),
        .O(NLW_vga2hdmi_i_37_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,vga2hdmi_i_78_n_0,vga2hdmi_i_79_n_0}));
  CARRY4 vga2hdmi_i_38
       (.CI(vga2hdmi_i_80_n_0),
        .CO({vga2hdmi_i_38_n_0,vga2hdmi_i_38_n_1,vga2hdmi_i_38_n_2,vga2hdmi_i_38_n_3}),
        .CYINIT(1'b0),
        .DI(g80[12:9]),
        .O({vga2hdmi_i_38_n_4,NLW_vga2hdmi_i_38_O_UNCONNECTED[2:0]}),
        .S({vga2hdmi_i_81_n_0,vga2hdmi_i_82_n_0,vga2hdmi_i_83_n_0,vga2hdmi_i_84_n_0}));
  CARRY4 vga2hdmi_i_39
       (.CI(vga2hdmi_i_40_n_0),
        .CO({NLW_vga2hdmi_i_39_CO_UNCONNECTED[3],vga2hdmi_i_39_n_1,NLW_vga2hdmi_i_39_CO_UNCONNECTED[1],vga2hdmi_i_39_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_vga2hdmi_i_39_O_UNCONNECTED[3:2],vga2hdmi_i_39_n_6,vga2hdmi_i_39_n_7}),
        .S({1'b0,1'b1,b80[12:11]}));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    vga2hdmi_i_4
       (.I0(vga2hdmi_i_26_n_6),
        .I1(vga2hdmi_i_27_n_0),
        .I2(vga2hdmi_i_26_n_5),
        .O(r8[4]));
  CARRY4 vga2hdmi_i_40
       (.CI(vga2hdmi_i_42_n_0),
        .CO({vga2hdmi_i_40_n_0,vga2hdmi_i_40_n_1,vga2hdmi_i_40_n_2,vga2hdmi_i_40_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,b80[12]}),
        .O({vga2hdmi_i_40_n_4,vga2hdmi_i_40_n_5,vga2hdmi_i_40_n_6,vga2hdmi_i_40_n_7}),
        .S({b80[10:8],vga2hdmi_i_86_n_0}));
  LUT6 #(
    .INIT(64'hFF75FFFFFFFFFFFF)) 
    vga2hdmi_i_41
       (.I0(vga2hdmi_i_42_n_4),
        .I1(b80[12]),
        .I2(vga2hdmi_i_44_n_6),
        .I3(vga2hdmi_i_45_n_3),
        .I4(vga2hdmi_i_42_n_5),
        .I5(vga2hdmi_i_40_n_7),
        .O(vga2hdmi_i_41_n_0));
  CARRY4 vga2hdmi_i_42
       (.CI(vga2hdmi_i_87_n_0),
        .CO({vga2hdmi_i_42_n_0,vga2hdmi_i_42_n_1,vga2hdmi_i_42_n_2,vga2hdmi_i_42_n_3}),
        .CYINIT(1'b0),
        .DI(b80[11:8]),
        .O({vga2hdmi_i_42_n_4,vga2hdmi_i_42_n_5,NLW_vga2hdmi_i_42_O_UNCONNECTED[1:0]}),
        .S({vga2hdmi_i_88_n_0,vga2hdmi_i_89_n_0,vga2hdmi_i_90_n_0,vga2hdmi_i_91_n_0}));
  CARRY4 vga2hdmi_i_43
       (.CI(vga2hdmi_i_85_n_0),
        .CO({NLW_vga2hdmi_i_43_CO_UNCONNECTED[3:1],vga2hdmi_i_43_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_92_n_0}),
        .O({NLW_vga2hdmi_i_43_O_UNCONNECTED[3:2],b80[12:11]}),
        .S({1'b0,1'b0,vga2hdmi_i_93_n_0,vga2hdmi_i_94_n_0}));
  CARRY4 vga2hdmi_i_44
       (.CI(vga2hdmi_i_95_n_0),
        .CO({NLW_vga2hdmi_i_44_CO_UNCONNECTED[3:1],vga2hdmi_i_44_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_96_n_0}),
        .O({NLW_vga2hdmi_i_44_O_UNCONNECTED[3:2],vga2hdmi_i_44_n_6,vga2hdmi_i_44_n_7}),
        .S({1'b0,1'b0,vga2hdmi_i_97_n_0,vga2hdmi_i_98_n_0}));
  CARRY4 vga2hdmi_i_45
       (.CI(vga2hdmi_i_99_n_0),
        .CO({NLW_vga2hdmi_i_45_CO_UNCONNECTED[3:1],vga2hdmi_i_45_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,vga2hdmi_i_100_n_0}),
        .O(NLW_vga2hdmi_i_45_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,vga2hdmi_i_101_n_0}));
  CARRY4 vga2hdmi_i_46
       (.CI(1'b0),
        .CO({vga2hdmi_i_46_n_0,vga2hdmi_i_46_n_1,vga2hdmi_i_46_n_2,vga2hdmi_i_46_n_3}),
        .CYINIT(vga2hdmi_i_102_n_0),
        .DI({vga2hdmi_i_103_n_0,vga2hdmi_i_104_n_0,vga2hdmi_i_105_n_0,1'b0}),
        .O({r80[10:8],NLW_vga2hdmi_i_46_O_UNCONNECTED[0]}),
        .S({vga2hdmi_i_106_n_0,vga2hdmi_i_107_n_0,vga2hdmi_i_108_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_47
       (.I0(r80[12]),
        .I1(vga2hdmi_i_102_n_0),
        .O(vga2hdmi_i_47_n_0));
  CARRY4 vga2hdmi_i_48
       (.CI(1'b0),
        .CO({vga2hdmi_i_48_n_0,vga2hdmi_i_48_n_1,vga2hdmi_i_48_n_2,vga2hdmi_i_48_n_3}),
        .CYINIT(1'b0),
        .DI({r80[7],vga2hdmi_i_110_n_0,r80[5],1'b0}),
        .O(NLW_vga2hdmi_i_48_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_111_n_0,vga2hdmi_i_112_n_0,vga2hdmi_i_113_n_0,r80[4]}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_49
       (.I0(r80[11]),
        .I1(vga2hdmi_i_102_n_0),
        .O(vga2hdmi_i_49_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_5
       (.I0(vga2hdmi_i_27_n_0),
        .I1(vga2hdmi_i_26_n_6),
        .O(r8[3]));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_50
       (.I0(r80[10]),
        .I1(r80[5]),
        .O(vga2hdmi_i_50_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_51
       (.I0(r80[9]),
        .I1(r80[4]),
        .O(vga2hdmi_i_51_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_52
       (.I0(r80[8]),
        .I1(r80[3]),
        .O(vga2hdmi_i_52_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_53
       (.I0(r[3]),
        .O(vga2hdmi_i_53_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_54
       (.I0(r[3]),
        .I1(r[4]),
        .O(vga2hdmi_i_54_n_0));
  LUT4 #(
    .INIT(16'h9995)) 
    vga2hdmi_i_55
       (.I0(r[3]),
        .I1(r[2]),
        .I2(r[0]),
        .I3(r[1]),
        .O(vga2hdmi_i_55_n_0));
  CARRY4 vga2hdmi_i_56
       (.CI(vga2hdmi_i_114_n_0),
        .CO({vga2hdmi_i_56_n_0,vga2hdmi_i_56_n_1,vga2hdmi_i_56_n_2,vga2hdmi_i_56_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_115_n_0,vga2hdmi_i_116_n_0,vga2hdmi_i_117_n_0,vga2hdmi_i_118_n_0}),
        .O({vga2hdmi_i_56_n_4,vga2hdmi_i_56_n_5,vga2hdmi_i_56_n_6,vga2hdmi_i_56_n_7}),
        .S({vga2hdmi_i_119_n_0,vga2hdmi_i_120_n_0,vga2hdmi_i_121_n_0,vga2hdmi_i_122_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_57
       (.I0(vga2hdmi_i_25_n_6),
        .I1(vga2hdmi_i_26_n_4),
        .I2(vga2hdmi_i_123_n_5),
        .O(vga2hdmi_i_57_n_0));
  LUT5 #(
    .INIT(32'hC369693C)) 
    vga2hdmi_i_58
       (.I0(vga2hdmi_i_25_n_1),
        .I1(vga2hdmi_i_25_n_6),
        .I2(vga2hdmi_i_124_n_3),
        .I3(vga2hdmi_i_25_n_7),
        .I4(vga2hdmi_i_123_n_4),
        .O(vga2hdmi_i_58_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_59
       (.I0(vga2hdmi_i_123_n_5),
        .I1(vga2hdmi_i_26_n_4),
        .I2(vga2hdmi_i_25_n_6),
        .I3(vga2hdmi_i_25_n_1),
        .I4(vga2hdmi_i_123_n_4),
        .I5(vga2hdmi_i_25_n_7),
        .O(vga2hdmi_i_59_n_0));
  LUT6 #(
    .INIT(64'hFF75FFFF008A0000)) 
    vga2hdmi_i_6
       (.I0(vga2hdmi_i_28_n_4),
        .I1(r80[12]),
        .I2(vga2hdmi_i_30_n_6),
        .I3(vga2hdmi_i_31_n_3),
        .I4(vga2hdmi_i_28_n_5),
        .I5(vga2hdmi_i_26_n_7),
        .O(r8[2]));
  CARRY4 vga2hdmi_i_60
       (.CI(vga2hdmi_i_125_n_0),
        .CO({vga2hdmi_i_60_n_0,vga2hdmi_i_60_n_1,vga2hdmi_i_60_n_2,vga2hdmi_i_60_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_126_n_0,vga2hdmi_i_127_n_0,vga2hdmi_i_128_n_0,vga2hdmi_i_129_n_0}),
        .O(NLW_vga2hdmi_i_60_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_130_n_0,vga2hdmi_i_131_n_0,vga2hdmi_i_132_n_0,vga2hdmi_i_133_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_61
       (.I0(vga2hdmi_i_30_n_7),
        .I1(r80[11]),
        .O(vga2hdmi_i_61_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_62
       (.I0(r80[11]),
        .I1(vga2hdmi_i_30_n_7),
        .I2(r80[12]),
        .I3(vga2hdmi_i_30_n_6),
        .O(vga2hdmi_i_62_n_0));
  CARRY4 vga2hdmi_i_63
       (.CI(1'b0),
        .CO({vga2hdmi_i_63_n_0,vga2hdmi_i_63_n_1,vga2hdmi_i_63_n_2,vga2hdmi_i_63_n_3}),
        .CYINIT(vga2hdmi_i_134_n_3),
        .DI({vga2hdmi_i_135_n_0,vga2hdmi_i_136_n_0,vga2hdmi_i_137_n_0,1'b0}),
        .O({g80[10:8],NLW_vga2hdmi_i_63_O_UNCONNECTED[0]}),
        .S({vga2hdmi_i_138_n_0,vga2hdmi_i_139_n_0,vga2hdmi_i_140_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_64
       (.I0(g80[13]),
        .I1(vga2hdmi_i_134_n_3),
        .O(vga2hdmi_i_64_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_65
       (.I0(g[3]),
        .O(vga2hdmi_i_65_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_66
       (.I0(g[4]),
        .I1(g[5]),
        .O(vga2hdmi_i_66_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_67
       (.I0(g[3]),
        .I1(g[4]),
        .O(vga2hdmi_i_67_n_0));
  LUT4 #(
    .INIT(16'h9995)) 
    vga2hdmi_i_68
       (.I0(g[3]),
        .I1(g[2]),
        .I2(g[0]),
        .I3(g[1]),
        .O(vga2hdmi_i_68_n_0));
  CARRY4 vga2hdmi_i_69
       (.CI(vga2hdmi_i_141_n_0),
        .CO({vga2hdmi_i_69_n_0,vga2hdmi_i_69_n_1,vga2hdmi_i_69_n_2,vga2hdmi_i_69_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_142_n_0,vga2hdmi_i_143_n_0,vga2hdmi_i_144_n_0,vga2hdmi_i_145_n_0}),
        .O({vga2hdmi_i_69_n_4,vga2hdmi_i_69_n_5,vga2hdmi_i_69_n_6,vga2hdmi_i_69_n_7}),
        .S({vga2hdmi_i_146_n_0,vga2hdmi_i_147_n_0,vga2hdmi_i_148_n_0,vga2hdmi_i_149_n_0}));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hDDFD2202)) 
    vga2hdmi_i_7
       (.I0(vga2hdmi_i_28_n_5),
        .I1(vga2hdmi_i_31_n_3),
        .I2(vga2hdmi_i_30_n_6),
        .I3(r80[12]),
        .I4(vga2hdmi_i_28_n_4),
        .O(r8[1]));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_70
       (.I0(vga2hdmi_i_32_n_0),
        .I1(vga2hdmi_i_32_n_7),
        .I2(vga2hdmi_i_150_n_4),
        .O(vga2hdmi_i_70_n_0));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_71
       (.I0(vga2hdmi_i_32_n_5),
        .I1(vga2hdmi_i_33_n_4),
        .I2(vga2hdmi_i_150_n_5),
        .O(vga2hdmi_i_71_n_0));
  LUT3 #(
    .INIT(8'h87)) 
    vga2hdmi_i_72
       (.I0(vga2hdmi_i_32_n_6),
        .I1(vga2hdmi_i_151_n_3),
        .I2(vga2hdmi_i_32_n_5),
        .O(vga2hdmi_i_72_n_0));
  LUT5 #(
    .INIT(32'h8E71718E)) 
    vga2hdmi_i_73
       (.I0(vga2hdmi_i_150_n_4),
        .I1(vga2hdmi_i_32_n_7),
        .I2(vga2hdmi_i_32_n_0),
        .I3(vga2hdmi_i_32_n_6),
        .I4(vga2hdmi_i_151_n_3),
        .O(vga2hdmi_i_73_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_74
       (.I0(vga2hdmi_i_150_n_5),
        .I1(vga2hdmi_i_33_n_4),
        .I2(vga2hdmi_i_32_n_5),
        .I3(vga2hdmi_i_32_n_0),
        .I4(vga2hdmi_i_150_n_4),
        .I5(vga2hdmi_i_32_n_7),
        .O(vga2hdmi_i_74_n_0));
  CARRY4 vga2hdmi_i_75
       (.CI(vga2hdmi_i_152_n_0),
        .CO({vga2hdmi_i_75_n_0,vga2hdmi_i_75_n_1,vga2hdmi_i_75_n_2,vga2hdmi_i_75_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_153_n_0,vga2hdmi_i_154_n_0,vga2hdmi_i_155_n_0,vga2hdmi_i_156_n_0}),
        .O(NLW_vga2hdmi_i_75_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_157_n_0,vga2hdmi_i_158_n_0,vga2hdmi_i_159_n_0,vga2hdmi_i_160_n_0}));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_76
       (.I0(vga2hdmi_i_36_n_6),
        .I1(g80[12]),
        .O(vga2hdmi_i_76_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    vga2hdmi_i_77
       (.I0(vga2hdmi_i_36_n_7),
        .I1(g80[11]),
        .O(vga2hdmi_i_77_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_78
       (.I0(g80[12]),
        .I1(vga2hdmi_i_36_n_6),
        .I2(g80[13]),
        .I3(vga2hdmi_i_36_n_5),
        .O(vga2hdmi_i_78_n_0));
  LUT4 #(
    .INIT(16'hB44B)) 
    vga2hdmi_i_79
       (.I0(g80[11]),
        .I1(vga2hdmi_i_36_n_7),
        .I2(g80[12]),
        .I3(vga2hdmi_i_36_n_6),
        .O(vga2hdmi_i_79_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hF40B)) 
    vga2hdmi_i_8
       (.I0(r80[12]),
        .I1(vga2hdmi_i_30_n_6),
        .I2(vga2hdmi_i_31_n_3),
        .I3(vga2hdmi_i_28_n_5),
        .O(r8[0]));
  CARRY4 vga2hdmi_i_80
       (.CI(1'b0),
        .CO({vga2hdmi_i_80_n_0,vga2hdmi_i_80_n_1,vga2hdmi_i_80_n_2,vga2hdmi_i_80_n_3}),
        .CYINIT(1'b0),
        .DI({g80[8:6],1'b0}),
        .O(NLW_vga2hdmi_i_80_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_163_n_0,vga2hdmi_i_164_n_0,vga2hdmi_i_165_n_0,g80[5]}));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_81
       (.I0(g80[12]),
        .I1(g80[6]),
        .O(vga2hdmi_i_81_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_82
       (.I0(g80[11]),
        .I1(g80[5]),
        .O(vga2hdmi_i_82_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_83
       (.I0(g80[10]),
        .I1(g80[4]),
        .O(vga2hdmi_i_83_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_84
       (.I0(g80[9]),
        .I1(g80[3]),
        .O(vga2hdmi_i_84_n_0));
  CARRY4 vga2hdmi_i_85
       (.CI(1'b0),
        .CO({vga2hdmi_i_85_n_0,vga2hdmi_i_85_n_1,vga2hdmi_i_85_n_2,vga2hdmi_i_85_n_3}),
        .CYINIT(vga2hdmi_i_166_n_0),
        .DI({vga2hdmi_i_167_n_0,vga2hdmi_i_168_n_0,vga2hdmi_i_169_n_0,1'b0}),
        .O({b80[10:8],NLW_vga2hdmi_i_85_O_UNCONNECTED[0]}),
        .S({vga2hdmi_i_170_n_0,vga2hdmi_i_171_n_0,vga2hdmi_i_172_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_86
       (.I0(b80[12]),
        .I1(vga2hdmi_i_166_n_0),
        .O(vga2hdmi_i_86_n_0));
  CARRY4 vga2hdmi_i_87
       (.CI(1'b0),
        .CO({vga2hdmi_i_87_n_0,vga2hdmi_i_87_n_1,vga2hdmi_i_87_n_2,vga2hdmi_i_87_n_3}),
        .CYINIT(1'b0),
        .DI({b80[7],vga2hdmi_i_174_n_0,b80[5],1'b0}),
        .O(NLW_vga2hdmi_i_87_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_175_n_0,vga2hdmi_i_176_n_0,vga2hdmi_i_177_n_0,b80[4]}));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_88
       (.I0(b80[11]),
        .I1(vga2hdmi_i_166_n_0),
        .O(vga2hdmi_i_88_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_89
       (.I0(b80[10]),
        .I1(b80[5]),
        .O(vga2hdmi_i_89_n_0));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    vga2hdmi_i_9
       (.I0(vga2hdmi_i_32_n_6),
        .I1(vga2hdmi_i_33_n_4),
        .I2(vga2hdmi_i_34_n_0),
        .I3(vga2hdmi_i_33_n_5),
        .I4(vga2hdmi_i_32_n_7),
        .I5(vga2hdmi_i_32_n_5),
        .O(g8[7]));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_90
       (.I0(b80[9]),
        .I1(b80[4]),
        .O(vga2hdmi_i_90_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    vga2hdmi_i_91
       (.I0(b80[8]),
        .I1(b80[3]),
        .O(vga2hdmi_i_91_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    vga2hdmi_i_92
       (.I0(b[3]),
        .O(vga2hdmi_i_92_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    vga2hdmi_i_93
       (.I0(b[3]),
        .I1(b[4]),
        .O(vga2hdmi_i_93_n_0));
  LUT4 #(
    .INIT(16'h9995)) 
    vga2hdmi_i_94
       (.I0(b[3]),
        .I1(b[2]),
        .I2(b[0]),
        .I3(b[1]),
        .O(vga2hdmi_i_94_n_0));
  CARRY4 vga2hdmi_i_95
       (.CI(vga2hdmi_i_178_n_0),
        .CO({vga2hdmi_i_95_n_0,vga2hdmi_i_95_n_1,vga2hdmi_i_95_n_2,vga2hdmi_i_95_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_179_n_0,vga2hdmi_i_180_n_0,vga2hdmi_i_181_n_0,vga2hdmi_i_182_n_0}),
        .O({vga2hdmi_i_95_n_4,vga2hdmi_i_95_n_5,vga2hdmi_i_95_n_6,vga2hdmi_i_95_n_7}),
        .S({vga2hdmi_i_183_n_0,vga2hdmi_i_184_n_0,vga2hdmi_i_185_n_0,vga2hdmi_i_186_n_0}));
  LUT3 #(
    .INIT(8'hD4)) 
    vga2hdmi_i_96
       (.I0(vga2hdmi_i_39_n_6),
        .I1(vga2hdmi_i_40_n_4),
        .I2(vga2hdmi_i_187_n_5),
        .O(vga2hdmi_i_96_n_0));
  LUT5 #(
    .INIT(32'hC369693C)) 
    vga2hdmi_i_97
       (.I0(vga2hdmi_i_39_n_1),
        .I1(vga2hdmi_i_39_n_6),
        .I2(vga2hdmi_i_188_n_3),
        .I3(vga2hdmi_i_39_n_7),
        .I4(vga2hdmi_i_187_n_4),
        .O(vga2hdmi_i_97_n_0));
  LUT6 #(
    .INIT(64'h8E71718E718E8E71)) 
    vga2hdmi_i_98
       (.I0(vga2hdmi_i_187_n_5),
        .I1(vga2hdmi_i_40_n_4),
        .I2(vga2hdmi_i_39_n_6),
        .I3(vga2hdmi_i_39_n_1),
        .I4(vga2hdmi_i_187_n_4),
        .I5(vga2hdmi_i_39_n_7),
        .O(vga2hdmi_i_98_n_0));
  CARRY4 vga2hdmi_i_99
       (.CI(vga2hdmi_i_189_n_0),
        .CO({vga2hdmi_i_99_n_0,vga2hdmi_i_99_n_1,vga2hdmi_i_99_n_2,vga2hdmi_i_99_n_3}),
        .CYINIT(1'b0),
        .DI({vga2hdmi_i_190_n_0,vga2hdmi_i_191_n_0,vga2hdmi_i_192_n_0,vga2hdmi_i_193_n_0}),
        .O(NLW_vga2hdmi_i_99_O_UNCONNECTED[3:0]),
        .S({vga2hdmi_i_194_n_0,vga2hdmi_i_195_n_0,vga2hdmi_i_196_n_0,vga2hdmi_i_197_n_0}));
endmodule

(* ORIG_REF_NAME = "rgb2dvi" *) (* kClkPrimitive = "PLL" *) (* kClkRange = "1" *) 
(* kClkSwap = "FALSE" *) (* kD0Swap = "FALSE" *) (* kD1Swap = "FALSE" *) 
(* kD2Swap = "FALSE" *) (* kGenerateSerialClk = "FALSE" *) (* kRstActiveHigh = "TRUE" *) 
module processor_design_hdmi_out_0_0_rgb2dvi
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    aRst_n,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  output TMDS_Clk_p;
  output TMDS_Clk_n;
  output [2:0]TMDS_Data_p;
  output [2:0]TMDS_Data_n;
  input aRst;
  input aRst_n;
  input [23:0]vid_pData;
  input vid_pVDE;
  input vid_pHSync;
  input vid_pVSync;
  input PixelClk;
  input SerialClk;

  wire PixelClk;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [9:0]\pDataOutRaw[0] ;
  wire [9:0]\pDataOutRaw[1] ;
  wire [9:0]\pDataOutRaw[2] ;
  wire pRstLck;
  wire p_1_in;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  processor_design_hdmi_out_0_0_OutputSERDES ClockSerializer
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .aRst(pRstLck));
  processor_design_hdmi_out_0_0_TMDS_Encoder \DataEncoders[0].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[0] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[15:8]),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
  processor_design_hdmi_out_0_0_OutputSERDES_0 \DataEncoders[0].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[0]),
        .TMDS_Data_p(TMDS_Data_p[0]),
        .aRst(pRstLck),
        .pDataOut(\pDataOutRaw[0] ));
  processor_design_hdmi_out_0_0_TMDS_Encoder_1 \DataEncoders[1].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[1] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[7:0]));
  processor_design_hdmi_out_0_0_OutputSERDES_2 \DataEncoders[1].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[1]),
        .TMDS_Data_p(TMDS_Data_p[1]),
        .out(pRstLck),
        .pDataOut(\pDataOutRaw[1] ));
  processor_design_hdmi_out_0_0_TMDS_Encoder_3 \DataEncoders[2].DataEncoder 
       (.PixelClk(PixelClk),
        .Q(\pDataOutRaw[2] ),
        .SR(p_1_in),
        .vid_pData(vid_pData[23:16]));
  processor_design_hdmi_out_0_0_OutputSERDES_4 \DataEncoders[2].DataSerializer 
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Data_n(TMDS_Data_n[2]),
        .TMDS_Data_p(TMDS_Data_p[2]),
        .out(pRstLck),
        .pDataOut(\pDataOutRaw[2] ));
  processor_design_hdmi_out_0_0_ResetBridge LockLostReset
       (.PixelClk(PixelClk),
        .aRst(aRst),
        .out(pRstLck));
endmodule

(* CHECK_LICENSE_TYPE = "rgb2dvi_0,rgb2dvi,{}" *) (* ORIG_REF_NAME = "rgb2dvi_0" *) (* downgradeipidentifiedwarnings = "yes" *) 
(* x_core_info = "rgb2dvi,Vivado 2018.2" *) 
module processor_design_hdmi_out_0_0_rgb2dvi_0
   (TMDS_Clk_p,
    TMDS_Clk_n,
    TMDS_Data_p,
    TMDS_Data_n,
    aRst,
    vid_pData,
    vid_pVDE,
    vid_pHSync,
    vid_pVSync,
    PixelClk,
    SerialClk);
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_P, xilinx.com:signal:clock:1.0 TMDS_Clk_p CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS, BOARD.ASSOCIATED_PARAM TMDS_BOARD_INTERFACE, XIL_INTERFACENAME TMDS_Clk_p, FREQ_HZ 100000000, PHASE 0.000" *) output TMDS_Clk_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS CLK_N, xilinx.com:signal:clock:1.0 TMDS_Clk_n CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME TMDS_Clk_n, ASSOCIATED_RESET aRst_n, FREQ_HZ 100000000, PHASE 0.000" *) output TMDS_Clk_n;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_P" *) output [2:0]TMDS_Data_p;
  (* x_interface_info = "digilentinc.com:interface:tmds:1.0 TMDS DATA_N" *) output [2:0]TMDS_Data_n;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 AsyncRst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME AsyncRst, POLARITY ACTIVE_HIGH" *) input aRst;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB DATA" *) input [23:0]vid_pData;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB ACTIVE_VIDEO" *) input vid_pVDE;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB HSYNC" *) input vid_pHSync;
  (* x_interface_info = "xilinx.com:interface:vid_io:1.0 RGB VSYNC" *) input vid_pVSync;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 PixelClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME PixelClk, FREQ_HZ 100000000, PHASE 0.000" *) input PixelClk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 SerialClk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME SerialClk, ASSOCIATED_RESET aRst:aRst_n:pRst:pRst_n, FREQ_HZ 100000000, PHASE 0.000" *) input SerialClk;

  wire PixelClk;
  wire SerialClk;
  wire TMDS_Clk_n;
  wire TMDS_Clk_p;
  wire [2:0]TMDS_Data_n;
  wire [2:0]TMDS_Data_p;
  wire aRst;
  wire [23:0]vid_pData;
  wire vid_pHSync;
  wire vid_pVDE;
  wire vid_pVSync;

  (* kClkPrimitive = "PLL" *) 
  (* kClkRange = "1" *) 
  (* kClkSwap = "FALSE" *) 
  (* kD0Swap = "FALSE" *) 
  (* kD1Swap = "FALSE" *) 
  (* kD2Swap = "FALSE" *) 
  (* kGenerateSerialClk = "FALSE" *) 
  (* kRstActiveHigh = "TRUE" *) 
  processor_design_hdmi_out_0_0_rgb2dvi U0
       (.PixelClk(PixelClk),
        .SerialClk(SerialClk),
        .TMDS_Clk_n(TMDS_Clk_n),
        .TMDS_Clk_p(TMDS_Clk_p),
        .TMDS_Data_n(TMDS_Data_n),
        .TMDS_Data_p(TMDS_Data_p),
        .aRst(aRst),
        .aRst_n(1'b1),
        .vid_pData(vid_pData),
        .vid_pHSync(vid_pHSync),
        .vid_pVDE(vid_pVDE),
        .vid_pVSync(vid_pVSync));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
