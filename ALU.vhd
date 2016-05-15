----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:50:14 04/01/2016 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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
use work.ALUPackage.ALL;
use work.ALUDataTypes.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
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
end ALU;

architecture Behavioral of ALU is
	signal aluOut: std_logic_vector(31 downto 0);
	signal carryOut: std_logic_vector(32 downto 0);
	signal data2Final: std_logic_vector(31 downto 0);
	signal data1Final: std_logic_vector(31 downto 0);
	signal set: std_logic_vector(31 downto 0);
	begin
		Mux1: MUX_2x1 port map(data2,not(data2),aluop(2),data2Final);
		Mux2: MUX_2x1 port map(data1,not(data1),aluop(3),data1Final);
		carryOut(0) <= cin;
		A0: OneBitALU port map(data1Final(0),data2Final(0),set(31),carryOut(0),aluop,carryOut(1),aluOut(0),set(0));
		A1: OneBitALU port map(data1Final(1),data2Final(1),'0',carryOut(1),aluop,carryOut(2),aluOut(1),set(1));
		A2: OneBitALU port map(data1Final(2),data2Final(2),'0',carryOut(2),aluop,carryOut(3),aluOut(2),set(2));
		A3: OneBitALU port map(data1Final(3),data2Final(3),'0',carryOut(3),aluop,carryOut(4),aluOut(3),set(3));
		A4: OneBitALU port map(data1Final(4),data2Final(4),'0',carryOut(4),aluop,carryOut(5),aluOut(4),set(3));
		A5: OneBitALU port map(data1Final(5),data2Final(5),'0',carryOut(5),aluop,carryOut(6),aluOut(5),set(5));
		A6: OneBitALU port map(data1Final(6),data2Final(6),'0',carryOut(6),aluop,carryOut(7),aluOut(6),set(6));
		A7: OneBitALU port map(data1Final(7),data2Final(7),'0',carryOut(7),aluop,carryOut(8),aluOut(7),set(7));
		A8: OneBitALU port map(data1Final(8),data2Final(8),'0',carryOut(8),aluop,carryOut(9),aluOut(8),set(8));
		A9: OneBitALU port map(data1Final(9),data2Final(9),'0',carryOut(9),aluop,carryOut(10),aluOut(9),set(9));
		A10: OneBitALU port map(data1Final(10),data2Final(10),'0',carryOut(10),aluop,carryOut(11),aluOut(10),set(10));
		A11: OneBitALU port map(data1Final(11),data2Final(11),'0',carryOut(11),aluop,carryOut(12),aluOut(11),set(11));
		A12: OneBitALU port map(data1Final(12),data2Final(12),'0',carryOut(12),aluop,carryOut(13),aluOut(12),set(12));
		A13: OneBitALU port map(data1Final(13),data2Final(13),'0',carryOut(13),aluop,carryOut(14),aluOut(13),set(13));
		A14: OneBitALU port map(data1Final(14),data2Final(14),'0',carryOut(14),aluop,carryOut(15),aluOut(14),set(14));
		A15: OneBitALU port map(data1Final(15),data2Final(15),'0',carryOut(15),aluop,carryOut(16),aluOut(15),set(15));
		A16: OneBitALU port map(data1Final(16),data2Final(16),'0',carryOut(16),aluop,carryOut(17),aluOut(16),set(16));
		A17: OneBitALU port map(data1Final(17),data2Final(17),'0',carryOut(17),aluop,carryOut(18),aluOut(17),set(17));
		A18: OneBitALU port map(data1Final(18),data2Final(18),'0',carryOut(18),aluop,carryOut(19),aluOut(18),set(18));
		A19: OneBitALU port map(data1Final(19),data2Final(19),'0',carryOut(19),aluop,carryOut(20),aluOut(19),set(19));
		A20: OneBitALU port map(data1Final(20),data2Final(20),'0',carryOut(20),aluop,carryOut(21),aluOut(20),set(20));
		A21: OneBitALU port map(data1Final(21),data2Final(21),'0',carryOut(21),aluop,carryOut(22),aluOut(21),set(21));
		A22: OneBitALU port map(data1Final(22),data2Final(22),'0',carryOut(22),aluop,carryOut(23),aluOut(22),set(22));
		A23: OneBitALU port map(data1Final(23),data2Final(23),'0',carryOut(23),aluop,carryOut(24),aluOut(23),set(23));
		A24: OneBitALU port map(data1Final(24),data2Final(24),'0',carryOut(24),aluop,carryOut(25),aluOut(24),set(24));
		A25: OneBitALU port map(data1Final(25),data2Final(25),'0',carryOut(25),aluop,carryOut(26),aluOut(25),set(25));
		A26: OneBitALU port map(data1Final(26),data2Final(26),'0',carryOut(26),aluop,carryOut(27),aluOut(26),set(26));
		A27: OneBitALU port map(data1Final(27),data2Final(27),'0',carryOut(27),aluop,carryOut(28),aluOut(27),set(27));
		A28: OneBitALU port map(data1Final(28),data2Final(28),'0',carryOut(28),aluop,carryOut(29),aluOut(28),set(28));
		A29: OneBitALU port map(data1Final(29),data2Final(29),'0',carryOut(29),aluop,carryOut(30),aluOut(29),set(29));
		A30: OneBitALU port map(data1Final(30),data2Final(30),'0',carryOut(30),aluop,carryOut(31),aluOut(30),set(30));
		A31: OneBitALU port map(data1Final(31),data2Final(31),'0',carryOut(31),aluop,carryOut(32),aluOut(31),set(31));
				
		cflag <= carryOut(32);
		oflag <= carryOut(32) XOR carryOut(31);
		zflag <= NorX(aluOut);
		dataout <= aluOut ;
 
end Behavioral;