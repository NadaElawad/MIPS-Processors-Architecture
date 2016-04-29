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

package RegFileDataTypes is
TYPE vector_array IS ARRAY (NATURAL RANGE <>) OF STD_LOGIC_VECTOR(31 DOWNTO 0);
end RegFileDataTypes;