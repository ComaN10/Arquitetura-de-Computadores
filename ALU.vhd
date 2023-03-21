----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:08:39 02/28/2023 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

entity ALU is
    Port ( Operando1 : in  signed (7 downto 0);
           Operando2 : in  signed (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  signed (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR(4 downto 0));
end ALU;

Architecture Behavioral of ALU is

begin
process(Operando1,Operando2,SEL_ALU)

variable resAux:signed(7 downto 0);
begin
case SEL_ALU is
	when "000"=>resAUX:=Operando1 + Operando2;
	when "001"=>resAUX:=Operando1 - Operando2;
	when "010"=>resAUX:=Operando1 and Operando2;
	when "011"=>resAUX:=Operando1 or Operando2;
	when "100"=>resAUX:=Operando1 NOR Operando2;
	when "101"=>resAUX:=Operando1 xor Operando2;
	when "110"=>if(Operando1 < Operando2) then
						E_FLAG(0)<='1';
						E_FLAG(1)<='1';
						else
							E_FLAG(0)<='0';
							E_FLAG(1)<='0';
					end if;
				
					if(Operando1 > Operando2) then
						E_FLAG(3)<='1';
						E_FLAG(4)<='1';
						else
						E_FLAG(3)<='0';
						E_FLAG(4)<='0';
					end if;	
					if(Operando1 = Operando2) then
					E_FLAG(2)<='1';
					E_FLAG(4)<='1';
					E_FLAG(1)<='1';
					else
					E_FLAG(2)<='0';
					end if;
	when others => resAUX:="00000000";
end case;
Resultado<=resAUX;
end process;
end Behavioral;

