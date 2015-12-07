library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_datapath_ugm is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
				
		--RP_LD : in std_logic; 
		
		sw: in std_logic_vector (2 downto 0);
		sw1_LD, sw2_LD, sw3_LD, sw4_LD : in std_logic;
		--GR_LD1, GR_LD2, GR_LD3,GR_LD4 : in std_logic;
		--GR1_EN, GR2_EN, GR3_EN, GR4_EN : in std_logic;
		GR_SELECT : in std_logic_vector (3 downto 0);
		switch_REG : in std_logic;
		RippleBlank_In_state : in std_logic;
		modify_G : in std_logic;
		
		segment1, segment2, segment3, segment4 : out std_logic_vector(6 downto 0);
		
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		--GR_LD : in std_logic;
		SR_LD : in std_logic);
	
end g10_mastermind_datapath_ugm;

architecture behavior of g10_mastermind_datapath_ugm is

signal a : std_logic;
signal b,c,d,e : std_logic_vector (11 downto 0);
signal f,h,i : std_logic_vector (3 downto 0);
signal j,k,L,m : std_logic;
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
signal tmi,tme,tce,tcr,sol,tmout, last : std_logic; --possibility table
signal addr, gg,pattern : std_logic_vector(11 downto 0); --vectors
signal cmp, srs, ps, grs, grl, srld, rpld : std_logic;    -- controller 
signal tmi2,tme2,tce2,tcr2,sol2,tmout2, last2 : std_logic; --counter table

signal sw1ld, sw2ld, sw3ld, sw4ld : std_logic;
signal grld1, grld2, grld3, grld4 : std_logic;
signal led1r, led2r, led3r, led4r : std_logic;
signal switchreg : std_logic;
signal swI : std_logic_vector(2 downto 0);
signal clrledr : std_logic;
signal sw1,sw2,sw3,sw4 : std_logic;
--signal S1,S2,S3,S4 : std_logic_vector (2 downto 0);
signal GR1_EN, GR2_EN, GR3_EN, GR4_EN : std_logic;

signal sr1N,sr2N,sr3N,sr4N : std_logic_vector (3 downto 0);
signal led1,led2,led3,led4 : std_logic_vector (2 downto 0);
signal LD1mux, LD2mux, LD3mux, LD4mux : std_logic_vector (2 downto 0);
signal Gdecoder1,Gdecoder2,Gdecoder3,Gdecoder4 : std_logic_vector(3 downto 0);
signal segment1N, segment2N, segment3N, segment4N : std_logic_vector (6 downto 0);
signal SRcode1, SRcode2 : std_logic_vector (3 downto 0);

signal GR : std_logic_vector (3 downto 0);


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
		R_LD : in std_logic;
		p : in std_logic_vector (2 downto 0);
		q : out std_logic_vector (2 downto 0));
end component;

component g10_3to4_decoder is
	port(input: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(3 downto 0));
end component;

component g10_display_LED is
port (sr1, sr2, sr3, sr4 : in std_logic_vector (3 downto 0);
		RippleBlank_In_state : in std_logic;
		segment1, segment2, segment3, segment4 : out std_logic_vector(6 downto 0));
end component;

component g10_score_encoder_user_mode is
port (score_code : in std_logic_vector (3 downto 0);
		code1 : out std_logic_vector (3 downto 0);
		code2 : out std_logic_vector (3 downto 0));
end component;

component g10_comp4 IS 
	PORT
    (	A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC);
END component;

--component RandomPatternGenerator is
--port (P_generated : in std_logic;
--		clk : in std_logic;
--		Start : in std_logic;
--		RP_LD : in std_logic;
--		TC_EN : out std_logic;
--		TC_RST : out std_logic;
--		TM_ADDR : in std_logic_vector (11 downto 0);
--		EXT_PATTERN : out std_logic_vector(11 downto 0));
--end component;

--for components
--mux, process block
begin

EXT_PATTERN1 <= EXT_PATTERN(2 downto 0);
EXT_PATTERN2 <= EXT_PATTERN(5 downto 3);
EXT_PATTERN3 <= EXT_PATTERN(8 downto 6);
EXT_PATTERN4 <= EXT_PATTERN(11 downto 9);


Gate1: g10_mastermind_score port map (P1 => EXT_PATTERN1, P2 => EXT_PATTERN2, P3 => EXT_PATTERN3, P4 => EXT_PATTERN4, G1 => G1, 
											G2 => G2, G3 => G3, G4 => G4,	exact_match_score => exact,
											color_match_score => color, score_code => f);

Gate2: register_4bit port map(clr => clr, clk => CLK, SR_LD => SR_LD, p => f, q => h); --score register
Gate3: g10_comp4 port map(A => h, B => i, AeqB => SC_CMP); --score comparator

Gate8: register_3bit port map (clr => clr, clk => CLK, R_LD => GR1_EN, p => sw, q => G1); 
Gate9: register_3bit port map (clr => clr, clk => CLK, R_LD => GR2_EN, p => sw, q => G2); 
Gate10: register_3bit port map (clr => clr, clk => CLK, R_LD => GR3_EN, p => sw, q => G3);
Gate11: register_3bit port map (clr => clr, clk => CLK, R_LD => GR4_EN, p => sw, q => G4);

gate12: g10_3to4_decoder port map (input => G1, output => Gdecoder1);
gate13: g10_3to4_decoder port map (input => G2, output => Gdecoder2);
gate14: g10_3to4_decoder port map (input => G3, output => Gdecoder3);
gate15: g10_3to4_decoder port map (input => G4, output => Gdecoder4);

gate16: g10_display_LED port map (sr1 => sr1N, sr2 => sr2N, sr3 => sr3N, sr4 => sr4N, RippleBlank_In_state => RippleBlank_In_state,
									segment1 => segment1, segment2 => segment2, segment3 => segment3, segment4 => segment4);
gate17: g10_score_encoder_user_mode port map (score_code => h, code1 => SRcode1, code2 => SRcode2 );



 GR1_EN <= GR_SELECT(0) and modify_G;
 GR2_EN <= GR_SELECT(1) and modify_G;
 GR3_EN <= GR_SELECT(2) and modify_G;
 GR4_EN <= GR_SELECT(3) and modify_G;

 


datapath: process (SR_SEL, P_SEL,switch_REG,SR_LD,ADDR1, exact, color, Gdecoder1, Gdecoder2, Gdecoder3, Gdecoder4, SRcode1, SRcode2)
begin

case switch_REG is 
	when '0' =>    sr1N <= Gdecoder1;
						sr2N <= Gdecoder2;
						sr3N <= Gdecoder3;
						sr4N <= Gdecoder4;
	when others => sr1N <= "0000";
						sr2N <= SRcode1;
						sr3N <= "0000";
						sr4N <= SRcode2;
end case;



end process;
end behavior;