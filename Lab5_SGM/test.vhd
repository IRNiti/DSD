library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity test is

	port (TC_EN : in std_logic; --indexer
				TC_RST : in std_logic; 
				TM_IN : in std_logic;  -- array 
				TM_EN : in std_logic; 
				CLK : in std_logic;
				guess : out std_logic_vector(11 downto 0);
				TC_LAST : out std_logic;
				TM_ADDR : out std_logic_vector (11 downto 0);
				TM_OUT : out std_logic);
	
end test;


architecture behaviour of test is 

	signal last, output, addr : std_logic;

	component g10_possibility_table is
		port (TC_EN : in std_logic; --indexer
				TC_RST : in std_logic; 
				TM_IN : in std_logic;  -- array 
				TM_EN : in std_logic; 
				CLK : in std_logic;
				TC_LAST : out std_logic;
				TM_ADDR : out std_logic_vector (11 downto 0);
				TM_OUT : out std_logic);
	end component;

	component g10_nextguess is
		port( CLK : in std_logic;
				guess : out std_logic_vector(11 downto 0));
	end component;

	begin

		Gate1: g10_possibility_table port map (TC_EN=>TC_EN, TC_RST=>TC_RST, TM_IN=>TM_IN, TM_EN=>TM_EN, CLK=>CLK, 
														TC_LAST=>TC_LAST, TM_ADDR=>TM_ADDR, TM_OUT=>TM_OUT);
														
		Gate2: g10_nextguess port map (CLK=>CLK, guess=>guess);


end behaviour;