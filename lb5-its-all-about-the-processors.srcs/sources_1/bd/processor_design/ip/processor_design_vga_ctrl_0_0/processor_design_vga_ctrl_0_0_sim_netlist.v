// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:12:18 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_vga_ctrl_0_0/processor_design_vga_ctrl_0_0_sim_netlist.v
// Design      : processor_design_vga_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_vga_ctrl_0_0,vga_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "vga_ctrl,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_vga_ctrl_0_0
   (clk,
    en,
    hcount,
    vcount,
    vid,
    hs,
    vs);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  output [9:0]hcount;
  output [9:0]vcount;
  output vid;
  output hs;
  output vs;

  wire clk;
  wire en;
  wire [9:0]hcount;
  wire hs;
  wire [9:0]vcount;
  wire vid;
  wire vs;

  processor_design_vga_ctrl_0_0_vga_ctrl U0
       (.Q(hcount),
        .clk(clk),
        .en(en),
        .hs(hs),
        .\vcount[9] (vcount),
        .vid(vid),
        .vs(vs));
endmodule

(* ORIG_REF_NAME = "vga_ctrl" *) 
module processor_design_vga_ctrl_0_0_vga_ctrl
   (Q,
    \vcount[9] ,
    hs,
    vs,
    vid,
    en,
    clk);
  output [9:0]Q;
  output [9:0]\vcount[9] ;
  output hs;
  output vs;
  output vid;
  input en;
  input clk;

  wire [9:0]Q;
  wire clk;
  wire en;
  wire hcounter;
  wire \hcounter[9]_i_3_n_0 ;
  wire \hcounter[9]_i_4_n_0 ;
  wire \hcounter[9]_i_5_n_0 ;
  wire hs;
  wire [9:0]plusOp;
  wire [9:0]plusOp__0;
  wire [9:0]\vcount[9] ;
  wire vcounter;
  wire \vcounter[9]_i_3_n_0 ;
  wire \vcounter[9]_i_4_n_0 ;
  wire \vcounter[9]_i_5_n_0 ;
  wire \vcounter[9]_i_6_n_0 ;
  wire vid;
  wire vid_INST_0_i_1_n_0;
  wire vs;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hcounter[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcounter[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcounter[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcounter[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(plusOp[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcounter[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hcounter[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(plusOp[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hcounter[6]_i_1 
       (.I0(\hcounter[9]_i_5_n_0 ),
        .I1(Q[6]),
        .O(plusOp[6]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hcounter[7]_i_1 
       (.I0(\hcounter[9]_i_5_n_0 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .O(plusOp[7]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hcounter[8]_i_1 
       (.I0(Q[6]),
        .I1(\hcounter[9]_i_5_n_0 ),
        .I2(Q[7]),
        .I3(Q[8]),
        .O(plusOp[8]));
  LUT5 #(
    .INIT(32'h0080AAAA)) 
    \hcounter[9]_i_1 
       (.I0(en),
        .I1(Q[0]),
        .I2(Q[4]),
        .I3(\hcounter[9]_i_3_n_0 ),
        .I4(\hcounter[9]_i_4_n_0 ),
        .O(hcounter));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hcounter[9]_i_2 
       (.I0(Q[7]),
        .I1(\hcounter[9]_i_5_n_0 ),
        .I2(Q[6]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(plusOp[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \hcounter[9]_i_3 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[8]),
        .I4(Q[9]),
        .O(\hcounter[9]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7777777F)) 
    \hcounter[9]_i_4 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\hcounter[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \hcounter[9]_i_5 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(Q[4]),
        .O(\hcounter[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[0] 
       (.C(clk),
        .CE(en),
        .D(plusOp[0]),
        .Q(Q[0]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[1] 
       (.C(clk),
        .CE(en),
        .D(plusOp[1]),
        .Q(Q[1]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[2] 
       (.C(clk),
        .CE(en),
        .D(plusOp[2]),
        .Q(Q[2]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[3] 
       (.C(clk),
        .CE(en),
        .D(plusOp[3]),
        .Q(Q[3]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[4] 
       (.C(clk),
        .CE(en),
        .D(plusOp[4]),
        .Q(Q[4]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[5] 
       (.C(clk),
        .CE(en),
        .D(plusOp[5]),
        .Q(Q[5]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[6] 
       (.C(clk),
        .CE(en),
        .D(plusOp[6]),
        .Q(Q[6]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[7] 
       (.C(clk),
        .CE(en),
        .D(plusOp[7]),
        .Q(Q[7]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[8] 
       (.C(clk),
        .CE(en),
        .D(plusOp[8]),
        .Q(Q[8]),
        .R(hcounter));
  FDRE #(
    .INIT(1'b0)) 
    \hcounter_reg[9] 
       (.C(clk),
        .CE(en),
        .D(plusOp[9]),
        .Q(Q[9]),
        .R(hcounter));
  LUT6 #(
    .INIT(64'hFFFFFFFFD5FF57FF)) 
    hs_INST_0
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[9]),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(hs));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \vcounter[0]_i_1 
       (.I0(\vcount[9] [0]),
        .O(plusOp__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \vcounter[1]_i_1 
       (.I0(\vcount[9] [0]),
        .I1(\vcount[9] [1]),
        .O(plusOp__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcounter[2]_i_1 
       (.I0(\vcount[9] [0]),
        .I1(\vcount[9] [1]),
        .I2(\vcount[9] [2]),
        .O(plusOp__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcounter[3]_i_1 
       (.I0(\vcount[9] [1]),
        .I1(\vcount[9] [0]),
        .I2(\vcount[9] [2]),
        .I3(\vcount[9] [3]),
        .O(plusOp__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcounter[4]_i_1 
       (.I0(\vcount[9] [2]),
        .I1(\vcount[9] [0]),
        .I2(\vcount[9] [1]),
        .I3(\vcount[9] [3]),
        .I4(\vcount[9] [4]),
        .O(plusOp__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \vcounter[5]_i_1 
       (.I0(\vcount[9] [3]),
        .I1(\vcount[9] [1]),
        .I2(\vcount[9] [0]),
        .I3(\vcount[9] [2]),
        .I4(\vcount[9] [4]),
        .I5(\vcount[9] [5]),
        .O(plusOp__0[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \vcounter[6]_i_1 
       (.I0(\vcounter[9]_i_6_n_0 ),
        .I1(\vcount[9] [6]),
        .O(plusOp__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \vcounter[7]_i_1 
       (.I0(\vcounter[9]_i_6_n_0 ),
        .I1(\vcount[9] [6]),
        .I2(\vcount[9] [7]),
        .O(plusOp__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \vcounter[8]_i_1 
       (.I0(\vcount[9] [6]),
        .I1(\vcounter[9]_i_6_n_0 ),
        .I2(\vcount[9] [7]),
        .I3(\vcount[9] [8]),
        .O(plusOp__0[8]));
  LUT6 #(
    .INIT(64'h002A002A002A2A2A)) 
    \vcounter[9]_i_1 
       (.I0(en),
        .I1(\vcounter[9]_i_3_n_0 ),
        .I2(\vcounter[9]_i_4_n_0 ),
        .I3(\hcounter[9]_i_4_n_0 ),
        .I4(\hcounter[9]_i_3_n_0 ),
        .I5(\vcounter[9]_i_5_n_0 ),
        .O(vcounter));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \vcounter[9]_i_2 
       (.I0(\vcount[9] [7]),
        .I1(\vcounter[9]_i_6_n_0 ),
        .I2(\vcount[9] [6]),
        .I3(\vcount[9] [8]),
        .I4(\vcount[9] [9]),
        .O(plusOp__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \vcounter[9]_i_3 
       (.I0(\vcount[9] [3]),
        .I1(\vcount[9] [2]),
        .I2(\vcount[9] [9]),
        .O(\vcounter[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555557)) 
    \vcounter[9]_i_4 
       (.I0(\vcount[9] [9]),
        .I1(\vcount[9] [6]),
        .I2(\vcount[9] [8]),
        .I3(\vcount[9] [4]),
        .I4(\vcount[9] [5]),
        .I5(\vcount[9] [7]),
        .O(\vcounter[9]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \vcounter[9]_i_5 
       (.I0(Q[4]),
        .I1(Q[0]),
        .O(\vcounter[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \vcounter[9]_i_6 
       (.I0(\vcount[9] [5]),
        .I1(\vcount[9] [3]),
        .I2(\vcount[9] [1]),
        .I3(\vcount[9] [0]),
        .I4(\vcount[9] [2]),
        .I5(\vcount[9] [4]),
        .O(\vcounter[9]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[0] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[0]),
        .Q(\vcount[9] [0]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[1] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[1]),
        .Q(\vcount[9] [1]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[2] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[2]),
        .Q(\vcount[9] [2]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[3] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[3]),
        .Q(\vcount[9] [3]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[4] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[4]),
        .Q(\vcount[9] [4]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[5] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[5]),
        .Q(\vcount[9] [5]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[6] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[6]),
        .Q(\vcount[9] [6]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[7] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[7]),
        .Q(\vcount[9] [7]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[8] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[8]),
        .Q(\vcount[9] [8]),
        .R(vcounter));
  FDRE #(
    .INIT(1'b0)) 
    \vcounter_reg[9] 
       (.C(clk),
        .CE(hcounter),
        .D(plusOp__0[9]),
        .Q(\vcount[9] [9]),
        .R(vcounter));
  LUT5 #(
    .INIT(32'h0000001F)) 
    vid_INST_0
       (.I0(Q[7]),
        .I1(Q[8]),
        .I2(Q[9]),
        .I3(vid_INST_0_i_1_n_0),
        .I4(\vcount[9] [9]),
        .O(vid));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    vid_INST_0_i_1
       (.I0(\vcount[9] [8]),
        .I1(\vcount[9] [7]),
        .I2(\vcount[9] [5]),
        .I3(\vcount[9] [6]),
        .O(vid_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    vs_INST_0
       (.I0(\vcount[9] [1]),
        .I1(\vcount[9] [4]),
        .I2(vid_INST_0_i_1_n_0),
        .I3(\vcount[9] [3]),
        .I4(\vcount[9] [2]),
        .I5(\vcount[9] [9]),
        .O(vs));
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
