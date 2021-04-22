----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 09:38:10 PM
-- Design Name: 
-- Module Name: controls_tb - tb
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controls_tb is
end controls_tb;

architecture tb of controls_tb is
    component controls is
        port ( -- Timing Signals
               clk , en , rst : in std_logic;
           
               -- Register File IO
               rID1 , rID2 : out std_logic_vector (4 downto 0);
               wr_enR1 , wr_enR2 : out std_logic;
               regrD1 , regrD2 : in std_logic_vector (15 downto 0);
               regwD1 , regwD2 : out std_logic_vector (15 downto 0);
           
               -- Framebuffer IO
               fbRST : out std_logic ;
               fbAddr1 : out std_logic_vector (11 downto 0);
               fbWrEn : out std_logic;
               fbDin1 : in std_logic_vector (15 downto 0);
               fbDout1 : out std_logic_vector (15 downto 0);
           
               -- Instruction Memory IO
               irAddr : out std_logic_vector (13 downto 0);
               irWord : in std_logic_vector (31 downto 0);
           
               -- Data Memory IO
               dAddr : out std_logic_vector (14 downto 0);
               d_wr_en : out std_logic;
               dOut : out std_logic_vector (15 downto 0);
               dIn : in std_logic_vector (15 downto 0);
           
               -- ALU IO
               aluA , aluB : out std_logic_vector (15 downto 0);
               aluOp : out std_logic_vector (3 downto 0);
               aluResult : in std_logic_vector (15 downto 0);
           
               -- UART IO
               ready , newChar : in std_logic;
               send : out std_logic;
               charRec : in std_logic_vector (7 downto 0);
               charSend : out std_logic_vector (7 downto 0));
    end component;
    
    signal clk, en, rst, wr_enR1, wr_enR2, fbRST, fbWrEn, d_wr_en, ready , newChar, send : std_logic;
    signal rID1, rID2 : std_logic_vector (4 downto 0);
    signal regrD1, regrD2, regwD1, regwD2, fbDin1, fbDout1, dOut, dIn, aluA, aluB, aluResult : std_logic_vector (15 downto 0);
    signal fbAddr1 : std_logic_vector (11 downto 0);
    signal irAddr : std_logic_vector (13 downto 0);
    signal irWord : std_logic_vector (31 downto 0);
    signal dAddr : std_logic_vector (14 downto 0);
    signal aluOp : std_logic_vector (3 downto 0);
    signal charRec, charSend : std_logic_vector (7 downto 0);
begin
    init_stuff : process
    begin
        rst <= '0';
        regrD1 <= (others => '0');
        regrD2 <= (others => '0');
        fbDin1 <= (others => '0');
        irWord <= (others => '0');
        dIn <= (others => '0');
        aluResult <= (others => '0');
        charRec <= (others => '0');
        
        wait for 9000 ms;
    end process init_stuff;
    
    -- simulate a 125 Mhz clock
    clk_gen_proc: process
    begin
        wait for 4 ns;
        clk <= '1';

        wait for 4 ns;
        clk <= '0';
    end process clk_gen_proc;
    
    -- simulate a ~ 115200 Mhz clock
    en_gen_proc: process
    begin
        wait for 8.62 us;
        en <= '1';

        wait for 8.62 us;
        en <= '0';
    end process en_gen_proc;
    
    dut : controls
    port map(
        clk => clk,
        en => en,
        rst => rst,
        rID1 => rID1,
        rID2 => rID2,
        wr_enR1 => wr_enR1,
        wr_enR2 => wr_enR2,
        regrD1 => regrD1,
        regrD2 => regrD2,
        regwD1 => regwD1,
        regwD2 => regwD2,
        fbRST => fbRST,
        fbAddr1 => fbAddr1,
        fbWrEn => fbWrEn,
        fbDin1 => fbDin1, 
        fbDout1 => fbDout1,
        irAddr => irAddr,
        irWord => irWord,
        dAddr => dAddr,
        d_wr_en => d_wr_en,
        dOut => dOut,
        dIn => dIn,
        aluA => aluA,
        aluB => aluB,
        aluOp => aluOp,
        aluResult => aluResult,
        ready => ready,
        newChar => newChar,
        send => send,
        charRec => charRec,
        charSend => charSend
    );
end tb;
