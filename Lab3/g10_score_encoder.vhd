Library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  

entity g10_score_encoder is
port (score_code : out std_logic_vector (3 downto 0);
		num_exact_matches: in std_logic_vector (2 downto 0);
		num_color_matches: in std_logic_vector (2 downto 0));
end g10_score_encoder;

architecture implementation of g10_score_encoder is

signal exactAndColor_matches : std_logic_vector (5 downto 0);

begin

score_board : process  (num_color_matches, num_exact_matches, exactAndColor_matches)

begin

	exactAndColor_matches <= num_exact_matches & num_color_matches ;
	
	score_code <= "0000";
		
	case (exactAndColor_matches) is 
	when "100000" => score_code <= "0001"; --(4,0)
	when "011000" => score_code <= "0010";	--(3,0)
	when "010000" => score_code <= "0011"; --(2,0)
	when "010001" => score_code <= "0100";	--(2,1)
	when "010010" => score_code <= "0101"; --(2,2)
	when "001000" => score_code <= "0110";	--(1,0)
	when "001001" => score_code <= "0111";	--(1,1)
	when "001010" => score_code <= "1000";	--(1,2)
	when "001011" => score_code <= "1001";	--(1,3)
	when "000000" => score_code <= "1010";	--(0,0)
	when "000001" => score_code <= "1011";	--(0,1)
	when "000010" => score_code <= "1100";	--(0,2)
	when "000011" => score_code <= "1101";	--(0,3)
	when "000100" => score_code <= "1110";	--(0,4)

	when others => score_code <= "0000";
	
	END CASE;
	
end process;
end implementation;