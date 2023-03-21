--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:31:29 03/02/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/Memoria_de_Instrucoes_test.vhd
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
 
ENTITY Memoria_de_Instrucoes_test IS
END Memoria_de_Instrucoes_test;
 
ARCHITECTURE behavior OF Memoria_de_Instrucoes_test IS 
 
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
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_Instrucoes PORT MAP (
          Endereco => Endereco,
          OPCODE => OPCODE,
          Constante => Constante,
          SEL_R => SEL_R
        );

   -- Stimulus process
   stim_proc: process
   begin		
         Endereco <= "00000000"; wait for 10 ns;	
		Endereco <= "00000001"; wait for 10 ns;
		Endereco <= "00000010"; wait for 10 ns;
		Endereco <= "00000011"; wait for 10 ns;
		Endereco <= "00000100"; wait for 10 ns;
		Endereco <= "00000101"; wait for 10 ns;
		Endereco <= "00000110"; wait for 10 ns;
		Endereco <= "00000111"; wait for 10 ns;
		Endereco <= "00001000"; wait for 10 ns;
		Endereco <= "00001001"; wait for 10 ns;
		Endereco <= "00001010"; wait for 10 ns;
		Endereco <= "00001011"; wait for 10 ns;
		Endereco <= "00001100"; wait for 10 ns;
		Endereco <= "00001101"; wait for 10 ns;
		Endereco <= "00001110"; wait for 10 ns;
		Endereco <= "00001111"; wait for 10 ns;
		Endereco <= "00010000"; wait for 10 ns;
		Endereco <= "00010001"; wait for 10 ns;
		Endereco <= "00010010"; wait for 10 ns;
		Endereco <= "00010011"; wait for 10 ns;
		Endereco <= "00010100"; wait for 10 ns;
		Endereco <= "00010101"; wait for 10 ns;
		Endereco <= "00010110"; wait for 10 ns;
		Endereco <= "00010111"; wait for 10 ns;
		Endereco <= "00011000"; wait for 10 ns;
		Endereco <= "00011001"; wait for 10 ns;
		Endereco <= "00011010"; wait for 10 ns;
		Endereco <= "00011011"; wait for 10 ns;
		Endereco <= "00011100"; wait for 10 ns;
		Endereco <= "00011101"; wait for 10 ns;
		Endereco <= "11111111"; wait for 10 ns;
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
