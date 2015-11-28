library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RandomPatternGenerator is
port (P_generated : in std_logic;
		clk : in std_logic;
		P1234 : out std_logic_vector(11 downto 0));
end RandomPatternGenerator;


architecture behavior of RandomPatternGenerator is
signal tmp : std_logic_vector (11 downto 0);


component register_12bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (11 downto 0);
		q : out std_logic_vector (11 downto 0);
		RP_LD : in std_logic);
end component;

component register_3bit is 
port (clr : in std_logic;
		clk : in std_logic;
		GR_LD : in std_logic;
		p : in std_logic_vector (2 downto 0);
		q : out std_logic_vector (2 downto 0));
end component;

component g10_possibility_table is --counter
port (TC_EN : in std_logic; --indexer
		TC_RST : in std_logic; 
		TM_IN : in std_logic;  -- array 
		TM_EN : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDR : out std_logic_vector (11 downto 0);
		TM_OUT : out std_logic);
end component;

begin

randomPattern: process (clk, P_generated)

begin

if (P_generated = '1') then -- < work on this, tmr cases
	TC_RST <= '1';
	TC_EN <= '1';
	TM_EN <= '0';
	else
	tmp <= TM_ADDR;
	end if;
P1234 <= tmp;

end process;

end behavior;