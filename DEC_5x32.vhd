----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:37:50 03/31/2016 
-- Design Name: 
-- Module Name:    DEC_5x32 - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DEC_5x32 is
    Port ( dec_in : in  STD_LOGIC_VECTOR (4 downto 0);
           E : in  STD_LOGIC;
           dec_out : out  STD_LOGIC_VECTOR (31 downto 0));
end DEC_5x32;

architecture Behavioral of DEC_5x32 is

begin
dec_out <= "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ" WHEN E = '0' ELSE Dec532(dec_in);

end Behavioral;

