--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:01:41 03/07/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/ProcessadorTeste.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Processador
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
 
ENTITY ProcessadorTeste IS
END ProcessadorTeste;
 
ARCHITECTURE behavior OF ProcessadorTeste IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Processador
    PORT(
         PIN : IN  std_logic_vector(7 downto 0);
         clock : IN  std_logic;
         Reset : IN  std_logic;
         POUT : OUT  std_logic_vector(7 downto 0);
         WR : OUT  std_logic;
         Endereco : OUT  std_logic_vector(7 downto 0);
         OPCODE : IN  std_logic_vector(4 downto 0);
         Constante : IN  std_logic_vector(7 downto 0);
         Dados_M : IN  std_logic_vector(7 downto 0);
         SEL_R : IN  std_logic;
         Operando1 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal clock : std_logic := '0';
   signal Reset : std_logic := '0';
   signal OPCODE : std_logic_vector(4 downto 0) := (others => '0');
   signal Constante : std_logic_vector(7 downto 0) := (others => '0');
   signal Dados_M : std_logic_vector(7 downto 0) := (others => '0');
   signal SEL_R : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);
   signal WR : std_logic;
   signal Endereco : std_logic_vector(7 downto 0);
   signal Operando1 : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Processador PORT MAP (
          PIN => PIN,
          clock => clock,
          Reset => Reset,
          POUT => POUT,
          WR => WR,
          Endereco => Endereco,
          OPCODE => OPCODE,
          Constante => Constante,
          Dados_M => Dados_M,
          SEL_R => SEL_R,
          Operando1 => Operando1
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

      -- insert stimulus here 

      wait;
   end process;

END;
