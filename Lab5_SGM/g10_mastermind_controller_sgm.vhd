library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_controller_sgm is
port (SC_CMP : in std_logic;
		TC_LAST : in std_logic;
		START : in std_logic;
		READY : in std_logic;
		CLK : in std_logic;
--		MODE : in std_logic;
		
		SR_SEL : out std_logic;
		P_SEL : out std_logic;
		GR_SEL : out std_logic;
		GR_LD : out std_logic;
		SR_LD : out std_logic;
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic;
		Display : out std_logic);
end g10_mastermind_controller_sgm;

architecture behavior of g10_mastermind_controller_sgm is

TYPE state_type is (A,B,C,D,E,F,G,H,I,J);
signal y_present : state_type;
signal TM_ADDR : std_logic_vector(11 downto 0);

begin 

controller : process (CLK, START)

begin

--if(MODE = '0') then            -- system guessing mode 

	if (START = '0') then
		SR_SEL <= '0';
		P_SEL <= '0';
		GR_SEL <= '1';
		GR_LD <= '0';
		SR_LD <= '0';
		
		TM_IN <= '0';
		TM_EN <= '0';
		TC_EN <= '0';
		TC_RST <= '0';
		SOLVED <= '0';
		Display <= '1';
		y_present <= A;
		
	elsif(rising_edge(CLK)) then 

		Case y_present is 

			when A =>
				SOLVED <= '0';
				if (START = '1') then 
					y_present <= B;
					TC_RST <= '1';
				end if;	
				
			when B =>
				y_present <= C;
				TC_RST <= '0';
				TC_EN <= '1';
				TM_EN <= '1';
				TM_IN <= '1';
				
			when C =>
				if (TC_LAST = '1') then  -- display current guess
					y_present <= D;
					GR_SEL <= '1';
					P_SEL <= '0';
					GR_LD <= '1';
					SR_SEL <= '1';
					TC_RST <= '1';
				end if;
			
			when D => 
				if (READY = '0') then  -- user inputs score
					y_present <= D;
					GR_SEL <= '1';
					P_SEL <= '0';
					GR_LD <= '1';
					SR_SEL <= '1';
					TC_RST <= '1';
					Display <= '0';
				elsif (READY = '1') then  -- write score to register
					y_present <= E;
					SR_LD <= '1';
				end if;
			 
			 
			when E =>
				if (SC_CMP = '1') then  -- score is (4,0) so game is over
					y_present <= F;
					SOLVED <= '1';
				elsif (SC_CMP = '0') then  -- compare current guess to possibility table
					y_present <= G;
					SR_SEL <= '0';
					SR_LD <= '0';
					P_SEL <= '1';
					GR_LD <= '0';
					TM_EN <= '0';
					TC_EN <= '1';
					TC_RST <= '0';
				end if;
					
			when F =>
				if (START = '0') then 
					y_present <= A;
					SOLVED <= '0';
				end if;
					
			when G =>
				if (TC_LAST = '1') then  -- load next guess
					y_present <= J;
					SR_SEL <= '1';
					P_SEL <= '0';
					GR_SEL <= '0';
					SR_LD <= '1';
					GR_LD <= '1';
					TC_RST <= '1';
				elsif((TC_LAST = '0') and (SC_CMP = '1')) then
					TC_EN <= '0';
					y_present <= H;
					TM_IN <= '1';
					TM_EN <= '1';
				elsif((TC_LAST = '0') and (SC_CMP = '0')) then
					TC_EN <= '0';
					y_present <= I;
					TM_IN <= '0';
					TM_EN <= '1';
				end if;
				
			when H => 
				y_present <= G;
				SR_SEL <= '0';
				SR_LD <= '0';
				P_SEL <= '1';
				GR_LD <= '0';
				TM_EN <= '0';
				TC_EN <= '1';
				TC_RST <= '0';
			
			when I => 
				y_present <= G;
				SR_SEL <= '0';
				SR_LD <= '0';
				P_SEL <= '1';
				GR_LD <= '0';
				TM_EN <= '0';
				TC_EN <= '1';
				TC_RST <= '0';
				
			when J =>
--				if(READY = '0') then
--					y_present <= H;
				if (SC_CMP = '1') then
					y_present <= F;
					SOLVED <= '1';
				elsif (SC_CMP = '0') then
					y_present <= G;
					SR_SEL <= '0';
					SR_LD <= '0';
					P_SEL <= '1';
					GR_LD <= '0';
					TM_EN <= '0';
					TC_EN <= '1';
					TC_RST <= '0';
				end if;
				
		End case;
	End if;
End process;

end behavior;