--Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
--Date        : Thu Apr 15 20:45:36 2021
--Host        : canis running 64-bit major release  (build 9200)
--Command     : generate_target processor_design.bd
--Design      : processor_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity processor_design is
  port (
    CTS : out STD_LOGIC;
    RTS : out STD_LOGIC;
    RXD : out STD_LOGIC;
    TXD : in STD_LOGIC;
    btn : in STD_LOGIC;
    clk : in STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of processor_design : entity is "processor_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=processor_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=11,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of processor_design : entity is "processor_design.hwdef";
end processor_design;

architecture STRUCTURE of processor_design is
  component processor_design_clock_div_0_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component processor_design_clock_div_0_0;
  component processor_design_debounce_0_0 is
  port (
    clk : in STD_LOGIC;
    btn : in STD_LOGIC;
    dbnc : out STD_LOGIC
  );
  end component processor_design_debounce_0_0;
  component processor_design_regs_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    rst : in STD_LOGIC;
    id1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    id2 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en1 : in STD_LOGIC;
    wr_en2 : in STD_LOGIC;
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    din2 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component processor_design_regs_0_0;
  component processor_design_clock_div_1_0 is
  port (
    clk : in STD_LOGIC;
    div : out STD_LOGIC
  );
  end component processor_design_clock_div_1_0;
  component processor_design_my_alu_0_0 is
  port (
    en : in STD_LOGIC;
    Opcode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    B : in STD_LOGIC_VECTOR ( 15 downto 0 );
    F : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component processor_design_my_alu_0_0;
  component processor_design_uart_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    send : in STD_LOGIC;
    rx : in STD_LOGIC;
    rst : in STD_LOGIC;
    charSend : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ready : out STD_LOGIC;
    tx : out STD_LOGIC;
    newChar : out STD_LOGIC;
    charRec : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component processor_design_uart_0_0;
  component processor_design_vga_ctrl_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    hcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vcount : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vid : out STD_LOGIC;
    hs : out STD_LOGIC;
    vs : out STD_LOGIC
  );
  end component processor_design_vga_ctrl_0_0;
  component processor_design_blk_mem_gen_0_1 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component processor_design_blk_mem_gen_0_1;
  component processor_design_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 14 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 15 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component processor_design_blk_mem_gen_1_0;
  component processor_design_controls_0_0 is
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
  end component processor_design_controls_0_0;
  component processor_design_hdmi_out_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    r : in STD_LOGIC_VECTOR ( 4 downto 0 );
    g : in STD_LOGIC_VECTOR ( 5 downto 0 );
    b : in STD_LOGIC_VECTOR ( 4 downto 0 );
    hs : in STD_LOGIC;
    vs : in STD_LOGIC;
    vid : in STD_LOGIC;
    hdmi_tx_clk_n : out STD_LOGIC;
    hdmi_tx_clk_p : out STD_LOGIC;
    hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
    hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component processor_design_hdmi_out_0_0;
  component processor_design_pixel_pusher_0_0 is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    vs : in STD_LOGIC;
    pixel : in STD_LOGIC_VECTOR ( 15 downto 0 );
    hcount : in STD_LOGIC_VECTOR ( 9 downto 0 );
    vid : in STD_LOGIC;
    r : out STD_LOGIC_VECTOR ( 4 downto 0 );
    b : out STD_LOGIC_VECTOR ( 4 downto 0 );
    g : out STD_LOGIC_VECTOR ( 5 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  end component processor_design_pixel_pusher_0_0;
  component processor_design_framebuffer_0_0 is
  port (
    clk1 : in STD_LOGIC;
    en1 : in STD_LOGIC;
    en2 : in STD_LOGIC;
    rst : in STD_LOGIC;
    addr1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addr2 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    wr_en1 : in STD_LOGIC;
    din1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    dout2 : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component processor_design_framebuffer_0_0;
  signal Net : STD_LOGIC;
  signal TXD_1 : STD_LOGIC;
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal btn_1 : STD_LOGIC;
  signal clock_div_0_div : STD_LOGIC;
  signal clock_div_1_div : STD_LOGIC;
  signal controls_0_aluA : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluB : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_aluOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal controls_0_charSend : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal controls_0_dAddr : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal controls_0_dOut : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_d_wr_en : STD_LOGIC;
  signal controls_0_fbAddr1 : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal controls_0_fbDout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_fbRST : STD_LOGIC;
  signal controls_0_fbWrEn : STD_LOGIC;
  signal controls_0_irAddr : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal controls_0_rID1 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_rID2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal controls_0_regwD1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_regwD2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal controls_0_send : STD_LOGIC;
  signal controls_0_wr_enR1 : STD_LOGIC;
  signal controls_0_wr_enR2 : STD_LOGIC;
  signal debounce_0_dbnc : STD_LOGIC;
  signal framebuffer_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal framebuffer_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal hdmi_out_0_hdmi_tx_clk_n : STD_LOGIC;
  signal hdmi_out_0_hdmi_tx_clk_p : STD_LOGIC;
  signal hdmi_out_0_hdmi_tx_n : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal hdmi_out_0_hdmi_tx_p : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal my_alu_0_F : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal pixel_pusher_0_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pixel_pusher_0_b : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal pixel_pusher_0_g : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal pixel_pusher_0_r : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal regs_0_dout1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal regs_0_dout2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal uart_0_charRec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal uart_0_newChar : STD_LOGIC;
  signal uart_0_ready : STD_LOGIC;
  signal uart_0_tx : STD_LOGIC;
  signal vga_ctrl_0_hcount : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal vga_ctrl_0_hs : STD_LOGIC;
  signal vga_ctrl_0_vid : STD_LOGIC;
  signal vga_ctrl_0_vs : STD_LOGIC;
  signal NLW_vga_ctrl_0_vcount_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  Net <= clk;
  RXD <= uart_0_tx;
  TXD_1 <= TXD;
  btn_1 <= btn;
  hdmi_tx_clk_n <= hdmi_out_0_hdmi_tx_clk_n;
  hdmi_tx_clk_p <= hdmi_out_0_hdmi_tx_clk_p;
  hdmi_tx_n(2 downto 0) <= hdmi_out_0_hdmi_tx_n(2 downto 0);
  hdmi_tx_p(2 downto 0) <= hdmi_out_0_hdmi_tx_p(2 downto 0);
  CTS <= 'Z';
  RTS <= 'Z';
blk_mem_gen_0: component processor_design_blk_mem_gen_0_1
     port map (
      addra(13 downto 0) => controls_0_irAddr(13 downto 0),
      clka => Net,
      douta(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
blk_mem_gen_1: component processor_design_blk_mem_gen_1_0
     port map (
      addra(14 downto 0) => controls_0_dAddr(14 downto 0),
      clka => Net,
      dina(15 downto 0) => controls_0_dOut(15 downto 0),
      douta(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      wea(0) => controls_0_d_wr_en
    );
clock_div_0: component processor_design_clock_div_0_0
     port map (
      clk => Net,
      div => clock_div_0_div
    );
clock_div_1: component processor_design_clock_div_1_0
     port map (
      clk => Net,
      div => clock_div_1_div
    );
controls_0: component processor_design_controls_0_0
     port map (
      aluA(15 downto 0) => controls_0_aluA(15 downto 0),
      aluB(15 downto 0) => controls_0_aluB(15 downto 0),
      aluOp(3 downto 0) => controls_0_aluOp(3 downto 0),
      aluResult(15 downto 0) => my_alu_0_F(15 downto 0),
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => Net,
      dAddr(14 downto 0) => controls_0_dAddr(14 downto 0),
      dIn(15 downto 0) => blk_mem_gen_1_douta(15 downto 0),
      dOut(15 downto 0) => controls_0_dOut(15 downto 0),
      d_wr_en => controls_0_d_wr_en,
      en => clock_div_0_div,
      fbAddr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      fbDin1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      fbDout1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      fbRST => controls_0_fbRST,
      fbWrEn => controls_0_fbWrEn,
      irAddr(13 downto 0) => controls_0_irAddr(13 downto 0),
      irWord(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      newChar => uart_0_newChar,
      rID1(4 downto 0) => controls_0_rID1(4 downto 0),
      rID2(4 downto 0) => controls_0_rID2(4 downto 0),
      ready => uart_0_ready,
      regrD1(15 downto 0) => regs_0_dout1(15 downto 0),
      regrD2(15 downto 0) => regs_0_dout2(15 downto 0),
      regwD1(15 downto 0) => controls_0_regwD1(15 downto 0),
      regwD2(15 downto 0) => controls_0_regwD2(15 downto 0),
      rst => debounce_0_dbnc,
      send => controls_0_send,
      wr_enR1 => controls_0_wr_enR1,
      wr_enR2 => controls_0_wr_enR2
    );
debounce_0: component processor_design_debounce_0_0
     port map (
      btn => btn_1,
      clk => Net,
      dbnc => debounce_0_dbnc
    );
framebuffer_0: component processor_design_framebuffer_0_0
     port map (
      addr1(11 downto 0) => controls_0_fbAddr1(11 downto 0),
      addr2(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      clk1 => Net,
      din1(15 downto 0) => controls_0_fbDout1(15 downto 0),
      dout1(15 downto 0) => framebuffer_0_dout1(15 downto 0),
      dout2(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      en1 => clock_div_0_div,
      en2 => clock_div_1_div,
      rst => controls_0_fbRST,
      wr_en1 => controls_0_fbWrEn
    );
hdmi_out_0: component processor_design_hdmi_out_0_0
     port map (
      b(4 downto 0) => pixel_pusher_0_b(4 downto 0),
      clk => Net,
      en => clock_div_1_div,
      g(5 downto 0) => pixel_pusher_0_g(5 downto 0),
      hdmi_tx_clk_n => hdmi_out_0_hdmi_tx_clk_n,
      hdmi_tx_clk_p => hdmi_out_0_hdmi_tx_clk_p,
      hdmi_tx_n(2 downto 0) => hdmi_out_0_hdmi_tx_n(2 downto 0),
      hdmi_tx_p(2 downto 0) => hdmi_out_0_hdmi_tx_p(2 downto 0),
      hs => vga_ctrl_0_hs,
      r(4 downto 0) => pixel_pusher_0_r(4 downto 0),
      vid => vga_ctrl_0_vid,
      vs => vga_ctrl_0_vs
    );
my_alu_0: component processor_design_my_alu_0_0
     port map (
      A(15 downto 0) => controls_0_aluA(15 downto 0),
      B(15 downto 0) => controls_0_aluB(15 downto 0),
      F(15 downto 0) => my_alu_0_F(15 downto 0),
      Opcode(3 downto 0) => controls_0_aluOp(3 downto 0),
      en => clock_div_0_div
    );
pixel_pusher_0: component processor_design_pixel_pusher_0_0
     port map (
      addr(11 downto 0) => pixel_pusher_0_addr(11 downto 0),
      b(4 downto 0) => pixel_pusher_0_b(4 downto 0),
      clk => Net,
      en => clock_div_1_div,
      g(5 downto 0) => pixel_pusher_0_g(5 downto 0),
      hcount(9 downto 0) => vga_ctrl_0_hcount(9 downto 0),
      pixel(15 downto 0) => framebuffer_0_dout2(15 downto 0),
      r(4 downto 0) => pixel_pusher_0_r(4 downto 0),
      vid => vga_ctrl_0_vid,
      vs => vga_ctrl_0_vs
    );
regs_0: component processor_design_regs_0_0
     port map (
      clk => Net,
      din1(15 downto 0) => controls_0_regwD1(15 downto 0),
      din2(15 downto 0) => controls_0_regwD2(15 downto 0),
      dout1(15 downto 0) => regs_0_dout1(15 downto 0),
      dout2(15 downto 0) => regs_0_dout2(15 downto 0),
      en => clock_div_0_div,
      id1(4 downto 0) => controls_0_rID1(4 downto 0),
      id2(4 downto 0) => controls_0_rID2(4 downto 0),
      rst => debounce_0_dbnc,
      wr_en1 => controls_0_wr_enR1,
      wr_en2 => controls_0_wr_enR2
    );
uart_0: component processor_design_uart_0_0
     port map (
      charRec(7 downto 0) => uart_0_charRec(7 downto 0),
      charSend(7 downto 0) => controls_0_charSend(7 downto 0),
      clk => Net,
      en => clock_div_0_div,
      newChar => uart_0_newChar,
      ready => uart_0_ready,
      rst => debounce_0_dbnc,
      rx => TXD_1,
      send => controls_0_send,
      tx => uart_0_tx
    );
vga_ctrl_0: component processor_design_vga_ctrl_0_0
     port map (
      clk => Net,
      en => clock_div_1_div,
      hcount(9 downto 0) => vga_ctrl_0_hcount(9 downto 0),
      hs => vga_ctrl_0_hs,
      vcount(9 downto 0) => NLW_vga_ctrl_0_vcount_UNCONNECTED(9 downto 0),
      vid => vga_ctrl_0_vid,
      vs => vga_ctrl_0_vs
    );
end STRUCTURE;
