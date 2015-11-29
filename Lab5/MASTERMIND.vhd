library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MASTERMIND is
port (clk : in std_logic;

		P_generated : in std_logic; --buttons
		Start : in std_logic;
		Ready : in std_logic;
		switch_LED : in std_logic;
				
		mode : in std_logic;									  --switches
		switch_REG : in std_logic_vector (1 downto 0);
		LED_value : in std_logic_vector (15 downto 0);
		
		LED1 : out std_logic_vector(3 downto 0);  --displaying_LED's
		LED2 : out std_logic_vector(3 downto 0);
		LED3 : out std_logic_vector(3 downto 0);
		LED4 : out std_logic_vector(3 downto 0));
end MASTERMIND;

architecture behavior of MASTERMIND is 
signal addr, addrn,gg,pattern : std_logic_vector(11 downto 0); --vectors
signal cmp, srs, ps, grs, grl, srld, rpld : std_logic;    -- controller 
signal tmi,tme,tce,tcr,sol,tmout, last : std_logic; --possibility table
signal tmi2,tme2,tce2,tcr2,sol2,tmout2, last2 : std_logic; --counter table


component g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
		
		--RP_LD : in std_logic;
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		GR_LD : in std_logic;
		SR_LD : in std_logic);
		
end component;

component g10_mastermind_controller is
port (SC_CMP : in std_logic;
		TC_LAST : in std_logic;
		START : in std_logic;
		READY : in std_logic;
		CLK : in std_logic;
		
		SR_SEL : out std_logic;
		P_SEL : out std_logic;
		GR_SEL : out std_logic;
		GR_LD : out std_logic;
		SR_LD : out std_logic;
		RP_LD : out std_logic;
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
end component;

component g10_possibility_table is 
port (TC_EN : in std_logic; 
		TC_RST : in std_logic; 
		TM_IN : in std_logic;  
		TM_EN : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDR : out std_logic_vector (11 downto 0);
		TM_OUT : out std_logic);
end component;


component RandomPatternGenerator is
port (P_generated : in std_logic;
		clk : in std_logic;
		Start : in std_logic;
		RP_LD : in std_logic;
		EXT_PATTERN : out std_logic_vector(11 downto 0));
end component;

begin
--mapping between controller, datapath and possiblity table
gate1: g10_mastermind_controller port map (SC_CMP => cmp, TC_LAST => last, START => Start, READY => Ready, CLK => clk, 
														SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld, RP_LD => rpld,
														TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, SOLVED => sol);
														
gate2: g10_mastermind_datapath port map (G => gg, EXT_PATTERN => pattern, TM_ADDR => addr, SC_CMP => cmp, CLK => clk, 
								clr => Start, SR_SEL => srs, P_SEL => ps, GR_SEL => grs, GR_LD => grl, SR_LD => srld);

gate3: g10_possibility_table port map (TM_IN => tmi, TM_EN => tme, TC_EN => tce, TC_RST => tcr, CLK => clk, TC_LAST => last,
													TM_ADDR => addr, TM_OUT => tmout);

gate4: RandomPatternGenerator port map (P_Generated => P_Generated, clk => clk, EXT_PATTERN => pattern, Start => Start,
													RP_LD => rpld);													
													


													
mastermind : process (clk, Start, Ready, P_Generated, switch_LED, mode, switch_REG, LED_value)
begin




end process;


end behavior;