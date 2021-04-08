----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/06/2021 02:56:33 PM
-- Design Name: 
-- Module Name: regs - Behavioral
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

entity regs is
    port ( clk, en, rst : in std_logic;
           id1, id2 : in std_logic_vector (4 downto 0); -- Addresses
           wr_en1, wr_en2 : in std_logic;
           din1, din2 : in std_logic_vector (15 downto 0);
           dout1, dout2 : out std_logic_vector (15 downto 0));
end regs ;

architecture Behavioral of regs is
    type regmem is array (0 to 31) of std_logic_vector(15 downto 0);
    signal mem : regmem;
begin
    dout1 <= mem(to_integer(unsigned(id1)));
    dout2 <= mem(to_integer(unsigned(id2)));

    process(clk)
    begin
        if rising_edge(clk) then
            mem(0) <= (others => '0');
        
            if rst = '1' then
                mem <= (others => (others => '0'));
            elsif en = '1' then
                if wr_en1 = '1' then
                    mem(to_integer(unsigned(id1))) <= din1;
                end if;
            
                if wr_en2 = '1' then
                    mem(to_integer(unsigned(id2))) <= din2; 
                end if;
            end if;
        end if;
    end process;
end Behavioral;
