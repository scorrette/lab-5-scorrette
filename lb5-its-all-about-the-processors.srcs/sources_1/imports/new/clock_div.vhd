----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2021 04:17:52 PM
-- Design Name: 
-- Module Name: clock_div - divider
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
use ieee.numeric_std.all;

entity clock_div is
  Generic ( div_int : integer := 62500000);
  Port ( clk : in std_logic;
         div : out std_logic );
end clock_div;

architecture divider of clock_div is
    function lg (X : integer) return integer is
        variable bit_cnt : integer := 0;
        variable div_int : integer := X - 1;
    begin
        while (div_int > 0) loop
            div_int := div_int / 2;
            bit_cnt := bit_cnt + 1;
        end loop;
        return bit_cnt;
    end lg;
    
    signal cnt : std_logic_vector( (lg(div_int) - 1) downto 0 ) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (unsigned(cnt) < (div_int - 1)) then
                cnt <= std_logic_vector(unsigned(cnt) + 1);
                div <= '0';
            else
                div <= '1';
                cnt <= (others => '0');                
            end if;
        end if;
    end process;
end divider;