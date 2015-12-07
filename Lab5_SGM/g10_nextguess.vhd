library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_nextguess is
	port( CLK : in std_logic;
			TC_EN : in std_logic; --indexer
			TC_RST : in std_logic; 
			TM_IN : in std_logic;  -- array 
			TM_EN : in std_logic; 
			TC_LAST : out std_logic;
			TM_ADDR : out std_logic_vector (11 downto 0);
			TM_OUT : out std_logic;
			guess : out std_logic_vector(11 downto 0));
end g10_nextguess;

architecture behaviour of g10_nextguess is

signal output, last : std_logic;
signal ADDR : std_logic_vector(11 downto 0);

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

begin

	Gate1: g10_possibility_table port map( TC_EN => '1', TC_RST => '0', TM_IN => '0', TM_EN => '0', 
														CLK => CLK, TC_LAST => TC_LAST, TM_ADDR => ADDR, TM_OUT => output);
	TM_OUT <= output;
	TM_ADDR <=ADDR;
													
	count: process (CLK)

		begin
		
		if(rising_edge(CLK)) then
		
			if(output = '1') then
				guess <= ADDR;
	--			exit;
			end if;
		
		end if;
	end process;
end behaviour;
			