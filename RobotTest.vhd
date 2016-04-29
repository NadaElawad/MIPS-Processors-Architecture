--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   00:00:56 03/10/2012
-- Design Name:   
-- Module Name:   X:/Lectures/3rd Year/Second Term/Archi/ISE Projects/fcis_ca_36/trunk/Assignment3/MyTest.vhd
-- Project Name:  Assignment3
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MainModule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
ENTITY RobotTest IS
END RobotTest;
 
ARCHITECTURE behavior OF RobotTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
   -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MainModule
    PORT(
         START : IN  std_logic;
         CLK : IN  std_logic;
         RegFileOut1 : OUT  std_logic_vector(31 downto 0);
         RegFileOut2 : OUT  std_logic_vector(31 downto 0);
			ALUOut : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal START : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal RegFileOut1 : std_logic_vector(31 downto 0);
   signal RegFileOut2 : std_logic_vector(31 downto 0);
	signal ALUOut : std_logic_vector(31 downto 0);
	   -- Clock period definitions
   constant CLK_period : time := 10 ns;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MainModule PORT MAP (
          START => START,
          CLK => CLK,
          RegFileOut1 => RegFileOut1,
          RegFileOut2 => RegFileOut2,
			 ALUOut => ALUOut
        );
 
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant CLK_period := 1ns;
 
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 


  stim_proc: process

   begin		

	--wait for clk_period/2 - 100 ps ;
	Start <= '0';

       wait for clk_period*2;

	Start <='1';

	report "Test1";
	assert(regfileout1 = "00000000000000000000000000000000" and regfileout2 = "00000000000000000000000000000001"and ALUout =  "00000000000000000000000000000001") report "1:Fail" severity error;

	wait for clk_period;

	wait for clk_period / 2 ;

	report "Test2";
	assert(regfileout1 = "00000000000000000000000000000001" and regfileout2 = "00000000000000000000000000000001"and ALUout =  "00000000000000000000000000000010") report "2:Fail" severity error;

	wait for clk_period;

	report "Test3";
	assert(regfileout1 = "00000000000000000000000000000001" and regfileout2 = "00000000000000000000000000000010"and ALUout =  "00000000000000000000000000000001") report "3:Fail" severity error;


	report "Test Complete";

      wait;

   end process;

END;
