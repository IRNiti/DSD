Library ieee;
use ieee.std_logic_1164.all;
USE ieee.numeric_std.all;  

Entity g10_num1s is
	port (x 		: in std_logic_vector (3 downto 0);
			num1s : out std_logic_vector (2 downto 0));
end g10_num1s;

Architecture Implementation of g10_num1s is 

--SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
--SIGNAL num1s : STD_LOGIC_VECTOR(2 downto 0);

begin 
	num1s(2) <= x(2) and x(1) and x(0) and x(3);
	num1s(1) <= ( not (x(0)) and x(2) and x(3) ) or (not x(0) and x(1) and x(2) ) or (x(0) and x(2) and not x(3)) or (x(1) and not x(2) and x(3)) or 
					(x(0) and x(1) and not x(2)) or (x(0) and not x(1) and x(3));
	num1s(0) <= (not x(0) and not x(1) and not x(2) and x(3)) or (not x(0) and not x(1) and x(2) and not x(3)) or (not x(0) and x(1) and not x(2) and not x(3))
					or (not x(0) and x(1) and x(2) and x(3)) or (x(0) and x(1) and not x(2) and x(3)) or (x(0) and x(1) and x(2) and not x(3)) or 
					(x(0) and not x(1) and x(2) and x(3)) or (x(0) and not x(1) and not x(2) and not x(3));
					

					
end Implementation;