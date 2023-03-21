library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Motherboard is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0));
end Motherboard;

architecture Behavioral of Motherboard is

--__________________________________**Components**___________________________________________--
Component Memoria_de_Instrucoes Port(
			  Endereco : in  STD_LOGIC_VECTOR (7 downto 0);
           OPCODE : out  STD_LOGIC_VECTOR (4 downto 0);
           Constante : out  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : out  STD_LOGIC);
END component;			  
Component Memoria_de_dados_RAM Port(
			  Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           WR : in  STD_LOGIC;
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
end component;
Component Processador Port(
			  PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  WR : out  STD_LOGIC;
			  Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
			  VarEndereco: out  STD_LOGIC_VECTOR (7 downto 0);
           OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
			  Constante: in  STD_LOGIC_VECTOR (7 downto 0);
			  Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
			  SEL_R : in  STD_LOGIC;
			  Operando1 : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
			  
END component;
--__________________________________**Signals**___________________________________________--
--S_ = signal
--C_= connection
--MEMORIA DE INSTRUCOES--
signal S_Endereco_1: STD_LOGIC_VECTOR(7 DOWNTO 0);--IN
signal S_OPCODE: STD_LOGIC_VECTOR (4 downto 0);--OUT
signal S_Constante: STD_LOGIC_VECTOR(7 DOWNTO 0);--OUT
signal S_SEL_R: STD_LOGIC;--OUT
--RAM--
signal S_Operando1:STD_LOGIC_VECTOR(7 downto 0);--IN
signal S_WR:STD_LOGIC;--IN
signal S_Dados_M:STD_LOGIC_VECTOR(7 downto 0);--OUT
signal S_VarEndereco:STD_LOGIC_VECTOR(7 downto 0);--OUT

--__________________________________**Connection**___________________________________________--
begin
C_Memoria_de_Instrucoes : Memoria_de_Instrucoes Port Map(S_Endereco_1,S_OPCODE,S_Constante,S_SEL_R);
C_Memoria_de_dados : Memoria_de_dados_RAM Port Map(S_Operando1,clock,S_WR,S_VarEndereco,S_Dados_M);
C_Processador: Processador Port Map( PIN,clock,Reset,POUT,S_WR,S_Endereco_1,S_VarEndereco,S_OPCODE,S_Constante,S_Dados_M,S_SEL_R,S_Operando1);


--instrucao<=S_Endereco_1;
end Behavioral;

