----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 11:58:03 PM
-- Design Name: 
-- Module Name: hdmi_out - Behavioral
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

entity hdmi_out is
    Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           r : in STD_LOGIC_VECTOR (4 downto 0);
           g : in STD_LOGIC_VECTOR (5 downto 0);
           b : in STD_LOGIC_VECTOR (4 downto 0);
           hs : in STD_LOGIC;
           vs : in STD_LOGIC;
           vid : in STD_LOGIC;
           hdmi_tx_clk_n : out STD_LOGIC;
           hdmi_tx_clk_p : out STD_LOGIC;
           hdmi_tx_n : out STD_LOGIC_VECTOR (2 downto 0);
           hdmi_tx_p : out STD_LOGIC_VECTOR (2 downto 0));
end hdmi_out;

architecture Behavioral of hdmi_out is
    component rgb2dvi_0 is
    Port ( aRst : in STD_LOGIC;
           PixelClk : in STD_LOGIC;
           SerialClk : in STD_LOGIC;
           vid_pData : in STD_LOGIC_VECTOR(23 downto 0);
           vid_pHSync : in STD_LOGIC;
           vid_pVSync : in STD_LOGIC;
           vid_pVDE : in STD_LOGIC;
           TMDS_Clk_p : out STD_LOGIC;
           TMDS_Clk_n : out STD_LOGIC;
           TMDS_Data_p : out STD_LOGIC_VECTOR(2 downto 0);
           TMDS_Data_n : out STD_LOGIC_VECTOR(2 downto 0));
    end component;
    
    signal rgb : std_logic_vector(23 downto 0);
    signal r8, g8, b8 : unsigned(7 downto 0);
begin
    r8 <= to_unsigned(to_integer(unsigned(r)) * 255 / 31, r8'length);
    g8 <= to_unsigned(to_integer(unsigned(g)) * 255 / 63, g8'length);
    b8 <= to_unsigned(to_integer(unsigned(b)) * 255 / 31, b8'length);
    rgb <= std_logic_vector(r8) & std_logic_vector(g8) & std_logic_vector(b8);

    vga2hdmi : rgb2dvi_0
    port map(
        aRst => '0',
        PixelClk => en,
        SerialClk => clk,
        vid_pData => rgb,
        vid_pHSync => hs,
        vid_pVSync => vs,
        vid_pVDE => vid,
        TMDS_Clk_p => hdmi_tx_clk_p,
        TMDS_Clk_n => hdmi_tx_clk_n,
        TMDS_Data_p => hdmi_tx_p,
        TMDS_Data_n => hdmi_tx_n
   );
end Behavioral;
