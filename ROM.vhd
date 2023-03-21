----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:44:32 03/02/2023 
-- Design Name: 
-- Module Name:    ROM - Behavioral 
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

entity ROM is
    Port ( OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_P : out  STD_LOGIC;
           SEL_Data : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_FLAG : out  STD_LOGIC;
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0));
end ROM;

architecture Behavioral of ROM is

begin
	process(OPCODE)
	begin
		case OPCODE is
			when "00000" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "01"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00001" => SEL_ALU <= "XXX"; ESCR_P <= '1'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00010" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "11"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00011" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "10"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00100" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '1'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00101" => SEL_ALU <= "000"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00110" => SEL_ALU <= "001"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "00111" => SEL_ALU <= "010"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "01000" => SEL_ALU <= "011"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "01001" => SEL_ALU <= "100"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "01010" => SEL_ALU <= "101"; ESCR_P <= '0'; SEL_DATA <= "00"; ESCR_R <= '1'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "01011" => SEL_ALU <= "110"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '1'; SEL_FLAG <= "XXX";
			when "01100" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "000"; ESCR_FLAG <= '0'; SEL_FLAG <= "000";
			when "01101" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "000"; ESCR_FLAG <= '0'; SEL_FLAG <= "001";
			when "01110" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "000"; ESCR_FLAG <= '0'; SEL_FLAG <= "010";
			when "01111" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "000"; ESCR_FLAG <= '0'; SEL_FLAG <= "011";
			when "10000" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "000"; ESCR_FLAG <= '0'; SEL_FLAG <= "100";
			when "10001" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "001"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "10010" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "010"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when "10011" => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "100"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
			when others  => SEL_ALU <= "XXX"; ESCR_P <= '0'; SEL_DATA <= "XX"; ESCR_R <= '0'; WR <= '0'; SEL_PC <= "011"; ESCR_FLAG <= '0'; SEL_FLAG <= "XXX";
		end case;
	end process;
end Behavioral;

