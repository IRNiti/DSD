Library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  

entity g10_num_matches is
	port ( P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
			 G1, G2, G3, G4  : in std_logic_vector (2 downto 0);
			 N_exact : out std_logic_vector (2 downto 0));
end g10_num_matches;

architecture a of g10_num_matches is

signal y : std_logic_vector (3 downto 0);

component g10_comp3 -- instantiating a file
	Port ( 
		A :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC);
	
end component;

component g10_num1s 
	Port (
	x  : in std_logic_vector (3 downto 0);
	num1s : out std_logic_vector (2 downto 0)
	);
		
end component;

begin  

Gate1: g10_comp3 port map(A=>P1, B=>G1, AeqB =>y(0));
Gate2: g10_comp3 port map(A=>P2, B=>G2, AeqB =>y(1));
Gate3: g10_comp3 port map(A=>P3, B=>G3, AeqB =>y(2));
Gate4: g10_comp3 port map(A=>P4, B=>G4, AeqB =>y(3));
Gate5: g10_num1s port map(x=>y, num1s=>N_exact);

end a;