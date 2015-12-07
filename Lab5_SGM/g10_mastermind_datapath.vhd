library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		CLK : in std_logic;
		clr : in std_logic;
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		GR_LD : in std_logic;
		SR_LD : in std_logic;
		MODE : in std_logic;
		
		segments1, segments2, segments3, segments4 : out std_logic_vector (6 downto 0);
		SC_CMP : out std_logic);

end g10_mastermind_datapath;


architecture behavior of g10_mastermind_datapath is

signal a : std_logic;
signal b,c,d,e : std_logic_vector (11 downto 0);
signal f,h,i : std_logic_vector (3 downto 0);
signal P1,P2,P3,P4, G1,G2,G3,G4 : std_logic_vector (2 downto 0);
signal exact,color : std_logic_vector (2 downto 0);
signal d1,d2,d3,d4 : std_logic_vector (2 downto 0);
signal ADDR1 : std_logic_vector (2 downto 0);
signal ADDR2 : std_logic_vector (2 downto 0);
signal ADDR3 : std_logic_vector (2 downto 0);
signal ADDR4 : std_logic_vector (2 downto 0);
signal EXT_PATTERN1 : std_logic_vector (2 downto 0);
signal EXT_PATTERN2 : std_logic_vector (2 downto 0);
signal EXT_PATTERN3 : std_logic_vector (2 downto 0);
signal EXT_PATTERN4 : std_logic_vector (2 downto 0);
signal ripple1, ripple2, ripple_out : std_logic;
signal code1, code2, code3, code4 : std_logic_vector(3 downto 0);



component g10_mastermind_score is
	port (P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
		   G1, G2, G3, G4 : in std_logic_vector (2 downto 0);
		   exact_match_score : out std_logic_vector (2 downto 0);
		   color_match_score : out std_logic_vector (2 downto 0);
		   score_code : out std_logic_vector (3 downto 0));
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

component register_4bit is 
port (clr : in std_logic;
		clk : in std_logic;
		SR_LD : in std_logic;
		p : in std_logic_vector (3 downto 0);
		q : out std_logic_vector (3 downto 0));
end component;

component register_3bit is 
port (clr : in std_logic;
		clk : in std_logic;
		GR_LD : in std_logic;
		p : in std_logic_vector (2 downto 0);
		q : out std_logic_vector (2 downto 0));
end component;

component g10_comp4 IS 
	PORT
    (	A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC);
END component;

component g10_7_segment_decoder is
	port( code            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments        : out std_logic_vector(6 downto 0));
end component;

component g10_3to4_decoder is
	port(input: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(3 downto 0));
end component;


begin

EXT_PATTERN1 <= EXT_PATTERN(2 downto 0);
EXT_PATTERN2 <= EXT_PATTERN(5 downto 3);
EXT_PATTERN3 <= EXT_PATTERN(8 downto 6);
EXT_PATTERN4 <= EXT_PATTERN(11 downto 9);

ADDR1 <= TM_ADDR (2 downto 0);
ADDR2 <= TM_ADDR (5 downto 3);
ADDR3 <= TM_ADDR (8 downto 6);
ADDR4 <= TM_ADDR (11 downto 9);

ComputeScore: g10_mastermind_score port map (P1 => P1, P2 => P2, P3 => P3, P4 => P4, G1 => G1, G2 => G2, G3 => G3, G4 => G4,
												exact_match_score => exact, color_match_score => color, score_code => f);

ScoreRegister: register_4bit port map(clr => clr, clk => CLK, SR_LD => SR_LD, p => f, q => h); --score register
ScoreComparator: g10_comp4 port map(A => h, B => i, AeqB => SC_CMP); --score comparator

GuessRegister1: register_3bit port map (clr => clr, clk => CLK, GR_LD => GR_LD, p => d1, q => G1); --1 of 4 guess registers
GuessRegister2: register_3bit port map (clr => clr, clk => CLK, GR_LD => GR_LD, p => d2, q => G2); --check tmp
GuessRegister3: register_3bit port map (clr => clr, clk => CLK, GR_LD => GR_LD, p => d3, q => G3);
GuessRegister4: register_3bit port map (clr => clr, clk => CLK, GR_LD => GR_LD, p => d4, q => G4);

Convert1: g10_3to4_decoder port map(input => d1, output => code1);
Convert2: g10_3to4_decoder port map(input => d2, output => code2);
Convert3: g10_3to4_decoder port map(input => d3, output => code3);
Convert4: g10_3to4_decoder port map(input => d4, output => code4);

DisplayGuess1: g10_7_segment_decoder port map(code => code4, RippleBlank_In => '0', RippleBlank_Out => ripple1, segments => segments1);
DisplayGuess2: g10_7_segment_decoder port map(code => code3, RippleBlank_In => ripple1, RippleBlank_Out => ripple2, segments => segments2);
DisplayGuess3: g10_7_segment_decoder port map(code => code2, RippleBlank_In => ripple2, RippleBlank_Out => ripple_out, segments => segments3);
DisplayGuess4: g10_7_segment_decoder port map(code => code1, RippleBlank_In => '0', RippleBlank_Out => ripple_out, segments => segments4);

--DisplayScore1: g10_7_segment_decoder port map(code => )




datapath: process (SR_SEL, GR_SEL, P_SEL, GR_LD, SR_LD,ADDR1,ADDR2,ADDR3,ADDR4, EXT_PATTERN1, EXT_PATTERN2, 
							EXT_PATTERN3, EXT_PATTERN4, exact, color, f)
begin

case SR_SEL is 
	when '0' => i <= f;
	when others => i <= "0001"; --double check value of (4,0) in binary
end case;

case GR_SEL is 
	when '0' => d1 <= ADDR1;
					d2 <= ADDR2;
					d3 <= ADDR3;
					d4 <= ADDR4;
	when others => d1 <= "000"; -- < use for user input. going to be "G".
						d2 <= "000";
						d3 <= "001";
						d4 <= "001";
end case;

case P_SEL is 
	when '0' =>    P1 <= EXT_PATTERN1;
						P2 <= EXT_PATTERN2;
						P3 <= EXT_PATTERN3;
						P4 <= EXT_PATTERN4;
	when others => P1 <= ADDR1;
						P2 <= ADDR2;
						P3 <= ADDR3;
						P4 <= ADDR4;
end case;


end process;
end behavior;