-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT Motherboard
          PORT(
           PIN : in  STD_LOGIC_VECTOR (7 downto 0);
           clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           POUT : out  STD_LOGIC_VECTOR (7 downto 0);
			  instrucao : out  STD_LOGIC_VECTOR (7 downto 0)
			  );
          END COMPONENT;
--Inputs
   signal Reset : std_logic := '1';
   signal PIN : std_logic_vector(7 downto 0) := (others => '0');
   signal Clock : std_logic := '0';

 	--Outputs
   signal POUT : std_logic_vector(7 downto 0);
	signal instrucao :std_logic_vector(7 downto 0);
   -- Clock period definitions
   constant Clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Motherboard PORT MAP (
          Reset => Reset,
          PIN => PIN,
          Clock => Clock,
          POUT => POUT,
			 instrucao => instrucao
        );

   -- Clock process definitions
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for Clock_period*10;

		Reset<='0';		
		PIN<="00000001"; 
		wait for 500ns;
		Reset<='1'; 
		wait for 100 ns;
		PIN<="00000010"; 
		wait for 500 ns;
		Reset<='0';
		wait for 100 ns;
		PIN<="00000011"; 
      wait;
   end process;

END;
