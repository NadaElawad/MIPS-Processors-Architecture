----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:06:06 04/01/2016 
-- Design Name: 
-- Module Name:    ANDOP - Behavioral 
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
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneBitAdder IS
    port ( 	A: IN  STD_LOGIC;
				B: IN  STD_LOGIC;
				CarryIn : IN STD_LOGIC;
				CarryOut : OUT  STD_LOGIC;
				S: OUT STD_LOGIC);
end OneBitAdder;

architecture Behavioral of OneBitAdder is

begin
	S <= A XOR B XOR CarryIn;
	CarryOut <= (A AND B) OR (A AND CarryIn) OR (B AND CarryIn);
end Behavioral;