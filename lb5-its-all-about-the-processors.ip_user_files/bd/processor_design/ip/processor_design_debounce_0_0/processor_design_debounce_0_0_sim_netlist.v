// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:12:18 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_debounce_0_0/processor_design_debounce_0_0_sim_netlist.v
// Design      : processor_design_debounce_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_debounce_0_0,debounce,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "debounce,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_debounce_0_0
   (clk,
    btn,
    dbnc);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input btn;
  output dbnc;

  wire btn;
  wire clk;
  wire dbnc;

  processor_design_debounce_0_0_debounce U0
       (.btn(btn),
        .clk(clk),
        .dbnc(dbnc));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module processor_design_debounce_0_0_debounce
   (dbnc,
    clk,
    btn);
  output dbnc;
  input clk;
  input btn;

  wire btn;
  wire [1:0]btn_val;
  wire clear;
  wire clk;
  wire cnt0;
  wire \cnt[0]_i_4_n_0 ;
  wire \cnt[0]_i_5_n_0 ;
  wire [21:0]cnt_reg;
  wire \cnt_reg[0]_i_3_n_0 ;
  wire \cnt_reg[0]_i_3_n_1 ;
  wire \cnt_reg[0]_i_3_n_2 ;
  wire \cnt_reg[0]_i_3_n_3 ;
  wire \cnt_reg[0]_i_3_n_4 ;
  wire \cnt_reg[0]_i_3_n_5 ;
  wire \cnt_reg[0]_i_3_n_6 ;
  wire \cnt_reg[0]_i_3_n_7 ;
  wire \cnt_reg[12]_i_1_n_0 ;
  wire \cnt_reg[12]_i_1_n_1 ;
  wire \cnt_reg[12]_i_1_n_2 ;
  wire \cnt_reg[12]_i_1_n_3 ;
  wire \cnt_reg[12]_i_1_n_4 ;
  wire \cnt_reg[12]_i_1_n_5 ;
  wire \cnt_reg[12]_i_1_n_6 ;
  wire \cnt_reg[12]_i_1_n_7 ;
  wire \cnt_reg[16]_i_1_n_0 ;
  wire \cnt_reg[16]_i_1_n_1 ;
  wire \cnt_reg[16]_i_1_n_2 ;
  wire \cnt_reg[16]_i_1_n_3 ;
  wire \cnt_reg[16]_i_1_n_4 ;
  wire \cnt_reg[16]_i_1_n_5 ;
  wire \cnt_reg[16]_i_1_n_6 ;
  wire \cnt_reg[16]_i_1_n_7 ;
  wire \cnt_reg[20]_i_1_n_3 ;
  wire \cnt_reg[20]_i_1_n_6 ;
  wire \cnt_reg[20]_i_1_n_7 ;
  wire \cnt_reg[4]_i_1_n_0 ;
  wire \cnt_reg[4]_i_1_n_1 ;
  wire \cnt_reg[4]_i_1_n_2 ;
  wire \cnt_reg[4]_i_1_n_3 ;
  wire \cnt_reg[4]_i_1_n_4 ;
  wire \cnt_reg[4]_i_1_n_5 ;
  wire \cnt_reg[4]_i_1_n_6 ;
  wire \cnt_reg[4]_i_1_n_7 ;
  wire \cnt_reg[8]_i_1_n_0 ;
  wire \cnt_reg[8]_i_1_n_1 ;
  wire \cnt_reg[8]_i_1_n_2 ;
  wire \cnt_reg[8]_i_1_n_3 ;
  wire \cnt_reg[8]_i_1_n_4 ;
  wire \cnt_reg[8]_i_1_n_5 ;
  wire \cnt_reg[8]_i_1_n_6 ;
  wire \cnt_reg[8]_i_1_n_7 ;
  wire dbnc;
  wire dbnc_val_i_1_n_0;
  wire dbnc_val_i_2_n_0;
  wire dbnc_val_i_3_n_0;
  wire dbnc_val_i_4_n_0;
  wire dbnc_val_i_5_n_0;
  wire dbnc_val_i_6_n_0;
  wire dbnc_val_i_7_n_0;
  wire dbnc_val_i_8_n_0;
  wire [3:1]\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_reg[20]_i_1_O_UNCONNECTED ;

  FDRE #(
    .INIT(1'b0)) 
    \btn_val_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(btn),
        .Q(btn_val[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \btn_val_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(btn_val[0]),
        .Q(btn_val[1]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \cnt[0]_i_1 
       (.I0(btn_val[0]),
        .I1(btn_val[1]),
        .O(clear));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \cnt[0]_i_2 
       (.I0(dbnc_val_i_2_n_0),
        .I1(\cnt[0]_i_4_n_0 ),
        .I2(cnt_reg[17]),
        .I3(cnt_reg[21]),
        .I4(cnt_reg[18]),
        .I5(dbnc_val_i_4_n_0),
        .O(cnt0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[0]_i_4 
       (.I0(cnt_reg[14]),
        .I1(cnt_reg[13]),
        .I2(cnt_reg[15]),
        .I3(cnt_reg[16]),
        .O(\cnt[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_5 
       (.I0(cnt_reg[0]),
        .O(\cnt[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[0]_i_3_n_7 ),
        .Q(cnt_reg[0]),
        .R(clear));
  CARRY4 \cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\cnt_reg[0]_i_3_n_0 ,\cnt_reg[0]_i_3_n_1 ,\cnt_reg[0]_i_3_n_2 ,\cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\cnt_reg[0]_i_3_n_4 ,\cnt_reg[0]_i_3_n_5 ,\cnt_reg[0]_i_3_n_6 ,\cnt_reg[0]_i_3_n_7 }),
        .S({cnt_reg[3:1],\cnt[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[8]_i_1_n_5 ),
        .Q(cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[8]_i_1_n_4 ),
        .Q(cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[12]_i_1_n_7 ),
        .Q(cnt_reg[12]),
        .R(clear));
  CARRY4 \cnt_reg[12]_i_1 
       (.CI(\cnt_reg[8]_i_1_n_0 ),
        .CO({\cnt_reg[12]_i_1_n_0 ,\cnt_reg[12]_i_1_n_1 ,\cnt_reg[12]_i_1_n_2 ,\cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[12]_i_1_n_4 ,\cnt_reg[12]_i_1_n_5 ,\cnt_reg[12]_i_1_n_6 ,\cnt_reg[12]_i_1_n_7 }),
        .S(cnt_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[12]_i_1_n_6 ),
        .Q(cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[12]_i_1_n_5 ),
        .Q(cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[12]_i_1_n_4 ),
        .Q(cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[16]_i_1_n_7 ),
        .Q(cnt_reg[16]),
        .R(clear));
  CARRY4 \cnt_reg[16]_i_1 
       (.CI(\cnt_reg[12]_i_1_n_0 ),
        .CO({\cnt_reg[16]_i_1_n_0 ,\cnt_reg[16]_i_1_n_1 ,\cnt_reg[16]_i_1_n_2 ,\cnt_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[16]_i_1_n_4 ,\cnt_reg[16]_i_1_n_5 ,\cnt_reg[16]_i_1_n_6 ,\cnt_reg[16]_i_1_n_7 }),
        .S(cnt_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[17] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[16]_i_1_n_6 ),
        .Q(cnt_reg[17]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[18] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[16]_i_1_n_5 ),
        .Q(cnt_reg[18]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[19] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[16]_i_1_n_4 ),
        .Q(cnt_reg[19]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[0]_i_3_n_6 ),
        .Q(cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[20] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[20]_i_1_n_7 ),
        .Q(cnt_reg[20]),
        .R(clear));
  CARRY4 \cnt_reg[20]_i_1 
       (.CI(\cnt_reg[16]_i_1_n_0 ),
        .CO({\NLW_cnt_reg[20]_i_1_CO_UNCONNECTED [3:1],\cnt_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_reg[20]_i_1_O_UNCONNECTED [3:2],\cnt_reg[20]_i_1_n_6 ,\cnt_reg[20]_i_1_n_7 }),
        .S({1'b0,1'b0,cnt_reg[21:20]}));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[21] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[20]_i_1_n_6 ),
        .Q(cnt_reg[21]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[0]_i_3_n_5 ),
        .Q(cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[0]_i_3_n_4 ),
        .Q(cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[4]_i_1_n_7 ),
        .Q(cnt_reg[4]),
        .R(clear));
  CARRY4 \cnt_reg[4]_i_1 
       (.CI(\cnt_reg[0]_i_3_n_0 ),
        .CO({\cnt_reg[4]_i_1_n_0 ,\cnt_reg[4]_i_1_n_1 ,\cnt_reg[4]_i_1_n_2 ,\cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[4]_i_1_n_4 ,\cnt_reg[4]_i_1_n_5 ,\cnt_reg[4]_i_1_n_6 ,\cnt_reg[4]_i_1_n_7 }),
        .S(cnt_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[4]_i_1_n_6 ),
        .Q(cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[4]_i_1_n_5 ),
        .Q(cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[4]_i_1_n_4 ),
        .Q(cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[8]_i_1_n_7 ),
        .Q(cnt_reg[8]),
        .R(clear));
  CARRY4 \cnt_reg[8]_i_1 
       (.CI(\cnt_reg[4]_i_1_n_0 ),
        .CO({\cnt_reg[8]_i_1_n_0 ,\cnt_reg[8]_i_1_n_1 ,\cnt_reg[8]_i_1_n_2 ,\cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_reg[8]_i_1_n_4 ,\cnt_reg[8]_i_1_n_5 ,\cnt_reg[8]_i_1_n_6 ,\cnt_reg[8]_i_1_n_7 }),
        .S(cnt_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(clk),
        .CE(cnt0),
        .D(\cnt_reg[8]_i_1_n_6 ),
        .Q(cnt_reg[9]),
        .R(clear));
  LUT5 #(
    .INIT(32'hF8000000)) 
    dbnc_val_i_1
       (.I0(dbnc_val_i_2_n_0),
        .I1(dbnc_val_i_3_n_0),
        .I2(dbnc_val_i_4_n_0),
        .I3(btn_val[1]),
        .I4(btn_val[0]),
        .O(dbnc_val_i_1_n_0));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    dbnc_val_i_2
       (.I0(cnt_reg[15]),
        .I1(cnt_reg[16]),
        .I2(cnt_reg[14]),
        .I3(dbnc_val_i_5_n_0),
        .I4(dbnc_val_i_6_n_0),
        .O(dbnc_val_i_2_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    dbnc_val_i_3
       (.I0(\cnt[0]_i_4_n_0 ),
        .I1(cnt_reg[17]),
        .I2(cnt_reg[21]),
        .I3(cnt_reg[18]),
        .O(dbnc_val_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFC8C8C8)) 
    dbnc_val_i_4
       (.I0(cnt_reg[20]),
        .I1(cnt_reg[21]),
        .I2(cnt_reg[19]),
        .I3(dbnc_val_i_7_n_0),
        .I4(dbnc_val_i_8_n_0),
        .O(dbnc_val_i_4_n_0));
  LUT4 #(
    .INIT(16'h0007)) 
    dbnc_val_i_5
       (.I0(cnt_reg[10]),
        .I1(cnt_reg[9]),
        .I2(cnt_reg[11]),
        .I3(cnt_reg[12]),
        .O(dbnc_val_i_5_n_0));
  LUT5 #(
    .INIT(32'h777FFFFF)) 
    dbnc_val_i_6
       (.I0(cnt_reg[8]),
        .I1(cnt_reg[10]),
        .I2(cnt_reg[6]),
        .I3(cnt_reg[5]),
        .I4(cnt_reg[7]),
        .O(dbnc_val_i_6_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    dbnc_val_i_7
       (.I0(cnt_reg[17]),
        .I1(cnt_reg[21]),
        .I2(cnt_reg[18]),
        .I3(cnt_reg[13]),
        .I4(cnt_reg[8]),
        .I5(cnt_reg[10]),
        .O(dbnc_val_i_7_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    dbnc_val_i_8
       (.I0(cnt_reg[3]),
        .I1(cnt_reg[4]),
        .I2(cnt_reg[7]),
        .I3(cnt_reg[2]),
        .I4(cnt_reg[0]),
        .I5(cnt_reg[1]),
        .O(dbnc_val_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    dbnc_val_reg
       (.C(clk),
        .CE(1'b1),
        .D(dbnc_val_i_1_n_0),
        .Q(dbnc),
        .R(1'b0));
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
