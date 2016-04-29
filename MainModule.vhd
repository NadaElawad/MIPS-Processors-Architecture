----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:00:21 04/17/2016 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.MainModulePackage.all;

entity MainModule is
	
	port(
		START: IN STD_LOGIC;
		CLK: IN STD_LOGIC;
		RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
		RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
		ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0));

end MainModule;

architecture Behavioral of MainModule is
	signal O: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Data: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal PCOut: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal TCOut: STD_LOGIC_VECTOR (3 DOWNTO 0);
	signal ConOut: STD_LOGIC;
	signal Reg1: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Reg2: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal ALUOutput: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal zero,overflow,carry: STD_LOGIC;
begin
	
	PC: PC_reg port map("00000000000000000000000000000000",CLK,'0',START,not(START),PCOut);
	O <= ("000000000000000000000000"&PCOut(5 downto 0)&"00");
	InstructionMem: INSTRMEMORY port map(not(START),Data,O,CLK);
	ConditionCom: Condition port map(Data(31 downto 26),ConOut);
	RegisterCom: RegisterFile port map(Data(25 downto 21),Data(20 downto 16),Data(15 downto 11),ConOut,CLK,ALUOutput,Reg1,Reg2);
	TranslationCircuitCom: TranslationCircuit port map(Data(5 downto 0),TCOut);
	AluCom: ALU port map(Reg1,Reg2,TCOut,TCOut(2),ALUOutput,carry,zero,overflow);
	RegFileOut1 <= Reg1;
	RegFileOut2 <= Reg2;
	ALUOut <= ALUOutput;

end Behavioral;



