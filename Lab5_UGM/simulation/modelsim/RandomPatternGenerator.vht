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
-- Generated on "12/02/2015 16:41:57"
                                                            
-- Vhdl Test Bench template for design  :  RandomPatternGenerator
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY RandomPatternGenerator_vhd_tst IS
END RandomPatternGenerator_vhd_tst;
ARCHITECTURE RandomPatternGenerator_arch OF RandomPatternGenerator_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC  := '0';
SIGNAL EXT_PATTERN : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL P_generatedN : STD_LOGIC;
SIGNAL RP_LD : STD_LOGIC;
SIGNAL Start : STD_LOGIC;
COMPONENT RandomPatternGenerator
	PORT (
	clk : IN STD_LOGIC;
	EXT_PATTERN : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	P_generatedN : IN STD_LOGIC;
	RP_LD : IN STD_LOGIC;
	Start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : RandomPatternGenerator
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	EXT_PATTERN => EXT_PATTERN,
	P_generatedN => P_generatedN,
	RP_LD => RP_LD,
	Start => Start
	);
                                       
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        
                                                       
      for i in 0 to 100 loop 
		  CLK <= NOT CLK;
		  
		  if (i = 0) then
			 start <= '0';
			 P_generatedN <= '1';   
			 RP_LD <= '1';
			end if;
			
		  if (i = 4) then
		  start <= '1';
		  end if;
		  
		   if (i = 8) then
		  P_generatedN <= '0';
		  end if;
		 
		  if (i = 16) then
		  P_generatedN <= '1';
		  end if;
		   
		 
		  
		  wait for 20 ns;
		 end loop;
		 -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END RandomPatternGenerator_arch;
