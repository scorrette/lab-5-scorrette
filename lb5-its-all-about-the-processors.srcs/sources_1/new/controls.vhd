----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/08/2021 11:02:39 PM
-- Design Name: 
-- Module Name: controls - fsm
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity controls is
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
end controls;

architecture fsm of controls is
    type state is (fetch, decode, Rops, Iops, Jops, calc, store, jr,
                   recv_asip, rpix_asip, wpix_asip, send_asip, equals,
                   nequal, ori, lw, sw, jmp, jal, clrscr, finish);
    signal curr : state := fetch;
    signal pc, imm, reg2_val, reg3_val : std_logic_vector(15 downto 0);
    signal inst : std_logic_vector(31 downto 0);
    signal op, reg1, reg2, reg3 : std_logic_vector(4 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                curr <= fetch;
                d_wr_en <= '0';
                wr_enR2 <= '0';
                fbRST <= '0';
                fbWrEn <= '0';
                send <= '0';
                rID1 <= "00001";
                regwD1 <= (others => '0');
                wr_enR1 <= '1';
            elsif en = '1' then
                case curr is
                    when fetch =>
                        wr_enR1 <= '0';
                        
                        rID1 <= "00001";
                        pc <= regrD1;
                        
                        curr <= decode;
                    when decode =>
                        irAddr <= pc(13 downto 0);
                        inst <= irWord;
                        
                        rID1 <= "00001";
                        regwD1 <= std_logic_vector(unsigned(pc) + 1);
                        wr_enR1 <= '1';
                        
                        if inst(31 downto 30) = "11" then
                            curr <= Jops;
                        elsif inst(31 downto 30) = "10" then
                            curr <= Iops;
                        else
                            curr <= Rops;
                        end if;
                    when Jops =>
                        wr_enR1 <= '0';
                        
                        op <= inst(31 downto 27);
                        imm <= inst(26 downto 11);
                        
                        case op is
                            when "11000" =>
                                curr <= jmp;
                            when "11001" =>
                                curr <= jal;
                            when others =>
                                curr <= clrscr;
                        end case;
                    when jmp =>
                        rID1 <= "00001";
                        regwD1 <= imm;
                        wr_enR1 <= '1';
                        
                        curr <= finish;
                    when jal =>
                        rID1 <= "00001";
                        rID2 <= "00010";
                        regwD2 <= regrD1;
                        wr_enR2 <= '1';
                        regwD1 <= imm;
                        wr_enR1 <= '1';
                        
                        curr <= finish;
                    when clrscr =>
                        fbRST <= '1';
                        
                        curr <= finish;
                    when Iops =>
                        wr_enR1 <= '0';
                        
                        op <= inst(31 downto 27);
                        reg1 <= inst(26 downto 22);
                        reg2 <= inst(21 downto 17);
                        imm <= inst(16 downto 1);
                        
                        rID1 <= reg2;
                        reg2_val <= regrD1;
                        
                        case op(2 downto 0) is
                            when "000" =>
                                curr <= equals;
                            when "001" =>
                                curr <= nequal;
                            when "010" =>
                                curr <= ori;
                            when "011" =>
                                curr <= lw;
                            when others =>
                                curr <= sw;
                        end case;
                    when equals =>
                        rID1 <= reg1;
                        rID2 <= "00001";
                        
                        if reg2_val = regrD1 then
                            aluA <= imm;
                        else
                            aluA <= regrD2;
                        end if;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        reg1 <= "00001";
                        curr <= store;
                    when nequal =>
                        rID1 <= reg1;
                        rID2 <= "00001";
                        
                        if reg2_val /= regrD1 then
                            aluA <= imm;
                        else
                            aluA <= regrD2;
                        end if;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        reg1 <= "00001";
                        curr <= store;
                    when ori =>
                        aluA <= reg2_val;
                        aluB <= imm;
                        aluOp <= "1001";
                        
                        curr <= store;
                    when lw =>
                        reg3_val <= std_logic_vector(unsigned(reg2_val) + unsigned(imm));
                        dAddr <= reg3_val(14 downto 0);
                        
                        aluA <= dIn;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        curr <= store;
                    when sw =>
                        reg3_val <= std_logic_vector(unsigned(reg2_val) + unsigned(imm));
                        dAddr <= reg3_val(14 downto 0);
                        
                        rID1 <= reg1;
                        dOut <= regrD1;
                        d_wr_en <= '1';
                        
                        curr <= finish;
                    when Rops =>
                        wr_enR1 <= '0';
                        
                        op <= inst(31 downto 27);
                        reg1 <= inst(26 downto 22);
                        reg2 <= inst(21 downto 17);
                        reg3 <= inst(16 downto 12);
                        
                        rID1 <= reg2;
                        rID2 <= reg3;
                        reg2_val <= regrD1;
                        reg3_val <= regrD2;
                        
                        case op is
                            when "01101" =>
                                curr <= jr;
                            when "01100" =>
                                curr <= recv_asip;
                            when "01111" =>
                                curr <= rpix_asip;
                            when "01110" =>
                                curr <= wpix_asip;
                            when "01011" =>
                                curr <= send_asip;
                            when others =>
                                curr <= calc;
                        end case;
                    when jr =>
                        rID1 <= reg1;
                        
                        aluA <= regrD1;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        reg1 <= "00001";
                        curr <= store;
                    when recv_asip =>
                        aluA <= "00000000" & charRec;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        if newChar = '0' then
                            curr <= recv_asip;
                        else
                            curr <= store;
                        end if;
                    when rpix_asip =>
                        fbAddr1 <= reg2_val(11 downto 0);
                        
                        aluA <= fbDin1;
                        aluB <= (others => '0');
                        aluOp <= (others => '0');
                        
                        curr <= store;
                    when wpix_asip =>
                        rID1 <= reg1;
                        
                        fbAddr1 <= regrD1(11 downto 0);
                        fbDout1 <= reg2_val;
                        fbWrEn <= '1';
                        
                        curr <= finish;
                    when send_asip =>
                        send <= '1';
                        
                        rID1 <= reg1;
                        charSend <= regrD1(7 downto 0);
                        
                        if ready = '1' then
                            curr <= finish;
                        else
                            curr <= send_asip;
                        end if;
                    when store =>
                        rID1 <= reg1;
                        regwD1 <= aluResult;
                        wr_enR1 <= '1';
                        
                        curr <= finish;
                    when finish =>
                        d_wr_en <= '0';
                        wr_enR1 <= '0';
                        wr_enR2 <= '0';
                        fbRST <= '0';
                        fbWrEn <= '0';
                        send <= '0';
                        
                        curr <= fetch;
                    when others =>
                        curr <= fetch;
                end case;
            end if;
        end if;
    end process;
end fsm;
