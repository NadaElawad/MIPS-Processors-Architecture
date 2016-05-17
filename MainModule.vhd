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
		ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
		DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0));

end MainModule;

architecture Behavioral of MainModule is

	signal AddressIn: STD_LOGIC_VECTOR (31 DOWNTO 0) := (OTHERS => '0'); 
	signal AddressInFinal: STD_LOGIC_VECTOR (31 DOWNTO 0) := (OTHERS => '0'); 
	signal AddressOut: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Data: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Reg1: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Reg2: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal Result: STD_LOGIC_VECTOR (31 DOWNTO 0);
	signal zero,overflow,carry: STD_LOGIC;
	signal RegDst: std_logic;
	signal ALUSrc: std_logic;
	signal MemtoReg: std_logic;
	signal RegWrite: std_logic;
	signal MemRead: std_logic;
	signal MemWrite: std_logic;
	signal Branch: std_logic;
	signal Jump: std_logic;
	signal ALUOpIn: std_logic_vector(1 downto 0);
	signal ALUOp: std_logic_vector(3 downto 0);
	signal WriteReg: std_logic_vector(4 downto 0);
	signal Reg2_Final: std_logic_vector(31 downto 0);
	signal ReadData: std_logic_vector(31 downto 0);
	signal WriteData: std_logic_vector(31 downto 0);
	signal PCSrc: std_logic;
	signal tmp: std_logic;
	signal ALU1Out: std_logic_vector(31 downto 0);
	signal ALU2Out: std_logic_vector(31 downto 0);
	signal JumpAddress: std_logic_vector(31 downto 0);
	signal BranchAddress: std_logic_vector(31 downto 0);
	
	begin

		PC: PC_reg port map(AddressInFinal,CLK,START,not(START),AddressOut);
		
		InstructionMem: INSTRMEMORY port map(not(START),Data,AddressOut,CLK);

		ControlUnitCom: ControlUnit port map(Data(31 downto 26),RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,ALUOpIn,Jump);

		ALUControlUnitCom: ALUControlUnit port map(ALUOpIn,Data(5 downto 0),ALUOp);

		Mux1: MUX_2x1_5 port map(Data(20 downto 16),Data(15 downto 11),RegDst,WriteReg);

		RegisterCom: RegisterFile port map(Data(25 downto 21),Data(20 downto 16),WriteReg,RegWrite,CLK,WriteData,Reg1,Reg2);

		Mux2: MUX_2x1 port map(Reg2,BranchAddress,ALUSrc,Reg2_Final);

		AluCom: ALU port map(Reg1,Reg2_Final,ALUOp,ALUOp(2),Result,carry,zero,overflow);

		DataMemoryCom: DATAMEMORY port map(not(START),Reg2,ReadData,MemRead,MemWrite,Result,CLK);

		Mux3: MUX_2x1 port map(Result,ReadData,MemtoReg,WriteData);

		PCSrc <= '1' when Data(31 downto 26) = "000101" and zero = '0'
						else '1' when Data(31 downto 26) = "000100" and zero ='1'
						else '0';
			
		SignExtendCom: SignExtend port map(Data(15 downto 0),BranchAddress);

		AluCom1: ALU port map(AddressOut,("00000000000000000000000000000100"),"0010",'0',ALU1Out,tmp,tmp,tmp);
		
		AluCom2: ALU port map(ALU1Out,(BranchAddress(29 downto 0)&"00"),"0010",'0',ALU2Out,tmp,tmp,tmp);

		Mux4: MUX_2x1 port map(ALU1Out,ALU2Out,PCSrc,AddressIn);

		JumpAddress <= (ALU1Out(31 downto 28)&Data(25 downto 0)&"00");
		
		Mux5: MUX_2x1 port map(AddressIn,JumpAddress,Jump,AddressInFinal);
		
		RegFileOut1 <= Reg1;

		RegFileOut2 <= Reg2;

		ALUOut <= Result;

		PCOut <= AddressInFinal;

		DataMemOut <= ReadData;
	
end Behavioral;