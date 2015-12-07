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
-- Generated on "12/02/2015 16:12:34"
                                                            
-- Vhdl Test Bench template for design  :  g10_rptest
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g10_rptest_vhd_tst IS
END g10_rptest_vhd_tst;
ARCHITECTURE g10_rptest_arch OF g10_rptest_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC := '0';
SIGNAL clr : STD_LOGIC;
SIGNAL P_generatedN : STD_LOGIC;
SIGNAL segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL start : STD_LOGIC;
COMPONENT g10_rptest
	PORT (
	clk : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	P_generatedN : IN STD_LOGIC;
	segment1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	start : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g10_rptest
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	clr => clr,
	P_generatedN => P_generatedN,
	segment1 => segment1,
	segment2 => segment2,
	segment3 => segment3,
	segment4 => segment4,
	start => start
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
			 P_generatedN <= '0';   
			end if;
			
		  if (i = 8) then
		  start <= '1';
		  P_generatedN <= '1';
		  end if;
		  
		  if (i = 12 ) then 
		  P_generatedN <= '0';
		  end if;
		  
		  if (i = 20) then
		  P_generatedN <= '1';
		  end if;
		  
		  wait for 20 ns;
		 end loop;

WAIT;                                                        
END PROCESS always;                                          
END g10_rptest_arch;
