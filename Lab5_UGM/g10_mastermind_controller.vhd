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
		
		--GR : out std_logic_vector;
		--GR_SELECT : in std_logic_vector (1 downto 0);
		modify_G : in std_logic;
		mode : in std_logic;
		--switch_LED : in std_logic;
		P_generated : in std_logic;
		switch_REG : out std_logic;
		
		sw1_LD, sw2_LD, sw3_LD, sw4_LD : out std_logic;
		--GR_LD1, GR_LD2, GR_LD3,GR_LD4 : out std_logic;
		RippleBlankInState : out std_logic;
		
		RP_LD : out std_logic; -- < new --
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
end g10_mastermind_controller;

architecture behavior of g10_mastermind_controller is

TYPE state_type2 is (a,b,c,d,e,f,g,h);
signal y_present : state_type2;
signal TM_ADDR : std_logic_vector(11 downto 0);



begin 

controller : process (CLK, READY, START,SC_CMP, TC_LAST)

begin
RP_LD <= '1';

if (mode = '1') then --user mode
		
	 if (START = '0') then
		y_present <= a;
	 
	 elsif rising_edge(CLK) then 
	
	 
		Case y_present is 

			when a =>
				if (START = '1') then 
					switch_REG <= '0';
					rippleBlankInState <= '0';
					y_present <= b;
				end if;	
			when b => 
				if (modify_G = '1') then 
				y_present <= c;
				end if;
			when c =>
				if (P_generated = '0') then 
					y_present <= d;
				end if;
			when d => 
				switch_REG <= '0';
				RippleBlankInState <= '0';
				y_present <= e;							
			
			when e => 
				if (ready = '0') then
					GR_LD <= '1'; 
					y_present <= f;
				end if;
				
			when f =>
				SR_LD <= '1';
				y_present <= g;
			when g =>
				switch_REG <= '1';
				RippleBlankInState <= '1';
				y_present <= h;
			when h =>
				if (modify_G = '1') then
					y_present <= d;
				end if;
		
			
			end case;
		end if;
			

end if;

End process;

end behavior;

