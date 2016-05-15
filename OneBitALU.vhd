----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:10:23 04/02/2016 
-- Design Name: 
-- Module Name:    OneBitALU - Behavioral 
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
use work.ALUPackage.All;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneBitALU is
    port ( 	A: IN  STD_LOGIC;
				B: IN  STD_LOGIC;
				Less: IN STD_LOGIC;
				CarryIn: IN STD_LOGIC;
				ALUOp: IN STD_LOGIC_VECTOR(3 downto 0);
				CarryOut: OUT  STD_LOGIC;
				S: OUT STD_LOGIC;
				Set: OUT STD_LOGIC);
end OneBitALU;

architecture Behavioral of OneBitALU is
	signal AndOut: std_logic;
	signal OrOut: std_logic;
	signal Result: std_logic;
	signal MuxOut: std_logic_vector(15 downto 0);
	begin
		OneBitAdderX: OneBitAdder port map(A,B,CarryIn,CarryOut,Result);
		AndOP: AndGate port map(A,B,AndOut);
		OrOP: OrGate port map(A,B,OrOut);
		MuxOut(0) <= AndOut;
		MuxOut(1) <= OrOut;
		MuxOut(2) <= Result;
		MuxOut(3) <= Less;
		Set <= Result;
		Mux2: MUX_4x1 port map(MuxOut(0),MuxOut(1),MuxOut(2),MuxOut(3),ALUOp(1 downto 0),S);
end Behavioral;