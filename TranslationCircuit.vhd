----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:56:29 04/17/2016 
-- Design Name: 
-- Module Name:    TranslationCircuit - Behavioral 
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

entity TranslationCircuit is
	port(
		input : IN std_logic_vector(5 downto 0);
		output : OUT std_logic_vector(3 downto 0));
end TranslationCircuit;

architecture Behavioral of TranslationCircuit is

begin
	output <= "0000" when input = "100100"
					else "0001" when input = "100101"
					else "0010" when input = "100000"
					else "0110" when input = "100010"
					else "0111" when input = "101010"
					else "1100";
end Behavioral;

