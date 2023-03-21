library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_SIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity Processador is
    Port ( PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
           WR : out  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
			  VarEndereco : out  STD_LOGIC_VECTOR (7 downto 0);
           OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           Constante : in STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR(7 downto 0)
			  );
			  
			  
end Processador;

architecture Behavioral of Processador is
--__________________________________**Components**___________________________________________--
COMPONENT ALU 
    Port ( Operando1 : in  signed (7 downto 0);
           Operando2 : in  signed (7 downto 0);
           SEL_ALU : in  STD_LOGIC_VECTOR (2 downto 0);
           Resultado : out  signed (7 downto 0);
			  E_FLAG : out STD_LOGIC_VECTOR(4 downto 0));
END COMPONENT;

COMPONENT Gestor_de_perifericos 
    Port ( Operando1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_P : in  STD_LOGIC;
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_IN : out  STD_LOGIC_VECTOR (7 downto 0);
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  clock : in  STD_LOGIC);
END COMPONENT;
COMPONENT NOR8B
	Port (  op0 : in  STD_LOGIC;
			  op1 : in  STD_LOGIC;
			  op2 : in  STD_LOGIC;
			  op3 : in  STD_LOGIC;
			  op4 : in  STD_LOGIC;
			  op5 : in  STD_LOGIC;
			  op6 : in  STD_LOGIC;
			  op7 : in  STD_LOGIC;
           S: out  STD_LOGIC);
END COMPONENT;
COMPONENT MUX_PC 
    Port ( S_FLAG : in  STD_LOGIC;
			  zero : in  STD_LOGIC;
			  um : in  STD_LOGIC;
			  opnor : in  STD_LOGIC;
           op7 : in  STD_LOGIC;
           SEL_PC : in  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_PC : out  STD_LOGIC);
END COMPONENT;

COMPONENT MUX_R 
    Port ( Dados_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           Resultado : in  STD_LOGIC_VECTOR (7 downto 0);
           Dados_M : in  STD_LOGIC_VECTOR (7 downto 0);
           Constante : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_Data : in  STD_LOGIC_VECTOR (1 downto 0);
           Dados_R : out  STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

COMPONENT ProgramableCounter 
    Port ( clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Endereco : out  STD_LOGIC_VECTOR (7 downto 0);
           ESCR_PC : in  STD_LOGIC;
			  Constante: in STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

COMPONENT ROM 
    Port ( OPCODE : in  STD_LOGIC_VECTOR (4 downto 0);
           SEL_ALU : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_P : out  STD_LOGIC;
           SEL_Data : out  STD_LOGIC_VECTOR (1 downto 0);
           ESCR_R : out  STD_LOGIC;
           WR : out  STD_LOGIC;
           SEL_PC : out  STD_LOGIC_VECTOR (2 downto 0);
           ESCR_FLAG : out  STD_LOGIC;
           SEL_FLAG : out  STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;

COMPONENT RegistoA 
    Port ( ESCR_R : in  STD_LOGIC;
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           Operando1 : out  STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

COMPONENT RegistoB 
    Port ( ESCR_R : in  STD_LOGIC;
           Dados_R : in  STD_LOGIC_VECTOR (7 downto 0);
           SEL_R : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           Operando2 : out  STD_LOGIC_VECTOR (7 downto 0));
END COMPONENT;

COMPONENT registoFlags 
    Port ( E_FLAG : in  STD_LOGIC_VECTOR (4 downto 0);
           clock : in  STD_LOGIC;
           ESCR_FLAG : in  STD_LOGIC;
           S_FLAG : out  STD_LOGIC;
           SEL_FLAG : in  STD_LOGIC_VECTOR (2 downto 0));
END COMPONENT;
--__________________________________**Signals**___________________________________________--
--ALU
signal S_Operando1:STD_LOGIC_VECTOR (7 downto 0);--IN
signal S_Operando2:STD_LOGIC_VECTOR (7 downto 0);--IN
signal S_SEL_ALU:STD_LOGIC_VECTOR (2 downto 0);--IN
signal S_Resultado :SIGNED (7 downto 0);--OUT
signal S_E_FLAG :STD_LOGIC_VECTOR(4 downto 0);--OUT
--Gestor_de_perifericos
signal S_ESCR_P : STD_LOGIC;--IN
signal S_Dados_IN :STD_LOGIC_VECTOR (7 downto 0);--OUT
--NOR8B
signal S_S :STD_LOGIC;--OUT
--MUX_PC
signal S_S_FLAG :STD_LOGIC;--IN
signal S_SEL_PC :STD_LOGIC_VECTOR (2 downto 0);--IN
signal S_ESCR_PC :STD_LOGIC;--OUT
--MUX_R
signal S_SEL_Data:STD_LOGIC_VECTOR (1 downto 0);--IN
signal S_Dados_R:STD_LOGIC_VECTOR (7 downto 0);--OUT
--ProgramableCounter
signal S_Endereco:STD_LOGIC_VECTOR(7 DOWNTO 0);--IN
signal S_Constante:STD_LOGIC_VECTOR(7 downto 0);--IN
--ROM
signal S_ESCR_R:STD_LOGIC;--OUT  
signal S_ESCR_FLAG :STD_LOGIC;--OUT
signal S_SEL_FLAG :STD_LOGIC_VECTOR (2 downto 0);--OUT
--RegistoA
signal S_SEL_R :STD_LOGIC;
--__________________________________**Connection**___________________________________________--
begin
C_ALU: ALU Port Map(SIGNED(S_Operando1),SIGNED(S_Operando2),S_SEL_ALU ,S_Resultado,S_E_FLAG);

C_Gestor_de_perifericos: Gestor_de_perifericos Port Map (S_Operando1,S_ESCR_P,PIN,S_Dados_IN,POUT,clock);

C_NOR8B: NOR8B Port Map(S_Operando1(0),S_Operando1(1),S_Operando1(2),S_Operando1(3),S_Operando1(4),S_Operando1(5),S_Operando1(6),S_Operando1(7),S_S);

C_MUX_PC: MUX_PC Port Map(S_S_FLAG,'0','1',S_S,S_Operando1(7),S_SEL_PC,S_ESCR_PC);

C_MUX_R: MUX_R Port Map(S_Dados_IN,STD_LOGIC_VECTOR(S_Resultado),Dados_M ,Constante,S_SEL_Data,S_Dados_R);

C_ProgramableCounter:ProgramableCounter Port Map(clock,Reset,Endereco,S_ESCR_PC,Constante);

C_ROM:ROM Port Map(OPCODE,S_SEL_ALU,S_ESCR_P,S_SEL_Data,S_ESCR_R, WR,S_SEL_PC,S_ESCR_FLAG,S_SEL_FLAG);

C_RegistoA:RegistoA Port Map(S_ESCR_R,S_Dados_R,SEL_R,clock,S_Operando1);

C_RegistoB:RegistoB Port Map(S_ESCR_R,S_Dados_R,SEL_R,clock,S_Operando2);

C_registoFlags:registoFlags Port Map(S_E_FLAG,clock,S_ESCR_FLAG,S_S_FLAG,S_SEL_FLAG);

Operando1<=S_Operando1;
VarEndereco<=Constante;

end Behavioral;


