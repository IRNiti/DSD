library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_display_LED is
port (sr1, sr2, sr3, sr4 : in std_logic_vector (3 downto 0);
		RippleBlank_In_state : in std_logic;
		segment1, segment2, segment3, segment4 : out std_logic_vector(6 downto 0));
end g10_display_LED;

architecture behavior of g10_display_LED is
--signal c1 : std_logic_vector (3 downto 0);
--signal c2 : std_logic_vector (3 downto 0);
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


gate10: g10_7_segment_decoder port map (code => sr1, RippleBlank_In => state1, RippleBlank_Out => rippleout, segments => segment1);
gate11: g10_7_segment_decoder port map (code => sr2, RippleBlank_In => state2, RippleBlank_Out => rippleout, segments => segment2);
gate12: g10_7_segment_decoder port map (code => sr3, RippleBlank_In => state1, RippleBlank_Out => rippleout, segments => segment3);
gate13: g10_7_segment_decoder port map (code => sr4, RippleBlank_In => state2, RippleBlank_Out => rippleout, segments => segment4);


display: process (state1, state2)
begin

case RippleBlank_In_state is
	when '0' => state1 <= '0';
					state2 <= '0';
	when '1' => state1 <= '1';
					state2 <= '0';
	when others => state1 <= '0';
						state2 <= '0';
end case;

end process;
end behavior;