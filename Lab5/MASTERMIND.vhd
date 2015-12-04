library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MASTERMIND is
port (clk : in std_logic;
		
		P_generated : in std_logic; --buttons
		Start : in std_logic;
		Ready : in std_logic;
		switch_LED : in std_logic;
				
		mode : in std_logic;									  --switches
		sw : in std_logic_vector (3 downto 0); --for 15 downto 0, bits  = code, in 7-seg; only actually 3 bits
		modify_G : in std_logic;
		
		segment1 : out std_logic_vector(6 downto 0);  --displaying_LED's
		segment2 : out std_logic_vector(6 downto 0); --work on
		segment3 : out std_logic_vector(6 downto 0);
		segment4 : out std_logic_vector(6 downto 0));
end MASTERMIND;

architecture behavior of MASTERMIND is 
signal addr, G, gg, addrn,pattern : std_logic_vector(11 downto 0); --vectors
signal cmp, srs, ps, grl, srld, rpld : std_logic;    -- controller 
signal grs : std_logic;
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
signal sw1ld, sw2ld, sw3ld, sw4ld : std_logic;
signal grld1, grld2, grld3, grld4 : std_logic;
signal led1r, led2r, led3r, led4r : std_logic;
signal switchreg : std_logic;
signal swI : std_logic_vector(2 downto 0);


type state_type is (A,B,C,D,E,F,H,I,J);
signal y_present : state_type;


component g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
				
		--RP_LD : in std_logic; 
		
		sw: in std_logic_vector (2 downto 0);
		sw1_LD, sw2_LD, sw3_LD, sw4_LD : in std_logic;
		GR_LD1, GR_LD2, GR_LD3,GR_LD4 : in std_logic;
		switch_REG : in std_logic;
		
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		--GR_LD : in std_logic;
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
		
		modify_G : in std_logic;
		mode : in std_logic;
		switch_LED : in std_logic;
		P_generated : in std_logic;
		
		sw1_LD, sw2_LD, sw3_LD, sw4_LD : out std_logic;
		GR_LD1, GR_LD2, GR_LD3,GR_LD4 : out std_logic;
		switch_REG : out std_logic;		
		
		RP_LD : out std_logic; -- < new --
		
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

--g1 <= "000";
--g2 <= "000";
--g3 <= "000";
--g4 <= "000";
--gg <= g4 & g3 & g2 & g1;

--
--with switch_REG select --switch_REG
--	view_REG <= current_guess when "01", -- use -<- when guessing
--					display_guessN when "10",
--		         display_scoreN when "11",
--		         "000000000000" when others; 

					
--LED_value_int1 <= LED_value;
--LED_value_int2 <= LED_value;
--LED_value_int3 <= LED_value;
--LED_value_int4 <= LED_value;


--mapping between controller, datapath and possiblity table
gate1: g10_mastermind_controller port map (SC_CMP => cmp, TC_LAST => last, START => Start, READY => Ready, CLK => clk, 
													SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, RP_LD => rpld,
													TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, SOLVED => sol, 
													sw1_LD => sw1ld, sw2_LD => sw2ld, sw3_LD => sw3ld, sw4_LD => sw4ld, GR_LD1 => grld1,
													GR_LD2 => grld2, GR_LD3 => grld3, GR_LD4 => grld4, switch_REG => switchreg,
													modify_G => modify_G, switch_LED => switch_LED, mode => mode,
													P_generated => P_generated);
														
gate2: g10_mastermind_datapath port map (G => gg, EXT_PATTERN => pattern, TM_ADDR => addr, SC_CMP => cmp, CLK => clk, 
								clr => Start, SR_SEL => srs, P_SEL => ps, GR_SEL => grs, SR_LD => srld, 
								sw1_LD => sw1ld, sw2_LD => sw2ld, sw3_LD => sw3ld, sw4_LD => sw4ld, GR_LD1 => grld1, GR_LD2 => grld2,
								GR_LD3 => grld3, GR_LD4 => grld4, switch_REG => switchreg, sw => swI );
swI <= sw(3 downto 1);

gate3: g10_possibility_table port map (TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, CLK => clk, TC_LAST => last,
													TM_ADDR => addr, TM_OUT => tmout);

gate4: RandomPatternGenerator port map (P_generatedN => P_generated, clk => clk, EXT_PATTERN => pattern, Start => Start,
													RP_LD => rpld);													

end behavior;									
		
--mastermind : process (P_generated, Start, Ready, switch_LED, mode, sw, modify_G)
--
--if (mode = '0') then
--	--do system mode
--	else 
--	-- do user mode
--end if;
