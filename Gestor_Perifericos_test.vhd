--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:22:05 03/02/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/Gestor_Perifericos_test.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Gestor_de_perifericos
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
 
ENTITY Gestor_Perifericos_test IS
END Gestor_Perifericos_test;
 
ARCHITECTURE behavior OF Gestor_Perifericos_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Gestor_de_perifericos
    PORT(
         Operando1 : IN  std_logic_vector(7 downto 0);
         ESCR_P : IN  std_logic;
         PIN : IN  std_logic_vector(7 downto 0);
         Dados_IN : OUT  std_logic_vector(7 downto 0);
         POUT : OUT  std_logic_vector(7 downto 0);
         clock : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Operando1 : std_logic_vector(7 downto 0);
   signal ESCR_P : std_logic ;
   signal PIN : std_logic_vector(7 downto 0);
   signal clock : std_logic ;

 	--Outputs
   signal Dados_IN : std_logic_vector(7 downto 0);
   signal POUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Gestor_de_perifericos PORT MAP (
          Operando1 => Operando1,
          ESCR_P => ESCR_P,
          PIN => PIN,
          Dados_IN => Dados_IN,
          POUT => POUT,
          clock => clock
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
		wait for 100 ns;
		ESCR_P<='1';PIN<="00111011";Operando1<="00111010";wait for 100 ns;	
		ESCR_P<='0';PIN<="00111011";Operando1<="00111010";wait for 100 ns;
		ESCR_P<='1';PIN<="00100011";Operando1<="00100010";wait for 100 ns;
		ESCR_P<='0';PIN<="00100011";Operando1<="00100010";wait for 100 ns;
		ESCR_P<='1';PIN<="11111011";Operando1<="11111010";wait for 100 ns;
	   ESCR_P<='0';PIN<="11111011";Operando1<="11111010";wait for 100 ns;

      wait;
   end process;

END;
