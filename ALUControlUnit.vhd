----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:42:20 04/29/2016 
-- Design Name: 
-- Module Name:    ALUControlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 


entity ALUControlUnit is
	port(
		ALUOp: IN std_logic_vector(1 downto 0);
		Funct: IN std_logic_vector(5 downto 0);
		Operation: OUT std_logic_vector(3 downto 0));
end ALUControlUnit;

architecture Behavioral of ALUControlUnit is
	signal Op0: std_logic;
	signal Op1: std_logic;
	signal Op2: std_logic;
	signal Op3: std_logic;
begin
		
	Op3 <= Funct(1) and Funct(0) and ALUOp(1);
	Op2 <= (Funct(1) and ALUOp(1)) or ALUOp(0);
	Op1 <= not(ALUOp(1)) or not(Funct(2));
	Op0 <= ((Funct(0) or Funct(3)) and ALUOp(1)) and not(Op3);
	Operation <= (Op3&Op2&Op1&Op0);
	
end Behavioral;

