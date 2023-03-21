----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:12 03/03/2023 
-- Design Name: 
-- Module Name:    C_Processador - Behavioral 
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

entity C_Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           WR : out  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           Constante : inout  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC);
end C_Processador;

architecture Behavioral of C_Processador is

begin


end Behavioral;

