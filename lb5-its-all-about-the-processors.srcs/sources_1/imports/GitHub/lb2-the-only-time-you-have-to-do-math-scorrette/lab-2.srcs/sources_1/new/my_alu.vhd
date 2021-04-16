----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/25/2021 10:01:51 PM
-- Design Name: 
-- Module Name: my_alu - alu4b
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

entity my_alu is
    Port ( en : in std_logic;
           Opcode : in STD_LOGIC_VECTOR (3 downto 0);
           A : in STD_LOGIC_VECTOR (15 downto 0);
           B : in STD_LOGIC_VECTOR (15 downto 0);
           F : out STD_LOGIC_VECTOR (15 downto 0));
end my_alu;

architecture alu16b of my_alu is
    function BOOL_TO_LV(X : boolean)
        return std_logic_vector is
        variable r_val : std_logic_vector(15 downto 0) := (others => '0');
    begin
        if X then
            return std_logic_vector(unsigned(r_val) + 1);
        else
            return r_val;
        end if;
    end BOOL_TO_LV;
    
    function twos_compliment(X : std_logic_vector)
        return std_logic_vector is
    begin
        return std_logic_vector(unsigned(not X) + 1);
    end twos_compliment;
begin
    process (en)
    begin
        case (Opcode) is
            when x"0" => F <= std_logic_vector(unsigned(A) + unsigned(B));
            when x"1" => F <= std_logic_vector(unsigned(A) - unsigned(B));
            when x"2" => F <= std_logic_vector(unsigned(A) + 1);
            when x"3" => F <= std_logic_vector(unsigned(A) - 1);
            when x"4" => F <= std_logic_vector(0 - unsigned(A));
            when x"5" => F <= BOOL_TO_LV(unsigned(A) > unsigned(B));
            when x"6" => F <= std_logic_vector(unsigned(A) sll 1);
            when x"7" => F <= std_logic_vector(unsigned(A) srl 1);
            when x"8" => F <= std_logic_vector(signed(A) srl 1);
            when x"9" => F <= not A;
            when x"A" => F <= A and B;
            when x"B" => F <= A or B;
            when x"C" => F <= A xor B;
            when x"D" => F <= A xnor B;
            when x"E" => F <= A nand B;
            when x"F" => F <= A nor B;
            when others => F <= (others => '0');
        end case;
    end process;

end alu16b;
