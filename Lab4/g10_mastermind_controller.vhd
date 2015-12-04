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
		
		modify_G : in std_logic;
		mode : in std_logic;
		switch_LED : in std_logic;
		P_generated : in std_logic;
		
		sw1_LD, sw2_LD, sw3_LD, sw4_LD : out std_logic;
		GR_LD1, GR_LD2, GR_LD3,GR_LD4 : out std_logic;
		switch_REG : out std_logic;
		RippleBlankInState : out std_logic;
		
		RP_LD : out std_logic; -- < new --
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
end g10_mastermind_controller;

architecture behavior of g10_mastermind_controller is

TYPE state_type2 is (a,b,c,d,e,f,g,h,i,j,k,l,m,n);
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
				sw1_LD <= '0';
				sw2_LD <= '0';
				sw3_LD <= '0';
				sw4_LD <= '0';
				
				GR_LD1 <= '1';
				GR_LD2 <= '1';
				GR_LD3 <= '1';
				GR_LD4 <= '1';
				
				if (switch_LED = '0') then 
					y_present <= f;
				end if;
			when f => 
				sw1_LD <= '1';
				sw2_LD <= '0';
				sw3_LD <= '0';
				sw4_LD <= '0';
				
				if (switch_LED = '0') then 
					y_present <= g;
				end if;
				
				if (modify_G = '0') then 
					GR_LD1 <= '0';
					GR_LD2 <= '0';
					GR_LD3 <= '0';
					GR_LD4 <= '0';
					y_present <= j;
				end if;
				
			when g => 
				sw1_LD <= '0';
				sw2_LD <= '1';
				sw3_LD <= '0';
				sw4_LD <= '0';
				
				if (switch_LED = '0') then 
					y_present <= h;
				end if;
				
				if (modify_G = '0') then 
					GR_LD1 <= '0';
					GR_LD2 <= '0';
					GR_LD3 <= '0';
					GR_LD4 <= '0';
					y_present <= j;
				end if;
			
			when h => 
				sw1_LD <= '0';
				sw2_LD <= '0';
				sw3_LD <= '1';
				sw4_LD <= '0';
				
				if (switch_LED = '0') then 
					y_present <= i;
				end if;
				
				if (modify_G = '0') then 
					GR_LD1 <= '0';
					GR_LD2 <= '0';
					GR_LD3 <= '0';
					GR_LD4 <= '0';
					y_present <= j;
				end if;
			
			when i => 
				sw1_LD <= '0';
				sw2_LD <= '0';
				sw3_LD <= '0';
				sw4_LD <= '1';
				
				if (switch_LED = '0') then 
					y_present <= f;
				end if;
				if (modify_G = '0') then 
					GR_LD1 <= '0';
					GR_LD2 <= '0';
					GR_LD3 <= '0';
					GR_LD4 <= '0';
					y_present <= j;
				end if;
			when j => 
				if (ready = '0') then
					SR_LD <= '1'; 
					y_present <= k;
				end if;
			when k =>
				y_present <= l;
				
			when l =>
				SR_LD <= '0';
				y_present <= m;
			when m =>
				switch_REG <= '1';
				RippleBlankInState <= '1';
				y_present <= n;
				
			when n =>
				if (modify_G = '1') then
					switch_REG <= '0';
					RippleBlankInState <= '0';
					y_present <= e;
				end if;
			
			end case;
		end if;
			

end if;

End process;

end behavior;

