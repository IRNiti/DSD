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
-- Generated on "10/16/2015 17:39:00"
                                                            
-- Vhdl Test Bench template for design  :  g10_color_matches
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY g10_color_matches_vhd_tst IS
END g10_color_matches_vhd_tst;
ARCHITECTURE g10_color_matches_arch OF g10_color_matches_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL G1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL G4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL num_color_matches : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL num_exact_matches : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL P4 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT g10_color_matches
	PORT (
	G1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	G4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	num_color_matches : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	num_exact_matches : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	P1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	P4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g10_color_matches
	PORT MAP (
-- list connections between master ports and signals
	G1 => G1,
	G2 => G2,
	G3 => G3,
	G4 => G4,
	num_color_matches => num_color_matches,
	num_exact_matches => num_exact_matches,
	P1 => P1,
	P2 => P2,
	P3 => P3,
	P4 => P4
	);
                                       
always : PROCESS                                              
                                   
BEGIN                                                        
G1 <= "000";
G2 <= "000";
G3 <= "000";
G4 <= "000";

P1 <= "000";
P2 <= "000";
P3 <= "000";
P4 <= "000";

wait for 10ns;

G1 <= "001";
G2 <= "001";
G3 <= "011";
G4 <= "001";

P1 <= "001";
P2 <= "001";
P3 <= "001";
P4 <= "010";

wait for 10ns;

G1 <= "010";
G2 <= "011";
G3 <= "001";
G4 <= "000";

P1 <= "010";
P2 <= "011";
P3 <= "001";
P4 <= "011";

wait for 10ns;

G1 <= "000";
G2 <= "011";
G3 <= "100";
G4 <= "101";

P1 <= "011";
P2 <= "000";
P3 <= "100";
P4 <= "101";

wait for 10ns;

G1 <= "000";
G2 <= "010";
G3 <= "001";
G4 <= "011";

P1 <= "000";
P2 <= "001";
P3 <= "011";
P4 <= "010";

wait for 10ns;

G1 <= "010";
G2 <= "011";
G3 <= "000";
G4 <= "010";

P1 <= "010";
P2 <= "000";
P3 <= "001";
P4 <= "011";

wait for 10ns;

G1 <= "000";
G2 <= "001";
G3 <= "010";
G4 <= "011";

P1 <= "001";
P2 <= "000";
P3 <= "011";
P4 <= "000";                                                      
    
WAIT;                                                        
END PROCESS always;                                          
END g10_color_matches_arch;
