----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:27:42 03/01/2023 
-- Design Name: 
-- Module Name:    ProgramableCounter - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ProgramableCounter is
    Port ( clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC : in  STD_LOGIC;
			  Constante : in STD_LOGIC_VECTOR (7 downto 0));
end ProgramableCounter;

architecture Behavioral of ProgramableCounter is
begin
process(clock,Reset,ESCR_PC)
variable count:STD_LOGIC_VECTOR (7 downto 0);
begin
	if rising_edge(clock) then
		if(Reset='1') then
			count:="00000000";
		else
			if(ESCR_PC='1') then
				count:= Constante;
			else 
				count:=count+1;
			end if;
		end if;
	end if;
Endereco<=count;
end process;
end Behavioral;

