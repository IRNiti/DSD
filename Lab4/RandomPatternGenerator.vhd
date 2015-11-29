library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RandomPatternGenerator is
port (P_generated : in std_logic;
		clk : in std_logic;
		Start : in std_logic;
		RP_LD : in std_logic;
		--TC_EN2 : out std_logic;
		--TC_RST2 : out std_logic;
		--TM_ADDRN : in std_logic_vector (11 downto 0);
		EXT_PATTERN : out std_logic_vector(11 downto 0));
end RandomPatternGenerator;


architecture behavior of RandomPatternGenerator is
signal addr, addrn, pattern : std_logic_vector(11 downto 0); --vectors
--signal tmi,tme,tce,tcr,sol,tmout, last : std_logic; --possibility table
signal tmi2,tme2,tce2,tcr2,sol2,tmout2, last2 : std_logic; --counter table
signal rpld : std_logic;

type state_type is (A,B);
signal y_present : state_type;


component register_12bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (11 downto 0);
		q : out std_logic_vector (11 downto 0);
		RP_LD : in std_logic);
end component;


--component g10_possibility_table is --counter
--port (TC_EN : in std_logic; --indexer
--		TC_RST : in std_logic; 
--		TM_IN : in std_logic;  -- array 
--		TM_EN : in std_logic; 
--		CLK : in std_logic;
--		TC_LAST : out std_logic;
--		TM_ADDR : out std_logic_vector (11 downto 0);
--		TM_OUT : out std_logic);
--end component;

component counter_table is --counter
port (TC_EN2 : in std_logic; --indexer
		TC_RST2 : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDRN : out std_logic_vector (11 downto 0));
end component;

begin

--gate1: g10_possibility_table port map (TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, CLK => clk, TC_LAST => last,
--													TM_ADDR => addr, TM_OUT => tmout);
gate1: counter_table port map (TC_EN2 => tce2, TC_RST2 => tcr2, CLK => clk, TC_LAST => last2,
													TM_ADDRN => addrn);
gate2: register_12bit port map (clr => Start, clk => clk, RP_LD => RP_LD, p => addrn, q => EXT_PATTERN);

randomPattern: process (clk, P_generated, Start, y_present, RP_LD)


begin

if (Start = '0') then
	tcr2 <= '1'; 
	y_present <= A;
	
	elsif (rising_edge(clk)) then
		
		case y_present is
			when A =>
				if (P_generated = '1') then
					tcr2 <= '0';
					tce2 <= '1';
					
					y_present <= B;
				end if;
			
			when B => 
				if (P_generated = '0') then
					tce2 <= '0';
					rpld <= '1';
				end if;			
				
			end case;
		
end if;



end process;

end behavior;