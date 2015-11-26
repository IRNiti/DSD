library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_3bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (2 downto 0);
		q : out std_logic_vector (2 downto 0);
		GR_LD : in std_logic);
end register_3bit;

architecture behavior of register_3bit is
signal tmp : std_logic_vector (2 downto 0);

begin 

register4 : process (clr, clk, p, GR_LD)
begin 

 if clr = '1' then
	q <= "000";
 elsif rising_edge(clk) then 
	if (GR_LD = '1') then 
		q <= p; 
 end if;
 end if;
end process;
end behavior;