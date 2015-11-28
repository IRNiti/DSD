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
-- Generated on "11/25/2015 17:39:31"
                                                            
-- Vhdl Test Bench template for design  :  g10_mastermind_datapath
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g10_mastermind_datapath_vhd_tst IS
END g10_mastermind_datapath_vhd_tst;
ARCHITECTURE g10_mastermind_datapath_arch OF g10_mastermind_datapath_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC :='0';
SIGNAL clr : STD_LOGIC := '1';
SIGNAL EXT_PATTERN : STD_LOGIC_VECTOR(11 DOWNTO 0) := "000000000000";
SIGNAL G : STD_LOGIC_VECTOR(11 DOWNTO 0):= "000000000000";
SIGNAL GR_LD : STD_LOGIC := '0';
SIGNAL GR_SEL : STD_LOGIC := '0';
SIGNAL P_SEL : STD_LOGIC:= '0';
SIGNAL SC_CMP : STD_LOGIC:= '0';
SIGNAL SR_LD : STD_LOGIC:= '0';
SIGNAL SR_SEL : STD_LOGIC:= '0';
SIGNAL TM_ADDR : STD_LOGIC_VECTOR(11 DOWNTO 0):= "000000000000";
SIGNAL U : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT g10_mastermind_datapath
	PORT (
	CLK : IN STD_LOGIC;
	clr : IN STD_LOGIC;
	EXT_PATTERN : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	G : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	GR_LD : IN STD_LOGIC;
	GR_SEL : IN STD_LOGIC;
	P_SEL : IN STD_LOGIC;
	SC_CMP : OUT STD_LOGIC;
	SR_LD : IN STD_LOGIC;
	SR_SEL : IN STD_LOGIC;
	TM_ADDR : IN STD_LOGIC_VECTOR(11 DOWNTO 0);
	U : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g10_mastermind_datapath
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	clr => clr,
	EXT_PATTERN => EXT_PATTERN,
	G => G,
	GR_LD => GR_LD,
	GR_SEL => GR_SEL,
	P_SEL => P_SEL,
	SC_CMP => SC_CMP,
	SR_LD => SR_LD,
	SR_SEL => SR_SEL,
	TM_ADDR => TM_ADDR,
	U => U,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                                                                               
    wait for 10 ns;
		
	
	for i in 0 to 150 loop
		CLK <= NOT CLK;
		
		if(i=0) then
		clr <= '0';
		G <= "000101000101";
		EXT_PATTERN <= "001001001001";
		TM_ADDR <= "000000011000";
		
		SR_SEL <= '0'; --SC_CMP = 0
		P_SEL <= '0';
		GR_SEL <= '0';
		GR_LD <= '0';
		SR_LD <= '0';
		wait for 20 ns;
		end if;
		
		if (i = 8) then --SC_CMP = 0
		SR_SEL <= '1';
		P_SEL <= '0';
		GR_SEL <= '1';
		GR_LD <= '1';
		SR_LD <= '1';
		wait for 20 ns;
		end if;
		
		if (i=12) then --SC_CMP = 0
		SR_SEL <= '1'; 
		P_SEL <= '0';
		GR_SEL <= '1';
		GR_LD <= '0';
		SR_LD <= '0';
		wait for 20 ns;
		end if;
		
		if (i=16) then 
		SR_SEL <= '1'; --SC_CMP = 0
		P_SEL <= '1';
		GR_SEL <= '1';
		GR_LD <= '1';
		SR_LD <= '1';
		wait for 20 ns;
		end if;
		
		if (i=20) then --SC_CMP = 1	
		SR_SEL <= '0';
		P_SEL <= '1'; 
		GR_SEL <= '0';
		GR_LD <= '1';
		SR_LD <= '1';
		wait for 20 ns;
		end if;
		
		end loop; -- code executes for-- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END g10_mastermind_datapath_arch;
