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
-- Generated on "09/25/2015 17:14:48"
                                                            
-- Vhdl Test Bench template for design  :  g10_num1s
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all; 
USE ieee.numeric_std.all;                                 

ENTITY g10_num1s_vhd_tst IS
END g10_num1s_vhd_tst;
ARCHITECTURE g10_num1s_arch OF g10_num1s_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL num1s : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT g10_num1s
	PORT (
	num1s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g10_num1s
	PORT MAP (
-- list connections between master ports and signals
	num1s => num1s,
	x => x
	);
	
	
generate_test : PROCESS
BEGIN
	for i in 0 TO 15 LOOP
	x <= std_LOGIC_VECTOR(to_unsigned(i,4));
	
		WAIT FOR 10 ns;
		
	END LOOP;
	
	WAIT;
	
END PROCESS generate_test;                                          
END g10_num1s_arch;
