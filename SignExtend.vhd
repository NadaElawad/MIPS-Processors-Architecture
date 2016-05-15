----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:56:51 05/01/2016 
-- Design Name: 
-- Module Name:    SignExtend - Behavioral 
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

entity SignExtend is
	port(
		input: IN std_logic_vector(15 downto 0);
		output: OUT std_logic_vector(31 downto 0));
end SignExtend;

architecture Behavioral of SignExtend is

begin
	output <= ("0000000000000000"&input) when input(15) = '0'
				else ("1111111111111111"&input) when input(15) = '1';
end Behavioral;

