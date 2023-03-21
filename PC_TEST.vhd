--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:52:30 03/01/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/PC_TEST.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ProgramableCounter
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
 
ENTITY PC_TEST IS
END PC_TEST;
 
ARCHITECTURE behavior OF PC_TEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ProgramableCounter
    PORT(
         clock : IN  std_logic;
         Reset : IN  std_logic;
         Endereco : OUT  std_logic_vector(7 downto 0);
         ESCR_PC : IN  std_logic;
         Constante : IN  std_logic_vector
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal Reset : std_logic := '0';
   signal ESCR_PC : std_logic := '0';
   signal Constante : std_logic_vector (7 downto 0) := (others=>'0');

 	--Outputs
   signal Endereco : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ProgramableCounter PORT MAP (
          clock => clock,
          Reset => Reset,
          Endereco => Endereco,
          ESCR_PC => ESCR_PC,
          Constante => Constante
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
		Reset<='1'; wait for 100 ns;
		Reset<='0';wait for 100 ns;		  
		ESCR_PC<='0';wait for 100 ns;	
		ESCR_PC<='1'; 
		Constante <="00000111"; wait for 10 ns;
		ESCR_PC<='0';
		Reset<='1'; wait for 100 ns;
      wait;
   end process;

END;
