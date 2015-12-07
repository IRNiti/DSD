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
-- Generated on "12/02/2015 17:17:33"
                                                            
-- Vhdl Test Bench template for design  :  counter_table
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY counter_table_vhd_tst IS
END counter_table_vhd_tst;
ARCHITECTURE counter_table_arch OF counter_table_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL TC_EN2 : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC;
SIGNAL TC_RST2 : STD_LOGIC;
SIGNAL TM_ADDRN : STD_LOGIC_VECTOR(11 DOWNTO 0);
COMPONENT counter_table
	PORT (
	CLK : IN STD_LOGIC;
	TC_EN2 : IN STD_LOGIC;
	TC_LAST : OUT STD_LOGIC;
	TC_RST2 : IN STD_LOGIC;
	TM_ADDRN : OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : counter_table
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	TC_EN2 => TC_EN2,
	TC_LAST => TC_LAST,
	TC_RST2 => TC_RST2,
	TM_ADDRN => TM_ADDRN
	);
                                    
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
         for i in 0 to 100 loop 
		  CLK <= NOT CLK;
		  
		  if (i = 0) then
			 TC_EN2 <= '1';
			 TC_RST2 <= '1';   
			end if;
			
		  if (i = 2) then
			 TC_RST2 <= '0';  
		  end if;
		  
		   if (i = 8) then
		
		  end if;
		 
		
		   
		 
		  
		  wait for 20 ns;
		 end loop;-- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END counter_table_arch;
