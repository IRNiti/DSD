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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/27/2015 15:53:20"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	g10_mastermind_datapath IS
    PORT (
	G : IN std_logic_vector(11 DOWNTO 0);
	EXT_PATTERN : IN std_logic_vector(11 DOWNTO 0);
	TM_ADDR : IN std_logic_vector(11 DOWNTO 0);
	SC_CMP : OUT std_logic;
	CLK : IN std_logic;
	clr : IN std_logic;
	Y : OUT std_logic_vector(3 DOWNTO 0);
	U : OUT std_logic_vector(3 DOWNTO 0);
	SR_SEL : IN std_logic;
	P_SEL : IN std_logic;
	GR_SEL : IN std_logic;
	GR_LD : IN std_logic;
	SR_LD : IN std_logic
	);
END g10_mastermind_datapath;

-- Design Ports Information
-- G[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[1]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[2]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[3]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[4]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[5]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[6]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[7]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[8]	=>  Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[9]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[10]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G[11]	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SC_CMP	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[2]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- U[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- U[1]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- U[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- U[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_SEL	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P_SEL	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[0]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[8]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[7]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[6]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[6]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[5]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[4]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[3]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[3]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[11]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[11]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[10]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[10]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_ADDR[9]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EXT_PATTERN[9]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SR_LD	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_SEL	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_LD	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g10_mastermind_datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_G : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_EXT_PATTERN : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_TM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_SC_CMP : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_U : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SR_SEL : std_logic;
SIGNAL ww_P_SEL : std_logic;
SIGNAL ww_GR_SEL : std_logic;
SIGNAL ww_GR_LD : std_logic;
SIGNAL ww_SR_LD : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clr~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate1|Gate1|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate3|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate3|AeqB~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate11|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate12|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate13|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate10|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate10|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \P_SEL~combout\ : std_logic;
SIGNAL \P2[0]~2_combout\ : std_logic;
SIGNAL \GR_SEL~combout\ : std_logic;
SIGNAL \d2[0]~2_combout\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \clr~clkctrl_outclk\ : std_logic;
SIGNAL \GR_LD~combout\ : std_logic;
SIGNAL \P2[2]~0_combout\ : std_logic;
SIGNAL \d2[1]~1_combout\ : std_logic;
SIGNAL \d2[2]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate2|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate2|AeqB~1_combout\ : std_logic;
SIGNAL \P4[0]~2_combout\ : std_logic;
SIGNAL \P4[1]~1_combout\ : std_logic;
SIGNAL \d4[1]~1_combout\ : std_logic;
SIGNAL \d4[2]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate4|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate4|AeqB~1_combout\ : std_logic;
SIGNAL \P1[0]~2_combout\ : std_logic;
SIGNAL \d1[0]~2_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate1|AeqB~1_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate5|num1s[0]~2_combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate5|num1s[2]~0_combout\ : std_logic;
SIGNAL \P2[1]~1_combout\ : std_logic;
SIGNAL \P1[1]~1_combout\ : std_logic;
SIGNAL \P1[2]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate9|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \d3[2]~0_combout\ : std_logic;
SIGNAL \d3[0]~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \d4[0]~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate16|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \P4[2]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate16|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate22|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate22|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate22|min[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate15|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate15|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate21|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate21|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \d1[1]~1_combout\ : std_logic;
SIGNAL \d1[2]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate17|num1s[0]~1_combout\ : std_logic;
SIGNAL \d3[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate18|num1s[0]~0_combout\ : std_logic;
SIGNAL \P3[0]~2_combout\ : std_logic;
SIGNAL \P3[2]~0_combout\ : std_logic;
SIGNAL \P3[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate12|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate18|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate24|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate24|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate24|min[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate11|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate17|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate23|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate23|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux3~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate24|NgtM~combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate24|min[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate23|min[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate19|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate13|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate19|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate25|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate25|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate25|min[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate14|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate20|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate20|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate26|NgtM~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate26|NgtM~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate26|NgtM~combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate26|min[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate14|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate26|min[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate29|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate22|NgtM~combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate22|min[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate9|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate21|min[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux1~0_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux3~1_combout\ : std_logic;
SIGNAL \SR_LD~combout\ : std_logic;
SIGNAL \Gate1|Gate1|Gate5|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux2~0_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux2~1_combout\ : std_logic;
SIGNAL \SR_SEL~combout\ : std_logic;
SIGNAL \i[1]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux0~0_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux0~1_combout\ : std_logic;
SIGNAL \Gate3|AeqB~0_combout\ : std_logic;
SIGNAL \i[0]~2_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux1~1_combout\ : std_logic;
SIGNAL \Gate1|Gate3|Mux1~2_combout\ : std_logic;
SIGNAL \Gate3|SYNTHESIZED_WIRE_2~0_combout\ : std_logic;
SIGNAL \Gate3|AeqB~combout\ : std_logic;
SIGNAL \i[2]~3_combout\ : std_logic;
SIGNAL \i[3]~1_combout\ : std_logic;
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TM_ADDR~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate18|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate4|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate13|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate9|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate5|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate15|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate12|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate14|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate8|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate17|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate11|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate16|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate1|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate6|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate10|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate19|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \EXT_PATTERN~combout\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate20|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate7|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate2|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate3|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate4|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate5|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate6|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate2|Gate7|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ALT_INV_AeqB~combout\ : std_logic;

BEGIN

ww_G <= G;
ww_EXT_PATTERN <= EXT_PATTERN;
ww_TM_ADDR <= TM_ADDR;
SC_CMP <= ww_SC_CMP;
ww_CLK <= CLK;
ww_clr <= clr;
Y <= ww_Y;
U <= ww_U;
ww_SR_SEL <= SR_SEL;
ww_P_SEL <= P_SEL;
ww_GR_SEL <= GR_SEL;
ww_GR_LD <= GR_LD;
ww_SR_LD <= SR_LD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\clr~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clr~combout\);
\Gate3|ALT_INV_AeqB~combout\ <= NOT \Gate3|AeqB~combout\;

-- Location: LCCOMB_X36_Y23_N26
\Gate1|Gate1|Gate1|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate1|AeqB~0_combout\ = (\P1[2]~0_combout\ & ((\Gate4|q\(1) $ (\P1[1]~1_combout\)) # (!\Gate4|q\(2)))) # (!\P1[2]~0_combout\ & ((\Gate4|q\(2)) # (\Gate4|q\(1) $ (\P1[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1[2]~0_combout\,
	datab => \Gate4|q\(2),
	datac => \Gate4|q\(1),
	datad => \P1[1]~1_combout\,
	combout => \Gate1|Gate1|Gate1|AeqB~0_combout\);

-- Location: LCCOMB_X35_Y22_N0
\Gate1|Gate1|Gate3|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate3|AeqB~0_combout\ = (\P3[2]~0_combout\ & ((\P3[1]~1_combout\ $ (\Gate6|q\(1))) # (!\Gate6|q\(2)))) # (!\P3[2]~0_combout\ & ((\Gate6|q\(2)) # (\P3[1]~1_combout\ $ (\Gate6|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datab => \P3[1]~1_combout\,
	datac => \Gate6|q\(2),
	datad => \Gate6|q\(1),
	combout => \Gate1|Gate1|Gate3|AeqB~0_combout\);

-- Location: LCCOMB_X35_Y22_N14
\Gate1|Gate1|Gate3|AeqB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate3|AeqB~1_combout\ = (\Gate1|Gate1|Gate3|AeqB~0_combout\) # (\Gate6|q\(0) $ (\P3[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate6|q\(0),
	datab => \P3[0]~2_combout\,
	datad => \Gate1|Gate1|Gate3|AeqB~0_combout\,
	combout => \Gate1|Gate1|Gate3|AeqB~1_combout\);

-- Location: LCCOMB_X40_Y23_N14
\Gate1|Gate2|Gate1|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) = (\P1[1]~1_combout\ & (!\P1[0]~2_combout\ & !\P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X36_Y24_N8
\Gate1|Gate2|Gate11|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate11|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & ((!\Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3)) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)))) 
-- # (!\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)) # (\Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3)))))) # (!\Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) & 
-- ((\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)) # (\Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3)))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & 
-- (\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3) & \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate11|num1s[1]~0_combout\);

-- Location: LCCOMB_X40_Y23_N16
\Gate1|Gate2|Gate1|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) = (\P1[1]~1_combout\ & (\P1[0]~2_combout\ & !\P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X38_Y22_N6
\Gate1|Gate2|Gate12|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate12|num1s[0]~0_combout\ = \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate12|num1s[0]~0_combout\);

-- Location: LCCOMB_X36_Y22_N6
\Gate1|Gate2|Gate12|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate12|num1s\(2) = (\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) & (\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & (\Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3) & \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate12|num1s\(2));

-- Location: LCCOMB_X39_Y23_N6
\Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ = (!\P4[1]~1_combout\ & (\P4[2]~0_combout\ & !\P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4[1]~1_combout\,
	datac => \P4[2]~0_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X38_Y23_N0
\Gate1|Gate2|Gate13|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate13|num1s\(2) = (\Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate13|num1s\(2));

-- Location: LCCOMB_X38_Y23_N10
\Gate1|Gate2|Gate13|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate13|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & ((!\Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate13|num1s[1]~0_combout\);

-- Location: LCCOMB_X36_Y23_N20
\Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ = (\Gate6|q\(2) & (!\Gate6|q\(1) & \Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate6|q\(2),
	datac => \Gate6|q\(1),
	datad => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X38_Y24_N26
\Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ = (\P3[2]~0_combout\ & (\P3[0]~2_combout\ & !\P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datac => \P3[0]~2_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X36_Y23_N16
\Gate1|Gate2|Gate5|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) = (\Gate4|q\(1)) # ((\Gate4|q\(2)) # (\Gate4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate4|q\(1),
	datab => \Gate4|q\(2),
	datad => \Gate4|q\(0),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X37_Y24_N4
\Gate1|Gate2|Gate3|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) = (\P3[2]~0_combout\) # ((\P3[0]~2_combout\) # (\P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datab => \P3[0]~2_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y24_N30
\Gate1|Gate2|Gate9|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate9|num1s\(2) = (!\Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3) & !\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate9|num1s\(2));

-- Location: LCCOMB_X35_Y23_N12
\Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ = (\Gate4|q\(0) & (!\Gate4|q\(1) & !\Gate4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate4|q\(0),
	datac => \Gate4|q\(1),
	datad => \Gate4|q\(2),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X38_Y24_N4
\Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ = (!\P3[2]~0_combout\ & (\P3[0]~2_combout\ & !\P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datac => \P3[0]~2_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y23_N26
\Gate1|Gate2|Gate10|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate10|num1s[0]~0_combout\ = \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate10|num1s[0]~0_combout\);

-- Location: LCCOMB_X40_Y23_N6
\Gate1|Gate2|Gate10|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate10|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((!\Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ & \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate10|num1s[1]~1_combout\);

-- Location: LCCOMB_X37_Y22_N6
\Gate1|Gate2|Gate34|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\ = (\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ & (\Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ 
-- (\Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\)))) # (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & ((\Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\) # (\Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ 
-- (\Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X36_Y22_N24
\Gate1|Gate2|Gate34|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ = (\Gate1|Gate2|Gate9|num1s\(2) & (\Gate1|Gate2|Gate15|num1s\(2) $ (((\Gate1|Gate2|Gate10|num1s\(2) & \Gate1|Gate2|Gate16|num1s\(2)))))) # (!\Gate1|Gate2|Gate9|num1s\(2) & (\Gate1|Gate2|Gate10|num1s\(2) & 
-- ((\Gate1|Gate2|Gate16|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate9|num1s\(2),
	datab => \Gate1|Gate2|Gate10|num1s\(2),
	datac => \Gate1|Gate2|Gate15|num1s\(2),
	datad => \Gate1|Gate2|Gate16|num1s\(2),
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(3),
	combout => \TM_ADDR~combout\(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(3),
	combout => \EXT_PATTERN~combout\(3));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_P_SEL,
	combout => \P_SEL~combout\);

-- Location: LCCOMB_X36_Y24_N10
\P2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P2[0]~2_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(3))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(3),
	datac => \EXT_PATTERN~combout\(3),
	datad => \P_SEL~combout\,
	combout => \P2[0]~2_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GR_SEL,
	combout => \GR_SEL~combout\);

-- Location: LCCOMB_X36_Y24_N14
\d2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2[0]~2_combout\ = (\TM_ADDR~combout\(3) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(3),
	datad => \GR_SEL~combout\,
	combout => \d2[0]~2_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: CLKCTRL_G1
\clr~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clr~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clr~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_LD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_GR_LD,
	combout => \GR_LD~combout\);

-- Location: LCFF_X35_Y23_N21
\Gate5|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d2[0]~2_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate5|q\(0));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(5),
	combout => \TM_ADDR~combout\(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(5),
	combout => \EXT_PATTERN~combout\(5));

-- Location: LCCOMB_X36_Y24_N12
\P2[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P2[2]~0_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(5))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(5),
	datac => \EXT_PATTERN~combout\(5),
	datad => \P_SEL~combout\,
	combout => \P2[2]~0_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(4),
	combout => \TM_ADDR~combout\(4));

-- Location: LCCOMB_X34_Y24_N18
\d2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2[1]~1_combout\ = (!\GR_SEL~combout\ & \TM_ADDR~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GR_SEL~combout\,
	datac => \TM_ADDR~combout\(4),
	combout => \d2[1]~1_combout\);

-- Location: LCFF_X35_Y23_N7
\Gate5|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d2[1]~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate5|q\(1));

-- Location: LCCOMB_X36_Y24_N16
\d2[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d2[2]~0_combout\ = (\TM_ADDR~combout\(5) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(5),
	datad => \GR_SEL~combout\,
	combout => \d2[2]~0_combout\);

-- Location: LCFF_X35_Y23_N29
\Gate5|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d2[2]~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate5|q\(2));

-- Location: LCCOMB_X34_Y23_N8
\Gate1|Gate1|Gate2|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate2|AeqB~0_combout\ = (\P2[1]~1_combout\ & ((\P2[2]~0_combout\ $ (\Gate5|q\(2))) # (!\Gate5|q\(1)))) # (!\P2[1]~1_combout\ & ((\Gate5|q\(1)) # (\P2[2]~0_combout\ $ (\Gate5|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[1]~1_combout\,
	datab => \P2[2]~0_combout\,
	datac => \Gate5|q\(1),
	datad => \Gate5|q\(2),
	combout => \Gate1|Gate1|Gate2|AeqB~0_combout\);

-- Location: LCCOMB_X35_Y22_N16
\Gate1|Gate1|Gate2|AeqB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate2|AeqB~1_combout\ = (\Gate1|Gate1|Gate2|AeqB~0_combout\) # (\P2[0]~2_combout\ $ (\Gate5|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2[0]~2_combout\,
	datac => \Gate5|q\(0),
	datad => \Gate1|Gate1|Gate2|AeqB~0_combout\,
	combout => \Gate1|Gate1|Gate2|AeqB~1_combout\);

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(9),
	combout => \EXT_PATTERN~combout\(9));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(9),
	combout => \TM_ADDR~combout\(9));

-- Location: LCCOMB_X34_Y23_N18
\P4[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P4[0]~2_combout\ = (\P_SEL~combout\ & ((\TM_ADDR~combout\(9)))) # (!\P_SEL~combout\ & (\EXT_PATTERN~combout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_PATTERN~combout\(9),
	datac => \TM_ADDR~combout\(9),
	datad => \P_SEL~combout\,
	combout => \P4[0]~2_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(10),
	combout => \TM_ADDR~combout\(10));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(10),
	combout => \EXT_PATTERN~combout\(10));

-- Location: LCCOMB_X34_Y23_N16
\P4[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P4[1]~1_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(10))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(10),
	datac => \EXT_PATTERN~combout\(10),
	datad => \P_SEL~combout\,
	combout => \P4[1]~1_combout\);

-- Location: LCCOMB_X34_Y23_N14
\d4[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4[1]~1_combout\ = (\TM_ADDR~combout\(10) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(10),
	datad => \GR_SEL~combout\,
	combout => \d4[1]~1_combout\);

-- Location: LCFF_X34_Y23_N15
\Gate7|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \d4[1]~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate7|q\(1));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(11),
	combout => \TM_ADDR~combout\(11));

-- Location: LCCOMB_X34_Y23_N30
\d4[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4[2]~0_combout\ = (\TM_ADDR~combout\(11) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(11),
	datad => \GR_SEL~combout\,
	combout => \d4[2]~0_combout\);

-- Location: LCFF_X34_Y23_N31
\Gate7|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \d4[2]~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate7|q\(2));

-- Location: LCCOMB_X34_Y23_N26
\Gate1|Gate1|Gate4|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate4|AeqB~0_combout\ = (\P4[2]~0_combout\ & ((\P4[1]~1_combout\ $ (\Gate7|q\(1))) # (!\Gate7|q\(2)))) # (!\P4[2]~0_combout\ & ((\Gate7|q\(2)) # (\P4[1]~1_combout\ $ (\Gate7|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[2]~0_combout\,
	datab => \P4[1]~1_combout\,
	datac => \Gate7|q\(1),
	datad => \Gate7|q\(2),
	combout => \Gate1|Gate1|Gate4|AeqB~0_combout\);

-- Location: LCCOMB_X35_Y23_N6
\Gate1|Gate1|Gate4|AeqB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate4|AeqB~1_combout\ = (\Gate1|Gate1|Gate4|AeqB~0_combout\) # (\Gate7|q\(0) $ (\P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate7|q\(0),
	datab => \P4[0]~2_combout\,
	datad => \Gate1|Gate1|Gate4|AeqB~0_combout\,
	combout => \Gate1|Gate1|Gate4|AeqB~1_combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(0),
	combout => \EXT_PATTERN~combout\(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(0),
	combout => \TM_ADDR~combout\(0));

-- Location: LCCOMB_X40_Y23_N20
\P1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P1[0]~2_combout\ = (\P_SEL~combout\ & ((\TM_ADDR~combout\(0)))) # (!\P_SEL~combout\ & (\EXT_PATTERN~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_PATTERN~combout\(0),
	datac => \P_SEL~combout\,
	datad => \TM_ADDR~combout\(0),
	combout => \P1[0]~2_combout\);

-- Location: LCCOMB_X40_Y23_N8
\d1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1[0]~2_combout\ = (!\GR_SEL~combout\ & \TM_ADDR~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GR_SEL~combout\,
	datad => \TM_ADDR~combout\(0),
	combout => \d1[0]~2_combout\);

-- Location: LCFF_X36_Y23_N9
\Gate4|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d1[0]~2_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate4|q\(0));

-- Location: LCCOMB_X36_Y23_N4
\Gate1|Gate1|Gate1|AeqB~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate1|AeqB~1_combout\ = (\Gate1|Gate1|Gate1|AeqB~0_combout\) # (\P1[0]~2_combout\ $ (\Gate4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate1|AeqB~0_combout\,
	datab => \P1[0]~2_combout\,
	datad => \Gate4|q\(0),
	combout => \Gate1|Gate1|Gate1|AeqB~1_combout\);

-- Location: LCCOMB_X36_Y22_N10
\Gate1|Gate1|Gate5|num1s[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate5|num1s[0]~2_combout\ = \Gate1|Gate1|Gate3|AeqB~1_combout\ $ (\Gate1|Gate1|Gate2|AeqB~1_combout\ $ (\Gate1|Gate1|Gate4|AeqB~1_combout\ $ (\Gate1|Gate1|Gate1|AeqB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate3|AeqB~1_combout\,
	datab => \Gate1|Gate1|Gate2|AeqB~1_combout\,
	datac => \Gate1|Gate1|Gate4|AeqB~1_combout\,
	datad => \Gate1|Gate1|Gate1|AeqB~1_combout\,
	combout => \Gate1|Gate1|Gate5|num1s[0]~2_combout\);

-- Location: LCCOMB_X36_Y22_N20
\Gate1|Gate1|Gate5|num1s[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate5|num1s[2]~0_combout\ = (\Gate1|Gate1|Gate3|AeqB~1_combout\) # ((\Gate1|Gate1|Gate1|AeqB~1_combout\) # ((\Gate1|Gate1|Gate4|AeqB~1_combout\) # (\Gate1|Gate1|Gate2|AeqB~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate3|AeqB~1_combout\,
	datab => \Gate1|Gate1|Gate1|AeqB~1_combout\,
	datac => \Gate1|Gate1|Gate4|AeqB~1_combout\,
	datad => \Gate1|Gate1|Gate2|AeqB~1_combout\,
	combout => \Gate1|Gate1|Gate5|num1s[2]~0_combout\);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(4),
	combout => \EXT_PATTERN~combout\(4));

-- Location: LCCOMB_X34_Y24_N16
\P2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P2[1]~1_combout\ = (\P_SEL~combout\ & ((\TM_ADDR~combout\(4)))) # (!\P_SEL~combout\ & (\EXT_PATTERN~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_PATTERN~combout\(4),
	datac => \TM_ADDR~combout\(4),
	datad => \P_SEL~combout\,
	combout => \P2[1]~1_combout\);

-- Location: LCCOMB_X36_Y24_N2
\Gate1|Gate2|Gate2|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) = (\P2[2]~0_combout\) # ((\P2[1]~1_combout\) # (\P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X34_Y23_N12
\Gate1|Gate2|Gate4|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3) = (\P4[2]~0_combout\) # ((\P4[1]~1_combout\) # (\P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[2]~0_combout\,
	datac => \P4[1]~1_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(1),
	combout => \TM_ADDR~combout\(1));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(1),
	combout => \EXT_PATTERN~combout\(1));

-- Location: LCCOMB_X40_Y23_N22
\P1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P1[1]~1_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(1))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(1),
	datac => \P_SEL~combout\,
	datad => \EXT_PATTERN~combout\(1),
	combout => \P1[1]~1_combout\);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(2),
	combout => \TM_ADDR~combout\(2));

-- Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(2),
	combout => \EXT_PATTERN~combout\(2));

-- Location: LCCOMB_X40_Y23_N12
\P1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P1[2]~0_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(2))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(2),
	datac => \P_SEL~combout\,
	datad => \EXT_PATTERN~combout\(2),
	combout => \P1[2]~0_combout\);

-- Location: LCCOMB_X40_Y23_N30
\Gate1|Gate2|Gate1|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) = (\P1[1]~1_combout\) # ((\P1[0]~2_combout\) # (\P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y24_N20
\Gate1|Gate2|Gate9|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate9|num1s[0]~1_combout\ = \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate9|num1s[0]~1_combout\);

-- Location: LCCOMB_X35_Y23_N28
\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ = (\Gate5|q\(0) & (!\Gate5|q\(2) & !\Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate5|q\(0),
	datac => \Gate5|q\(2),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\);

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(8),
	combout => \TM_ADDR~combout\(8));

-- Location: LCCOMB_X37_Y24_N14
\d3[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3[2]~0_combout\ = (\TM_ADDR~combout\(8) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(8),
	datad => \GR_SEL~combout\,
	combout => \d3[2]~0_combout\);

-- Location: LCFF_X36_Y23_N15
\Gate6|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d3[2]~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate6|q\(2));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(6),
	combout => \TM_ADDR~combout\(6));

-- Location: LCCOMB_X37_Y24_N22
\d3[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3[0]~2_combout\ = (\TM_ADDR~combout\(6)) # (\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(6),
	datad => \GR_SEL~combout\,
	combout => \d3[0]~2_combout\);

-- Location: LCFF_X36_Y23_N11
\Gate6|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d3[0]~2_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate6|q\(0));

-- Location: LCCOMB_X36_Y23_N14
\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate6|q\(1) & (!\Gate6|q\(2) & \Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate6|q\(1),
	datac => \Gate6|q\(2),
	datad => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X34_Y23_N20
\d4[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \d4[0]~2_combout\ = (\TM_ADDR~combout\(9)) # (\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(9),
	datad => \GR_SEL~combout\,
	combout => \d4[0]~2_combout\);

-- Location: LCFF_X34_Y23_N21
\Gate7|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \d4[0]~2_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate7|q\(0));

-- Location: LCCOMB_X34_Y23_N22
\Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate7|q\(1) & (\Gate7|q\(0) & !\Gate7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate7|q\(1),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(2),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X35_Y23_N30
\Gate1|Gate2|Gate16|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate16|num1s[0]~0_combout\ = \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate16|num1s[0]~0_combout\);

-- Location: LCCOMB_X36_Y24_N26
\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ = (!\P2[2]~0_combout\ & (!\P2[1]~1_combout\ & \P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(11),
	combout => \EXT_PATTERN~combout\(11));

-- Location: LCCOMB_X34_Y23_N24
\P4[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P4[2]~0_combout\ = (\P_SEL~combout\ & ((\TM_ADDR~combout\(11)))) # (!\P_SEL~combout\ & (\EXT_PATTERN~combout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_PATTERN~combout\(11),
	datac => \TM_ADDR~combout\(11),
	datad => \P_SEL~combout\,
	combout => \P4[2]~0_combout\);

-- Location: LCCOMB_X39_Y23_N0
\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ = (!\P4[1]~1_combout\ & (!\P4[2]~0_combout\ & \P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4[1]~1_combout\,
	datac => \P4[2]~0_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y23_N28
\Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ = (!\P1[1]~1_combout\ & (\P1[0]~2_combout\ & !\P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y23_N0
\Gate1|Gate2|Gate10|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate10|num1s\(2) = (\Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate10|num1s\(2));

-- Location: LCCOMB_X35_Y23_N8
\Gate1|Gate2|Gate16|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate16|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((!\Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate16|num1s[1]~1_combout\);

-- Location: LCCOMB_X35_Y23_N22
\Gate1|Gate2|Gate16|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate16|num1s\(2) = (\Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & (\Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate16|num1s\(2));

-- Location: LCCOMB_X35_Y23_N24
\Gate1|Gate2|Gate22|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate22|NgtM~0_combout\ = (\Gate1|Gate2|Gate10|num1s\(2) & (((\Gate1|Gate2|Gate10|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate16|num1s[1]~1_combout\)) # (!\Gate1|Gate2|Gate16|num1s\(2)))) # (!\Gate1|Gate2|Gate10|num1s\(2) & 
-- (\Gate1|Gate2|Gate10|num1s[1]~1_combout\ & (!\Gate1|Gate2|Gate16|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate16|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate10|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate10|num1s\(2),
	datac => \Gate1|Gate2|Gate16|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate16|num1s\(2),
	combout => \Gate1|Gate2|Gate22|NgtM~0_combout\);

-- Location: LCCOMB_X35_Y23_N26
\Gate1|Gate2|Gate22|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate22|NgtM~1_combout\ = (\Gate1|Gate2|Gate10|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate16|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate10|num1s\(2) $ (!\Gate1|Gate2|Gate16|num1s\(2))))) # (!\Gate1|Gate2|Gate10|num1s[1]~1_combout\ & 
-- (!\Gate1|Gate2|Gate16|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate10|num1s\(2) $ (!\Gate1|Gate2|Gate16|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate10|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate10|num1s\(2),
	datac => \Gate1|Gate2|Gate16|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate16|num1s\(2),
	combout => \Gate1|Gate2|Gate22|NgtM~1_combout\);

-- Location: LCCOMB_X35_Y23_N16
\Gate1|Gate2|Gate22|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate22|min[0]~0_combout\ = (\Gate1|Gate2|Gate22|NgtM~0_combout\ & (((\Gate1|Gate2|Gate16|num1s[0]~0_combout\)))) # (!\Gate1|Gate2|Gate22|NgtM~0_combout\ & (\Gate1|Gate2|Gate10|num1s[0]~0_combout\ & ((\Gate1|Gate2|Gate16|num1s[0]~0_combout\) # 
-- (!\Gate1|Gate2|Gate22|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate10|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate16|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate22|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate22|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate22|min[0]~0_combout\);

-- Location: LCCOMB_X35_Y23_N20
\Gate1|Gate2|Gate6|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) = (\Gate5|q\(2)) # ((\Gate5|q\(0)) # (\Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate5|q\(2),
	datac => \Gate5|q\(0),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X35_Y23_N18
\Gate1|Gate2|Gate8|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3) = (\Gate7|q\(2)) # ((\Gate7|q\(0)) # (\Gate7|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate7|q\(2),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(1),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y23_N10
\Gate1|Gate2|Gate7|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3) = (\Gate6|q\(1)) # ((\Gate6|q\(2)) # (\Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate6|q\(1),
	datab => \Gate6|q\(2),
	datac => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y22_N14
\Gate1|Gate2|Gate15|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate15|num1s\(2) = (!\Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3) & !\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate15|num1s\(2));

-- Location: LCCOMB_X36_Y22_N16
\Gate1|Gate2|Gate15|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate15|num1s[0]~1_combout\ = \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3) $ (\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate15|num1s[0]~1_combout\);

-- Location: LCCOMB_X36_Y22_N0
\Gate1|Gate2|Gate15|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate15|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & ((\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3) & !\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3))) # 
-- (!\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & ((!\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)) # (!\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3)))))) # (!\Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & 
-- ((\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & ((!\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)) # (!\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3)))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & 
-- ((\Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3)) # (\Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate15|num1s[1]~0_combout\);

-- Location: LCCOMB_X36_Y22_N26
\Gate1|Gate2|Gate21|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate21|NgtM~0_combout\ = (\Gate1|Gate2|Gate9|num1s[1]~0_combout\ & (((\Gate1|Gate2|Gate9|num1s[0]~1_combout\ & !\Gate1|Gate2|Gate15|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate15|num1s[1]~0_combout\))) # 
-- (!\Gate1|Gate2|Gate9|num1s[1]~0_combout\ & (\Gate1|Gate2|Gate9|num1s[0]~1_combout\ & (!\Gate1|Gate2|Gate15|num1s[0]~1_combout\ & !\Gate1|Gate2|Gate15|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate9|num1s[1]~0_combout\,
	datab => \Gate1|Gate2|Gate9|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate15|num1s[0]~1_combout\,
	datad => \Gate1|Gate2|Gate15|num1s[1]~0_combout\,
	combout => \Gate1|Gate2|Gate21|NgtM~0_combout\);

-- Location: LCCOMB_X36_Y22_N28
\Gate1|Gate2|Gate21|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate21|NgtM~1_combout\ = (\Gate1|Gate2|Gate9|num1s\(2) & ((\Gate1|Gate2|Gate21|NgtM~0_combout\) # (!\Gate1|Gate2|Gate15|num1s\(2)))) # (!\Gate1|Gate2|Gate9|num1s\(2) & (!\Gate1|Gate2|Gate15|num1s\(2) & \Gate1|Gate2|Gate21|NgtM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate9|num1s\(2),
	datac => \Gate1|Gate2|Gate15|num1s\(2),
	datad => \Gate1|Gate2|Gate21|NgtM~0_combout\,
	combout => \Gate1|Gate2|Gate21|NgtM~1_combout\);

-- Location: LCCOMB_X36_Y22_N22
\Gate1|Gate2|Gate27|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ = \Gate1|Gate2|Gate22|min[0]~0_combout\ $ (((\Gate1|Gate2|Gate21|NgtM~1_combout\ & (\Gate1|Gate2|Gate15|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate21|NgtM~1_combout\ & 
-- ((\Gate1|Gate2|Gate9|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate15|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate9|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate22|min[0]~0_combout\,
	datad => \Gate1|Gate2|Gate21|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X40_Y23_N2
\d1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1[1]~1_combout\ = (\TM_ADDR~combout\(1) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(1),
	datac => \GR_SEL~combout\,
	combout => \d1[1]~1_combout\);

-- Location: LCFF_X36_Y23_N27
\Gate4|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d1[1]~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate4|q\(1));

-- Location: LCCOMB_X40_Y23_N24
\d1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \d1[2]~0_combout\ = (!\GR_SEL~combout\ & \TM_ADDR~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GR_SEL~combout\,
	datad => \TM_ADDR~combout\(2),
	combout => \d1[2]~0_combout\);

-- Location: LCFF_X36_Y23_N5
\Gate4|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d1[2]~0_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate4|q\(2));

-- Location: LCCOMB_X36_Y23_N24
\Gate1|Gate2|Gate5|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) = (\Gate4|q\(1) & (!\Gate4|q\(2) & !\Gate4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate4|q\(1),
	datac => \Gate4|q\(2),
	datad => \Gate4|q\(0),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X34_Y23_N10
\Gate1|Gate2|Gate8|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) = (\Gate7|q\(1) & (!\Gate7|q\(0) & !\Gate7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate7|q\(1),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(2),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X36_Y23_N28
\Gate1|Gate2|Gate6|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3) = (!\Gate5|q\(2) & (!\Gate5|q\(0) & \Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate5|q\(2),
	datac => \Gate5|q\(0),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X37_Y23_N22
\Gate1|Gate2|Gate17|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate17|num1s[0]~1_combout\ = \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate17|num1s[0]~1_combout\);

-- Location: LCCOMB_X36_Y23_N8
\Gate1|Gate2|Gate5|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) = (!\Gate4|q\(2) & (\Gate4|q\(0) & \Gate4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate4|q\(2),
	datac => \Gate4|q\(0),
	datad => \Gate4|q\(1),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X35_Y23_N4
\Gate1|Gate2|Gate8|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) = (!\Gate7|q\(2) & (\Gate7|q\(0) & \Gate7|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate7|q\(2),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(1),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_TM_ADDR(7),
	combout => \TM_ADDR~combout\(7));

-- Location: LCCOMB_X37_Y24_N16
\d3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \d3[1]~1_combout\ = (\TM_ADDR~combout\(7) & !\GR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TM_ADDR~combout\(7),
	datad => \GR_SEL~combout\,
	combout => \d3[1]~1_combout\);

-- Location: LCFF_X36_Y23_N17
\Gate6|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \d3[1]~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	sload => VCC,
	ena => \GR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate6|q\(1));

-- Location: LCCOMB_X36_Y23_N12
\Gate1|Gate2|Gate7|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3) = (!\Gate6|q\(2) & (\Gate6|q\(1) & \Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate6|q\(2),
	datac => \Gate6|q\(1),
	datad => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X36_Y23_N6
\Gate1|Gate2|Gate18|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate18|num1s[0]~0_combout\ = \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) $ (\Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate18|num1s[0]~0_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(6),
	combout => \EXT_PATTERN~combout\(6));

-- Location: LCCOMB_X37_Y24_N0
\P3[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P3[0]~2_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(6))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TM_ADDR~combout\(6),
	datac => \EXT_PATTERN~combout\(6),
	datad => \P_SEL~combout\,
	combout => \P3[0]~2_combout\);

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(8),
	combout => \EXT_PATTERN~combout\(8));

-- Location: LCCOMB_X37_Y24_N12
\P3[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P3[2]~0_combout\ = (\P_SEL~combout\ & ((\TM_ADDR~combout\(8)))) # (!\P_SEL~combout\ & (\EXT_PATTERN~combout\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EXT_PATTERN~combout\(8),
	datac => \TM_ADDR~combout\(8),
	datad => \P_SEL~combout\,
	combout => \P3[2]~0_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXT_PATTERN[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_EXT_PATTERN(7),
	combout => \EXT_PATTERN~combout\(7));

-- Location: LCCOMB_X37_Y24_N2
\P3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P3[1]~1_combout\ = (\P_SEL~combout\ & (\TM_ADDR~combout\(7))) # (!\P_SEL~combout\ & ((\EXT_PATTERN~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_SEL~combout\,
	datac => \TM_ADDR~combout\(7),
	datad => \EXT_PATTERN~combout\(7),
	combout => \P3[1]~1_combout\);

-- Location: LCCOMB_X35_Y22_N6
\Gate1|Gate2|Gate3|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) = (\P3[0]~2_combout\ & (!\P3[2]~0_combout\ & \P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P3[0]~2_combout\,
	datac => \P3[2]~0_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X36_Y24_N24
\Gate1|Gate2|Gate2|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) = (!\P2[2]~0_combout\ & (\P2[1]~1_combout\ & \P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X39_Y23_N28
\Gate1|Gate2|Gate4|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3) = (\P4[1]~1_combout\ & (!\P4[2]~0_combout\ & \P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4[1]~1_combout\,
	datac => \P4[2]~0_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X38_Y22_N12
\Gate1|Gate2|Gate12|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate12|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((!\Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)))) 
-- # (!\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)) # (\Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))))) # (!\Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & 
-- ((\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)) # (\Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))) # (!\Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & 
-- (\Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) & \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate12|num1s[1]~1_combout\);

-- Location: LCCOMB_X35_Y23_N10
\Gate1|Gate2|Gate6|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) = (!\Gate5|q\(2) & (\Gate5|q\(0) & \Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate5|q\(2),
	datac => \Gate5|q\(0),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X36_Y23_N0
\Gate1|Gate2|Gate18|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate18|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & ((!\Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3)) # (!\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3)))) 
-- # (!\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3)) # (\Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3)))))) # (!\Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3) & 
-- ((\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & ((\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3)) # (\Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3)))) # (!\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) & \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate18|num1s[1]~1_combout\);

-- Location: LCCOMB_X36_Y23_N18
\Gate1|Gate2|Gate18|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate18|num1s\(2) = (\Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3) & (\Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & (\Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) & \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	datab => \Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datad => \Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	combout => \Gate1|Gate2|Gate18|num1s\(2));

-- Location: LCCOMB_X37_Y23_N4
\Gate1|Gate2|Gate24|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate24|NgtM~0_combout\ = (\Gate1|Gate2|Gate12|num1s\(2) & (((\Gate1|Gate2|Gate12|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate18|num1s[1]~1_combout\)) # (!\Gate1|Gate2|Gate18|num1s\(2)))) # (!\Gate1|Gate2|Gate12|num1s\(2) & 
-- (\Gate1|Gate2|Gate12|num1s[1]~1_combout\ & (!\Gate1|Gate2|Gate18|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate18|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate12|num1s\(2),
	datab => \Gate1|Gate2|Gate12|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate18|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate18|num1s\(2),
	combout => \Gate1|Gate2|Gate24|NgtM~0_combout\);

-- Location: LCCOMB_X37_Y23_N18
\Gate1|Gate2|Gate24|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate24|NgtM~1_combout\ = (\Gate1|Gate2|Gate12|num1s\(2) & (\Gate1|Gate2|Gate18|num1s\(2) & (\Gate1|Gate2|Gate12|num1s[1]~1_combout\ $ (!\Gate1|Gate2|Gate18|num1s[1]~1_combout\)))) # (!\Gate1|Gate2|Gate12|num1s\(2) & 
-- (!\Gate1|Gate2|Gate18|num1s\(2) & (\Gate1|Gate2|Gate12|num1s[1]~1_combout\ $ (!\Gate1|Gate2|Gate18|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate12|num1s\(2),
	datab => \Gate1|Gate2|Gate12|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate18|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate18|num1s\(2),
	combout => \Gate1|Gate2|Gate24|NgtM~1_combout\);

-- Location: LCCOMB_X37_Y23_N16
\Gate1|Gate2|Gate24|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate24|min[0]~0_combout\ = (\Gate1|Gate2|Gate24|NgtM~0_combout\ & (((\Gate1|Gate2|Gate18|num1s[0]~0_combout\)))) # (!\Gate1|Gate2|Gate24|NgtM~0_combout\ & (\Gate1|Gate2|Gate12|num1s[0]~0_combout\ & ((\Gate1|Gate2|Gate18|num1s[0]~0_combout\) # 
-- (!\Gate1|Gate2|Gate24|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate12|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate18|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate24|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate24|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate24|min[0]~0_combout\);

-- Location: LCCOMB_X36_Y24_N0
\Gate1|Gate2|Gate2|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) = (!\P2[2]~0_combout\ & (\P2[1]~1_combout\ & !\P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X34_Y23_N28
\Gate1|Gate2|Gate4|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3) = (!\P4[2]~0_combout\ & (\P4[1]~1_combout\ & !\P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P4[2]~0_combout\,
	datac => \P4[1]~1_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X37_Y24_N30
\Gate1|Gate2|Gate3|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) = (!\P3[2]~0_combout\ & (!\P3[0]~2_combout\ & \P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datab => \P3[0]~2_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X36_Y24_N18
\Gate1|Gate2|Gate11|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate11|num1s\(2) = (\Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) & (\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & (\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3) & \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate11|num1s\(2));

-- Location: LCCOMB_X36_Y24_N22
\Gate1|Gate2|Gate11|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate11|num1s[0]~1_combout\ = \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3) $ (\Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate11|num1s[0]~1_combout\);

-- Location: LCCOMB_X37_Y23_N8
\Gate1|Gate2|Gate17|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate17|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & ((!\Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)) # (!\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3)))) 
-- # (!\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3)) # (\Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))))) # (!\Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) & 
-- ((\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & ((\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3)) # (\Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))) # (!\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate17|num1s[1]~0_combout\);

-- Location: LCCOMB_X37_Y23_N24
\Gate1|Gate2|Gate23|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate23|NgtM~0_combout\ = (\Gate1|Gate2|Gate11|num1s[1]~0_combout\ & (((\Gate1|Gate2|Gate11|num1s[0]~1_combout\ & !\Gate1|Gate2|Gate17|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate17|num1s[1]~0_combout\))) # 
-- (!\Gate1|Gate2|Gate11|num1s[1]~0_combout\ & (\Gate1|Gate2|Gate11|num1s[0]~1_combout\ & (!\Gate1|Gate2|Gate17|num1s[1]~0_combout\ & !\Gate1|Gate2|Gate17|num1s[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate11|num1s[1]~0_combout\,
	datab => \Gate1|Gate2|Gate11|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate17|num1s[1]~0_combout\,
	datad => \Gate1|Gate2|Gate17|num1s[0]~1_combout\,
	combout => \Gate1|Gate2|Gate23|NgtM~0_combout\);

-- Location: LCCOMB_X36_Y23_N30
\Gate1|Gate2|Gate7|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) = (!\Gate6|q\(2) & (\Gate6|q\(1) & !\Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate6|q\(2),
	datac => \Gate6|q\(1),
	datad => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X36_Y23_N22
\Gate1|Gate2|Gate17|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate17|num1s\(2) = (\Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & (\Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) & (\Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datab => \Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \Gate1|Gate2|Gate17|num1s\(2));

-- Location: LCCOMB_X37_Y23_N2
\Gate1|Gate2|Gate23|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate23|NgtM~1_combout\ = (\Gate1|Gate2|Gate11|num1s\(2) & ((\Gate1|Gate2|Gate23|NgtM~0_combout\) # (!\Gate1|Gate2|Gate17|num1s\(2)))) # (!\Gate1|Gate2|Gate11|num1s\(2) & (\Gate1|Gate2|Gate23|NgtM~0_combout\ & !\Gate1|Gate2|Gate17|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate11|num1s\(2),
	datac => \Gate1|Gate2|Gate23|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate17|num1s\(2),
	combout => \Gate1|Gate2|Gate23|NgtM~1_combout\);

-- Location: LCCOMB_X37_Y23_N26
\Gate1|Gate2|Gate28|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ = \Gate1|Gate2|Gate24|min[0]~0_combout\ $ (((\Gate1|Gate2|Gate23|NgtM~1_combout\ & ((\Gate1|Gate2|Gate17|num1s[0]~1_combout\))) # (!\Gate1|Gate2|Gate23|NgtM~1_combout\ & 
-- (\Gate1|Gate2|Gate11|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate11|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate17|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate24|min[0]~0_combout\,
	datad => \Gate1|Gate2|Gate23|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X38_Y22_N14
\Gate1|Gate2|Gate31|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ = \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ $ (\Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ $ (\Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	datad => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X38_Y22_N22
\Gate1|Gate3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux3~0_combout\ = (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & ((\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate1|Gate1|Gate5|num1s[0]~2_combout\ & !\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\)) # (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ 
-- & (\Gate1|Gate1|Gate5|num1s[0]~2_combout\ $ (\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datac => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datad => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate3|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y23_N6
\Gate1|Gate2|Gate24|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate24|NgtM~combout\ = (\Gate1|Gate2|Gate24|NgtM~0_combout\) # ((\Gate1|Gate2|Gate12|num1s[0]~0_combout\ & (!\Gate1|Gate2|Gate18|num1s[0]~0_combout\ & \Gate1|Gate2|Gate24|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate12|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate18|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate24|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate24|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate24|NgtM~combout\);

-- Location: LCCOMB_X37_Y23_N0
\Gate1|Gate2|Gate24|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate24|min[1]~1_combout\ = (\Gate1|Gate2|Gate24|NgtM~combout\ & ((\Gate1|Gate2|Gate18|num1s[1]~1_combout\))) # (!\Gate1|Gate2|Gate24|NgtM~combout\ & (\Gate1|Gate2|Gate12|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate12|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate18|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate24|NgtM~combout\,
	combout => \Gate1|Gate2|Gate24|min[1]~1_combout\);

-- Location: LCCOMB_X37_Y23_N14
\Gate1|Gate2|Gate23|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate23|min[1]~0_combout\ = (\Gate1|Gate2|Gate23|NgtM~1_combout\ & ((\Gate1|Gate2|Gate17|num1s[1]~0_combout\))) # (!\Gate1|Gate2|Gate23|NgtM~1_combout\ & (\Gate1|Gate2|Gate11|num1s[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate11|num1s[1]~0_combout\,
	datac => \Gate1|Gate2|Gate17|num1s[1]~0_combout\,
	datad => \Gate1|Gate2|Gate23|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate23|min[1]~0_combout\);

-- Location: LCCOMB_X38_Y23_N26
\Gate1|Gate2|Gate28|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ = (\Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ & ((\Gate1|Gate2|Gate24|min[1]~1_combout\) # (\Gate1|Gate2|Gate23|min[1]~0_combout\))) # (!\Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ & 
-- (\Gate1|Gate2|Gate24|min[1]~1_combout\ & \Gate1|Gate2|Gate23|min[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\,
	datac => \Gate1|Gate2|Gate24|min[1]~1_combout\,
	datad => \Gate1|Gate2|Gate23|min[1]~0_combout\,
	combout => \Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X37_Y23_N28
\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ = (\Gate6|q\(2) & (!\Gate6|q\(1) & !\Gate6|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate6|q\(2),
	datab => \Gate6|q\(1),
	datad => \Gate6|q\(0),
	combout => \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X34_Y23_N4
\Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate7|q\(1) & (!\Gate7|q\(0) & \Gate7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate7|q\(1),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(2),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X37_Y23_N10
\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate4|q\(1) & (\Gate4|q\(2) & !\Gate4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate4|q\(1),
	datac => \Gate4|q\(2),
	datad => \Gate4|q\(0),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X38_Y23_N24
\Gate1|Gate2|Gate19|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate19|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & ((!\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate19|num1s[1]~0_combout\);

-- Location: LCCOMB_X37_Y23_N20
\Gate1|Gate2|Gate19|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate19|num1s\(2) = (\Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & (\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate19|num1s\(2));

-- Location: LCCOMB_X36_Y24_N6
\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ = (\P2[2]~0_combout\ & (!\P2[1]~1_combout\ & !\P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X40_Y23_N18
\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ = (!\P1[1]~1_combout\ & (!\P1[0]~2_combout\ & \P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X38_Y24_N16
\Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ = (\P3[2]~0_combout\ & (!\P3[0]~2_combout\ & !\P3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3[2]~0_combout\,
	datac => \P3[0]~2_combout\,
	datad => \P3[1]~1_combout\,
	combout => \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X38_Y23_N22
\Gate1|Gate2|Gate13|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate13|num1s[0]~1_combout\ = \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate13|num1s[0]~1_combout\);

-- Location: LCCOMB_X35_Y23_N2
\Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ = (\Gate5|q\(2) & (!\Gate5|q\(0) & !\Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate5|q\(2),
	datac => \Gate5|q\(0),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X38_Y23_N12
\Gate1|Gate2|Gate19|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate19|num1s[0]~1_combout\ = \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate19|num1s[0]~1_combout\);

-- Location: LCCOMB_X38_Y23_N2
\Gate1|Gate2|Gate25|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate25|NgtM~0_combout\ = (\Gate1|Gate2|Gate13|num1s[1]~0_combout\ & (((\Gate1|Gate2|Gate13|num1s[0]~1_combout\ & !\Gate1|Gate2|Gate19|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate19|num1s[1]~0_combout\))) # 
-- (!\Gate1|Gate2|Gate13|num1s[1]~0_combout\ & (\Gate1|Gate2|Gate13|num1s[0]~1_combout\ & (!\Gate1|Gate2|Gate19|num1s[1]~0_combout\ & !\Gate1|Gate2|Gate19|num1s[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate13|num1s[1]~0_combout\,
	datab => \Gate1|Gate2|Gate13|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate19|num1s[1]~0_combout\,
	datad => \Gate1|Gate2|Gate19|num1s[0]~1_combout\,
	combout => \Gate1|Gate2|Gate25|NgtM~0_combout\);

-- Location: LCCOMB_X38_Y23_N8
\Gate1|Gate2|Gate25|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate25|NgtM~1_combout\ = (\Gate1|Gate2|Gate13|num1s\(2) & ((\Gate1|Gate2|Gate25|NgtM~0_combout\) # (!\Gate1|Gate2|Gate19|num1s\(2)))) # (!\Gate1|Gate2|Gate13|num1s\(2) & (!\Gate1|Gate2|Gate19|num1s\(2) & \Gate1|Gate2|Gate25|NgtM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate13|num1s\(2),
	datac => \Gate1|Gate2|Gate19|num1s\(2),
	datad => \Gate1|Gate2|Gate25|NgtM~0_combout\,
	combout => \Gate1|Gate2|Gate25|NgtM~1_combout\);

-- Location: LCCOMB_X38_Y23_N14
\Gate1|Gate2|Gate25|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate25|min[1]~0_combout\ = (\Gate1|Gate2|Gate25|NgtM~1_combout\ & ((\Gate1|Gate2|Gate19|num1s[1]~0_combout\))) # (!\Gate1|Gate2|Gate25|NgtM~1_combout\ & (\Gate1|Gate2|Gate13|num1s[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate13|num1s[1]~0_combout\,
	datac => \Gate1|Gate2|Gate19|num1s[1]~0_combout\,
	datad => \Gate1|Gate2|Gate25|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate25|min[1]~0_combout\);

-- Location: LCCOMB_X39_Y23_N4
\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ = (!\P4[1]~1_combout\ & (\P4[2]~0_combout\ & \P4[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4[1]~1_combout\,
	datac => \P4[2]~0_combout\,
	datad => \P4[0]~2_combout\,
	combout => \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X36_Y24_N28
\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ = (\P2[2]~0_combout\ & (!\P2[1]~1_combout\ & \P2[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P2[2]~0_combout\,
	datab => \P2[1]~1_combout\,
	datad => \P2[0]~2_combout\,
	combout => \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X40_Y23_N4
\Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ = (!\P1[1]~1_combout\ & (\P1[0]~2_combout\ & \P1[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1[1]~1_combout\,
	datac => \P1[0]~2_combout\,
	datad => \P1[2]~0_combout\,
	combout => \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X39_Y23_N22
\Gate1|Gate2|Gate14|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate14|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & ((!\Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate14|num1s[1]~1_combout\);

-- Location: LCCOMB_X35_Y23_N0
\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ = (\Gate5|q\(2) & (\Gate5|q\(0) & !\Gate5|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate5|q\(2),
	datac => \Gate5|q\(0),
	datad => \Gate5|q\(1),
	combout => \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X39_Y23_N20
\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ = (!\Gate4|q\(1) & (\Gate4|q\(2) & \Gate4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate4|q\(1),
	datac => \Gate4|q\(2),
	datad => \Gate4|q\(0),
	combout => \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X34_Y23_N2
\Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ = (!\Gate7|q\(1) & (\Gate7|q\(0) & \Gate7|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate7|q\(1),
	datac => \Gate7|q\(0),
	datad => \Gate7|q\(2),
	combout => \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X39_Y23_N8
\Gate1|Gate2|Gate20|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate20|num1s[1]~1_combout\ = (\Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((!\Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\) # 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))) # (!\Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\) 
-- # (\Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate20|num1s[1]~1_combout\);

-- Location: LCCOMB_X39_Y23_N26
\Gate1|Gate2|Gate20|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate20|num1s[0]~0_combout\ = \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate20|num1s[0]~0_combout\);

-- Location: LCCOMB_X39_Y23_N16
\Gate1|Gate2|Gate14|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate14|num1s\(2) = (\Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate14|num1s\(2));

-- Location: LCCOMB_X39_Y23_N18
\Gate1|Gate2|Gate20|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate20|num1s\(2) = (\Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate20|num1s\(2));

-- Location: LCCOMB_X39_Y23_N24
\Gate1|Gate2|Gate26|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate26|NgtM~0_combout\ = (\Gate1|Gate2|Gate14|num1s\(2) & (((\Gate1|Gate2|Gate14|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate20|num1s[1]~1_combout\)) # (!\Gate1|Gate2|Gate20|num1s\(2)))) # (!\Gate1|Gate2|Gate14|num1s\(2) & 
-- (\Gate1|Gate2|Gate14|num1s[1]~1_combout\ & (!\Gate1|Gate2|Gate20|num1s[1]~1_combout\ & !\Gate1|Gate2|Gate20|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate14|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate14|num1s\(2),
	datac => \Gate1|Gate2|Gate20|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate20|num1s\(2),
	combout => \Gate1|Gate2|Gate26|NgtM~0_combout\);

-- Location: LCCOMB_X39_Y23_N14
\Gate1|Gate2|Gate26|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate26|NgtM~1_combout\ = (\Gate1|Gate2|Gate14|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate20|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate14|num1s\(2) $ (!\Gate1|Gate2|Gate20|num1s\(2))))) # (!\Gate1|Gate2|Gate14|num1s[1]~1_combout\ & 
-- (!\Gate1|Gate2|Gate20|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate14|num1s\(2) $ (!\Gate1|Gate2|Gate20|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate14|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate14|num1s\(2),
	datac => \Gate1|Gate2|Gate20|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate20|num1s\(2),
	combout => \Gate1|Gate2|Gate26|NgtM~1_combout\);

-- Location: LCCOMB_X39_Y23_N12
\Gate1|Gate2|Gate26|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate26|NgtM~combout\ = (\Gate1|Gate2|Gate26|NgtM~0_combout\) # ((\Gate1|Gate2|Gate14|num1s[0]~0_combout\ & (!\Gate1|Gate2|Gate20|num1s[0]~0_combout\ & \Gate1|Gate2|Gate26|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate14|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate20|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate26|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate26|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate26|NgtM~combout\);

-- Location: LCCOMB_X39_Y23_N10
\Gate1|Gate2|Gate26|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate26|min[1]~1_combout\ = (\Gate1|Gate2|Gate26|NgtM~combout\ & ((\Gate1|Gate2|Gate20|num1s[1]~1_combout\))) # (!\Gate1|Gate2|Gate26|NgtM~combout\ & (\Gate1|Gate2|Gate14|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate14|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate20|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate26|NgtM~combout\,
	combout => \Gate1|Gate2|Gate26|min[1]~1_combout\);

-- Location: LCCOMB_X39_Y23_N30
\Gate1|Gate2|Gate14|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate14|num1s[0]~0_combout\ = \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Gate2|Gate14|num1s[0]~0_combout\);

-- Location: LCCOMB_X38_Y23_N30
\Gate1|Gate2|Gate26|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate26|min[0]~0_combout\ = (\Gate1|Gate2|Gate26|NgtM~0_combout\ & (\Gate1|Gate2|Gate20|num1s[0]~0_combout\)) # (!\Gate1|Gate2|Gate26|NgtM~0_combout\ & (\Gate1|Gate2|Gate14|num1s[0]~0_combout\ & ((\Gate1|Gate2|Gate20|num1s[0]~0_combout\) # 
-- (!\Gate1|Gate2|Gate26|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate20|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate14|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate26|NgtM~1_combout\,
	datad => \Gate1|Gate2|Gate26|NgtM~0_combout\,
	combout => \Gate1|Gate2|Gate26|min[0]~0_combout\);

-- Location: LCCOMB_X38_Y23_N28
\Gate1|Gate2|Gate29|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\ = (\Gate1|Gate2|Gate26|min[0]~0_combout\ & ((\Gate1|Gate2|Gate25|NgtM~1_combout\ & (\Gate1|Gate2|Gate19|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate25|NgtM~1_combout\ & 
-- ((\Gate1|Gate2|Gate13|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate19|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate13|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate1|Gate2|Gate26|min[0]~0_combout\,
	combout => \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X38_Y23_N4
\Gate1|Gate2|Gate29|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate29|auto_generated|op_1~3_combout\ = (\Gate1|Gate2|Gate25|min[1]~0_combout\ & ((\Gate1|Gate2|Gate26|min[1]~1_combout\) # (\Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))) # (!\Gate1|Gate2|Gate25|min[1]~0_combout\ & 
-- (\Gate1|Gate2|Gate26|min[1]~1_combout\ & \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate25|min[1]~0_combout\,
	datac => \Gate1|Gate2|Gate26|min[1]~1_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate2|Gate29|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X38_Y23_N16
\Gate1|Gate2|Gate29|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ = \Gate1|Gate2|Gate26|min[0]~0_combout\ $ (((\Gate1|Gate2|Gate25|NgtM~1_combout\ & (\Gate1|Gate2|Gate19|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate25|NgtM~1_combout\ & 
-- ((\Gate1|Gate2|Gate13|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate19|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate13|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate1|Gate2|Gate26|min[0]~0_combout\,
	combout => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y22_N4
\Gate1|Gate2|Gate31|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ = (\Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ & (\Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	datac => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X35_Y23_N14
\Gate1|Gate2|Gate22|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate22|NgtM~combout\ = (\Gate1|Gate2|Gate22|NgtM~0_combout\) # ((\Gate1|Gate2|Gate10|num1s[0]~0_combout\ & (!\Gate1|Gate2|Gate16|num1s[0]~0_combout\ & \Gate1|Gate2|Gate22|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate10|num1s[0]~0_combout\,
	datab => \Gate1|Gate2|Gate16|num1s[0]~0_combout\,
	datac => \Gate1|Gate2|Gate22|NgtM~0_combout\,
	datad => \Gate1|Gate2|Gate22|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate22|NgtM~combout\);

-- Location: LCCOMB_X36_Y23_N2
\Gate1|Gate2|Gate22|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate22|min[1]~1_combout\ = (\Gate1|Gate2|Gate22|NgtM~combout\ & ((\Gate1|Gate2|Gate16|num1s[1]~1_combout\))) # (!\Gate1|Gate2|Gate22|NgtM~combout\ & (\Gate1|Gate2|Gate10|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate10|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate16|num1s[1]~1_combout\,
	datad => \Gate1|Gate2|Gate22|NgtM~combout\,
	combout => \Gate1|Gate2|Gate22|min[1]~1_combout\);

-- Location: LCCOMB_X36_Y24_N4
\Gate1|Gate2|Gate9|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate9|num1s[1]~0_combout\ = (\Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) & ((\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & (!\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3) & !\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3))) # 
-- (!\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & ((!\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3)) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3)))))) # (!\Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) & 
-- ((\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & ((!\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3)) # (!\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3)))) # (!\Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & 
-- ((\Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3)) # (\Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datac => \Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	datad => \Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate1|Gate2|Gate9|num1s[1]~0_combout\);

-- Location: LCCOMB_X36_Y22_N30
\Gate1|Gate2|Gate21|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate21|min[1]~0_combout\ = (\Gate1|Gate2|Gate21|NgtM~1_combout\ & (\Gate1|Gate2|Gate15|num1s[1]~0_combout\)) # (!\Gate1|Gate2|Gate21|NgtM~1_combout\ & ((\Gate1|Gate2|Gate9|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate15|num1s[1]~0_combout\,
	datac => \Gate1|Gate2|Gate9|num1s[1]~0_combout\,
	datad => \Gate1|Gate2|Gate21|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate21|min[1]~0_combout\);

-- Location: LCCOMB_X36_Y22_N4
\Gate1|Gate2|Gate34|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ = (\Gate1|Gate2|Gate12|num1s\(2) & (\Gate1|Gate2|Gate18|num1s\(2) $ (((\Gate1|Gate2|Gate17|num1s\(2) & \Gate1|Gate2|Gate11|num1s\(2)))))) # (!\Gate1|Gate2|Gate12|num1s\(2) & (\Gate1|Gate2|Gate17|num1s\(2) 
-- & ((\Gate1|Gate2|Gate11|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate12|num1s\(2),
	datab => \Gate1|Gate2|Gate17|num1s\(2),
	datac => \Gate1|Gate2|Gate18|num1s\(2),
	datad => \Gate1|Gate2|Gate11|num1s\(2),
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\);

-- Location: LCCOMB_X36_Y22_N2
\Gate1|Gate2|Gate34|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\ = (\Gate1|Gate2|Gate13|num1s\(2) & (\Gate1|Gate2|Gate19|num1s\(2) $ (((\Gate1|Gate2|Gate14|num1s\(2) & \Gate1|Gate2|Gate20|num1s\(2)))))) # (!\Gate1|Gate2|Gate13|num1s\(2) & (\Gate1|Gate2|Gate14|num1s\(2) 
-- & ((\Gate1|Gate2|Gate20|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate13|num1s\(2),
	datab => \Gate1|Gate2|Gate14|num1s\(2),
	datac => \Gate1|Gate2|Gate19|num1s\(2),
	datad => \Gate1|Gate2|Gate20|num1s\(2),
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X36_Y22_N18
\Gate1|Gate2|Gate34|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\ = \Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ $ (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ $ (\Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ $ 
-- (\Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\,
	datab => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X37_Y22_N14
\Gate1|Gate2|Gate34|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ = \Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\ $ (((\Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ & ((\Gate1|Gate2|Gate22|min[1]~1_combout\) # (\Gate1|Gate2|Gate21|min[1]~0_combout\))) # 
-- (!\Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ & (\Gate1|Gate2|Gate22|min[1]~1_combout\ & \Gate1|Gate2|Gate21|min[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\,
	datab => \Gate1|Gate2|Gate22|min[1]~1_combout\,
	datac => \Gate1|Gate2|Gate21|min[1]~0_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\);

-- Location: LCCOMB_X37_Y22_N20
\Gate1|Gate2|Gate30|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\ = (\Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ & \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X38_Y23_N6
\Gate1|Gate2|Gate29|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ = \Gate1|Gate2|Gate25|min[1]~0_combout\ $ (\Gate1|Gate2|Gate26|min[1]~1_combout\ $ (\Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate25|min[1]~0_combout\,
	datac => \Gate1|Gate2|Gate26|min[1]~1_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X37_Y22_N8
\Gate1|Gate2|Gate34|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ = \Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ $ (((\Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ & ((\Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\) # 
-- (\Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\))) # (!\Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ & (\Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\ & \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\,
	datab => \Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\,
	datac => \Gate1|Gate2|Gate30|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X37_Y23_N12
\Gate1|Gate2|Gate28|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ = (\Gate1|Gate2|Gate24|min[0]~0_combout\ & ((\Gate1|Gate2|Gate23|NgtM~1_combout\ & ((\Gate1|Gate2|Gate17|num1s[0]~1_combout\))) # (!\Gate1|Gate2|Gate23|NgtM~1_combout\ & 
-- (\Gate1|Gate2|Gate11|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate11|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate17|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate24|min[0]~0_combout\,
	datad => \Gate1|Gate2|Gate23|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X37_Y23_N30
\Gate1|Gate2|Gate28|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ = \Gate1|Gate2|Gate24|min[1]~1_combout\ $ (\Gate1|Gate2|Gate23|min[1]~0_combout\ $ (\Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate24|min[1]~1_combout\,
	datac => \Gate1|Gate2|Gate23|min[1]~0_combout\,
	datad => \Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X38_Y23_N20
\Gate1|Gate2|Gate30|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ = \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ $ (\Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ $ (((\Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ & 
-- \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datab => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datac => \Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\,
	combout => \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y22_N22
\Gate1|Gate2|Gate34|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\ = \Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ $ (((\Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ & ((\Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\) # 
-- (\Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\))) # (!\Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ & (\Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ & \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datab => \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\,
	datad => \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\);

-- Location: LCCOMB_X37_Y22_N28
\Gate1|Gate2|Gate34|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ = \Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\ $ (\Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ $ (\Gate1|Gate2|Gate29|auto_generated|op_1~3_combout\ $ 
-- (\Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\,
	datab => \Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\,
	datac => \Gate1|Gate2|Gate29|auto_generated|op_1~3_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X36_Y22_N8
\Gate1|Gate2|Gate27|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ = (\Gate1|Gate2|Gate22|min[0]~0_combout\ & ((\Gate1|Gate2|Gate21|NgtM~1_combout\ & (\Gate1|Gate2|Gate15|num1s[0]~1_combout\)) # (!\Gate1|Gate2|Gate21|NgtM~1_combout\ & 
-- ((\Gate1|Gate2|Gate9|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate15|num1s[0]~1_combout\,
	datab => \Gate1|Gate2|Gate9|num1s[0]~1_combout\,
	datac => \Gate1|Gate2|Gate22|min[0]~0_combout\,
	datad => \Gate1|Gate2|Gate21|NgtM~1_combout\,
	combout => \Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y22_N24
\Gate1|Gate2|Gate27|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ = \Gate1|Gate2|Gate22|min[1]~1_combout\ $ (\Gate1|Gate2|Gate21|min[1]~0_combout\ $ (\Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate22|min[1]~1_combout\,
	datac => \Gate1|Gate2|Gate21|min[1]~0_combout\,
	datad => \Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X37_Y22_N2
\Gate1|Gate2|Gate31|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ = \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ $ (((\Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ & (\Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ 
-- (\Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	datac => \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y22_N16
\Gate1|Gate2|Gate34|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ = (\Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ $ (\Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\))) # 
-- (!\Gate1|Gate1|Gate5|num1s[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datab => \Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	datac => \Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y22_N10
\Gate1|Gate2|Gate34|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ = \Gate1|Gate1|Gate5|num1s[1]~1_combout\ $ (\Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ (\Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ $ 
-- (\Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X38_Y22_N24
\Gate1|Gate3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux1~0_combout\ = (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate1|Gate1|Gate5|num1s[0]~2_combout\ & (!\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ & \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datac => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate3|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y22_N30
\Gate1|Gate3|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux3~1_combout\ = (!\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\Gate1|Gate3|Mux3~0_combout\) # ((!\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & \Gate1|Gate3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datab => \Gate1|Gate3|Mux3~0_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datad => \Gate1|Gate3|Mux1~0_combout\,
	combout => \Gate1|Gate3|Mux3~1_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SR_LD~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SR_LD,
	combout => \SR_LD~combout\);

-- Location: LCFF_X37_Y22_N31
\Gate2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Gate1|Gate3|Mux3~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \SR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|q\(0));

-- Location: LCCOMB_X36_Y22_N12
\Gate1|Gate1|Gate5|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|Gate5|num1s[1]~1_combout\ = (\Gate1|Gate1|Gate3|AeqB~1_combout\ & ((\Gate1|Gate1|Gate1|AeqB~1_combout\ & (!\Gate1|Gate1|Gate4|AeqB~1_combout\ & !\Gate1|Gate1|Gate2|AeqB~1_combout\)) # (!\Gate1|Gate1|Gate1|AeqB~1_combout\ & 
-- ((!\Gate1|Gate1|Gate2|AeqB~1_combout\) # (!\Gate1|Gate1|Gate4|AeqB~1_combout\))))) # (!\Gate1|Gate1|Gate3|AeqB~1_combout\ & ((\Gate1|Gate1|Gate1|AeqB~1_combout\ & ((!\Gate1|Gate1|Gate2|AeqB~1_combout\) # (!\Gate1|Gate1|Gate4|AeqB~1_combout\))) # 
-- (!\Gate1|Gate1|Gate1|AeqB~1_combout\ & ((\Gate1|Gate1|Gate4|AeqB~1_combout\) # (\Gate1|Gate1|Gate2|AeqB~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate3|AeqB~1_combout\,
	datab => \Gate1|Gate1|Gate1|AeqB~1_combout\,
	datac => \Gate1|Gate1|Gate4|AeqB~1_combout\,
	datad => \Gate1|Gate1|Gate2|AeqB~1_combout\,
	combout => \Gate1|Gate1|Gate5|num1s[1]~1_combout\);

-- Location: LCCOMB_X37_Y22_N0
\Gate1|Gate3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux2~0_combout\ = (\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & ((\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\) # (\Gate1|Gate1|Gate5|num1s[0]~2_combout\ $ (\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\)))) # 
-- (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\Gate1|Gate1|Gate5|num1s[0]~2_combout\) # (\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datab => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \Gate1|Gate3|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y22_N26
\Gate1|Gate3|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux2~1_combout\ = (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & (\Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ & !\Gate1|Gate3|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate3|Mux2~0_combout\,
	combout => \Gate1|Gate3|Mux2~1_combout\);

-- Location: LCFF_X37_Y22_N27
\Gate2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Gate1|Gate3|Mux2~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \SR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|q\(1));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SR_SEL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SR_SEL,
	combout => \SR_SEL~combout\);

-- Location: LCCOMB_X38_Y22_N4
\i[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[1]~0_combout\ = (!\Gate1|Gate3|Mux2~0_combout\ & (\Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ & (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & !\SR_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate3|Mux2~0_combout\,
	datab => \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\,
	datac => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datad => \SR_SEL~combout\,
	combout => \i[1]~0_combout\);

-- Location: LCCOMB_X37_Y22_N12
\Gate1|Gate3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux0~0_combout\ = (\Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ & ((\Gate1|Gate1|Gate5|num1s[0]~2_combout\) # ((\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ & \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\)))) # 
-- (!\Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ & (((\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datab => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datac => \Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \Gate1|Gate3|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y22_N18
\Gate1|Gate3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux0~1_combout\ = (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & !\Gate1|Gate3|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datad => \Gate1|Gate3|Mux0~0_combout\,
	combout => \Gate1|Gate3|Mux0~1_combout\);

-- Location: LCFF_X37_Y22_N19
\Gate2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Gate1|Gate3|Mux0~1_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \SR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|q\(3));

-- Location: LCCOMB_X38_Y22_N0
\Gate3|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|AeqB~0_combout\ = (\i[3]~1_combout\ & ((\Gate2|q\(1) $ (\i[1]~0_combout\)) # (!\Gate2|q\(3)))) # (!\i[3]~1_combout\ & ((\Gate2|q\(3)) # (\Gate2|q\(1) $ (\i[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i[3]~1_combout\,
	datab => \Gate2|q\(1),
	datac => \i[1]~0_combout\,
	datad => \Gate2|q\(3),
	combout => \Gate3|AeqB~0_combout\);

-- Location: LCCOMB_X38_Y22_N16
\i[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[0]~2_combout\ = (\Gate1|Gate3|Mux3~1_combout\) # (\SR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|Gate3|Mux3~1_combout\,
	datad => \SR_SEL~combout\,
	combout => \i[0]~2_combout\);

-- Location: LCCOMB_X38_Y22_N30
\Gate1|Gate2|Gate31|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ = \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ $ (\Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ $ (\Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	combout => \Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X38_Y22_N28
\Gate1|Gate3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux1~1_combout\ = (\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate1|Gate1|Gate5|num1s[0]~2_combout\ & (\Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ $ (!\Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\)))) # 
-- (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ $ (((\Gate1|Gate1|Gate5|num1s[0]~2_combout\ & \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate1|Gate5|num1s[0]~2_combout\,
	datac => \Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datad => \Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\,
	combout => \Gate1|Gate3|Mux1~1_combout\);

-- Location: LCCOMB_X38_Y22_N8
\Gate1|Gate3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|Mux1~2_combout\ = (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & ((\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\Gate1|Gate3|Mux1~0_combout\))) # (!\Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & (\Gate1|Gate3|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datab => \Gate1|Gate3|Mux1~1_combout\,
	datac => \Gate1|Gate3|Mux1~0_combout\,
	datad => \Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \Gate1|Gate3|Mux1~2_combout\);

-- Location: LCFF_X38_Y22_N9
\Gate2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Gate1|Gate3|Mux1~2_combout\,
	aclr => \clr~clkctrl_outclk\,
	ena => \SR_LD~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|q\(2));

-- Location: LCCOMB_X38_Y22_N26
\Gate3|SYNTHESIZED_WIRE_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|SYNTHESIZED_WIRE_2~0_combout\ = \Gate2|q\(2) $ (((\Gate1|Gate3|Mux1~2_combout\ & !\SR_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|q\(2),
	datac => \Gate1|Gate3|Mux1~2_combout\,
	datad => \SR_SEL~combout\,
	combout => \Gate3|SYNTHESIZED_WIRE_2~0_combout\);

-- Location: LCCOMB_X38_Y22_N18
\Gate3|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|AeqB~combout\ = (\Gate3|AeqB~0_combout\) # ((\Gate3|SYNTHESIZED_WIRE_2~0_combout\) # (\Gate2|q\(0) $ (\i[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|q\(0),
	datab => \Gate3|AeqB~0_combout\,
	datac => \i[0]~2_combout\,
	datad => \Gate3|SYNTHESIZED_WIRE_2~0_combout\,
	combout => \Gate3|AeqB~combout\);

-- Location: LCCOMB_X38_Y22_N20
\i[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[2]~3_combout\ = (\Gate1|Gate3|Mux1~2_combout\ & !\SR_SEL~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|Gate3|Mux1~2_combout\,
	datad => \SR_SEL~combout\,
	combout => \i[2]~3_combout\);

-- Location: LCCOMB_X38_Y22_N10
\i[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i[3]~1_combout\ = (!\Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate1|Gate3|Mux0~0_combout\ & (\Gate1|Gate1|Gate5|num1s[2]~0_combout\ & !\SR_SEL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \Gate1|Gate3|Mux0~0_combout\,
	datac => \Gate1|Gate1|Gate5|num1s[2]~0_combout\,
	datad => \SR_SEL~combout\,
	combout => \i[3]~1_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(0));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(1));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(2));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(3));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(4));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(5));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(6));

-- Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(7));

-- Location: PIN_W5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(8));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(9));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(10));

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_G(11));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SC_CMP~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Gate3|ALT_INV_AeqB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SC_CMP);

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Gate2|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(0));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Gate2|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(1));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Gate2|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(2));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Gate2|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(3));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\U[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_U(0));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\U[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_U(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\U[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_U(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\U[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_U(3));
END structure;


