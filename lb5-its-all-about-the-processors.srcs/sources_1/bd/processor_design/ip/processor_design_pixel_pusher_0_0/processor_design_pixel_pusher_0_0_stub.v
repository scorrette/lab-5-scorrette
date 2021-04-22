// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:31:25 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_pixel_pusher_0_0/processor_design_pixel_pusher_0_0_stub.v
// Design      : processor_design_pixel_pusher_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "pixel_pusher,Vivado 2018.2" *)
module processor_design_pixel_pusher_0_0(clk, en, vs, pixel, hcount, vid, r, b, g, addr)
/* synthesis syn_black_box black_box_pad_pin="clk,en,vs,pixel[15:0],hcount[9:0],vid,r[4:0],b[4:0],g[5:0],addr[11:0]" */;
  input clk;
  input en;
  input vs;
  input [15:0]pixel;
  input [9:0]hcount;
  input vid;
  output [4:0]r;
  output [4:0]b;
  output [5:0]g;
  output [11:0]addr;
endmodule
