library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_3to4_decoder is
	port(input: in std_logic_vector(2 downto 0);
			output: out std_logic_vector(3 downto 0));
end g10_3to4_decoder;

architecture behaviour of g10_3to4_decoder is

begin

	output <= '0'&input;
	
end behaviour;