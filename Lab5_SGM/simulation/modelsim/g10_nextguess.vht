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
-- Generated on "12/04/2015 00:33:20"
                                                            
-- Vhdl Test Bench template for design  :  g10_nextguess
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g10_nextguess_vhd_tst IS
END g10_nextguess_vhd_tst;
ARCHITECTURE g10_nextguess_arch OF g10_nextguess_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC := '0';
SIGNAL guess : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL TC_EN : STD_LOGIC;
SIGNAL TC_LAST : STD_LOGIC;
SIGNAL TC_RST : STD_LOGIC;
SIGNAL TM_ADDR : STD_LOGIC_VECTOR(11 DOWNTO 0);
SIGNAL TM_EN : STD_LOGIC;
SIGNAL TM_IN : STD_LOGIC;
SIGNAL TM_OUT : STD_LOGIC;
COMPONENT g10_nextguess
	PORT (
	CLK : IN STD_LOGIC;
	guess : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	TC_EN : IN STD_LOGIC;
	TC_LAST : OUT STD_LOGIC;
	TC_RST : IN STD_LOGIC;
	TM_ADDR : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
	TM_EN : IN STD_LOGIC;
	TM_IN : IN STD_LOGIC;
	TM_OUT : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : g10_nextguess
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	guess => guess,
	TC_EN => TC_EN,
	TC_LAST => TC_LAST,
	TC_RST => TC_RST,
	TM_ADDR => TM_ADDR,
	TM_EN => TM_EN,
	TM_IN => TM_IN,
	TM_OUT => TM_OUT
	);
                                          
always : PROCESS                                              
                                      
BEGIN                                                         
      
	for i in 0 to 10500 loop
	
		CLK <= not CLK;
		
		if(i=0) then
						TC_EN <= '1';
						TC_RST <='0';
						TM_IN <= '1';
						TM_EN <= '1';
		end if;
						
		if( i = 2598) then
			TC_RST <= '1';
		end if;
					
					
					if(i=2600) then
						TC_EN <= '1';
						TC_RST <='0';
						TM_IN <= '1';
						TM_EN <= '0';
					end if;
						
		if( i = 5198) then
			TC_RST <= '1';
		end if;
					
					if((i>=5200)) then
						TC_EN <= '1';
						TC_RST <='0';
						TM_EN <= '1';
						if((i mod 4 = 0) or (i mod 4 = 1)) then
							TM_IN <= '0';
						else
							TM_IN <= '1';
						end if;
					end if;
						
						if(i = 7798) then
							TC_RST <= '1';
						end if;
					
					
					if(i>=7800) then
						TC_EN <= '1';
						TC_RST <='0';
						TM_IN <= '1';
						TM_EN <= '0';
					end if;
					
					wait for 10 ns;
	
	end loop;
		
WAIT;                                                        
END PROCESS always;                                          
END g10_nextguess_arch;
