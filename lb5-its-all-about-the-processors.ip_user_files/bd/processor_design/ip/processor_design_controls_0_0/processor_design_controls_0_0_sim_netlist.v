// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:12:19 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_controls_0_0/processor_design_controls_0_0_sim_netlist.v
// Design      : processor_design_controls_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_controls_0_0,controls,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "controls,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_controls_0_0
   (clk,
    en,
    rst,
    rID1,
    rID2,
    wr_enR1,
    wr_enR2,
    regrD1,
    regrD2,
    regwD1,
    regwD2,
    fbRST,
    fbAddr1,
    fbWrEn,
    fbDin1,
    fbDout1,
    irAddr,
    irWord,
    dAddr,
    d_wr_en,
    dOut,
    dIn,
    aluA,
    aluB,
    aluOp,
    aluResult,
    ready,
    newChar,
    send,
    charRec,
    charSend);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input en;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *) input rst;
  output [4:0]rID1;
  output [4:0]rID2;
  output wr_enR1;
  output wr_enR2;
  input [15:0]regrD1;
  input [15:0]regrD2;
  output [15:0]regwD1;
  output [15:0]regwD2;
  output fbRST;
  output [11:0]fbAddr1;
  output fbWrEn;
  input [15:0]fbDin1;
  output [15:0]fbDout1;
  output [13:0]irAddr;
  input [31:0]irWord;
  output [14:0]dAddr;
  output d_wr_en;
  output [15:0]dOut;
  input [15:0]dIn;
  output [15:0]aluA;
  output [15:0]aluB;
  output [3:0]aluOp;
  input [15:0]aluResult;
  input ready;
  input newChar;
  output send;
  input [7:0]charRec;
  output [7:0]charSend;

  wire \<const0> ;
  wire [15:0]aluA;
  wire [15:0]aluB;
  wire [0:0]\^aluOp ;
  wire [15:0]aluResult;
  wire [7:0]charRec;
  wire [7:0]charSend;
  wire clk;
  wire [14:0]dAddr;
  wire [15:0]dIn;
  wire [15:0]dOut;
  wire d_wr_en;
  wire en;
  wire [11:0]fbAddr1;
  wire [15:0]fbDin1;
  wire [15:0]fbDout1;
  wire fbRST;
  wire fbWrEn;
  wire [13:0]irAddr;
  wire [31:0]irWord;
  wire newChar;
  wire [4:0]rID1;
  wire [4:0]rID2;
  wire ready;
  wire [15:0]regrD1;
  wire [15:0]regrD2;
  wire [15:0]regwD1;
  wire [15:0]regwD2;
  wire rst;
  wire send;
  wire wr_enR1;
  wire wr_enR2;

  assign aluOp[3] = \^aluOp [0];
  assign aluOp[2] = \<const0> ;
  assign aluOp[1] = \<const0> ;
  assign aluOp[0] = \^aluOp [0];
  GND GND
       (.G(\<const0> ));
  processor_design_controls_0_0_controls U0
       (.aluA(aluA),
        .aluB(aluB),
        .aluOp(\^aluOp ),
        .aluResult(aluResult),
        .charRec(charRec),
        .charSend(charSend),
        .clk(clk),
        .dAddr(dAddr),
        .dIn(dIn),
        .dOut(dOut),
        .d_wr_en(d_wr_en),
        .en(en),
        .fbAddr1(fbAddr1),
        .fbDin1(fbDin1),
        .fbDout1(fbDout1),
        .fbRST(fbRST),
        .fbWrEn(fbWrEn),
        .irAddr(irAddr),
        .irWord(irWord[31:1]),
        .newChar(newChar),
        .rID1(rID1),
        .rID2(rID2),
        .ready(ready),
        .regrD1(regrD1),
        .regrD2(regrD2),
        .regwD1(regwD1),
        .regwD2(regwD2),
        .rst(rst),
        .send(send),
        .wr_enR1(wr_enR1),
        .wr_enR2(wr_enR2));
endmodule

(* ORIG_REF_NAME = "controls" *) 
module processor_design_controls_0_0_controls
   (rID1,
    rID2,
    regwD1,
    regwD2,
    fbAddr1,
    fbDout1,
    irAddr,
    dAddr,
    dOut,
    aluA,
    aluB,
    aluOp,
    charSend,
    wr_enR1,
    wr_enR2,
    fbRST,
    fbWrEn,
    d_wr_en,
    send,
    regrD1,
    rst,
    en,
    clk,
    irWord,
    regrD2,
    aluResult,
    newChar,
    ready,
    fbDin1,
    dIn,
    charRec);
  output [4:0]rID1;
  output [4:0]rID2;
  output [15:0]regwD1;
  output [15:0]regwD2;
  output [11:0]fbAddr1;
  output [15:0]fbDout1;
  output [13:0]irAddr;
  output [14:0]dAddr;
  output [15:0]dOut;
  output [15:0]aluA;
  output [15:0]aluB;
  output [0:0]aluOp;
  output [7:0]charSend;
  output wr_enR1;
  output wr_enR2;
  output fbRST;
  output fbWrEn;
  output d_wr_en;
  output send;
  input [15:0]regrD1;
  input rst;
  input en;
  input clk;
  input [30:0]irWord;
  input [15:0]regrD2;
  input [15:0]aluResult;
  input newChar;
  input ready;
  input [15:0]fbDin1;
  input [15:0]dIn;
  input [7:0]charRec;

  wire \FSM_sequential_curr[0]_i_1_n_0 ;
  wire \FSM_sequential_curr[0]_i_2_n_0 ;
  wire \FSM_sequential_curr[0]_i_3_n_0 ;
  wire \FSM_sequential_curr[0]_i_4_n_0 ;
  wire \FSM_sequential_curr[0]_i_5_n_0 ;
  wire \FSM_sequential_curr[0]_i_6_n_0 ;
  wire \FSM_sequential_curr[0]_i_7_n_0 ;
  wire \FSM_sequential_curr[1]_i_1_n_0 ;
  wire \FSM_sequential_curr[1]_i_2_n_0 ;
  wire \FSM_sequential_curr[1]_i_3_n_0 ;
  wire \FSM_sequential_curr[1]_i_4_n_0 ;
  wire \FSM_sequential_curr[1]_i_5_n_0 ;
  wire \FSM_sequential_curr[1]_i_6_n_0 ;
  wire \FSM_sequential_curr[1]_i_7_n_0 ;
  wire \FSM_sequential_curr[2]_i_1_n_0 ;
  wire \FSM_sequential_curr[2]_i_2_n_0 ;
  wire \FSM_sequential_curr[2]_i_3_n_0 ;
  wire \FSM_sequential_curr[2]_i_4_n_0 ;
  wire \FSM_sequential_curr[3]_i_1_n_0 ;
  wire \FSM_sequential_curr[3]_i_2_n_0 ;
  wire \FSM_sequential_curr[3]_i_3_n_0 ;
  wire \FSM_sequential_curr[3]_i_4_n_0 ;
  wire \FSM_sequential_curr[3]_i_5_n_0 ;
  wire \FSM_sequential_curr[3]_i_6_n_0 ;
  wire \FSM_sequential_curr[4]_i_1_n_0 ;
  wire \FSM_sequential_curr[4]_i_2_n_0 ;
  wire [15:0]aluA;
  wire aluA1;
  wire \aluA[0]_i_2_n_0 ;
  wire \aluA[0]_i_3_n_0 ;
  wire \aluA[0]_i_4_n_0 ;
  wire \aluA[0]_i_5_n_0 ;
  wire \aluA[10]_i_2_n_0 ;
  wire \aluA[10]_i_3_n_0 ;
  wire \aluA[11]_i_2_n_0 ;
  wire \aluA[11]_i_3_n_0 ;
  wire \aluA[12]_i_2_n_0 ;
  wire \aluA[12]_i_3_n_0 ;
  wire \aluA[13]_i_2_n_0 ;
  wire \aluA[13]_i_3_n_0 ;
  wire \aluA[14]_i_2_n_0 ;
  wire \aluA[14]_i_3_n_0 ;
  wire \aluA[15]_i_12_n_0 ;
  wire \aluA[15]_i_13_n_0 ;
  wire \aluA[15]_i_15_n_0 ;
  wire \aluA[15]_i_16_n_0 ;
  wire \aluA[15]_i_17_n_0 ;
  wire \aluA[15]_i_18_n_0 ;
  wire \aluA[15]_i_19_n_0 ;
  wire \aluA[15]_i_1_n_0 ;
  wire \aluA[15]_i_20_n_0 ;
  wire \aluA[15]_i_21_n_0 ;
  wire \aluA[15]_i_22_n_0 ;
  wire \aluA[15]_i_23_n_0 ;
  wire \aluA[15]_i_24_n_0 ;
  wire \aluA[15]_i_3_n_0 ;
  wire \aluA[15]_i_4_n_0 ;
  wire \aluA[15]_i_5_n_0 ;
  wire \aluA[15]_i_6_n_0 ;
  wire \aluA[15]_i_7_n_0 ;
  wire \aluA[15]_i_8_n_0 ;
  wire \aluA[1]_i_2_n_0 ;
  wire \aluA[1]_i_3_n_0 ;
  wire \aluA[1]_i_4_n_0 ;
  wire \aluA[1]_i_5_n_0 ;
  wire \aluA[2]_i_2_n_0 ;
  wire \aluA[2]_i_3_n_0 ;
  wire \aluA[2]_i_4_n_0 ;
  wire \aluA[2]_i_5_n_0 ;
  wire \aluA[3]_i_2_n_0 ;
  wire \aluA[3]_i_3_n_0 ;
  wire \aluA[3]_i_4_n_0 ;
  wire \aluA[3]_i_5_n_0 ;
  wire \aluA[4]_i_2_n_0 ;
  wire \aluA[4]_i_3_n_0 ;
  wire \aluA[4]_i_4_n_0 ;
  wire \aluA[4]_i_5_n_0 ;
  wire \aluA[5]_i_2_n_0 ;
  wire \aluA[5]_i_3_n_0 ;
  wire \aluA[5]_i_4_n_0 ;
  wire \aluA[5]_i_5_n_0 ;
  wire \aluA[6]_i_2_n_0 ;
  wire \aluA[6]_i_3_n_0 ;
  wire \aluA[6]_i_4_n_0 ;
  wire \aluA[6]_i_5_n_0 ;
  wire \aluA[7]_i_2_n_0 ;
  wire \aluA[7]_i_3_n_0 ;
  wire \aluA[7]_i_4_n_0 ;
  wire \aluA[7]_i_5_n_0 ;
  wire \aluA[7]_i_6_n_0 ;
  wire \aluA[8]_i_2_n_0 ;
  wire \aluA[8]_i_3_n_0 ;
  wire \aluA[9]_i_2_n_0 ;
  wire \aluA[9]_i_3_n_0 ;
  wire [15:0]aluA_1;
  wire \aluA_reg[15]_i_10_n_3 ;
  wire \aluA_reg[15]_i_11_n_0 ;
  wire \aluA_reg[15]_i_11_n_1 ;
  wire \aluA_reg[15]_i_11_n_2 ;
  wire \aluA_reg[15]_i_11_n_3 ;
  wire \aluA_reg[15]_i_14_n_0 ;
  wire \aluA_reg[15]_i_14_n_1 ;
  wire \aluA_reg[15]_i_14_n_2 ;
  wire \aluA_reg[15]_i_14_n_3 ;
  wire \aluA_reg[15]_i_9_n_2 ;
  wire \aluA_reg[15]_i_9_n_3 ;
  wire [15:0]aluB;
  wire \aluB[15]_i_1_n_0 ;
  wire [0:0]aluOp;
  wire \aluOp[3]_i_1_n_0 ;
  wire [15:0]aluResult;
  wire [7:0]charRec;
  wire [7:0]charSend;
  wire \charSend[7]_i_1_n_0 ;
  wire clk;
  (* RTL_KEEP = "yes" *) wire [4:0]curr;
  wire [14:0]dAddr;
  wire \dAddr[14]_i_1_n_0 ;
  wire [15:0]dIn;
  wire [15:0]dOut;
  wire \dOut[15]_i_1_n_0 ;
  wire d_wr_en;
  wire d_wr_en_i_1_n_0;
  wire d_wr_en_i_2_n_0;
  wire en;
  wire [11:0]fbAddr1;
  wire \fbAddr1[11]_i_1_n_0 ;
  wire [11:0]fbAddr1_4;
  wire [15:0]fbDin1;
  wire [15:0]fbDout1;
  wire \fbDout1[15]_i_1_n_0 ;
  wire \fbDout1[15]_i_2_n_0 ;
  wire fbRST;
  wire fbRST3_out;
  wire fbRST_i_1_n_0;
  wire fbWrEn;
  wire fbWrEn_i_1_n_0;
  wire [15:0]imm;
  wire \imm[15]_i_1_n_0 ;
  wire [15:0]imm_3;
  wire [14:0]in23;
  wire [15:1]in9;
  wire \inst_reg_n_0_[10] ;
  wire \inst_reg_n_0_[11] ;
  wire \inst_reg_n_0_[17] ;
  wire \inst_reg_n_0_[18] ;
  wire \inst_reg_n_0_[19] ;
  wire \inst_reg_n_0_[1] ;
  wire \inst_reg_n_0_[20] ;
  wire \inst_reg_n_0_[21] ;
  wire \inst_reg_n_0_[22] ;
  wire \inst_reg_n_0_[23] ;
  wire \inst_reg_n_0_[24] ;
  wire \inst_reg_n_0_[25] ;
  wire \inst_reg_n_0_[26] ;
  wire \inst_reg_n_0_[27] ;
  wire \inst_reg_n_0_[28] ;
  wire \inst_reg_n_0_[29] ;
  wire \inst_reg_n_0_[2] ;
  wire \inst_reg_n_0_[3] ;
  wire \inst_reg_n_0_[4] ;
  wire \inst_reg_n_0_[5] ;
  wire \inst_reg_n_0_[6] ;
  wire \inst_reg_n_0_[7] ;
  wire \inst_reg_n_0_[8] ;
  wire \inst_reg_n_0_[9] ;
  wire [13:0]irAddr;
  wire \irAddr[13]_i_1_n_0 ;
  wire [30:0]irWord;
  wire newChar;
  wire \op[4]_i_1_n_0 ;
  wire \op_reg_n_0_[0] ;
  wire \op_reg_n_0_[1] ;
  wire \op_reg_n_0_[2] ;
  wire \op_reg_n_0_[3] ;
  wire \op_reg_n_0_[4] ;
  wire [4:0]p_0_in;
  wire [1:0]p_0_in_0;
  wire \pc[15]_i_1_n_0 ;
  wire \pc_reg_n_0_[0] ;
  wire \pc_reg_n_0_[10] ;
  wire \pc_reg_n_0_[11] ;
  wire \pc_reg_n_0_[12] ;
  wire \pc_reg_n_0_[13] ;
  wire \pc_reg_n_0_[14] ;
  wire \pc_reg_n_0_[15] ;
  wire \pc_reg_n_0_[1] ;
  wire \pc_reg_n_0_[2] ;
  wire \pc_reg_n_0_[3] ;
  wire \pc_reg_n_0_[4] ;
  wire \pc_reg_n_0_[5] ;
  wire \pc_reg_n_0_[6] ;
  wire \pc_reg_n_0_[7] ;
  wire \pc_reg_n_0_[8] ;
  wire \pc_reg_n_0_[9] ;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__0_n_1;
  wire plusOp_carry__0_n_2;
  wire plusOp_carry__0_n_3;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry__1_n_1;
  wire plusOp_carry__1_n_2;
  wire plusOp_carry__1_n_3;
  wire plusOp_carry__2_n_2;
  wire plusOp_carry__2_n_3;
  wire plusOp_carry_n_0;
  wire plusOp_carry_n_1;
  wire plusOp_carry_n_2;
  wire plusOp_carry_n_3;
  wire [4:0]rID1;
  wire \rID1[0]_i_1_n_0 ;
  wire \rID1[0]_i_2_n_0 ;
  wire \rID1[0]_i_3_n_0 ;
  wire \rID1[1]_i_1_n_0 ;
  wire \rID1[2]_i_1_n_0 ;
  wire \rID1[3]_i_1_n_0 ;
  wire \rID1[4]_i_1_n_0 ;
  wire \rID1[4]_i_2_n_0 ;
  wire \rID1[4]_i_3_n_0 ;
  wire \rID1[4]_i_4_n_0 ;
  wire [4:0]rID2;
  wire \rID2[0]_i_1_n_0 ;
  wire \rID2[1]_i_1_n_0 ;
  wire \rID2[2]_i_1_n_0 ;
  wire \rID2[3]_i_1_n_0 ;
  wire \rID2[4]_i_1_n_0 ;
  wire \rID2[4]_i_2_n_0 ;
  wire \rID2[4]_i_3_n_0 ;
  wire ready;
  wire \reg1[0]_i_1_n_0 ;
  wire \reg1[4]_i_1_n_0 ;
  wire \reg1[4]_i_2_n_0 ;
  wire \reg1_reg_n_0_[0] ;
  wire \reg1_reg_n_0_[1] ;
  wire \reg1_reg_n_0_[2] ;
  wire \reg1_reg_n_0_[3] ;
  wire \reg1_reg_n_0_[4] ;
  wire \reg2[4]_i_1_n_0 ;
  wire \reg2_reg_n_0_[0] ;
  wire \reg2_reg_n_0_[1] ;
  wire \reg2_reg_n_0_[2] ;
  wire \reg2_reg_n_0_[3] ;
  wire \reg2_reg_n_0_[4] ;
  wire [15:0]reg2_val;
  wire \reg3[4]_i_1_n_0 ;
  wire \reg3[4]_i_2_n_0 ;
  wire \reg3_reg_n_0_[0] ;
  wire \reg3_reg_n_0_[1] ;
  wire \reg3_reg_n_0_[2] ;
  wire \reg3_reg_n_0_[3] ;
  wire \reg3_reg_n_0_[4] ;
  wire [14:0]reg3_val;
  wire reg3_val0_carry__0_i_1_n_0;
  wire reg3_val0_carry__0_i_2_n_0;
  wire reg3_val0_carry__0_i_3_n_0;
  wire reg3_val0_carry__0_i_4_n_0;
  wire reg3_val0_carry__0_n_0;
  wire reg3_val0_carry__0_n_1;
  wire reg3_val0_carry__0_n_2;
  wire reg3_val0_carry__0_n_3;
  wire reg3_val0_carry__1_i_1_n_0;
  wire reg3_val0_carry__1_i_2_n_0;
  wire reg3_val0_carry__1_i_3_n_0;
  wire reg3_val0_carry__1_i_4_n_0;
  wire reg3_val0_carry__1_n_0;
  wire reg3_val0_carry__1_n_1;
  wire reg3_val0_carry__1_n_2;
  wire reg3_val0_carry__1_n_3;
  wire reg3_val0_carry__2_i_1_n_0;
  wire reg3_val0_carry__2_i_2_n_0;
  wire reg3_val0_carry__2_i_3_n_0;
  wire reg3_val0_carry__2_n_2;
  wire reg3_val0_carry__2_n_3;
  wire reg3_val0_carry_i_1_n_0;
  wire reg3_val0_carry_i_2_n_0;
  wire reg3_val0_carry_i_3_n_0;
  wire reg3_val0_carry_i_4_n_0;
  wire reg3_val0_carry_n_0;
  wire reg3_val0_carry_n_1;
  wire reg3_val0_carry_n_2;
  wire reg3_val0_carry_n_3;
  wire \reg3_val[14]_i_1_n_0 ;
  wire \reg3_val_reg_n_0_[0] ;
  wire \reg3_val_reg_n_0_[10] ;
  wire \reg3_val_reg_n_0_[11] ;
  wire \reg3_val_reg_n_0_[12] ;
  wire \reg3_val_reg_n_0_[13] ;
  wire \reg3_val_reg_n_0_[14] ;
  wire \reg3_val_reg_n_0_[1] ;
  wire \reg3_val_reg_n_0_[2] ;
  wire \reg3_val_reg_n_0_[3] ;
  wire \reg3_val_reg_n_0_[4] ;
  wire \reg3_val_reg_n_0_[5] ;
  wire \reg3_val_reg_n_0_[6] ;
  wire \reg3_val_reg_n_0_[7] ;
  wire \reg3_val_reg_n_0_[8] ;
  wire \reg3_val_reg_n_0_[9] ;
  wire [15:0]regrD1;
  wire [15:0]regrD2;
  wire [15:0]regwD1;
  wire \regwD1[15]_i_1_n_0 ;
  wire [15:0]regwD1_2;
  wire [15:0]regwD2;
  wire \regwD2[15]_i_1_n_0 ;
  wire rst;
  wire send;
  wire send_i_1_n_0;
  wire wr_enR1;
  wire wr_enR15_out;
  wire wr_enR1_i_1_n_0;
  wire wr_enR1_i_2_n_0;
  wire wr_enR1_i_3_n_0;
  wire wr_enR2;
  wire wr_enR2_i_1_n_0;
  wire wr_enR2_i_2_n_0;
  wire wr_enR2_i_3_n_0;
  wire [3:2]\NLW_aluA_reg[15]_i_10_CO_UNCONNECTED ;
  wire [3:0]\NLW_aluA_reg[15]_i_10_O_UNCONNECTED ;
  wire [3:0]\NLW_aluA_reg[15]_i_11_O_UNCONNECTED ;
  wire [3:0]\NLW_aluA_reg[15]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_aluA_reg[15]_i_9_CO_UNCONNECTED ;
  wire [3:0]\NLW_aluA_reg[15]_i_9_O_UNCONNECTED ;
  wire [3:2]NLW_plusOp_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_plusOp_carry__2_O_UNCONNECTED;
  wire [3:2]NLW_reg3_val0_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_reg3_val0_carry__2_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8F88)) 
    \FSM_sequential_curr[0]_i_1 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\FSM_sequential_curr[0]_i_2_n_0 ),
        .I2(\FSM_sequential_curr[0]_i_3_n_0 ),
        .I3(\FSM_sequential_curr[0]_i_4_n_0 ),
        .I4(\FSM_sequential_curr[0]_i_5_n_0 ),
        .I5(\FSM_sequential_curr[0]_i_6_n_0 ),
        .O(\FSM_sequential_curr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_curr[0]_i_2 
       (.I0(curr[4]),
        .I1(curr[3]),
        .I2(curr[0]),
        .O(\FSM_sequential_curr[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_curr[0]_i_3 
       (.I0(\op_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[4] ),
        .I2(\op_reg_n_0_[2] ),
        .O(\FSM_sequential_curr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000005400000000)) 
    \FSM_sequential_curr[0]_i_4 
       (.I0(curr[4]),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[1] ),
        .I3(curr[1]),
        .I4(curr[0]),
        .I5(curr[2]),
        .O(\FSM_sequential_curr[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000E0002)) 
    \FSM_sequential_curr[0]_i_5 
       (.I0(\FSM_sequential_curr[0]_i_7_n_0 ),
        .I1(curr[4]),
        .I2(curr[3]),
        .I3(curr[0]),
        .I4(ready),
        .I5(curr[2]),
        .O(\FSM_sequential_curr[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h002211660000115F)) 
    \FSM_sequential_curr[0]_i_6 
       (.I0(curr[1]),
        .I1(curr[2]),
        .I2(\op_reg_n_0_[0] ),
        .I3(curr[4]),
        .I4(curr[3]),
        .I5(curr[0]),
        .O(\FSM_sequential_curr[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_sequential_curr[0]_i_7 
       (.I0(\op_reg_n_0_[4] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg_n_0_[1] ),
        .O(\FSM_sequential_curr[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEFEEE)) 
    \FSM_sequential_curr[1]_i_1 
       (.I0(\FSM_sequential_curr[1]_i_2_n_0 ),
        .I1(\FSM_sequential_curr[1]_i_3_n_0 ),
        .I2(\FSM_sequential_curr[1]_i_4_n_0 ),
        .I3(\FSM_sequential_curr[1]_i_5_n_0 ),
        .I4(curr[4]),
        .I5(\FSM_sequential_curr[1]_i_6_n_0 ),
        .O(\FSM_sequential_curr[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAAAFFAAAAAAAE)) 
    \FSM_sequential_curr[1]_i_2 
       (.I0(\FSM_sequential_curr[3]_i_6_n_0 ),
        .I1(\FSM_sequential_curr[1]_i_7_n_0 ),
        .I2(\op_reg_n_0_[2] ),
        .I3(\op_reg_n_0_[0] ),
        .I4(\op_reg_n_0_[1] ),
        .I5(wr_enR2_i_3_n_0),
        .O(\FSM_sequential_curr[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h04160052)) 
    \FSM_sequential_curr[1]_i_3 
       (.I0(curr[2]),
        .I1(curr[1]),
        .I2(curr[4]),
        .I3(curr[3]),
        .I4(curr[0]),
        .O(\FSM_sequential_curr[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0C000008)) 
    \FSM_sequential_curr[1]_i_4 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[3] ),
        .I2(\op_reg_n_0_[4] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\op_reg_n_0_[0] ),
        .O(\FSM_sequential_curr[1]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_curr[1]_i_5 
       (.I0(curr[2]),
        .I1(curr[0]),
        .I2(curr[1]),
        .O(\FSM_sequential_curr[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000F080800000808)) 
    \FSM_sequential_curr[1]_i_6 
       (.I0(\op_reg_n_0_[2] ),
        .I1(curr[2]),
        .I2(\rID1[0]_i_3_n_0 ),
        .I3(curr[1]),
        .I4(curr[0]),
        .I5(p_0_in_0[1]),
        .O(\FSM_sequential_curr[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_curr[1]_i_7 
       (.I0(\op_reg_n_0_[3] ),
        .I1(\op_reg_n_0_[4] ),
        .I2(curr[1]),
        .I3(curr[0]),
        .I4(curr[3]),
        .I5(curr[4]),
        .O(\FSM_sequential_curr[1]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFEBAA)) 
    \FSM_sequential_curr[2]_i_1 
       (.I0(\FSM_sequential_curr[2]_i_2_n_0 ),
        .I1(\op_reg_n_0_[2] ),
        .I2(\op_reg_n_0_[0] ),
        .I3(\FSM_sequential_curr[3]_i_5_n_0 ),
        .I4(\FSM_sequential_curr[2]_i_3_n_0 ),
        .O(\FSM_sequential_curr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFAAAA)) 
    \FSM_sequential_curr[2]_i_2 
       (.I0(\FSM_sequential_curr[3]_i_2_n_0 ),
        .I1(\op_reg_n_0_[1] ),
        .I2(\op_reg_n_0_[4] ),
        .I3(\op_reg_n_0_[3] ),
        .I4(\FSM_sequential_curr[3]_i_5_n_0 ),
        .I5(\FSM_sequential_curr[2]_i_4_n_0 ),
        .O(\FSM_sequential_curr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4044444440404040)) 
    \FSM_sequential_curr[2]_i_3 
       (.I0(\FSM_sequential_curr[3]_i_3_n_0 ),
        .I1(curr[1]),
        .I2(wr_enR2_i_3_n_0),
        .I3(\op_reg_n_0_[4] ),
        .I4(\op_reg_n_0_[3] ),
        .I5(\FSM_sequential_curr[0]_i_2_n_0 ),
        .O(\FSM_sequential_curr[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000002000000020C)) 
    \FSM_sequential_curr[2]_i_4 
       (.I0(\FSM_sequential_curr[3]_i_3_n_0 ),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(\rID1[0]_i_3_n_0 ),
        .I5(p_0_in_0[0]),
        .O(\FSM_sequential_curr[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAAAFFFFEAAAEAAA)) 
    \FSM_sequential_curr[3]_i_1 
       (.I0(\FSM_sequential_curr[3]_i_2_n_0 ),
        .I1(curr[1]),
        .I2(wr_enR2_i_3_n_0),
        .I3(\FSM_sequential_curr[3]_i_3_n_0 ),
        .I4(\FSM_sequential_curr[3]_i_4_n_0 ),
        .I5(\FSM_sequential_curr[3]_i_5_n_0 ),
        .O(\FSM_sequential_curr[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAAE)) 
    \FSM_sequential_curr[3]_i_2 
       (.I0(\FSM_sequential_curr[3]_i_6_n_0 ),
        .I1(curr[0]),
        .I2(\fbDout1[15]_i_2_n_0 ),
        .I3(curr[4]),
        .I4(curr[3]),
        .I5(p_0_in_0[1]),
        .O(\FSM_sequential_curr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_curr[3]_i_3 
       (.I0(\op_reg_n_0_[1] ),
        .I1(\op_reg_n_0_[0] ),
        .I2(\op_reg_n_0_[2] ),
        .O(\FSM_sequential_curr[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFDFFFDF)) 
    \FSM_sequential_curr[3]_i_4 
       (.I0(\op_reg_n_0_[2] ),
        .I1(\op_reg_n_0_[4] ),
        .I2(\op_reg_n_0_[3] ),
        .I3(\op_reg_n_0_[1] ),
        .I4(\op_reg_n_0_[0] ),
        .O(\FSM_sequential_curr[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h01000000)) 
    \FSM_sequential_curr[3]_i_5 
       (.I0(curr[4]),
        .I1(curr[0]),
        .I2(curr[1]),
        .I3(curr[2]),
        .I4(curr[3]),
        .O(\FSM_sequential_curr[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_curr[3]_i_6 
       (.I0(newChar),
        .I1(curr[0]),
        .I2(curr[4]),
        .I3(curr[2]),
        .I4(curr[3]),
        .I5(curr[1]),
        .O(\FSM_sequential_curr[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A0B1A10)) 
    \FSM_sequential_curr[4]_i_1 
       (.I0(curr[0]),
        .I1(curr[3]),
        .I2(curr[4]),
        .I3(curr[1]),
        .I4(curr[2]),
        .I5(\FSM_sequential_curr[4]_i_2_n_0 ),
        .O(\FSM_sequential_curr[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005588AAF0AA)) 
    \FSM_sequential_curr[4]_i_2 
       (.I0(curr[3]),
        .I1(newChar),
        .I2(\FSM_sequential_curr[3]_i_4_n_0 ),
        .I3(curr[2]),
        .I4(curr[1]),
        .I5(curr[4]),
        .O(\FSM_sequential_curr[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[0] 
       (.C(clk),
        .CE(en),
        .D(\FSM_sequential_curr[0]_i_1_n_0 ),
        .Q(curr[0]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[1] 
       (.C(clk),
        .CE(en),
        .D(\FSM_sequential_curr[1]_i_1_n_0 ),
        .Q(curr[1]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[2] 
       (.C(clk),
        .CE(en),
        .D(\FSM_sequential_curr[2]_i_1_n_0 ),
        .Q(curr[2]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[3] 
       (.C(clk),
        .CE(en),
        .D(\FSM_sequential_curr[3]_i_1_n_0 ),
        .Q(curr[3]),
        .R(rst));
  (* FSM_ENCODED_STATES = "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_curr_reg[4] 
       (.C(clk),
        .CE(en),
        .D(\FSM_sequential_curr[4]_i_1_n_0 ),
        .Q(curr[4]),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[0]_i_1 
       (.I0(\aluA[0]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[0]),
        .I3(\aluA[0]_i_3_n_0 ),
        .I4(\aluA[0]_i_4_n_0 ),
        .I5(\aluA[0]_i_5_n_0 ),
        .O(aluA_1[0]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[0]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[0]),
        .O(\aluA[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[0]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[0]),
        .O(\aluA[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[0]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[0]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[0]),
        .I4(charRec[0]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[0]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[0]),
        .O(\aluA[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[10]_i_1 
       (.I0(\aluA[10]_i_2_n_0 ),
        .I1(\aluA[10]_i_3_n_0 ),
        .I2(regrD2[10]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[10]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[10]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[10]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[10]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[10]),
        .I4(fbDin1[10]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[10]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[10]),
        .O(\aluA[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[11]_i_1 
       (.I0(\aluA[11]_i_2_n_0 ),
        .I1(\aluA[11]_i_3_n_0 ),
        .I2(regrD2[11]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[11]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[11]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[11]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[11]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[11]),
        .I4(fbDin1[11]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[11]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[11]),
        .O(\aluA[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[12]_i_1 
       (.I0(\aluA[12]_i_2_n_0 ),
        .I1(\aluA[12]_i_3_n_0 ),
        .I2(regrD2[12]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[12]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[12]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[12]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[12]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[12]),
        .I4(fbDin1[12]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[12]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[12]),
        .O(\aluA[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[13]_i_1 
       (.I0(\aluA[13]_i_2_n_0 ),
        .I1(\aluA[13]_i_3_n_0 ),
        .I2(regrD2[13]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[13]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[13]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[13]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[13]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[13]),
        .I4(fbDin1[13]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[13]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[13]),
        .O(\aluA[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[14]_i_1 
       (.I0(\aluA[14]_i_2_n_0 ),
        .I1(\aluA[14]_i_3_n_0 ),
        .I2(regrD2[14]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[14]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[14]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[14]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[14]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[14]),
        .I4(fbDin1[14]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[14]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[14]),
        .O(\aluA[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00E80000004C0000)) 
    \aluA[15]_i_1 
       (.I0(curr[0]),
        .I1(curr[3]),
        .I2(curr[1]),
        .I3(curr[4]),
        .I4(\rID2[4]_i_3_n_0 ),
        .I5(curr[2]),
        .O(\aluA[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \aluA[15]_i_12 
       (.I0(regrD1[15]),
        .I1(reg2_val[15]),
        .O(\aluA[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_13 
       (.I0(regrD1[14]),
        .I1(reg2_val[14]),
        .I2(regrD1[13]),
        .I3(reg2_val[13]),
        .I4(reg2_val[12]),
        .I5(regrD1[12]),
        .O(\aluA[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \aluA[15]_i_15 
       (.I0(regrD1[15]),
        .I1(reg2_val[15]),
        .O(\aluA[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_16 
       (.I0(regrD1[14]),
        .I1(reg2_val[14]),
        .I2(regrD1[13]),
        .I3(reg2_val[13]),
        .I4(reg2_val[12]),
        .I5(regrD1[12]),
        .O(\aluA[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_17 
       (.I0(regrD1[11]),
        .I1(reg2_val[11]),
        .I2(regrD1[10]),
        .I3(reg2_val[10]),
        .I4(reg2_val[9]),
        .I5(regrD1[9]),
        .O(\aluA[15]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_18 
       (.I0(regrD1[8]),
        .I1(reg2_val[8]),
        .I2(regrD1[7]),
        .I3(reg2_val[7]),
        .I4(reg2_val[6]),
        .I5(regrD1[6]),
        .O(\aluA[15]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_19 
       (.I0(regrD1[5]),
        .I1(reg2_val[5]),
        .I2(regrD1[4]),
        .I3(reg2_val[4]),
        .I4(reg2_val[3]),
        .I5(regrD1[3]),
        .O(\aluA[15]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[15]_i_2 
       (.I0(\aluA[15]_i_3_n_0 ),
        .I1(\aluA[15]_i_4_n_0 ),
        .I2(regrD2[15]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[15]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[15]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_20 
       (.I0(regrD1[2]),
        .I1(reg2_val[2]),
        .I2(regrD1[1]),
        .I3(reg2_val[1]),
        .I4(reg2_val[0]),
        .I5(regrD1[0]),
        .O(\aluA[15]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_21 
       (.I0(regrD1[11]),
        .I1(reg2_val[11]),
        .I2(regrD1[10]),
        .I3(reg2_val[10]),
        .I4(reg2_val[9]),
        .I5(regrD1[9]),
        .O(\aluA[15]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_22 
       (.I0(regrD1[8]),
        .I1(reg2_val[8]),
        .I2(regrD1[7]),
        .I3(reg2_val[7]),
        .I4(reg2_val[6]),
        .I5(regrD1[6]),
        .O(\aluA[15]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_23 
       (.I0(regrD1[5]),
        .I1(reg2_val[5]),
        .I2(regrD1[4]),
        .I3(reg2_val[4]),
        .I4(reg2_val[3]),
        .I5(regrD1[3]),
        .O(\aluA[15]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \aluA[15]_i_24 
       (.I0(regrD1[2]),
        .I1(reg2_val[2]),
        .I2(regrD1[1]),
        .I3(reg2_val[1]),
        .I4(reg2_val[0]),
        .I5(regrD1[0]),
        .O(\aluA[15]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[15]_i_3 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[15]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[15]),
        .I4(fbDin1[15]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[15]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[15]_i_4 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[15]),
        .O(\aluA[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000100000001FFFF)) 
    \aluA[15]_i_5 
       (.I0(curr[1]),
        .I1(curr[2]),
        .I2(curr[0]),
        .I3(\aluA_reg[15]_i_9_n_2 ),
        .I4(curr[3]),
        .I5(aluA1),
        .O(\aluA[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0100FFFF01000000)) 
    \aluA[15]_i_6 
       (.I0(curr[1]),
        .I1(curr[2]),
        .I2(curr[0]),
        .I3(\aluA_reg[15]_i_9_n_2 ),
        .I4(curr[3]),
        .I5(aluA1),
        .O(\aluA[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \aluA[15]_i_7 
       (.I0(curr[2]),
        .I1(curr[1]),
        .I2(curr[3]),
        .O(\aluA[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \aluA[15]_i_8 
       (.I0(curr[1]),
        .I1(curr[0]),
        .I2(curr[3]),
        .I3(curr[2]),
        .O(\aluA[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[1]_i_1 
       (.I0(\aluA[1]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[1]),
        .I3(\aluA[1]_i_3_n_0 ),
        .I4(\aluA[1]_i_4_n_0 ),
        .I5(\aluA[1]_i_5_n_0 ),
        .O(aluA_1[1]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[1]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[1]),
        .O(\aluA[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[1]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[1]),
        .O(\aluA[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[1]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[1]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[1]),
        .I4(charRec[1]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[1]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[1]),
        .O(\aluA[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[2]_i_1 
       (.I0(\aluA[2]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[2]),
        .I3(\aluA[2]_i_3_n_0 ),
        .I4(\aluA[2]_i_4_n_0 ),
        .I5(\aluA[2]_i_5_n_0 ),
        .O(aluA_1[2]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[2]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[2]),
        .O(\aluA[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[2]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[2]),
        .O(\aluA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[2]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[2]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[2]),
        .I4(charRec[2]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[2]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[2]),
        .O(\aluA[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[3]_i_1 
       (.I0(\aluA[3]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[3]),
        .I3(\aluA[3]_i_3_n_0 ),
        .I4(\aluA[3]_i_4_n_0 ),
        .I5(\aluA[3]_i_5_n_0 ),
        .O(aluA_1[3]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[3]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[3]),
        .O(\aluA[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[3]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[3]),
        .O(\aluA[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[3]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[3]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[3]),
        .I4(charRec[3]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[3]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[3]),
        .O(\aluA[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[4]_i_1 
       (.I0(\aluA[4]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[4]),
        .I3(\aluA[4]_i_3_n_0 ),
        .I4(\aluA[4]_i_4_n_0 ),
        .I5(\aluA[4]_i_5_n_0 ),
        .O(aluA_1[4]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[4]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[4]),
        .O(\aluA[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[4]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[4]),
        .O(\aluA[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[4]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[4]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[4]),
        .I4(charRec[4]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[4]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[4]),
        .O(\aluA[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[5]_i_1 
       (.I0(\aluA[5]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[5]),
        .I3(\aluA[5]_i_3_n_0 ),
        .I4(\aluA[5]_i_4_n_0 ),
        .I5(\aluA[5]_i_5_n_0 ),
        .O(aluA_1[5]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[5]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[5]),
        .O(\aluA[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[5]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[5]),
        .O(\aluA[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[5]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[5]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[5]),
        .I4(charRec[5]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[5]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[5]),
        .O(\aluA[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[6]_i_1 
       (.I0(\aluA[6]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[6]),
        .I3(\aluA[6]_i_3_n_0 ),
        .I4(\aluA[6]_i_4_n_0 ),
        .I5(\aluA[6]_i_5_n_0 ),
        .O(aluA_1[6]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[6]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[6]),
        .O(\aluA[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[6]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[6]),
        .O(\aluA[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[6]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[6]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[6]),
        .I4(charRec[6]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[6]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[6]),
        .O(\aluA[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEA)) 
    \aluA[7]_i_1 
       (.I0(\aluA[7]_i_2_n_0 ),
        .I1(\aluA[15]_i_5_n_0 ),
        .I2(regrD2[7]),
        .I3(\aluA[7]_i_3_n_0 ),
        .I4(\aluA[7]_i_4_n_0 ),
        .I5(\aluA[7]_i_5_n_0 ),
        .O(aluA_1[7]));
  LUT6 #(
    .INIT(64'h222222E200000000)) 
    \aluA[7]_i_2 
       (.I0(aluA1),
        .I1(curr[3]),
        .I2(\aluA_reg[15]_i_9_n_2 ),
        .I3(curr[0]),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(imm[7]),
        .O(\aluA[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[7]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[7]),
        .O(\aluA[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[7]_i_4 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[7]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[7]),
        .I4(charRec[7]),
        .I5(\aluA[7]_i_6_n_0 ),
        .O(\aluA[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \aluA[7]_i_5 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(fbDin1[7]),
        .O(\aluA[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \aluA[7]_i_6 
       (.I0(curr[2]),
        .I1(curr[3]),
        .I2(curr[1]),
        .I3(curr[0]),
        .O(\aluA[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[8]_i_1 
       (.I0(\aluA[8]_i_2_n_0 ),
        .I1(\aluA[8]_i_3_n_0 ),
        .I2(regrD2[8]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[8]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[8]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[8]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[8]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[8]),
        .I4(fbDin1[8]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[8]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[8]),
        .O(\aluA[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \aluA[9]_i_1 
       (.I0(\aluA[9]_i_2_n_0 ),
        .I1(\aluA[9]_i_3_n_0 ),
        .I2(regrD2[9]),
        .I3(\aluA[15]_i_5_n_0 ),
        .I4(imm[9]),
        .I5(\aluA[15]_i_6_n_0 ),
        .O(aluA_1[9]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \aluA[9]_i_2 
       (.I0(\aluA[15]_i_7_n_0 ),
        .I1(dIn[9]),
        .I2(\reg3[4]_i_2_n_0 ),
        .I3(regrD1[9]),
        .I4(fbDin1[9]),
        .I5(\aluA[15]_i_8_n_0 ),
        .O(\aluA[9]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00080000)) 
    \aluA[9]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .I4(reg2_val[9]),
        .O(\aluA[9]_i_3_n_0 ));
  FDRE \aluA_reg[0] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[0]),
        .Q(aluA[0]),
        .R(1'b0));
  FDRE \aluA_reg[10] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[10]),
        .Q(aluA[10]),
        .R(1'b0));
  FDRE \aluA_reg[11] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[11]),
        .Q(aluA[11]),
        .R(1'b0));
  FDRE \aluA_reg[12] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[12]),
        .Q(aluA[12]),
        .R(1'b0));
  FDRE \aluA_reg[13] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[13]),
        .Q(aluA[13]),
        .R(1'b0));
  FDRE \aluA_reg[14] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[14]),
        .Q(aluA[14]),
        .R(1'b0));
  FDRE \aluA_reg[15] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[15]),
        .Q(aluA[15]),
        .R(1'b0));
  CARRY4 \aluA_reg[15]_i_10 
       (.CI(\aluA_reg[15]_i_14_n_0 ),
        .CO({\NLW_aluA_reg[15]_i_10_CO_UNCONNECTED [3:2],aluA1,\aluA_reg[15]_i_10_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_aluA_reg[15]_i_10_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\aluA[15]_i_15_n_0 ,\aluA[15]_i_16_n_0 }));
  CARRY4 \aluA_reg[15]_i_11 
       (.CI(1'b0),
        .CO({\aluA_reg[15]_i_11_n_0 ,\aluA_reg[15]_i_11_n_1 ,\aluA_reg[15]_i_11_n_2 ,\aluA_reg[15]_i_11_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(\NLW_aluA_reg[15]_i_11_O_UNCONNECTED [3:0]),
        .S({\aluA[15]_i_17_n_0 ,\aluA[15]_i_18_n_0 ,\aluA[15]_i_19_n_0 ,\aluA[15]_i_20_n_0 }));
  CARRY4 \aluA_reg[15]_i_14 
       (.CI(1'b0),
        .CO({\aluA_reg[15]_i_14_n_0 ,\aluA_reg[15]_i_14_n_1 ,\aluA_reg[15]_i_14_n_2 ,\aluA_reg[15]_i_14_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_aluA_reg[15]_i_14_O_UNCONNECTED [3:0]),
        .S({\aluA[15]_i_21_n_0 ,\aluA[15]_i_22_n_0 ,\aluA[15]_i_23_n_0 ,\aluA[15]_i_24_n_0 }));
  CARRY4 \aluA_reg[15]_i_9 
       (.CI(\aluA_reg[15]_i_11_n_0 ),
        .CO({\NLW_aluA_reg[15]_i_9_CO_UNCONNECTED [3:2],\aluA_reg[15]_i_9_n_2 ,\aluA_reg[15]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(\NLW_aluA_reg[15]_i_9_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\aluA[15]_i_12_n_0 ,\aluA[15]_i_13_n_0 }));
  FDRE \aluA_reg[1] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[1]),
        .Q(aluA[1]),
        .R(1'b0));
  FDRE \aluA_reg[2] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[2]),
        .Q(aluA[2]),
        .R(1'b0));
  FDRE \aluA_reg[3] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[3]),
        .Q(aluA[3]),
        .R(1'b0));
  FDRE \aluA_reg[4] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[4]),
        .Q(aluA[4]),
        .R(1'b0));
  FDRE \aluA_reg[5] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[5]),
        .Q(aluA[5]),
        .R(1'b0));
  FDRE \aluA_reg[6] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[6]),
        .Q(aluA[6]),
        .R(1'b0));
  FDRE \aluA_reg[7] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[7]),
        .Q(aluA[7]),
        .R(1'b0));
  FDRE \aluA_reg[8] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[8]),
        .Q(aluA[8]),
        .R(1'b0));
  FDRE \aluA_reg[9] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(aluA_1[9]),
        .Q(aluA[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00E8000000440000)) 
    \aluB[15]_i_1 
       (.I0(curr[0]),
        .I1(curr[3]),
        .I2(curr[1]),
        .I3(curr[4]),
        .I4(\rID2[4]_i_3_n_0 ),
        .I5(curr[2]),
        .O(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[0] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[0]),
        .Q(aluB[0]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[10] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[10]),
        .Q(aluB[10]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[11] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[11]),
        .Q(aluB[11]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[12] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[12]),
        .Q(aluB[12]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[13] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[13]),
        .Q(aluB[13]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[14] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[14]),
        .Q(aluB[14]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[15] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[15]),
        .Q(aluB[15]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[1] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[1]),
        .Q(aluB[1]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[2] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[2]),
        .Q(aluB[2]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[3] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[3]),
        .Q(aluB[3]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[4] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[4]),
        .Q(aluB[4]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[5] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[5]),
        .Q(aluB[5]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[6] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[6]),
        .Q(aluB[6]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[7] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[7]),
        .Q(aluB[7]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[8] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[8]),
        .Q(aluB[8]),
        .R(\aluB[15]_i_1_n_0 ));
  FDRE \aluB_reg[9] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(imm[9]),
        .Q(aluB[9]),
        .R(\aluB[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \aluOp[3]_i_1 
       (.I0(curr[0]),
        .I1(curr[2]),
        .O(\aluOp[3]_i_1_n_0 ));
  FDRE \aluOp_reg[3] 
       (.C(clk),
        .CE(\aluA[15]_i_1_n_0 ),
        .D(\aluOp[3]_i_1_n_0 ),
        .Q(aluOp),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \charSend[7]_i_1 
       (.I0(curr[1]),
        .I1(curr[2]),
        .I2(\rID2[4]_i_3_n_0 ),
        .I3(curr[0]),
        .I4(curr[4]),
        .I5(curr[3]),
        .O(\charSend[7]_i_1_n_0 ));
  FDRE \charSend_reg[0] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[0]),
        .Q(charSend[0]),
        .R(1'b0));
  FDRE \charSend_reg[1] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[1]),
        .Q(charSend[1]),
        .R(1'b0));
  FDRE \charSend_reg[2] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[2]),
        .Q(charSend[2]),
        .R(1'b0));
  FDRE \charSend_reg[3] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[3]),
        .Q(charSend[3]),
        .R(1'b0));
  FDRE \charSend_reg[4] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[4]),
        .Q(charSend[4]),
        .R(1'b0));
  FDRE \charSend_reg[5] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[5]),
        .Q(charSend[5]),
        .R(1'b0));
  FDRE \charSend_reg[6] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[6]),
        .Q(charSend[6]),
        .R(1'b0));
  FDRE \charSend_reg[7] 
       (.C(clk),
        .CE(\charSend[7]_i_1_n_0 ),
        .D(regrD1[7]),
        .Q(charSend[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \dAddr[14]_i_1 
       (.I0(curr[4]),
        .I1(en),
        .I2(rst),
        .I3(curr[3]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(\dAddr[14]_i_1_n_0 ));
  FDRE \dAddr_reg[0] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[0] ),
        .Q(dAddr[0]),
        .R(1'b0));
  FDRE \dAddr_reg[10] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[10] ),
        .Q(dAddr[10]),
        .R(1'b0));
  FDRE \dAddr_reg[11] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[11] ),
        .Q(dAddr[11]),
        .R(1'b0));
  FDRE \dAddr_reg[12] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[12] ),
        .Q(dAddr[12]),
        .R(1'b0));
  FDRE \dAddr_reg[13] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[13] ),
        .Q(dAddr[13]),
        .R(1'b0));
  FDRE \dAddr_reg[14] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[14] ),
        .Q(dAddr[14]),
        .R(1'b0));
  FDRE \dAddr_reg[1] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[1] ),
        .Q(dAddr[1]),
        .R(1'b0));
  FDRE \dAddr_reg[2] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[2] ),
        .Q(dAddr[2]),
        .R(1'b0));
  FDRE \dAddr_reg[3] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[3] ),
        .Q(dAddr[3]),
        .R(1'b0));
  FDRE \dAddr_reg[4] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[4] ),
        .Q(dAddr[4]),
        .R(1'b0));
  FDRE \dAddr_reg[5] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[5] ),
        .Q(dAddr[5]),
        .R(1'b0));
  FDRE \dAddr_reg[6] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[6] ),
        .Q(dAddr[6]),
        .R(1'b0));
  FDRE \dAddr_reg[7] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[7] ),
        .Q(dAddr[7]),
        .R(1'b0));
  FDRE \dAddr_reg[8] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[8] ),
        .Q(dAddr[8]),
        .R(1'b0));
  FDRE \dAddr_reg[9] 
       (.C(clk),
        .CE(\dAddr[14]_i_1_n_0 ),
        .D(\reg3_val_reg_n_0_[9] ),
        .Q(dAddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \dOut[15]_i_1 
       (.I0(curr[3]),
        .I1(curr[1]),
        .I2(curr[0]),
        .I3(curr[2]),
        .I4(curr[4]),
        .I5(\rID2[4]_i_3_n_0 ),
        .O(\dOut[15]_i_1_n_0 ));
  FDRE \dOut_reg[0] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[0]),
        .Q(dOut[0]),
        .R(1'b0));
  FDRE \dOut_reg[10] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[10]),
        .Q(dOut[10]),
        .R(1'b0));
  FDRE \dOut_reg[11] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[11]),
        .Q(dOut[11]),
        .R(1'b0));
  FDRE \dOut_reg[12] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[12]),
        .Q(dOut[12]),
        .R(1'b0));
  FDRE \dOut_reg[13] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[13]),
        .Q(dOut[13]),
        .R(1'b0));
  FDRE \dOut_reg[14] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[14]),
        .Q(dOut[14]),
        .R(1'b0));
  FDRE \dOut_reg[15] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[15]),
        .Q(dOut[15]),
        .R(1'b0));
  FDRE \dOut_reg[1] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[1]),
        .Q(dOut[1]),
        .R(1'b0));
  FDRE \dOut_reg[2] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[2]),
        .Q(dOut[2]),
        .R(1'b0));
  FDRE \dOut_reg[3] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[3]),
        .Q(dOut[3]),
        .R(1'b0));
  FDRE \dOut_reg[4] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[4]),
        .Q(dOut[4]),
        .R(1'b0));
  FDRE \dOut_reg[5] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[5]),
        .Q(dOut[5]),
        .R(1'b0));
  FDRE \dOut_reg[6] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[6]),
        .Q(dOut[6]),
        .R(1'b0));
  FDRE \dOut_reg[7] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[7]),
        .Q(dOut[7]),
        .R(1'b0));
  FDRE \dOut_reg[8] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[8]),
        .Q(dOut[8]),
        .R(1'b0));
  FDRE \dOut_reg[9] 
       (.C(clk),
        .CE(\dOut[15]_i_1_n_0 ),
        .D(regrD1[9]),
        .Q(dOut[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF7F2000)) 
    d_wr_en_i_1
       (.I0(d_wr_en_i_2_n_0),
        .I1(curr[4]),
        .I2(en),
        .I3(curr[3]),
        .I4(d_wr_en),
        .O(d_wr_en_i_1_n_0));
  LUT3 #(
    .INIT(8'h08)) 
    d_wr_en_i_2
       (.I0(curr[1]),
        .I1(curr[0]),
        .I2(curr[2]),
        .O(d_wr_en_i_2_n_0));
  FDRE d_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(d_wr_en_i_1_n_0),
        .Q(d_wr_en),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[0]_i_1 
       (.I0(regrD1[0]),
        .I1(curr[4]),
        .I2(reg2_val[0]),
        .O(fbAddr1_4[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[10]_i_1 
       (.I0(regrD1[10]),
        .I1(curr[4]),
        .I2(reg2_val[10]),
        .O(fbAddr1_4[10]));
  LUT6 #(
    .INIT(64'h0004000080000000)) 
    \fbAddr1[11]_i_1 
       (.I0(curr[1]),
        .I1(curr[0]),
        .I2(curr[3]),
        .I3(curr[2]),
        .I4(\rID2[4]_i_3_n_0 ),
        .I5(curr[4]),
        .O(\fbAddr1[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[11]_i_2 
       (.I0(regrD1[11]),
        .I1(curr[4]),
        .I2(reg2_val[11]),
        .O(fbAddr1_4[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[1]_i_1 
       (.I0(regrD1[1]),
        .I1(curr[4]),
        .I2(reg2_val[1]),
        .O(fbAddr1_4[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[2]_i_1 
       (.I0(regrD1[2]),
        .I1(curr[4]),
        .I2(reg2_val[2]),
        .O(fbAddr1_4[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[3]_i_1 
       (.I0(regrD1[3]),
        .I1(curr[4]),
        .I2(reg2_val[3]),
        .O(fbAddr1_4[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[4]_i_1 
       (.I0(regrD1[4]),
        .I1(curr[4]),
        .I2(reg2_val[4]),
        .O(fbAddr1_4[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[5]_i_1 
       (.I0(regrD1[5]),
        .I1(curr[4]),
        .I2(reg2_val[5]),
        .O(fbAddr1_4[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[6]_i_1 
       (.I0(regrD1[6]),
        .I1(curr[4]),
        .I2(reg2_val[6]),
        .O(fbAddr1_4[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[7]_i_1 
       (.I0(regrD1[7]),
        .I1(curr[4]),
        .I2(reg2_val[7]),
        .O(fbAddr1_4[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[8]_i_1 
       (.I0(regrD1[8]),
        .I1(curr[4]),
        .I2(reg2_val[8]),
        .O(fbAddr1_4[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \fbAddr1[9]_i_1 
       (.I0(regrD1[9]),
        .I1(curr[4]),
        .I2(reg2_val[9]),
        .O(fbAddr1_4[9]));
  FDRE \fbAddr1_reg[0] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[0]),
        .Q(fbAddr1[0]),
        .R(1'b0));
  FDRE \fbAddr1_reg[10] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[10]),
        .Q(fbAddr1[10]),
        .R(1'b0));
  FDRE \fbAddr1_reg[11] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[11]),
        .Q(fbAddr1[11]),
        .R(1'b0));
  FDRE \fbAddr1_reg[1] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[1]),
        .Q(fbAddr1[1]),
        .R(1'b0));
  FDRE \fbAddr1_reg[2] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[2]),
        .Q(fbAddr1[2]),
        .R(1'b0));
  FDRE \fbAddr1_reg[3] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[3]),
        .Q(fbAddr1[3]),
        .R(1'b0));
  FDRE \fbAddr1_reg[4] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[4]),
        .Q(fbAddr1[4]),
        .R(1'b0));
  FDRE \fbAddr1_reg[5] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[5]),
        .Q(fbAddr1[5]),
        .R(1'b0));
  FDRE \fbAddr1_reg[6] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[6]),
        .Q(fbAddr1[6]),
        .R(1'b0));
  FDRE \fbAddr1_reg[7] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[7]),
        .Q(fbAddr1[7]),
        .R(1'b0));
  FDRE \fbAddr1_reg[8] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[8]),
        .Q(fbAddr1[8]),
        .R(1'b0));
  FDRE \fbAddr1_reg[9] 
       (.C(clk),
        .CE(\fbAddr1[11]_i_1_n_0 ),
        .D(fbAddr1_4[9]),
        .Q(fbAddr1[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000002000000000)) 
    \fbDout1[15]_i_1 
       (.I0(curr[4]),
        .I1(curr[3]),
        .I2(en),
        .I3(rst),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(curr[0]),
        .O(\fbDout1[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \fbDout1[15]_i_2 
       (.I0(curr[1]),
        .I1(curr[2]),
        .O(\fbDout1[15]_i_2_n_0 ));
  FDRE \fbDout1_reg[0] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[0]),
        .Q(fbDout1[0]),
        .R(1'b0));
  FDRE \fbDout1_reg[10] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[10]),
        .Q(fbDout1[10]),
        .R(1'b0));
  FDRE \fbDout1_reg[11] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[11]),
        .Q(fbDout1[11]),
        .R(1'b0));
  FDRE \fbDout1_reg[12] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[12]),
        .Q(fbDout1[12]),
        .R(1'b0));
  FDRE \fbDout1_reg[13] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[13]),
        .Q(fbDout1[13]),
        .R(1'b0));
  FDRE \fbDout1_reg[14] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[14]),
        .Q(fbDout1[14]),
        .R(1'b0));
  FDRE \fbDout1_reg[15] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[15]),
        .Q(fbDout1[15]),
        .R(1'b0));
  FDRE \fbDout1_reg[1] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[1]),
        .Q(fbDout1[1]),
        .R(1'b0));
  FDRE \fbDout1_reg[2] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[2]),
        .Q(fbDout1[2]),
        .R(1'b0));
  FDRE \fbDout1_reg[3] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[3]),
        .Q(fbDout1[3]),
        .R(1'b0));
  FDRE \fbDout1_reg[4] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[4]),
        .Q(fbDout1[4]),
        .R(1'b0));
  FDRE \fbDout1_reg[5] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[5]),
        .Q(fbDout1[5]),
        .R(1'b0));
  FDRE \fbDout1_reg[6] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[6]),
        .Q(fbDout1[6]),
        .R(1'b0));
  FDRE \fbDout1_reg[7] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[7]),
        .Q(fbDout1[7]),
        .R(1'b0));
  FDRE \fbDout1_reg[8] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[8]),
        .Q(fbDout1[8]),
        .R(1'b0));
  FDRE \fbDout1_reg[9] 
       (.C(clk),
        .CE(\fbDout1[15]_i_1_n_0 ),
        .D(reg2_val[9]),
        .Q(fbDout1[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h74)) 
    fbRST_i_1
       (.I0(curr[4]),
        .I1(fbRST3_out),
        .I2(fbRST),
        .O(fbRST_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000020004000)) 
    fbRST_i_2
       (.I0(curr[1]),
        .I1(curr[2]),
        .I2(curr[0]),
        .I3(en),
        .I4(curr[4]),
        .I5(curr[3]),
        .O(fbRST3_out));
  FDRE fbRST_reg
       (.C(clk),
        .CE(1'b1),
        .D(fbRST_i_1_n_0),
        .Q(fbRST),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFFF7FFF00004000)) 
    fbWrEn_i_1
       (.I0(curr[1]),
        .I1(en),
        .I2(wr_enR1_i_3_n_0),
        .I3(curr[0]),
        .I4(curr[2]),
        .I5(fbWrEn),
        .O(fbWrEn_i_1_n_0));
  FDRE fbWrEn_reg
       (.C(clk),
        .CE(1'b1),
        .D(fbWrEn_i_1_n_0),
        .Q(fbWrEn),
        .R(rst));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[0]_i_1 
       (.I0(\inst_reg_n_0_[1] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[11] ),
        .O(imm_3[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[10]_i_1 
       (.I0(\inst_reg_n_0_[11] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[21] ),
        .O(imm_3[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[11]_i_1 
       (.I0(p_0_in[0]),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[22] ),
        .O(imm_3[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[12]_i_1 
       (.I0(p_0_in[1]),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[23] ),
        .O(imm_3[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[13]_i_1 
       (.I0(p_0_in[2]),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[24] ),
        .O(imm_3[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[14]_i_1 
       (.I0(p_0_in[3]),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[25] ),
        .O(imm_3[14]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \imm[15]_i_1 
       (.I0(curr[1]),
        .I1(en),
        .I2(rst),
        .I3(curr[0]),
        .I4(curr[3]),
        .I5(curr[4]),
        .O(\imm[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[15]_i_2 
       (.I0(p_0_in[4]),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[26] ),
        .O(imm_3[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[1]_i_1 
       (.I0(\inst_reg_n_0_[2] ),
        .I1(curr[2]),
        .I2(p_0_in[0]),
        .O(imm_3[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[2]_i_1 
       (.I0(\inst_reg_n_0_[3] ),
        .I1(curr[2]),
        .I2(p_0_in[1]),
        .O(imm_3[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[3]_i_1 
       (.I0(\inst_reg_n_0_[4] ),
        .I1(curr[2]),
        .I2(p_0_in[2]),
        .O(imm_3[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[4]_i_1 
       (.I0(\inst_reg_n_0_[5] ),
        .I1(curr[2]),
        .I2(p_0_in[3]),
        .O(imm_3[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[5]_i_1 
       (.I0(\inst_reg_n_0_[6] ),
        .I1(curr[2]),
        .I2(p_0_in[4]),
        .O(imm_3[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[6]_i_1 
       (.I0(\inst_reg_n_0_[7] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[17] ),
        .O(imm_3[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[7]_i_1 
       (.I0(\inst_reg_n_0_[8] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[18] ),
        .O(imm_3[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[8]_i_1 
       (.I0(\inst_reg_n_0_[9] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[19] ),
        .O(imm_3[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \imm[9]_i_1 
       (.I0(\inst_reg_n_0_[10] ),
        .I1(curr[2]),
        .I2(\inst_reg_n_0_[20] ),
        .O(imm_3[9]));
  FDRE \imm_reg[0] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[0]),
        .Q(imm[0]),
        .R(1'b0));
  FDRE \imm_reg[10] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[10]),
        .Q(imm[10]),
        .R(1'b0));
  FDRE \imm_reg[11] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[11]),
        .Q(imm[11]),
        .R(1'b0));
  FDRE \imm_reg[12] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[12]),
        .Q(imm[12]),
        .R(1'b0));
  FDRE \imm_reg[13] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[13]),
        .Q(imm[13]),
        .R(1'b0));
  FDRE \imm_reg[14] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[14]),
        .Q(imm[14]),
        .R(1'b0));
  FDRE \imm_reg[15] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[15]),
        .Q(imm[15]),
        .R(1'b0));
  FDRE \imm_reg[1] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[1]),
        .Q(imm[1]),
        .R(1'b0));
  FDRE \imm_reg[2] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[2]),
        .Q(imm[2]),
        .R(1'b0));
  FDRE \imm_reg[3] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[3]),
        .Q(imm[3]),
        .R(1'b0));
  FDRE \imm_reg[4] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[4]),
        .Q(imm[4]),
        .R(1'b0));
  FDRE \imm_reg[5] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[5]),
        .Q(imm[5]),
        .R(1'b0));
  FDRE \imm_reg[6] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[6]),
        .Q(imm[6]),
        .R(1'b0));
  FDRE \imm_reg[7] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[7]),
        .Q(imm[7]),
        .R(1'b0));
  FDRE \imm_reg[8] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[8]),
        .Q(imm[8]),
        .R(1'b0));
  FDRE \imm_reg[9] 
       (.C(clk),
        .CE(\imm[15]_i_1_n_0 ),
        .D(imm_3[9]),
        .Q(imm[9]),
        .R(1'b0));
  FDRE \inst_reg[10] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[9]),
        .Q(\inst_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \inst_reg[11] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[10]),
        .Q(\inst_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \inst_reg[12] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[11]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \inst_reg[13] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[12]),
        .Q(p_0_in[1]),
        .R(1'b0));
  FDRE \inst_reg[14] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[13]),
        .Q(p_0_in[2]),
        .R(1'b0));
  FDRE \inst_reg[15] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[14]),
        .Q(p_0_in[3]),
        .R(1'b0));
  FDRE \inst_reg[16] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[15]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \inst_reg[17] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[16]),
        .Q(\inst_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \inst_reg[18] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[17]),
        .Q(\inst_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \inst_reg[19] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[18]),
        .Q(\inst_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \inst_reg[1] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[0]),
        .Q(\inst_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \inst_reg[20] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[19]),
        .Q(\inst_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \inst_reg[21] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[20]),
        .Q(\inst_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \inst_reg[22] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[21]),
        .Q(\inst_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \inst_reg[23] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[22]),
        .Q(\inst_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \inst_reg[24] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[23]),
        .Q(\inst_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \inst_reg[25] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[24]),
        .Q(\inst_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \inst_reg[26] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[25]),
        .Q(\inst_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \inst_reg[27] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[26]),
        .Q(\inst_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \inst_reg[28] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[27]),
        .Q(\inst_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \inst_reg[29] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[28]),
        .Q(\inst_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \inst_reg[2] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[1]),
        .Q(\inst_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \inst_reg[30] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[29]),
        .Q(p_0_in_0[0]),
        .R(1'b0));
  FDRE \inst_reg[31] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[30]),
        .Q(p_0_in_0[1]),
        .R(1'b0));
  FDRE \inst_reg[3] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[2]),
        .Q(\inst_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \inst_reg[4] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[3]),
        .Q(\inst_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \inst_reg[5] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[4]),
        .Q(\inst_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \inst_reg[6] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[5]),
        .Q(\inst_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \inst_reg[7] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[6]),
        .Q(\inst_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \inst_reg[8] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[7]),
        .Q(\inst_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \inst_reg[9] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(irWord[8]),
        .Q(\inst_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \irAddr[13]_i_1 
       (.I0(curr[3]),
        .I1(curr[4]),
        .I2(en),
        .I3(rst),
        .I4(\fbDout1[15]_i_2_n_0 ),
        .I5(curr[0]),
        .O(\irAddr[13]_i_1_n_0 ));
  FDRE \irAddr_reg[0] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[0] ),
        .Q(irAddr[0]),
        .R(1'b0));
  FDRE \irAddr_reg[10] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[10] ),
        .Q(irAddr[10]),
        .R(1'b0));
  FDRE \irAddr_reg[11] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[11] ),
        .Q(irAddr[11]),
        .R(1'b0));
  FDRE \irAddr_reg[12] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[12] ),
        .Q(irAddr[12]),
        .R(1'b0));
  FDRE \irAddr_reg[13] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[13] ),
        .Q(irAddr[13]),
        .R(1'b0));
  FDRE \irAddr_reg[1] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[1] ),
        .Q(irAddr[1]),
        .R(1'b0));
  FDRE \irAddr_reg[2] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[2] ),
        .Q(irAddr[2]),
        .R(1'b0));
  FDRE \irAddr_reg[3] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[3] ),
        .Q(irAddr[3]),
        .R(1'b0));
  FDRE \irAddr_reg[4] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[4] ),
        .Q(irAddr[4]),
        .R(1'b0));
  FDRE \irAddr_reg[5] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[5] ),
        .Q(irAddr[5]),
        .R(1'b0));
  FDRE \irAddr_reg[6] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[6] ),
        .Q(irAddr[6]),
        .R(1'b0));
  FDRE \irAddr_reg[7] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[7] ),
        .Q(irAddr[7]),
        .R(1'b0));
  FDRE \irAddr_reg[8] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[8] ),
        .Q(irAddr[8]),
        .R(1'b0));
  FDRE \irAddr_reg[9] 
       (.C(clk),
        .CE(\irAddr[13]_i_1_n_0 ),
        .D(\pc_reg_n_0_[9] ),
        .Q(irAddr[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002000002000200)) 
    \op[4]_i_1 
       (.I0(\rID2[4]_i_3_n_0 ),
        .I1(curr[4]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(curr[2]),
        .I5(curr[3]),
        .O(\op[4]_i_1_n_0 ));
  FDRE \op_reg[0] 
       (.C(clk),
        .CE(\op[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[27] ),
        .Q(\op_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \op_reg[1] 
       (.C(clk),
        .CE(\op[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[28] ),
        .Q(\op_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \op_reg[2] 
       (.C(clk),
        .CE(\op[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[29] ),
        .Q(\op_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \op_reg[3] 
       (.C(clk),
        .CE(\op[4]_i_1_n_0 ),
        .D(p_0_in_0[0]),
        .Q(\op_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \op_reg[4] 
       (.C(clk),
        .CE(\op[4]_i_1_n_0 ),
        .D(p_0_in_0[1]),
        .Q(\op_reg_n_0_[4] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \pc[15]_i_1 
       (.I0(\fbDout1[15]_i_2_n_0 ),
        .I1(en),
        .I2(rst),
        .I3(curr[0]),
        .I4(curr[3]),
        .I5(curr[4]),
        .O(\pc[15]_i_1_n_0 ));
  FDRE \pc_reg[0] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[0]),
        .Q(\pc_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \pc_reg[10] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[10]),
        .Q(\pc_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \pc_reg[11] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[11]),
        .Q(\pc_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \pc_reg[12] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[12]),
        .Q(\pc_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \pc_reg[13] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[13]),
        .Q(\pc_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \pc_reg[14] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[14]),
        .Q(\pc_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \pc_reg[15] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[15]),
        .Q(\pc_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \pc_reg[1] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[1]),
        .Q(\pc_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \pc_reg[2] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[2]),
        .Q(\pc_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \pc_reg[3] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[3]),
        .Q(\pc_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \pc_reg[4] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[4]),
        .Q(\pc_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \pc_reg[5] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[5]),
        .Q(\pc_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \pc_reg[6] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[6]),
        .Q(\pc_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \pc_reg[7] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[7]),
        .Q(\pc_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \pc_reg[8] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[8]),
        .Q(\pc_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \pc_reg[9] 
       (.C(clk),
        .CE(\pc[15]_i_1_n_0 ),
        .D(regrD1[9]),
        .Q(\pc_reg_n_0_[9] ),
        .R(1'b0));
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,plusOp_carry_n_1,plusOp_carry_n_2,plusOp_carry_n_3}),
        .CYINIT(\pc_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[4:1]),
        .S({\pc_reg_n_0_[4] ,\pc_reg_n_0_[3] ,\pc_reg_n_0_[2] ,\pc_reg_n_0_[1] }));
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,plusOp_carry__0_n_1,plusOp_carry__0_n_2,plusOp_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[8:5]),
        .S({\pc_reg_n_0_[8] ,\pc_reg_n_0_[7] ,\pc_reg_n_0_[6] ,\pc_reg_n_0_[5] }));
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,plusOp_carry__1_n_1,plusOp_carry__1_n_2,plusOp_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in9[12:9]),
        .S({\pc_reg_n_0_[12] ,\pc_reg_n_0_[11] ,\pc_reg_n_0_[10] ,\pc_reg_n_0_[9] }));
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO({NLW_plusOp_carry__2_CO_UNCONNECTED[3:2],plusOp_carry__2_n_2,plusOp_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_plusOp_carry__2_O_UNCONNECTED[3],in9[15:13]}),
        .S({1'b0,\pc_reg_n_0_[15] ,\pc_reg_n_0_[14] ,\pc_reg_n_0_[13] }));
  LUT6 #(
    .INIT(64'hFFFFFB08FFFFFB3B)) 
    \rID1[0]_i_1 
       (.I0(\reg2_reg_n_0_[0] ),
        .I1(curr[2]),
        .I2(curr[0]),
        .I3(\reg1_reg_n_0_[0] ),
        .I4(\rID1[0]_i_2_n_0 ),
        .I5(\rID1[0]_i_3_n_0 ),
        .O(\rID1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \rID1[0]_i_2 
       (.I0(curr[2]),
        .I1(curr[1]),
        .I2(curr[3]),
        .O(\rID1[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \rID1[0]_i_3 
       (.I0(curr[3]),
        .I1(curr[4]),
        .O(\rID1[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID1[1]_i_1 
       (.I0(\reg2_reg_n_0_[1] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(\reg1_reg_n_0_[1] ),
        .I3(\rID1[4]_i_4_n_0 ),
        .O(\rID1[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID1[2]_i_1 
       (.I0(\reg2_reg_n_0_[2] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(\reg1_reg_n_0_[2] ),
        .I3(\rID1[4]_i_4_n_0 ),
        .O(\rID1[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID1[3]_i_1 
       (.I0(\reg2_reg_n_0_[3] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(\reg1_reg_n_0_[3] ),
        .I3(\rID1[4]_i_4_n_0 ),
        .O(\rID1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h03210000316F0000)) 
    \rID1[4]_i_1 
       (.I0(curr[0]),
        .I1(curr[4]),
        .I2(curr[1]),
        .I3(curr[2]),
        .I4(en),
        .I5(curr[3]),
        .O(\rID1[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \rID1[4]_i_2 
       (.I0(\reg2_reg_n_0_[4] ),
        .I1(\rID1[4]_i_3_n_0 ),
        .I2(\reg1_reg_n_0_[4] ),
        .I3(\rID1[4]_i_4_n_0 ),
        .O(\rID1[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3020)) 
    \rID1[4]_i_3 
       (.I0(curr[3]),
        .I1(curr[0]),
        .I2(curr[2]),
        .I3(curr[1]),
        .O(\rID1[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hCCC0FAFA)) 
    \rID1[4]_i_4 
       (.I0(curr[4]),
        .I1(curr[0]),
        .I2(curr[3]),
        .I3(curr[1]),
        .I4(curr[2]),
        .O(\rID1[4]_i_4_n_0 ));
  FDSE \rID1_reg[0] 
       (.C(clk),
        .CE(\rID1[4]_i_1_n_0 ),
        .D(\rID1[0]_i_1_n_0 ),
        .Q(rID1[0]),
        .S(rst));
  FDRE \rID1_reg[1] 
       (.C(clk),
        .CE(\rID1[4]_i_1_n_0 ),
        .D(\rID1[1]_i_1_n_0 ),
        .Q(rID1[1]),
        .R(rst));
  FDRE \rID1_reg[2] 
       (.C(clk),
        .CE(\rID1[4]_i_1_n_0 ),
        .D(\rID1[2]_i_1_n_0 ),
        .Q(rID1[2]),
        .R(rst));
  FDRE \rID1_reg[3] 
       (.C(clk),
        .CE(\rID1[4]_i_1_n_0 ),
        .D(\rID1[3]_i_1_n_0 ),
        .Q(rID1[3]),
        .R(rst));
  FDRE \rID1_reg[4] 
       (.C(clk),
        .CE(\rID1[4]_i_1_n_0 ),
        .D(\rID1[4]_i_2_n_0 ),
        .Q(rID1[4]),
        .R(rst));
  LUT4 #(
    .INIT(16'hFABA)) 
    \rID2[0]_i_1 
       (.I0(curr[0]),
        .I1(curr[2]),
        .I2(curr[3]),
        .I3(\reg3_reg_n_0_[0] ),
        .O(\rID2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0B00)) 
    \rID2[1]_i_1 
       (.I0(\reg3_reg_n_0_[1] ),
        .I1(curr[3]),
        .I2(curr[1]),
        .I3(curr[2]),
        .O(\rID2[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rID2[2]_i_1 
       (.I0(\reg3_reg_n_0_[2] ),
        .I1(curr[3]),
        .I2(curr[2]),
        .O(\rID2[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rID2[3]_i_1 
       (.I0(\reg3_reg_n_0_[3] ),
        .I1(curr[3]),
        .I2(curr[2]),
        .O(\rID2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000109000001000)) 
    \rID2[4]_i_1 
       (.I0(curr[0]),
        .I1(curr[1]),
        .I2(\rID2[4]_i_3_n_0 ),
        .I3(curr[3]),
        .I4(curr[4]),
        .I5(curr[2]),
        .O(\rID2[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \rID2[4]_i_2 
       (.I0(\reg3_reg_n_0_[4] ),
        .I1(curr[3]),
        .I2(curr[2]),
        .O(\rID2[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rID2[4]_i_3 
       (.I0(en),
        .I1(rst),
        .O(\rID2[4]_i_3_n_0 ));
  FDRE \rID2_reg[0] 
       (.C(clk),
        .CE(\rID2[4]_i_1_n_0 ),
        .D(\rID2[0]_i_1_n_0 ),
        .Q(rID2[0]),
        .R(1'b0));
  FDRE \rID2_reg[1] 
       (.C(clk),
        .CE(\rID2[4]_i_1_n_0 ),
        .D(\rID2[1]_i_1_n_0 ),
        .Q(rID2[1]),
        .R(1'b0));
  FDRE \rID2_reg[2] 
       (.C(clk),
        .CE(\rID2[4]_i_1_n_0 ),
        .D(\rID2[2]_i_1_n_0 ),
        .Q(rID2[2]),
        .R(1'b0));
  FDRE \rID2_reg[3] 
       (.C(clk),
        .CE(\rID2[4]_i_1_n_0 ),
        .D(\rID2[3]_i_1_n_0 ),
        .Q(rID2[3]),
        .R(1'b0));
  FDRE \rID2_reg[4] 
       (.C(clk),
        .CE(\rID2[4]_i_1_n_0 ),
        .D(\rID2[4]_i_2_n_0 ),
        .Q(rID2[4]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFDFFFD00)) 
    \reg1[0]_i_1 
       (.I0(curr[2]),
        .I1(curr[0]),
        .I2(\inst_reg_n_0_[22] ),
        .I3(\reg1[4]_i_2_n_0 ),
        .I4(\reg1_reg_n_0_[0] ),
        .O(\reg1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000088000000400)) 
    \reg1[4]_i_1 
       (.I0(curr[2]),
        .I1(\rID2[4]_i_3_n_0 ),
        .I2(curr[1]),
        .I3(curr[3]),
        .I4(curr[4]),
        .I5(curr[0]),
        .O(\reg1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0330000000100000)) 
    \reg1[4]_i_2 
       (.I0(curr[0]),
        .I1(curr[4]),
        .I2(curr[3]),
        .I3(curr[1]),
        .I4(\rID2[4]_i_3_n_0 ),
        .I5(curr[2]),
        .O(\reg1[4]_i_2_n_0 ));
  FDRE \reg1_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\reg1[0]_i_1_n_0 ),
        .Q(\reg1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg1_reg[1] 
       (.C(clk),
        .CE(\reg1[4]_i_2_n_0 ),
        .D(\inst_reg_n_0_[23] ),
        .Q(\reg1_reg_n_0_[1] ),
        .R(\reg1[4]_i_1_n_0 ));
  FDRE \reg1_reg[2] 
       (.C(clk),
        .CE(\reg1[4]_i_2_n_0 ),
        .D(\inst_reg_n_0_[24] ),
        .Q(\reg1_reg_n_0_[2] ),
        .R(\reg1[4]_i_1_n_0 ));
  FDRE \reg1_reg[3] 
       (.C(clk),
        .CE(\reg1[4]_i_2_n_0 ),
        .D(\inst_reg_n_0_[25] ),
        .Q(\reg1_reg_n_0_[3] ),
        .R(\reg1[4]_i_1_n_0 ));
  FDRE \reg1_reg[4] 
       (.C(clk),
        .CE(\reg1[4]_i_2_n_0 ),
        .D(\inst_reg_n_0_[26] ),
        .Q(\reg1_reg_n_0_[4] ),
        .R(\reg1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000002000000)) 
    \reg2[4]_i_1 
       (.I0(\rID2[4]_i_3_n_0 ),
        .I1(curr[4]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(curr[2]),
        .I5(curr[3]),
        .O(\reg2[4]_i_1_n_0 ));
  FDRE \reg2_reg[0] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[17] ),
        .Q(\reg2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg2_reg[1] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[18] ),
        .Q(\reg2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg2_reg[2] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[19] ),
        .Q(\reg2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg2_reg[3] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[20] ),
        .Q(\reg2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg2_reg[4] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(\inst_reg_n_0_[21] ),
        .Q(\reg2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg2_val_reg[0] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[0]),
        .Q(reg2_val[0]),
        .R(1'b0));
  FDRE \reg2_val_reg[10] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[10]),
        .Q(reg2_val[10]),
        .R(1'b0));
  FDRE \reg2_val_reg[11] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[11]),
        .Q(reg2_val[11]),
        .R(1'b0));
  FDRE \reg2_val_reg[12] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[12]),
        .Q(reg2_val[12]),
        .R(1'b0));
  FDRE \reg2_val_reg[13] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[13]),
        .Q(reg2_val[13]),
        .R(1'b0));
  FDRE \reg2_val_reg[14] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[14]),
        .Q(reg2_val[14]),
        .R(1'b0));
  FDRE \reg2_val_reg[15] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[15]),
        .Q(reg2_val[15]),
        .R(1'b0));
  FDRE \reg2_val_reg[1] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[1]),
        .Q(reg2_val[1]),
        .R(1'b0));
  FDRE \reg2_val_reg[2] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[2]),
        .Q(reg2_val[2]),
        .R(1'b0));
  FDRE \reg2_val_reg[3] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[3]),
        .Q(reg2_val[3]),
        .R(1'b0));
  FDRE \reg2_val_reg[4] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[4]),
        .Q(reg2_val[4]),
        .R(1'b0));
  FDRE \reg2_val_reg[5] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[5]),
        .Q(reg2_val[5]),
        .R(1'b0));
  FDRE \reg2_val_reg[6] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[6]),
        .Q(reg2_val[6]),
        .R(1'b0));
  FDRE \reg2_val_reg[7] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[7]),
        .Q(reg2_val[7]),
        .R(1'b0));
  FDRE \reg2_val_reg[8] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[8]),
        .Q(reg2_val[8]),
        .R(1'b0));
  FDRE \reg2_val_reg[9] 
       (.C(clk),
        .CE(\reg2[4]_i_1_n_0 ),
        .D(regrD1[9]),
        .Q(reg2_val[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00020000)) 
    \reg3[4]_i_1 
       (.I0(\reg3[4]_i_2_n_0 ),
        .I1(curr[0]),
        .I2(curr[4]),
        .I3(rst),
        .I4(en),
        .O(\reg3[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \reg3[4]_i_2 
       (.I0(curr[3]),
        .I1(curr[2]),
        .I2(curr[1]),
        .O(\reg3[4]_i_2_n_0 ));
  FDRE \reg3_reg[0] 
       (.C(clk),
        .CE(\reg3[4]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\reg3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg3_reg[1] 
       (.C(clk),
        .CE(\reg3[4]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\reg3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg3_reg[2] 
       (.C(clk),
        .CE(\reg3[4]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\reg3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg3_reg[3] 
       (.C(clk),
        .CE(\reg3[4]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\reg3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg3_reg[4] 
       (.C(clk),
        .CE(\reg3[4]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\reg3_reg_n_0_[4] ),
        .R(1'b0));
  CARRY4 reg3_val0_carry
       (.CI(1'b0),
        .CO({reg3_val0_carry_n_0,reg3_val0_carry_n_1,reg3_val0_carry_n_2,reg3_val0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(reg2_val[3:0]),
        .O(in23[3:0]),
        .S({reg3_val0_carry_i_1_n_0,reg3_val0_carry_i_2_n_0,reg3_val0_carry_i_3_n_0,reg3_val0_carry_i_4_n_0}));
  CARRY4 reg3_val0_carry__0
       (.CI(reg3_val0_carry_n_0),
        .CO({reg3_val0_carry__0_n_0,reg3_val0_carry__0_n_1,reg3_val0_carry__0_n_2,reg3_val0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(reg2_val[7:4]),
        .O(in23[7:4]),
        .S({reg3_val0_carry__0_i_1_n_0,reg3_val0_carry__0_i_2_n_0,reg3_val0_carry__0_i_3_n_0,reg3_val0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__0_i_1
       (.I0(reg2_val[7]),
        .I1(imm[7]),
        .O(reg3_val0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__0_i_2
       (.I0(reg2_val[6]),
        .I1(imm[6]),
        .O(reg3_val0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__0_i_3
       (.I0(reg2_val[5]),
        .I1(imm[5]),
        .O(reg3_val0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__0_i_4
       (.I0(reg2_val[4]),
        .I1(imm[4]),
        .O(reg3_val0_carry__0_i_4_n_0));
  CARRY4 reg3_val0_carry__1
       (.CI(reg3_val0_carry__0_n_0),
        .CO({reg3_val0_carry__1_n_0,reg3_val0_carry__1_n_1,reg3_val0_carry__1_n_2,reg3_val0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(reg2_val[11:8]),
        .O(in23[11:8]),
        .S({reg3_val0_carry__1_i_1_n_0,reg3_val0_carry__1_i_2_n_0,reg3_val0_carry__1_i_3_n_0,reg3_val0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__1_i_1
       (.I0(reg2_val[11]),
        .I1(imm[11]),
        .O(reg3_val0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__1_i_2
       (.I0(reg2_val[10]),
        .I1(imm[10]),
        .O(reg3_val0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__1_i_3
       (.I0(reg2_val[9]),
        .I1(imm[9]),
        .O(reg3_val0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__1_i_4
       (.I0(reg2_val[8]),
        .I1(imm[8]),
        .O(reg3_val0_carry__1_i_4_n_0));
  CARRY4 reg3_val0_carry__2
       (.CI(reg3_val0_carry__1_n_0),
        .CO({NLW_reg3_val0_carry__2_CO_UNCONNECTED[3:2],reg3_val0_carry__2_n_2,reg3_val0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,reg2_val[13:12]}),
        .O({NLW_reg3_val0_carry__2_O_UNCONNECTED[3],in23[14:12]}),
        .S({1'b0,reg3_val0_carry__2_i_1_n_0,reg3_val0_carry__2_i_2_n_0,reg3_val0_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__2_i_1
       (.I0(reg2_val[14]),
        .I1(imm[14]),
        .O(reg3_val0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__2_i_2
       (.I0(reg2_val[13]),
        .I1(imm[13]),
        .O(reg3_val0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry__2_i_3
       (.I0(reg2_val[12]),
        .I1(imm[12]),
        .O(reg3_val0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry_i_1
       (.I0(reg2_val[3]),
        .I1(imm[3]),
        .O(reg3_val0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry_i_2
       (.I0(reg2_val[2]),
        .I1(imm[2]),
        .O(reg3_val0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry_i_3
       (.I0(reg2_val[1]),
        .I1(imm[1]),
        .O(reg3_val0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    reg3_val0_carry_i_4
       (.I0(reg2_val[0]),
        .I1(imm[0]),
        .O(reg3_val0_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[0]_i_1 
       (.I0(regrD2[0]),
        .I1(curr[2]),
        .I2(in23[0]),
        .O(reg3_val[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[10]_i_1 
       (.I0(regrD2[10]),
        .I1(curr[2]),
        .I2(in23[10]),
        .O(reg3_val[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[11]_i_1 
       (.I0(regrD2[11]),
        .I1(curr[2]),
        .I2(in23[11]),
        .O(reg3_val[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[12]_i_1 
       (.I0(regrD2[12]),
        .I1(curr[2]),
        .I2(in23[12]),
        .O(reg3_val[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[13]_i_1 
       (.I0(regrD2[13]),
        .I1(curr[2]),
        .I2(in23[13]),
        .O(reg3_val[13]));
  LUT6 #(
    .INIT(64'h0002220000000000)) 
    \reg3_val[14]_i_1 
       (.I0(\rID2[4]_i_3_n_0 ),
        .I1(curr[4]),
        .I2(curr[0]),
        .I3(curr[1]),
        .I4(curr[2]),
        .I5(curr[3]),
        .O(\reg3_val[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[14]_i_2 
       (.I0(regrD2[14]),
        .I1(curr[2]),
        .I2(in23[14]),
        .O(reg3_val[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[1]_i_1 
       (.I0(regrD2[1]),
        .I1(curr[2]),
        .I2(in23[1]),
        .O(reg3_val[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[2]_i_1 
       (.I0(regrD2[2]),
        .I1(curr[2]),
        .I2(in23[2]),
        .O(reg3_val[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[3]_i_1 
       (.I0(regrD2[3]),
        .I1(curr[2]),
        .I2(in23[3]),
        .O(reg3_val[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[4]_i_1 
       (.I0(regrD2[4]),
        .I1(curr[2]),
        .I2(in23[4]),
        .O(reg3_val[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[5]_i_1 
       (.I0(regrD2[5]),
        .I1(curr[2]),
        .I2(in23[5]),
        .O(reg3_val[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[6]_i_1 
       (.I0(regrD2[6]),
        .I1(curr[2]),
        .I2(in23[6]),
        .O(reg3_val[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[7]_i_1 
       (.I0(regrD2[7]),
        .I1(curr[2]),
        .I2(in23[7]),
        .O(reg3_val[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[8]_i_1 
       (.I0(regrD2[8]),
        .I1(curr[2]),
        .I2(in23[8]),
        .O(reg3_val[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \reg3_val[9]_i_1 
       (.I0(regrD2[9]),
        .I1(curr[2]),
        .I2(in23[9]),
        .O(reg3_val[9]));
  FDRE \reg3_val_reg[0] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[0]),
        .Q(\reg3_val_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \reg3_val_reg[10] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[10]),
        .Q(\reg3_val_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \reg3_val_reg[11] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[11]),
        .Q(\reg3_val_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \reg3_val_reg[12] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[12]),
        .Q(\reg3_val_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \reg3_val_reg[13] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[13]),
        .Q(\reg3_val_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \reg3_val_reg[14] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[14]),
        .Q(\reg3_val_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \reg3_val_reg[1] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[1]),
        .Q(\reg3_val_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \reg3_val_reg[2] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[2]),
        .Q(\reg3_val_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \reg3_val_reg[3] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[3]),
        .Q(\reg3_val_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \reg3_val_reg[4] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[4]),
        .Q(\reg3_val_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \reg3_val_reg[5] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[5]),
        .Q(\reg3_val_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \reg3_val_reg[6] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[6]),
        .Q(\reg3_val_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \reg3_val_reg[7] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[7]),
        .Q(\reg3_val_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \reg3_val_reg[8] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[8]),
        .Q(\reg3_val_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \reg3_val_reg[9] 
       (.C(clk),
        .CE(\reg3_val[14]_i_1_n_0 ),
        .D(reg3_val[9]),
        .Q(\reg3_val_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00FF00FF00B1B1)) 
    \regwD1[0]_i_1 
       (.I0(curr[4]),
        .I1(\pc_reg_n_0_[0] ),
        .I2(aluResult[0]),
        .I3(imm[0]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[0]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[10]_i_1 
       (.I0(curr[4]),
        .I1(in9[10]),
        .I2(aluResult[10]),
        .I3(imm[10]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[10]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[11]_i_1 
       (.I0(curr[4]),
        .I1(in9[11]),
        .I2(aluResult[11]),
        .I3(imm[11]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[11]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[12]_i_1 
       (.I0(curr[4]),
        .I1(in9[12]),
        .I2(aluResult[12]),
        .I3(imm[12]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[12]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[13]_i_1 
       (.I0(curr[4]),
        .I1(in9[13]),
        .I2(aluResult[13]),
        .I3(imm[13]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[13]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[14]_i_1 
       (.I0(curr[4]),
        .I1(in9[14]),
        .I2(aluResult[14]),
        .I3(imm[14]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[14]));
  LUT6 #(
    .INIT(64'h0000100000101040)) 
    \regwD1[15]_i_1 
       (.I0(curr[3]),
        .I1(curr[4]),
        .I2(en),
        .I3(curr[0]),
        .I4(curr[2]),
        .I5(curr[1]),
        .O(\regwD1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[15]_i_2 
       (.I0(curr[4]),
        .I1(in9[15]),
        .I2(aluResult[15]),
        .I3(imm[15]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[15]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[1]_i_1 
       (.I0(curr[4]),
        .I1(in9[1]),
        .I2(aluResult[1]),
        .I3(imm[1]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[1]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[2]_i_1 
       (.I0(curr[4]),
        .I1(in9[2]),
        .I2(aluResult[2]),
        .I3(imm[2]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[2]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[3]_i_1 
       (.I0(curr[4]),
        .I1(in9[3]),
        .I2(aluResult[3]),
        .I3(imm[3]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[3]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[4]_i_1 
       (.I0(curr[4]),
        .I1(in9[4]),
        .I2(aluResult[4]),
        .I3(imm[4]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[4]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[5]_i_1 
       (.I0(curr[4]),
        .I1(in9[5]),
        .I2(aluResult[5]),
        .I3(imm[5]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[5]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[6]_i_1 
       (.I0(curr[4]),
        .I1(in9[6]),
        .I2(aluResult[6]),
        .I3(imm[6]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[6]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[7]_i_1 
       (.I0(curr[4]),
        .I1(in9[7]),
        .I2(aluResult[7]),
        .I3(imm[7]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[7]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[8]_i_1 
       (.I0(curr[4]),
        .I1(in9[8]),
        .I2(aluResult[8]),
        .I3(imm[8]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[8]));
  LUT6 #(
    .INIT(64'hFF00FF00FF00E4E4)) 
    \regwD1[9]_i_1 
       (.I0(curr[4]),
        .I1(in9[9]),
        .I2(aluResult[9]),
        .I3(imm[9]),
        .I4(curr[1]),
        .I5(curr[2]),
        .O(regwD1_2[9]));
  FDRE \regwD1_reg[0] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[0]),
        .Q(regwD1[0]),
        .R(rst));
  FDRE \regwD1_reg[10] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[10]),
        .Q(regwD1[10]),
        .R(rst));
  FDRE \regwD1_reg[11] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[11]),
        .Q(regwD1[11]),
        .R(rst));
  FDRE \regwD1_reg[12] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[12]),
        .Q(regwD1[12]),
        .R(rst));
  FDRE \regwD1_reg[13] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[13]),
        .Q(regwD1[13]),
        .R(rst));
  FDRE \regwD1_reg[14] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[14]),
        .Q(regwD1[14]),
        .R(rst));
  FDRE \regwD1_reg[15] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[15]),
        .Q(regwD1[15]),
        .R(rst));
  FDRE \regwD1_reg[1] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[1]),
        .Q(regwD1[1]),
        .R(rst));
  FDRE \regwD1_reg[2] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[2]),
        .Q(regwD1[2]),
        .R(rst));
  FDRE \regwD1_reg[3] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[3]),
        .Q(regwD1[3]),
        .R(rst));
  FDRE \regwD1_reg[4] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[4]),
        .Q(regwD1[4]),
        .R(rst));
  FDRE \regwD1_reg[5] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[5]),
        .Q(regwD1[5]),
        .R(rst));
  FDRE \regwD1_reg[6] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[6]),
        .Q(regwD1[6]),
        .R(rst));
  FDRE \regwD1_reg[7] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[7]),
        .Q(regwD1[7]),
        .R(rst));
  FDRE \regwD1_reg[8] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[8]),
        .Q(regwD1[8]),
        .R(rst));
  FDRE \regwD1_reg[9] 
       (.C(clk),
        .CE(\regwD1[15]_i_1_n_0 ),
        .D(regwD1_2[9]),
        .Q(regwD1[9]),
        .R(rst));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \regwD2[15]_i_1 
       (.I0(curr[1]),
        .I1(en),
        .I2(rst),
        .I3(\rID1[0]_i_3_n_0 ),
        .I4(curr[0]),
        .I5(curr[2]),
        .O(\regwD2[15]_i_1_n_0 ));
  FDRE \regwD2_reg[0] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[0]),
        .Q(regwD2[0]),
        .R(1'b0));
  FDRE \regwD2_reg[10] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[10]),
        .Q(regwD2[10]),
        .R(1'b0));
  FDRE \regwD2_reg[11] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[11]),
        .Q(regwD2[11]),
        .R(1'b0));
  FDRE \regwD2_reg[12] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[12]),
        .Q(regwD2[12]),
        .R(1'b0));
  FDRE \regwD2_reg[13] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[13]),
        .Q(regwD2[13]),
        .R(1'b0));
  FDRE \regwD2_reg[14] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[14]),
        .Q(regwD2[14]),
        .R(1'b0));
  FDRE \regwD2_reg[15] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[15]),
        .Q(regwD2[15]),
        .R(1'b0));
  FDRE \regwD2_reg[1] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[1]),
        .Q(regwD2[1]),
        .R(1'b0));
  FDRE \regwD2_reg[2] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[2]),
        .Q(regwD2[2]),
        .R(1'b0));
  FDRE \regwD2_reg[3] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[3]),
        .Q(regwD2[3]),
        .R(1'b0));
  FDRE \regwD2_reg[4] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[4]),
        .Q(regwD2[4]),
        .R(1'b0));
  FDRE \regwD2_reg[5] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[5]),
        .Q(regwD2[5]),
        .R(1'b0));
  FDRE \regwD2_reg[6] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[6]),
        .Q(regwD2[6]),
        .R(1'b0));
  FDRE \regwD2_reg[7] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[7]),
        .Q(regwD2[7]),
        .R(1'b0));
  FDRE \regwD2_reg[8] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[8]),
        .Q(regwD2[8]),
        .R(1'b0));
  FDRE \regwD2_reg[9] 
       (.C(clk),
        .CE(\regwD2[15]_i_1_n_0 ),
        .D(regrD1[9]),
        .Q(regwD2[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF7FFFFF00400000)) 
    send_i_1
       (.I0(curr[0]),
        .I1(en),
        .I2(wr_enR1_i_3_n_0),
        .I3(curr[2]),
        .I4(curr[1]),
        .I5(send),
        .O(send_i_1_n_0));
  FDRE send_reg
       (.C(clk),
        .CE(1'b1),
        .D(send_i_1_n_0),
        .Q(send),
        .R(rst));
  LUT6 #(
    .INIT(64'hFFAEFFFFFFAE0000)) 
    wr_enR1_i_1
       (.I0(wr_enR1_i_2_n_0),
        .I1(wr_enR1_i_3_n_0),
        .I2(curr[1]),
        .I3(\rID1[0]_i_2_n_0 ),
        .I4(wr_enR15_out),
        .I5(wr_enR1),
        .O(wr_enR1_i_1_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_enR1_i_2
       (.I0(curr[0]),
        .I1(curr[4]),
        .O(wr_enR1_i_2_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    wr_enR1_i_3
       (.I0(curr[4]),
        .I1(curr[3]),
        .O(wr_enR1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0044000C0004084C)) 
    wr_enR1_i_4
       (.I0(curr[2]),
        .I1(en),
        .I2(curr[4]),
        .I3(curr[3]),
        .I4(curr[0]),
        .I5(curr[1]),
        .O(wr_enR15_out));
  FDSE wr_enR1_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_enR1_i_1_n_0),
        .Q(wr_enR1),
        .S(rst));
  LUT6 #(
    .INIT(64'h7777577744445444)) 
    wr_enR2_i_1
       (.I0(curr[4]),
        .I1(wr_enR2_i_2_n_0),
        .I2(wr_enR2_i_3_n_0),
        .I3(en),
        .I4(curr[1]),
        .I5(wr_enR2),
        .O(wr_enR2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    wr_enR2_i_2
       (.I0(en),
        .I1(curr[4]),
        .I2(curr[3]),
        .I3(curr[2]),
        .I4(curr[0]),
        .I5(curr[1]),
        .O(wr_enR2_i_2_n_0));
  LUT4 #(
    .INIT(16'h0002)) 
    wr_enR2_i_3
       (.I0(curr[2]),
        .I1(curr[0]),
        .I2(curr[4]),
        .I3(curr[3]),
        .O(wr_enR2_i_3_n_0));
  FDRE wr_enR2_reg
       (.C(clk),
        .CE(1'b1),
        .D(wr_enR2_i_1_n_0),
        .Q(wr_enR2),
        .R(rst));
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
