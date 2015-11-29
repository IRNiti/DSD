Library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  
library lpm;
use lpm.lpm_components.all;

entity g10_color_matches is
	port ( P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
			 G1, G2, G3, G4 : in std_logic_vector (2 downto 0);
			 num_exact_matches : in std_logic_vector (2 downto 0);
			 num_color_matches : out std_logic_vector (2 downto 0));
end g10_color_matches;

architecture implementation of g10_color_matches is 

signal DP1, DP2, DP3, DP4 : std_logic_vector (7 downto 0);
signal DG1, DG2, DG3, DG4 : std_logic_vector (7 downto 0);
signal NP1, NP2, NP3, NP4, NP5, NP6 : std_logic_vector (2 downto 0);
signal NG1, NG2, NG3, NG4, NG5, NG6 : std_logic_vector (2 downto 0);
signal min1, min2, min3, min4, min5, min6 : std_logic_vector (2 downto 0);
signal sum1, sum2, sum3, sum4, total_sum :std_logic_vector (2 downto 0);
--signal num_exact_matches_s : std_logic_vector (2 downto 0);

--component g10_num_matches is
--	port ( P1, P2, P3, P4 : in std_logic_vector (2 downto 0);
--			 G1, G2, G3, G4  : in std_logic_vector (2 downto 0);
--			 N_exact : out std_logic_vector (2 downto 0));
--end component;


component g10_minimum3 is
	port ( N, M : in std_logic_vector(2 downto 0);
			 min : out std_logic_vector(2 downto 0));			 
end component;

component g10_num1s is
	port (x 		: in std_logic_vector (3 downto 0);
			num1s : out std_logic_vector (2 downto 0));
end component;

begin 

Gate1: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => P1, eq => DP1);
Gate2: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => P2, eq => DP2);
Gate3: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => P3, eq => DP3);
Gate4: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => P4, eq => DP4);
						
Gate5: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => G1, eq => DG1);
Gate6: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => G2, eq => DG2);
Gate7: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => G3, eq => DG3);
Gate8: lpm_decode generic map ( LPM_Width => 3, LPM_Decodes => 8)
						port map (data => G4, eq => DG4);

Gate9 : g10_num1s port map (x(0) => DP1(0), x(1) => DP2(0), x(2) => DP3(0), x(3) => DP4(0), num1s => NP1);
Gate10: g10_num1s port map (x(0) => DP1(1), x(1) => DP2(1), x(2) => DP3(1), x(3) => DP4(1), num1s => NP2);
Gate11: g10_num1s port map (x(0) => DP1(2), x(1) => DP2(2), x(2) => DP3(2), x(3) => DP4(2), num1s => NP3);
Gate12: g10_num1s port map (x(0) => DP1(3), x(1) => DP2(3), x(2) => DP3(3), x(3) => DP4(3), num1s => NP4);
Gate13: g10_num1s port map (x(0) => DP1(4), x(1) => DP2(4), x(2) => DP3(4), x(3) => DP4(4), num1s => NP5);
Gate14: g10_num1s port map (x(0) => DP1(5), x(1) => DP2(5), x(2) => DP3(5), x(3) => DP4(5), num1s => NP6);

Gate15: g10_num1s port map (x(0) => DG1(0), x(1) => DG2(0), x(2) => DG3(0), x(3) => DG4(0), num1s => NG1);
Gate16: g10_num1s port map (x(0) => DG1(1), x(1) => DG2(1), x(2) => DG3(1), x(3) => DG4(1), num1s => NG2);
Gate17: g10_num1s port map (x(0) => DG1(2), x(1) => DG2(2), x(2) => DG3(2), x(3) => DG4(2), num1s => NG3);
Gate18: g10_num1s port map (x(0) => DG1(3), x(1) => DG2(3), x(2) => DG3(3), x(3) => DG4(3), num1s => NG4);
Gate19: g10_num1s port map (x(0) => DG1(4), x(1) => DG2(4), x(2) => DG3(4), x(3) => DG4(4), num1s => NG5);
Gate20: g10_num1s port map (x(0) => DG1(5), x(1) => DG2(5), x(2) => DG3(5), x(3) => DG4(5), num1s => NG6);

Gate21: g10_minimum3 port map (N => NP1, M => NG1, min => min1);
Gate22: g10_minimum3 port map (N => NP2, M => NG2, min => min2);
Gate23: g10_minimum3 port map (N => NP3, M => NG3, min => min3);
Gate24: g10_minimum3 port map (N => NP4, M => NG4, min => min4);
Gate25: g10_minimum3 port map (N => NP5, M => NG5, min => min5);
Gate26: g10_minimum3 port map (N => NP6, M => NG6, min => min6);

Gate27: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => min1, dataB => min2, add_sub => '1', result => sum1);
Gate28: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => min3, dataB => min4, add_sub => '1', result => sum2);
Gate29: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => min5, dataB => min6, add_sub => '1', result => sum3);
Gate30: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => sum1, dataB => sum2, add_sub => '1', result => sum4);
Gate31: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => sum3, dataB => sum4, add_sub => '1', result => total_sum);
							
				
						
--Gate33: g10_num_matches	port map (N_exact => num_exact_matches_s, P1 => P1, P2 => P2, P3 => P3, P4 => P4, G1 => G1, G2 => G2, G3 => G3, G4 => G4);	
--
--num_exact_matches <= num_exact_matches_s;
					
Gate34: lpm_add_sub 	generic map (LPM_Width => 3)
							port map (dataA => total_sum, dataB => num_exact_matches, add_sub => '0', result => num_color_matches);
							

end implementation;



