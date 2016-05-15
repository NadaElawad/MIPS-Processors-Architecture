----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:57:43 04/01/2016 
-- Design Name: 
-- Module Name:    Mux3x1 - Behavioral 
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
use IEEE.numeric_std.ALL;
use work.MyPackage.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX_16x1 is
PORT(
		mux_in : in std_logic_vector(15 downto 0);
		mux_sel : in std_logic_vector (3 downto 0);
		mux_out : out std_logic
		);
end MUX_16x1;

architecture Behavioral of MUX_16x1 is

begin
	mux_out <= Mux161(mux_sel,mux_in);
end Behavioral;

