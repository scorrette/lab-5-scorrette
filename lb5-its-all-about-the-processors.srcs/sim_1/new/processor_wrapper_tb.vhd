----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/17/2021 10:30:02 PM
-- Design Name: 
-- Module Name: processor_wrapper_tb - tb
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

entity processor_wrapper_tb is
--  Port ( );
end processor_wrapper_tb;

architecture tb of processor_wrapper_tb is
    component processor_design_wrapper is
        port ( CTS : out STD_LOGIC;
               RTS : out STD_LOGIC;
               RXD : out STD_LOGIC;
               TXD : in STD_LOGIC;
               btn : in STD_LOGIC;
               clk : in STD_LOGIC;
               hdmi_tx_clk_n : out STD_LOGIC;
               hdmi_tx_clk_p : out STD_LOGIC;
               hdmi_tx_n : out STD_LOGIC_VECTOR ( 2 downto 0 );
               hdmi_tx_p : out STD_LOGIC_VECTOR ( 2 downto 0 ));
    end component;
    
    signal CTS, RTS, RXD, TXD, btn, clk, hdmi_tx_clk_n, hdmi_tx_clk_p : STD_LOGIC;
    signal hdmi_tx_n, hdmi_tx_p : STD_LOGIC_VECTOR (2 downto 0);
begin
    init_stuff : process
    begin
        btn <= '0';
        TXD <= '0';
    
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
    
    dut : processor_design_wrapper
    port map(
        CTS => CTS,
        RTS => RTS,
        RXD => RXD,
        TXD => TXD,
        btn => btn,
        clk => clk,
        hdmi_tx_clk_n => hdmi_tx_clk_n,
        hdmi_tx_clk_p => hdmi_tx_clk_p,
        hdmi_tx_n => hdmi_tx_n,
        hdmi_tx_p => hdmi_tx_p
    );
end tb;
