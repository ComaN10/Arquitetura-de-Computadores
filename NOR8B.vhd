library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity NOR8B is
    Port ( op0 : in  STD_LOGIC;
           op1 : in  STD_LOGIC;
           op2 : in  STD_LOGIC;
           op3 : in  STD_LOGIC;
           op4 : in  STD_LOGIC;
           op5 : in  STD_LOGIC;
           op6 : in  STD_LOGIC;
           op7 : in  STD_LOGIC;
           S : out  STD_LOGIC);
end NOR8B;

architecture Behavioral of NOR8B is
begin

	process(op0,op1,op2,op3,op4,op5,op6,op7)
	begin
		S<=NOT(op0 or op1 or op2 or op3 or op4 or op5 or op6 or op7);
	end process;
end Behavioral;