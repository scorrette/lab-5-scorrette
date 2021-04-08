----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 12:49:26 PM
-- Design Name: 
-- Module Name: debounce - debounce
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

entity debounce is
    Port ( clk : in STD_LOGIC;
           btn : in STD_LOGIC;
           dbnc : out STD_LOGIC);
end debounce;

architecture debounce of debounce is
    signal btn_val : std_logic_vector(1 downto 0) := (others => '0');
    signal cnt : std_logic_vector(21 downto 0) := (others => '0');
    signal dbnc_val : std_logic := '0';
begin
    dbnc <= dbnc_val;
    
    process(clk)
    begin
        if rising_edge(clk) then
            btn_val(1) <= btn_val(0);
            btn_val(0) <= btn;
        
            if btn_val(1) = '1' and btn_val(0) = '1' then
                if unsigned(cnt) < 2499999 then
                    cnt <= std_logic_vector(unsigned(cnt) + 1);
                    dbnc_val <= '0';
                else
                    dbnc_val <= '1';
                end if;
            else
                cnt <= (others => '0');
                dbnc_val <= '0';
            end if;
        end if;
    end process;
end debounce;
