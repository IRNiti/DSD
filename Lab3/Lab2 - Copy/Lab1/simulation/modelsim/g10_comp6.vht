-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/23/2015 14:48:54"
                                                            
-- Vhdl Test Bench template for design  :  g10_comp6
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;                              

ENTITY g10_comp6_vhd_tst IS
END g10_comp6_vhd_tst;
ARCHITECTURE g10_comp6_arch OF g10_comp6_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL AeqB : STD_LOGIC;
SIGNAL B : STD_LOGIC_VECTOR(5 DOWNTO 0);
COMPONENT g10_comp6
	PORT (
	A : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	AeqB : OUT STD_LOGIC;
	B : IN STD_LOGIC_VECTOR(5 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g10_comp6
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	AeqB => AeqB,
	B => B
	);
                                        
--always : PROCESS  
                                            
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
--BEGIN                                                         
        -- code executes for every event on sensitivity list  
	
			
--		  WAIT;                                                        
--END PROCESS always;  

generate_test : PROCESS
BEGIN
	for i in 0 TO 63 LOOP
	A <= std_LOGIC_VECTOR(to_unsigned(i,6));
	for j in 0 TO 63 LOOP
		B <= std_LOGIC_VECTOR(to_unsigned(j,6));
		
		WAIT FOR 10 ns;
		
	END LOOP;
	END LOOP;
	
END PROCESS;

END g10_comp6_arch;
