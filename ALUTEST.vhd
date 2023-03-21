--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:41:21 02/28/2023
-- Design Name:   
-- Module Name:   C:/Users/Carlos/Desktop/ProjetoAC/Projeto1AC/ALUTEST.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY ALUTEST IS
END ALUTEST;
 
ARCHITECTURE behavior OF ALUTEST IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         Operando2 : IN  std_logic_vector(7 downto 0);
         SEL_ALU : IN  std_logic_vector(2 downto 0);
         Resultado : OUT  std_logic_vector(7 downto 0);
         E_FLAG : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal Operando2 : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_ALU : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal Resultado : std_logic_vector(7 downto 0);
   signal E_FLAG : std_logic_vector(4 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          Operando1 => Operando1,
          Operando2 => Operando2,
          SEL_ALU => SEL_ALU,
          Resultado => Resultado,
          E_FLAG => E_FLAG
        );


   -- Stimulus process
   stim_proc: process
   begin		
      wait for 100 ns;	
		
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "000"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "001"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "010"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "011"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "100"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "101"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "110"; wait for 10 ns;
		Operando1 <= "00001000"; Operando2 <= "00110011"; SEL_ALU <= "111"; wait for 10 ns;
		Operando1 <= "00000000"; Operando2 <= "00110011"; SEL_ALU <= "100"; wait for 10 ns;
      wait;
   end process;

END;
