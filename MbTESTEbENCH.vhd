--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:51:59 03/07/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/MbTESTEbENCH.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Motherboard
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MbTESTEbENCH IS
END MbTESTEbENCH;
 
ARCHITECTURE behavior OF MbTESTEbENCH IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Motherboard
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         Reset : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0)
		
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0);
   signal clock : std_logic := '0';
   signal Reset : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Motherboard PORT MAP (
          PIN => PIN,
          clock => clock,
          Reset => Reset,
          POUT => POUT
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;
		
		Reset<='0';
		wait for 100 ns;
		Reset<='1';		
		PIN<="00001011"; 
		wait for 100 ns;
		Reset<='0';
		wait for 100 ns;	 

		
		
		
		
      wait;
   end process;

END;


