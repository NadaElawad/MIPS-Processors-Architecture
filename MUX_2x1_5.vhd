----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:18 03/31/2016 
-- Design Name: 
-- Module Name:    MUX2x1 - Behavioral 
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

entity MUX_2x1_5 is
    Port ( 
	        mux_in1 : in  STD_LOGIC_VECTOR(4 downto 0);
	        mux_in2 : in  STD_LOGIC_VECTOR(4 downto 0);
	        mux_sel : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR(4 downto 0));
end MUX_2x1_5;

architecture Behavioral of MUX_2x1_5 is
	begin
		mux_out <= mux_in1 when mux_sel = '0'
		else mux_in2 when mux_sel = '1';
end Behavioral;
