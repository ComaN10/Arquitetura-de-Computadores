----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:32 03/01/2023 
-- Design Name: 
-- Module Name:    registoFlags - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity registoFlags is
    Port ( E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           clock : in  STD_LOGIC;
           ESCR_FLAG : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC;
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0));
end registoFlags;

architecture Behavioral of registoFlags is
begin
process(E_FLAG,clock,ESCR_FLAG,SEL_FLAG)
variable regF:std_logic_vector (4 downto 0);
begin
	if(ESCR_FLAG='1') then
		if(rising_edge (clock))then
		regF:=E_FLAG;
		end if;
	end if;
	case SEL_FLAG is
	when "000"=>S_FLAG<=regF(0);
	when "001"=>S_FLAG<=regF(1);
	when "010"=>S_FLAG<=regF(2);
	when "011"=>S_FLAG<=regF(3);
	when "100"=>S_FLAG<=regF(4);
	when others => S_FLAG<='X';
	end case;
END PROCESS;

end Behavioral;

