library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Memoria_de_dados_RAM is
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end Memoria_de_dados_RAM;

architecture Behavioral of Memoria_de_dados_RAM is
begin
process(Operando1,clock,WR,Constante)
type memory is array (0 to 255) of std_logic_vector(7 downto 0);
variable RAM: memory;
begin
if(WR='1') then
	if rising_edge(clock) then
		RAM(to_integer(unsigned(Constante))):= Operando1;
	end if;
else
	Dados_M <= RAM(to_integer(unsigned(Constante)));
end if;
end process;
end Behavioral;

