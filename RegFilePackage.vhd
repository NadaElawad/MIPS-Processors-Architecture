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
use work.RegFileDataTypes.all;
package RegFilePackage is

component AndGate is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           O : out  STD_LOGIC);
end component;

component MUX_32x1 is
    Port ( 
	        mux_in : in  vector_array (31 downto 0); -- array of STD_LOGIC_VECTOR
	        mux_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           mux_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component REG32 is
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK,L,INC,CLR : in  STD_LOGIC;
           OO : out  STD_LOGIC_VECTOR (31 downto 0));
end component;


component DEC_5x32 is
    Port ( dec_in : in  STD_LOGIC_VECTOR (4 downto 0);
           E : in  STD_LOGIC;
           dec_out : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

-- function <function_name>  (signal <signal_name> : in <type_declaration>) return <type_declaration>;

function Mux321 (B : in std_logic_vector; A : in vector_array) return std_logic_vector;
function Dec532 (B : in std_logic_vector) return std_logic_vector;

end RegFilePackage;

package body RegFilePackage is

function Dec532 (B : in std_logic_vector) return std_logic_vector
is 
variable ret : std_logic_vector(31 downto 0);
begin
ret := "00000000000000000000000000000001";
ret := to_stdlogicvector(to_bitvector(ret) sll to_integer(unsigned(B)));
return ret;
end Dec532;




---- Example 2
--  function <function_name>  (signal <signal_name> : in <type_declaration>;
--                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
--  begin
--    if (<signal_name> = '1') then
--      return <signal_name>;
--    else
--      return 'Z';
--    end if;
--  end <function_name>;
 function Mux321 (B : in std_logic_vector; A : in vector_array) return std_logic_vector 
 is
  variable element : std_logic_vector(31 downto 0);
 begin  
  element := A(to_integer(unsigned(B)));
  return element;
end Mux321;
end RegFilePackage;
