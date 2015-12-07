library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RandomPatternGenerator is
port (P_generatedN : in std_logic;
		clk : in std_logic;
		Start : in std_logic;
		RP_LD : in std_logic;
		EXT_PATTERN : out std_logic_vector(11 downto 0));
end RandomPatternGenerator;


architecture behavior of RandomPatternGenerator is

signal addr : std_logic_vector(11 downto 0); --store counter value
signal tce2, tcr2, last2 : std_logic; --counter table
--signal rpld : std_logic;

type state_type is (A,B,C);
signal y_present : state_type;


component register_12bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (11 downto 0);
		q : out std_logic_vector (11 downto 0);
		RP_LD : in std_logic);
end component;


component counter_table is --counter
port (TC_EN2 : in std_logic; --indexer
		TC_RST2 : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDRN : out std_logic_vector (11 downto 0));
end component;

begin

gate1: counter_table port map (TC_EN2 => tce2, TC_RST2 => tcr2, CLK => clk, TC_LAST => last2,
													TM_ADDRN => addr);
gate2: register_12bit port map (clr => start, clk => clk, RP_LD => RP_LD, p => addr, q => EXT_PATTERN);

--rpld <= '1';

randomPattern: process (clk, P_generatedN, Start, y_present, RP_LD)



begin



if (Start = '0') then    -- reset the counter to 0
	tcr2 <= '1'; 
	y_present <= A;
	
	elsif (rising_edge(clk)) then
		
		case y_present is
			when A =>
				if (Start = '1') then
					tcr2 <= '0';
					
					y_present <= B;
				end if;
				
			when B =>
				if (P_generatedN = '0') then  -- start counter
					
					tce2 <= '1';
					
					y_present <= C;
				end if;
			
			when C => 
				if (P_generatedN = '1') then  -- stop counter
					tce2 <= '0';
				end if;			
				
			end case;
		
end if;



end process;

end behavior;