// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Apr 15 20:12:18 2021
// Host        : canis running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_my_alu_0_0/processor_design_my_alu_0_0_sim_netlist.v
// Design      : processor_design_my_alu_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "processor_design_my_alu_0_0,my_alu,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "my_alu,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module processor_design_my_alu_0_0
   (en,
    Opcode,
    A,
    B,
    F);
  input en;
  input [3:0]Opcode;
  input [15:0]A;
  input [15:0]B;
  output [15:0]F;

  wire [15:0]A;
  wire [15:0]B;
  wire [15:0]F;
  wire \F[0]_INST_0_i_1_n_0 ;
  wire \F[10]_INST_0_i_1_n_0 ;
  wire \F[10]_INST_0_i_2_n_0 ;
  wire \F[11]_INST_0_i_1_n_0 ;
  wire \F[11]_INST_0_i_2_n_0 ;
  wire \F[12]_INST_0_i_10_n_0 ;
  wire \F[12]_INST_0_i_11_n_0 ;
  wire \F[12]_INST_0_i_12_n_0 ;
  wire \F[12]_INST_0_i_13_n_0 ;
  wire \F[12]_INST_0_i_14_n_0 ;
  wire \F[12]_INST_0_i_1_n_0 ;
  wire \F[12]_INST_0_i_2_n_0 ;
  wire \F[12]_INST_0_i_4_n_0 ;
  wire \F[12]_INST_0_i_4_n_1 ;
  wire \F[12]_INST_0_i_4_n_2 ;
  wire \F[12]_INST_0_i_4_n_3 ;
  wire \F[12]_INST_0_i_5_n_0 ;
  wire \F[12]_INST_0_i_5_n_1 ;
  wire \F[12]_INST_0_i_5_n_2 ;
  wire \F[12]_INST_0_i_5_n_3 ;
  wire \F[12]_INST_0_i_6_n_0 ;
  wire \F[12]_INST_0_i_6_n_1 ;
  wire \F[12]_INST_0_i_6_n_2 ;
  wire \F[12]_INST_0_i_6_n_3 ;
  wire \F[12]_INST_0_i_7_n_0 ;
  wire \F[12]_INST_0_i_8_n_0 ;
  wire \F[12]_INST_0_i_9_n_0 ;
  wire \F[13]_INST_0_i_1_n_0 ;
  wire \F[13]_INST_0_i_2_n_0 ;
  wire \F[14]_INST_0_i_1_n_0 ;
  wire \F[14]_INST_0_i_2_n_0 ;
  wire \F[15]_INST_0_i_10_n_0 ;
  wire \F[15]_INST_0_i_11_n_0 ;
  wire \F[15]_INST_0_i_12_n_0 ;
  wire \F[15]_INST_0_i_1_n_0 ;
  wire \F[15]_INST_0_i_2_n_0 ;
  wire \F[15]_INST_0_i_4_n_2 ;
  wire \F[15]_INST_0_i_4_n_3 ;
  wire \F[15]_INST_0_i_5_n_2 ;
  wire \F[15]_INST_0_i_5_n_3 ;
  wire \F[15]_INST_0_i_6_n_2 ;
  wire \F[15]_INST_0_i_6_n_3 ;
  wire \F[15]_INST_0_i_7_n_0 ;
  wire \F[15]_INST_0_i_8_n_0 ;
  wire \F[15]_INST_0_i_9_n_0 ;
  wire \F[1]_INST_0_i_1_n_0 ;
  wire \F[1]_INST_0_i_2_n_0 ;
  wire \F[2]_INST_0_i_1_n_0 ;
  wire \F[2]_INST_0_i_2_n_0 ;
  wire \F[3]_INST_0_i_1_n_0 ;
  wire \F[3]_INST_0_i_2_n_0 ;
  wire \F[4]_INST_0_i_10_n_0 ;
  wire \F[4]_INST_0_i_11_n_0 ;
  wire \F[4]_INST_0_i_12_n_0 ;
  wire \F[4]_INST_0_i_13_n_0 ;
  wire \F[4]_INST_0_i_14_n_0 ;
  wire \F[4]_INST_0_i_15_n_0 ;
  wire \F[4]_INST_0_i_1_n_0 ;
  wire \F[4]_INST_0_i_2_n_0 ;
  wire \F[4]_INST_0_i_4_n_0 ;
  wire \F[4]_INST_0_i_4_n_1 ;
  wire \F[4]_INST_0_i_4_n_2 ;
  wire \F[4]_INST_0_i_4_n_3 ;
  wire \F[4]_INST_0_i_5_n_0 ;
  wire \F[4]_INST_0_i_5_n_1 ;
  wire \F[4]_INST_0_i_5_n_2 ;
  wire \F[4]_INST_0_i_5_n_3 ;
  wire \F[4]_INST_0_i_6_n_0 ;
  wire \F[4]_INST_0_i_6_n_1 ;
  wire \F[4]_INST_0_i_6_n_2 ;
  wire \F[4]_INST_0_i_6_n_3 ;
  wire \F[4]_INST_0_i_8_n_0 ;
  wire \F[4]_INST_0_i_9_n_0 ;
  wire \F[5]_INST_0_i_1_n_0 ;
  wire \F[5]_INST_0_i_2_n_0 ;
  wire \F[6]_INST_0_i_1_n_0 ;
  wire \F[6]_INST_0_i_2_n_0 ;
  wire \F[7]_INST_0_i_1_n_0 ;
  wire \F[7]_INST_0_i_2_n_0 ;
  wire \F[8]_INST_0_i_10_n_0 ;
  wire \F[8]_INST_0_i_11_n_0 ;
  wire \F[8]_INST_0_i_12_n_0 ;
  wire \F[8]_INST_0_i_13_n_0 ;
  wire \F[8]_INST_0_i_14_n_0 ;
  wire \F[8]_INST_0_i_1_n_0 ;
  wire \F[8]_INST_0_i_2_n_0 ;
  wire \F[8]_INST_0_i_4_n_0 ;
  wire \F[8]_INST_0_i_4_n_1 ;
  wire \F[8]_INST_0_i_4_n_2 ;
  wire \F[8]_INST_0_i_4_n_3 ;
  wire \F[8]_INST_0_i_5_n_0 ;
  wire \F[8]_INST_0_i_5_n_1 ;
  wire \F[8]_INST_0_i_5_n_2 ;
  wire \F[8]_INST_0_i_5_n_3 ;
  wire \F[8]_INST_0_i_6_n_0 ;
  wire \F[8]_INST_0_i_6_n_1 ;
  wire \F[8]_INST_0_i_6_n_2 ;
  wire \F[8]_INST_0_i_6_n_3 ;
  wire \F[8]_INST_0_i_7_n_0 ;
  wire \F[8]_INST_0_i_8_n_0 ;
  wire \F[8]_INST_0_i_9_n_0 ;
  wire \F[9]_INST_0_i_1_n_0 ;
  wire \F[9]_INST_0_i_2_n_0 ;
  wire [3:0]Opcode;
  wire [15:1]data2;
  wire [15:1]data3;
  wire [15:1]data4;
  wire [0:0]data8;
  wire [3:2]\NLW_F[15]_INST_0_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_F[15]_INST_0_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_F[15]_INST_0_i_5_CO_UNCONNECTED ;
  wire [3:3]\NLW_F[15]_INST_0_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_F[15]_INST_0_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_F[15]_INST_0_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[0]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[0]),
        .I2(Opcode[1]),
        .I3(A[0]),
        .I4(Opcode[0]),
        .I5(A[1]),
        .O(\F[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[10]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[10]),
        .I2(Opcode[1]),
        .I3(A[10]),
        .I4(Opcode[0]),
        .I5(A[11]),
        .O(\F[10]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[10]_INST_0_i_2 
       (.I0(A[11]),
        .I1(A[9]),
        .I2(Opcode[1]),
        .I3(data4[10]),
        .I4(Opcode[0]),
        .O(\F[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[11]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[11]),
        .I2(Opcode[1]),
        .I3(A[11]),
        .I4(Opcode[0]),
        .I5(A[12]),
        .O(\F[11]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[11]_INST_0_i_2 
       (.I0(A[12]),
        .I1(A[10]),
        .I2(Opcode[1]),
        .I3(data4[11]),
        .I4(Opcode[0]),
        .O(\F[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[12]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[12]),
        .I2(Opcode[1]),
        .I3(A[12]),
        .I4(Opcode[0]),
        .I5(A[13]),
        .O(\F[12]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_10 
       (.I0(A[9]),
        .O(\F[12]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_11 
       (.I0(A[12]),
        .O(\F[12]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_12 
       (.I0(A[11]),
        .O(\F[12]_INST_0_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_13 
       (.I0(A[10]),
        .O(\F[12]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_14 
       (.I0(A[9]),
        .O(\F[12]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[12]_INST_0_i_2 
       (.I0(A[13]),
        .I1(A[11]),
        .I2(Opcode[1]),
        .I3(data4[12]),
        .I4(Opcode[0]),
        .O(\F[12]_INST_0_i_2_n_0 ));
  CARRY4 \F[12]_INST_0_i_4 
       (.CI(\F[8]_INST_0_i_4_n_0 ),
        .CO({\F[12]_INST_0_i_4_n_0 ,\F[12]_INST_0_i_4_n_1 ,\F[12]_INST_0_i_4_n_2 ,\F[12]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[12:9]),
        .S({\F[12]_INST_0_i_7_n_0 ,\F[12]_INST_0_i_8_n_0 ,\F[12]_INST_0_i_9_n_0 ,\F[12]_INST_0_i_10_n_0 }));
  CARRY4 \F[12]_INST_0_i_5 
       (.CI(\F[8]_INST_0_i_5_n_0 ),
        .CO({\F[12]_INST_0_i_5_n_0 ,\F[12]_INST_0_i_5_n_1 ,\F[12]_INST_0_i_5_n_2 ,\F[12]_INST_0_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(A[12:9]),
        .O(data3[12:9]),
        .S({\F[12]_INST_0_i_11_n_0 ,\F[12]_INST_0_i_12_n_0 ,\F[12]_INST_0_i_13_n_0 ,\F[12]_INST_0_i_14_n_0 }));
  CARRY4 \F[12]_INST_0_i_6 
       (.CI(\F[8]_INST_0_i_6_n_0 ),
        .CO({\F[12]_INST_0_i_6_n_0 ,\F[12]_INST_0_i_6_n_1 ,\F[12]_INST_0_i_6_n_2 ,\F[12]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data2[12:9]),
        .S(A[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_7 
       (.I0(A[12]),
        .O(\F[12]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_8 
       (.I0(A[11]),
        .O(\F[12]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[12]_INST_0_i_9 
       (.I0(A[10]),
        .O(\F[12]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[13]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[13]),
        .I2(Opcode[1]),
        .I3(A[13]),
        .I4(Opcode[0]),
        .I5(A[14]),
        .O(\F[13]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[13]_INST_0_i_2 
       (.I0(A[14]),
        .I1(A[12]),
        .I2(Opcode[1]),
        .I3(data4[13]),
        .I4(Opcode[0]),
        .O(\F[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[14]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[14]),
        .I2(Opcode[1]),
        .I3(A[14]),
        .I4(Opcode[0]),
        .I5(A[15]),
        .O(\F[14]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[14]_INST_0_i_2 
       (.I0(A[15]),
        .I1(A[13]),
        .I2(Opcode[1]),
        .I3(data4[14]),
        .I4(Opcode[0]),
        .O(\F[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h586267A8)) 
    \F[15]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[15]),
        .I2(Opcode[1]),
        .I3(Opcode[0]),
        .I4(A[15]),
        .O(\F[15]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_10 
       (.I0(A[15]),
        .O(\F[15]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_11 
       (.I0(A[14]),
        .O(\F[15]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_12 
       (.I0(A[13]),
        .O(\F[15]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \F[15]_INST_0_i_2 
       (.I0(A[14]),
        .I1(Opcode[1]),
        .I2(data4[15]),
        .I3(Opcode[0]),
        .O(\F[15]_INST_0_i_2_n_0 ));
  CARRY4 \F[15]_INST_0_i_4 
       (.CI(\F[12]_INST_0_i_4_n_0 ),
        .CO({\NLW_F[15]_INST_0_i_4_CO_UNCONNECTED [3:2],\F[15]_INST_0_i_4_n_2 ,\F[15]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_F[15]_INST_0_i_4_O_UNCONNECTED [3],data4[15:13]}),
        .S({1'b0,\F[15]_INST_0_i_7_n_0 ,\F[15]_INST_0_i_8_n_0 ,\F[15]_INST_0_i_9_n_0 }));
  CARRY4 \F[15]_INST_0_i_5 
       (.CI(\F[12]_INST_0_i_5_n_0 ),
        .CO({\NLW_F[15]_INST_0_i_5_CO_UNCONNECTED [3:2],\F[15]_INST_0_i_5_n_2 ,\F[15]_INST_0_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,A[14:13]}),
        .O({\NLW_F[15]_INST_0_i_5_O_UNCONNECTED [3],data3[15:13]}),
        .S({1'b0,\F[15]_INST_0_i_10_n_0 ,\F[15]_INST_0_i_11_n_0 ,\F[15]_INST_0_i_12_n_0 }));
  CARRY4 \F[15]_INST_0_i_6 
       (.CI(\F[12]_INST_0_i_6_n_0 ),
        .CO({\NLW_F[15]_INST_0_i_6_CO_UNCONNECTED [3:2],\F[15]_INST_0_i_6_n_2 ,\F[15]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_F[15]_INST_0_i_6_O_UNCONNECTED [3],data2[15:13]}),
        .S({1'b0,A[15:13]}));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_7 
       (.I0(A[15]),
        .O(\F[15]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_8 
       (.I0(A[14]),
        .O(\F[15]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[15]_INST_0_i_9 
       (.I0(A[13]),
        .O(\F[15]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[1]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[1]),
        .I2(Opcode[1]),
        .I3(A[1]),
        .I4(Opcode[0]),
        .I5(A[2]),
        .O(\F[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[1]_INST_0_i_2 
       (.I0(A[2]),
        .I1(A[0]),
        .I2(Opcode[1]),
        .I3(data4[1]),
        .I4(Opcode[0]),
        .O(\F[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[2]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[2]),
        .I2(Opcode[1]),
        .I3(A[2]),
        .I4(Opcode[0]),
        .I5(A[3]),
        .O(\F[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[2]_INST_0_i_2 
       (.I0(A[3]),
        .I1(A[1]),
        .I2(Opcode[1]),
        .I3(data4[2]),
        .I4(Opcode[0]),
        .O(\F[2]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[3]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[3]),
        .I2(Opcode[1]),
        .I3(A[3]),
        .I4(Opcode[0]),
        .I5(A[4]),
        .O(\F[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[3]_INST_0_i_2 
       (.I0(A[4]),
        .I1(A[2]),
        .I2(Opcode[1]),
        .I3(data4[3]),
        .I4(Opcode[0]),
        .O(\F[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[4]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[4]),
        .I2(Opcode[1]),
        .I3(A[4]),
        .I4(Opcode[0]),
        .I5(A[5]),
        .O(\F[4]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_10 
       (.I0(A[2]),
        .O(\F[4]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_11 
       (.I0(A[1]),
        .O(\F[4]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_12 
       (.I0(A[4]),
        .O(\F[4]_INST_0_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_13 
       (.I0(A[3]),
        .O(\F[4]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_14 
       (.I0(A[2]),
        .O(\F[4]_INST_0_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_15 
       (.I0(A[1]),
        .O(\F[4]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[4]_INST_0_i_2 
       (.I0(A[5]),
        .I1(A[3]),
        .I2(Opcode[1]),
        .I3(data4[4]),
        .I4(Opcode[0]),
        .O(\F[4]_INST_0_i_2_n_0 ));
  CARRY4 \F[4]_INST_0_i_4 
       (.CI(1'b0),
        .CO({\F[4]_INST_0_i_4_n_0 ,\F[4]_INST_0_i_4_n_1 ,\F[4]_INST_0_i_4_n_2 ,\F[4]_INST_0_i_4_n_3 }),
        .CYINIT(data8),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[4:1]),
        .S({\F[4]_INST_0_i_8_n_0 ,\F[4]_INST_0_i_9_n_0 ,\F[4]_INST_0_i_10_n_0 ,\F[4]_INST_0_i_11_n_0 }));
  CARRY4 \F[4]_INST_0_i_5 
       (.CI(1'b0),
        .CO({\F[4]_INST_0_i_5_n_0 ,\F[4]_INST_0_i_5_n_1 ,\F[4]_INST_0_i_5_n_2 ,\F[4]_INST_0_i_5_n_3 }),
        .CYINIT(A[0]),
        .DI(A[4:1]),
        .O(data3[4:1]),
        .S({\F[4]_INST_0_i_12_n_0 ,\F[4]_INST_0_i_13_n_0 ,\F[4]_INST_0_i_14_n_0 ,\F[4]_INST_0_i_15_n_0 }));
  CARRY4 \F[4]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\F[4]_INST_0_i_6_n_0 ,\F[4]_INST_0_i_6_n_1 ,\F[4]_INST_0_i_6_n_2 ,\F[4]_INST_0_i_6_n_3 }),
        .CYINIT(A[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data2[4:1]),
        .S(A[4:1]));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_7 
       (.I0(A[0]),
        .O(data8));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_8 
       (.I0(A[4]),
        .O(\F[4]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[4]_INST_0_i_9 
       (.I0(A[3]),
        .O(\F[4]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[5]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[5]),
        .I2(Opcode[1]),
        .I3(A[5]),
        .I4(Opcode[0]),
        .I5(A[6]),
        .O(\F[5]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[5]_INST_0_i_2 
       (.I0(A[6]),
        .I1(A[4]),
        .I2(Opcode[1]),
        .I3(data4[5]),
        .I4(Opcode[0]),
        .O(\F[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[6]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[6]),
        .I2(Opcode[1]),
        .I3(A[6]),
        .I4(Opcode[0]),
        .I5(A[7]),
        .O(\F[6]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[6]_INST_0_i_2 
       (.I0(A[7]),
        .I1(A[5]),
        .I2(Opcode[1]),
        .I3(data4[6]),
        .I4(Opcode[0]),
        .O(\F[6]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[7]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[7]),
        .I2(Opcode[1]),
        .I3(A[7]),
        .I4(Opcode[0]),
        .I5(A[8]),
        .O(\F[7]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[7]_INST_0_i_2 
       (.I0(A[8]),
        .I1(A[6]),
        .I2(Opcode[1]),
        .I3(data4[7]),
        .I4(Opcode[0]),
        .O(\F[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[8]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[8]),
        .I2(Opcode[1]),
        .I3(A[8]),
        .I4(Opcode[0]),
        .I5(A[9]),
        .O(\F[8]_INST_0_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_10 
       (.I0(A[5]),
        .O(\F[8]_INST_0_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_11 
       (.I0(A[8]),
        .O(\F[8]_INST_0_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_12 
       (.I0(A[7]),
        .O(\F[8]_INST_0_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_13 
       (.I0(A[6]),
        .O(\F[8]_INST_0_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_14 
       (.I0(A[5]),
        .O(\F[8]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[8]_INST_0_i_2 
       (.I0(A[9]),
        .I1(A[7]),
        .I2(Opcode[1]),
        .I3(data4[8]),
        .I4(Opcode[0]),
        .O(\F[8]_INST_0_i_2_n_0 ));
  CARRY4 \F[8]_INST_0_i_4 
       (.CI(\F[4]_INST_0_i_4_n_0 ),
        .CO({\F[8]_INST_0_i_4_n_0 ,\F[8]_INST_0_i_4_n_1 ,\F[8]_INST_0_i_4_n_2 ,\F[8]_INST_0_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data4[8:5]),
        .S({\F[8]_INST_0_i_7_n_0 ,\F[8]_INST_0_i_8_n_0 ,\F[8]_INST_0_i_9_n_0 ,\F[8]_INST_0_i_10_n_0 }));
  CARRY4 \F[8]_INST_0_i_5 
       (.CI(\F[4]_INST_0_i_5_n_0 ),
        .CO({\F[8]_INST_0_i_5_n_0 ,\F[8]_INST_0_i_5_n_1 ,\F[8]_INST_0_i_5_n_2 ,\F[8]_INST_0_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(A[8:5]),
        .O(data3[8:5]),
        .S({\F[8]_INST_0_i_11_n_0 ,\F[8]_INST_0_i_12_n_0 ,\F[8]_INST_0_i_13_n_0 ,\F[8]_INST_0_i_14_n_0 }));
  CARRY4 \F[8]_INST_0_i_6 
       (.CI(\F[4]_INST_0_i_6_n_0 ),
        .CO({\F[8]_INST_0_i_6_n_0 ,\F[8]_INST_0_i_6_n_1 ,\F[8]_INST_0_i_6_n_2 ,\F[8]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data2[8:5]),
        .S(A[8:5]));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_7 
       (.I0(A[8]),
        .O(\F[8]_INST_0_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_8 
       (.I0(A[7]),
        .O(\F[8]_INST_0_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \F[8]_INST_0_i_9 
       (.I0(A[6]),
        .O(\F[8]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h586767AD586762A8)) 
    \F[9]_INST_0_i_1 
       (.I0(Opcode[2]),
        .I1(B[9]),
        .I2(Opcode[1]),
        .I3(A[9]),
        .I4(Opcode[0]),
        .I5(A[10]),
        .O(\F[9]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \F[9]_INST_0_i_2 
       (.I0(A[10]),
        .I1(A[8]),
        .I2(Opcode[1]),
        .I3(data4[9]),
        .I4(Opcode[0]),
        .O(\F[9]_INST_0_i_2_n_0 ));
  processor_design_my_alu_0_0_my_alu U0
       (.A(A),
        .\A[15]_0 (\F[15]_INST_0_i_1_n_0 ),
        .\A[1]_0 (\F[1]_INST_0_i_2_n_0 ),
        .\A[1]_1 (\F[2]_INST_0_i_2_n_0 ),
        .\A[1]_10 (\F[11]_INST_0_i_2_n_0 ),
        .\A[1]_11 (\F[12]_INST_0_i_2_n_0 ),
        .\A[1]_12 (\F[13]_INST_0_i_2_n_0 ),
        .\A[1]_13 (\F[14]_INST_0_i_2_n_0 ),
        .\A[1]_14 (\F[15]_INST_0_i_2_n_0 ),
        .\A[1]_2 (\F[3]_INST_0_i_2_n_0 ),
        .\A[1]_3 (\F[4]_INST_0_i_2_n_0 ),
        .\A[1]_4 (\F[5]_INST_0_i_2_n_0 ),
        .\A[1]_5 (\F[6]_INST_0_i_2_n_0 ),
        .\A[1]_6 (\F[7]_INST_0_i_2_n_0 ),
        .\A[1]_7 (\F[8]_INST_0_i_2_n_0 ),
        .\A[1]_8 (\F[9]_INST_0_i_2_n_0 ),
        .\A[1]_9 (\F[10]_INST_0_i_2_n_0 ),
        .A_10_sp_1(\F[9]_INST_0_i_1_n_0 ),
        .A_11_sp_1(\F[10]_INST_0_i_1_n_0 ),
        .A_12_sp_1(\F[11]_INST_0_i_1_n_0 ),
        .A_13_sp_1(\F[12]_INST_0_i_1_n_0 ),
        .A_14_sp_1(\F[13]_INST_0_i_1_n_0 ),
        .A_15_sp_1(\F[14]_INST_0_i_1_n_0 ),
        .A_1_sp_1(\F[0]_INST_0_i_1_n_0 ),
        .A_2_sp_1(\F[1]_INST_0_i_1_n_0 ),
        .A_3_sp_1(\F[2]_INST_0_i_1_n_0 ),
        .A_4_sp_1(\F[3]_INST_0_i_1_n_0 ),
        .A_5_sp_1(\F[4]_INST_0_i_1_n_0 ),
        .A_6_sp_1(\F[5]_INST_0_i_1_n_0 ),
        .A_7_sp_1(\F[6]_INST_0_i_1_n_0 ),
        .A_8_sp_1(\F[7]_INST_0_i_1_n_0 ),
        .A_9_sp_1(\F[8]_INST_0_i_1_n_0 ),
        .B(B),
        .F(F),
        .Opcode(Opcode),
        .data2(data2),
        .data3(data3));
endmodule

(* ORIG_REF_NAME = "my_alu" *) 
module processor_design_my_alu_0_0_my_alu
   (F,
    A,
    A_1_sp_1,
    Opcode,
    B,
    A_2_sp_1,
    \A[1]_0 ,
    A_3_sp_1,
    \A[1]_1 ,
    A_4_sp_1,
    \A[1]_2 ,
    A_5_sp_1,
    \A[1]_3 ,
    A_6_sp_1,
    \A[1]_4 ,
    A_7_sp_1,
    \A[1]_5 ,
    A_8_sp_1,
    \A[1]_6 ,
    A_9_sp_1,
    \A[1]_7 ,
    A_10_sp_1,
    \A[1]_8 ,
    A_11_sp_1,
    \A[1]_9 ,
    A_12_sp_1,
    \A[1]_10 ,
    A_13_sp_1,
    \A[1]_11 ,
    A_14_sp_1,
    \A[1]_12 ,
    A_15_sp_1,
    \A[1]_13 ,
    \A[15]_0 ,
    \A[1]_14 ,
    data3,
    data2);
  output [15:0]F;
  input [15:0]A;
  input A_1_sp_1;
  input [3:0]Opcode;
  input [15:0]B;
  input A_2_sp_1;
  input \A[1]_0 ;
  input A_3_sp_1;
  input \A[1]_1 ;
  input A_4_sp_1;
  input \A[1]_2 ;
  input A_5_sp_1;
  input \A[1]_3 ;
  input A_6_sp_1;
  input \A[1]_4 ;
  input A_7_sp_1;
  input \A[1]_5 ;
  input A_8_sp_1;
  input \A[1]_6 ;
  input A_9_sp_1;
  input \A[1]_7 ;
  input A_10_sp_1;
  input \A[1]_8 ;
  input A_11_sp_1;
  input \A[1]_9 ;
  input A_12_sp_1;
  input \A[1]_10 ;
  input A_13_sp_1;
  input \A[1]_11 ;
  input A_14_sp_1;
  input \A[1]_12 ;
  input A_15_sp_1;
  input \A[1]_13 ;
  input \A[15]_0 ;
  input \A[1]_14 ;
  input [14:0]data3;
  input [14:0]data2;

  wire [15:0]A;
  wire \A[15]_0 ;
  wire \A[1]_0 ;
  wire \A[1]_1 ;
  wire \A[1]_10 ;
  wire \A[1]_11 ;
  wire \A[1]_12 ;
  wire \A[1]_13 ;
  wire \A[1]_14 ;
  wire \A[1]_2 ;
  wire \A[1]_3 ;
  wire \A[1]_4 ;
  wire \A[1]_5 ;
  wire \A[1]_6 ;
  wire \A[1]_7 ;
  wire \A[1]_8 ;
  wire \A[1]_9 ;
  wire A_10_sn_1;
  wire A_11_sn_1;
  wire A_12_sn_1;
  wire A_13_sn_1;
  wire A_14_sn_1;
  wire A_15_sn_1;
  wire A_1_sn_1;
  wire A_2_sn_1;
  wire A_3_sn_1;
  wire A_4_sn_1;
  wire A_5_sn_1;
  wire A_6_sn_1;
  wire A_7_sn_1;
  wire A_8_sn_1;
  wire A_9_sn_1;
  wire [15:0]B;
  wire [15:0]F;
  wire F0__45_carry__0_i_1_n_0;
  wire F0__45_carry__0_i_2_n_0;
  wire F0__45_carry__0_i_3_n_0;
  wire F0__45_carry__0_i_4_n_0;
  wire F0__45_carry__0_n_0;
  wire F0__45_carry__0_n_1;
  wire F0__45_carry__0_n_2;
  wire F0__45_carry__0_n_3;
  wire F0__45_carry__1_i_1_n_0;
  wire F0__45_carry__1_i_2_n_0;
  wire F0__45_carry__1_i_3_n_0;
  wire F0__45_carry__1_i_4_n_0;
  wire F0__45_carry__1_n_0;
  wire F0__45_carry__1_n_1;
  wire F0__45_carry__1_n_2;
  wire F0__45_carry__1_n_3;
  wire F0__45_carry__2_i_1_n_0;
  wire F0__45_carry__2_i_2_n_0;
  wire F0__45_carry__2_i_3_n_0;
  wire F0__45_carry__2_i_4_n_0;
  wire F0__45_carry__2_n_1;
  wire F0__45_carry__2_n_2;
  wire F0__45_carry__2_n_3;
  wire F0__45_carry_i_1_n_0;
  wire F0__45_carry_i_2_n_0;
  wire F0__45_carry_i_3_n_0;
  wire F0__45_carry_i_4_n_0;
  wire F0__45_carry_n_0;
  wire F0__45_carry_n_1;
  wire F0__45_carry_n_2;
  wire F0__45_carry_n_3;
  wire F0_carry__0_i_1_n_0;
  wire F0_carry__0_i_2_n_0;
  wire F0_carry__0_i_3_n_0;
  wire F0_carry__0_i_4_n_0;
  wire F0_carry__0_n_0;
  wire F0_carry__0_n_1;
  wire F0_carry__0_n_2;
  wire F0_carry__0_n_3;
  wire F0_carry__1_i_1_n_0;
  wire F0_carry__1_i_2_n_0;
  wire F0_carry__1_i_3_n_0;
  wire F0_carry__1_i_4_n_0;
  wire F0_carry__1_n_0;
  wire F0_carry__1_n_1;
  wire F0_carry__1_n_2;
  wire F0_carry__1_n_3;
  wire F0_carry__2_i_1_n_0;
  wire F0_carry__2_i_2_n_0;
  wire F0_carry__2_i_3_n_0;
  wire F0_carry__2_i_4_n_0;
  wire F0_carry__2_n_1;
  wire F0_carry__2_n_2;
  wire F0_carry__2_n_3;
  wire F0_carry_i_1_n_0;
  wire F0_carry_i_2_n_0;
  wire F0_carry_i_3_n_0;
  wire F0_carry_i_4_n_0;
  wire F0_carry_n_0;
  wire F0_carry_n_1;
  wire F0_carry_n_2;
  wire F0_carry_n_3;
  wire \F[0]_INST_0_i_2_n_0 ;
  wire \F[0]_INST_0_i_3_n_0 ;
  wire \F[10]_INST_0_i_3_n_0 ;
  wire \F[11]_INST_0_i_3_n_0 ;
  wire \F[12]_INST_0_i_3_n_0 ;
  wire \F[13]_INST_0_i_3_n_0 ;
  wire \F[14]_INST_0_i_3_n_0 ;
  wire \F[15]_INST_0_i_3_n_0 ;
  wire \F[1]_INST_0_i_3_n_0 ;
  wire \F[2]_INST_0_i_3_n_0 ;
  wire \F[3]_INST_0_i_3_n_0 ;
  wire \F[4]_INST_0_i_3_n_0 ;
  wire \F[5]_INST_0_i_3_n_0 ;
  wire \F[6]_INST_0_i_3_n_0 ;
  wire \F[7]_INST_0_i_3_n_0 ;
  wire \F[8]_INST_0_i_3_n_0 ;
  wire \F[9]_INST_0_i_3_n_0 ;
  wire [3:0]Opcode;
  wire X_carry__0_i_1_n_0;
  wire X_carry__0_i_2_n_0;
  wire X_carry__0_i_3_n_0;
  wire X_carry__0_i_4_n_0;
  wire X_carry__0_i_5_n_0;
  wire X_carry__0_i_6_n_0;
  wire X_carry__0_i_7_n_0;
  wire X_carry__0_i_8_n_0;
  wire X_carry__0_n_1;
  wire X_carry__0_n_2;
  wire X_carry__0_n_3;
  wire X_carry_i_1_n_0;
  wire X_carry_i_2_n_0;
  wire X_carry_i_3_n_0;
  wire X_carry_i_4_n_0;
  wire X_carry_i_5_n_0;
  wire X_carry_i_6_n_0;
  wire X_carry_i_7_n_0;
  wire X_carry_i_8_n_0;
  wire X_carry_n_0;
  wire X_carry_n_1;
  wire X_carry_n_2;
  wire X_carry_n_3;
  wire [15:0]data0;
  wire [15:0]data1;
  wire [14:0]data2;
  wire [14:0]data3;
  wire data5;
  wire [3:3]NLW_F0__45_carry__2_CO_UNCONNECTED;
  wire [3:3]NLW_F0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_X_carry_O_UNCONNECTED;
  wire [3:0]NLW_X_carry__0_O_UNCONNECTED;

  assign A_10_sn_1 = A_10_sp_1;
  assign A_11_sn_1 = A_11_sp_1;
  assign A_12_sn_1 = A_12_sp_1;
  assign A_13_sn_1 = A_13_sp_1;
  assign A_14_sn_1 = A_14_sp_1;
  assign A_15_sn_1 = A_15_sp_1;
  assign A_1_sn_1 = A_1_sp_1;
  assign A_2_sn_1 = A_2_sp_1;
  assign A_3_sn_1 = A_3_sp_1;
  assign A_4_sn_1 = A_4_sp_1;
  assign A_5_sn_1 = A_5_sp_1;
  assign A_6_sn_1 = A_6_sp_1;
  assign A_7_sn_1 = A_7_sp_1;
  assign A_8_sn_1 = A_8_sp_1;
  assign A_9_sn_1 = A_9_sp_1;
  CARRY4 F0__45_carry
       (.CI(1'b0),
        .CO({F0__45_carry_n_0,F0__45_carry_n_1,F0__45_carry_n_2,F0__45_carry_n_3}),
        .CYINIT(1'b1),
        .DI(A[3:0]),
        .O(data1[3:0]),
        .S({F0__45_carry_i_1_n_0,F0__45_carry_i_2_n_0,F0__45_carry_i_3_n_0,F0__45_carry_i_4_n_0}));
  CARRY4 F0__45_carry__0
       (.CI(F0__45_carry_n_0),
        .CO({F0__45_carry__0_n_0,F0__45_carry__0_n_1,F0__45_carry__0_n_2,F0__45_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(data1[7:4]),
        .S({F0__45_carry__0_i_1_n_0,F0__45_carry__0_i_2_n_0,F0__45_carry__0_i_3_n_0,F0__45_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__0_i_1
       (.I0(A[7]),
        .I1(B[7]),
        .O(F0__45_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__0_i_2
       (.I0(A[6]),
        .I1(B[6]),
        .O(F0__45_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__0_i_3
       (.I0(A[5]),
        .I1(B[5]),
        .O(F0__45_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__0_i_4
       (.I0(A[4]),
        .I1(B[4]),
        .O(F0__45_carry__0_i_4_n_0));
  CARRY4 F0__45_carry__1
       (.CI(F0__45_carry__0_n_0),
        .CO({F0__45_carry__1_n_0,F0__45_carry__1_n_1,F0__45_carry__1_n_2,F0__45_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(data1[11:8]),
        .S({F0__45_carry__1_i_1_n_0,F0__45_carry__1_i_2_n_0,F0__45_carry__1_i_3_n_0,F0__45_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__1_i_1
       (.I0(A[11]),
        .I1(B[11]),
        .O(F0__45_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__1_i_2
       (.I0(A[10]),
        .I1(B[10]),
        .O(F0__45_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__1_i_3
       (.I0(A[9]),
        .I1(B[9]),
        .O(F0__45_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__1_i_4
       (.I0(A[8]),
        .I1(B[8]),
        .O(F0__45_carry__1_i_4_n_0));
  CARRY4 F0__45_carry__2
       (.CI(F0__45_carry__1_n_0),
        .CO({NLW_F0__45_carry__2_CO_UNCONNECTED[3],F0__45_carry__2_n_1,F0__45_carry__2_n_2,F0__45_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A[14:12]}),
        .O(data1[15:12]),
        .S({F0__45_carry__2_i_1_n_0,F0__45_carry__2_i_2_n_0,F0__45_carry__2_i_3_n_0,F0__45_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__2_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .O(F0__45_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__2_i_2
       (.I0(A[14]),
        .I1(B[14]),
        .O(F0__45_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__2_i_3
       (.I0(A[13]),
        .I1(B[13]),
        .O(F0__45_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry__2_i_4
       (.I0(A[12]),
        .I1(B[12]),
        .O(F0__45_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry_i_1
       (.I0(A[3]),
        .I1(B[3]),
        .O(F0__45_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry_i_2
       (.I0(A[2]),
        .I1(B[2]),
        .O(F0__45_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry_i_3
       (.I0(A[1]),
        .I1(B[1]),
        .O(F0__45_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    F0__45_carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .O(F0__45_carry_i_4_n_0));
  CARRY4 F0_carry
       (.CI(1'b0),
        .CO({F0_carry_n_0,F0_carry_n_1,F0_carry_n_2,F0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(A[3:0]),
        .O(data0[3:0]),
        .S({F0_carry_i_1_n_0,F0_carry_i_2_n_0,F0_carry_i_3_n_0,F0_carry_i_4_n_0}));
  CARRY4 F0_carry__0
       (.CI(F0_carry_n_0),
        .CO({F0_carry__0_n_0,F0_carry__0_n_1,F0_carry__0_n_2,F0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(A[7:4]),
        .O(data0[7:4]),
        .S({F0_carry__0_i_1_n_0,F0_carry__0_i_2_n_0,F0_carry__0_i_3_n_0,F0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__0_i_1
       (.I0(A[7]),
        .I1(B[7]),
        .O(F0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__0_i_2
       (.I0(A[6]),
        .I1(B[6]),
        .O(F0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__0_i_3
       (.I0(A[5]),
        .I1(B[5]),
        .O(F0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__0_i_4
       (.I0(A[4]),
        .I1(B[4]),
        .O(F0_carry__0_i_4_n_0));
  CARRY4 F0_carry__1
       (.CI(F0_carry__0_n_0),
        .CO({F0_carry__1_n_0,F0_carry__1_n_1,F0_carry__1_n_2,F0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(A[11:8]),
        .O(data0[11:8]),
        .S({F0_carry__1_i_1_n_0,F0_carry__1_i_2_n_0,F0_carry__1_i_3_n_0,F0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__1_i_1
       (.I0(A[11]),
        .I1(B[11]),
        .O(F0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__1_i_2
       (.I0(A[10]),
        .I1(B[10]),
        .O(F0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__1_i_3
       (.I0(A[9]),
        .I1(B[9]),
        .O(F0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__1_i_4
       (.I0(A[8]),
        .I1(B[8]),
        .O(F0_carry__1_i_4_n_0));
  CARRY4 F0_carry__2
       (.CI(F0_carry__1_n_0),
        .CO({NLW_F0_carry__2_CO_UNCONNECTED[3],F0_carry__2_n_1,F0_carry__2_n_2,F0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,A[14:12]}),
        .O(data0[15:12]),
        .S({F0_carry__2_i_1_n_0,F0_carry__2_i_2_n_0,F0_carry__2_i_3_n_0,F0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__2_i_1
       (.I0(A[15]),
        .I1(B[15]),
        .O(F0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__2_i_2
       (.I0(A[14]),
        .I1(B[14]),
        .O(F0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__2_i_3
       (.I0(A[13]),
        .I1(B[13]),
        .O(F0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry__2_i_4
       (.I0(A[12]),
        .I1(B[12]),
        .O(F0_carry__2_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry_i_1
       (.I0(A[3]),
        .I1(B[3]),
        .O(F0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry_i_2
       (.I0(A[2]),
        .I1(B[2]),
        .O(F0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry_i_3
       (.I0(A[1]),
        .I1(B[1]),
        .O(F0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    F0_carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .O(F0_carry_i_4_n_0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[0]_INST_0 
       (.I0(A_1_sn_1),
        .I1(Opcode[3]),
        .I2(\F[0]_INST_0_i_2_n_0 ),
        .I3(Opcode[2]),
        .I4(\F[0]_INST_0_i_3_n_0 ),
        .O(F[0]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \F[0]_INST_0_i_2 
       (.I0(A[1]),
        .I1(Opcode[1]),
        .I2(data5),
        .I3(Opcode[0]),
        .I4(A[0]),
        .O(\F[0]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \F[0]_INST_0_i_3 
       (.I0(A[0]),
        .I1(Opcode[1]),
        .I2(data1[0]),
        .I3(Opcode[0]),
        .I4(data0[0]),
        .O(\F[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[10]_INST_0 
       (.I0(A_11_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_9 ),
        .I3(Opcode[2]),
        .I4(\F[10]_INST_0_i_3_n_0 ),
        .O(F[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[10]_INST_0_i_3 
       (.I0(data3[9]),
        .I1(data2[9]),
        .I2(Opcode[1]),
        .I3(data1[10]),
        .I4(Opcode[0]),
        .I5(data0[10]),
        .O(\F[10]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[11]_INST_0 
       (.I0(A_12_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_10 ),
        .I3(Opcode[2]),
        .I4(\F[11]_INST_0_i_3_n_0 ),
        .O(F[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[11]_INST_0_i_3 
       (.I0(data3[10]),
        .I1(data2[10]),
        .I2(Opcode[1]),
        .I3(data1[11]),
        .I4(Opcode[0]),
        .I5(data0[11]),
        .O(\F[11]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[12]_INST_0 
       (.I0(A_13_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_11 ),
        .I3(Opcode[2]),
        .I4(\F[12]_INST_0_i_3_n_0 ),
        .O(F[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[12]_INST_0_i_3 
       (.I0(data3[11]),
        .I1(data2[11]),
        .I2(Opcode[1]),
        .I3(data1[12]),
        .I4(Opcode[0]),
        .I5(data0[12]),
        .O(\F[12]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[13]_INST_0 
       (.I0(A_14_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_12 ),
        .I3(Opcode[2]),
        .I4(\F[13]_INST_0_i_3_n_0 ),
        .O(F[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[13]_INST_0_i_3 
       (.I0(data3[12]),
        .I1(data2[12]),
        .I2(Opcode[1]),
        .I3(data1[13]),
        .I4(Opcode[0]),
        .I5(data0[13]),
        .O(\F[13]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[14]_INST_0 
       (.I0(A_15_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_13 ),
        .I3(Opcode[2]),
        .I4(\F[14]_INST_0_i_3_n_0 ),
        .O(F[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[14]_INST_0_i_3 
       (.I0(data3[13]),
        .I1(data2[13]),
        .I2(Opcode[1]),
        .I3(data1[14]),
        .I4(Opcode[0]),
        .I5(data0[14]),
        .O(\F[14]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[15]_INST_0 
       (.I0(\A[15]_0 ),
        .I1(Opcode[3]),
        .I2(\A[1]_14 ),
        .I3(Opcode[2]),
        .I4(\F[15]_INST_0_i_3_n_0 ),
        .O(F[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[15]_INST_0_i_3 
       (.I0(data3[14]),
        .I1(data2[14]),
        .I2(Opcode[1]),
        .I3(data1[15]),
        .I4(Opcode[0]),
        .I5(data0[15]),
        .O(\F[15]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[1]_INST_0 
       (.I0(A_2_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_0 ),
        .I3(Opcode[2]),
        .I4(\F[1]_INST_0_i_3_n_0 ),
        .O(F[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[1]_INST_0_i_3 
       (.I0(data3[0]),
        .I1(data2[0]),
        .I2(Opcode[1]),
        .I3(data1[1]),
        .I4(Opcode[0]),
        .I5(data0[1]),
        .O(\F[1]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[2]_INST_0 
       (.I0(A_3_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_1 ),
        .I3(Opcode[2]),
        .I4(\F[2]_INST_0_i_3_n_0 ),
        .O(F[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[2]_INST_0_i_3 
       (.I0(data3[1]),
        .I1(data2[1]),
        .I2(Opcode[1]),
        .I3(data1[2]),
        .I4(Opcode[0]),
        .I5(data0[2]),
        .O(\F[2]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[3]_INST_0 
       (.I0(A_4_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_2 ),
        .I3(Opcode[2]),
        .I4(\F[3]_INST_0_i_3_n_0 ),
        .O(F[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[3]_INST_0_i_3 
       (.I0(data3[2]),
        .I1(data2[2]),
        .I2(Opcode[1]),
        .I3(data1[3]),
        .I4(Opcode[0]),
        .I5(data0[3]),
        .O(\F[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[4]_INST_0 
       (.I0(A_5_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_3 ),
        .I3(Opcode[2]),
        .I4(\F[4]_INST_0_i_3_n_0 ),
        .O(F[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[4]_INST_0_i_3 
       (.I0(data3[3]),
        .I1(data2[3]),
        .I2(Opcode[1]),
        .I3(data1[4]),
        .I4(Opcode[0]),
        .I5(data0[4]),
        .O(\F[4]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[5]_INST_0 
       (.I0(A_6_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_4 ),
        .I3(Opcode[2]),
        .I4(\F[5]_INST_0_i_3_n_0 ),
        .O(F[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[5]_INST_0_i_3 
       (.I0(data3[4]),
        .I1(data2[4]),
        .I2(Opcode[1]),
        .I3(data1[5]),
        .I4(Opcode[0]),
        .I5(data0[5]),
        .O(\F[5]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[6]_INST_0 
       (.I0(A_7_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_5 ),
        .I3(Opcode[2]),
        .I4(\F[6]_INST_0_i_3_n_0 ),
        .O(F[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[6]_INST_0_i_3 
       (.I0(data3[5]),
        .I1(data2[5]),
        .I2(Opcode[1]),
        .I3(data1[6]),
        .I4(Opcode[0]),
        .I5(data0[6]),
        .O(\F[6]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[7]_INST_0 
       (.I0(A_8_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_6 ),
        .I3(Opcode[2]),
        .I4(\F[7]_INST_0_i_3_n_0 ),
        .O(F[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[7]_INST_0_i_3 
       (.I0(data3[6]),
        .I1(data2[6]),
        .I2(Opcode[1]),
        .I3(data1[7]),
        .I4(Opcode[0]),
        .I5(data0[7]),
        .O(\F[7]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[8]_INST_0 
       (.I0(A_9_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_7 ),
        .I3(Opcode[2]),
        .I4(\F[8]_INST_0_i_3_n_0 ),
        .O(F[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[8]_INST_0_i_3 
       (.I0(data3[7]),
        .I1(data2[7]),
        .I2(Opcode[1]),
        .I3(data1[8]),
        .I4(Opcode[0]),
        .I5(data0[8]),
        .O(\F[8]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \F[9]_INST_0 
       (.I0(A_10_sn_1),
        .I1(Opcode[3]),
        .I2(\A[1]_8 ),
        .I3(Opcode[2]),
        .I4(\F[9]_INST_0_i_3_n_0 ),
        .O(F[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \F[9]_INST_0_i_3 
       (.I0(data3[8]),
        .I1(data2[8]),
        .I2(Opcode[1]),
        .I3(data1[9]),
        .I4(Opcode[0]),
        .I5(data0[9]),
        .O(\F[9]_INST_0_i_3_n_0 ));
  CARRY4 X_carry
       (.CI(1'b0),
        .CO({X_carry_n_0,X_carry_n_1,X_carry_n_2,X_carry_n_3}),
        .CYINIT(1'b0),
        .DI({X_carry_i_1_n_0,X_carry_i_2_n_0,X_carry_i_3_n_0,X_carry_i_4_n_0}),
        .O(NLW_X_carry_O_UNCONNECTED[3:0]),
        .S({X_carry_i_5_n_0,X_carry_i_6_n_0,X_carry_i_7_n_0,X_carry_i_8_n_0}));
  CARRY4 X_carry__0
       (.CI(X_carry_n_0),
        .CO({data5,X_carry__0_n_1,X_carry__0_n_2,X_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({X_carry__0_i_1_n_0,X_carry__0_i_2_n_0,X_carry__0_i_3_n_0,X_carry__0_i_4_n_0}),
        .O(NLW_X_carry__0_O_UNCONNECTED[3:0]),
        .S({X_carry__0_i_5_n_0,X_carry__0_i_6_n_0,X_carry__0_i_7_n_0,X_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry__0_i_1
       (.I0(A[14]),
        .I1(B[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(X_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry__0_i_2
       (.I0(A[12]),
        .I1(B[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(X_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry__0_i_3
       (.I0(A[10]),
        .I1(B[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(X_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry__0_i_4
       (.I0(A[8]),
        .I1(B[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(X_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry__0_i_5
       (.I0(B[14]),
        .I1(A[14]),
        .I2(B[15]),
        .I3(A[15]),
        .O(X_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry__0_i_6
       (.I0(B[12]),
        .I1(A[12]),
        .I2(B[13]),
        .I3(A[13]),
        .O(X_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry__0_i_7
       (.I0(B[10]),
        .I1(A[10]),
        .I2(B[11]),
        .I3(A[11]),
        .O(X_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry__0_i_8
       (.I0(B[8]),
        .I1(A[8]),
        .I2(B[9]),
        .I3(A[9]),
        .O(X_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry_i_1
       (.I0(A[6]),
        .I1(B[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(X_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry_i_2
       (.I0(A[4]),
        .I1(B[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(X_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry_i_3
       (.I0(A[2]),
        .I1(B[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(X_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    X_carry_i_4
       (.I0(A[0]),
        .I1(B[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(X_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry_i_5
       (.I0(B[6]),
        .I1(A[6]),
        .I2(B[7]),
        .I3(A[7]),
        .O(X_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry_i_6
       (.I0(B[4]),
        .I1(A[4]),
        .I2(B[5]),
        .I3(A[5]),
        .O(X_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry_i_7
       (.I0(B[2]),
        .I1(A[2]),
        .I2(B[3]),
        .I3(A[3]),
        .O(X_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    X_carry_i_8
       (.I0(B[0]),
        .I1(A[0]),
        .I2(B[1]),
        .I3(A[1]),
        .O(X_carry_i_8_n_0));
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
