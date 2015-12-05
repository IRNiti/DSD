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
-- Generated on "12/04/2015 22:01:16"
                                                            
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
SIGNAL GR_SELECT : STD_LOGIC_VECTOR(3 DOWNTO 0):= "0000" ;
SIGNAL mode : STD_LOGIC;
SIGNAL modify_G : STD_LOGIC;
SIGNAL P_generated : STD_LOGIC:= '1';
SIGNAL Ready : STD_LOGIC:= '1';
SIGNAL segment1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segment4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Start : STD_LOGIC;
SIGNAL sw : STD_LOGIC_VECTOR(2 DOWNTO 0):= "000";
COMPONENT MASTERMIND
	PORT (
	clk : IN STD_LOGIC;
	GR_SELECT : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mode : IN STD_LOGIC;
	modify_G : IN STD_LOGIC;
	P_generated : IN STD_LOGIC;
	Ready : IN STD_LOGIC;
	segment1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segment4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Start : IN STD_LOGIC;
	sw : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : MASTERMIND
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	GR_SELECT => GR_SELECT,
	mode => mode,
	modify_G => modify_G,
	P_generated => P_generated,
	Ready => Ready,
	segment1 => segment1,
	segment2 => segment2,
	segment3 => segment3,
	segment4 => segment4,
	Start => Start,
	sw => sw
	);
                                      
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        for i in 0 to 100 loop 
			clk <= not clk;
			
			if ( i = 0) then
				start <= '0';
				mode <= '1';
				modify_G <= '1';
			end if;
			
			if (i = 2) then
				start <= '1';
				
			end if;
			 
			 
			 if (i = 4) then
				P_generated <= '0';
			end if;
			 
			 if (i = 12) then
				
				P_generated <= '1';
				sw <= "000";
				GR_SELECT <= "0001";
			end if;
			
			if (i = 14) then 
			  sw <= "001";
				GR_SELECT <= "0001";
			end if;
			
			if (i = 16) then 
			  sw <= "010";
				GR_SELECT <= "0010";
			end if;
			
			if (i = 18) then 
			  sw <= "010";
				GR_SELECT <= "0100";
			end if;
			
			if (i = 20) then
				modify_G <= '0';
				ready <= '0';
			end if;
			
			if (i = 22) then
				ready <= '1';
			end if;
			
			if (i = 36) then
				modify_G <= '1';
			end if;
			
			
		wait for 20 ns;
		
		end loop;-- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END MASTERMIND_arch;
