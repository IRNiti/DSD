library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_score_encoder_user_mode is
port (score_code : in std_logic_vector (3 downto 0);
		code1 : out std_logic_vector (3 downto 0);
		code2 : out std_logic_vector (3 downto 0));
end g10_score_encoder_user_mode;

architecture behavior of g10_score_encoder_user_mode is
--signal c1 : std_logic_vector (3 downto 0);
--signal c2 : std_logic_vector (3 downto 0);


begin
score_encoder : process (score_code)
begin

case score_code is
	when "0001" => code1 <= "0100"; --(4,0)
						code2 <= "0000";
	when "0010" => code1 <= "0011"; --(3,0)
						code2 <= "0000"; 
	when "0011" => code1 <= "0010"; --(2,0)
						code2 <= "0000";
	when "0100" => code1 <= "0010"; --(2,1)
						code2 <= "0001";
	when "0101" => code1 <= "0010"; --(2,2)
						code2 <= "0010";
	when "0110" => code1 <= "0001"; --(1,0)
						code2 <= "0000";
	when "0111" => code1 <= "0001"; --(1,1)
						code2 <= "0001"; 
	when "1000" => code1 <= "0001"; --(1,2)
						code2 <= "0010";
	when "1001" => code1 <= "0001"; --(1,3)
						code2 <= "0011";
	when "1010" => code1 <= "0000"; --(0,0)
						code2 <= "0000";
	when "1011" => code1 <= "0000"; --(0,1)
						code2 <= "0001";
	when "1100" => code1 <= "0000"; --(0,2)
						code2 <= "0010";
	when "1101" => code1 <= "0000"; --(0,3)
						code2 <= "0011";
	when "1110" => code1 <= "0000"; --(0,4)
						code2 <= "0100"; 
	when others => code1 <= "0000";
						code2 <= "0000";
	
	end case;
	
end process;

end behavior;
--	when "100000" => score_code <= "0001"; --(4,0)
--	when "011000" => score_code <= "0010";	--(3,0)
--	when "010000" => score_code <= "0011"; --(2,0)
--	when "010001" => score_code <= "0100";	--(2,1)
--	when "010010" => score_code <= "0101"; --(2,2)
--	when "001000" => score_code <= "0110";	--(1,0)
--	when "001001" => score_code <= "0111";	--(1,1)
--	when "001010" => score_code <= "1000";	--(1,2)
--	when "001011" => score_code <= "1001";	--(1,3)
--	when "000000" => score_code <= "1010";	--(0,0)
--	when "000001" => score_code <= "1011";	--(0,1)
--	when "000010" => score_code <= "1100";	--(0,2)
--	when "000011" => score_code <= "1101";	--(0,3)
--	when "000100" => score_code <= "1110";	--(0,4)

