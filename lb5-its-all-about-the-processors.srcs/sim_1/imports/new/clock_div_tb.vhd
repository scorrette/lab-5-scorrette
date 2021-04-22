----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/19/2021 05:56:24 PM
-- Design Name: 
-- Module Name: clock_div_tb - testbench
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

entity clock_div_tb is
end clock_div_tb;

architecture testbench of clock_div_tb is
    signal tb_clk : std_logic := '0';
    signal tb_div_0, tb_div_1 : std_logic;
    
    component clock_div is
        Generic ( div_int : integer := 62500000);
        Port ( clk : in std_logic;
               div : out std_logic );
    end component;
begin
    -- simulate a 125 Mhz clock
    clk_gen_proc: process
    begin
        wait for 4 ns;
        tb_clk <= '1';

        wait for 4 ns;
        tb_clk <= '0';
    end process clk_gen_proc;
    
    div_0 : clock_div
    generic map (div_int => 1085)
    port map (
        clk => tb_clk,
        div => tb_div_0
    );
    div_1 : clock_div
    generic map (div_int => 5)
    port map (
        clk => tb_clk,
        div => tb_div_1
    );
end testbench;
