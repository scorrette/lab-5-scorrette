-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Apr 15 20:12:19 2021
-- Host        : canis running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               E:/GitHub/lb5-its-all-about-the-processors/lb5-its-all-about-the-processors.srcs/sources_1/bd/processor_design/ip/processor_design_controls_0_0/processor_design_controls_0_0_sim_netlist.vhdl
-- Design      : processor_design_controls_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_controls_0_0_controls is
  port (
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 0 to 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    fbRST : out STD_LOGIC;
    fbWrEn : out STD_LOGIC;
    d_wr_en : out STD_LOGIC;
    send : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    rst : in STD_LOGIC;
    en : in STD_LOGIC;
    clk : in STD_LOGIC;
    irWord : in STD_LOGIC_VECTOR ( 30 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    newChar : in STD_LOGIC;
    ready : in STD_LOGIC;
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of processor_design_controls_0_0_controls : entity is "controls";
end processor_design_controls_0_0_controls;

architecture STRUCTURE of processor_design_controls_0_0_controls is
  signal \FSM_sequential_curr[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[0]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_curr[4]_i_2_n_0\ : STD_LOGIC;
  signal aluA1 : STD_LOGIC;
  signal \aluA[0]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[0]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[0]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[0]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[10]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[10]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[11]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[11]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[12]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[12]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[13]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[13]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[14]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[14]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_12_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_13_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_15_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_16_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_17_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_18_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_19_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_1_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_20_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_21_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_22_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_23_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_24_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_6_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_7_n_0\ : STD_LOGIC;
  signal \aluA[15]_i_8_n_0\ : STD_LOGIC;
  signal \aluA[1]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[1]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[1]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[1]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[2]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[2]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[2]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[2]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[3]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[3]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[3]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[3]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[4]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[4]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[4]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[4]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[5]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[5]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[5]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[5]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[6]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[6]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[6]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[6]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[7]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[7]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[7]_i_4_n_0\ : STD_LOGIC;
  signal \aluA[7]_i_5_n_0\ : STD_LOGIC;
  signal \aluA[7]_i_6_n_0\ : STD_LOGIC;
  signal \aluA[8]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[8]_i_3_n_0\ : STD_LOGIC;
  signal \aluA[9]_i_2_n_0\ : STD_LOGIC;
  signal \aluA[9]_i_3_n_0\ : STD_LOGIC;
  signal aluA_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \aluA_reg[15]_i_10_n_3\ : STD_LOGIC;
  signal \aluA_reg[15]_i_11_n_0\ : STD_LOGIC;
  signal \aluA_reg[15]_i_11_n_1\ : STD_LOGIC;
  signal \aluA_reg[15]_i_11_n_2\ : STD_LOGIC;
  signal \aluA_reg[15]_i_11_n_3\ : STD_LOGIC;
  signal \aluA_reg[15]_i_14_n_0\ : STD_LOGIC;
  signal \aluA_reg[15]_i_14_n_1\ : STD_LOGIC;
  signal \aluA_reg[15]_i_14_n_2\ : STD_LOGIC;
  signal \aluA_reg[15]_i_14_n_3\ : STD_LOGIC;
  signal \aluA_reg[15]_i_9_n_2\ : STD_LOGIC;
  signal \aluA_reg[15]_i_9_n_3\ : STD_LOGIC;
  signal \aluB[15]_i_1_n_0\ : STD_LOGIC;
  signal \aluOp[3]_i_1_n_0\ : STD_LOGIC;
  signal \charSend[7]_i_1_n_0\ : STD_LOGIC;
  signal curr : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of curr : signal is "yes";
  signal \dAddr[14]_i_1_n_0\ : STD_LOGIC;
  signal \dOut[15]_i_1_n_0\ : STD_LOGIC;
  signal \^d_wr_en\ : STD_LOGIC;
  signal d_wr_en_i_1_n_0 : STD_LOGIC;
  signal d_wr_en_i_2_n_0 : STD_LOGIC;
  signal \fbAddr1[11]_i_1_n_0\ : STD_LOGIC;
  signal fbAddr1_4 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \fbDout1[15]_i_1_n_0\ : STD_LOGIC;
  signal \fbDout1[15]_i_2_n_0\ : STD_LOGIC;
  signal \^fbrst\ : STD_LOGIC;
  signal fbRST3_out : STD_LOGIC;
  signal fbRST_i_1_n_0 : STD_LOGIC;
  signal \^fbwren\ : STD_LOGIC;
  signal fbWrEn_i_1_n_0 : STD_LOGIC;
  signal imm : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \imm[15]_i_1_n_0\ : STD_LOGIC;
  signal imm_3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal in23 : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal in9 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \inst_reg_n_0_[10]\ : STD_LOGIC;
  signal \inst_reg_n_0_[11]\ : STD_LOGIC;
  signal \inst_reg_n_0_[17]\ : STD_LOGIC;
  signal \inst_reg_n_0_[18]\ : STD_LOGIC;
  signal \inst_reg_n_0_[19]\ : STD_LOGIC;
  signal \inst_reg_n_0_[1]\ : STD_LOGIC;
  signal \inst_reg_n_0_[20]\ : STD_LOGIC;
  signal \inst_reg_n_0_[21]\ : STD_LOGIC;
  signal \inst_reg_n_0_[22]\ : STD_LOGIC;
  signal \inst_reg_n_0_[23]\ : STD_LOGIC;
  signal \inst_reg_n_0_[24]\ : STD_LOGIC;
  signal \inst_reg_n_0_[25]\ : STD_LOGIC;
  signal \inst_reg_n_0_[26]\ : STD_LOGIC;
  signal \inst_reg_n_0_[27]\ : STD_LOGIC;
  signal \inst_reg_n_0_[28]\ : STD_LOGIC;
  signal \inst_reg_n_0_[29]\ : STD_LOGIC;
  signal \inst_reg_n_0_[2]\ : STD_LOGIC;
  signal \inst_reg_n_0_[3]\ : STD_LOGIC;
  signal \inst_reg_n_0_[4]\ : STD_LOGIC;
  signal \inst_reg_n_0_[5]\ : STD_LOGIC;
  signal \inst_reg_n_0_[6]\ : STD_LOGIC;
  signal \inst_reg_n_0_[7]\ : STD_LOGIC;
  signal \inst_reg_n_0_[8]\ : STD_LOGIC;
  signal \inst_reg_n_0_[9]\ : STD_LOGIC;
  signal \irAddr[13]_i_1_n_0\ : STD_LOGIC;
  signal \op[4]_i_1_n_0\ : STD_LOGIC;
  signal \op_reg_n_0_[0]\ : STD_LOGIC;
  signal \op_reg_n_0_[1]\ : STD_LOGIC;
  signal \op_reg_n_0_[2]\ : STD_LOGIC;
  signal \op_reg_n_0_[3]\ : STD_LOGIC;
  signal \op_reg_n_0_[4]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \pc[15]_i_1_n_0\ : STD_LOGIC;
  signal \pc_reg_n_0_[0]\ : STD_LOGIC;
  signal \pc_reg_n_0_[10]\ : STD_LOGIC;
  signal \pc_reg_n_0_[11]\ : STD_LOGIC;
  signal \pc_reg_n_0_[12]\ : STD_LOGIC;
  signal \pc_reg_n_0_[13]\ : STD_LOGIC;
  signal \pc_reg_n_0_[14]\ : STD_LOGIC;
  signal \pc_reg_n_0_[15]\ : STD_LOGIC;
  signal \pc_reg_n_0_[1]\ : STD_LOGIC;
  signal \pc_reg_n_0_[2]\ : STD_LOGIC;
  signal \pc_reg_n_0_[3]\ : STD_LOGIC;
  signal \pc_reg_n_0_[4]\ : STD_LOGIC;
  signal \pc_reg_n_0_[5]\ : STD_LOGIC;
  signal \pc_reg_n_0_[6]\ : STD_LOGIC;
  signal \pc_reg_n_0_[7]\ : STD_LOGIC;
  signal \pc_reg_n_0_[8]\ : STD_LOGIC;
  signal \pc_reg_n_0_[9]\ : STD_LOGIC;
  signal \plusOp_carry__0_n_0\ : STD_LOGIC;
  signal \plusOp_carry__0_n_1\ : STD_LOGIC;
  signal \plusOp_carry__0_n_2\ : STD_LOGIC;
  signal \plusOp_carry__0_n_3\ : STD_LOGIC;
  signal \plusOp_carry__1_n_0\ : STD_LOGIC;
  signal \plusOp_carry__1_n_1\ : STD_LOGIC;
  signal \plusOp_carry__1_n_2\ : STD_LOGIC;
  signal \plusOp_carry__1_n_3\ : STD_LOGIC;
  signal \plusOp_carry__2_n_2\ : STD_LOGIC;
  signal \plusOp_carry__2_n_3\ : STD_LOGIC;
  signal plusOp_carry_n_0 : STD_LOGIC;
  signal plusOp_carry_n_1 : STD_LOGIC;
  signal plusOp_carry_n_2 : STD_LOGIC;
  signal plusOp_carry_n_3 : STD_LOGIC;
  signal \rID1[0]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[0]_i_2_n_0\ : STD_LOGIC;
  signal \rID1[0]_i_3_n_0\ : STD_LOGIC;
  signal \rID1[1]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[2]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[3]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_1_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_2_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_3_n_0\ : STD_LOGIC;
  signal \rID1[4]_i_4_n_0\ : STD_LOGIC;
  signal \rID2[0]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[1]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[2]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[3]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[4]_i_1_n_0\ : STD_LOGIC;
  signal \rID2[4]_i_2_n_0\ : STD_LOGIC;
  signal \rID2[4]_i_3_n_0\ : STD_LOGIC;
  signal \reg1[0]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg1[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg1_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg1_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg1_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg1_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg1_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg2[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg2_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg2_reg_n_0_[4]\ : STD_LOGIC;
  signal reg2_val : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \reg3[4]_i_1_n_0\ : STD_LOGIC;
  signal \reg3[4]_i_2_n_0\ : STD_LOGIC;
  signal \reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg3_reg_n_0_[4]\ : STD_LOGIC;
  signal reg3_val : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \reg3_val0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__0_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__0_n_1\ : STD_LOGIC;
  signal \reg3_val0_carry__0_n_2\ : STD_LOGIC;
  signal \reg3_val0_carry__0_n_3\ : STD_LOGIC;
  signal \reg3_val0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__1_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__1_n_1\ : STD_LOGIC;
  signal \reg3_val0_carry__1_n_2\ : STD_LOGIC;
  signal \reg3_val0_carry__1_n_3\ : STD_LOGIC;
  signal \reg3_val0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \reg3_val0_carry__2_n_2\ : STD_LOGIC;
  signal \reg3_val0_carry__2_n_3\ : STD_LOGIC;
  signal reg3_val0_carry_i_1_n_0 : STD_LOGIC;
  signal reg3_val0_carry_i_2_n_0 : STD_LOGIC;
  signal reg3_val0_carry_i_3_n_0 : STD_LOGIC;
  signal reg3_val0_carry_i_4_n_0 : STD_LOGIC;
  signal reg3_val0_carry_n_0 : STD_LOGIC;
  signal reg3_val0_carry_n_1 : STD_LOGIC;
  signal reg3_val0_carry_n_2 : STD_LOGIC;
  signal reg3_val0_carry_n_3 : STD_LOGIC;
  signal \reg3_val[14]_i_1_n_0\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[0]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[10]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[11]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[12]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[13]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[14]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[1]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[2]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[3]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[4]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[5]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[6]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[7]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[8]\ : STD_LOGIC;
  signal \reg3_val_reg_n_0_[9]\ : STD_LOGIC;
  signal \regwD1[15]_i_1_n_0\ : STD_LOGIC;
  signal regwD1_2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \regwD2[15]_i_1_n_0\ : STD_LOGIC;
  signal \^send\ : STD_LOGIC;
  signal send_i_1_n_0 : STD_LOGIC;
  signal \^wr_enr1\ : STD_LOGIC;
  signal wr_enR15_out : STD_LOGIC;
  signal wr_enR1_i_1_n_0 : STD_LOGIC;
  signal wr_enR1_i_2_n_0 : STD_LOGIC;
  signal wr_enR1_i_3_n_0 : STD_LOGIC;
  signal \^wr_enr2\ : STD_LOGIC;
  signal wr_enR2_i_1_n_0 : STD_LOGIC;
  signal wr_enR2_i_2_n_0 : STD_LOGIC;
  signal wr_enR2_i_3_n_0 : STD_LOGIC;
  signal \NLW_aluA_reg[15]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_aluA_reg[15]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_aluA_reg[15]_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_aluA_reg[15]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_aluA_reg[15]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_aluA_reg[15]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_plusOp_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_plusOp_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_reg3_val0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_reg3_val0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_curr[0]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_curr[1]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_curr[3]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_curr[3]_i_4\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_reg[0]\ : label is "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_curr_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_reg[1]\ : label is "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010";
  attribute KEEP of \FSM_sequential_curr_reg[1]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_reg[2]\ : label is "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010";
  attribute KEEP of \FSM_sequential_curr_reg[2]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_reg[3]\ : label is "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010";
  attribute KEEP of \FSM_sequential_curr_reg[3]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_curr_reg[4]\ : label is "ori:01001,nequal:01000,equals:00111,clrscr:00101,jal:00100,iops:00110,jmp:00011,rops:01100,sw:01011,decode:00001,fetch:00000,send_asip:10010,wpix_asip:10001,jr:01101,store:10000,finish:10011,rpix_asip:01111,recv_asip:01110,iSTATE:10100,jops:00010,lw:01010";
  attribute KEEP of \FSM_sequential_curr_reg[4]\ : label is "yes";
begin
  d_wr_en <= \^d_wr_en\;
  fbRST <= \^fbrst\;
  fbWrEn <= \^fbwren\;
  send <= \^send\;
  wr_enR1 <= \^wr_enr1\;
  wr_enR2 <= \^wr_enr2\;
\FSM_sequential_curr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8F88"
    )
        port map (
      I0 => \op_reg_n_0_[2]\,
      I1 => \FSM_sequential_curr[0]_i_2_n_0\,
      I2 => \FSM_sequential_curr[0]_i_3_n_0\,
      I3 => \FSM_sequential_curr[0]_i_4_n_0\,
      I4 => \FSM_sequential_curr[0]_i_5_n_0\,
      I5 => \FSM_sequential_curr[0]_i_6_n_0\,
      O => \FSM_sequential_curr[0]_i_1_n_0\
    );
\FSM_sequential_curr[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => curr(4),
      I1 => curr(3),
      I2 => curr(0),
      O => \FSM_sequential_curr[0]_i_2_n_0\
    );
\FSM_sequential_curr[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \op_reg_n_0_[3]\,
      I1 => \op_reg_n_0_[4]\,
      I2 => \op_reg_n_0_[2]\,
      O => \FSM_sequential_curr[0]_i_3_n_0\
    );
\FSM_sequential_curr[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005400000000"
    )
        port map (
      I0 => curr(4),
      I1 => \op_reg_n_0_[0]\,
      I2 => \op_reg_n_0_[1]\,
      I3 => curr(1),
      I4 => curr(0),
      I5 => curr(2),
      O => \FSM_sequential_curr[0]_i_4_n_0\
    );
\FSM_sequential_curr[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000E0002"
    )
        port map (
      I0 => \FSM_sequential_curr[0]_i_7_n_0\,
      I1 => curr(4),
      I2 => curr(3),
      I3 => curr(0),
      I4 => ready,
      I5 => curr(2),
      O => \FSM_sequential_curr[0]_i_5_n_0\
    );
\FSM_sequential_curr[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"002211660000115F"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      I2 => \op_reg_n_0_[0]\,
      I3 => curr(4),
      I4 => curr(3),
      I5 => curr(0),
      O => \FSM_sequential_curr[0]_i_6_n_0\
    );
\FSM_sequential_curr[0]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \op_reg_n_0_[4]\,
      I1 => \op_reg_n_0_[3]\,
      I2 => \op_reg_n_0_[1]\,
      O => \FSM_sequential_curr[0]_i_7_n_0\
    );
\FSM_sequential_curr[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEFEEE"
    )
        port map (
      I0 => \FSM_sequential_curr[1]_i_2_n_0\,
      I1 => \FSM_sequential_curr[1]_i_3_n_0\,
      I2 => \FSM_sequential_curr[1]_i_4_n_0\,
      I3 => \FSM_sequential_curr[1]_i_5_n_0\,
      I4 => curr(4),
      I5 => \FSM_sequential_curr[1]_i_6_n_0\,
      O => \FSM_sequential_curr[1]_i_1_n_0\
    );
\FSM_sequential_curr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAFFAAAAAAAE"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_6_n_0\,
      I1 => \FSM_sequential_curr[1]_i_7_n_0\,
      I2 => \op_reg_n_0_[2]\,
      I3 => \op_reg_n_0_[0]\,
      I4 => \op_reg_n_0_[1]\,
      I5 => wr_enR2_i_3_n_0,
      O => \FSM_sequential_curr[1]_i_2_n_0\
    );
\FSM_sequential_curr[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04160052"
    )
        port map (
      I0 => curr(2),
      I1 => curr(1),
      I2 => curr(4),
      I3 => curr(3),
      I4 => curr(0),
      O => \FSM_sequential_curr[1]_i_3_n_0\
    );
\FSM_sequential_curr[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C000008"
    )
        port map (
      I0 => \op_reg_n_0_[2]\,
      I1 => \op_reg_n_0_[3]\,
      I2 => \op_reg_n_0_[4]\,
      I3 => \op_reg_n_0_[1]\,
      I4 => \op_reg_n_0_[0]\,
      O => \FSM_sequential_curr[1]_i_4_n_0\
    );
\FSM_sequential_curr[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => curr(2),
      I1 => curr(0),
      I2 => curr(1),
      O => \FSM_sequential_curr[1]_i_5_n_0\
    );
\FSM_sequential_curr[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000F080800000808"
    )
        port map (
      I0 => \op_reg_n_0_[2]\,
      I1 => curr(2),
      I2 => \rID1[0]_i_3_n_0\,
      I3 => curr(1),
      I4 => curr(0),
      I5 => p_0_in_0(1),
      O => \FSM_sequential_curr[1]_i_6_n_0\
    );
\FSM_sequential_curr[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
        port map (
      I0 => \op_reg_n_0_[3]\,
      I1 => \op_reg_n_0_[4]\,
      I2 => curr(1),
      I3 => curr(0),
      I4 => curr(3),
      I5 => curr(4),
      O => \FSM_sequential_curr[1]_i_7_n_0\
    );
\FSM_sequential_curr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEBAA"
    )
        port map (
      I0 => \FSM_sequential_curr[2]_i_2_n_0\,
      I1 => \op_reg_n_0_[2]\,
      I2 => \op_reg_n_0_[0]\,
      I3 => \FSM_sequential_curr[3]_i_5_n_0\,
      I4 => \FSM_sequential_curr[2]_i_3_n_0\,
      O => \FSM_sequential_curr[2]_i_1_n_0\
    );
\FSM_sequential_curr[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFAAAA"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_2_n_0\,
      I1 => \op_reg_n_0_[1]\,
      I2 => \op_reg_n_0_[4]\,
      I3 => \op_reg_n_0_[3]\,
      I4 => \FSM_sequential_curr[3]_i_5_n_0\,
      I5 => \FSM_sequential_curr[2]_i_4_n_0\,
      O => \FSM_sequential_curr[2]_i_2_n_0\
    );
\FSM_sequential_curr[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4044444440404040"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_3_n_0\,
      I1 => curr(1),
      I2 => wr_enR2_i_3_n_0,
      I3 => \op_reg_n_0_[4]\,
      I4 => \op_reg_n_0_[3]\,
      I5 => \FSM_sequential_curr[0]_i_2_n_0\,
      O => \FSM_sequential_curr[2]_i_3_n_0\
    );
\FSM_sequential_curr[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002000000020C"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_3_n_0\,
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => \rID1[0]_i_3_n_0\,
      I5 => p_0_in_0(0),
      O => \FSM_sequential_curr[2]_i_4_n_0\
    );
\FSM_sequential_curr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAAAFFFFEAAAEAAA"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_2_n_0\,
      I1 => curr(1),
      I2 => wr_enR2_i_3_n_0,
      I3 => \FSM_sequential_curr[3]_i_3_n_0\,
      I4 => \FSM_sequential_curr[3]_i_4_n_0\,
      I5 => \FSM_sequential_curr[3]_i_5_n_0\,
      O => \FSM_sequential_curr[3]_i_1_n_0\
    );
\FSM_sequential_curr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAE"
    )
        port map (
      I0 => \FSM_sequential_curr[3]_i_6_n_0\,
      I1 => curr(0),
      I2 => \fbDout1[15]_i_2_n_0\,
      I3 => curr(4),
      I4 => curr(3),
      I5 => p_0_in_0(1),
      O => \FSM_sequential_curr[3]_i_2_n_0\
    );
\FSM_sequential_curr[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \op_reg_n_0_[1]\,
      I1 => \op_reg_n_0_[0]\,
      I2 => \op_reg_n_0_[2]\,
      O => \FSM_sequential_curr[3]_i_3_n_0\
    );
\FSM_sequential_curr[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDFFFDF"
    )
        port map (
      I0 => \op_reg_n_0_[2]\,
      I1 => \op_reg_n_0_[4]\,
      I2 => \op_reg_n_0_[3]\,
      I3 => \op_reg_n_0_[1]\,
      I4 => \op_reg_n_0_[0]\,
      O => \FSM_sequential_curr[3]_i_4_n_0\
    );
\FSM_sequential_curr[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => curr(4),
      I1 => curr(0),
      I2 => curr(1),
      I3 => curr(2),
      I4 => curr(3),
      O => \FSM_sequential_curr[3]_i_5_n_0\
    );
\FSM_sequential_curr[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100000000000000"
    )
        port map (
      I0 => newChar,
      I1 => curr(0),
      I2 => curr(4),
      I3 => curr(2),
      I4 => curr(3),
      I5 => curr(1),
      O => \FSM_sequential_curr[3]_i_6_n_0\
    );
\FSM_sequential_curr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF0A0B1A10"
    )
        port map (
      I0 => curr(0),
      I1 => curr(3),
      I2 => curr(4),
      I3 => curr(1),
      I4 => curr(2),
      I5 => \FSM_sequential_curr[4]_i_2_n_0\,
      O => \FSM_sequential_curr[4]_i_1_n_0\
    );
\FSM_sequential_curr[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005588AAF0AA"
    )
        port map (
      I0 => curr(3),
      I1 => newChar,
      I2 => \FSM_sequential_curr[3]_i_4_n_0\,
      I3 => curr(2),
      I4 => curr(1),
      I5 => curr(4),
      O => \FSM_sequential_curr[4]_i_2_n_0\
    );
\FSM_sequential_curr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_sequential_curr[0]_i_1_n_0\,
      Q => curr(0),
      R => rst
    );
\FSM_sequential_curr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_sequential_curr[1]_i_1_n_0\,
      Q => curr(1),
      R => rst
    );
\FSM_sequential_curr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_sequential_curr[2]_i_1_n_0\,
      Q => curr(2),
      R => rst
    );
\FSM_sequential_curr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_sequential_curr[3]_i_1_n_0\,
      Q => curr(3),
      R => rst
    );
\FSM_sequential_curr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => en,
      D => \FSM_sequential_curr[4]_i_1_n_0\,
      Q => curr(4),
      R => rst
    );
\aluA[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[0]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(0),
      I3 => \aluA[0]_i_3_n_0\,
      I4 => \aluA[0]_i_4_n_0\,
      I5 => \aluA[0]_i_5_n_0\,
      O => aluA_1(0)
    );
\aluA[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(0),
      O => \aluA[0]_i_2_n_0\
    );
\aluA[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(0),
      O => \aluA[0]_i_3_n_0\
    );
\aluA[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(0),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(0),
      I4 => charRec(0),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[0]_i_4_n_0\
    );
\aluA[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(0),
      O => \aluA[0]_i_5_n_0\
    );
\aluA[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[10]_i_2_n_0\,
      I1 => \aluA[10]_i_3_n_0\,
      I2 => regrD2(10),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(10),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(10)
    );
\aluA[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(10),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(10),
      I4 => fbDin1(10),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[10]_i_2_n_0\
    );
\aluA[10]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(10),
      O => \aluA[10]_i_3_n_0\
    );
\aluA[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[11]_i_2_n_0\,
      I1 => \aluA[11]_i_3_n_0\,
      I2 => regrD2(11),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(11),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(11)
    );
\aluA[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(11),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(11),
      I4 => fbDin1(11),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[11]_i_2_n_0\
    );
\aluA[11]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(11),
      O => \aluA[11]_i_3_n_0\
    );
\aluA[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[12]_i_2_n_0\,
      I1 => \aluA[12]_i_3_n_0\,
      I2 => regrD2(12),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(12),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(12)
    );
\aluA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(12),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(12),
      I4 => fbDin1(12),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[12]_i_2_n_0\
    );
\aluA[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(12),
      O => \aluA[12]_i_3_n_0\
    );
\aluA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[13]_i_2_n_0\,
      I1 => \aluA[13]_i_3_n_0\,
      I2 => regrD2(13),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(13),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(13)
    );
\aluA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(13),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(13),
      I4 => fbDin1(13),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[13]_i_2_n_0\
    );
\aluA[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(13),
      O => \aluA[13]_i_3_n_0\
    );
\aluA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[14]_i_2_n_0\,
      I1 => \aluA[14]_i_3_n_0\,
      I2 => regrD2(14),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(14),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(14)
    );
\aluA[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(14),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(14),
      I4 => fbDin1(14),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[14]_i_2_n_0\
    );
\aluA[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(14),
      O => \aluA[14]_i_3_n_0\
    );
\aluA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E80000004C0000"
    )
        port map (
      I0 => curr(0),
      I1 => curr(3),
      I2 => curr(1),
      I3 => curr(4),
      I4 => \rID2[4]_i_3_n_0\,
      I5 => curr(2),
      O => \aluA[15]_i_1_n_0\
    );
\aluA[15]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => regrD1(15),
      I1 => reg2_val(15),
      O => \aluA[15]_i_12_n_0\
    );
\aluA[15]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(14),
      I1 => reg2_val(14),
      I2 => regrD1(13),
      I3 => reg2_val(13),
      I4 => reg2_val(12),
      I5 => regrD1(12),
      O => \aluA[15]_i_13_n_0\
    );
\aluA[15]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => regrD1(15),
      I1 => reg2_val(15),
      O => \aluA[15]_i_15_n_0\
    );
\aluA[15]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(14),
      I1 => reg2_val(14),
      I2 => regrD1(13),
      I3 => reg2_val(13),
      I4 => reg2_val(12),
      I5 => regrD1(12),
      O => \aluA[15]_i_16_n_0\
    );
\aluA[15]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(11),
      I1 => reg2_val(11),
      I2 => regrD1(10),
      I3 => reg2_val(10),
      I4 => reg2_val(9),
      I5 => regrD1(9),
      O => \aluA[15]_i_17_n_0\
    );
\aluA[15]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(8),
      I1 => reg2_val(8),
      I2 => regrD1(7),
      I3 => reg2_val(7),
      I4 => reg2_val(6),
      I5 => regrD1(6),
      O => \aluA[15]_i_18_n_0\
    );
\aluA[15]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(5),
      I1 => reg2_val(5),
      I2 => regrD1(4),
      I3 => reg2_val(4),
      I4 => reg2_val(3),
      I5 => regrD1(3),
      O => \aluA[15]_i_19_n_0\
    );
\aluA[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[15]_i_3_n_0\,
      I1 => \aluA[15]_i_4_n_0\,
      I2 => regrD2(15),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(15),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(15)
    );
\aluA[15]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(2),
      I1 => reg2_val(2),
      I2 => regrD1(1),
      I3 => reg2_val(1),
      I4 => reg2_val(0),
      I5 => regrD1(0),
      O => \aluA[15]_i_20_n_0\
    );
\aluA[15]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(11),
      I1 => reg2_val(11),
      I2 => regrD1(10),
      I3 => reg2_val(10),
      I4 => reg2_val(9),
      I5 => regrD1(9),
      O => \aluA[15]_i_21_n_0\
    );
\aluA[15]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(8),
      I1 => reg2_val(8),
      I2 => regrD1(7),
      I3 => reg2_val(7),
      I4 => reg2_val(6),
      I5 => regrD1(6),
      O => \aluA[15]_i_22_n_0\
    );
\aluA[15]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(5),
      I1 => reg2_val(5),
      I2 => regrD1(4),
      I3 => reg2_val(4),
      I4 => reg2_val(3),
      I5 => regrD1(3),
      O => \aluA[15]_i_23_n_0\
    );
\aluA[15]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => regrD1(2),
      I1 => reg2_val(2),
      I2 => regrD1(1),
      I3 => reg2_val(1),
      I4 => reg2_val(0),
      I5 => regrD1(0),
      O => \aluA[15]_i_24_n_0\
    );
\aluA[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(15),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(15),
      I4 => fbDin1(15),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[15]_i_3_n_0\
    );
\aluA[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(15),
      O => \aluA[15]_i_4_n_0\
    );
\aluA[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100000001FFFF"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      I2 => curr(0),
      I3 => \aluA_reg[15]_i_9_n_2\,
      I4 => curr(3),
      I5 => aluA1,
      O => \aluA[15]_i_5_n_0\
    );
\aluA[15]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100FFFF01000000"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      I2 => curr(0),
      I3 => \aluA_reg[15]_i_9_n_2\,
      I4 => curr(3),
      I5 => aluA1,
      O => \aluA[15]_i_6_n_0\
    );
\aluA[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => curr(2),
      I1 => curr(1),
      I2 => curr(3),
      O => \aluA[15]_i_7_n_0\
    );
\aluA[15]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => curr(1),
      I1 => curr(0),
      I2 => curr(3),
      I3 => curr(2),
      O => \aluA[15]_i_8_n_0\
    );
\aluA[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[1]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(1),
      I3 => \aluA[1]_i_3_n_0\,
      I4 => \aluA[1]_i_4_n_0\,
      I5 => \aluA[1]_i_5_n_0\,
      O => aluA_1(1)
    );
\aluA[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(1),
      O => \aluA[1]_i_2_n_0\
    );
\aluA[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(1),
      O => \aluA[1]_i_3_n_0\
    );
\aluA[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(1),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(1),
      I4 => charRec(1),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[1]_i_4_n_0\
    );
\aluA[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(1),
      O => \aluA[1]_i_5_n_0\
    );
\aluA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[2]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(2),
      I3 => \aluA[2]_i_3_n_0\,
      I4 => \aluA[2]_i_4_n_0\,
      I5 => \aluA[2]_i_5_n_0\,
      O => aluA_1(2)
    );
\aluA[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(2),
      O => \aluA[2]_i_2_n_0\
    );
\aluA[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(2),
      O => \aluA[2]_i_3_n_0\
    );
\aluA[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(2),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(2),
      I4 => charRec(2),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[2]_i_4_n_0\
    );
\aluA[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(2),
      O => \aluA[2]_i_5_n_0\
    );
\aluA[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[3]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(3),
      I3 => \aluA[3]_i_3_n_0\,
      I4 => \aluA[3]_i_4_n_0\,
      I5 => \aluA[3]_i_5_n_0\,
      O => aluA_1(3)
    );
\aluA[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(3),
      O => \aluA[3]_i_2_n_0\
    );
\aluA[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(3),
      O => \aluA[3]_i_3_n_0\
    );
\aluA[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(3),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(3),
      I4 => charRec(3),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[3]_i_4_n_0\
    );
\aluA[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(3),
      O => \aluA[3]_i_5_n_0\
    );
\aluA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[4]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(4),
      I3 => \aluA[4]_i_3_n_0\,
      I4 => \aluA[4]_i_4_n_0\,
      I5 => \aluA[4]_i_5_n_0\,
      O => aluA_1(4)
    );
\aluA[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(4),
      O => \aluA[4]_i_2_n_0\
    );
\aluA[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(4),
      O => \aluA[4]_i_3_n_0\
    );
\aluA[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(4),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(4),
      I4 => charRec(4),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[4]_i_4_n_0\
    );
\aluA[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(4),
      O => \aluA[4]_i_5_n_0\
    );
\aluA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[5]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(5),
      I3 => \aluA[5]_i_3_n_0\,
      I4 => \aluA[5]_i_4_n_0\,
      I5 => \aluA[5]_i_5_n_0\,
      O => aluA_1(5)
    );
\aluA[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(5),
      O => \aluA[5]_i_2_n_0\
    );
\aluA[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(5),
      O => \aluA[5]_i_3_n_0\
    );
\aluA[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(5),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(5),
      I4 => charRec(5),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[5]_i_4_n_0\
    );
\aluA[5]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(5),
      O => \aluA[5]_i_5_n_0\
    );
\aluA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[6]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(6),
      I3 => \aluA[6]_i_3_n_0\,
      I4 => \aluA[6]_i_4_n_0\,
      I5 => \aluA[6]_i_5_n_0\,
      O => aluA_1(6)
    );
\aluA[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(6),
      O => \aluA[6]_i_2_n_0\
    );
\aluA[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(6),
      O => \aluA[6]_i_3_n_0\
    );
\aluA[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(6),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(6),
      I4 => charRec(6),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[6]_i_4_n_0\
    );
\aluA[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(6),
      O => \aluA[6]_i_5_n_0\
    );
\aluA[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEA"
    )
        port map (
      I0 => \aluA[7]_i_2_n_0\,
      I1 => \aluA[15]_i_5_n_0\,
      I2 => regrD2(7),
      I3 => \aluA[7]_i_3_n_0\,
      I4 => \aluA[7]_i_4_n_0\,
      I5 => \aluA[7]_i_5_n_0\,
      O => aluA_1(7)
    );
\aluA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222E200000000"
    )
        port map (
      I0 => aluA1,
      I1 => curr(3),
      I2 => \aluA_reg[15]_i_9_n_2\,
      I3 => curr(0),
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => imm(7),
      O => \aluA[7]_i_2_n_0\
    );
\aluA[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(7),
      O => \aluA[7]_i_3_n_0\
    );
\aluA[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(7),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(7),
      I4 => charRec(7),
      I5 => \aluA[7]_i_6_n_0\,
      O => \aluA[7]_i_4_n_0\
    );
\aluA[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(0),
      I3 => curr(1),
      I4 => fbDin1(7),
      O => \aluA[7]_i_5_n_0\
    );
\aluA[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => curr(2),
      I1 => curr(3),
      I2 => curr(1),
      I3 => curr(0),
      O => \aluA[7]_i_6_n_0\
    );
\aluA[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[8]_i_2_n_0\,
      I1 => \aluA[8]_i_3_n_0\,
      I2 => regrD2(8),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(8),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(8)
    );
\aluA[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(8),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(8),
      I4 => fbDin1(8),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[8]_i_2_n_0\
    );
\aluA[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(8),
      O => \aluA[8]_i_3_n_0\
    );
\aluA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEEFEEEFEEE"
    )
        port map (
      I0 => \aluA[9]_i_2_n_0\,
      I1 => \aluA[9]_i_3_n_0\,
      I2 => regrD2(9),
      I3 => \aluA[15]_i_5_n_0\,
      I4 => imm(9),
      I5 => \aluA[15]_i_6_n_0\,
      O => aluA_1(9)
    );
\aluA[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => \aluA[15]_i_7_n_0\,
      I1 => dIn(9),
      I2 => \reg3[4]_i_2_n_0\,
      I3 => regrD1(9),
      I4 => fbDin1(9),
      I5 => \aluA[15]_i_8_n_0\,
      O => \aluA[9]_i_2_n_0\
    );
\aluA[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      I4 => reg2_val(9),
      O => \aluA[9]_i_3_n_0\
    );
\aluA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(0),
      Q => aluA(0),
      R => '0'
    );
\aluA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(10),
      Q => aluA(10),
      R => '0'
    );
\aluA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(11),
      Q => aluA(11),
      R => '0'
    );
\aluA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(12),
      Q => aluA(12),
      R => '0'
    );
\aluA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(13),
      Q => aluA(13),
      R => '0'
    );
\aluA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(14),
      Q => aluA(14),
      R => '0'
    );
\aluA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(15),
      Q => aluA(15),
      R => '0'
    );
\aluA_reg[15]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \aluA_reg[15]_i_14_n_0\,
      CO(3 downto 2) => \NLW_aluA_reg[15]_i_10_CO_UNCONNECTED\(3 downto 2),
      CO(1) => aluA1,
      CO(0) => \aluA_reg[15]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_aluA_reg[15]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \aluA[15]_i_15_n_0\,
      S(0) => \aluA[15]_i_16_n_0\
    );
\aluA_reg[15]_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \aluA_reg[15]_i_11_n_0\,
      CO(2) => \aluA_reg[15]_i_11_n_1\,
      CO(1) => \aluA_reg[15]_i_11_n_2\,
      CO(0) => \aluA_reg[15]_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_aluA_reg[15]_i_11_O_UNCONNECTED\(3 downto 0),
      S(3) => \aluA[15]_i_17_n_0\,
      S(2) => \aluA[15]_i_18_n_0\,
      S(1) => \aluA[15]_i_19_n_0\,
      S(0) => \aluA[15]_i_20_n_0\
    );
\aluA_reg[15]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \aluA_reg[15]_i_14_n_0\,
      CO(2) => \aluA_reg[15]_i_14_n_1\,
      CO(1) => \aluA_reg[15]_i_14_n_2\,
      CO(0) => \aluA_reg[15]_i_14_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_aluA_reg[15]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \aluA[15]_i_21_n_0\,
      S(2) => \aluA[15]_i_22_n_0\,
      S(1) => \aluA[15]_i_23_n_0\,
      S(0) => \aluA[15]_i_24_n_0\
    );
\aluA_reg[15]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \aluA_reg[15]_i_11_n_0\,
      CO(3 downto 2) => \NLW_aluA_reg[15]_i_9_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \aluA_reg[15]_i_9_n_2\,
      CO(0) => \aluA_reg[15]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_aluA_reg[15]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \aluA[15]_i_12_n_0\,
      S(0) => \aluA[15]_i_13_n_0\
    );
\aluA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(1),
      Q => aluA(1),
      R => '0'
    );
\aluA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(2),
      Q => aluA(2),
      R => '0'
    );
\aluA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(3),
      Q => aluA(3),
      R => '0'
    );
\aluA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(4),
      Q => aluA(4),
      R => '0'
    );
\aluA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(5),
      Q => aluA(5),
      R => '0'
    );
\aluA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(6),
      Q => aluA(6),
      R => '0'
    );
\aluA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(7),
      Q => aluA(7),
      R => '0'
    );
\aluA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(8),
      Q => aluA(8),
      R => '0'
    );
\aluA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => aluA_1(9),
      Q => aluA(9),
      R => '0'
    );
\aluB[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E8000000440000"
    )
        port map (
      I0 => curr(0),
      I1 => curr(3),
      I2 => curr(1),
      I3 => curr(4),
      I4 => \rID2[4]_i_3_n_0\,
      I5 => curr(2),
      O => \aluB[15]_i_1_n_0\
    );
\aluB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(0),
      Q => aluB(0),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(10),
      Q => aluB(10),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(11),
      Q => aluB(11),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(12),
      Q => aluB(12),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(13),
      Q => aluB(13),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(14),
      Q => aluB(14),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(15),
      Q => aluB(15),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(1),
      Q => aluB(1),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(2),
      Q => aluB(2),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(3),
      Q => aluB(3),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(4),
      Q => aluB(4),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(5),
      Q => aluB(5),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(6),
      Q => aluB(6),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(7),
      Q => aluB(7),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(8),
      Q => aluB(8),
      R => \aluB[15]_i_1_n_0\
    );
\aluB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => imm(9),
      Q => aluB(9),
      R => \aluB[15]_i_1_n_0\
    );
\aluOp[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr(0),
      I1 => curr(2),
      O => \aluOp[3]_i_1_n_0\
    );
\aluOp_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \aluA[15]_i_1_n_0\,
      D => \aluOp[3]_i_1_n_0\,
      Q => aluOp(0),
      R => '0'
    );
\charSend[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000200000"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      I2 => \rID2[4]_i_3_n_0\,
      I3 => curr(0),
      I4 => curr(4),
      I5 => curr(3),
      O => \charSend[7]_i_1_n_0\
    );
\charSend_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(0),
      Q => charSend(0),
      R => '0'
    );
\charSend_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(1),
      Q => charSend(1),
      R => '0'
    );
\charSend_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(2),
      Q => charSend(2),
      R => '0'
    );
\charSend_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(3),
      Q => charSend(3),
      R => '0'
    );
\charSend_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(4),
      Q => charSend(4),
      R => '0'
    );
\charSend_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(5),
      Q => charSend(5),
      R => '0'
    );
\charSend_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(6),
      Q => charSend(6),
      R => '0'
    );
\charSend_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \charSend[7]_i_1_n_0\,
      D => regrD1(7),
      Q => charSend(7),
      R => '0'
    );
\dAddr[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004000000"
    )
        port map (
      I0 => curr(4),
      I1 => en,
      I2 => rst,
      I3 => curr(3),
      I4 => curr(1),
      I5 => curr(2),
      O => \dAddr[14]_i_1_n_0\
    );
\dAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[0]\,
      Q => dAddr(0),
      R => '0'
    );
\dAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[10]\,
      Q => dAddr(10),
      R => '0'
    );
\dAddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[11]\,
      Q => dAddr(11),
      R => '0'
    );
\dAddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[12]\,
      Q => dAddr(12),
      R => '0'
    );
\dAddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[13]\,
      Q => dAddr(13),
      R => '0'
    );
\dAddr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[14]\,
      Q => dAddr(14),
      R => '0'
    );
\dAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[1]\,
      Q => dAddr(1),
      R => '0'
    );
\dAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[2]\,
      Q => dAddr(2),
      R => '0'
    );
\dAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[3]\,
      Q => dAddr(3),
      R => '0'
    );
\dAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[4]\,
      Q => dAddr(4),
      R => '0'
    );
\dAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[5]\,
      Q => dAddr(5),
      R => '0'
    );
\dAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[6]\,
      Q => dAddr(6),
      R => '0'
    );
\dAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[7]\,
      Q => dAddr(7),
      R => '0'
    );
\dAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[8]\,
      Q => dAddr(8),
      R => '0'
    );
\dAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dAddr[14]_i_1_n_0\,
      D => \reg3_val_reg_n_0_[9]\,
      Q => dAddr(9),
      R => '0'
    );
\dOut[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(1),
      I2 => curr(0),
      I3 => curr(2),
      I4 => curr(4),
      I5 => \rID2[4]_i_3_n_0\,
      O => \dOut[15]_i_1_n_0\
    );
\dOut_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(0),
      Q => dOut(0),
      R => '0'
    );
\dOut_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(10),
      Q => dOut(10),
      R => '0'
    );
\dOut_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(11),
      Q => dOut(11),
      R => '0'
    );
\dOut_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(12),
      Q => dOut(12),
      R => '0'
    );
\dOut_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(13),
      Q => dOut(13),
      R => '0'
    );
\dOut_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(14),
      Q => dOut(14),
      R => '0'
    );
\dOut_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(15),
      Q => dOut(15),
      R => '0'
    );
\dOut_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(1),
      Q => dOut(1),
      R => '0'
    );
\dOut_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(2),
      Q => dOut(2),
      R => '0'
    );
\dOut_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(3),
      Q => dOut(3),
      R => '0'
    );
\dOut_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(4),
      Q => dOut(4),
      R => '0'
    );
\dOut_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(5),
      Q => dOut(5),
      R => '0'
    );
\dOut_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(6),
      Q => dOut(6),
      R => '0'
    );
\dOut_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(7),
      Q => dOut(7),
      R => '0'
    );
\dOut_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(8),
      Q => dOut(8),
      R => '0'
    );
\dOut_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \dOut[15]_i_1_n_0\,
      D => regrD1(9),
      Q => dOut(9),
      R => '0'
    );
d_wr_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF7F2000"
    )
        port map (
      I0 => d_wr_en_i_2_n_0,
      I1 => curr(4),
      I2 => en,
      I3 => curr(3),
      I4 => \^d_wr_en\,
      O => d_wr_en_i_1_n_0
    );
d_wr_en_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => curr(1),
      I1 => curr(0),
      I2 => curr(2),
      O => d_wr_en_i_2_n_0
    );
d_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => d_wr_en_i_1_n_0,
      Q => \^d_wr_en\,
      R => rst
    );
\fbAddr1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(0),
      I1 => curr(4),
      I2 => reg2_val(0),
      O => fbAddr1_4(0)
    );
\fbAddr1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(10),
      I1 => curr(4),
      I2 => reg2_val(10),
      O => fbAddr1_4(10)
    );
\fbAddr1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000080000000"
    )
        port map (
      I0 => curr(1),
      I1 => curr(0),
      I2 => curr(3),
      I3 => curr(2),
      I4 => \rID2[4]_i_3_n_0\,
      I5 => curr(4),
      O => \fbAddr1[11]_i_1_n_0\
    );
\fbAddr1[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(11),
      I1 => curr(4),
      I2 => reg2_val(11),
      O => fbAddr1_4(11)
    );
\fbAddr1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(1),
      I1 => curr(4),
      I2 => reg2_val(1),
      O => fbAddr1_4(1)
    );
\fbAddr1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(2),
      I1 => curr(4),
      I2 => reg2_val(2),
      O => fbAddr1_4(2)
    );
\fbAddr1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(3),
      I1 => curr(4),
      I2 => reg2_val(3),
      O => fbAddr1_4(3)
    );
\fbAddr1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(4),
      I1 => curr(4),
      I2 => reg2_val(4),
      O => fbAddr1_4(4)
    );
\fbAddr1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(5),
      I1 => curr(4),
      I2 => reg2_val(5),
      O => fbAddr1_4(5)
    );
\fbAddr1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(6),
      I1 => curr(4),
      I2 => reg2_val(6),
      O => fbAddr1_4(6)
    );
\fbAddr1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(7),
      I1 => curr(4),
      I2 => reg2_val(7),
      O => fbAddr1_4(7)
    );
\fbAddr1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(8),
      I1 => curr(4),
      I2 => reg2_val(8),
      O => fbAddr1_4(8)
    );
\fbAddr1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD1(9),
      I1 => curr(4),
      I2 => reg2_val(9),
      O => fbAddr1_4(9)
    );
\fbAddr1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(0),
      Q => fbAddr1(0),
      R => '0'
    );
\fbAddr1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(10),
      Q => fbAddr1(10),
      R => '0'
    );
\fbAddr1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(11),
      Q => fbAddr1(11),
      R => '0'
    );
\fbAddr1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(1),
      Q => fbAddr1(1),
      R => '0'
    );
\fbAddr1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(2),
      Q => fbAddr1(2),
      R => '0'
    );
\fbAddr1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(3),
      Q => fbAddr1(3),
      R => '0'
    );
\fbAddr1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(4),
      Q => fbAddr1(4),
      R => '0'
    );
\fbAddr1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(5),
      Q => fbAddr1(5),
      R => '0'
    );
\fbAddr1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(6),
      Q => fbAddr1(6),
      R => '0'
    );
\fbAddr1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(7),
      Q => fbAddr1(7),
      R => '0'
    );
\fbAddr1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(8),
      Q => fbAddr1(8),
      R => '0'
    );
\fbAddr1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbAddr1[11]_i_1_n_0\,
      D => fbAddr1_4(9),
      Q => fbAddr1(9),
      R => '0'
    );
\fbDout1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
        port map (
      I0 => curr(4),
      I1 => curr(3),
      I2 => en,
      I3 => rst,
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => curr(0),
      O => \fbDout1[15]_i_1_n_0\
    );
\fbDout1[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      O => \fbDout1[15]_i_2_n_0\
    );
\fbDout1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(0),
      Q => fbDout1(0),
      R => '0'
    );
\fbDout1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(10),
      Q => fbDout1(10),
      R => '0'
    );
\fbDout1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(11),
      Q => fbDout1(11),
      R => '0'
    );
\fbDout1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(12),
      Q => fbDout1(12),
      R => '0'
    );
\fbDout1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(13),
      Q => fbDout1(13),
      R => '0'
    );
\fbDout1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(14),
      Q => fbDout1(14),
      R => '0'
    );
\fbDout1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(15),
      Q => fbDout1(15),
      R => '0'
    );
\fbDout1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(1),
      Q => fbDout1(1),
      R => '0'
    );
\fbDout1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(2),
      Q => fbDout1(2),
      R => '0'
    );
\fbDout1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(3),
      Q => fbDout1(3),
      R => '0'
    );
\fbDout1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(4),
      Q => fbDout1(4),
      R => '0'
    );
\fbDout1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(5),
      Q => fbDout1(5),
      R => '0'
    );
\fbDout1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(6),
      Q => fbDout1(6),
      R => '0'
    );
\fbDout1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(7),
      Q => fbDout1(7),
      R => '0'
    );
\fbDout1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(8),
      Q => fbDout1(8),
      R => '0'
    );
\fbDout1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \fbDout1[15]_i_1_n_0\,
      D => reg2_val(9),
      Q => fbDout1(9),
      R => '0'
    );
fbRST_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => curr(4),
      I1 => fbRST3_out,
      I2 => \^fbrst\,
      O => fbRST_i_1_n_0
    );
fbRST_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020004000"
    )
        port map (
      I0 => curr(1),
      I1 => curr(2),
      I2 => curr(0),
      I3 => en,
      I4 => curr(4),
      I5 => curr(3),
      O => fbRST3_out
    );
fbRST_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fbRST_i_1_n_0,
      Q => \^fbrst\,
      R => rst
    );
fbWrEn_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFF00004000"
    )
        port map (
      I0 => curr(1),
      I1 => en,
      I2 => wr_enR1_i_3_n_0,
      I3 => curr(0),
      I4 => curr(2),
      I5 => \^fbwren\,
      O => fbWrEn_i_1_n_0
    );
fbWrEn_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fbWrEn_i_1_n_0,
      Q => \^fbwren\,
      R => rst
    );
\imm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[1]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[11]\,
      O => imm_3(0)
    );
\imm[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[11]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[21]\,
      O => imm_3(10)
    );
\imm[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(0),
      I1 => curr(2),
      I2 => \inst_reg_n_0_[22]\,
      O => imm_3(11)
    );
\imm[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(1),
      I1 => curr(2),
      I2 => \inst_reg_n_0_[23]\,
      O => imm_3(12)
    );
\imm[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(2),
      I1 => curr(2),
      I2 => \inst_reg_n_0_[24]\,
      O => imm_3(13)
    );
\imm[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(3),
      I1 => curr(2),
      I2 => \inst_reg_n_0_[25]\,
      O => imm_3(14)
    );
\imm[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => curr(1),
      I1 => en,
      I2 => rst,
      I3 => curr(0),
      I4 => curr(3),
      I5 => curr(4),
      O => \imm[15]_i_1_n_0\
    );
\imm[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => p_0_in(4),
      I1 => curr(2),
      I2 => \inst_reg_n_0_[26]\,
      O => imm_3(15)
    );
\imm[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[2]\,
      I1 => curr(2),
      I2 => p_0_in(0),
      O => imm_3(1)
    );
\imm[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[3]\,
      I1 => curr(2),
      I2 => p_0_in(1),
      O => imm_3(2)
    );
\imm[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[4]\,
      I1 => curr(2),
      I2 => p_0_in(2),
      O => imm_3(3)
    );
\imm[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[5]\,
      I1 => curr(2),
      I2 => p_0_in(3),
      O => imm_3(4)
    );
\imm[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[6]\,
      I1 => curr(2),
      I2 => p_0_in(4),
      O => imm_3(5)
    );
\imm[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[7]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[17]\,
      O => imm_3(6)
    );
\imm[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[8]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[18]\,
      O => imm_3(7)
    );
\imm[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[9]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[19]\,
      O => imm_3(8)
    );
\imm[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \inst_reg_n_0_[10]\,
      I1 => curr(2),
      I2 => \inst_reg_n_0_[20]\,
      O => imm_3(9)
    );
\imm_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(0),
      Q => imm(0),
      R => '0'
    );
\imm_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(10),
      Q => imm(10),
      R => '0'
    );
\imm_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(11),
      Q => imm(11),
      R => '0'
    );
\imm_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(12),
      Q => imm(12),
      R => '0'
    );
\imm_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(13),
      Q => imm(13),
      R => '0'
    );
\imm_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(14),
      Q => imm(14),
      R => '0'
    );
\imm_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(15),
      Q => imm(15),
      R => '0'
    );
\imm_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(1),
      Q => imm(1),
      R => '0'
    );
\imm_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(2),
      Q => imm(2),
      R => '0'
    );
\imm_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(3),
      Q => imm(3),
      R => '0'
    );
\imm_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(4),
      Q => imm(4),
      R => '0'
    );
\imm_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(5),
      Q => imm(5),
      R => '0'
    );
\imm_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(6),
      Q => imm(6),
      R => '0'
    );
\imm_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(7),
      Q => imm(7),
      R => '0'
    );
\imm_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(8),
      Q => imm(8),
      R => '0'
    );
\imm_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \imm[15]_i_1_n_0\,
      D => imm_3(9),
      Q => imm(9),
      R => '0'
    );
\inst_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(9),
      Q => \inst_reg_n_0_[10]\,
      R => '0'
    );
\inst_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(10),
      Q => \inst_reg_n_0_[11]\,
      R => '0'
    );
\inst_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(11),
      Q => p_0_in(0),
      R => '0'
    );
\inst_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(12),
      Q => p_0_in(1),
      R => '0'
    );
\inst_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(13),
      Q => p_0_in(2),
      R => '0'
    );
\inst_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(14),
      Q => p_0_in(3),
      R => '0'
    );
\inst_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(15),
      Q => p_0_in(4),
      R => '0'
    );
\inst_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(16),
      Q => \inst_reg_n_0_[17]\,
      R => '0'
    );
\inst_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(17),
      Q => \inst_reg_n_0_[18]\,
      R => '0'
    );
\inst_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(18),
      Q => \inst_reg_n_0_[19]\,
      R => '0'
    );
\inst_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(0),
      Q => \inst_reg_n_0_[1]\,
      R => '0'
    );
\inst_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(19),
      Q => \inst_reg_n_0_[20]\,
      R => '0'
    );
\inst_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(20),
      Q => \inst_reg_n_0_[21]\,
      R => '0'
    );
\inst_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(21),
      Q => \inst_reg_n_0_[22]\,
      R => '0'
    );
\inst_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(22),
      Q => \inst_reg_n_0_[23]\,
      R => '0'
    );
\inst_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(23),
      Q => \inst_reg_n_0_[24]\,
      R => '0'
    );
\inst_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(24),
      Q => \inst_reg_n_0_[25]\,
      R => '0'
    );
\inst_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(25),
      Q => \inst_reg_n_0_[26]\,
      R => '0'
    );
\inst_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(26),
      Q => \inst_reg_n_0_[27]\,
      R => '0'
    );
\inst_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(27),
      Q => \inst_reg_n_0_[28]\,
      R => '0'
    );
\inst_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(28),
      Q => \inst_reg_n_0_[29]\,
      R => '0'
    );
\inst_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(1),
      Q => \inst_reg_n_0_[2]\,
      R => '0'
    );
\inst_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(29),
      Q => p_0_in_0(0),
      R => '0'
    );
\inst_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(30),
      Q => p_0_in_0(1),
      R => '0'
    );
\inst_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(2),
      Q => \inst_reg_n_0_[3]\,
      R => '0'
    );
\inst_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(3),
      Q => \inst_reg_n_0_[4]\,
      R => '0'
    );
\inst_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(4),
      Q => \inst_reg_n_0_[5]\,
      R => '0'
    );
\inst_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(5),
      Q => \inst_reg_n_0_[6]\,
      R => '0'
    );
\inst_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(6),
      Q => \inst_reg_n_0_[7]\,
      R => '0'
    );
\inst_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(7),
      Q => \inst_reg_n_0_[8]\,
      R => '0'
    );
\inst_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => irWord(8),
      Q => \inst_reg_n_0_[9]\,
      R => '0'
    );
\irAddr[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
        port map (
      I0 => curr(3),
      I1 => curr(4),
      I2 => en,
      I3 => rst,
      I4 => \fbDout1[15]_i_2_n_0\,
      I5 => curr(0),
      O => \irAddr[13]_i_1_n_0\
    );
\irAddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[0]\,
      Q => irAddr(0),
      R => '0'
    );
\irAddr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[10]\,
      Q => irAddr(10),
      R => '0'
    );
\irAddr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[11]\,
      Q => irAddr(11),
      R => '0'
    );
\irAddr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[12]\,
      Q => irAddr(12),
      R => '0'
    );
\irAddr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[13]\,
      Q => irAddr(13),
      R => '0'
    );
\irAddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[1]\,
      Q => irAddr(1),
      R => '0'
    );
\irAddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[2]\,
      Q => irAddr(2),
      R => '0'
    );
\irAddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[3]\,
      Q => irAddr(3),
      R => '0'
    );
\irAddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[4]\,
      Q => irAddr(4),
      R => '0'
    );
\irAddr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[5]\,
      Q => irAddr(5),
      R => '0'
    );
\irAddr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[6]\,
      Q => irAddr(6),
      R => '0'
    );
\irAddr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[7]\,
      Q => irAddr(7),
      R => '0'
    );
\irAddr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[8]\,
      Q => irAddr(8),
      R => '0'
    );
\irAddr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \irAddr[13]_i_1_n_0\,
      D => \pc_reg_n_0_[9]\,
      Q => irAddr(9),
      R => '0'
    );
\op[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000002000200"
    )
        port map (
      I0 => \rID2[4]_i_3_n_0\,
      I1 => curr(4),
      I2 => curr(0),
      I3 => curr(1),
      I4 => curr(2),
      I5 => curr(3),
      O => \op[4]_i_1_n_0\
    );
\op_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \op[4]_i_1_n_0\,
      D => \inst_reg_n_0_[27]\,
      Q => \op_reg_n_0_[0]\,
      R => '0'
    );
\op_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \op[4]_i_1_n_0\,
      D => \inst_reg_n_0_[28]\,
      Q => \op_reg_n_0_[1]\,
      R => '0'
    );
\op_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \op[4]_i_1_n_0\,
      D => \inst_reg_n_0_[29]\,
      Q => \op_reg_n_0_[2]\,
      R => '0'
    );
\op_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \op[4]_i_1_n_0\,
      D => p_0_in_0(0),
      Q => \op_reg_n_0_[3]\,
      R => '0'
    );
\op_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \op[4]_i_1_n_0\,
      D => p_0_in_0(1),
      Q => \op_reg_n_0_[4]\,
      R => '0'
    );
\pc[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \fbDout1[15]_i_2_n_0\,
      I1 => en,
      I2 => rst,
      I3 => curr(0),
      I4 => curr(3),
      I5 => curr(4),
      O => \pc[15]_i_1_n_0\
    );
\pc_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(0),
      Q => \pc_reg_n_0_[0]\,
      R => '0'
    );
\pc_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(10),
      Q => \pc_reg_n_0_[10]\,
      R => '0'
    );
\pc_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(11),
      Q => \pc_reg_n_0_[11]\,
      R => '0'
    );
\pc_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(12),
      Q => \pc_reg_n_0_[12]\,
      R => '0'
    );
\pc_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(13),
      Q => \pc_reg_n_0_[13]\,
      R => '0'
    );
\pc_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(14),
      Q => \pc_reg_n_0_[14]\,
      R => '0'
    );
\pc_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(15),
      Q => \pc_reg_n_0_[15]\,
      R => '0'
    );
\pc_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(1),
      Q => \pc_reg_n_0_[1]\,
      R => '0'
    );
\pc_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(2),
      Q => \pc_reg_n_0_[2]\,
      R => '0'
    );
\pc_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(3),
      Q => \pc_reg_n_0_[3]\,
      R => '0'
    );
\pc_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(4),
      Q => \pc_reg_n_0_[4]\,
      R => '0'
    );
\pc_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(5),
      Q => \pc_reg_n_0_[5]\,
      R => '0'
    );
\pc_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(6),
      Q => \pc_reg_n_0_[6]\,
      R => '0'
    );
\pc_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(7),
      Q => \pc_reg_n_0_[7]\,
      R => '0'
    );
\pc_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(8),
      Q => \pc_reg_n_0_[8]\,
      R => '0'
    );
\pc_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \pc[15]_i_1_n_0\,
      D => regrD1(9),
      Q => \pc_reg_n_0_[9]\,
      R => '0'
    );
plusOp_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => plusOp_carry_n_0,
      CO(2) => plusOp_carry_n_1,
      CO(1) => plusOp_carry_n_2,
      CO(0) => plusOp_carry_n_3,
      CYINIT => \pc_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(4 downto 1),
      S(3) => \pc_reg_n_0_[4]\,
      S(2) => \pc_reg_n_0_[3]\,
      S(1) => \pc_reg_n_0_[2]\,
      S(0) => \pc_reg_n_0_[1]\
    );
\plusOp_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => plusOp_carry_n_0,
      CO(3) => \plusOp_carry__0_n_0\,
      CO(2) => \plusOp_carry__0_n_1\,
      CO(1) => \plusOp_carry__0_n_2\,
      CO(0) => \plusOp_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(8 downto 5),
      S(3) => \pc_reg_n_0_[8]\,
      S(2) => \pc_reg_n_0_[7]\,
      S(1) => \pc_reg_n_0_[6]\,
      S(0) => \pc_reg_n_0_[5]\
    );
\plusOp_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__0_n_0\,
      CO(3) => \plusOp_carry__1_n_0\,
      CO(2) => \plusOp_carry__1_n_1\,
      CO(1) => \plusOp_carry__1_n_2\,
      CO(0) => \plusOp_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in9(12 downto 9),
      S(3) => \pc_reg_n_0_[12]\,
      S(2) => \pc_reg_n_0_[11]\,
      S(1) => \pc_reg_n_0_[10]\,
      S(0) => \pc_reg_n_0_[9]\
    );
\plusOp_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \plusOp_carry__1_n_0\,
      CO(3 downto 2) => \NLW_plusOp_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \plusOp_carry__2_n_2\,
      CO(0) => \plusOp_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_plusOp_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in9(15 downto 13),
      S(3) => '0',
      S(2) => \pc_reg_n_0_[15]\,
      S(1) => \pc_reg_n_0_[14]\,
      S(0) => \pc_reg_n_0_[13]\
    );
\rID1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB08FFFFFB3B"
    )
        port map (
      I0 => \reg2_reg_n_0_[0]\,
      I1 => curr(2),
      I2 => curr(0),
      I3 => \reg1_reg_n_0_[0]\,
      I4 => \rID1[0]_i_2_n_0\,
      I5 => \rID1[0]_i_3_n_0\,
      O => \rID1[0]_i_1_n_0\
    );
\rID1[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => curr(2),
      I1 => curr(1),
      I2 => curr(3),
      O => \rID1[0]_i_2_n_0\
    );
\rID1[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => curr(3),
      I1 => curr(4),
      O => \rID1[0]_i_3_n_0\
    );
\rID1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg2_reg_n_0_[1]\,
      I1 => \rID1[4]_i_3_n_0\,
      I2 => \reg1_reg_n_0_[1]\,
      I3 => \rID1[4]_i_4_n_0\,
      O => \rID1[1]_i_1_n_0\
    );
\rID1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg2_reg_n_0_[2]\,
      I1 => \rID1[4]_i_3_n_0\,
      I2 => \reg1_reg_n_0_[2]\,
      I3 => \rID1[4]_i_4_n_0\,
      O => \rID1[2]_i_1_n_0\
    );
\rID1[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg2_reg_n_0_[3]\,
      I1 => \rID1[4]_i_3_n_0\,
      I2 => \reg1_reg_n_0_[3]\,
      I3 => \rID1[4]_i_4_n_0\,
      O => \rID1[3]_i_1_n_0\
    );
\rID1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03210000316F0000"
    )
        port map (
      I0 => curr(0),
      I1 => curr(4),
      I2 => curr(1),
      I3 => curr(2),
      I4 => en,
      I5 => curr(3),
      O => \rID1[4]_i_1_n_0\
    );
\rID1[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \reg2_reg_n_0_[4]\,
      I1 => \rID1[4]_i_3_n_0\,
      I2 => \reg1_reg_n_0_[4]\,
      I3 => \rID1[4]_i_4_n_0\,
      O => \rID1[4]_i_2_n_0\
    );
\rID1[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3020"
    )
        port map (
      I0 => curr(3),
      I1 => curr(0),
      I2 => curr(2),
      I3 => curr(1),
      O => \rID1[4]_i_3_n_0\
    );
\rID1[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC0FAFA"
    )
        port map (
      I0 => curr(4),
      I1 => curr(0),
      I2 => curr(3),
      I3 => curr(1),
      I4 => curr(2),
      O => \rID1[4]_i_4_n_0\
    );
\rID1_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \rID1[4]_i_1_n_0\,
      D => \rID1[0]_i_1_n_0\,
      Q => rID1(0),
      S => rst
    );
\rID1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID1[4]_i_1_n_0\,
      D => \rID1[1]_i_1_n_0\,
      Q => rID1(1),
      R => rst
    );
\rID1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID1[4]_i_1_n_0\,
      D => \rID1[2]_i_1_n_0\,
      Q => rID1(2),
      R => rst
    );
\rID1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID1[4]_i_1_n_0\,
      D => \rID1[3]_i_1_n_0\,
      Q => rID1(3),
      R => rst
    );
\rID1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID1[4]_i_1_n_0\,
      D => \rID1[4]_i_2_n_0\,
      Q => rID1(4),
      R => rst
    );
\rID2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FABA"
    )
        port map (
      I0 => curr(0),
      I1 => curr(2),
      I2 => curr(3),
      I3 => \reg3_reg_n_0_[0]\,
      O => \rID2[0]_i_1_n_0\
    );
\rID2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B00"
    )
        port map (
      I0 => \reg3_reg_n_0_[1]\,
      I1 => curr(3),
      I2 => curr(1),
      I3 => curr(2),
      O => \rID2[1]_i_1_n_0\
    );
\rID2[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg3_reg_n_0_[2]\,
      I1 => curr(3),
      I2 => curr(2),
      O => \rID2[2]_i_1_n_0\
    );
\rID2[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg3_reg_n_0_[3]\,
      I1 => curr(3),
      I2 => curr(2),
      O => \rID2[3]_i_1_n_0\
    );
\rID2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000109000001000"
    )
        port map (
      I0 => curr(0),
      I1 => curr(1),
      I2 => \rID2[4]_i_3_n_0\,
      I3 => curr(3),
      I4 => curr(4),
      I5 => curr(2),
      O => \rID2[4]_i_1_n_0\
    );
\rID2[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \reg3_reg_n_0_[4]\,
      I1 => curr(3),
      I2 => curr(2),
      O => \rID2[4]_i_2_n_0\
    );
\rID2[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => en,
      I1 => rst,
      O => \rID2[4]_i_3_n_0\
    );
\rID2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID2[4]_i_1_n_0\,
      D => \rID2[0]_i_1_n_0\,
      Q => rID2(0),
      R => '0'
    );
\rID2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID2[4]_i_1_n_0\,
      D => \rID2[1]_i_1_n_0\,
      Q => rID2(1),
      R => '0'
    );
\rID2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID2[4]_i_1_n_0\,
      D => \rID2[2]_i_1_n_0\,
      Q => rID2(2),
      R => '0'
    );
\rID2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID2[4]_i_1_n_0\,
      D => \rID2[3]_i_1_n_0\,
      Q => rID2(3),
      R => '0'
    );
\rID2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \rID2[4]_i_1_n_0\,
      D => \rID2[4]_i_2_n_0\,
      Q => rID2(4),
      R => '0'
    );
\reg1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFD00"
    )
        port map (
      I0 => curr(2),
      I1 => curr(0),
      I2 => \inst_reg_n_0_[22]\,
      I3 => \reg1[4]_i_2_n_0\,
      I4 => \reg1_reg_n_0_[0]\,
      O => \reg1[0]_i_1_n_0\
    );
\reg1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088000000400"
    )
        port map (
      I0 => curr(2),
      I1 => \rID2[4]_i_3_n_0\,
      I2 => curr(1),
      I3 => curr(3),
      I4 => curr(4),
      I5 => curr(0),
      O => \reg1[4]_i_1_n_0\
    );
\reg1[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0330000000100000"
    )
        port map (
      I0 => curr(0),
      I1 => curr(4),
      I2 => curr(3),
      I3 => curr(1),
      I4 => \rID2[4]_i_3_n_0\,
      I5 => curr(2),
      O => \reg1[4]_i_2_n_0\
    );
\reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \reg1[0]_i_1_n_0\,
      Q => \reg1_reg_n_0_[0]\,
      R => '0'
    );
\reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg1[4]_i_2_n_0\,
      D => \inst_reg_n_0_[23]\,
      Q => \reg1_reg_n_0_[1]\,
      R => \reg1[4]_i_1_n_0\
    );
\reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg1[4]_i_2_n_0\,
      D => \inst_reg_n_0_[24]\,
      Q => \reg1_reg_n_0_[2]\,
      R => \reg1[4]_i_1_n_0\
    );
\reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg1[4]_i_2_n_0\,
      D => \inst_reg_n_0_[25]\,
      Q => \reg1_reg_n_0_[3]\,
      R => \reg1[4]_i_1_n_0\
    );
\reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg1[4]_i_2_n_0\,
      D => \inst_reg_n_0_[26]\,
      Q => \reg1_reg_n_0_[4]\,
      R => \reg1[4]_i_1_n_0\
    );
\reg2[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000002000000"
    )
        port map (
      I0 => \rID2[4]_i_3_n_0\,
      I1 => curr(4),
      I2 => curr(0),
      I3 => curr(1),
      I4 => curr(2),
      I5 => curr(3),
      O => \reg2[4]_i_1_n_0\
    );
\reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => \inst_reg_n_0_[17]\,
      Q => \reg2_reg_n_0_[0]\,
      R => '0'
    );
\reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => \inst_reg_n_0_[18]\,
      Q => \reg2_reg_n_0_[1]\,
      R => '0'
    );
\reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => \inst_reg_n_0_[19]\,
      Q => \reg2_reg_n_0_[2]\,
      R => '0'
    );
\reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => \inst_reg_n_0_[20]\,
      Q => \reg2_reg_n_0_[3]\,
      R => '0'
    );
\reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => \inst_reg_n_0_[21]\,
      Q => \reg2_reg_n_0_[4]\,
      R => '0'
    );
\reg2_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(0),
      Q => reg2_val(0),
      R => '0'
    );
\reg2_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(10),
      Q => reg2_val(10),
      R => '0'
    );
\reg2_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(11),
      Q => reg2_val(11),
      R => '0'
    );
\reg2_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(12),
      Q => reg2_val(12),
      R => '0'
    );
\reg2_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(13),
      Q => reg2_val(13),
      R => '0'
    );
\reg2_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(14),
      Q => reg2_val(14),
      R => '0'
    );
\reg2_val_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(15),
      Q => reg2_val(15),
      R => '0'
    );
\reg2_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(1),
      Q => reg2_val(1),
      R => '0'
    );
\reg2_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(2),
      Q => reg2_val(2),
      R => '0'
    );
\reg2_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(3),
      Q => reg2_val(3),
      R => '0'
    );
\reg2_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(4),
      Q => reg2_val(4),
      R => '0'
    );
\reg2_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(5),
      Q => reg2_val(5),
      R => '0'
    );
\reg2_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(6),
      Q => reg2_val(6),
      R => '0'
    );
\reg2_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(7),
      Q => reg2_val(7),
      R => '0'
    );
\reg2_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(8),
      Q => reg2_val(8),
      R => '0'
    );
\reg2_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg2[4]_i_1_n_0\,
      D => regrD1(9),
      Q => reg2_val(9),
      R => '0'
    );
\reg3[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \reg3[4]_i_2_n_0\,
      I1 => curr(0),
      I2 => curr(4),
      I3 => rst,
      I4 => en,
      O => \reg3[4]_i_1_n_0\
    );
\reg3[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => curr(3),
      I1 => curr(2),
      I2 => curr(1),
      O => \reg3[4]_i_2_n_0\
    );
\reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3[4]_i_1_n_0\,
      D => p_0_in(0),
      Q => \reg3_reg_n_0_[0]\,
      R => '0'
    );
\reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3[4]_i_1_n_0\,
      D => p_0_in(1),
      Q => \reg3_reg_n_0_[1]\,
      R => '0'
    );
\reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3[4]_i_1_n_0\,
      D => p_0_in(2),
      Q => \reg3_reg_n_0_[2]\,
      R => '0'
    );
\reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3[4]_i_1_n_0\,
      D => p_0_in(3),
      Q => \reg3_reg_n_0_[3]\,
      R => '0'
    );
\reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3[4]_i_1_n_0\,
      D => p_0_in(4),
      Q => \reg3_reg_n_0_[4]\,
      R => '0'
    );
reg3_val0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => reg3_val0_carry_n_0,
      CO(2) => reg3_val0_carry_n_1,
      CO(1) => reg3_val0_carry_n_2,
      CO(0) => reg3_val0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => reg2_val(3 downto 0),
      O(3 downto 0) => in23(3 downto 0),
      S(3) => reg3_val0_carry_i_1_n_0,
      S(2) => reg3_val0_carry_i_2_n_0,
      S(1) => reg3_val0_carry_i_3_n_0,
      S(0) => reg3_val0_carry_i_4_n_0
    );
\reg3_val0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => reg3_val0_carry_n_0,
      CO(3) => \reg3_val0_carry__0_n_0\,
      CO(2) => \reg3_val0_carry__0_n_1\,
      CO(1) => \reg3_val0_carry__0_n_2\,
      CO(0) => \reg3_val0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg2_val(7 downto 4),
      O(3 downto 0) => in23(7 downto 4),
      S(3) => \reg3_val0_carry__0_i_1_n_0\,
      S(2) => \reg3_val0_carry__0_i_2_n_0\,
      S(1) => \reg3_val0_carry__0_i_3_n_0\,
      S(0) => \reg3_val0_carry__0_i_4_n_0\
    );
\reg3_val0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(7),
      I1 => imm(7),
      O => \reg3_val0_carry__0_i_1_n_0\
    );
\reg3_val0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(6),
      I1 => imm(6),
      O => \reg3_val0_carry__0_i_2_n_0\
    );
\reg3_val0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(5),
      I1 => imm(5),
      O => \reg3_val0_carry__0_i_3_n_0\
    );
\reg3_val0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(4),
      I1 => imm(4),
      O => \reg3_val0_carry__0_i_4_n_0\
    );
\reg3_val0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg3_val0_carry__0_n_0\,
      CO(3) => \reg3_val0_carry__1_n_0\,
      CO(2) => \reg3_val0_carry__1_n_1\,
      CO(1) => \reg3_val0_carry__1_n_2\,
      CO(0) => \reg3_val0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => reg2_val(11 downto 8),
      O(3 downto 0) => in23(11 downto 8),
      S(3) => \reg3_val0_carry__1_i_1_n_0\,
      S(2) => \reg3_val0_carry__1_i_2_n_0\,
      S(1) => \reg3_val0_carry__1_i_3_n_0\,
      S(0) => \reg3_val0_carry__1_i_4_n_0\
    );
\reg3_val0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(11),
      I1 => imm(11),
      O => \reg3_val0_carry__1_i_1_n_0\
    );
\reg3_val0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(10),
      I1 => imm(10),
      O => \reg3_val0_carry__1_i_2_n_0\
    );
\reg3_val0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(9),
      I1 => imm(9),
      O => \reg3_val0_carry__1_i_3_n_0\
    );
\reg3_val0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(8),
      I1 => imm(8),
      O => \reg3_val0_carry__1_i_4_n_0\
    );
\reg3_val0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \reg3_val0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_reg3_val0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \reg3_val0_carry__2_n_2\,
      CO(0) => \reg3_val0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => reg2_val(13 downto 12),
      O(3) => \NLW_reg3_val0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => in23(14 downto 12),
      S(3) => '0',
      S(2) => \reg3_val0_carry__2_i_1_n_0\,
      S(1) => \reg3_val0_carry__2_i_2_n_0\,
      S(0) => \reg3_val0_carry__2_i_3_n_0\
    );
\reg3_val0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(14),
      I1 => imm(14),
      O => \reg3_val0_carry__2_i_1_n_0\
    );
\reg3_val0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(13),
      I1 => imm(13),
      O => \reg3_val0_carry__2_i_2_n_0\
    );
\reg3_val0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(12),
      I1 => imm(12),
      O => \reg3_val0_carry__2_i_3_n_0\
    );
reg3_val0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(3),
      I1 => imm(3),
      O => reg3_val0_carry_i_1_n_0
    );
reg3_val0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(2),
      I1 => imm(2),
      O => reg3_val0_carry_i_2_n_0
    );
reg3_val0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(1),
      I1 => imm(1),
      O => reg3_val0_carry_i_3_n_0
    );
reg3_val0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => reg2_val(0),
      I1 => imm(0),
      O => reg3_val0_carry_i_4_n_0
    );
\reg3_val[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(0),
      I1 => curr(2),
      I2 => in23(0),
      O => reg3_val(0)
    );
\reg3_val[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(10),
      I1 => curr(2),
      I2 => in23(10),
      O => reg3_val(10)
    );
\reg3_val[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(11),
      I1 => curr(2),
      I2 => in23(11),
      O => reg3_val(11)
    );
\reg3_val[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(12),
      I1 => curr(2),
      I2 => in23(12),
      O => reg3_val(12)
    );
\reg3_val[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(13),
      I1 => curr(2),
      I2 => in23(13),
      O => reg3_val(13)
    );
\reg3_val[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220000000000"
    )
        port map (
      I0 => \rID2[4]_i_3_n_0\,
      I1 => curr(4),
      I2 => curr(0),
      I3 => curr(1),
      I4 => curr(2),
      I5 => curr(3),
      O => \reg3_val[14]_i_1_n_0\
    );
\reg3_val[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(14),
      I1 => curr(2),
      I2 => in23(14),
      O => reg3_val(14)
    );
\reg3_val[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(1),
      I1 => curr(2),
      I2 => in23(1),
      O => reg3_val(1)
    );
\reg3_val[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(2),
      I1 => curr(2),
      I2 => in23(2),
      O => reg3_val(2)
    );
\reg3_val[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(3),
      I1 => curr(2),
      I2 => in23(3),
      O => reg3_val(3)
    );
\reg3_val[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(4),
      I1 => curr(2),
      I2 => in23(4),
      O => reg3_val(4)
    );
\reg3_val[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(5),
      I1 => curr(2),
      I2 => in23(5),
      O => reg3_val(5)
    );
\reg3_val[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(6),
      I1 => curr(2),
      I2 => in23(6),
      O => reg3_val(6)
    );
\reg3_val[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(7),
      I1 => curr(2),
      I2 => in23(7),
      O => reg3_val(7)
    );
\reg3_val[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(8),
      I1 => curr(2),
      I2 => in23(8),
      O => reg3_val(8)
    );
\reg3_val[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => regrD2(9),
      I1 => curr(2),
      I2 => in23(9),
      O => reg3_val(9)
    );
\reg3_val_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(0),
      Q => \reg3_val_reg_n_0_[0]\,
      R => '0'
    );
\reg3_val_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(10),
      Q => \reg3_val_reg_n_0_[10]\,
      R => '0'
    );
\reg3_val_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(11),
      Q => \reg3_val_reg_n_0_[11]\,
      R => '0'
    );
\reg3_val_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(12),
      Q => \reg3_val_reg_n_0_[12]\,
      R => '0'
    );
\reg3_val_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(13),
      Q => \reg3_val_reg_n_0_[13]\,
      R => '0'
    );
\reg3_val_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(14),
      Q => \reg3_val_reg_n_0_[14]\,
      R => '0'
    );
\reg3_val_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(1),
      Q => \reg3_val_reg_n_0_[1]\,
      R => '0'
    );
\reg3_val_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(2),
      Q => \reg3_val_reg_n_0_[2]\,
      R => '0'
    );
\reg3_val_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(3),
      Q => \reg3_val_reg_n_0_[3]\,
      R => '0'
    );
\reg3_val_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(4),
      Q => \reg3_val_reg_n_0_[4]\,
      R => '0'
    );
\reg3_val_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(5),
      Q => \reg3_val_reg_n_0_[5]\,
      R => '0'
    );
\reg3_val_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(6),
      Q => \reg3_val_reg_n_0_[6]\,
      R => '0'
    );
\reg3_val_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(7),
      Q => \reg3_val_reg_n_0_[7]\,
      R => '0'
    );
\reg3_val_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(8),
      Q => \reg3_val_reg_n_0_[8]\,
      R => '0'
    );
\reg3_val_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \reg3_val[14]_i_1_n_0\,
      D => reg3_val(9),
      Q => \reg3_val_reg_n_0_[9]\,
      R => '0'
    );
\regwD1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00B1B1"
    )
        port map (
      I0 => curr(4),
      I1 => \pc_reg_n_0_[0]\,
      I2 => aluResult(0),
      I3 => imm(0),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(0)
    );
\regwD1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(10),
      I2 => aluResult(10),
      I3 => imm(10),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(10)
    );
\regwD1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(11),
      I2 => aluResult(11),
      I3 => imm(11),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(11)
    );
\regwD1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(12),
      I2 => aluResult(12),
      I3 => imm(12),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(12)
    );
\regwD1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(13),
      I2 => aluResult(13),
      I3 => imm(13),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(13)
    );
\regwD1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(14),
      I2 => aluResult(14),
      I3 => imm(14),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(14)
    );
\regwD1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000101040"
    )
        port map (
      I0 => curr(3),
      I1 => curr(4),
      I2 => en,
      I3 => curr(0),
      I4 => curr(2),
      I5 => curr(1),
      O => \regwD1[15]_i_1_n_0\
    );
\regwD1[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(15),
      I2 => aluResult(15),
      I3 => imm(15),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(15)
    );
\regwD1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(1),
      I2 => aluResult(1),
      I3 => imm(1),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(1)
    );
\regwD1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(2),
      I2 => aluResult(2),
      I3 => imm(2),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(2)
    );
\regwD1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(3),
      I2 => aluResult(3),
      I3 => imm(3),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(3)
    );
\regwD1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(4),
      I2 => aluResult(4),
      I3 => imm(4),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(4)
    );
\regwD1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(5),
      I2 => aluResult(5),
      I3 => imm(5),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(5)
    );
\regwD1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(6),
      I2 => aluResult(6),
      I3 => imm(6),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(6)
    );
\regwD1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(7),
      I2 => aluResult(7),
      I3 => imm(7),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(7)
    );
\regwD1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(8),
      I2 => aluResult(8),
      I3 => imm(8),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(8)
    );
\regwD1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00FF00E4E4"
    )
        port map (
      I0 => curr(4),
      I1 => in9(9),
      I2 => aluResult(9),
      I3 => imm(9),
      I4 => curr(1),
      I5 => curr(2),
      O => regwD1_2(9)
    );
\regwD1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(0),
      Q => regwD1(0),
      R => rst
    );
\regwD1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(10),
      Q => regwD1(10),
      R => rst
    );
\regwD1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(11),
      Q => regwD1(11),
      R => rst
    );
\regwD1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(12),
      Q => regwD1(12),
      R => rst
    );
\regwD1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(13),
      Q => regwD1(13),
      R => rst
    );
\regwD1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(14),
      Q => regwD1(14),
      R => rst
    );
\regwD1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(15),
      Q => regwD1(15),
      R => rst
    );
\regwD1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(1),
      Q => regwD1(1),
      R => rst
    );
\regwD1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(2),
      Q => regwD1(2),
      R => rst
    );
\regwD1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(3),
      Q => regwD1(3),
      R => rst
    );
\regwD1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(4),
      Q => regwD1(4),
      R => rst
    );
\regwD1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(5),
      Q => regwD1(5),
      R => rst
    );
\regwD1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(6),
      Q => regwD1(6),
      R => rst
    );
\regwD1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(7),
      Q => regwD1(7),
      R => rst
    );
\regwD1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(8),
      Q => regwD1(8),
      R => rst
    );
\regwD1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD1[15]_i_1_n_0\,
      D => regwD1_2(9),
      Q => regwD1(9),
      R => rst
    );
\regwD2[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => curr(1),
      I1 => en,
      I2 => rst,
      I3 => \rID1[0]_i_3_n_0\,
      I4 => curr(0),
      I5 => curr(2),
      O => \regwD2[15]_i_1_n_0\
    );
\regwD2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(0),
      Q => regwD2(0),
      R => '0'
    );
\regwD2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(10),
      Q => regwD2(10),
      R => '0'
    );
\regwD2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(11),
      Q => regwD2(11),
      R => '0'
    );
\regwD2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(12),
      Q => regwD2(12),
      R => '0'
    );
\regwD2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(13),
      Q => regwD2(13),
      R => '0'
    );
\regwD2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(14),
      Q => regwD2(14),
      R => '0'
    );
\regwD2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(15),
      Q => regwD2(15),
      R => '0'
    );
\regwD2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(1),
      Q => regwD2(1),
      R => '0'
    );
\regwD2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(2),
      Q => regwD2(2),
      R => '0'
    );
\regwD2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(3),
      Q => regwD2(3),
      R => '0'
    );
\regwD2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(4),
      Q => regwD2(4),
      R => '0'
    );
\regwD2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(5),
      Q => regwD2(5),
      R => '0'
    );
\regwD2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(6),
      Q => regwD2(6),
      R => '0'
    );
\regwD2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(7),
      Q => regwD2(7),
      R => '0'
    );
\regwD2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(8),
      Q => regwD2(8),
      R => '0'
    );
\regwD2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \regwD2[15]_i_1_n_0\,
      D => regrD1(9),
      Q => regwD2(9),
      R => '0'
    );
send_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00400000"
    )
        port map (
      I0 => curr(0),
      I1 => en,
      I2 => wr_enR1_i_3_n_0,
      I3 => curr(2),
      I4 => curr(1),
      I5 => \^send\,
      O => send_i_1_n_0
    );
send_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => send_i_1_n_0,
      Q => \^send\,
      R => rst
    );
wr_enR1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => wr_enR1_i_2_n_0,
      I1 => wr_enR1_i_3_n_0,
      I2 => curr(1),
      I3 => \rID1[0]_i_2_n_0\,
      I4 => wr_enR15_out,
      I5 => \^wr_enr1\,
      O => wr_enR1_i_1_n_0
    );
wr_enR1_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr(0),
      I1 => curr(4),
      O => wr_enR1_i_2_n_0
    );
wr_enR1_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => curr(4),
      I1 => curr(3),
      O => wr_enR1_i_3_n_0
    );
wr_enR1_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044000C0004084C"
    )
        port map (
      I0 => curr(2),
      I1 => en,
      I2 => curr(4),
      I3 => curr(3),
      I4 => curr(0),
      I5 => curr(1),
      O => wr_enR15_out
    );
wr_enR1_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => wr_enR1_i_1_n_0,
      Q => \^wr_enr1\,
      S => rst
    );
wr_enR2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7777577744445444"
    )
        port map (
      I0 => curr(4),
      I1 => wr_enR2_i_2_n_0,
      I2 => wr_enR2_i_3_n_0,
      I3 => en,
      I4 => curr(1),
      I5 => \^wr_enr2\,
      O => wr_enR2_i_1_n_0
    );
wr_enR2_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => en,
      I1 => curr(4),
      I2 => curr(3),
      I3 => curr(2),
      I4 => curr(0),
      I5 => curr(1),
      O => wr_enR2_i_2_n_0
    );
wr_enR2_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => curr(2),
      I1 => curr(0),
      I2 => curr(4),
      I3 => curr(3),
      O => wr_enR2_i_3_n_0
    );
wr_enR2_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => wr_enR2_i_1_n_0,
      Q => \^wr_enr2\,
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design_controls_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    rID1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    rID2 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_enR1 : out STD_LOGIC;
    wr_enR2 : out STD_LOGIC;
    regrD1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regrD2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    regwD2 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    fbRST : out STD_LOGIC;
    fbAddr1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    fbWrEn : out STD_LOGIC;
    fbDin1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fbDout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    irAddr : out STD_LOGIC_VECTOR ( 13 downto 0 );
    irWord : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dAddr : out STD_LOGIC_VECTOR ( 14 downto 0 );
    d_wr_en : out STD_LOGIC;
    dOut : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dIn : in STD_LOGIC_VECTOR ( 15 downto 0 );
    aluA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluB : out STD_LOGIC_VECTOR ( 15 downto 0 );
    aluOp : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aluResult : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ready : in STD_LOGIC;
    newChar : in STD_LOGIC;
    send : out STD_LOGIC;
    charRec : in STD_LOGIC_VECTOR ( 7 downto 0 );
    charSend : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of processor_design_controls_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of processor_design_controls_0_0 : entity is "processor_design_controls_0_0,controls,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of processor_design_controls_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of processor_design_controls_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of processor_design_controls_0_0 : entity is "controls,Vivado 2018.2";
end processor_design_controls_0_0;

architecture STRUCTURE of processor_design_controls_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^aluop\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, PHASE 0.000";
  attribute x_interface_info of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute x_interface_parameter of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW";
begin
  aluOp(3) <= \^aluop\(0);
  aluOp(2) <= \<const0>\;
  aluOp(1) <= \<const0>\;
  aluOp(0) <= \^aluop\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.processor_design_controls_0_0_controls
     port map (
      aluA(15 downto 0) => aluA(15 downto 0),
      aluB(15 downto 0) => aluB(15 downto 0),
      aluOp(0) => \^aluop\(0),
      aluResult(15 downto 0) => aluResult(15 downto 0),
      charRec(7 downto 0) => charRec(7 downto 0),
      charSend(7 downto 0) => charSend(7 downto 0),
      clk => clk,
      dAddr(14 downto 0) => dAddr(14 downto 0),
      dIn(15 downto 0) => dIn(15 downto 0),
      dOut(15 downto 0) => dOut(15 downto 0),
      d_wr_en => d_wr_en,
      en => en,
      fbAddr1(11 downto 0) => fbAddr1(11 downto 0),
      fbDin1(15 downto 0) => fbDin1(15 downto 0),
      fbDout1(15 downto 0) => fbDout1(15 downto 0),
      fbRST => fbRST,
      fbWrEn => fbWrEn,
      irAddr(13 downto 0) => irAddr(13 downto 0),
      irWord(30 downto 0) => irWord(31 downto 1),
      newChar => newChar,
      rID1(4 downto 0) => rID1(4 downto 0),
      rID2(4 downto 0) => rID2(4 downto 0),
      ready => ready,
      regrD1(15 downto 0) => regrD1(15 downto 0),
      regrD2(15 downto 0) => regrD2(15 downto 0),
      regwD1(15 downto 0) => regwD1(15 downto 0),
      regwD2(15 downto 0) => regwD2(15 downto 0),
      rst => rst,
      send => send,
      wr_enR1 => wr_enR1,
      wr_enR2 => wr_enR2
    );
end STRUCTURE;
