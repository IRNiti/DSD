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

-- DATE "12/06/2015 12:25:17"

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

ENTITY 	MASTERMIND IS
    PORT (
	clk : IN std_logic;
	P_generated : IN std_logic;
	Start : IN std_logic;
	Ready : IN std_logic;
	switch_LED : IN std_logic;
	mode : IN std_logic;
	sw : IN std_logic_vector(3 DOWNTO 0);
	modify_G : IN std_logic;
	input1 : IN std_logic_vector(2 DOWNTO 0);
	input2 : IN std_logic_vector(2 DOWNTO 0);
	segment1 : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0);
	segment4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MASTERMIND;

-- Design Ports Information
-- P_generated	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch_LED	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modify_G	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- segment1[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[2]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[3]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[4]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[5]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[6]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[0]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[1]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[2]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[3]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[4]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[5]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[6]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[0]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[2]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[4]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[5]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[6]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[0]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[2]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[3]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[4]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[5]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[6]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- input1[0]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input1[1]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input1[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input2[0]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input2[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- input2[2]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ready	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF MASTERMIND IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_P_generated : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Ready : std_logic;
SIGNAL ww_switch_LED : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_sw : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_modify_G : std_logic;
SIGNAL ww_input1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_input2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Start~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Selector15~0_combout\ : std_logic;
SIGNAL \Gate2|Selector17~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \Gate1|Add1~0_combout\ : std_logic;
SIGNAL \Gate1|Add2~0_combout\ : std_logic;
SIGNAL \Gate2|y_present.H~regout\ : std_logic;
SIGNAL \Gate2|y_present.I~regout\ : std_logic;
SIGNAL \Gate2|Selector7~0_combout\ : std_logic;
SIGNAL \Gate2|Selector2~1_combout\ : std_logic;
SIGNAL \Gate2|Selector2~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux2~1_combout\ : std_logic;
SIGNAL \Gate2|Selector8~0_combout\ : std_logic;
SIGNAL \Gate2|Selector9~0_combout\ : std_logic;
SIGNAL \Gate2|Selector19~1_combout\ : std_logic;
SIGNAL \Gate2|Selector19~2_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \Ready~combout\ : std_logic;
SIGNAL \Gate2|Selector5~0_combout\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \Start~clkctrl_outclk\ : std_logic;
SIGNAL \Gate2|y_present.E~regout\ : std_logic;
SIGNAL \Gate1|TM_ADDR1~5_combout\ : std_logic;
SIGNAL \Gate2|Selector17~5_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR2~6_combout\ : std_logic;
SIGNAL \Gate2|Selector12~0_combout\ : std_logic;
SIGNAL \Gate2|Selector12~1_combout\ : std_logic;
SIGNAL \Gate2|Selector17~3_combout\ : std_logic;
SIGNAL \Gate2|Selector12~2_combout\ : std_logic;
SIGNAL \Gate2|TC_EN~regout\ : std_logic;
SIGNAL \Gate1|TM_ADDR1[0]~2_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR2[2]~8_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR2~9_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR2~7_combout\ : std_logic;
SIGNAL \Gate3|d2[2]~1_combout\ : std_logic;
SIGNAL \Gate3|d2[1]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate2|AeqB~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ : std_logic;
SIGNAL \Gate3|d1[1]~1_combout\ : std_logic;
SIGNAL \Gate3|d1[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate1|AeqB~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ : std_logic;
SIGNAL \Gate1|Equal3~1_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR3~2_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR3[0]~1_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR3~0_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR3~3_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR4[0]~1_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR4~3_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR4[2]~2_combout\ : std_logic;
SIGNAL \Gate3|d4[2]~1_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR4~0_combout\ : std_logic;
SIGNAL \Gate3|d4[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate4|AeqB~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|d3[0]~0_combout\ : std_logic;
SIGNAL \Gate3|d3[2]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|d2[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|d4[1]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ : std_logic;
SIGNAL \Gate3|d3[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate1|Equal3~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux2~0_combout\ : std_logic;
SIGNAL \Gate3|i[1]~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux3~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux1~1_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux3~1_combout\ : std_logic;
SIGNAL \Gate2|Selector3~0_combout\ : std_logic;
SIGNAL \Gate2|y_present.C~regout\ : std_logic;
SIGNAL \Gate2|Selector19~0_combout\ : std_logic;
SIGNAL \Gate2|Selector19~3_combout\ : std_logic;
SIGNAL \Gate2|SR_LD~regout\ : std_logic;
SIGNAL \Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux0~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux0~2_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate3|AeqB~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux0~1_combout\ : std_logic;
SIGNAL \Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0_combout\ : std_logic;
SIGNAL \Gate3|ScoreComparator|AeqB~0_combout\ : std_logic;
SIGNAL \Gate2|Selector7~1_combout\ : std_logic;
SIGNAL \Gate2|y_present.G~regout\ : std_logic;
SIGNAL \Gate2|Selector10~0_combout\ : std_logic;
SIGNAL \Gate2|y_present.J~regout\ : std_logic;
SIGNAL \Gate2|Selector2~0_combout\ : std_logic;
SIGNAL \Gate2|Selector2~3_combout\ : std_logic;
SIGNAL \Gate2|y_present.B~regout\ : std_logic;
SIGNAL \Gate2|Selector17~1_combout\ : std_logic;
SIGNAL \Gate2|Selector17~2_combout\ : std_logic;
SIGNAL \Gate2|Selector17~4_combout\ : std_logic;
SIGNAL \Gate2|GR_LD~regout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux1~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate3|Mux1~2_combout\ : std_logic;
SIGNAL \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\ : std_logic;
SIGNAL \Gate2|Selector6~0_combout\ : std_logic;
SIGNAL \Gate2|y_present.F~regout\ : std_logic;
SIGNAL \Gate2|Selector1~0_combout\ : std_logic;
SIGNAL \Gate2|Selector1~1_combout\ : std_logic;
SIGNAL \Gate2|y_present.A~regout\ : std_logic;
SIGNAL \Gate2|Selector11~1_combout\ : std_logic;
SIGNAL \Gate2|Selector11~0_combout\ : std_logic;
SIGNAL \Gate2|Selector11~2_combout\ : std_logic;
SIGNAL \Gate2|Selector11~3_combout\ : std_logic;
SIGNAL \Gate2|TC_RST~regout\ : std_logic;
SIGNAL \Gate1|TM_ADDR1~4_combout\ : std_logic;
SIGNAL \Gate1|TM_ADDR1~3_combout\ : std_logic;
SIGNAL \Gate1|Equal2~0_combout\ : std_logic;
SIGNAL \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ : std_logic;
SIGNAL \Gate1|last~2_combout\ : std_logic;
SIGNAL \Gate1|last~regout\ : std_logic;
SIGNAL \Gate2|Selector4~2_combout\ : std_logic;
SIGNAL \Gate2|Selector4~3_combout\ : std_logic;
SIGNAL \Gate2|y_present.D~regout\ : std_logic;
SIGNAL \Gate2|Selector15~1_combout\ : std_logic;
SIGNAL \Gate2|GR_SEL~regout\ : std_logic;
SIGNAL \Gate3|d1[2]~2_combout\ : std_logic;
SIGNAL \seg1[2]~2_combout\ : std_logic;
SIGNAL \seg1[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Display~0_combout\ : std_logic;
SIGNAL \Gate2|Display~regout\ : std_logic;
SIGNAL \seg1[0]~0_combout\ : std_logic;
SIGNAL \Display1|Mux6~0_combout\ : std_logic;
SIGNAL \Display1|Mux5~0_combout\ : std_logic;
SIGNAL \Display1|Mux4~0_combout\ : std_logic;
SIGNAL \Display1|Mux3~0_combout\ : std_logic;
SIGNAL \Display1|Mux2~0_combout\ : std_logic;
SIGNAL \Display1|Mux1~0_combout\ : std_logic;
SIGNAL \Display1|Mux0~0_combout\ : std_logic;
SIGNAL \seg2[0]~0_combout\ : std_logic;
SIGNAL \seg2[2]~1_combout\ : std_logic;
SIGNAL \seg2[1]~2_combout\ : std_logic;
SIGNAL \Display2|Mux6~0_combout\ : std_logic;
SIGNAL \Display2|Mux5~0_combout\ : std_logic;
SIGNAL \Display2|Mux4~0_combout\ : std_logic;
SIGNAL \Display2|Mux3~0_combout\ : std_logic;
SIGNAL \Display2|Mux2~0_combout\ : std_logic;
SIGNAL \Display2|Mux1~0_combout\ : std_logic;
SIGNAL \Display2|Mux0~0_combout\ : std_logic;
SIGNAL \seg3[2]~2_combout\ : std_logic;
SIGNAL \seg3[1]~1_combout\ : std_logic;
SIGNAL \seg3[0]~0_combout\ : std_logic;
SIGNAL \Display3|Mux6~0_combout\ : std_logic;
SIGNAL \Display3|Mux5~0_combout\ : std_logic;
SIGNAL \Display3|Mux4~0_combout\ : std_logic;
SIGNAL \Display3|Mux3~0_combout\ : std_logic;
SIGNAL \Display3|Mux2~0_combout\ : std_logic;
SIGNAL \Display3|Mux1~0_combout\ : std_logic;
SIGNAL \Display3|Mux0~0_combout\ : std_logic;
SIGNAL \seg4[1]~2_combout\ : std_logic;
SIGNAL \seg4[0]~0_combout\ : std_logic;
SIGNAL \seg4[2]~1_combout\ : std_logic;
SIGNAL \Display4|Mux6~0_combout\ : std_logic;
SIGNAL \Display4|Mux5~0_combout\ : std_logic;
SIGNAL \Display4|Mux4~0_combout\ : std_logic;
SIGNAL \Display4|Mux3~0_combout\ : std_logic;
SIGNAL \Display4|Mux2~0_combout\ : std_logic;
SIGNAL \Display4|Mux1~0_combout\ : std_logic;
SIGNAL \Display4|Mux0~0_combout\ : std_logic;
SIGNAL \input2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \input1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|GuessRegister2|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|GuessRegister3|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|GuessRegister4|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate10|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate11|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate12|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate13|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate16|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate17|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate18|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate19|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate20|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|TM_ADDR4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|TM_ADDR3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|TM_ADDR2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|TM_ADDR1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|GuessRegister1|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate1|Gate5|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate3|ScoreRegister|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Display3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Display3|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Display1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Start~clkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_P_generated <= P_generated;
ww_Start <= Start;
ww_Ready <= Ready;
ww_switch_LED <= switch_LED;
ww_mode <= mode;
ww_sw <= sw;
ww_modify_G <= modify_G;
ww_input1 <= input1;
ww_input2 <= input2;
segment1 <= ww_segment1;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
segment4 <= ww_segment4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\Start~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Start~combout\);
\Display3|ALT_INV_Mux1~0_combout\ <= NOT \Display3|Mux1~0_combout\;
\Display3|ALT_INV_Mux2~0_combout\ <= NOT \Display3|Mux2~0_combout\;
\Display3|ALT_INV_Mux3~0_combout\ <= NOT \Display3|Mux3~0_combout\;
\Display3|ALT_INV_Mux4~0_combout\ <= NOT \Display3|Mux4~0_combout\;
\Display3|ALT_INV_Mux5~0_combout\ <= NOT \Display3|Mux5~0_combout\;
\Display3|ALT_INV_Mux6~0_combout\ <= NOT \Display3|Mux6~0_combout\;
\Display1|ALT_INV_Mux1~0_combout\ <= NOT \Display1|Mux1~0_combout\;
\Display1|ALT_INV_Mux2~0_combout\ <= NOT \Display1|Mux2~0_combout\;
\Display1|ALT_INV_Mux3~0_combout\ <= NOT \Display1|Mux3~0_combout\;
\Display1|ALT_INV_Mux4~0_combout\ <= NOT \Display1|Mux4~0_combout\;
\Display1|ALT_INV_Mux5~0_combout\ <= NOT \Display1|Mux5~0_combout\;
\Display1|ALT_INV_Mux6~0_combout\ <= NOT \Display1|Mux6~0_combout\;
\ALT_INV_Start~clkctrl_outclk\ <= NOT \Start~clkctrl_outclk\;

-- Location: LCCOMB_X35_Y12_N4
\Gate2|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector15~0_combout\ = (\Ready~combout\ & (\Gate1|last~regout\ & (\Gate2|y_present.C~regout\))) # (!\Ready~combout\ & ((\Gate2|y_present.D~regout\) # ((\Gate1|last~regout\ & \Gate2|y_present.C~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ready~combout\,
	datab => \Gate1|last~regout\,
	datac => \Gate2|y_present.C~regout\,
	datad => \Gate2|y_present.D~regout\,
	combout => \Gate2|Selector15~0_combout\);

-- Location: LCCOMB_X35_Y12_N10
\Gate2|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~0_combout\ = (\Gate2|GR_LD~regout\ & ((\Gate2|y_present.C~regout\) # ((\Gate2|y_present.G~regout\)))) # (!\Gate2|GR_LD~regout\ & (\Gate1|last~regout\ & ((\Gate2|y_present.C~regout\) # (\Gate2|y_present.G~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datab => \Gate2|y_present.C~regout\,
	datac => \Gate2|y_present.G~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector17~0_combout\);

-- Location: LCFF_X34_Y14_N31
\Gate3|ScoreRegister|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|ComputeScore|Gate3|Mux1~2_combout\,
	ena => \Gate2|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|ScoreRegister|q\(2));

-- Location: LCCOMB_X33_Y14_N18
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3) = (\Gate3|GuessRegister1|q\(1) & (\Gate3|GuessRegister1|q\(0) & !\Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(1),
	datac => \Gate3|GuessRegister1|q\(0),
	datad => \Gate3|GuessRegister1|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X34_Y13_N16
\Gate3|ComputeScore|Gate2|Gate18|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate18|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3) & (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) & (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3) & 
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate18|num1s\(2));

-- Location: LCCOMB_X33_Y14_N16
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3) = (!\Gate3|GuessRegister3|q\(2) & (\Gate3|GuessRegister3|q\(1) & !\Gate3|GuessRegister3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(2),
	datac => \Gate3|GuessRegister3|q\(1),
	datad => \Gate3|GuessRegister3|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X32_Y13_N12
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3) = (!\Gate1|TM_ADDR3\(2) & (\Gate1|TM_ADDR3\(1) & !\Gate1|TM_ADDR3\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(2),
	datac => \Gate1|TM_ADDR3\(1),
	datad => \Gate1|TM_ADDR3\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X33_Y13_N8
\Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3) $ (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) $ (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\);

-- Location: LCCOMB_X33_Y14_N4
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ = (\Gate3|GuessRegister3|q\(0) & (!\Gate3|GuessRegister3|q\(1) & \Gate3|GuessRegister3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(0),
	datac => \Gate3|GuessRegister3|q\(1),
	datad => \Gate3|GuessRegister3|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X32_Y14_N10
\Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- ((!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\);

-- Location: LCCOMB_X30_Y14_N20
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate3|GuessRegister2|q\(1) & (\Gate3|GuessRegister2|q\(2) & !\Gate3|GuessRegister2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister2|q\(1),
	datac => \Gate3|GuessRegister2|q\(2),
	datad => \Gate3|GuessRegister2|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N6
\Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\);

-- Location: LCCOMB_X31_Y14_N20
\Gate3|ComputeScore|Gate2|Gate19|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate19|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate19|num1s\(2));

-- Location: LCCOMB_X32_Y14_N22
\Gate3|ComputeScore|Gate2|Gate26|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\);

-- Location: LCCOMB_X33_Y14_N12
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ = (\Gate3|GuessRegister1|q\(0) & (!\Gate3|GuessRegister1|q\(2) & !\Gate3|GuessRegister1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(0),
	datac => \Gate3|GuessRegister1|q\(2),
	datad => \Gate3|GuessRegister1|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1\(0) & !\Gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate1|TM_ADDR1\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X33_Y14_N24
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3) = (\Gate3|GuessRegister3|q\(0)) # ((\Gate3|GuessRegister3|q\(1)) # (\Gate3|GuessRegister3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(0),
	datac => \Gate3|GuessRegister3|q\(1),
	datad => \Gate3|GuessRegister3|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X32_Y14_N30
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3) = (\Gate1|TM_ADDR2\(0)) # ((\Gate1|TM_ADDR2\(1)) # (\Gate1|TM_ADDR2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(0),
	datab => \Gate1|TM_ADDR2\(1),
	datac => \Gate1|TM_ADDR2\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X37_Y14_N16
\Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3) $ (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) $ (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\);

-- Location: LCCOMB_X37_Y14_N10
\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3) & ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) & (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3) & 
-- !\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3))) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3) & ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) & 
-- ((!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3)) # (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3)) # (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\);

-- Location: LCCOMB_X36_Y14_N4
\Gate3|ComputeScore|Gate2|Gate21|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\);

-- Location: LCCOMB_X38_Y14_N12
\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ $ (\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ $ (\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ $ (\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\,
	datac => \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\,
	datad => \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\);

-- Location: LCCOMB_X36_Y14_N26
\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3_combout\ = (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X37_Y14_N22
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2_combout\ = (\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate10|num1s\(2) $ (((\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\) # 
-- (\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) & ((\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\) # ((\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate16|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate10|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X36_Y14_N24
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3_combout\ = (\Gate3|ComputeScore|Gate2|Gate20|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate13|num1s\(2) & 
-- \Gate3|ComputeScore|Gate2|Gate19|num1s\(2)))))) # (!\Gate3|ComputeScore|Gate2|Gate20|num1s\(2) & (((\Gate3|ComputeScore|Gate2|Gate13|num1s\(2) & \Gate3|ComputeScore|Gate2|Gate19|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate20|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate13|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate19|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X33_Y13_N26
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4_combout\ = (\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate17|num1s\(2) $ (((\Gate3|ComputeScore|Gate2|Gate18|num1s\(2) & \Gate3|ComputeScore|Gate2|Gate12|num1s\(2)))))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) & (((\Gate3|ComputeScore|Gate2|Gate18|num1s\(2) & \Gate3|ComputeScore|Gate2|Gate12|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate11|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate17|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate18|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate12|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X36_Y14_N10
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5_combout\ = \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3_combout\ $ (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4_combout\ $ (\Gate3|ComputeScore|Gate1|Gate5|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~3_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~2_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~4_combout\,
	datad => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5_combout\);

-- Location: LCFF_X38_Y14_N17
\Gate3|ScoreRegister|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|ComputeScore|Gate3|Mux2~1_combout\,
	ena => \Gate2|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|ScoreRegister|q\(1));

-- Location: LCCOMB_X30_Y14_N16
\Gate1|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Add1~0_combout\ = \Gate1|TM_ADDR2\(2) $ (((\Gate1|TM_ADDR2\(0) & \Gate1|TM_ADDR2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(2),
	datab => \Gate1|TM_ADDR2\(0),
	datac => \Gate1|TM_ADDR2\(1),
	combout => \Gate1|Add1~0_combout\);

-- Location: LCCOMB_X31_Y13_N10
\Gate1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Add2~0_combout\ = \Gate1|TM_ADDR3\(2) $ (((\Gate1|TM_ADDR3\(0) & \Gate1|TM_ADDR3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(2),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(1),
	combout => \Gate1|Add2~0_combout\);

-- Location: LCFF_X34_Y14_N15
\Gate2|y_present.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector8~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.H~regout\);

-- Location: LCFF_X34_Y14_N29
\Gate2|y_present.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector9~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.I~regout\);

-- Location: LCCOMB_X34_Y12_N28
\Gate2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector7~0_combout\ = (!\Gate2|y_present.H~regout\ & !\Gate2|y_present.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.H~regout\,
	datac => \Gate2|y_present.I~regout\,
	combout => \Gate2|Selector7~0_combout\);

-- Location: LCCOMB_X34_Y12_N12
\Gate2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector2~1_combout\ = (!\Gate2|y_present.I~regout\ & (!\Gate2|y_present.H~regout\ & ((!\Gate2|y_present.C~regout\) # (!\Gate1|last~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.I~regout\,
	datab => \Gate1|last~regout\,
	datac => \Gate2|y_present.H~regout\,
	datad => \Gate2|y_present.C~regout\,
	combout => \Gate2|Selector2~1_combout\);

-- Location: LCCOMB_X34_Y12_N6
\Gate2|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector2~2_combout\ = (\Gate2|Selector2~1_combout\ & (!\Gate2|y_present.D~regout\ & (!\Gate2|y_present.B~regout\ & !\Gate2|y_present.E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector2~1_combout\,
	datab => \Gate2|y_present.D~regout\,
	datac => \Gate2|y_present.B~regout\,
	datad => \Gate2|y_present.E~regout\,
	combout => \Gate2|Selector2~2_combout\);

-- Location: LCCOMB_X38_Y14_N16
\Gate3|ComputeScore|Gate3|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux2~1_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s\(2) & (!\Gate3|ComputeScore|Gate3|Mux2~0_combout\ & \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	datac => \Gate3|ComputeScore|Gate3|Mux2~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux2~1_combout\);

-- Location: LCCOMB_X34_Y14_N14
\Gate2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector8~0_combout\ = (!\Gate1|last~regout\ & (\Gate2|y_present.G~regout\ & (!\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\ & !\Gate3|ScoreComparator|AeqB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|last~regout\,
	datab => \Gate2|y_present.G~regout\,
	datac => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\,
	datad => \Gate3|ScoreComparator|AeqB~0_combout\,
	combout => \Gate2|Selector8~0_combout\);

-- Location: LCCOMB_X34_Y14_N28
\Gate2|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector9~0_combout\ = (!\Gate1|last~regout\ & (\Gate2|y_present.G~regout\ & ((\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\) # (\Gate3|ScoreComparator|AeqB~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|last~regout\,
	datab => \Gate2|y_present.G~regout\,
	datac => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\,
	datad => \Gate3|ScoreComparator|AeqB~0_combout\,
	combout => \Gate2|Selector9~0_combout\);

-- Location: LCCOMB_X34_Y12_N20
\Gate2|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector19~1_combout\ = (\Gate2|y_present.D~regout\ & ((\Ready~combout\) # ((\Gate2|SR_LD~regout\)))) # (!\Gate2|y_present.D~regout\ & (((!\Gate2|y_present.A~regout\ & \Gate2|SR_LD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ready~combout\,
	datab => \Gate2|y_present.A~regout\,
	datac => \Gate2|y_present.D~regout\,
	datad => \Gate2|SR_LD~regout\,
	combout => \Gate2|Selector19~1_combout\);

-- Location: LCCOMB_X34_Y12_N2
\Gate2|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector19~2_combout\ = (\Gate2|Selector19~1_combout\) # ((\Gate2|SR_LD~regout\ & ((\Gate2|y_present.B~regout\) # (\Gate2|y_present.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.B~regout\,
	datab => \Gate2|y_present.F~regout\,
	datac => \Gate2|Selector19~1_combout\,
	datad => \Gate2|SR_LD~regout\,
	combout => \Gate2|Selector19~2_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Ready~I\ : cycloneii_io
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
	padio => ww_Ready,
	combout => \Ready~combout\);

-- Location: LCCOMB_X34_Y12_N22
\Gate2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector5~0_combout\ = (\Gate2|y_present.D~regout\ & \Ready~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate2|y_present.D~regout\,
	datad => \Ready~combout\,
	combout => \Gate2|Selector5~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Start~I\ : cycloneii_io
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
	padio => ww_Start,
	combout => \Start~combout\);

-- Location: CLKCTRL_G1
\Start~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Start~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Start~clkctrl_outclk\);

-- Location: LCFF_X34_Y12_N23
\Gate2|y_present.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector5~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.E~regout\);

-- Location: LCCOMB_X33_Y12_N24
\Gate1|TM_ADDR1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR1~5_combout\ = ((!\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1\(2) & \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\))) # (!\Gate1|TM_ADDR1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(1),
	datab => \Gate1|TM_ADDR1\(2),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR1~5_combout\);

-- Location: LCCOMB_X34_Y12_N18
\Gate2|Selector17~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~5_combout\ = (\Gate2|y_present.J~regout\) # (\Gate2|y_present.E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate2|y_present.J~regout\,
	datad => \Gate2|y_present.E~regout\,
	combout => \Gate2|Selector17~5_combout\);

-- Location: LCCOMB_X33_Y14_N28
\Gate1|TM_ADDR2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR2~6_combout\ = ((\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Equal2~0_combout\ & \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\))) # (!\Gate1|TM_ADDR2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(0),
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Equal2~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR2~6_combout\);

-- Location: LCCOMB_X35_Y12_N30
\Gate2|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector12~0_combout\ = (\Gate2|TC_EN~regout\ & ((\Gate1|last~regout\) # (!\Gate2|y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|TC_EN~regout\,
	datac => \Gate2|y_present.G~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector12~0_combout\);

-- Location: LCCOMB_X34_Y12_N4
\Gate2|Selector12~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector12~1_combout\ = (!\Gate2|y_present.C~regout\ & (\Gate2|y_present.A~regout\ & (!\Gate2|y_present.D~regout\ & !\Gate2|y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.C~regout\,
	datab => \Gate2|y_present.A~regout\,
	datac => \Gate2|y_present.D~regout\,
	datad => \Gate2|y_present.G~regout\,
	combout => \Gate2|Selector12~1_combout\);

-- Location: LCCOMB_X34_Y14_N0
\Gate2|Selector17~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~3_combout\ = (!\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\ & (!\Gate3|ScoreComparator|AeqB~0_combout\ & ((\Gate2|y_present.E~regout\) # (\Gate2|y_present.J~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.E~regout\,
	datab => \Gate2|y_present.J~regout\,
	datac => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\,
	datad => \Gate3|ScoreComparator|AeqB~0_combout\,
	combout => \Gate2|Selector17~3_combout\);

-- Location: LCCOMB_X34_Y14_N12
\Gate2|Selector12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector12~2_combout\ = (\Gate2|Selector12~0_combout\) # ((!\Gate2|y_present.F~regout\ & (\Gate2|Selector12~1_combout\ & !\Gate2|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.F~regout\,
	datab => \Gate2|Selector12~0_combout\,
	datac => \Gate2|Selector12~1_combout\,
	datad => \Gate2|Selector17~3_combout\,
	combout => \Gate2|Selector12~2_combout\);

-- Location: LCFF_X34_Y14_N13
\Gate2|TC_EN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector12~2_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|TC_EN~regout\);

-- Location: LCCOMB_X35_Y12_N16
\Gate1|TM_ADDR1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR1[0]~2_combout\ = (!\Gate2|TC_RST~regout\ & (!\Gate1|last~regout\ & \Gate2|TC_EN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|TC_RST~regout\,
	datab => \Gate1|last~regout\,
	datac => \Gate2|TC_EN~regout\,
	combout => \Gate1|TM_ADDR1[0]~2_combout\);

-- Location: LCCOMB_X33_Y12_N18
\Gate1|TM_ADDR2[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR2[2]~8_combout\ = (!\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1[0]~2_combout\ & (\Gate1|TM_ADDR1\(2) & \Gate1|TM_ADDR1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(1),
	datab => \Gate1|TM_ADDR1[0]~2_combout\,
	datac => \Gate1|TM_ADDR1\(2),
	datad => \Gate1|TM_ADDR1\(0),
	combout => \Gate1|TM_ADDR2[2]~8_combout\);

-- Location: LCFF_X32_Y14_N21
\Gate1|TM_ADDR2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate1|TM_ADDR2~6_combout\,
	aclr => \Gate2|TC_RST~regout\,
	sload => VCC,
	ena => \Gate1|TM_ADDR2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR2\(0));

-- Location: LCCOMB_X30_Y14_N2
\Gate1|TM_ADDR2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR2~9_combout\ = (\Gate1|TM_ADDR2\(1) & (((!\Gate1|TM_ADDR2\(0))))) # (!\Gate1|TM_ADDR2\(1) & (\Gate1|TM_ADDR2\(0) & ((!\Gate1|TM_ADDR2\(2)) # (!\Gate1|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(1),
	datab => \Gate1|Equal2~0_combout\,
	datac => \Gate1|TM_ADDR2\(2),
	datad => \Gate1|TM_ADDR2\(0),
	combout => \Gate1|TM_ADDR2~9_combout\);

-- Location: LCFF_X32_Y14_N9
\Gate1|TM_ADDR2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate1|TM_ADDR2~9_combout\,
	aclr => \Gate2|TC_RST~regout\,
	sload => VCC,
	ena => \Gate1|TM_ADDR2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR2\(1));

-- Location: LCCOMB_X32_Y14_N8
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ = (\Gate1|TM_ADDR2\(0) & (!\Gate1|TM_ADDR2\(1) & \Gate1|TM_ADDR2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(0),
	datac => \Gate1|TM_ADDR2\(1),
	datad => \Gate1|TM_ADDR2\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X33_Y14_N30
\Gate1|TM_ADDR2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR2~7_combout\ = (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Equal2~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\))) # (!\Gate1|Equal2~0_combout\ & (\Gate1|Add1~0_combout\)))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Add1~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate1|Equal2~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR2~7_combout\);

-- Location: LCFF_X32_Y14_N31
\Gate1|TM_ADDR2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate1|TM_ADDR2~7_combout\,
	aclr => \Gate2|TC_RST~regout\,
	sload => VCC,
	ena => \Gate1|TM_ADDR2[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR2\(2));

-- Location: LCCOMB_X30_Y14_N14
\Gate3|d2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d2[2]~1_combout\ = (\Gate1|TM_ADDR2\(2) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR2\(2),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d2[2]~1_combout\);

-- Location: LCFF_X30_Y14_N15
\Gate3|GuessRegister2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d2[2]~1_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister2|q\(2));

-- Location: LCCOMB_X30_Y14_N4
\Gate3|d2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d2[1]~2_combout\ = (\Gate1|TM_ADDR2\(1) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR2\(1),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d2[1]~2_combout\);

-- Location: LCFF_X30_Y14_N5
\Gate3|GuessRegister2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d2[1]~2_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister2|q\(1));

-- Location: LCCOMB_X30_Y14_N0
\Gate3|ComputeScore|Gate1|Gate2|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate2|AeqB~0_combout\ = (\Gate3|GuessRegister2|q\(0) & ((\Gate3|GuessRegister2|q\(1) $ (\Gate1|TM_ADDR2\(1))) # (!\Gate1|TM_ADDR2\(0)))) # (!\Gate3|GuessRegister2|q\(0) & ((\Gate1|TM_ADDR2\(0)) # (\Gate3|GuessRegister2|q\(1) $ 
-- (\Gate1|TM_ADDR2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister2|q\(0),
	datab => \Gate3|GuessRegister2|q\(1),
	datac => \Gate1|TM_ADDR2\(1),
	datad => \Gate1|TM_ADDR2\(0),
	combout => \Gate3|ComputeScore|Gate1|Gate2|AeqB~0_combout\);

-- Location: LCCOMB_X30_Y14_N22
\Gate3|ComputeScore|Gate1|Gate2|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ = (\Gate3|ComputeScore|Gate1|Gate2|AeqB~0_combout\) # (\Gate3|GuessRegister2|q\(2) $ (\Gate1|TM_ADDR2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister2|q\(2),
	datac => \Gate1|TM_ADDR2\(2),
	datad => \Gate3|ComputeScore|Gate1|Gate2|AeqB~0_combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\);

-- Location: LCCOMB_X33_Y12_N22
\Gate3|d1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d1[1]~1_combout\ = (\Gate1|TM_ADDR1\(1) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(1),
	datac => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d1[1]~1_combout\);

-- Location: LCFF_X33_Y14_N15
\Gate3|GuessRegister1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate3|d1[1]~1_combout\,
	sload => VCC,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister1|q\(1));

-- Location: LCCOMB_X33_Y12_N26
\Gate3|d1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d1[0]~0_combout\ = (\Gate2|GR_SEL~regout\ & \Gate1|TM_ADDR1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate2|GR_SEL~regout\,
	datad => \Gate1|TM_ADDR1\(0),
	combout => \Gate3|d1[0]~0_combout\);

-- Location: LCFF_X33_Y14_N9
\Gate3|GuessRegister1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate3|d1[0]~0_combout\,
	sload => VCC,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister1|q\(0));

-- Location: LCCOMB_X33_Y12_N14
\Gate3|ComputeScore|Gate1|Gate1|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate1|AeqB~0_combout\ = (\Gate1|TM_ADDR1\(0) & ((\Gate1|TM_ADDR1\(1) $ (\Gate3|GuessRegister1|q\(1))) # (!\Gate3|GuessRegister1|q\(0)))) # (!\Gate1|TM_ADDR1\(0) & ((\Gate3|GuessRegister1|q\(0)) # (\Gate1|TM_ADDR1\(1) $ 
-- (\Gate3|GuessRegister1|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(0),
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate3|GuessRegister1|q\(1),
	datad => \Gate3|GuessRegister1|q\(0),
	combout => \Gate3|ComputeScore|Gate1|Gate1|AeqB~0_combout\);

-- Location: LCCOMB_X33_Y12_N16
\Gate3|ComputeScore|Gate1|Gate1|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ = (\Gate3|ComputeScore|Gate1|Gate1|AeqB~0_combout\) # (\Gate1|TM_ADDR1\(2) $ (\Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(2),
	datac => \Gate3|GuessRegister1|q\(2),
	datad => \Gate3|ComputeScore|Gate1|Gate1|AeqB~0_combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\);

-- Location: LCCOMB_X31_Y13_N14
\Gate1|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Equal3~1_combout\ = (\Gate1|Equal2~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Equal2~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|Equal3~1_combout\);

-- Location: LCCOMB_X31_Y13_N30
\Gate1|TM_ADDR3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR3~2_combout\ = (!\Gate1|Equal3~1_combout\ & (\Gate1|TM_ADDR3\(0) $ (\Gate1|TM_ADDR3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR3\(0),
	datab => \Gate1|Equal3~1_combout\,
	datac => \Gate1|TM_ADDR3\(1),
	combout => \Gate1|TM_ADDR3~2_combout\);

-- Location: LCCOMB_X31_Y13_N20
\Gate1|TM_ADDR3[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR3[0]~1_combout\ = (\Gate1|TM_ADDR1[0]~2_combout\ & (\Gate1|Equal2~0_combout\ & \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1[0]~2_combout\,
	datac => \Gate1|Equal2~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|TM_ADDR3[0]~1_combout\);

-- Location: LCFF_X31_Y13_N31
\Gate1|TM_ADDR3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR3~2_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR3\(1));

-- Location: LCCOMB_X31_Y13_N16
\Gate1|TM_ADDR3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR3~0_combout\ = ((\Gate1|Equal3~1_combout\ & \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\)) # (!\Gate1|TM_ADDR3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|Equal3~1_combout\,
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR3~0_combout\);

-- Location: LCFF_X31_Y13_N17
\Gate1|TM_ADDR3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR3~0_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR3\(0));

-- Location: LCCOMB_X31_Y13_N28
\Gate1|TM_ADDR3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR3~3_combout\ = (\Gate1|Equal3~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\))) # (!\Gate1|Equal3~1_combout\ & (\Gate1|Add2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Add2~0_combout\,
	datac => \Gate1|Equal3~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR3~3_combout\);

-- Location: LCFF_X31_Y13_N29
\Gate1|TM_ADDR3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR3~3_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR3[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR3\(2));

-- Location: LCCOMB_X31_Y13_N0
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ = (!\Gate1|TM_ADDR3\(1) & (\Gate1|TM_ADDR3\(0) & \Gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(1),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X31_Y13_N4
\Gate1|TM_ADDR4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR4[0]~1_combout\ = (\Gate1|Equal2~0_combout\ & (\Gate1|TM_ADDR1[0]~2_combout\ & (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Equal2~0_combout\,
	datab => \Gate1|TM_ADDR1[0]~2_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate1|TM_ADDR4[0]~1_combout\);

-- Location: LCCOMB_X31_Y13_N24
\Gate1|TM_ADDR4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR4~3_combout\ = (!\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ & (\Gate1|TM_ADDR4\(0) $ (\Gate1|TM_ADDR4\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR4\(0),
	datac => \Gate1|TM_ADDR4\(1),
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	combout => \Gate1|TM_ADDR4~3_combout\);

-- Location: LCFF_X31_Y13_N25
\Gate1|TM_ADDR4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR4~3_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR4\(1));

-- Location: LCCOMB_X32_Y13_N18
\Gate1|TM_ADDR4[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR4[2]~2_combout\ = \Gate1|TM_ADDR4\(2) $ (((\Gate1|TM_ADDR4\(0) & (\Gate1|TM_ADDR4[0]~1_combout\ & \Gate1|TM_ADDR4\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR4\(0),
	datab => \Gate1|TM_ADDR4[0]~1_combout\,
	datac => \Gate1|TM_ADDR4\(2),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate1|TM_ADDR4[2]~2_combout\);

-- Location: LCFF_X32_Y13_N19
\Gate1|TM_ADDR4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR4[2]~2_combout\,
	aclr => \Gate2|TC_RST~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR4\(2));

-- Location: LCCOMB_X32_Y13_N30
\Gate3|d4[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d4[2]~1_combout\ = (\Gate1|TM_ADDR4\(2) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(2),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d4[2]~1_combout\);

-- Location: LCFF_X32_Y13_N31
\Gate3|GuessRegister4|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d4[2]~1_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister4|q\(2));

-- Location: LCCOMB_X31_Y13_N6
\Gate1|TM_ADDR4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR4~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\) # (!\Gate1|TM_ADDR4\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	datac => \Gate1|TM_ADDR4\(0),
	combout => \Gate1|TM_ADDR4~0_combout\);

-- Location: LCFF_X31_Y13_N7
\Gate1|TM_ADDR4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR4~0_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR4\(0));

-- Location: LCCOMB_X32_Y13_N0
\Gate3|d4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d4[0]~0_combout\ = (\Gate1|TM_ADDR4\(0)) # (!\Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR4\(0),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d4[0]~0_combout\);

-- Location: LCFF_X32_Y13_N1
\Gate3|GuessRegister4|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d4[0]~0_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister4|q\(0));

-- Location: LCCOMB_X32_Y13_N8
\Gate3|ComputeScore|Gate1|Gate4|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate4|AeqB~0_combout\ = (\Gate3|GuessRegister4|q\(1) & ((\Gate3|GuessRegister4|q\(0) $ (\Gate1|TM_ADDR4\(0))) # (!\Gate1|TM_ADDR4\(1)))) # (!\Gate3|GuessRegister4|q\(1) & ((\Gate1|TM_ADDR4\(1)) # (\Gate3|GuessRegister4|q\(0) $ 
-- (\Gate1|TM_ADDR4\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister4|q\(1),
	datab => \Gate3|GuessRegister4|q\(0),
	datac => \Gate1|TM_ADDR4\(0),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate3|ComputeScore|Gate1|Gate4|AeqB~0_combout\);

-- Location: LCCOMB_X33_Y13_N12
\Gate3|ComputeScore|Gate1|Gate4|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\ = (\Gate3|ComputeScore|Gate1|Gate4|AeqB~0_combout\) # (\Gate1|TM_ADDR4\(2) $ (\Gate3|GuessRegister4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR4\(2),
	datac => \Gate3|GuessRegister4|q\(2),
	datad => \Gate3|ComputeScore|Gate1|Gate4|AeqB~0_combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\);

-- Location: LCCOMB_X37_Y14_N6
\Gate3|ComputeScore|Gate1|Gate5|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate5|num1s\(2) = (\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\) # ((\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\) # ((\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\) # (\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\,
	datac => \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\,
	datad => \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2));

-- Location: LCCOMB_X38_Y14_N26
\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ & ((\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ & (!\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ & !\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)) # 
-- (!\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ & ((!\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\) # (!\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\))))) # (!\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ & ((\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ 
-- & ((!\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\) # (!\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\))) # (!\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ & ((\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\) # 
-- (\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\,
	datac => \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\,
	datad => \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\);

-- Location: LCCOMB_X33_Y14_N26
\Gate3|d3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d3[0]~0_combout\ = (\Gate1|TM_ADDR3\(0)) # (!\Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d3[0]~0_combout\);

-- Location: LCFF_X33_Y14_N27
\Gate3|GuessRegister3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d3[0]~0_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister3|q\(0));

-- Location: LCCOMB_X33_Y14_N2
\Gate3|d3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d3[2]~2_combout\ = (\Gate1|TM_ADDR3\(2) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR3\(2),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d3[2]~2_combout\);

-- Location: LCFF_X33_Y14_N3
\Gate3|GuessRegister3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d3[2]~2_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister3|q\(2));

-- Location: LCCOMB_X33_Y14_N14
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate3|GuessRegister3|q\(1) & (\Gate3|GuessRegister3|q\(0) & !\Gate3|GuessRegister3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister3|q\(1),
	datab => \Gate3|GuessRegister3|q\(0),
	datad => \Gate3|GuessRegister3|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X30_Y14_N12
\Gate3|d2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d2[0]~0_combout\ = (\Gate1|TM_ADDR2\(0) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR2\(0),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d2[0]~0_combout\);

-- Location: LCFF_X30_Y14_N13
\Gate3|GuessRegister2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d2[0]~0_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister2|q\(0));

-- Location: LCCOMB_X31_Y14_N2
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate3|GuessRegister2|q\(2) & (\Gate3|GuessRegister2|q\(0) & !\Gate3|GuessRegister2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister2|q\(2),
	datac => \Gate3|GuessRegister2|q\(0),
	datad => \Gate3|GuessRegister2|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X32_Y13_N4
\Gate3|d4[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d4[1]~2_combout\ = (\Gate1|TM_ADDR4\(1) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(1),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d4[1]~2_combout\);

-- Location: LCFF_X32_Y13_N5
\Gate3|GuessRegister4|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|d4[1]~2_combout\,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister4|q\(1));

-- Location: LCCOMB_X32_Y13_N10
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate3|GuessRegister4|q\(2) & (!\Gate3|GuessRegister4|q\(1) & \Gate3|GuessRegister4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister4|q\(2),
	datac => \Gate3|GuessRegister4|q\(1),
	datad => \Gate3|GuessRegister4|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X36_Y14_N12
\Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\);

-- Location: LCCOMB_X36_Y14_N30
\Gate3|ComputeScore|Gate2|Gate16|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate16|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate16|num1s\(2));

-- Location: LCCOMB_X32_Y14_N20
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate1|TM_ADDR2\(1) & (\Gate1|TM_ADDR2\(0) & !\Gate1|TM_ADDR2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR2\(1),
	datac => \Gate1|TM_ADDR2\(0),
	datad => \Gate1|TM_ADDR2\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X32_Y13_N2
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ = (\Gate1|TM_ADDR3\(0) & (!\Gate1|TM_ADDR3\(1) & !\Gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(0),
	datac => \Gate1|TM_ADDR3\(1),
	datad => \Gate1|TM_ADDR3\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X32_Y13_N16
\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ = (!\Gate1|TM_ADDR4\(2) & (\Gate1|TM_ADDR4\(0) & !\Gate1|TM_ADDR4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(2),
	datac => \Gate1|TM_ADDR4\(0),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X36_Y14_N16
\Gate3|ComputeScore|Gate2|Gate10|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate10|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate10|num1s\(2));

-- Location: LCCOMB_X36_Y14_N18
\Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\);

-- Location: LCCOMB_X36_Y14_N8
\Gate3|ComputeScore|Gate2|Gate22|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) $ 
-- (!\Gate3|ComputeScore|Gate2|Gate10|num1s\(2))))) # (!\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) $ 
-- (!\Gate3|ComputeScore|Gate2|Gate10|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate16|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate10|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\);

-- Location: LCCOMB_X36_Y14_N20
\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\);

-- Location: LCCOMB_X37_Y14_N24
\Gate3|ComputeScore|Gate2|Gate22|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate10|num1s\(2) & (!\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\))) 
-- # (!\Gate3|ComputeScore|Gate2|Gate16|num1s\(2) & ((\Gate3|ComputeScore|Gate2|Gate10|num1s\(2)) # ((!\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate16|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate10|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\);

-- Location: LCCOMB_X36_Y14_N14
\Gate3|ComputeScore|Gate2|Gate22|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\ & (((\Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\);

-- Location: LCCOMB_X33_Y13_N16
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) = (\Gate3|GuessRegister4|q\(0) & (\Gate3|GuessRegister4|q\(1) & !\Gate3|GuessRegister4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister4|q\(0),
	datab => \Gate3|GuessRegister4|q\(1),
	datac => \Gate3|GuessRegister4|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X30_Y14_N30
\Gate3|d3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d3[1]~1_combout\ = (\Gate1|TM_ADDR3\(1) & \Gate2|GR_SEL~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate1|TM_ADDR3\(1),
	datad => \Gate2|GR_SEL~regout\,
	combout => \Gate3|d3[1]~1_combout\);

-- Location: LCFF_X33_Y14_N25
\Gate3|GuessRegister3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate3|d3[1]~1_combout\,
	sload => VCC,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister3|q\(1));

-- Location: LCCOMB_X33_Y14_N0
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3) = (\Gate3|GuessRegister3|q\(0) & (\Gate3|GuessRegister3|q\(1) & !\Gate3|GuessRegister3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(0),
	datac => \Gate3|GuessRegister3|q\(1),
	datad => \Gate3|GuessRegister3|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X30_Y14_N24
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3) = (\Gate3|GuessRegister2|q\(1) & (!\Gate3|GuessRegister2|q\(2) & \Gate3|GuessRegister2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister2|q\(1),
	datac => \Gate3|GuessRegister2|q\(2),
	datad => \Gate3|GuessRegister2|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X34_Y13_N20
\Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\ = \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3) $ (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) $ (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\);

-- Location: LCCOMB_X32_Y13_N26
\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\ = (!\Gate1|TM_ADDR4\(2) & (\Gate1|TM_ADDR4\(0) & \Gate1|TM_ADDR4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(2),
	datac => \Gate1|TM_ADDR4\(0),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\);

-- Location: LCCOMB_X33_Y14_N10
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3) = (!\Gate1|TM_ADDR2\(2) & (\Gate1|TM_ADDR2\(0) & \Gate1|TM_ADDR2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR2\(2),
	datac => \Gate1|TM_ADDR2\(0),
	datad => \Gate1|TM_ADDR2\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X33_Y12_N10
\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3) = (\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1\(0) & !\Gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate1|TM_ADDR1\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X33_Y13_N6
\Gate3|ComputeScore|Gate2|Gate12|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate12|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) & (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3) & 
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate12|num1s\(2));

-- Location: LCCOMB_X34_Y13_N8
\Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3)) # 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3)) # (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3) & 
-- (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3) & \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode41w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\);

-- Location: LCCOMB_X31_Y13_N22
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) = (\Gate1|TM_ADDR3\(1) & (\Gate1|TM_ADDR3\(0) & !\Gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(1),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X34_Y13_N10
\Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\ = \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3) $ (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\);

-- Location: LCCOMB_X34_Y13_N6
\Gate3|ComputeScore|Gate2|Gate24|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\ & (((!\Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\);

-- Location: LCCOMB_X34_Y13_N0
\Gate3|ComputeScore|Gate2|Gate24|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate18|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate12|num1s\(2) & \Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate18|num1s\(2) & 
-- ((\Gate3|ComputeScore|Gate2|Gate12|num1s\(2)) # (\Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate18|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate12|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate24|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\);

-- Location: LCCOMB_X32_Y13_N20
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) = (!\Gate3|GuessRegister4|q\(2) & (!\Gate3|GuessRegister4|q\(0) & \Gate3|GuessRegister4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister4|q\(2),
	datac => \Gate3|GuessRegister4|q\(0),
	datad => \Gate3|GuessRegister4|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X30_Y14_N6
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3) = (!\Gate3|GuessRegister2|q\(2) & (\Gate3|GuessRegister2|q\(1) & !\Gate3|GuessRegister2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister2|q\(2),
	datac => \Gate3|GuessRegister2|q\(1),
	datad => \Gate3|GuessRegister2|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X33_Y14_N6
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3) = (\Gate3|GuessRegister1|q\(1) & (!\Gate3|GuessRegister1|q\(0) & !\Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(1),
	datac => \Gate3|GuessRegister1|q\(0),
	datad => \Gate3|GuessRegister1|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X33_Y13_N18
\Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3) $ (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) $ (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\);

-- Location: LCCOMB_X33_Y12_N0
\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) = (\Gate1|TM_ADDR1\(1) & (!\Gate1|TM_ADDR1\(0) & !\Gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate1|TM_ADDR1\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X32_Y13_N6
\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3) = (!\Gate1|TM_ADDR4\(2) & (!\Gate1|TM_ADDR4\(0) & \Gate1|TM_ADDR4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(2),
	datac => \Gate1|TM_ADDR4\(0),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X32_Y14_N16
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3) = (\Gate1|TM_ADDR2\(1) & (!\Gate1|TM_ADDR2\(0) & !\Gate1|TM_ADDR2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR2\(1),
	datac => \Gate1|TM_ADDR2\(0),
	datad => \Gate1|TM_ADDR2\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X33_Y13_N14
\Gate3|ComputeScore|Gate2|Gate11|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate11|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3) & (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) & (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3) & 
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate11|num1s\(2));

-- Location: LCCOMB_X33_Y13_N4
\Gate3|ComputeScore|Gate2|Gate17|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate17|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3) & (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) & (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3) & 
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate17|num1s\(2));

-- Location: LCCOMB_X33_Y13_N10
\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3)) # 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3)) # (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3) & 
-- (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3) & \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\);

-- Location: LCCOMB_X33_Y13_N24
\Gate3|ComputeScore|Gate2|Gate23|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) $ 
-- (!\Gate3|ComputeScore|Gate2|Gate17|num1s\(2))))) # (!\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) $ 
-- (!\Gate3|ComputeScore|Gate2|Gate17|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate11|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate17|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\);

-- Location: LCCOMB_X33_Y13_N22
\Gate3|ComputeScore|Gate2|Gate23|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) & (((\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ & !\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate17|num1s\(2)))) # (!\Gate3|ComputeScore|Gate2|Gate11|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate17|num1s\(2) & 
-- !\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate11|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate17|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\);

-- Location: LCCOMB_X33_Y13_N2
\Gate3|ComputeScore|Gate2|Gate23|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\ & (((\Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\);

-- Location: LCCOMB_X34_Y13_N30
\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\ = \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X33_Y14_N22
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ = (!\Gate3|GuessRegister1|q\(1) & (\Gate3|GuessRegister1|q\(0) & \Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(1),
	datac => \Gate3|GuessRegister1|q\(0),
	datad => \Gate3|GuessRegister1|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N0
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ = (\Gate3|GuessRegister2|q\(2) & (\Gate3|GuessRegister2|q\(0) & !\Gate3|GuessRegister2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister2|q\(2),
	datac => \Gate3|GuessRegister2|q\(0),
	datad => \Gate3|GuessRegister2|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X32_Y13_N22
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ = (\Gate3|GuessRegister4|q\(0) & (!\Gate3|GuessRegister4|q\(1) & \Gate3|GuessRegister4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister4|q\(0),
	datac => \Gate3|GuessRegister4|q\(1),
	datad => \Gate3|GuessRegister4|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X32_Y14_N14
\Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\ = \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\);

-- Location: LCCOMB_X31_Y13_N26
\Gate1|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Equal3~0_combout\ = (\Gate1|TM_ADDR4\(0) & (!\Gate1|TM_ADDR4\(1) & \Gate1|TM_ADDR4\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR4\(0),
	datac => \Gate1|TM_ADDR4\(1),
	datad => \Gate1|TM_ADDR4\(2),
	combout => \Gate1|Equal3~0_combout\);

-- Location: LCCOMB_X32_Y14_N4
\Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\ = \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate1|Equal2~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Equal2~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Equal3~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\);

-- Location: LCCOMB_X31_Y13_N8
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate1|TM_ADDR3\(1) & (!\Gate1|TM_ADDR3\(0) & \Gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR3\(1),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N16
\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate1|TM_ADDR4\(0) & (\Gate1|TM_ADDR4\(2) & !\Gate1|TM_ADDR4\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(0),
	datac => \Gate1|TM_ADDR4\(2),
	datad => \Gate1|TM_ADDR4\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X32_Y12_N12
\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate1|TM_ADDR1\(0) & (\Gate1|TM_ADDR1\(2) & !\Gate1|TM_ADDR1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(0),
	datac => \Gate1|TM_ADDR1\(2),
	datad => \Gate1|TM_ADDR1\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N4
\Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\);

-- Location: LCCOMB_X32_Y13_N28
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ = (\Gate3|GuessRegister4|q\(2) & (!\Gate3|GuessRegister4|q\(1) & !\Gate3|GuessRegister4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister4|q\(2),
	datac => \Gate3|GuessRegister4|q\(1),
	datad => \Gate3|GuessRegister4|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X32_Y14_N26
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ = (!\Gate3|GuessRegister1|q\(0) & (\Gate3|GuessRegister1|q\(2) & !\Gate3|GuessRegister1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(0),
	datac => \Gate3|GuessRegister1|q\(2),
	datad => \Gate3|GuessRegister1|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X32_Y14_N24
\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ = (\Gate3|GuessRegister3|q\(2) & (!\Gate3|GuessRegister3|q\(0) & !\Gate3|GuessRegister3|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister3|q\(2),
	datac => \Gate3|GuessRegister3|q\(0),
	datad => \Gate3|GuessRegister3|q\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N30
\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((!\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\);

-- Location: LCCOMB_X31_Y14_N10
\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ = (\Gate1|TM_ADDR2\(2) & (!\Gate1|TM_ADDR2\(1) & !\Gate1|TM_ADDR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR2\(2),
	datac => \Gate1|TM_ADDR2\(1),
	datad => \Gate1|TM_ADDR2\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X31_Y14_N8
\Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\))))) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\);

-- Location: LCCOMB_X31_Y14_N22
\Gate3|ComputeScore|Gate2|Gate13|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate13|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate13|num1s\(2));

-- Location: LCCOMB_X31_Y14_N24
\Gate3|ComputeScore|Gate2|Gate25|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate19|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate13|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ $ 
-- (!\Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate19|num1s\(2) & (!\Gate3|ComputeScore|Gate2|Gate13|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ $ 
-- (!\Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate19|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate13|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\);

-- Location: LCCOMB_X31_Y14_N18
\Gate3|ComputeScore|Gate2|Gate25|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate19|num1s\(2) & (!\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate13|num1s\(2)))) 
-- # (!\Gate3|ComputeScore|Gate2|Gate19|num1s\(2) & ((\Gate3|ComputeScore|Gate2|Gate13|num1s\(2)) # ((!\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate19|num1s\(2),
	datab => \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate13|num1s\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\);

-- Location: LCCOMB_X31_Y14_N14
\Gate3|ComputeScore|Gate2|Gate25|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\);

-- Location: LCCOMB_X32_Y14_N28
\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ = \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X35_Y14_N8
\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\ = \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X35_Y14_N4
\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate21|min[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X33_Y14_N8
\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) = (\Gate3|GuessRegister1|q\(1)) # ((\Gate3|GuessRegister1|q\(0)) # (\Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister1|q\(1),
	datac => \Gate3|GuessRegister1|q\(0),
	datad => \Gate3|GuessRegister1|q\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X30_Y14_N18
\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3) = (\Gate3|GuessRegister2|q\(1)) # ((\Gate3|GuessRegister2|q\(2)) # (\Gate3|GuessRegister2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister2|q\(1),
	datac => \Gate3|GuessRegister2|q\(2),
	datad => \Gate3|GuessRegister2|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X33_Y13_N0
\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3) = (\Gate3|GuessRegister4|q\(1)) # ((\Gate3|GuessRegister4|q\(2)) # (\Gate3|GuessRegister4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister4|q\(1),
	datac => \Gate3|GuessRegister4|q\(2),
	datad => \Gate3|GuessRegister4|q\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X37_Y14_N2
\Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3) $ (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3) $ (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3) $ 
-- (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\);

-- Location: LCCOMB_X37_Y14_N14
\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3)) # ((\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3)) # ((\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3)) # 
-- (\Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\);

-- Location: LCCOMB_X33_Y12_N20
\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) = (\Gate1|TM_ADDR1\(1)) # ((\Gate1|TM_ADDR1\(0)) # (\Gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate1|TM_ADDR1\(2),
	combout => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y13_N18
\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3) = (\Gate1|TM_ADDR3\(2)) # ((\Gate1|TM_ADDR3\(0)) # (\Gate1|TM_ADDR3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR3\(2),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(1),
	combout => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X36_Y13_N12
\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3) = (\Gate1|TM_ADDR4\(2)) # ((\Gate1|TM_ADDR4\(1)) # (\Gate1|TM_ADDR4\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR4\(2),
	datac => \Gate1|TM_ADDR4\(1),
	datad => \Gate1|TM_ADDR4\(0),
	combout => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X37_Y14_N4
\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\ = (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3)) # ((\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3)) # ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3)) # 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\);

-- Location: LCCOMB_X37_Y14_N12
\Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3) & ((\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) & (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3) & 
-- !\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3) & ((\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) & 
-- ((!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3)) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3)) # (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\);

-- Location: LCCOMB_X37_Y14_N8
\Gate3|ComputeScore|Gate2|Gate21|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ & (\Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ $ 
-- (!\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ & (!\Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ $ 
-- (!\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\);

-- Location: LCCOMB_X37_Y14_N30
\Gate3|ComputeScore|Gate2|Gate21|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ & (((!\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ & \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\ & (!\Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate15|num1s[2]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate9|num1s[2]~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\);

-- Location: LCCOMB_X37_Y14_N26
\Gate3|ComputeScore|Gate2|Gate21|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ = (\Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\) # ((\Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate21|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate21|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\);

-- Location: LCCOMB_X36_Y14_N22
\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ & ((\Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ & (\Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate9|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate15|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|min[0]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X37_Y14_N0
\Gate3|ComputeScore|Gate2|Gate21|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ & (\Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate15|num1s[1]~2_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate9|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate21|NgtM~combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\);

-- Location: LCCOMB_X36_Y14_N6
\Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\ = \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\);

-- Location: LCCOMB_X37_Y14_N18
\Gate3|ComputeScore|Gate2|Gate22|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\ = (\Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\) # ((!\Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate16|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate10|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate22|NgtM~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|NgtM~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\);

-- Location: LCCOMB_X37_Y14_N28
\Gate3|ComputeScore|Gate2|Gate22|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\ & ((\Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate10|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate16|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|NgtM~combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\);

-- Location: LCCOMB_X36_Y14_N0
\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\ = \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\ $ (\Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X31_Y14_N12
\Gate3|ComputeScore|Gate2|Gate25|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\ = (\Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\) # ((!\Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate19|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate13|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate25|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\);

-- Location: LCCOMB_X31_Y14_N26
\Gate3|ComputeScore|Gate2|Gate25|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\ & (\Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate19|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate13|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate25|NgtM~combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\);

-- Location: LCCOMB_X32_Y14_N2
\Gate3|ComputeScore|Gate2|Gate20|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate20|num1s\(2) = (\Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate20|num1s\(2));

-- Location: LCCOMB_X32_Y14_N0
\Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Equal2~0_combout\ & ((!\Gate1|Equal3~0_combout\) # 
-- (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate1|Equal2~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\) # (\Gate1|Equal3~0_combout\))))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate1|Equal2~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\) # (\Gate1|Equal3~0_combout\))) # (!\Gate1|Equal2~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & \Gate1|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Equal2~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Equal3~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\);

-- Location: LCCOMB_X32_Y14_N12
\Gate3|ComputeScore|Gate2|Gate26|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\) # ((!\Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate20|num1s[1]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate14|num1s[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\);

-- Location: LCCOMB_X32_Y14_N6
\Gate3|ComputeScore|Gate2|Gate26|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\) # (!\Gate3|ComputeScore|Gate2|Gate20|num1s\(2)))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate20|num1s\(2) & \Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate20|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate26|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\);

-- Location: LCCOMB_X31_Y14_N28
\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate14|num1s[0]~2_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate25|min[0]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate26|NgtM~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X35_Y14_N24
\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\ = \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\ $ (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate26|min[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate25|min[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X34_Y13_N18
\Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\) # 
-- (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3) & 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode41w[3]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode41w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\);

-- Location: LCCOMB_X34_Y13_N14
\Gate3|ComputeScore|Gate2|Gate24|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate12|num1s[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate18|num1s[1]~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\);

-- Location: LCCOMB_X33_Y13_N20
\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) & ((!\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3)) # 
-- (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3)))))) # (!\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) & 
-- ((\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3)) # (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3)))) # (!\Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3) & 
-- (\Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3) & \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate3|ComputeScore|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datac => \Gate3|ComputeScore|Gate2|Gate4|auto_generated|w_anode30w\(3),
	datad => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode30w\(3),
	combout => \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\);

-- Location: LCCOMB_X33_Y13_N28
\Gate3|ComputeScore|Gate2|Gate23|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\ = (\Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\) # ((\Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\ & (!\Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\ & 
-- \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate11|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate17|num1s[0]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate23|NgtM~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate23|NgtM~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\);

-- Location: LCCOMB_X33_Y13_N30
\Gate3|ComputeScore|Gate2|Gate23|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\ & (\Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\)) # (!\Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate17|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate11|num1s[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate23|NgtM~combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\);

-- Location: LCCOMB_X34_Y13_N28
\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate12|num1s[0]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate24|NgtM~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate18|num1s[0]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate23|min[0]~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X34_Y13_N12
\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\ = \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\ $ (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X35_Y14_N2
\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\ = \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\ $ (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\ $ 
-- (((\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ & \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X35_Y14_N22
\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\ = \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X35_Y14_N26
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\ = \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ $ (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\) 
-- # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X34_Y13_N22
\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3_combout\ = (\Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\ & ((\Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\) # (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\))) # 
-- (!\Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\ & \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate23|min[1]~1_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate24|min[1]~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X35_Y14_N6
\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\ & \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X36_Y14_N28
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6_combout\ = \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\) 
-- # (\Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\ & \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~5_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate21|min[1]~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate22|min[1]~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X35_Y14_N20
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7_combout\ = \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\) # (\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\ & \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~2_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~2_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~6_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7_combout\);

-- Location: LCCOMB_X35_Y14_N14
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8_combout\ = \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7_combout\ $ (((\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ & 
-- ((\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\) # (\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\))) # (!\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ & 
-- (\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\ & \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~7_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X35_Y14_N10
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\ = \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X35_Y14_N12
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\ & ((\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\) 
-- # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\)))) # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & (((\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\) # (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\)) 
-- # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X35_Y14_N0
\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ = \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3_combout\ $ (\Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8_combout\ $ (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate29|auto_generated|op_1~3_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate28|auto_generated|op_1~3_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~8_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\);

-- Location: LCCOMB_X35_Y14_N30
\Gate3|ComputeScore|Gate3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux2~0_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & ((\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ $ (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\))) # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ & ((\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\) # 
-- (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux2~0_combout\);

-- Location: LCCOMB_X34_Y14_N4
\Gate3|i[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|i[1]~0_combout\ = (!\Gate2|GR_LD~regout\ & (\Gate3|ComputeScore|Gate1|Gate5|num1s\(2) & (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\ & !\Gate3|ComputeScore|Gate3|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	datac => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datad => \Gate3|ComputeScore|Gate3|Mux2~0_combout\,
	combout => \Gate3|i[1]~0_combout\);

-- Location: LCCOMB_X38_Y14_N28
\Gate3|ComputeScore|Gate3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux3~0_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s\(2) & ((\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ & (!\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & 
-- !\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\)) # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ & (\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ $ (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	datad => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y14_N16
\Gate3|ComputeScore|Gate3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux1~1_combout\ = (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ & (!\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & (!\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\ & 
-- !\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux1~1_combout\);

-- Location: LCCOMB_X34_Y14_N10
\Gate3|ComputeScore|Gate3|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux3~1_combout\ = (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ & ((\Gate3|ComputeScore|Gate3|Mux3~0_combout\) # ((!\Gate3|ComputeScore|Gate1|Gate5|num1s\(2) & \Gate3|ComputeScore|Gate3|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	datab => \Gate3|ComputeScore|Gate3|Mux3~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\,
	datad => \Gate3|ComputeScore|Gate3|Mux1~1_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux3~1_combout\);

-- Location: LCCOMB_X35_Y12_N2
\Gate2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector3~0_combout\ = (\Gate2|y_present.B~regout\) # ((\Gate2|y_present.C~regout\ & !\Gate1|last~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|y_present.B~regout\,
	datac => \Gate2|y_present.C~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector3~0_combout\);

-- Location: LCFF_X35_Y12_N3
\Gate2|y_present.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector3~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.C~regout\);

-- Location: LCCOMB_X35_Y12_N8
\Gate2|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector19~0_combout\ = (\Gate2|SR_LD~regout\ & ((\Gate2|y_present.C~regout\) # ((\Gate2|y_present.G~regout\)))) # (!\Gate2|SR_LD~regout\ & (((\Gate2|y_present.G~regout\ & \Gate1|last~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|SR_LD~regout\,
	datab => \Gate2|y_present.C~regout\,
	datac => \Gate2|y_present.G~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector19~0_combout\);

-- Location: LCCOMB_X34_Y14_N26
\Gate2|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector19~3_combout\ = (\Gate2|Selector19~2_combout\) # ((\Gate2|Selector19~0_combout\) # ((\Gate2|SR_LD~regout\ & \Gate2|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector19~2_combout\,
	datab => \Gate2|Selector19~0_combout\,
	datac => \Gate2|SR_LD~regout\,
	datad => \Gate2|Selector17~3_combout\,
	combout => \Gate2|Selector19~3_combout\);

-- Location: LCFF_X34_Y14_N27
\Gate2|SR_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector19~3_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|SR_LD~regout\);

-- Location: LCFF_X34_Y14_N11
\Gate3|ScoreRegister|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|ComputeScore|Gate3|Mux3~1_combout\,
	ena => \Gate2|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|ScoreRegister|q\(0));

-- Location: LCCOMB_X34_Y14_N16
\Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0_combout\ = \Gate3|ScoreRegister|q\(0) $ (((\Gate2|GR_LD~regout\) # (\Gate3|ComputeScore|Gate3|Mux3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datac => \Gate3|ScoreRegister|q\(0),
	datad => \Gate3|ComputeScore|Gate3|Mux3~1_combout\,
	combout => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0_combout\);

-- Location: LCCOMB_X35_Y14_N28
\Gate3|ComputeScore|Gate3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux0~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\) # ((\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\ & 
-- !\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\)))) # (!\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\ & (((!\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux0~0_combout\);

-- Location: LCCOMB_X36_Y14_N2
\Gate3|ComputeScore|Gate3|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux0~2_combout\ = (\Gate3|ComputeScore|Gate3|Mux0~1_combout\ & !\Gate3|ComputeScore|Gate3|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate3|Mux0~1_combout\,
	datad => \Gate3|ComputeScore|Gate3|Mux0~0_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux0~2_combout\);

-- Location: LCFF_X36_Y14_N3
\Gate3|ScoreRegister|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate3|ComputeScore|Gate3|Mux0~2_combout\,
	ena => \Gate2|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|ScoreRegister|q\(3));

-- Location: LCCOMB_X33_Y14_N20
\Gate3|ComputeScore|Gate1|Gate3|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate3|AeqB~0_combout\ = (\Gate3|GuessRegister3|q\(1) & ((\Gate3|GuessRegister3|q\(0) $ (\Gate1|TM_ADDR3\(0))) # (!\Gate1|TM_ADDR3\(1)))) # (!\Gate3|GuessRegister3|q\(1) & ((\Gate1|TM_ADDR3\(1)) # (\Gate3|GuessRegister3|q\(0) $ 
-- (\Gate1|TM_ADDR3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister3|q\(1),
	datab => \Gate3|GuessRegister3|q\(0),
	datac => \Gate1|TM_ADDR3\(0),
	datad => \Gate1|TM_ADDR3\(1),
	combout => \Gate3|ComputeScore|Gate1|Gate3|AeqB~0_combout\);

-- Location: LCCOMB_X37_Y14_N20
\Gate3|ComputeScore|Gate1|Gate3|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ = (\Gate3|ComputeScore|Gate1|Gate3|AeqB~0_combout\) # (\Gate3|GuessRegister3|q\(2) $ (\Gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(2),
	datac => \Gate1|TM_ADDR3\(2),
	datad => \Gate3|ComputeScore|Gate1|Gate3|AeqB~0_combout\,
	combout => \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\);

-- Location: LCCOMB_X38_Y14_N22
\Gate3|ComputeScore|Gate3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux0~1_combout\ = (\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ & ((\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ & ((\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\) # (\Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\))) # 
-- (!\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ & (\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ & \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)))) # (!\Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\ & (\Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\ & 
-- (\Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\ & \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate2|AeqB~combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate1|AeqB~combout\,
	datac => \Gate3|ComputeScore|Gate1|Gate3|AeqB~combout\,
	datad => \Gate3|ComputeScore|Gate1|Gate4|AeqB~combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux0~1_combout\);

-- Location: LCCOMB_X34_Y14_N22
\Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0_combout\ = \Gate3|ScoreRegister|q\(3) $ (((!\Gate2|GR_LD~regout\ & (\Gate3|ComputeScore|Gate3|Mux0~1_combout\ & !\Gate3|ComputeScore|Gate3|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datab => \Gate3|ScoreRegister|q\(3),
	datac => \Gate3|ComputeScore|Gate3|Mux0~1_combout\,
	datad => \Gate3|ComputeScore|Gate3|Mux0~0_combout\,
	combout => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0_combout\);

-- Location: LCCOMB_X34_Y14_N18
\Gate3|ScoreComparator|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ScoreComparator|AeqB~0_combout\ = (\Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0_combout\) # ((\Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0_combout\) # (\Gate3|ScoreRegister|q\(1) $ (\Gate3|i[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ScoreRegister|q\(1),
	datab => \Gate3|i[1]~0_combout\,
	datac => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_0~0_combout\,
	datad => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_3~0_combout\,
	combout => \Gate3|ScoreComparator|AeqB~0_combout\);

-- Location: LCCOMB_X34_Y14_N2
\Gate2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector7~1_combout\ = ((\Gate2|Selector17~5_combout\ & ((\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\) # (\Gate3|ScoreComparator|AeqB~0_combout\)))) # (!\Gate2|Selector7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector7~0_combout\,
	datab => \Gate2|Selector17~5_combout\,
	datac => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\,
	datad => \Gate3|ScoreComparator|AeqB~0_combout\,
	combout => \Gate2|Selector7~1_combout\);

-- Location: LCFF_X34_Y14_N3
\Gate2|y_present.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector7~1_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.G~regout\);

-- Location: LCCOMB_X34_Y12_N0
\Gate2|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector10~0_combout\ = (\Gate2|y_present.G~regout\ & \Gate1|last~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|y_present.G~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector10~0_combout\);

-- Location: LCFF_X34_Y12_N1
\Gate2|y_present.J\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector10~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.J~regout\);

-- Location: LCCOMB_X34_Y12_N30
\Gate2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector2~0_combout\ = (!\Gate2|y_present.J~regout\ & !\Gate2|y_present.G~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Gate2|y_present.J~regout\,
	datad => \Gate2|y_present.G~regout\,
	combout => \Gate2|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y12_N16
\Gate2|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector2~3_combout\ = (\Gate2|Selector2~2_combout\ & (\Gate2|Selector2~0_combout\ & (\Start~combout\ & !\Gate2|y_present.A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector2~2_combout\,
	datab => \Gate2|Selector2~0_combout\,
	datac => \Start~combout\,
	datad => \Gate2|y_present.A~regout\,
	combout => \Gate2|Selector2~3_combout\);

-- Location: LCFF_X34_Y12_N17
\Gate2|y_present.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector2~3_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.B~regout\);

-- Location: LCCOMB_X35_Y12_N12
\Gate2|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~1_combout\ = (\Gate2|GR_LD~regout\ & (((\Gate2|y_present.D~regout\)) # (!\Gate2|y_present.A~regout\))) # (!\Gate2|GR_LD~regout\ & (((!\Ready~combout\ & \Gate2|y_present.D~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datab => \Gate2|y_present.A~regout\,
	datac => \Ready~combout\,
	datad => \Gate2|y_present.D~regout\,
	combout => \Gate2|Selector17~1_combout\);

-- Location: LCCOMB_X35_Y12_N26
\Gate2|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~2_combout\ = (\Gate2|Selector17~1_combout\) # ((\Gate2|GR_LD~regout\ & ((\Gate2|y_present.B~regout\) # (\Gate2|y_present.F~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|GR_LD~regout\,
	datab => \Gate2|y_present.B~regout\,
	datac => \Gate2|y_present.F~regout\,
	datad => \Gate2|Selector17~1_combout\,
	combout => \Gate2|Selector17~2_combout\);

-- Location: LCCOMB_X34_Y14_N24
\Gate2|Selector17~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector17~4_combout\ = (\Gate2|Selector17~0_combout\) # ((\Gate2|Selector17~2_combout\) # ((\Gate2|GR_LD~regout\ & \Gate2|Selector17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector17~0_combout\,
	datab => \Gate2|Selector17~2_combout\,
	datac => \Gate2|GR_LD~regout\,
	datad => \Gate2|Selector17~3_combout\,
	combout => \Gate2|Selector17~4_combout\);

-- Location: LCFF_X34_Y14_N25
\Gate2|GR_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector17~4_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|GR_LD~regout\);

-- Location: LCCOMB_X35_Y14_N18
\Gate3|ComputeScore|Gate3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux1~0_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ & (!\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\ $ 
-- (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\)))) # (!\Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\ $ (((\Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\ & 
-- !\Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate3|ComputeScore|Gate1|Gate5|num1s[1]~1_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~2_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux1~0_combout\);

-- Location: LCCOMB_X34_Y14_N30
\Gate3|ComputeScore|Gate3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate3|Mux1~2_combout\ = (\Gate3|ComputeScore|Gate1|Gate5|num1s\(2) & ((\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ & (\Gate3|ComputeScore|Gate3|Mux1~0_combout\)) # 
-- (!\Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\ & ((\Gate3|ComputeScore|Gate3|Mux1~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate1|Gate5|num1s\(2),
	datab => \Gate3|ComputeScore|Gate3|Mux1~0_combout\,
	datac => \Gate3|ComputeScore|Gate3|Mux1~1_combout\,
	datad => \Gate3|ComputeScore|Gate2|Gate34|auto_generated|op_1~9_combout\,
	combout => \Gate3|ComputeScore|Gate3|Mux1~2_combout\);

-- Location: LCCOMB_X34_Y14_N8
\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\ = \Gate3|ScoreRegister|q\(2) $ (((!\Gate2|GR_LD~regout\ & \Gate3|ComputeScore|Gate3|Mux1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ScoreRegister|q\(2),
	datac => \Gate2|GR_LD~regout\,
	datad => \Gate3|ComputeScore|Gate3|Mux1~2_combout\,
	combout => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\);

-- Location: LCCOMB_X34_Y14_N20
\Gate2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector6~0_combout\ = (\Gate2|y_present.F~regout\) # ((\Gate2|Selector17~5_combout\ & (!\Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\ & !\Gate3|ScoreComparator|AeqB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector17~5_combout\,
	datab => \Gate3|ScoreComparator|SYNTHESIZED_WIRE_2~0_combout\,
	datac => \Gate2|y_present.F~regout\,
	datad => \Gate3|ScoreComparator|AeqB~0_combout\,
	combout => \Gate2|Selector6~0_combout\);

-- Location: LCFF_X34_Y14_N21
\Gate2|y_present.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector6~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.F~regout\);

-- Location: LCCOMB_X34_Y12_N10
\Gate2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector1~0_combout\ = (\Gate2|y_present.J~regout\) # ((\Gate2|y_present.G~regout\) # ((!\Start~combout\ & \Gate2|y_present.F~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.J~regout\,
	datab => \Start~combout\,
	datac => \Gate2|y_present.F~regout\,
	datad => \Gate2|y_present.G~regout\,
	combout => \Gate2|Selector1~0_combout\);

-- Location: LCCOMB_X34_Y12_N26
\Gate2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector1~1_combout\ = ((\Start~combout\) # ((\Gate2|y_present.A~regout\) # (\Gate2|Selector1~0_combout\))) # (!\Gate2|Selector2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector2~2_combout\,
	datab => \Start~combout\,
	datac => \Gate2|y_present.A~regout\,
	datad => \Gate2|Selector1~0_combout\,
	combout => \Gate2|Selector1~1_combout\);

-- Location: LCFF_X34_Y12_N27
\Gate2|y_present.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector1~1_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.A~regout\);

-- Location: LCCOMB_X35_Y12_N14
\Gate2|Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector11~1_combout\ = (\Gate2|y_present.D~regout\ & (((\Gate2|TC_RST~regout\) # (!\Ready~combout\)))) # (!\Gate2|y_present.D~regout\ & (\Gate2|y_present.F~regout\ & (\Gate2|TC_RST~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.D~regout\,
	datab => \Gate2|y_present.F~regout\,
	datac => \Gate2|TC_RST~regout\,
	datad => \Ready~combout\,
	combout => \Gate2|Selector11~1_combout\);

-- Location: LCCOMB_X35_Y12_N28
\Gate2|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector11~0_combout\ = (\Gate2|y_present.G~regout\ & (((\Gate2|TC_RST~regout\) # (\Gate1|last~regout\)))) # (!\Gate2|y_present.G~regout\ & (\Gate2|y_present.C~regout\ & ((\Gate2|TC_RST~regout\) # (\Gate1|last~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.G~regout\,
	datab => \Gate2|y_present.C~regout\,
	datac => \Gate2|TC_RST~regout\,
	datad => \Gate1|last~regout\,
	combout => \Gate2|Selector11~0_combout\);

-- Location: LCCOMB_X35_Y12_N24
\Gate2|Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector11~2_combout\ = ((\Gate2|Selector11~1_combout\) # (\Gate2|Selector11~0_combout\)) # (!\Gate2|y_present.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|y_present.A~regout\,
	datac => \Gate2|Selector11~1_combout\,
	datad => \Gate2|Selector11~0_combout\,
	combout => \Gate2|Selector11~2_combout\);

-- Location: LCCOMB_X34_Y14_N6
\Gate2|Selector11~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector11~3_combout\ = (\Gate2|Selector11~2_combout\) # ((\Gate2|TC_RST~regout\ & \Gate2|Selector17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Selector11~2_combout\,
	datac => \Gate2|TC_RST~regout\,
	datad => \Gate2|Selector17~3_combout\,
	combout => \Gate2|Selector11~3_combout\);

-- Location: LCFF_X34_Y14_N7
\Gate2|TC_RST\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector11~3_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|TC_RST~regout\);

-- Location: LCFF_X33_Y12_N25
\Gate1|TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR1~5_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR1\(0));

-- Location: LCCOMB_X33_Y12_N12
\Gate1|TM_ADDR1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR1~4_combout\ = (\Gate1|TM_ADDR1\(1) & ((\Gate1|TM_ADDR1\(2) $ (\Gate1|TM_ADDR1\(0))))) # (!\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1\(2) & ((\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\) # (!\Gate1|TM_ADDR1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|TM_ADDR1\(1),
	datab => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	datac => \Gate1|TM_ADDR1\(2),
	datad => \Gate1|TM_ADDR1\(0),
	combout => \Gate1|TM_ADDR1~4_combout\);

-- Location: LCFF_X33_Y12_N13
\Gate1|TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR1~4_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR1\(2));

-- Location: LCCOMB_X33_Y12_N28
\Gate1|TM_ADDR1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|TM_ADDR1~3_combout\ = (\Gate1|TM_ADDR1\(1) & ((!\Gate1|TM_ADDR1\(0)))) # (!\Gate1|TM_ADDR1\(1) & (!\Gate1|TM_ADDR1\(2) & \Gate1|TM_ADDR1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(2),
	datac => \Gate1|TM_ADDR1\(1),
	datad => \Gate1|TM_ADDR1\(0),
	combout => \Gate1|TM_ADDR1~3_combout\);

-- Location: LCFF_X33_Y12_N29
\Gate1|TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|TM_ADDR1~3_combout\,
	aclr => \Gate2|TC_RST~regout\,
	ena => \Gate1|TM_ADDR1[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|TM_ADDR1\(1));

-- Location: LCCOMB_X33_Y12_N4
\Gate1|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Equal2~0_combout\ = (!\Gate1|TM_ADDR1\(1) & (\Gate1|TM_ADDR1\(0) & \Gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate1|TM_ADDR1\(1),
	datac => \Gate1|TM_ADDR1\(0),
	datad => \Gate1|TM_ADDR1\(2),
	combout => \Gate1|Equal2~0_combout\);

-- Location: LCCOMB_X32_Y14_N18
\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ = (\Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & (\Gate1|Equal2~0_combout\ & (\Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & 
-- \Gate1|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|ComputeScore|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate1|Equal2~0_combout\,
	datac => \Gate3|ComputeScore|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate1|Equal3~0_combout\,
	combout => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\);

-- Location: LCCOMB_X35_Y12_N22
\Gate1|last~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|last~2_combout\ = (\Gate1|last~regout\) # ((!\Gate2|TC_RST~regout\ & (\Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\ & \Gate2|TC_EN~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|TC_RST~regout\,
	datab => \Gate3|ComputeScore|Gate2|Gate14|num1s[2]~0_combout\,
	datac => \Gate1|last~regout\,
	datad => \Gate2|TC_EN~regout\,
	combout => \Gate1|last~2_combout\);

-- Location: LCFF_X35_Y12_N23
\Gate1|last\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate1|last~2_combout\,
	aclr => \Gate2|TC_RST~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate1|last~regout\);

-- Location: LCCOMB_X34_Y12_N24
\Gate2|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector4~2_combout\ = (\Gate2|y_present.D~regout\ & (!\Ready~combout\)) # (!\Gate2|y_present.D~regout\ & (((\Gate1|last~regout\ & \Gate2|y_present.C~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ready~combout\,
	datab => \Gate1|last~regout\,
	datac => \Gate2|y_present.D~regout\,
	datad => \Gate2|y_present.C~regout\,
	combout => \Gate2|Selector4~2_combout\);

-- Location: LCCOMB_X34_Y12_N14
\Gate2|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector4~3_combout\ = (!\Gate2|y_present.J~regout\ & (!\Gate2|y_present.E~regout\ & (\Gate2|Selector4~2_combout\ & !\Gate2|y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.J~regout\,
	datab => \Gate2|y_present.E~regout\,
	datac => \Gate2|Selector4~2_combout\,
	datad => \Gate2|y_present.G~regout\,
	combout => \Gate2|Selector4~3_combout\);

-- Location: LCFF_X34_Y12_N15
\Gate2|y_present.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector4~3_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|y_present.D~regout\);

-- Location: LCCOMB_X34_Y12_N8
\Gate2|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Selector15~1_combout\ = (!\Gate2|Selector15~0_combout\ & ((\Gate2|GR_SEL~regout\) # ((!\Gate2|y_present.D~regout\ & \Gate2|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Selector15~0_combout\,
	datab => \Gate2|y_present.D~regout\,
	datac => \Gate2|GR_SEL~regout\,
	datad => \Gate2|Selector10~0_combout\,
	combout => \Gate2|Selector15~1_combout\);

-- Location: LCFF_X34_Y12_N9
\Gate2|GR_SEL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Selector15~1_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|GR_SEL~regout\);

-- Location: LCCOMB_X33_Y12_N30
\Gate3|d1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|d1[2]~2_combout\ = (\Gate2|GR_SEL~regout\ & \Gate1|TM_ADDR1\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|GR_SEL~regout\,
	datac => \Gate1|TM_ADDR1\(2),
	combout => \Gate3|d1[2]~2_combout\);

-- Location: LCFF_X33_Y14_N13
\Gate3|GuessRegister1|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \Gate3|d1[2]~2_combout\,
	sload => VCC,
	ena => \Gate2|GR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate3|GuessRegister1|q\(2));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[2]~I\ : cycloneii_io
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
	padio => ww_input1(2),
	combout => \input1~combout\(2));

-- Location: LCCOMB_X49_Y12_N28
\seg1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg1[2]~2_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(2)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister1|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister1|q\(2),
	datad => \input1~combout\(2),
	combout => \seg1[2]~2_combout\);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[1]~I\ : cycloneii_io
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
	padio => ww_input1(1),
	combout => \input1~combout\(1));

-- Location: LCCOMB_X49_Y12_N14
\seg1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg1[1]~1_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(1)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister1|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister1|q\(1),
	datad => \input1~combout\(1),
	combout => \seg1[1]~1_combout\);

-- Location: LCCOMB_X35_Y12_N20
\Gate2|Display~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Display~0_combout\ = (\Gate2|Display~regout\) # ((\Gate2|y_present.D~regout\ & !\Ready~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|y_present.D~regout\,
	datac => \Gate2|Display~regout\,
	datad => \Ready~combout\,
	combout => \Gate2|Display~0_combout\);

-- Location: LCFF_X35_Y12_N21
\Gate2|Display\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Gate2|Display~0_combout\,
	aclr => \ALT_INV_Start~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Gate2|Display~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input1[0]~I\ : cycloneii_io
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
	padio => ww_input1(0),
	combout => \input1~combout\(0));

-- Location: LCCOMB_X49_Y12_N20
\seg1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg1[0]~0_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(0)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister1|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister1|q\(0),
	datad => \input1~combout\(0),
	combout => \seg1[0]~0_combout\);

-- Location: LCCOMB_X49_Y8_N16
\Display1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux6~0_combout\ = (\seg1[1]~1_combout\) # ((\seg1[2]~2_combout\ & ((\seg1[0]~0_combout\))) # (!\seg1[2]~2_combout\ & (!\Gate2|Display~regout\ & !\seg1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y8_N10
\Display1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux5~0_combout\ = (\seg1[2]~2_combout\ & (\seg1[1]~1_combout\ $ (((!\seg1[0]~0_combout\))))) # (!\seg1[2]~2_combout\ & ((\seg1[1]~1_combout\) # ((\seg1[0]~0_combout\) # (!\Gate2|Display~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y8_N12
\Display1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux4~0_combout\ = (\seg1[2]~2_combout\) # ((\seg1[0]~0_combout\) # ((!\seg1[1]~1_combout\ & !\Gate2|Display~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y8_N22
\Display1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux3~0_combout\ = (\seg1[2]~2_combout\ & (\seg1[1]~1_combout\ $ (((\seg1[0]~0_combout\))))) # (!\seg1[2]~2_combout\ & ((\seg1[1]~1_combout\) # ((!\Gate2|Display~regout\ & !\seg1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y8_N0
\Display1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux2~0_combout\ = (!\seg1[0]~0_combout\ & ((\seg1[1]~1_combout\) # ((!\seg1[2]~2_combout\ & !\Gate2|Display~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y8_N6
\Display1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux1~0_combout\ = (\seg1[2]~2_combout\ & (((!\seg1[0]~0_combout\)) # (!\seg1[1]~1_combout\))) # (!\seg1[2]~2_combout\ & (!\seg1[1]~1_combout\ & (!\Gate2|Display~regout\ & !\seg1[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg1[2]~2_combout\,
	datab => \seg1[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y8_N4
\Display1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display1|Mux0~0_combout\ = (\seg1[1]~1_combout\ & (\seg1[2]~2_combout\ & \seg1[0]~0_combout\)) # (!\seg1[1]~1_combout\ & (!\seg1[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg1[1]~1_combout\,
	datac => \seg1[2]~2_combout\,
	datad => \seg1[0]~0_combout\,
	combout => \Display1|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y12_N2
\seg2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg2[0]~0_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(0)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister2|q\(0),
	datad => \input1~combout\(0),
	combout => \seg2[0]~0_combout\);

-- Location: LCCOMB_X49_Y12_N24
\seg2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg2[2]~1_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(2)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datab => \Gate3|GuessRegister2|q\(2),
	datad => \input1~combout\(2),
	combout => \seg2[2]~1_combout\);

-- Location: LCCOMB_X49_Y12_N18
\seg2[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg2[1]~2_combout\ = (\Gate2|Display~regout\ & ((\input1~combout\(1)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister2|q\(1),
	datad => \input1~combout\(1),
	combout => \seg2[1]~2_combout\);

-- Location: LCCOMB_X49_Y12_N8
\Display2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux6~0_combout\ = (!\seg2[1]~2_combout\ & (\seg2[0]~0_combout\ $ (\seg2[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y12_N26
\Display2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux5~0_combout\ = (\seg2[2]~1_combout\ & (\seg2[0]~0_combout\ $ (\seg2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y12_N4
\Display2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux4~0_combout\ = (!\seg2[0]~0_combout\ & (!\seg2[2]~1_combout\ & \seg2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y12_N6
\Display2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux3~0_combout\ = (\seg2[0]~0_combout\ & (\seg2[2]~1_combout\ $ (!\seg2[1]~2_combout\))) # (!\seg2[0]~0_combout\ & (\seg2[2]~1_combout\ & !\seg2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y12_N0
\Display2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux2~0_combout\ = (\seg2[0]~0_combout\) # ((\seg2[2]~1_combout\ & !\seg2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y12_N22
\Display2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux1~0_combout\ = (\seg2[0]~0_combout\ & ((\seg2[1]~2_combout\) # (!\seg2[2]~1_combout\))) # (!\seg2[0]~0_combout\ & (!\seg2[2]~1_combout\ & \seg2[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y12_N16
\Display2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display2|Mux0~0_combout\ = (\seg2[2]~1_combout\ & (\seg2[0]~0_combout\ & \seg2[1]~2_combout\)) # (!\seg2[2]~1_combout\ & ((!\seg2[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seg2[0]~0_combout\,
	datac => \seg2[2]~1_combout\,
	datad => \seg2[1]~2_combout\,
	combout => \Display2|Mux0~0_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[2]~I\ : cycloneii_io
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
	padio => ww_input2(2),
	combout => \input2~combout\(2));

-- Location: LCCOMB_X49_Y15_N12
\seg3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg3[2]~2_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(2)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister3|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|GuessRegister3|q\(2),
	datac => \input2~combout\(2),
	datad => \Gate2|Display~regout\,
	combout => \seg3[2]~2_combout\);

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[1]~I\ : cycloneii_io
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
	padio => ww_input2(1),
	combout => \input2~combout\(1));

-- Location: LCCOMB_X49_Y15_N2
\seg3[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg3[1]~1_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(1)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister3|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister3|q\(1),
	datad => \input2~combout\(1),
	combout => \seg3[1]~1_combout\);

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input2[0]~I\ : cycloneii_io
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
	padio => ww_input2(0),
	combout => \input2~combout\(0));

-- Location: LCCOMB_X49_Y15_N0
\seg3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg3[0]~0_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(0)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister3|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister3|q\(0),
	datab => \Gate2|Display~regout\,
	datad => \input2~combout\(0),
	combout => \seg3[0]~0_combout\);

-- Location: LCCOMB_X49_Y16_N12
\Display3|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux6~0_combout\ = (\seg3[1]~1_combout\) # ((\seg3[2]~2_combout\ & ((\seg3[0]~0_combout\))) # (!\seg3[2]~2_combout\ & (!\Gate2|Display~regout\ & !\seg3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y16_N2
\Display3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux5~0_combout\ = (\seg3[2]~2_combout\ & (\seg3[1]~1_combout\ $ (((!\seg3[0]~0_combout\))))) # (!\seg3[2]~2_combout\ & ((\seg3[1]~1_combout\) # ((\seg3[0]~0_combout\) # (!\Gate2|Display~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y16_N24
\Display3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux4~0_combout\ = (\seg3[2]~2_combout\) # ((\seg3[0]~0_combout\) # ((!\seg3[1]~1_combout\ & !\Gate2|Display~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y16_N6
\Display3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux3~0_combout\ = (\seg3[2]~2_combout\ & (\seg3[1]~1_combout\ $ (((\seg3[0]~0_combout\))))) # (!\seg3[2]~2_combout\ & ((\seg3[1]~1_combout\) # ((!\Gate2|Display~regout\ & !\seg3[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y16_N0
\Display3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux2~0_combout\ = (!\seg3[0]~0_combout\ & ((\seg3[1]~1_combout\) # ((!\seg3[2]~2_combout\ & !\Gate2|Display~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y16_N10
\Display3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux1~0_combout\ = (\seg3[2]~2_combout\ & (((!\seg3[0]~0_combout\)) # (!\seg3[1]~1_combout\))) # (!\seg3[2]~2_combout\ & (!\seg3[1]~1_combout\ & (!\Gate2|Display~regout\ & !\seg3[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datac => \Gate2|Display~regout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y16_N16
\Display3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display3|Mux0~0_combout\ = (\seg3[2]~2_combout\ & (\seg3[1]~1_combout\ & \seg3[0]~0_combout\)) # (!\seg3[2]~2_combout\ & (!\seg3[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg3[2]~2_combout\,
	datab => \seg3[1]~1_combout\,
	datad => \seg3[0]~0_combout\,
	combout => \Display3|Mux0~0_combout\);

-- Location: LCCOMB_X49_Y15_N10
\seg4[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg4[1]~2_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(1)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister4|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister4|q\(1),
	datad => \input2~combout\(1),
	combout => \seg4[1]~2_combout\);

-- Location: LCCOMB_X49_Y15_N30
\seg4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg4[0]~0_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(0)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister4|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Display~regout\,
	datac => \Gate3|GuessRegister4|q\(0),
	datad => \input2~combout\(0),
	combout => \seg4[0]~0_combout\);

-- Location: LCCOMB_X49_Y15_N28
\seg4[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \seg4[2]~1_combout\ = (\Gate2|Display~regout\ & ((\input2~combout\(2)))) # (!\Gate2|Display~regout\ & (\Gate3|GuessRegister4|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|GuessRegister4|q\(2),
	datac => \input2~combout\(2),
	datad => \Gate2|Display~regout\,
	combout => \seg4[2]~1_combout\);

-- Location: LCCOMB_X49_Y15_N4
\Display4|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux6~0_combout\ = (!\seg4[1]~2_combout\ & (\seg4[0]~0_combout\ $ (\seg4[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux6~0_combout\);

-- Location: LCCOMB_X49_Y15_N22
\Display4|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux5~0_combout\ = (\seg4[2]~1_combout\ & (\seg4[1]~2_combout\ $ (\seg4[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux5~0_combout\);

-- Location: LCCOMB_X49_Y15_N20
\Display4|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux4~0_combout\ = (\seg4[1]~2_combout\ & (!\seg4[0]~0_combout\ & !\seg4[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux4~0_combout\);

-- Location: LCCOMB_X49_Y15_N18
\Display4|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux3~0_combout\ = (\seg4[1]~2_combout\ & (\seg4[0]~0_combout\ & \seg4[2]~1_combout\)) # (!\seg4[1]~2_combout\ & (\seg4[0]~0_combout\ $ (\seg4[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux3~0_combout\);

-- Location: LCCOMB_X49_Y15_N24
\Display4|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux2~0_combout\ = (\seg4[0]~0_combout\) # ((!\seg4[1]~2_combout\ & \seg4[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux2~0_combout\);

-- Location: LCCOMB_X49_Y15_N6
\Display4|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux1~0_combout\ = (\seg4[1]~2_combout\ & ((\seg4[0]~0_combout\) # (!\seg4[2]~1_combout\))) # (!\seg4[1]~2_combout\ & (\seg4[0]~0_combout\ & !\seg4[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux1~0_combout\);

-- Location: LCCOMB_X49_Y15_N16
\Display4|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Display4|Mux0~0_combout\ = (\seg4[1]~2_combout\ & (\seg4[0]~0_combout\ & \seg4[2]~1_combout\)) # (!\seg4[1]~2_combout\ & ((!\seg4[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seg4[1]~2_combout\,
	datab => \seg4[0]~0_combout\,
	datad => \seg4[2]~1_combout\,
	combout => \Display4|Mux0~0_combout\);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P_generated~I\ : cycloneii_io
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
	padio => ww_P_generated);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\switch_LED~I\ : cycloneii_io
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
	padio => ww_switch_LED);

-- Location: PIN_T15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mode~I\ : cycloneii_io
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
	padio => ww_mode);

-- Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[0]~I\ : cycloneii_io
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
	padio => ww_sw(0));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[1]~I\ : cycloneii_io
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
	padio => ww_sw(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[2]~I\ : cycloneii_io
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
	padio => ww_sw(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\sw[3]~I\ : cycloneii_io
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
	padio => ww_sw(3));

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\modify_G~I\ : cycloneii_io
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
	padio => ww_modify_G);

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[0]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[1]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(1));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[2]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(2));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[3]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(3));

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[4]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(4));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[5]~I\ : cycloneii_io
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
	datain => \Display1|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(5));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment1[6]~I\ : cycloneii_io
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
	datain => \Display1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(6));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[0]~I\ : cycloneii_io
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
	datain => \Display2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[1]~I\ : cycloneii_io
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
	datain => \Display2|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(1));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[2]~I\ : cycloneii_io
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
	datain => \Display2|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(2));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[3]~I\ : cycloneii_io
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
	datain => \Display2|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(3));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[4]~I\ : cycloneii_io
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
	datain => \Display2|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(4));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[5]~I\ : cycloneii_io
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
	datain => \Display2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(5));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment2[6]~I\ : cycloneii_io
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
	datain => \Display2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(6));

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[0]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(0));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[1]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(1));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[2]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[3]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(3));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[4]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(4));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[5]~I\ : cycloneii_io
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
	datain => \Display3|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(5));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment3[6]~I\ : cycloneii_io
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
	datain => \Display3|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(6));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[0]~I\ : cycloneii_io
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
	datain => \Display4|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[1]~I\ : cycloneii_io
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
	datain => \Display4|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(1));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[2]~I\ : cycloneii_io
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
	datain => \Display4|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(2));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[3]~I\ : cycloneii_io
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
	datain => \Display4|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(3));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[4]~I\ : cycloneii_io
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
	datain => \Display4|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(4));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[5]~I\ : cycloneii_io
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
	datain => \Display4|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(5));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\segment4[6]~I\ : cycloneii_io
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
	datain => \Display4|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(6));
END structure;


