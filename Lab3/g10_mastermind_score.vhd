library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_score is 
port (P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
		G1, G2, G3, G4 : in std_logic_vector (2 downto 0);
		exact_match_score : out std_logic_vector (2 downto 0);
		color_match_score : out std_logic_vector (2 downto 0);
		score_code : out std_logic_vector (3 downto 0));
		
end 	g10_mastermind_score;

architecture implementation of g10_mastermind_score is

signal exact, color : std_logic_vector (2 downto 0);


component g10_color_matches is
	port ( P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
			 G1, G2, G3, G4 : in std_logic_vector (2 downto 0);
			 num_exact_matches : in std_logic_vector (2 downto 0);
			 num_color_matches : out std_logic_vector (2 downto 0));
end component;

component g10_score_encoder is
	port (num_exact_matches: in std_logic_vector (2 downto 0);
		num_color_matches: in std_logic_vector (2 downto 0);
		score_code : out std_logic_vector (3 downto 0));
end component;

component g10_num_matches is
	port ( P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
			 G1, G2, G3, G4  : in std_logic_vector (2 downto 0);
			 N_exact : out std_logic_vector (2 downto 0));
end component;

begin 

Gate1: g10_num_matches	port map (N_exact => exact, P1 => P1, P2 => P2, P3 => P3, P4 => P4, G1 => G1, G2 => G2, G3 => G3, G4 => G4);	

Gate2: g10_color_matches port map (P1 => P1, P2 => P2, P3 =>P3, P4 => P4, G1 => G1, G2 => G2,
				 G3 => G3, G4 => G4, num_exact_matches => exact, num_color_matches => color);

Gate3: g10_score_encoder port map (num_exact_matches => exact, num_color_matches => color,
 score_code => score_code);
 
exact_match_score <= exact;
color_match_score <= color;

end implementation;

