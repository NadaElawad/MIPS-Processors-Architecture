----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:09:25 04/17/2016 
-- Design Name: 
-- Module Name:    Condition - Behavioral 
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

entity Condition is
	port(
		input : in std_logic_vector(5 downto 0);
		output : out std_logic
	);
end Condition;

architecture Behavioral of Condition is

begin

	output <= '1' when input = "000000";

end Behavioral;

