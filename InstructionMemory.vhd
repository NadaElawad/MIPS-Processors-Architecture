library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

use IEEE.std_logic_textio.all;
library STD;
use STD.textio.all;

entity INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end INSTRMEMORY;


architecture BEHAVIORAL of INSTRMEMORY is
	signal ADDRover4: STD_LOGIC_VECTOR(addresssize-2 -1 downto 0);		                                    
begin

		ROM_PROCESS: process(CLK, ADDRESS) is
		type MEM is array(0 to words-1) of STD_LOGIC_VECTOR(wordsize-1 downto 0);
		variable MEMORY: MEM := (others => X"00000000");
		variable IADR: INTEGER;    												
begin

    if LoadIt = '1' then
--------------------------
--R-Type Instructions test
--------------------------
		memory(0) := "00000000000000010100000000100101" ; -- or $8, $0, $1
		memory(1) := "00000001000000010100100000100000" ; -- add $9, $8, $1
		memory(2) := "00000001000010010101000000101010" ; -- slt $10, $8, $9
	end if;

    if FALLING_EDGE(CLK) then
      IADR:= CONV_INTEGER(ADDRover4);
      DATA <= MEMORY(IADR);
    end if;
  end process;
  
  ADDRover4 <= ADDRESS(31 downto 2) ;
	
end BEHAVIORAL;