// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:14:00 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_blk_mem_gen_1_0/processor_design_blk_mem_gen_1_0_stub.v
// Design      : processor_design_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2018.2" *)
module processor_design_blk_mem_gen_1_0(clka, wea, addra, dina, douta)
/* synthesis syn_black_box black_box_pad_pin="clka,wea[0:0],addra[14:0],dina[15:0],douta[15:0]" */;
  input clka;
  input [0:0]wea;
  input [14:0]addra;
  input [15:0]dina;
  output [15:0]douta;
endmodule
