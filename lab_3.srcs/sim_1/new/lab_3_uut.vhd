----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/15/2018 11:40:36 AM
-- Design Name: 
-- Module Name: lab_3_uut - Behavioral
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

entity lab_3_uut is

end lab_3_uut;

architecture Behavioral of lab_3_uut is
component lab_3
    Port ( datain : in STD_LOGIC_VECTOR(7 downto 0);
       regin_INN : in STD_LOGIC_VECTOR(1 downto 0);
       regout_INN : in STD_LOGIC_VECTOR(1 downto 0);
       alu_INN : in STD_LOGIC_VECTOR(2 downto 0);
       clock : in STD_LOGIC;
       dataout : out STD_LOGIC_VECTOR(7 downto 0)
       );
end component;

Signal in_datain: STD_LOGIC_VECTOR (7 downto 0) := "00000000";
Signal in_regin_inn: STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal in_regout_inn: STD_LOGIC_VECTOR (1 downto 0) := "00";
Signal in_alu_inn: STD_LOGIC_VECTOR (2 downto 0) := "000";
Signal in_enable: STD_LOGIC :='0';
Signal out_dataout: STD_LOGIC_VECTOR(7 downto 0) := "00000000";

begin
UUT: LAB_3 port map(
datain => in_datain,
regin_INN => in_regin_inn, 
regout_INN => in_regout_inn,
Alu_INN => in_alu_inn,
clock => in_enable, 
dataout => out_dataout
);

process
begin

in_datain <= "01010101";
in_regout_inn <= "11";
in_regin_inn <= "00";
in_enable <= '0';
wait for 20ns;
in_enable <= '1';
wait for 20ns;
in_enable <= '0';
wait for 20ns;
in_datain <= "01010111";
in_regin_inn <= "01";
in_enable <= '1';
wait for 20ns;
in_enable <= '0';
wait for 20ns;
in_regout_inn <= "00";
in_regin_inn <= "10";
in_enable <= '1';
wait for 20ns;
in_enable <= '0';
wait for 20ns;
in_regout_inn <= "01";
in_alu_inn <= "011";
in_regin_inn <= "11";
in_enable <= '1';
wait for 20ns;
in_enable <= '0';
wait for 20ns;
in_regout_inn <= "10";
wait for 20ns;

end
process;

end Behavioral;

