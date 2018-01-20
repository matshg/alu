----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 02:29:05 PM
-- Design Name: 
-- Module Name: regout - Behavioral
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

entity regout is
    Port ( x : in STD_LOGIC_VECTOR(1 downto 0);
           y : out STD_LOGIC_VECTOR(3 downto 0)
           );
end regout;

architecture Behavioral of regout is

begin
with x select
    y <= "0001" when "00",
         "0010" when "01",
         "0100" when "10",
         "1000" when "11",
         "0000" when others;

end Behavioral;
