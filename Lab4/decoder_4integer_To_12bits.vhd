library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity decoder_4integer_To_12bits is
port (p : in integer range 0 to 3;
		q : out std_logic_vector (11 downto 0));
end decoder_4integer_To_12bits;

architecture behavior of decoder_4integer_To_12bits is

--signal tmp1,tmp2,tmp3,tmp4 : integer range 0 to 3;
signal G1,G2,G3,G4 : std_logic_vector (2 downto 0);

begin

G1 <= std_logic_vector(unsigned(p(0)));
G2 <= std_logic_vector(unsigned(p(1)));
G3 <= std_logic_vector(unsigned(p(2)));
G4 <= std_logic_vector(unsigned(p(3)));

q <= G4 & G3 & G2 & G1;

end behavior;