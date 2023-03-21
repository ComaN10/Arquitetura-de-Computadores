library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Memoria_de_Instrucoes is
    Port ( Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           OPCODE : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC);
end Memoria_de_Instrucoes;

architecture Behavioral of Memoria_de_Instrucoes is

begin
process(Endereco)
	begin
	case Endereco is
			when "00000000" => opcode <=  "00010"; sel_r <=  '1'; constante <=  "00001010";
			when "00000001" => opcode <=  "00000"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00000010" => opcode <=  "10010"; sel_r <=  'X'; constante <=  "00000111";
			when "00000011" => opcode <=  "01011"; sel_r <=  'X'; constante <=  "XXXXXXXX";
			when "00000100" => opcode <=  "01111"; sel_r <=  'X'; constante <=  "00001110";
			when "00000101" => opcode <=  "00010"; sel_r <=  '0'; constante <=  "11111111";
			when "00000110" => opcode <=  "10011"; sel_r <=  'X'; constante <=  "00011101";
			when "00000111" => opcode <=  "00010"; sel_r <=  '1'; constante <=  "11111111";
			when "00001000" => opcode <=  "01010"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00001001" => opcode <=  "00010"; sel_r <=  '1'; constante <=  "00000001";
			when "00001010" => opcode <=  "00101"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00001011" => opcode <=  "00010"; sel_r <=  '1'; constante <=  "00001110";
			when "00001100" => opcode <=  "00110"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00001101" => opcode <=  "10011"; sel_r <=  'X'; constante <=  "00011101";
			when "00001110" => opcode <=  "00100"; sel_r <=  'X'; constante <=  "00001010";
			when "00001111" => opcode <=  "00010"; sel_r <=  '0'; constante <=  "00000000";
			when "00010000" => opcode <=  "00100"; sel_r <=  'X'; constante <=  "00001011";
			when "00010001" => opcode <=  "00010"; sel_r <=  '0'; constante <=  "00000011";
			when "00010010" => opcode <=  "00100"; sel_r <=  'X'; constante <=  "00000101";
			when "00010011" => opcode <=  "00011"; sel_r <=  '0'; constante <=  "00001011";
			when "00010100" => opcode <=  "00011"; sel_r <=  '1'; constante <=  "00001010";
			when "00010101" => opcode <=  "00101"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00010110" => opcode <=  "00100"; sel_r <=  'X'; constante <=  "00001011";
			when "00010111" => opcode <=  "00011"; sel_r <=  '0'; constante <=  "00000101";
			when "00011000" => opcode <=  "00010"; sel_r <=  '1'; constante <=  "00000001";
			when "00011001" => opcode <=  "00110"; sel_r <=  '0'; constante <=  "XXXXXXXX";
			when "00011010" => opcode <=  "10001"; sel_r <=  'X'; constante <=  "00011100";
			when "00011011" => opcode <=  "10011"; sel_r <=  'X'; constante <=  "00010010";
			when "00011100" => opcode <=  "00011"; sel_r <=  '0'; constante <=  "00001011";
			when "00011101" => opcode <=  "00001"; sel_r <=  'X'; constante <=  "XXXXXXXX";
			when "00011110" => opcode <=  "10011"; sel_r <=  'X'; constante <=  "00011110";
			when others =>opcode<="XXXXX";sel_r<='X';constante <= "XXXXXXXX"; 
			end case;
			end process;
end Behavioral;

