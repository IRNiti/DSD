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
-- Generated on "12/04/2015 17:41:59"
                                                            
-- Vhdl Test Bench template for design  :  MASTERMIND
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MASTERMIND_vhd_tst IS
END MASTERMIND_vhd_tst;
ARCHITECTURE MASTERMIND_arch OF MASTERMIND_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL mode : STD_LOGIC;
SIGNAL modify_G : STD_LOGIC;
SIGNAL P_generated : STD_LOGIC;
SIGNAL Ready : STD_LOGIC;
SIGNAL segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Start : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL switch_LED : STD_LOGIC;
COMPONENT MASTERMIND
	PORT (
	clk : IN STD_LOGIC;
	mode : IN STD_LOGIC;
	modify_G : IN STD_LOGIC;
	P_generated : IN STD_LOGIC;
	Ready : IN STD_LOGIC;
	segment1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Start : IN STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	switch_LED : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MASTERMIND
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	mode => mode,
	modify_G => modify_G,
	P_generated => P_generated,
	Ready => Ready,
	segment1 => segment1,
	segment2 => segment2,
	segment3 => segment3,
	segment4 => segment4,
	Start => Start,
	sw => sw,
	switch_LED => switch_LED
	);
                                           
always : PROCESS                                              
                                  
BEGIN    

	for i in 0 to 10000 loop

		clk <= not clk;
		
		if (i = 0) then
   
			Start <= '0';
			Ready <= '0';
			
		end if;
		
		if(i = 2) then
		
			Start <= '1';
		end if;
		
		if(i = 6) then
		
			Ready <= '1';
		end if;
		
--		if(i = 59) then
--			Ready <= '0';
--		end if;
		
		wait for 10 ns;
		
		end loop;
	
WAIT;                                                        
END PROCESS always;                                          
END MASTERMIND_arch;
