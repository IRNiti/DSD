library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity g10_possibility_table is
port (TC_EN : in std_logic; --indexer
		TC_RST : in std_logic; 
		TM_IN : in std_logic;  -- array 
		TM_EN : in std_logic; 
		CLK : in std_logic;
		TC_LAST : out std_logic;
		TM_ADDR : out std_logic_vector (11 downto 0);
		TM_OUT : out std_logic);
end g10_possibility_table;

architecture behavior of g10_possibility_table is

signal EN : std_logic;
signal TM_ADDR1, TM_ADDR2, TM_ADDR3, TM_ADDR4  : std_logic_vector (2 downto 0);
signal last: std_logic;
signal TM : std_logic_vector(4095 downto 0);
signal TM_ADDR_Int : std_logic_vector (11 downto 0);
signal Q_value : std_logic_vector (11 downto 0);
begin



counter_table: process(CLK, last, TC_EN, TM_EN, TC_RST, TM_ADDR1, TM_ADDR2, TM_ADDR3, TM_ADDR4)



begin	

	
	if (TC_RST = '1') then
		TM_ADDR1 <= "000";
		TM_ADDR2 <= "000";
		TM_ADDR3 <= "000";
		TM_ADDR4 <= "000";
		last <= '0';

			
	elsif ((TM_ADDR_Int(0) /= '0') and (TM_ADDR_Int(0) /= '1')) then
		TM_ADDR1 <= "000";
		TM_ADDR2 <= "000";
		TM_ADDR3 <= "000";
		TM_ADDR4 <= "000";

	
	elsif rising_edge(clk) then
		
		if ((last /= '0') and (last /= '1')) then
			last <= '0';
		end if;

		if (TC_EN = '1') then
			
			if ( (TC_RST = '0') and (last /= '1')) then
				TM_ADDR1 <= std_logic_vector((unsigned(TM_ADDR1) + "1")); 

				
				if (TM_ADDR1 = "101") then
					TM_ADDR1 <= "000";
					TM_ADDR2 <= std_logic_vector((unsigned(TM_ADDR2) + "1")); -- <------
	
			
				if ((TM_ADDR2 = "101") and (TM_ADDR1 = "101")) then
					TM_ADDR2 <= "000";
					TM_ADDR3 <= std_logic_vector((unsigned(TM_ADDR3) + "1"));
	
				
					if ((TM_ADDR3 = "101") and (TM_ADDR2 = "101") and (TM_ADDR1 = "101")) then
						TM_ADDR3 <= "000";
						TM_ADDR4 <= std_logic_vector((unsigned(TM_ADDR4) + "1"));
	
				
						if (unsigned(TM_ADDR_Int) = "101101101101") then 
							last <= '1';
							TM_ADDR1 <= "101";
							TM_ADDR2 <= "101";
							TM_ADDR3 <= "101";
							TM_ADDR4 <= "101";

							
							end if;
						end if;
					end if;
				end if;			
			end if;
		end if;
	end if;
	
	TC_LAST <= last;
	TM_ADDR_Int <= TM_ADDR4 & TM_ADDR3 & TM_ADDR2 & TM_ADDR1;
	Q_value <= TM_ADDR4 & TM_ADDR3 & TM_ADDR2 & TM_ADDR1;
	TM_ADDR <= TM_ADDR_Int;	
	
  end process;
  
 memory_table : process(CLK, TM_EN, TM_IN)
 
 begin
 
	if rising_edge(clk) then 
		if (TM_EN = '1') then 
		
			TM(to_integer(unsigned(TM_ADDR_Int))) <= TM_IN;
			
		else TM_OUT <= TM(to_integer(unsigned(TM_ADDR_Int)));
		
		end if;
			
	end if;
	
end process;
			
end behavior;