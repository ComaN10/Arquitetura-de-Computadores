----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:11:22 03/02/2023 
-- Design Name: 
-- Module Name:    Gestor_de_perifericos - Behavioral 
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

entity Gestor_de_perifericos is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  clock : in  STD_LOGIC);
end Gestor_de_perifericos;

architecture Behavioral of Gestor_de_perifericos is
begin
process(Operando1,ESCR_P,PIN, clock)
begin
if (rising_edge(clock))then
	if (ESCR_P='1')then
		POUT<=Operando1;
	else
		Dados_IN<=PIN;
	end if;
end if;
end process;
end Behavioral;

