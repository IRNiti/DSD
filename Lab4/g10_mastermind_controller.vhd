library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_controller is
port (SC_CMP : in std_logic;
		TC_LAST : in std_logic;
		START : in std_logic;
		READY : in std_logic;
		CLK : in std_logic;
		
		SR_SEL : out std_logic;
		P_SEL : out std_logic;
		GR_SEL : out std_logic;
		GR_LD : out std_logic;
		SR_LD : out std_logic;
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
end g10_mastermind_controller;

architecture behavior of g10_mastermind_controller is

TYPE state_type is (A,B,C,D,E,F,G);
signal y_present, y_next : state_type;
signal TM_ADDR : std_logic_vector(11 downto 0);

begin 

controller : process (CLK, READY, START,SC_CMP, TC_LAST)

begin

Case y_present is 

	when A =>
		if (START = '1') then 
			SOLVED <= '0';
			y_next <= B;
			for i in 0 to 1096 loop
					TC_EN <= '1';
					TM_EN <= '1';
					TM_IN <= '1';
			end loop;
		end if;
	
	when B => 
			GR_SEL <= '1';
			P_SEL <= '0';
			GR_LD <= '1';
			SR_LD <= '1';
			SR_SEL <= '1';
			TC_RST <= '1';
			SOLVED <= '0';
			if (READY = '0') then
				y_next <= B;
			elsif ((READY = '1') and (SC_CMP = '1')) then 
				y_next <= C;
			elsif ((READY = '1') and (SC_CMP = '0')) then 
				y_next <= D;
			end if;
	 
	 
	when C =>
			SOLVED <= '1';
			
	when D =>
		for i in 0 to 1096 loop
			SR_SEL <= '0';
			SR_LD <= '0';
			P_SEL <= '1';
			GR_LD <= '0';
			SOLVED <= '0';
			TM_EN <= '0';
			TC_EN <= '1';
			if (TC_LAST = '1') then
				y_next <= G;
			elsif((TC_LAST = '0') and (SC_CMP = '1')) then
		--		TM_ADDR <= std_logic_vector(to_unsigned(i));
				TC_EN <= '0';
				y_next <= E;
			elsif((TC_LAST = '0') and (SC_CMP = '0')) then
		--		TM_ADDR <= std_logic_vector(to_unsigned(i));
				TC_EN <= '0';
				y_next <= F;
			end if;
		end loop;
		
	when E => 
		TM_IN <= '1';
		TM_EN <= '1';
		y_next <= D;
		
	when F => 
		TM_IN <= '0';
		TM_EN <= '1';
		y_next <= D;
		
	when G =>
		SR_SEL <= '1';
		P_SEL <= '0';
		GR_SEL <= '0';
		SR_LD <= '1';
		GR_LD <= '1';
		SOLVED <= '0';
		TC_RST <= '1';
		TM_EN <= '0';
		if(READY = '0') then
			y_next <= G;
		elsif ((READY = '1') and (SC_CMP = '1')) then
			y_next <= C;
		elsif((READY = '1') and (SC_CMP = '0')) then
			y_next <= D;
		end if;
		
End case;
End process;



clock : process (CLK, START)
 begin
	if (START = '1') then
		y_present <= A;
	elsif (rising_edge(CLK)) then 
			y_present <= y_next;
	end if;
end process;

end behavior;

