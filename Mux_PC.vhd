----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:34:33 03/01/2023 
-- Design Name: 
-- Module Name:    MUX_PC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_arith.all; 
use ieee.numeric_std.all; 
use ieee.std_logic_unsigned.all; 
entity MUX_PC is
    Port ( S_FLAG : in  STD_LOGIC;
			  zero : in  STD_LOGIC;
			  um : in  STD_LOGIC;
			  opnor : in  STD_LOGIC;
           op7 : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
			  
end MUX_PC;

architecture Behavioral of MUX_PC is

begin
process(S_FLAG, op7,opnor,um,zero, SEL_PC) 
		begin 
			case SEL_PC is
				when "000" => ESCR_PC <= S_FLAG;
				when "001" => ESCR_PC <= opnor;
				when "010" => ESCR_PC <= op7;
				when "011" => ESCR_PC <= zero;
				when "100" => ESCR_PC <= um;
				when others => ESCR_PC <= 'X';
			end case;
		end process;
		end Behavioral;