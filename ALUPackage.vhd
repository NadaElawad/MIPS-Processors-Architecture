--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
use IEEE.NUMERIC_STD.ALL;
use work.ALUDataTypes.ALL;

package ALUPackage is

component AndGate is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component MUX_2x1 is
    Port ( 
	        mux_in1 : in  STD_LOGIC_VECTOR(31 downto 0);
	        mux_in2 : in  STD_LOGIC_VECTOR(31 downto 0);
	        mux_sel : in  STD_LOGIC;
           mux_out : out  STD_LOGIC_VECTOR(31 downto 0));
end component;

component OrGate is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component MUX_4x1 is
	port(
		in0 : in std_logic;
		in1 : in std_logic;
		in2 : in std_logic;
		in3 : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end component;

component OneBitAdder IS
    PORT ( 	A: IN  STD_LOGIC;
				B: IN  STD_LOGIC;
				CarryIn : IN STD_LOGIC;
				CarryOut : OUT  STD_LOGIC;
				S: OUT STD_LOGIC);
END component;

component OneBitALU is
    port ( 	A: IN  STD_LOGIC;
				B: IN  STD_LOGIC;
				Less: IN STD_LOGIC;
				CarryIn: IN STD_LOGIC;
				ALUOp: IN STD_LOGIC_VECTOR(3 downto 0);
				CarryOut: OUT  STD_LOGIC;
				S: OUT STD_LOGIC;
				Set: OUT STD_LOGIC);
end component;

function NorX (B : in std_logic_vector) return std_logic;

end ALUPackage;

package body ALUPackage is

function NorX (B : in std_logic_vector) return std_logic
	is
	variable ret: std_logic;
	begin
	ret:='0';
	for I in 0 to 31 loop
		ret:= ret OR B(I);
	end loop;
	return NOT(ret);
end NorX;

end ALUPackage;
