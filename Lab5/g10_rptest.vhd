library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_rptest is

port(start : in std_logic;
	  P_generatedN : in std_logic;
		clk : in std_logic;
		segment1, segment2, segment3, segment4 : out std_logic_vector(6 downto 0));
		
end g10_rptest;

architecture behaviour of g10_rptest is

signal ADDR1, ADDR2, ADDR3, ADDR4 : std_logic_vector(2 downto 0);
signal code1, code2, code3, code4 : std_logic_vector(3 downto 0);
signal ext_pattern : std_logic_vector(11 downto 0);
signal ripple : std_logic;

component RandomPatternGenerator is
port (P_generatedN : in std_logic;
		clk : in std_logic;
		Start : in std_logic;
		RP_LD : in std_logic;
		EXT_PATTERN : out std_logic_vector(11 downto 0));
end component;

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

gate1: RandomPatternGenerator port map(P_generatedN => P_generatedN, clk => clk, Start => Start, RP_LD => '1', EXT_PATTERN => ext_pattern);


ADDR1 <= ext_pattern (2 downto 0);
ADDR2 <= ext_pattern (5 downto 3);
ADDR3 <= ext_pattern (8 downto 6);
ADDR4 <= ext_pattern (11 downto 9);

gate2: g10_3to4_decoder port map(input =>ADDR1, output => code1);
gate3: g10_3to4_decoder port map(input =>ADDR2, output => code2);
gate4: g10_3to4_decoder port map(input =>ADDR3, output => code3);
gate5: g10_3to4_decoder port map(input =>ADDR4, output => code4);

gate6: g10_7_segment_decoder port map(code =>code1, RippleBlank_In => '0', RippleBlank_Out => ripple, segments => segment1);
gate7: g10_7_segment_decoder port map(code =>code2, RippleBlank_In => '0', RippleBlank_Out => ripple, segments => segment2);
gate8: g10_7_segment_decoder port map(code =>code3, RippleBlank_In => '0', RippleBlank_Out => ripple, segments => segment3);
gate9: g10_7_segment_decoder port map(code =>code4, RippleBlank_In => '0', RippleBlank_Out => ripple, segments => segment4);

end behaviour;