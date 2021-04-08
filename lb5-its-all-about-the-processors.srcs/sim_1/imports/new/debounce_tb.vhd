----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2021 06:34:09 PM
-- Design Name: 
-- Module Name: debounce_tb - testbench
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

entity debounce_tb is
end debounce_tb;

architecture testbench of debounce_tb is
    component debounce is
        Port ( clk : in STD_LOGIC;
               btn : in STD_LOGIC;
               dbnc : out STD_LOGIC);
    end component;
    
    signal tb_clk, tb_btn : std_logic := '0';
    signal tb_dbnc : std_logic;
    signal bounce : std_logic_vector(29 downto 0);
begin
    gen_clk : process
    begin
        wait for 4 ns;
        tb_clk <= '1';
        
        wait for 4 ns;
        tb_clk <= '0';
    end process gen_clk;

    bounce <= "000000000111111111111000000000";
    gen_btn : process
    begin
        for i in bounce'low to bounce'high loop
            wait for 5 ms;
            tb_btn <= bounce(i);
        end loop;
    end process gen_btn;

    dut : debounce
    port map(
        clk => tb_clk,
        btn => tb_btn,
        dbnc => tb_dbnc
    );
end testbench;
