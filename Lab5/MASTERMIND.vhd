library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MASTERMIND is
port (clk : in std_logic;
		
		P_generated : in std_logic; --buttons
		Start : in std_logic;
		Ready : in std_logic;
		LED_countup : in std_logic;
				
		mode : in std_logic;									  --switches
		switch_REG : in std_logic_vector (1 downto 0);
		sw : in std_logic_vector (3 downto 0); --for 15 downto 0, bits  = code, in 7-seg
		
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
signal display_scoreN, display_guessN, current_guess, view_REG : std_logic_vector (11 downto 0);
signal ripple_out : std_logic;
signal LED_value_int1,LED_value_int2,LED_value_int3,LED_value_int4 : std_logic_vector( 3 downto 0);
signal GR1N, GR2N, GR3N, GR4N : std_logic_vector (2 downto 0);

type state_type is (A,B,C,D,E,F,H,I,J);
signal y_present : state_type;


component g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
		
		display_score : out std_logic_vector (11 downto 0);
		display_guess : out std_logic_vector (11 downto 0);
		
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


with switch_REG select --switch_REG
	view_REG <= current_guess when "01", -- use -<- when guessing
					display_guessN when "10",
		         display_scoreN when "11",
		         "000000000000" when others; 

					
--LED_value_int1 <= LED_value;
--LED_value_int2 <= LED_value;
--LED_value_int3 <= LED_value;
--LED_value_int4 <= LED_value;


--mapping between controller, datapath and possiblity table
gate1: g10_mastermind_controller port map (SC_CMP => cmp, TC_LAST => last, START => Start, READY => Ready, CLK => clk, 
														SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, RP_LD => rpld,
														TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, SOLVED => sol);
														
gate2: g10_mastermind_datapath port map (G => gg, EXT_PATTERN => pattern, TM_ADDR => addr, SC_CMP => cmp, CLK => clk, 
								clr => Start, SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, 
								display_guess => display_guessN, display_score => display_scoreN, GR1 => GR1N, GR2 => GR2N, 
								GR3 => GR3N, GR4 => GR4N, sw => swI);

gate3: g10_possibility_table port map (TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, CLK => clk, TC_LAST => last,
													TM_ADDR => addr, TM_OUT => tmout);

gate4: RandomPatternGenerator port map (P_generatedN => P_generated, clk => clk, EXT_PATTERN => pattern, Start => Start,
													RP_LD => rpld);													
gate5: g10_7_segment_decoder port map (code => LED_value_int1, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED1);
gate6: g10_7_segment_decoder port map (code => LED_value_int2, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED2);		
gate7: g10_7_segment_decoder port map (code => LED_value_int3, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED3);	
gate8: g10_7_segment_decoder port map (code => LED_value_int4, RippleBlank_In => '0', RippleBlank_out => ripple_out, 
													segments => LED4);												
		
--swI <= sw(3 downto 1); --goes into each guess reg
--		
--mastermind : process (clk, Start, Ready, P_Generated, LED_countup, mode, switch_REG, LED_value)
--LED_countup <= '0';
--LED_value <= "00";
--present_LED_value <= "00";
--next_LED_value <= "01";
--begin
--
--
--
--if (LED_value = "00") then
--	LD1 <= '1';
--	LD2 <= '0';
--	LD3 <= '0';
--	LD4 <= '0';
--	elsif (LED_value = "01") then
--    LD1 <= '0';
--	 LD2 <= '1';
--	 LD3 <= '0';
--	 LD4 <= '0';
--	elsif (LED_value = "10") then
--    LD1 <= '0';
--	 LD2 <= '0';
--	 LD3 <= '1';
--	 LD4 <= '0';
--	else
--    LD1 <= '0';
--	 LD2 <= '0';
--	 LD3 <= '0';
--	 LD4 <= '1';
--end if;
--
--if (LED_countup = '1') then
--	present_LED_value <= next_LED_value;
--	LED_countup = '0';
--	
--	case present_LED_value is
--	when "00" => next_LED_value <= "01";
--	when "01" => next_LED_value <= "10";
--	when "10" => next_LED_value <= "11";
--	when "11" => next_LED_value <= "00";
--	end case;
--	
--end if;
--
--
--
--
--if (START = '0') then
--		y_present <= A;
--		
--	elsif(rising_edge(CLK)) then 
--
--		Case y_present is 
--
--			when A => 
--				if (start = '1') then
--				--StartCD <= '0';  
--				--ReadyC <= '0';
--				--G <= "000000001001";
--				y_present <= A;
--				elsif (rising_edge(clk)) then 
--				y_present = L;
--			   end if;
--			when L => 
--				if (ready = '1') then
--					y_present <= B;
--			when B => 
--				if (mode = '0') then --user mode
--					if (P_generated = '0') then --RPG file
--					P_generatedN <= '1';
--					y_present = E;
--					end if;
--				else 
--					y_present = C
--				end if;
--			when E =>
--				if (P_generated = '1') then
--					P_generatedN <= '0';
--					y_present = F;
--				end if;
--			when F => --cyling ability
--				if (READY = '0') then --transmit bits
--										--controller activates certain sel 
--										-- can set bits in LEDs
--					y_present = H;
--				end if;
--			
--			when H =>
--				if (mode = '1') then --system
--					--do stuff 
--					y_present = C;
--				end if;
--			when C => -- system mode
--					if (mode = '0') then
--					y_present = B;
--					end if;
--					--do stuff
--				   y_present = J;
--			
--			when J =>
--				if (mode = '0') then
--					y_present = F;
--				end if;	
--		end case;
--				
--			
--			
--
--
--
--
--
--
--
--
--
--
--
--
--
--
----
----
----	case current_LED is 
----		when "00" => next_LED <= "01";
----			g1 <= LED_valueI;	
----		when "01" => next_LED <= "10";
----			g2 <= LED_valueI;
----		when "10" => next_LED <= "11";
----			g3 <= LED_valueI;
----		when "11" => next_LED <= "00";
----		   g4 <= LED_valueI;
----		when others => next_LED <= "11";
----	end case;
----
----	case LED_countup is --display_guess
----		when "00" => LED_value_int1 <= g1;
----		when "01" => LED_value_int2 <= g2;
----		when "10" => LED_value_int3 <= g3;
----		when "11" => LED_value_int4 <= g4;
----	end case;
----	
----	case current_LED is
----		when "00" => LED_value_int1 <= LED_valueI;
----						 LED_value_int2 <= '0';
----						 LED_value_int3 <= '0';
----						 LED_value_int4 <= '0';
----		when "01" => LED_value_int2 <= LED_valueI;
----		when "10" => LED_value_int3 <= LED_valueI;
----		when "11" => LED_value_int4 <= LED_valueI;
----	
--
--
----if (switch_REG = "01") then					--fix up
----LED_value_int1 <= display_guessN (11 downto 9);
----LED_value_int2 <= display_guessN (8 downto 6);
----LED_value_int3 <= display_guessN (5 downto 3);
----LED_value_int4 <= display_guessN (2 downto 0);
----end if;		  
----
----if (switch_REG = "10") then 
----LED_value_int1 <= "000000";
----LED_value_int2 <= "000000";
----LED_value_int3 <= display_guessN (5 downto 3);
----LED_value_int4 <= display_guessN (2 downto 0);
----end if;
--
--
--
--
--end process;


end behavior;