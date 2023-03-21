--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:44:37 03/02/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/RAM_TEST_vhdl.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Memoria_de_dados_RAM
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
 
ENTITY RAM_TEST_vhdl IS
END RAM_TEST_vhdl;
 
ARCHITECTURE behavior OF RAM_TEST_vhdl IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria_de_dados_RAM
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         WR : IN  std_logic;
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal WR : std_logic := '0';
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Dados_M : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Memoria_de_dados_RAM PORT MAP (
          Operando1 => Operando1,
          clock => clock,
          WR => WR,
          Constante => Constante,
          Dados_M => Dados_M
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
		 Operando1<= "01010101"; Constante<="11110000"; WR<='0'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110000"; WR<='1'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110000"; WR<='0'; wait for 10 ns; 
		 Operando1<= "01011111"; Constante<="11111000"; WR<='1'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11111000"; WR<='0'; wait for 10 ns; 
		 Operando1<= "11111111"; Constante<="11110111"; WR<='1'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110111"; WR<='0'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110000"; WR<='0'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110000"; WR<='0'; wait for 10 ns; 
		 Operando1<= "01010101"; Constante<="11110000"; WR<='0'; wait for 10 ns; 

      wait;
   end process;

END;
