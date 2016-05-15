----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:49:02 04/29/2016 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
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

entity ControlUnit is
	port(
		OpCode: IN std_logic_vector(5 downto 0);
		RegDst: OUT std_logic;
		ALUSrc: OUT std_logic;
		MemtoReg: OUT std_logic;
		RegWrite: OUT std_logic;
		MemRead: OUT std_logic;
		MemWrite: OUT std_logic;
		Branch: OUT std_logic;
		ALUOp: OUT std_logic_vector(1 downto 0);
		Jump: OUT std_logic);
end ControlUnit;

architecture Behavioral of ControlUnit is
	signal Rformat: std_logic;
	signal lw: std_logic;
	signal sw: std_logic;
	signal beq: std_logic;
	signal bne: std_logic;
begin

	RFormat <= not(OpCode(0)) and not(OpCode(1)) and not(OpCode(2)) and not(OpCode(3)) and not(OpCode(4)) and not(OpCode(5));
	lw <= OpCode(0) and OpCode(1) and not(OpCode(2)) and not(OpCode(3)) and not(OpCode(4)) and OpCode(5);
	sw <= OpCode(0) and OpCode(1) and not(OpCode(2)) and OpCode(3) and not(OpCode(4)) and OpCode(5);
	beq <= not(OpCode(0)) and not(OpCode(1)) and OpCode(2) and not(OpCode(3)) and not(OpCode(4)) and not(OpCode(5));
	bne <= OpCode(0) and not(OpCode(1)) and OpCode(2) and not(OpCode(3)) and not(OpCode(4)) and not(OpCode(5));
	
	RegDst <= RFormat;
	ALUSrc <= lw or sw;
	MemtoReg <= lw;
	RegWrite <= RFormat or lw;
	MemRead <= lw;
	MemWrite <= sw;
	Branch <= beq or bne;
	ALUOp <= (RFormat&beq);
	Jump <= not(OpCode(5))and not(OpCode(4)) and not(OpCode(3)) and not(OpCode(2)) and OpCode(1) and not(OpCode(0));

end Behavioral;

