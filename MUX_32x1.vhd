----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:31:18 03/31/2016 
-- Design Name: 
-- Module Name:    MUX_32x1 - Behavioral 
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
use work.RegFileDataTypes.all;
use work.RegFilePackage.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

entity MUX_32x1 is
    Port ( 
	        mux_in : in  vector_array (31 downto 0); -- array of STD_LOGIC_VECTOR
	        mux_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           mux_out : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX_32x1;

architecture Behavioral of MUX_32x1 is
signal tmp :  STD_LOGIC_VECTOR (31 downto 0);
begin
tmp <= Mux321(mux_sel,mux_in);
mux_out <= tmp; 
end Behavioral;

--PROCESS(mux_sel)
-- BEGIN
 --counter <= "00000"; 
 --for var in 0 to 31 loop
 --if(mux_sel = counter) then
 --tmp <= input_array(var);
 --end if;
 --counter <= counter +1;
 --end loop;
 --output <= tmp;
--END PROCESS;
--
