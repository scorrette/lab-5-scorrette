----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2021 03:14:50 PM
-- Design Name: 
-- Module Name: framebuffer - Behavioral
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

entity framebuffer is
    port ( clk1 , en1 , en2 , rst : in std_logic;
           addr1 , addr2 : in std_logic_vector (11 downto 0);
           wr_en1 : in std_logic;
           din1 : in std_logic_vector (15 downto 0);
           dout1 , dout2 : out std_logic_vector (15 downto 0));
end framebuffer ;

architecture Behavioral of framebuffer is
    type buffmem is array (0 to 4095) of std_logic_vector(15 downto 0);
    signal mem : buffmem;
    type buffvld is array (0 to 4095) of std_logic_vector(0 downto 0);
    signal vld : buffvld := (others => (others => '0'));
begin
    process(clk1)
    begin
        if rising_edge(clk1) then
            if rst = '1' then
                vld <= (others => (others => '0'));
            elsif en1 = '1' then
                if wr_en1 = '1' then
                    mem(to_integer(unsigned(addr1))) <= din1;
                    vld(to_integer(unsigned(addr1))) <= "1";
                end if;
                if vld(to_integer(unsigned(addr1))) = "1" then
                    dout1 <= mem(to_integer(unsigned(addr1)));
                else
                    dout1 <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    process(clk1)
    begin
        if rising_edge(clk1) then
            if en2 = '1' then
                if vld(to_integer(unsigned(addr2))) = "1" then
                    dout2 <= mem(to_integer(unsigned(addr2)));
                else
                    dout2 <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;
