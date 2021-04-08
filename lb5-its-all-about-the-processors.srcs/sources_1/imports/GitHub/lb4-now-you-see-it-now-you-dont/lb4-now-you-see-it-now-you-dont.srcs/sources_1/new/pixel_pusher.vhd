----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/22/2021 09:36:46 PM
-- Design Name: 
-- Module Name: pixel_pusher - Behavioral
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

entity pixel_pusher is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           vs : in STD_LOGIC;
           pixel : in STD_LOGIC_VECTOR (15 downto 0);
           hcount : in STD_LOGIC_VECTOR (9 downto 0);
           vid : in STD_LOGIC;
           r : out STD_LOGIC_VECTOR (2 downto 0);
           b : out STD_LOGIC_VECTOR (1 downto 0);
           g : out STD_LOGIC_VECTOR (2 downto 0);
           addr : out STD_LOGIC_VECTOR (11 downto 0));
end pixel_pusher;

architecture img64x64 of pixel_pusher is
    signal addr_count : std_logic_vector (17 downto 0) := (others => '0');
begin
    addr <= addr_count;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if vid = '1' and unsigned(hcount) < 64 then
                    addr_count <= std_logic_vector(unsigned(addr_count) + 1);
                elsif vs = '0' then
                    addr_count <= (others => '0');
                end if;
            end if;
        end if;
    end process;
    
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                if vid = '1' and unsigned(hcount) < 64 then
                    r <= pixel(15 downto 11);
                    g <= pixel(10 downto 5);
                    b <= pixel(4 downto 0);
                else
                    r <= (others => '0');
                    g <= (others => '0');
                    b <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end img64x64;
