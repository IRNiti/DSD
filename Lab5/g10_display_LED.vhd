library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_display_LED is
port (sr1, sr2, sr3, sr4 : in std_logic_vector (3 downto 0);
		RippleBlank_In_state : in std_logic;
		segment1, segment2, segment3, segment4 : out std_logic_vector(6 downto 0));
end g10_display_LED;

architecture behavior of g10_display_LED is
signal code1,code2,code3,code4 : std_logic_vector (3 downto 0);
signal c1,c2,c3,c4 : std_logic_vector (3 downto 0);
--signal cg1,cg2,cg3,cg4 : std_logic_vector (3 downto 0);
--signal sr_code : std_logic_vector(3 downto 0);
signal rippleout : std_logic;
signal state1, state2 : std_logic;

component g10_7_segment_decoder is
port( code            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments        : out std_logic_vector(6 downto 0));
end component;


begin

c1 <= std_logic_vector(unsigned(sr1) + 10);
c2 <= std_logic_vector(unsigned(sr2) + 10);
c3 <= std_logic_vector(unsigned(sr3) + 10);
c4 <= std_logic_vector(unsigned(sr4) + 10);

gate10: g10_7_segment_decoder port map (code => code1, RippleBlank_In => state1, RippleBlank_Out => rippleout, segments => segment1);
gate11: g10_7_segment_decoder port map (code => code2, RippleBlank_In => state2, RippleBlank_Out => rippleout, segments => segment2);
gate12: g10_7_segment_decoder port map (code => code3, RippleBlank_In => state1, RippleBlank_Out => rippleout, segments => segment3);
gate13: g10_7_segment_decoder port map (code => code4, RippleBlank_In => state2, RippleBlank_Out => rippleout, segments => segment4);


display: process (state1, state2)
begin

case RippleBlank_In_state is
	when '0' => state1 <= '0';
					state2 <= '0';	
					
					code1 <= c1;
					code2 <= c2;
					code3 <= c3;
					code4 <= c4;
	when others => state1 <= '1';
					state2 <= '0';
					
					code1 <= sr1;
					code2 <= sr2;
					code3 <= sr3;
					code4 <= sr4;
						
end case;


end process;
end behavior;