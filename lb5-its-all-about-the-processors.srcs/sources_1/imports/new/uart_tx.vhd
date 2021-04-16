----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 12:35:22 PM
-- Design Name: 
-- Module Name: uart_tx - fsm
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

entity uart_tx is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           send : in STD_LOGIC;
           rst : in STD_LOGIC;
           char : in STD_LOGIC_VECTOR (7 downto 0);
           ready : out STD_LOGIC;
           tx : out STD_LOGIC);
end uart_tx;

architecture fsm of uart_tx is
    -- state type enumeration and state variable
    type state is (idle, start, data, stop);
    signal curr : state := idle;
    
    -- register to store data in
    signal d : std_logic_vector (7 downto 0) := ( others => '0');
    
    -- counter
    signal cnt : std_logic_vector (2 downto 0) := (others => '0');
begin
    process (clk, rst, en, send, char)
    begin
        if rising_edge(clk) then
            if rst = '1' then
                curr <= idle;
                d <= (others => '0');
                cnt <= (others => '0');
                ready <= '1';
                tx <= '1';
            elsif en = '1' then
                case curr is
                    when idle =>
                        if send = '1' then
                            tx <= '0';
                            ready <= '0';
                            d <= char;
                            curr <= start;
                        end if;
                    when start =>
                        tx <= d(0);
                        cnt <= (others => '0');
                        curr <= data;
                    when data =>
                        if unsigned(cnt) < 7 then
                            tx <= d(to_integer(unsigned(cnt) + 1));
                            cnt <= std_logic_vector(unsigned(cnt) + 1);
                        else
                            tx <= '1';
                            curr <= stop;
                        end if;
                    when stop =>
                        ready <= '1';
                        curr <= idle;
                    when others =>
                        curr <= idle;
                end case;
            end if;
        end if;
    end process;
end fsm;
