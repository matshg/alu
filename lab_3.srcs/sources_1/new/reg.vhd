----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 03:38:59 PM
-- Design Name: 
-- Module Name: reg - Behavioral
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

entity reg is
    Port ( d : in STD_LOGIC_VECTOR(7 downto 0);
           enable : in STD_LOGIC;
           clock : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR(7 downto 0)
           );
end reg;

architecture Behavioral of reg is

begin

process
begin 
    wait until clock'event and clock = '1';
    if enable = '1' then
        q <= d;
    end if;
 end process;
end Behavioral;
