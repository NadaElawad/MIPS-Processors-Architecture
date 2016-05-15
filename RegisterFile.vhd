----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:06:23 04/01/2016 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use work.RegFilepackage.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL ;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
     
entity RegisterFile is
 PORT(
         read_sel1 : IN  std_logic_vector(4 downto 0);
         read_sel2 : IN  std_logic_vector(4 downto 0);
         write_sel : IN  std_logic_vector(4 downto 0);
         write_ena : IN  std_logic;
         clk : IN  std_logic;
         write_data : IN  std_logic_vector(31 downto 0);
         data1 : OUT  std_logic_vector(31 downto 0);
         data2 : OUT  std_logic_vector(31 downto 0)
        );
end RegisterFile;

architecture Behavioral of RegisterFile is
signal DecOut: std_logic_vector (31 downto 0);
signal reg_out: vector_array(31 downto 0);
signal and_out : std_logic_vector(31 downto 0);
begin

 dec1 : DEC_5x32 port map(write_sel,'1',DecOut);
 GEN_REG:  for I in 0 to 31 generate
      andX : AndGate port map(write_ena,DecOut(I),and_out(I));
      REGX : REG32 port map(write_data,clk,and_out(I),'0','0',reg_out(I));
 end generate;
 Mux1: MUX_32x1 port map(reg_out,read_sel1,data1);
 Mux2: MUX_32x1 port map(reg_out,read_sel2,data2);

end Behavioral;

