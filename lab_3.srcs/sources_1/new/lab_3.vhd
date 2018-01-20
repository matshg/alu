----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01/11/2018 02:06:52 PM
-- Design Name: 
-- Module Name: lab_3 - Behavioral
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
use work.mycomponent.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity lab_3 is
    Port ( datain : in STD_LOGIC_VECTOR(7 downto 0);
           regin_INN : in STD_LOGIC_VECTOR(1 downto 0);
           regout_INN : in STD_LOGIC_VECTOR(1 downto 0);
           alu_INN : in STD_LOGIC_VECTOR(2 downto 0);
           clock : in STD_LOGIC;
           dataout : out STD_LOGIC_VECTOR(7 downto 0)
           );
end lab_3;

architecture Behavioral of lab_3 is

-- DATABUS signal
SIGNAL s_data : STD_LOGIC_VECTOR(7 downto 0) := "00000000";

-- REGIN signal
SIGNAL s_regin : STD_LOGIC_VECTOR(3 downto 0);

-- REGOUT signal
SIGNAL s_regout : STD_LOGIC_VECTOR(3 downto 0);

-- ALUC signal
SIGNAL s_aluc : STD_LOGIC_VECTOR(2 downto 0);

-- ALU => G Register
SIGNAL alu_OUT : STD_LOGIC_VECTOR(7 downto 0);

--Signal between Register and Tristate/ALUC
SIGNAL q0 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL q1 : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL reg_A : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL q2 : STD_LOGIC_VECTOR(7 downto 0);




begin
R0: reg PORT MAP(
        d => s_data,
        enable => s_regin(0),
        clock => clock,
        q => q0
        );
        
R1: reg PORT MAP(
                d => s_data,
                enable => s_regin(1),
                clock => clock,
                q => q1
                );        

A: reg PORT MAP(
        d => s_data,
        enable => s_regin(2),
        clock => clock,
        q => reg_A
        );
        
        
G: reg PORT MAP(
                d => s_data,
                enable => s_regin(3),
                clock => clock,
                q => q2
                );

ALU: aluc PORT MAP(
                s => alu_INN,
                A => reg_A,
                B => s_data,
                F => alu_OUT
                );

T0: tri PORT MAP(
                x => q0,
                s => s_regout(0),
                y => s_data );

T1: tri PORT MAP(
                x => q1,
                s => s_regout(1),
                y => s_data );               

T2: tri PORT MAP(
                x => q2,
                s => s_regout(2),
                y => s_data );                               
  
TDATA: tri PORT MAP(
                x => datain,
                s => s_regout(3),
                y => s_data );
                
REG_OUT: regout PORT MAP (
                x => regout_INN,
                y => s_regout );
                
REG_IN: regin PORT MAP (
                x => regin_INN,
                y => s_regin );                
                                
end Behavioral;
