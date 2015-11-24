library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_mastermind_datapath is
port (G : in std_logic_vector(11 downto 0);
		EXT_PATTERN : in std_logic_vector (11 downto 0);
		TM_ADDR : in std_logic_vector (11 downto 0);
		SC_CMP : out std_logic;
		CLK : in std_logic;
		
		SR_SEL : in std_logic;
		P_SEL : in std_logic;
		GR_SEL : in std_logic;
		GR_LD : in std_logic;
		SR_LD : in std_logic);
end g10_mastermind_datapath;

architecture behavior of g10_mastermind_datapath is

signal a : std_logic;
signal b,c,d,e : std_logic_vector (11 downto 0);
signal f,h,i : std_logic_vector (3 downto 0);
signal P1,P2,P3,P4, G1,G2,G3,G4 : std_logic_vector (2 downto 0);
signal exact,color : std_logic_vector (2 downto 0);
signal d1,d2,d3,d4 : std_logic_vector (2 downto 0);
signal ADDR1 : std_logic_vector (2 downto 0);
signal ADDR2 : std_logic_vector (5 downto 3);
signal ADDR3 : std_logic_vector (8 downto 6);
signal ADDR4 : std_logic_vector (11 downto 9);
signal EXT_PATTERN1 : std_logic_vector (2 downto 0);
signal EXT_PATTERN2 : std_logic_vector (5 downto 3);
signal EXT_PATTERN3 : std_logic_vector (8 downto 6);
signal EXT_PATTERN4 : std_logic_vector (11 downto 9);

component g10_mastermind_score is
	port (P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
		   G1, G2, G3, G4 : in std_logic_vector (2 downto 0);
		   exact_match_score : out std_logic_vector (2 downto 0);
		   color_match_score : out std_logic_vector (2 downto 0);
		   score_code : out std_logic_vector (3 downto 0));
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

component register_4bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (3 downto 0);
		q : out std_logic_vector (3 downto 0));
end component;

component register_3bit is 
port (clr : in std_logic;
		clk : in std_logic;
		p : in std_logic_vector (2 downto 0);
		q : out std_logic_vector (2 downto 0));
end component;

component g10_comp4 IS 
	PORT
    (	A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		AeqB :  OUT  STD_LOGIC);
END component;


--for components
--mux, process block
begin

Gate1: g10_mastermind_score port map (P1 => P1, P2 => P2, P3 => P3, P4 => P4, G1 => G1, G2 => G2, G3 => G3, G4 => G4,
												exact_match_score => exact, color_match_score => color, score_code => f);

Gate2: register_4bit port map(clr => SR_LD, clk => CLK, p => f, q => h); --score register
Gate3: g10_comp4 port map(A => h, B => i, AeqB => SC_CMP); --score comparator
Gate4: register_3bit port map (clr => GR_LD, clk => CLK, p => d1, q => G1); --1 of 4 guess registers
Gate5: register_3bit port map (clr => GR_LD, clk => CLK, p => d2, q => G2); --check tmp
Gate6: register_3bit port map (clr => GR_LD, clk => CLK, p => d3, q => G3);
Gate7: register_3bit port map (clr => GR_LD, clk => CLK, p => d4, q => G4);

--map

datapath: process (SR_SEL, GR_SEL, P_SEL, GR_LD, SR_LD,ADDR1,ADDR2,ADDR3,ADDR4)
begin

case SR_SEL is 
	when '0' => i <= f;
	when others => i <= "1111"; --double check value of (4,0) in binary
end case;

case GR_SEL is 
	when '0' => d1 <= ADDR1;
					d2 <= ADDR2;
					d3 <= ADDR3;
					d4 <= ADDR4;
	when others => d1 <= "000"; -- < use for user input. going to be "G".
						d2 <= "000";
						d3 <= "001";
						d4 <= "001";
end case;

case P_SEL is 
	when '0' =>    P1 <= EXT_PATTERN1;
						P2 <= EXT_PATTERN2;
						P3 <= EXT_PATTERN3;
						P4 <= EXT_PATTERN4;
	when others => P1 <= ADDR1;
						P2 <= ADDR2;
						P3 <= ADDR3;
						P4 <= ADDR4;
end case;


end process;
end behavior;