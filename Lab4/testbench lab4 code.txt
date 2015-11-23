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
-- Generated on "11/20/2015 16:48:56"
                                                            
-- Vhdl Test Bench template for design  :  g10_mastermind_controller
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g10_mastermind_controller_vhd_tst IS
END g10_mastermind_controller_vhd_tst;
ARCHITECTURE g10_mastermind_controller_arch OF g10_mastermind_controller_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL GR_LD : STD_LOGIC;
SIGNAL GR_SEL : STD_LOGIC;
SIGNAL P_SEL : STD_LOGIC;
SIGNAL READY : STD_LOGIC;
SIGNAL SC_CMP : STD_LOGIC;
SIGNAL SOLVED : STD_LOGIC;
SIGNAL SR_LD : STD_LOGIC;
SIGNAL SR_SEL : STD_LOGIC;
SIGNAL START : STD_LOGIC;
SIGNAL TC_EN : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC;
SIGNAL TC_RST : STD_LOGIC;
SIGNAL TM_EN : STD_LOGIC;
SIGNAL TM_IN : STD_LOGIC;
COMPONENT g10_mastermind_controller
	PORT (
	CLK : IN STD_LOGIC;
	GR_LD : OUT STD_LOGIC;
	GR_SEL : OUT STD_LOGIC;
	P_SEL : OUT STD_LOGIC;
	READY : IN STD_LOGIC;
	SC_CMP : IN STD_LOGIC;
	SOLVED : OUT STD_LOGIC;
	SR_LD : OUT STD_LOGIC;
	SR_SEL : OUT STD_LOGIC;
	START : IN STD_LOGIC;
	TC_EN : OUT STD_LOGIC;
	TC_LAST : IN STD_LOGIC;
	TC_RST : OUT STD_LOGIC;
	TM_EN : OUT STD_LOGIC;
	TM_IN : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g10_mastermind_controller
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	GR_LD => GR_LD,
	GR_SEL => GR_SEL,
	P_SEL => P_SEL,
	READY => READY,
	SC_CMP => SC_CMP,
	SOLVED => SOLVED,
	SR_LD => SR_LD,
	SR_SEL => SR_SEL,
	START => START,
	TC_EN => TC_EN,
	TC_LAST => TC_LAST,
	TC_RST => TC_RST,
	TM_EN => TM_EN,
	TM_IN => TM_IN
	);
                                                                                                  
always : PROCESS                                              
                                    
BEGIN  

	for i in 0 to 777 loop

		CLK <= not CLK;
		
		if (i=0) then
			START <= '0';
		end if;

		if (i = 2) then
			START <= '1';
		end if;

		if(i = 4) then
			READY <= '0';
		end if;

		if (i = 6 ) then	-- <--
			READY <= '1';
			SC_CMP <= '1';
		end if;

		if (i = 8) then
			START <= '0';
		end if;

		if (i = 10) then
			START <= '1';
		end if;

		if (i = 12) then
			READY <= '1';
			SC_CMP <= '0';
		end if;
		
		if ((13 < i) and (i < 19)) then
			SC_CMP <= '1';
			TC_LAST <= '0';
		end if;
		
		if ((19 < i) and (i < 25)) then
			SC_CMP <= '0';
			TC_LAST <= '0';
		end if;
		
		if (i = 26) then
			TC_LAST <= '1';
			READY <= '0';
		end if;
		
		if (i = 28) then
			SC_CMP <= '1';
			READY <= '1';
		end if;
		
		if (i=30) then
			START <= '0';
		end if;

		if (i = 32) then
			START <= '1';
		end if;

		if(i = 34) then
			READY <= '0';
		end if;

		if (i = 36) then	
			READY <= '1';
			SC_CMP <= '1';
		end if;

		if (i = 38) then
			START <= '0';
		end if;

		if (i = 40) then
			START <= '1';
		end if;

		if (i = 42) then
			READY <= '1';
			SC_CMP <= '0';
		end if;
		
		if ((43 < i) and (i < 49)) then
			SC_CMP <= '1';
			TC_LAST <= '0';
		end if;
		
		if ((49 < i) and (i < 55)) then
			SC_CMP <= '0';
			TC_LAST <= '0';
		end if;
		
		if (i = 56) then
			TC_LAST <= '1';
			READY <= '0';
		end if;	
		
		if (i = 58) then
			READY <= '1';
			SC_CMP <= '0';
		end if;
		
		if (i = 60) then 
			READY <= '0';
		end if;
		
		
		wait for 10 ns;
		end loop;
	
	

    
WAIT;                                                        
END PROCESS always;                                          
END g10_mastermind_controller_arch;
