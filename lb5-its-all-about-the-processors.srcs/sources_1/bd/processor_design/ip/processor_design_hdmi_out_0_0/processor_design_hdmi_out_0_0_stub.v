// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:31:30 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_hdmi_out_0_0/processor_design_hdmi_out_0_0_stub.v
// Design      : processor_design_hdmi_out_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "hdmi_out,Vivado 2018.2" *)
module processor_design_hdmi_out_0_0(clk, en, r, g, b, hs, vs, vid, hdmi_tx_clk_n, 
  hdmi_tx_clk_p, hdmi_tx_n, hdmi_tx_p)
/* synthesis syn_black_box black_box_pad_pin="clk,en,r[4:0],g[5:0],b[4:0],hs,vs,vid,hdmi_tx_clk_n,hdmi_tx_clk_p,hdmi_tx_n[2:0],hdmi_tx_p[2:0]" */;
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
endmodule
