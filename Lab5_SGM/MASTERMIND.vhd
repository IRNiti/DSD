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
		
		input1, input2 : in std_logic_vector(2 downto 0);
		
		segment1 : out std_logic_vector(6 downto 0);  --displaying_LED's
		segment2 : out std_logic_vector(6 downto 0); --work on
		segment3 : out std_logic_vector(6 downto 0);
		segment4 : out std_logic_vector(6 downto 0));
end MASTERMIND;

architecture behavior of MASTERMIND is 

signal addr, G, gg, addrn,pattern : std_logic_vector(11 downto 0); --vectors
signal cmp, srs, ps, grl, srld, rpld, sol, grs : std_logic;    -- controller 
signal tmi,tme,tce,tcr,tmout, last : std_logic; --possibility table
--signal tmi2,tme2,tce2,tcr2,sol2,tmout2, last2 : std_logic; --counter table
--signal P_generatedN : std_logic;
--signal StartCD, ReadyC : std_logic;
--signal g1,g2,g3,g4 : std_logic_vector(2 downto 0);
--signal LED_valueI : std_logic_vector (2 downto 0);
--signal current_LED, next_LED : std_logic_vector (1 downto 0);
--signal display_scoreN, display_guessN, current_guess, view_REG : std_logic_vector (11 downto 0);
signal ripple_out : std_logic;
--signal LED_value_int1,LED_value_int2,LED_value_int3,LED_value_int4 : std_logic_vector( 3 downto 0);
--signal sw1ld, sw2ld, sw3ld, sw4ld : std_logic;
--signal grld1, grld2, grld3, grld4 : std_logic;
--signal led1r, led2r, led3r, led4r : std_logic;
--signal switchreg : std_logic;
--signal swI : std_logic_vector(2 downto 0);
signal ripple1, ripple2 : std_logic;
signal sr1N, sr2N, sr3N, sr4N : std_logic_vector (3 downto 0);
signal code1, code2 : std_logic_vector (3 downto 0);
signal disp : std_logic;
signal seg1, seg2, seg3, seg4 : std_logic_vector(3 downto 0);
signal state1, state2 : std_logic;


type state_type is (A,B,C,D,E,F,H,I,J);
signal y_present : state_type;




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

component g10_mastermind_controller_sgm is
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
end component;

component g10_mastermind_datapath_sgm is
	port (--G : in std_logic_vector(11 downto 0);
	--		EXT_PATTERN : in std_logic_vector (11 downto 0);
			TM_ADDR : in std_logic_vector (11 downto 0);
			CLK : in std_logic;
			SR_SEL : in std_logic;
			P_SEL : in std_logic;
			GR_SEL : in std_logic;
			GR_LD : in std_logic;
			SR_LD : in std_logic;
	--		MODE : in std_logic;
			
--			segments1, segments2, segments3, segments4 : out std_logic_vector (6 downto 0);
			code1, code2, code3, code4 : out std_logic_vector(3 downto 0);
			SC_CMP : out std_logic);

end component;

component g10_3to4_decoder is
	port(input: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(3 downto 0));
end component;



begin

	Gate1: g10_possibility_table port map(	TC_EN => tce, TC_RST => tcr, TM_IN => tmi, TM_EN => tme, 
														CLK => clk, TC_LAST => last, TM_ADDR => addr, TM_OUT => tmout);
	
	Gate2: g10_mastermind_controller_sgm port map ( SC_CMP => cmp, TC_LAST => last, START => Start, READY => Ready,
																	CLK => clk, SR_SEL => srs, P_SEL => ps, GR_SEL => grs, 
																	GR_LD => grl, SR_LD => srld, TM_IN => tmi, TM_EN => tme, 
																	TC_EN => tce, TC_RST => tcr, SOLVED => sol, Display => disp);
	
	Gate3: g10_mastermind_datapath_sgm port map (TM_ADDR => addr, CLK => clk, SR_SEL => srs, 
																P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, SC_CMP => cmp,
																code1 => sr1N, code2 => sr2N, code3 => sr3N, code4 => sr4N);
																
	Convert1: g10_3to4_decoder port map(input => input1, output => code1);
	Convert2: g10_3to4_decoder port map(input => input2, output => code2);
	
	Display1: g10_7_segment_decoder port map(code => seg1, RippleBlank_In => state1, RippleBlank_Out => ripple1, segments => segment1);
	Display2: g10_7_segment_decoder port map(code => seg2, RippleBlank_In => state2, RippleBlank_Out => ripple2, segments => segment2);
	Display3: g10_7_segment_decoder port map(code => seg3, RippleBlank_In => state1, RippleBlank_Out => ripple_out, segments => segment3);
	Display4: g10_7_segment_decoder port map(code => seg4, RippleBlank_In => state2, RippleBlank_Out => ripple_out, segments => segment4);	
	
	working : process(clk)
	
	begin
	
	if (disp = '1') then
	
		seg1 <= sr1N;
		seg2 <= sr2N;
		seg3 <= sr3N;
		seg4 <= sr4N;
		state1 <= '0';
		state2 <= '0';
		
	else 
		seg1 <= code1;
		seg2 <= code1;
		seg3 <= code2;
		seg4 <= code2;
		state1 <= '1';
		state2 <= '0';
	end if;
		

--		if(mode = '0') then  --system guessing mode
	
	
--		end if;
		
	end process;

end behavior;									
		

