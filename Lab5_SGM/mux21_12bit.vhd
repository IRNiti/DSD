library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux21_12bit is -- just use as process block, not component
port (C : in std_logic_vector (11 downto 0);
		D : in std_logic_vector (11 downto 0);
		q : out std_logic_vector (11 downto 0);
		sel : in std_logic);
end mux21_12bit;

architecture behavior of mux21_12bit is

begin
mux: process (sel) 

begin

case sel is 
	when '0' => q <= C;
	when others => q <= D;
end case;

end process;
end behavior;