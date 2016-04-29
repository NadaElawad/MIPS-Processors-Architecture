----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:36:34 03/27/2009 
-- Design Name: 
-- Module Name:    GenericReg - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
ENTITY reg32_1 IS
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END reg32_1;

ARCHITECTURE Behavioral OF reg32_1 IS
	SIGNAL temp: STD_LOGIC_VECTOR (31 DOWNTO 0) := "00000000000000000000000000000001";
BEGIN
	PROCESS(clk)
	BEGIN
	IF(CLK'event AND CLK='1')THEN
		IF(LOD ='1') THEN
			temp <= I;
		ELSIF (INC='1')THEN
			temp <= temp +1;
		ELSIF(CLR='1') THEN
			temp <=(others =>'0');
		END IF;
	END IF;
	END PROCESS;
	O <= temp;
END Behavioral;

