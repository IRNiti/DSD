Library ieee;
use ieee.std_logic_1164.all;

entity g10_minimum3 is

	port ( N, M : in std_logic_vector(2 downto 0);
			 min : out std_logic_vector(2 downto 0));
			 
end g10_minimum3;

architecture a of g10_minimum3 is

	signal NgtM : std_logic;
	
	begin
	
	NgtM <= (N(2) and not(M(2))) or ((N(2) xnor M(2)) and N(1) and not(M(1))) or ((N(2) xnor M(2)) and (N(1) xnor M(1)) and N(0) and not M(0));
	
	with NgtM select
		min <= M when '1',
				 N when others;

end a;