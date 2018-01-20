----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 04:09:11 PM
-- Design Name: 
-- Module Name: tri - Behavioral
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

entity tri is
    Port ( x : in STD_LOGIC_VECTOR(7 downto 0);
           s : in STD_LOGIC;
           y : out STD_LOGIC_VECTOR(7 downto 0)
           );
end tri;

architecture Behavioral of tri is

begin
y <= x when (s = '1') else "ZZZZZZZZ";

end Behavioral;
