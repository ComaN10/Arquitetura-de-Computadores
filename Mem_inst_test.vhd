--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:05:46 03/06/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/Mem_inst_test.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memoria_de_Instrucoes
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
 
ENTITY Mem_inst_test IS
END Mem_inst_test;
 
ARCHITECTURE behavior OF Mem_inst_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_de_Instrucoes
    PORT(
         Endereco : IN  std_logic_vector(7 downto 0);
         OPCODE : OUT  std_logic_vector(4 downto 0);
         Constante : OUT  std_logic_vector(7 downto 0);
         SEL_R : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Endereco : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OPCODE : std_logic_vector(4 downto 0);
   signal Constante : std_logic_vector(7 downto 0);
   signal SEL_R : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Instrucoes PORT MAP (
          Endereco => Endereco,
          OPCODE => OPCODE,
          Constante => Constante,
          SEL_R => SEL_R
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
