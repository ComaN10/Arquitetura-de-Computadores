----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:28:27 03/01/2023 
-- Design Name: 
-- Module Name:    RegistoA - Behavioral 
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

entity RegistoB is
    Port ( ESCR_R : in  STD_LOGIC;
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
end RegistoB;

architecture Behavioral of RegistoB is
begin
process(ESCR_R,Dados_R,SEL_R,clock)
variable regB:std_logic_vector(7 downto 0);
begin
if(ESCR_R='1') then
	if(rising_edge (clock) and SEL_R='1')then
		regB:=Dados_R;
		end if;
	end if;
	Operando2<=regB;
end process;
end Behavioral;

