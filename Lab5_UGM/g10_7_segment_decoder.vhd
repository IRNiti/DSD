library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_7_segment_decoder is

port( code            : in std_logic_vector(3 downto 0);
		RippleBlank_In  : in std_logic;
		RippleBlank_Out : out std_logic;  
		segments        : out std_logic_vector(6 downto 0));
end g10_7_segment_decoder;

architecture behaviour of g10_7_segment_decoder is

	signal RippleBlankAndCode : std_logic_vector(4 downto 0);
	
	begin 
	RippleBlankAndCode <= RippleBlank_In & code;

	halloween: process (code, RippleBlank_In)
	begin 
	if code = "0000" then RippleBlank_Out <= RippleBlank_In;
	else RippleBlank_Out <= '0';
	end if;
	end process halloween;
	
	with RippleBlankAndCode select
		segments <= 
			"1000000" when "00000", --0
			"1111001" when "00001", --1
			"0100100" when "00010", --2
			"0110000" when "00011", --3
			"0011001" when "00100", --4
			"0010010" when "00101", --5
			"0000010" when "00110", --6
			"1111000" when "00111",	--7
			"0000000" when "01000",	--8
			"0011000" when "01001",	--9
			"0000011" when "01010",	--b
			"1001100" when "01011", --r
			"1001000" when "01100",	--n
			"1110001" when "01101",	--j
			"1000001" when "01110",	--u
			"1000110" when "01111",	--c
			
			"1111111" when "10000", --ignor
			"1111001" when "10001",
			"0100100" when "10010",
			"0110000" when "10011",
			"0011001" when "10100",
			"0010010" when "10101",
			"0000010" when "10110",
			"1111000" when "10111",
			"0000000" when "11000",
			"0011000" when "11001",
			"0000011" when "11010",
			"1001100" when "11011",
			"1001000" when "11100",
			"1110001" when "11101",
			"1000001" when "11110",
			"1000110" when "11111",
			"0111111" when others;

end behaviour;