----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:42:04 03/29/2016 
-- Design Name: 
-- Module Name:    reg - Behavioral 
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
use ieee.std_logic_arith.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;

-- conv_STD_LOGIC_VECTOR(to_unsigned(tmp),8)
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity REG32 is
    Port ( I : in  STD_LOGIC_VECTOR (31 downto 0);
           CLK,L,INC,CLR : in  STD_LOGIC;
           OO : out  STD_LOGIC_VECTOR (31 downto 0));
end REG32;

architecture Behavioral of REG32 is
signal tmp : STD_LOGIC_VECTOR (31 DOWNTO 0):= (OTHERS => '0'); 
begin
  process(CLK)
  begin
    if(CLK' EVENT and CLK = '1')then 
	   if(L = '1') then tmp <= I;
	   elsif(INC = '1') then tmp <= tmp + 1;
	   elsif (CLR = '1') then tmp <= (others =>'0');
	   end if;
	 end if;
  end process;
 OO<= tmp;
end Behavioral;


