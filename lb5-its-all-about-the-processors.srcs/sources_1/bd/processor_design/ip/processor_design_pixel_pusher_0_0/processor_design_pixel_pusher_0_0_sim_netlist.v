// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:31:25 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_pixel_pusher_0_0/processor_design_pixel_pusher_0_0_sim_netlist.v
// Design      : processor_design_pixel_pusher_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_pixel_pusher_0_0,pixel_pusher,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "pixel_pusher,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_pixel_pusher_0_0
   (clk,
    en,
    vs,
    pixel,
    hcount,
    vid,
    r,
    b,
    g,
    addr);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  input vs;
  input [15:0]pixel;
  input [9:0]hcount;
  input vid;
  output [4:0]r;
  output [4:0]b;
  output [5:0]g;
  output [11:0]addr;

  wire [11:0]addr;
  wire [4:0]b;
  wire clk;
  wire en;
  wire [5:0]g;
  wire [9:0]hcount;
  wire [15:0]pixel;
  wire [4:0]r;
  wire vid;
  wire vs;

  processor_design_pixel_pusher_0_0_pixel_pusher U0
       (.addr(addr),
        .b(b),
        .clk(clk),
        .en(en),
        .g(g),
        .hcount(hcount[9:6]),
        .pixel(pixel),
        .r(r),
        .vid(vid),
        .vs(vs));
endmodule

(* ORIG_REF_NAME = "pixel_pusher" *) 
module processor_design_pixel_pusher_0_0_pixel_pusher
   (r,
    b,
    g,
    addr,
    en,
    hcount,
    vid,
    pixel,
    clk,
    vs);
  output [4:0]r;
  output [4:0]b;
  output [5:0]g;
  output [11:0]addr;
  input en;
  input [3:0]hcount;
  input vid;
  input [15:0]pixel;
  input clk;
  input vs;

  wire [11:0]addr;
  wire addr_count;
  wire \addr_count[11]_i_1_n_0 ;
  wire \addr_count[11]_i_4_n_0 ;
  wire \addr_count[3]_i_2_n_0 ;
  wire \addr_count_reg[11]_i_3_n_1 ;
  wire \addr_count_reg[11]_i_3_n_2 ;
  wire \addr_count_reg[11]_i_3_n_3 ;
  wire \addr_count_reg[11]_i_3_n_4 ;
  wire \addr_count_reg[11]_i_3_n_5 ;
  wire \addr_count_reg[11]_i_3_n_6 ;
  wire \addr_count_reg[11]_i_3_n_7 ;
  wire \addr_count_reg[3]_i_1_n_0 ;
  wire \addr_count_reg[3]_i_1_n_1 ;
  wire \addr_count_reg[3]_i_1_n_2 ;
  wire \addr_count_reg[3]_i_1_n_3 ;
  wire \addr_count_reg[3]_i_1_n_4 ;
  wire \addr_count_reg[3]_i_1_n_5 ;
  wire \addr_count_reg[3]_i_1_n_6 ;
  wire \addr_count_reg[3]_i_1_n_7 ;
  wire \addr_count_reg[7]_i_1_n_0 ;
  wire \addr_count_reg[7]_i_1_n_1 ;
  wire \addr_count_reg[7]_i_1_n_2 ;
  wire \addr_count_reg[7]_i_1_n_3 ;
  wire \addr_count_reg[7]_i_1_n_4 ;
  wire \addr_count_reg[7]_i_1_n_5 ;
  wire \addr_count_reg[7]_i_1_n_6 ;
  wire \addr_count_reg[7]_i_1_n_7 ;
  wire [4:0]b;
  wire clk;
  wire en;
  wire [5:0]g;
  wire [3:0]hcount;
  wire [15:0]pixel;
  wire [4:0]r;
  wire \r[4]_i_1_n_0 ;
  wire vid;
  wire vs;
  wire [3:3]\NLW_addr_count_reg[11]_i_3_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'h02)) 
    \addr_count[11]_i_1 
       (.I0(en),
        .I1(vs),
        .I2(\addr_count[11]_i_4_n_0 ),
        .O(\addr_count[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \addr_count[11]_i_2 
       (.I0(en),
        .I1(hcount[3]),
        .I2(hcount[2]),
        .I3(hcount[0]),
        .I4(hcount[1]),
        .I5(vid),
        .O(addr_count));
  LUT5 #(
    .INIT(32'h00000002)) 
    \addr_count[11]_i_4 
       (.I0(vid),
        .I1(hcount[1]),
        .I2(hcount[0]),
        .I3(hcount[2]),
        .I4(hcount[3]),
        .O(\addr_count[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \addr_count[3]_i_2 
       (.I0(addr[0]),
        .O(\addr_count[3]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[0] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[3]_i_1_n_7 ),
        .Q(addr[0]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[10] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[11]_i_3_n_5 ),
        .Q(addr[10]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[11] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[11]_i_3_n_4 ),
        .Q(addr[11]),
        .R(\addr_count[11]_i_1_n_0 ));
  CARRY4 \addr_count_reg[11]_i_3 
       (.CI(\addr_count_reg[7]_i_1_n_0 ),
        .CO({\NLW_addr_count_reg[11]_i_3_CO_UNCONNECTED [3],\addr_count_reg[11]_i_3_n_1 ,\addr_count_reg[11]_i_3_n_2 ,\addr_count_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_count_reg[11]_i_3_n_4 ,\addr_count_reg[11]_i_3_n_5 ,\addr_count_reg[11]_i_3_n_6 ,\addr_count_reg[11]_i_3_n_7 }),
        .S(addr[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[1] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[3]_i_1_n_6 ),
        .Q(addr[1]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[2] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[3]_i_1_n_5 ),
        .Q(addr[2]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[3] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[3]_i_1_n_4 ),
        .Q(addr[3]),
        .R(\addr_count[11]_i_1_n_0 ));
  CARRY4 \addr_count_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\addr_count_reg[3]_i_1_n_0 ,\addr_count_reg[3]_i_1_n_1 ,\addr_count_reg[3]_i_1_n_2 ,\addr_count_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\addr_count_reg[3]_i_1_n_4 ,\addr_count_reg[3]_i_1_n_5 ,\addr_count_reg[3]_i_1_n_6 ,\addr_count_reg[3]_i_1_n_7 }),
        .S({addr[3:1],\addr_count[3]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[4] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[7]_i_1_n_7 ),
        .Q(addr[4]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[5] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[7]_i_1_n_6 ),
        .Q(addr[5]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[6] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[7]_i_1_n_5 ),
        .Q(addr[6]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[7] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[7]_i_1_n_4 ),
        .Q(addr[7]),
        .R(\addr_count[11]_i_1_n_0 ));
  CARRY4 \addr_count_reg[7]_i_1 
       (.CI(\addr_count_reg[3]_i_1_n_0 ),
        .CO({\addr_count_reg[7]_i_1_n_0 ,\addr_count_reg[7]_i_1_n_1 ,\addr_count_reg[7]_i_1_n_2 ,\addr_count_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\addr_count_reg[7]_i_1_n_4 ,\addr_count_reg[7]_i_1_n_5 ,\addr_count_reg[7]_i_1_n_6 ,\addr_count_reg[7]_i_1_n_7 }),
        .S(addr[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[8] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[11]_i_3_n_7 ),
        .Q(addr[8]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_count_reg[9] 
       (.C(clk),
        .CE(addr_count),
        .D(\addr_count_reg[11]_i_3_n_6 ),
        .Q(addr[9]),
        .R(\addr_count[11]_i_1_n_0 ));
  FDRE \b_reg[0] 
       (.C(clk),
        .CE(en),
        .D(pixel[0]),
        .Q(b[0]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \b_reg[1] 
       (.C(clk),
        .CE(en),
        .D(pixel[1]),
        .Q(b[1]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \b_reg[2] 
       (.C(clk),
        .CE(en),
        .D(pixel[2]),
        .Q(b[2]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \b_reg[3] 
       (.C(clk),
        .CE(en),
        .D(pixel[3]),
        .Q(b[3]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \b_reg[4] 
       (.C(clk),
        .CE(en),
        .D(pixel[4]),
        .Q(b[4]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[0] 
       (.C(clk),
        .CE(en),
        .D(pixel[5]),
        .Q(g[0]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[1] 
       (.C(clk),
        .CE(en),
        .D(pixel[6]),
        .Q(g[1]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[2] 
       (.C(clk),
        .CE(en),
        .D(pixel[7]),
        .Q(g[2]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[3] 
       (.C(clk),
        .CE(en),
        .D(pixel[8]),
        .Q(g[3]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[4] 
       (.C(clk),
        .CE(en),
        .D(pixel[9]),
        .Q(g[4]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \g_reg[5] 
       (.C(clk),
        .CE(en),
        .D(pixel[10]),
        .Q(g[5]),
        .R(\r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAAAAAAA)) 
    \r[4]_i_1 
       (.I0(en),
        .I1(hcount[3]),
        .I2(hcount[2]),
        .I3(hcount[0]),
        .I4(hcount[1]),
        .I5(vid),
        .O(\r[4]_i_1_n_0 ));
  FDRE \r_reg[0] 
       (.C(clk),
        .CE(en),
        .D(pixel[11]),
        .Q(r[0]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \r_reg[1] 
       (.C(clk),
        .CE(en),
        .D(pixel[12]),
        .Q(r[1]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \r_reg[2] 
       (.C(clk),
        .CE(en),
        .D(pixel[13]),
        .Q(r[2]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \r_reg[3] 
       (.C(clk),
        .CE(en),
        .D(pixel[14]),
        .Q(r[3]),
        .R(\r[4]_i_1_n_0 ));
  FDRE \r_reg[4] 
       (.C(clk),
        .CE(en),
        .D(pixel[15]),
        .Q(r[4]),
        .R(\r[4]_i_1_n_0 ));
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
