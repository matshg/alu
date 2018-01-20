----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 02:36:13 PM
-- Design Name: 
-- Module Name: aluc - Behavioral
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
USE ieee.std_logic_unsigned.all ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity aluc is
    Port ( s : in STD_LOGIC_VECTOR(2 downto 0);
           A, B : in STD_LOGIC_VECTOR(7 downto 0);
           F : out STD_LOGIC_VECTOR(7 downto 0)
           );
end aluc;

architecture Behavioral of aluc is

begin
    process(s, A, B)
    begin
        case s is
            when "000" =>
                F <= "00000000";
            when "001" =>
                F <= B - A;
            when "010" =>
                F <= A - B;
            when "011" =>
                F <= A + B;
            when "100" =>
                F <= A XOR B;
            when "101" =>
                F <= A OR B;
            when "110" =>
                F <= A AND B;
            when others =>
                F <= "11111111";
         end case;
      end process;
end Behavioral;
