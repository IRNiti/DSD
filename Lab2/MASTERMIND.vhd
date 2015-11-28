library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity MASTERMIND is
port (clk : in std_logic;

		P_Generated : in std_logic; --buttons
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

component g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		clr : in std_logic;
		
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
		
		TM_IN : out std_logic;
		TM_EN : out std_logic;
		TC_EN : out std_logic;
		TC_RST : out std_logic;
		SOLVED : out std_logic);
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

component RandomPatternGenerator is
port (P_Generated : in std_logic;
		clk : in std_logic;
		P1234 : out std_logic_vector(11 downto 0));
end component;

begin
end behavior;