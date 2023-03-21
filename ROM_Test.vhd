--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:03:08 03/07/2023
-- Design Name:   
-- Module Name:   C:/Users/carlo/Desktop/Projeto1AC/ROM_Test.vhd
-- Project Name:  Projeto1AC
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ROM
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
 
ENTITY ROM_Test IS
END ROM_Test;
 
ARCHITECTURE behavior OF ROM_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ROM
    PORT(
         OPCODE : IN  std_logic_vector(4 downto 0);
         SEL_ALU : OUT  std_logic_vector(2 downto 0);
         ESCR_P : OUT  std_logic;
         SEL_Data : OUT  std_logic_vector(1 downto 0);
         ESCR_R : OUT  std_logic;
         WR : OUT  std_logic;
         SEL_PC : OUT  std_logic_vector(2 downto 0);
         ESCR_FLAG : OUT  std_logic;
         SEL_FLAG : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OPCODE : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal SEL_ALU : std_logic_vector(2 downto 0);
   signal ESCR_P : std_logic;
   signal SEL_Data : std_logic_vector(1 downto 0);
   signal ESCR_R : std_logic;
   signal WR : std_logic;
   signal SEL_PC : std_logic_vector(2 downto 0);
   signal ESCR_FLAG : std_logic;
   signal SEL_FLAG : std_logic_vector(2 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ROM PORT MAP (
          OPCODE => OPCODE,
          SEL_ALU => SEL_ALU,
          ESCR_P => ESCR_P,
          SEL_Data => SEL_Data,
          ESCR_R => ESCR_R,
          WR => WR,
          SEL_PC => SEL_PC,
          ESCR_FLAG => ESCR_FLAG,
          SEL_FLAG => SEL_FLAG
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	


      -- insert stimulus here 

      wait;
   end process;

END;
