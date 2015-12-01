library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MASTERMIND is
port (clk : in std_logic;
		--StartCD : out std_logic;
		--ReadyC : out std_logic;
		--G : out std_logic_vector (11 downto 0);
		--P_generatedRPG : out std_logic;
		
		P_generated : in std_logic; --buttons
		Start : in std_logic;
		Ready : in std_logic;
		switch_LED : in std_logic;
				
		mode : in std_logic;									  --switches
		switch_REG : in std_logic_vector (1 downto 0);
		LED_value : in std_logic_vector (3 downto 0); --for 15 downto 0, bits  = code, in 7-seg
		
		LED1 : out std_logic_vector(6 downto 0);  --displaying_LED's
		LED2 : out std_logic_vector(6 downto 0); --work on
		LED3 : out std_logic_vector(6 downto 0);
		LED4 : out std_logic_vector(6 downto 0));
end MASTERMIND;

architecture behavior of MASTERMIND is 
signal addr, G, gg, addrn,pattern : std_logic_vector(11 downto 0); --vectors
signal cmp, srs, ps, grs, grl, srld, rpld : std_logic;    -- controller 
signal tmi,tme,tce,tcr,sol,tmout, last : std_logic; --possibility table
signal tmi2,tme2,tce2,tcr2,sol2,tmout2, last2 : std_logic; --counter table
signal P_generatedN : std_logic;
signal StartCD, ReadyC : std_logic;
signal g1,g2,g3,g4 : std_logic_vector(2 downto 0);
signal LED_valueI : std_logic_vector (2 downto 0);
signal current_LED, next_LED : std_logic_vector (1 downto 0);
signal display_score, display_guess, current_guess, view_REG : std_logic_vector (1 downto 0);
signal ripple_out : std_logic;


type state_type is (A,B,C,D,E,F,H);
signal y_present : state_type;


component g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
		
		--RP_LD : in std_logic;
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		GR_LD : in std_logic;
		SR_LD : in std_logic);
		
end component;

component g10_mastermind_controller is
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
		RP_LD : out std_logic;
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
end component;

component g10_possibility_table is 
port (TC_EN : in std_logic; 
		TC_RST : in std_logic; 
		TM_IN : in std_logic;  
		TM_EN : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDR : out std_logic_vector (11 downto 0);
		TM_OUT : out std_logic);
end component;

component g10_7_segment_decoder is
port( code            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments        : out std_logic_vector(6 downto 0));
end component;


component RandomPatternGenerator is
port (P_GeneratedN : in std_logic;
		clk : in std_logic;
		Start : in std_logic;
		RP_LD : in std_logic;
		EXT_PATTERN : out std_logic_vector(11 downto 0));
end component;


begin

g1 <= "000";
g2 <= "000";
g3 <= "000";
g4 <= "000";
gg <= g4 & g3 & g2 & g1;
LED_valueI <= LED_value(3 downto 1);

with switch_REG select --switch_REG
	view_REG <= display_guess when "01",
		    display_score when "10",
		    current_guess when "11",
		    "00" when others; 
		 

--mapping between controller, datapath and possiblity table
gate1: g10_mastermind_controller port map (SC_CMP => cmp, TC_LAST => last, START => Start, READY => Ready, CLK => clk, 
														SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, RP_LD => rpld,
														TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, SOLVED => sol);
														
gate2: g10_mastermind_datapath port map (G => gg, EXT_PATTERN => pattern, TM_ADDR => addr, SC_CMP => cmp, CLK => clk, 
								clr => Start, SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld);

gate3: g10_possibility_table port map (TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, CLK => clk, TC_LAST => last,
													TM_ADDR => addr, TM_OUT => tmout);

gate4: RandomPatternGenerator port map (P_generatedN => P_generated, clk => clk, EXT_PATTERN => pattern, Start => Start,
													RP_LD => rpld);													
gate5: g10_7_segment_decoder port map (code => LED_value, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED1);
gate6: g10_7_segment_decoder port map (code => LED_value, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED2);		
gate7: g10_7_segment_decoder port map (code => LED_value, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED3);	
gate8: g10_7_segment_decoder port map (code => LED_value, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED4);												
													
mastermind : process (clk, Start, Ready, P_Generated, switch_LED, mode, switch_REG, LED_value)
begin
	case current_LED is 
		when "00" => next_LED <= "01";
			g1 <= LED_valueI;	
		when "01" => next_LED <= "10";
			g2 <= LED_valueI;
		when "10" => next_LED <= "11";
			g3 <= LED_valueI;
		when "11" => next_LED <= "00";
		   g4 <= LED_valueI;
		when others => next_LED <= "11";
	end case;

	
--
--if (Start = '0') then
--	StartCD <= '0';  
--	ReadyC <= '0';
--	G <= "000000001001";
--	y_present <= A;
--	elsif (rising_edge(clk)) then 
--		
--		case y_present is 
--					
--			when A => 
--				if (mode = '0') then  --do user algorithm
--					if (P_generated = '0') then
--						P_generatedN <= '1';
--						y_present <= B;
--					end if;
--					
--					 
--				else 
--					y_present <= H; --do system algorithm
--				end if;
--							
--			when B =>  -- for RPG file
--				if (P_generated = '1') then
--					P_generatedN <= '0';
--					y_present <= C;
--				end if;
--			
--			when C =>
--				if (switch_LED = '0') then
--						count_up <= '1';
--						y_present <= D;
--					end if;
--					if (Ready = '0') then
--						ReadyC <= '1';
--						y_present <= E;
--					end if;
--			
--			when D =>  -- LED_counter
--				if( switch_LED = '1') then 
--				current_LED <= next_LED;	
--				
--					y_present <= C;
--				end if;
--			
--			when E => -- for tranmitting the guess, cycle through each reg, build
--					if (switch_REG = "00") then
--						REG <= current_guess;  --user 
--					elsif (switch_REG = "01") then
--						REG <= display_score; -- system
--					elsif (switch_REG = "10") then 
--						REG <= display_guess; --system
--					end if;
--				y_present <= C; 
--					if mode = '1' then
--						y_present <= H; -- do system algorithm 
--					end if;
--					
--					
--			end case;
--end if;

end process;


end behavior;