--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use work.RegFileDataTypes.ALL;
use work.RegFilePackage.ALL;
use work.ALUPackage.ALL;
use work.ALUDataTypes.ALL;


package MainModulePackage is

component AndGate is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component SignExtend is
	port(
		input: in std_logic_vector(15 downto 0);
		output: out std_logic_vector(31 downto 0));
end component;


component ALU is
PORT(
		data1 : in std_logic_vector(31 downto 0);
		data2 : in std_logic_vector(31 downto 0);
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0);
		cflag: out std_logic;
		zflag: out std_logic;
		oflag:out std_logic
	);
end component;

component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;

component RegisterFile is
 PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
end component;

component PC_reg IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
end component;

component ControlUnit is
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
end component;

component ALUControlUnit is
	port(
		ALUOp: IN std_logic_vector(1 downto 0);
		Funct: IN std_logic_vector(5 downto 0);
		Operation: OUT std_logic_vector(3 downto 0));
end component;

component MUX_2x1_5 is
    Port ( 
	        mux_in1 : in  STD_LOGIC_VECTOR(4 downto 0);
	        mux_in2 : in  STD_LOGIC_VECTOR(4 downto 0);
	        mux_sel : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR(4 downto 0));
end component;

component MUX_2x1 is
    Port ( 
	        mux_in1 : in  STD_LOGIC_VECTOR(31 downto 0);
	        mux_in2 : in  STD_LOGIC_VECTOR(31 downto 0);
	        mux_sel : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC);
end component;
end MainModulePackage;

package body MainModulePackage is
 
end MainModulePackage;
