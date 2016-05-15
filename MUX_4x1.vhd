----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:24:46 04/17/2016 
-- Design Name: 
-- Module Name:    Mux4x1 - Behavioral 
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

entity MUX_4x1 is
	port(
		in0 : in std_logic;
		in1 : in std_logic;
		in2 : in std_logic;
		in3 : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end MUX_4x1;

architecture Behavioral of MUX_4x1 is

begin
		output <= in0 when sel = "00"
					else in1 when sel = "01"
					else in2 when sel = "10"
					else in3 when sel = "11";
end Behavioral;

