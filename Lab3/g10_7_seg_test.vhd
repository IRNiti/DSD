library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_7_seg_test is
port( code1            : in std_logic_vector(3 downto 0);
		code2            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments1        : out std_logic_vector(6 downto 0);
		segments2        : out std_logic_vector(6 downto 0);
		segments3        : out std_logic_vector(6 downto 0);
		segments4        : out std_logic_vector(6 downto 0));
end g10_7_seg_test;

architecture behaviour of g10_7_seg_test is

signal ripple1, ripple2, ripple_out : std_logic;

component g10_7_segment_decoder is

port( code            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments        : out std_logic_vector(6 downto 0));
end component;

begin

Gate1: g10_7_segment_decoder port map(code => code1, RippleBlank_In => '0', RippleBlank_Out => ripple1, segments => segments1);
Gate2: g10_7_segment_decoder port map(code => code2, RippleBlank_In => ripple1, RippleBlank_Out => ripple2, segments => segments2);
Gate3: g10_7_segment_decoder port map(code => code1, RippleBlank_In => ripple2, RippleBlank_Out => ripple_out, segments => segments3);
Gate4: g10_7_segment_decoder port map(code => code1, RippleBlank_In => '0', RippleBlank_Out => ripple_out, segments => segments4);

end behaviour;