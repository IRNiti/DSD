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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/23/2015 16:40:54"

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

ENTITY 	g10_mastermind_score IS
    PORT (
	P1 : IN std_logic_vector(2 DOWNTO 0);
	P2 : IN std_logic_vector(2 DOWNTO 0);
	P3 : IN std_logic_vector(2 DOWNTO 0);
	P4 : IN std_logic_vector(2 DOWNTO 0);
	G1 : IN std_logic_vector(2 DOWNTO 0);
	G2 : IN std_logic_vector(2 DOWNTO 0);
	G3 : IN std_logic_vector(2 DOWNTO 0);
	G4 : IN std_logic_vector(2 DOWNTO 0);
	exact_match_score : OUT std_logic_vector(2 DOWNTO 0);
	color_match_score : OUT std_logic_vector(2 DOWNTO 0);
	score_code : OUT std_logic_vector(3 DOWNTO 0)
	);
END g10_mastermind_score;

-- Design Ports Information
-- exact_match_score[0]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- exact_match_score[1]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- exact_match_score[2]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- color_match_score[0]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- color_match_score[1]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- color_match_score[2]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- score_code[0]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- score_code[1]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- score_code[2]	=>  Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- score_code[3]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P1[0]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G1[0]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P1[1]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G1[1]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P1[2]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G1[2]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P3[0]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G3[0]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P3[1]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G3[1]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P3[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G3[2]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P2[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G2[0]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P2[1]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G2[1]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P2[2]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G2[2]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P4[0]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G4[0]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P4[1]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G4[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P4[2]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- G4[2]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g10_mastermind_score IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_P1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_P4 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_G1 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_G2 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_G3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_G4 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_exact_match_score : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_color_match_score : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_score_code : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate1|Gate3|AeqB~0_combout\ : std_logic;
SIGNAL \Gate2|Gate18|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate11|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate17|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate28|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate20|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate20|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate26|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate13|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate16|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate15|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate21|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate30|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate21|min[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate2|Gate28|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate1|Gate2|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate2|AeqB~combout\ : std_logic;
SIGNAL \Gate1|Gate1|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate1|AeqB~combout\ : std_logic;
SIGNAL \Gate1|Gate3|AeqB~combout\ : std_logic;
SIGNAL \Gate1|Gate4|AeqB~0_combout\ : std_logic;
SIGNAL \Gate1|Gate4|AeqB~combout\ : std_logic;
SIGNAL \Gate1|Gate5|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate1|Gate5|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate9|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate15|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate9|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate21|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate21|min[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate16|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate10|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate22|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate22|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate10|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate22|min[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate26|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate14|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate19|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate13|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate25|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate25|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate19|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate25|min[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate29|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate31|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate21|NgtM~combout\ : std_logic;
SIGNAL \Gate2|Gate27|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \Gate2|Gate22|NgtM~combout\ : std_logic;
SIGNAL \Gate2|Gate22|min[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate27|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate2|Gate31|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate2|Gate31|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \Gate2|Gate12|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate12|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate18|num1s[0]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate24|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate24|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate24|min[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate11|num1s[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate23|NgtM~1_combout\ : std_logic;
SIGNAL \Gate2|Gate23|NgtM~0_combout\ : std_logic;
SIGNAL \Gate2|Gate17|num1s[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate23|min[0]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate28|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate2|Gate23|NgtM~combout\ : std_logic;
SIGNAL \Gate2|Gate23|min[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate28|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate2|Gate29|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \Gate2|Gate14|num1s[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate26|min[1]~0_combout\ : std_logic;
SIGNAL \Gate2|Gate25|NgtM~combout\ : std_logic;
SIGNAL \Gate2|Gate25|min[1]~1_combout\ : std_logic;
SIGNAL \Gate2|Gate29|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \Gate2|Gate34|auto_generated|op_1~11_combout\ : std_logic;
SIGNAL \Gate3|Mux3~0_combout\ : std_logic;
SIGNAL \Gate3|Mux1~0_combout\ : std_logic;
SIGNAL \Gate3|Mux3~1_combout\ : std_logic;
SIGNAL \Gate3|Mux2~0_combout\ : std_logic;
SIGNAL \Gate3|Mux2~1_combout\ : std_logic;
SIGNAL \Gate3|Mux1~1_combout\ : std_logic;
SIGNAL \Gate3|Mux1~2_combout\ : std_logic;
SIGNAL \Gate3|Mux0~0_combout\ : std_logic;
SIGNAL \Gate3|Mux0~1_combout\ : std_logic;
SIGNAL \Gate2|Gate2|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate2|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate2|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate3|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate3|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate3|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate1|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate7|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate4|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate15|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \P4~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate8|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate5|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate13|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \P3~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate8|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate7|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate19|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate14|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G3~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate10|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate5|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate16|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate6|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate18|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate4|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate4|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G4~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate9|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate5|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate5|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate1|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate20|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \G1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate12|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \P2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate8|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \G2~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate11|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate6|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate7|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate17|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate2|Gate1|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Gate2|Gate6|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \P1~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Gate1|Gate5|ALT_INV_num1s\ : std_logic_vector(2 DOWNTO 2);
SIGNAL \Gate2|Gate34|auto_generated|ALT_INV_op_1~1_combout\ : std_logic;

BEGIN

ww_P1 <= P1;
ww_P2 <= P2;
ww_P3 <= P3;
ww_P4 <= P4;
ww_G1 <= G1;
ww_G2 <= G2;
ww_G3 <= G3;
ww_G4 <= G4;
exact_match_score <= ww_exact_match_score;
color_match_score <= ww_color_match_score;
score_code <= ww_score_code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Gate1|Gate5|ALT_INV_num1s\(2) <= NOT \Gate1|Gate5|num1s\(2);
\Gate2|Gate34|auto_generated|ALT_INV_op_1~1_combout\ <= NOT \Gate2|Gate34|auto_generated|op_1~1_combout\;

-- Location: LCCOMB_X42_Y20_N24
\Gate1|Gate3|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|AeqB~0_combout\ = (\G3~combout\(0) & ((\P3~combout\(1) $ (\G3~combout\(1))) # (!\P3~combout\(0)))) # (!\G3~combout\(0) & ((\P3~combout\(0)) # (\P3~combout\(1) $ (\G3~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(0),
	datab => \P3~combout\(1),
	datac => \P3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate1|Gate3|AeqB~0_combout\);

-- Location: LCCOMB_X42_Y20_N4
\Gate2|Gate3|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode41w\(3) = (!\P3~combout\(2) & (\P3~combout\(0) & \P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X38_Y22_N24
\Gate2|Gate12|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate12|num1s\(2) = (\Gate2|Gate3|auto_generated|w_anode41w\(3) & (\Gate2|Gate2|auto_generated|w_anode41w\(3) & (\Gate2|Gate1|auto_generated|w_anode41w\(3) & \Gate2|Gate4|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate12|num1s\(2));

-- Location: LCCOMB_X39_Y21_N26
\Gate2|Gate18|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate18|num1s[1]~0_combout\ = (\Gate2|Gate7|auto_generated|w_anode41w\(3) & ((\Gate2|Gate6|auto_generated|w_anode41w\(3) & ((!\Gate2|Gate8|auto_generated|w_anode41w\(3)) # (!\Gate2|Gate5|auto_generated|w_anode41w\(3)))) # 
-- (!\Gate2|Gate6|auto_generated|w_anode41w\(3) & ((\Gate2|Gate5|auto_generated|w_anode41w\(3)) # (\Gate2|Gate8|auto_generated|w_anode41w\(3)))))) # (!\Gate2|Gate7|auto_generated|w_anode41w\(3) & ((\Gate2|Gate6|auto_generated|w_anode41w\(3) & 
-- ((\Gate2|Gate5|auto_generated|w_anode41w\(3)) # (\Gate2|Gate8|auto_generated|w_anode41w\(3)))) # (!\Gate2|Gate6|auto_generated|w_anode41w\(3) & (\Gate2|Gate5|auto_generated|w_anode41w\(3) & \Gate2|Gate8|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate6|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate5|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate8|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate18|num1s[1]~0_combout\);

-- Location: LCCOMB_X39_Y22_N6
\Gate2|Gate6|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode30w\(3) = (!\G2~combout\(2) & (!\G2~combout\(0) & \G2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(2),
	datab => \G2~combout\(0),
	datac => \G2~combout\(1),
	combout => \Gate2|Gate6|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X42_Y20_N26
\Gate2|Gate3|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode30w\(3) = (!\P3~combout\(2) & (!\P3~combout\(0) & \P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X39_Y22_N4
\Gate2|Gate11|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate11|num1s[0]~0_combout\ = \Gate2|Gate3|auto_generated|w_anode30w\(3) $ (\Gate2|Gate2|auto_generated|w_anode30w\(3) $ (\Gate2|Gate1|auto_generated|w_anode30w\(3) $ (\Gate2|Gate4|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate11|num1s[0]~0_combout\);

-- Location: LCCOMB_X39_Y22_N2
\Gate2|Gate17|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate17|num1s[1]~1_combout\ = (\Gate2|Gate6|auto_generated|w_anode30w\(3) & ((\Gate2|Gate7|auto_generated|w_anode30w\(3) & ((!\Gate2|Gate5|auto_generated|w_anode30w\(3)) # (!\Gate2|Gate8|auto_generated|w_anode30w\(3)))) # 
-- (!\Gate2|Gate7|auto_generated|w_anode30w\(3) & ((\Gate2|Gate8|auto_generated|w_anode30w\(3)) # (\Gate2|Gate5|auto_generated|w_anode30w\(3)))))) # (!\Gate2|Gate6|auto_generated|w_anode30w\(3) & ((\Gate2|Gate7|auto_generated|w_anode30w\(3) & 
-- ((\Gate2|Gate8|auto_generated|w_anode30w\(3)) # (\Gate2|Gate5|auto_generated|w_anode30w\(3)))) # (!\Gate2|Gate7|auto_generated|w_anode30w\(3) & (\Gate2|Gate8|auto_generated|w_anode30w\(3) & \Gate2|Gate5|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate6|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate7|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate5|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate17|num1s[1]~1_combout\);

-- Location: LCCOMB_X38_Y22_N8
\Gate2|Gate28|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate28|auto_generated|op_1~0_combout\ = \Gate2|Gate23|min[0]~0_combout\ $ (((\Gate2|Gate24|NgtM~1_combout\ & ((\Gate2|Gate18|num1s[0]~1_combout\))) # (!\Gate2|Gate24|NgtM~1_combout\ & (\Gate2|Gate12|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate24|NgtM~1_combout\,
	datab => \Gate2|Gate23|min[0]~0_combout\,
	datac => \Gate2|Gate12|num1s[0]~1_combout\,
	datad => \Gate2|Gate18|num1s[0]~1_combout\,
	combout => \Gate2|Gate28|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X39_Y21_N8
\Gate2|Gate1|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ = (\P1~combout\(0) & (!\P1~combout\(1) & \P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X42_Y20_N30
\Gate2|Gate7|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ = (\G3~combout\(2) & (\G3~combout\(0) & !\G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X42_Y21_N6
\Gate2|Gate20|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate20|num1s[1]~0_combout\ = (\Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((!\Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\) # (\Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))) # 
-- (!\Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\) # (\Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))) # 
-- (!\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate20|num1s[1]~0_combout\);

-- Location: LCCOMB_X42_Y21_N26
\Gate2|Gate20|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate20|num1s[0]~1_combout\ = \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate20|num1s[0]~1_combout\);

-- Location: LCCOMB_X42_Y21_N12
\Gate2|Gate26|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate26|NgtM~0_combout\ = (\Gate2|Gate14|num1s[1]~0_combout\ & (((\Gate2|Gate14|num1s[0]~1_combout\ & !\Gate2|Gate20|num1s[0]~1_combout\)) # (!\Gate2|Gate20|num1s[1]~0_combout\))) # (!\Gate2|Gate14|num1s[1]~0_combout\ & 
-- (\Gate2|Gate14|num1s[0]~1_combout\ & (!\Gate2|Gate20|num1s[0]~1_combout\ & !\Gate2|Gate20|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate14|num1s[0]~1_combout\,
	datab => \Gate2|Gate20|num1s[0]~1_combout\,
	datac => \Gate2|Gate14|num1s[1]~0_combout\,
	datad => \Gate2|Gate20|num1s[1]~0_combout\,
	combout => \Gate2|Gate26|NgtM~0_combout\);

-- Location: LCCOMB_X42_Y20_N16
\Gate2|Gate7|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ = (\G3~combout\(2) & (!\G3~combout\(0) & !\G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X39_Y21_N6
\Gate2|Gate1|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ = (!\P1~combout\(0) & (!\P1~combout\(1) & \P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X43_Y21_N10
\Gate2|Gate13|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate13|num1s[0]~0_combout\ = \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate13|num1s[0]~0_combout\);

-- Location: LCCOMB_X43_Y21_N12
\Gate2|Gate13|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate13|num1s\(2) = (\Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate13|num1s\(2));

-- Location: LCCOMB_X42_Y20_N28
\Gate2|Gate7|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ = (!\G3~combout\(2) & (\G3~combout\(0) & !\G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y21_N10
\Gate2|Gate16|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate16|num1s[0]~0_combout\ = \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate16|num1s[0]~0_combout\);

-- Location: LCCOMB_X39_Y21_N10
\Gate2|Gate1|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ = (\P1~combout\(0) & (!\P1~combout\(1) & !\P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y21_N6
\Gate2|Gate10|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate10|num1s\(2) = (\Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate10|num1s\(2));

-- Location: LCCOMB_X39_Y21_N28
\Gate2|Gate5|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode1w\(3) = (\G1~combout\(2)) # ((\G1~combout\(1)) # (\G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X39_Y22_N14
\Gate2|Gate2|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode1w\(3) = (\P2~combout\(2)) # ((\P2~combout\(1)) # (\P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X40_Y22_N16
\Gate2|Gate15|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate15|num1s[1]~1_combout\ = (\Gate2|Gate5|auto_generated|w_anode1w\(3) & ((\Gate2|Gate8|auto_generated|w_anode1w\(3) & (!\Gate2|Gate7|auto_generated|w_anode1w\(3) & !\Gate2|Gate6|auto_generated|w_anode1w\(3))) # 
-- (!\Gate2|Gate8|auto_generated|w_anode1w\(3) & ((!\Gate2|Gate6|auto_generated|w_anode1w\(3)) # (!\Gate2|Gate7|auto_generated|w_anode1w\(3)))))) # (!\Gate2|Gate5|auto_generated|w_anode1w\(3) & ((\Gate2|Gate8|auto_generated|w_anode1w\(3) & 
-- ((!\Gate2|Gate6|auto_generated|w_anode1w\(3)) # (!\Gate2|Gate7|auto_generated|w_anode1w\(3)))) # (!\Gate2|Gate8|auto_generated|w_anode1w\(3) & ((\Gate2|Gate7|auto_generated|w_anode1w\(3)) # (\Gate2|Gate6|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate8|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate6|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate15|num1s[1]~1_combout\);

-- Location: LCCOMB_X40_Y22_N6
\Gate2|Gate21|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate21|NgtM~1_combout\ = (\Gate2|Gate15|num1s[1]~1_combout\ & (\Gate2|Gate9|num1s[1]~1_combout\ & (\Gate2|Gate15|num1s\(2) $ (!\Gate2|Gate9|num1s\(2))))) # (!\Gate2|Gate15|num1s[1]~1_combout\ & (!\Gate2|Gate9|num1s[1]~1_combout\ & 
-- (\Gate2|Gate15|num1s\(2) $ (!\Gate2|Gate9|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate15|num1s[1]~1_combout\,
	datab => \Gate2|Gate15|num1s\(2),
	datac => \Gate2|Gate9|num1s[1]~1_combout\,
	datad => \Gate2|Gate9|num1s\(2),
	combout => \Gate2|Gate21|NgtM~1_combout\);

-- Location: LCCOMB_X42_Y22_N12
\Gate2|Gate30|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate30|auto_generated|op_1~0_combout\ = \Gate2|Gate28|auto_generated|op_1~2_combout\ $ (\Gate2|Gate29|auto_generated|op_1~2_combout\ $ (((\Gate2|Gate28|auto_generated|op_1~0_combout\ & \Gate2|Gate29|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \Gate2|Gate28|auto_generated|op_1~2_combout\,
	datad => \Gate2|Gate29|auto_generated|op_1~2_combout\,
	combout => \Gate2|Gate30|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X40_Y22_N20
\Gate2|Gate21|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate21|min[1]~1_combout\ = (\Gate2|Gate21|NgtM~combout\ & (\Gate2|Gate15|num1s[1]~1_combout\)) # (!\Gate2|Gate21|NgtM~combout\ & ((\Gate2|Gate9|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate15|num1s[1]~1_combout\,
	datac => \Gate2|Gate9|num1s[1]~1_combout\,
	datad => \Gate2|Gate21|NgtM~combout\,
	combout => \Gate2|Gate21|min[1]~1_combout\);

-- Location: LCCOMB_X40_Y22_N10
\Gate2|Gate34|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~2_combout\ = (\Gate2|Gate16|num1s\(2) & (\Gate2|Gate10|num1s\(2) $ (((\Gate2|Gate15|num1s\(2) & \Gate2|Gate9|num1s\(2)))))) # (!\Gate2|Gate16|num1s\(2) & (\Gate2|Gate15|num1s\(2) & ((\Gate2|Gate9|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate16|num1s\(2),
	datab => \Gate2|Gate15|num1s\(2),
	datac => \Gate2|Gate10|num1s\(2),
	datad => \Gate2|Gate9|num1s\(2),
	combout => \Gate2|Gate34|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X38_Y22_N6
\Gate2|Gate28|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate28|auto_generated|op_1~3_combout\ = (\Gate2|Gate24|min[1]~0_combout\ & ((\Gate2|Gate28|auto_generated|op_1~1_combout\) # (\Gate2|Gate23|min[1]~1_combout\))) # (!\Gate2|Gate24|min[1]~0_combout\ & (\Gate2|Gate28|auto_generated|op_1~1_combout\ & 
-- \Gate2|Gate23|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Gate24|min[1]~0_combout\,
	datac => \Gate2|Gate28|auto_generated|op_1~1_combout\,
	datad => \Gate2|Gate23|min[1]~1_combout\,
	combout => \Gate2|Gate28|auto_generated|op_1~3_combout\);

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P1[0]~I\ : cycloneii_io
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
	padio => ww_P1(0),
	combout => \P1~combout\(0));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G4[1]~I\ : cycloneii_io
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
	padio => ww_G4(1),
	combout => \G4~combout\(1));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P2[2]~I\ : cycloneii_io
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
	padio => ww_P2(2),
	combout => \P2~combout\(2));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P2[1]~I\ : cycloneii_io
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
	padio => ww_P2(1),
	combout => \P2~combout\(1));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G2[0]~I\ : cycloneii_io
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
	padio => ww_G2(0),
	combout => \G2~combout\(0));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P2[0]~I\ : cycloneii_io
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
	padio => ww_P2(0),
	combout => \P2~combout\(0));

-- Location: LCCOMB_X39_Y22_N8
\Gate1|Gate2|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|AeqB~0_combout\ = (\G2~combout\(1) & ((\G2~combout\(0) $ (\P2~combout\(0))) # (!\P2~combout\(1)))) # (!\G2~combout\(1) & ((\P2~combout\(1)) # (\G2~combout\(0) $ (\P2~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(1),
	datab => \P2~combout\(1),
	datac => \G2~combout\(0),
	datad => \P2~combout\(0),
	combout => \Gate1|Gate2|AeqB~0_combout\);

-- Location: LCCOMB_X39_Y22_N10
\Gate1|Gate2|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate2|AeqB~combout\ = (\Gate1|Gate2|AeqB~0_combout\) # (\G2~combout\(2) $ (\P2~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(2),
	datab => \P2~combout\(2),
	datac => \Gate1|Gate2|AeqB~0_combout\,
	combout => \Gate1|Gate2|AeqB~combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P1[2]~I\ : cycloneii_io
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
	padio => ww_P1(2),
	combout => \P1~combout\(2));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P1[1]~I\ : cycloneii_io
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
	padio => ww_P1(1),
	combout => \P1~combout\(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G1[1]~I\ : cycloneii_io
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
	padio => ww_G1(1),
	combout => \G1~combout\(1));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G1[0]~I\ : cycloneii_io
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
	padio => ww_G1(0),
	combout => \G1~combout\(0));

-- Location: LCCOMB_X39_Y21_N24
\Gate1|Gate1|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|AeqB~0_combout\ = (\P1~combout\(0) & ((\P1~combout\(1) $ (\G1~combout\(1))) # (!\G1~combout\(0)))) # (!\P1~combout\(0) & ((\G1~combout\(0)) # (\P1~combout\(1) $ (\G1~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate1|Gate1|AeqB~0_combout\);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G1[2]~I\ : cycloneii_io
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
	padio => ww_G1(2),
	combout => \G1~combout\(2));

-- Location: LCCOMB_X39_Y21_N18
\Gate1|Gate1|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate1|AeqB~combout\ = (\Gate1|Gate1|AeqB~0_combout\) # (\P1~combout\(2) $ (\G1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P1~combout\(2),
	datac => \Gate1|Gate1|AeqB~0_combout\,
	datad => \G1~combout\(2),
	combout => \Gate1|Gate1|AeqB~combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P3[2]~I\ : cycloneii_io
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
	padio => ww_P3(2),
	combout => \P3~combout\(2));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G3[2]~I\ : cycloneii_io
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
	padio => ww_G3(2),
	combout => \G3~combout\(2));

-- Location: LCCOMB_X42_Y20_N18
\Gate1|Gate3|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate3|AeqB~combout\ = (\Gate1|Gate3|AeqB~0_combout\) # (\P3~combout\(2) $ (\G3~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate3|AeqB~0_combout\,
	datac => \P3~combout\(2),
	datad => \G3~combout\(2),
	combout => \Gate1|Gate3|AeqB~combout\);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G4[0]~I\ : cycloneii_io
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
	padio => ww_G4(0),
	combout => \G4~combout\(0));

-- Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P4[0]~I\ : cycloneii_io
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
	padio => ww_P4(0),
	combout => \P4~combout\(0));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P4[1]~I\ : cycloneii_io
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
	padio => ww_P4(1),
	combout => \P4~combout\(1));

-- Location: LCCOMB_X43_Y22_N0
\Gate1|Gate4|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate4|AeqB~0_combout\ = (\G4~combout\(1) & ((\G4~combout\(0) $ (\P4~combout\(0))) # (!\P4~combout\(1)))) # (!\G4~combout\(1) & ((\P4~combout\(1)) # (\G4~combout\(0) $ (\P4~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate1|Gate4|AeqB~0_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P4[2]~I\ : cycloneii_io
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
	padio => ww_P4(2),
	combout => \P4~combout\(2));

-- Location: LCCOMB_X43_Y22_N2
\Gate1|Gate4|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate4|AeqB~combout\ = (\Gate1|Gate4|AeqB~0_combout\) # (\G4~combout\(2) $ (\P4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(2),
	datab => \Gate1|Gate4|AeqB~0_combout\,
	datad => \P4~combout\(2),
	combout => \Gate1|Gate4|AeqB~combout\);

-- Location: LCCOMB_X42_Y23_N24
\Gate1|Gate5|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate5|num1s[0]~0_combout\ = \Gate1|Gate2|AeqB~combout\ $ (\Gate1|Gate1|AeqB~combout\ $ (\Gate1|Gate3|AeqB~combout\ $ (\Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|AeqB~combout\,
	datab => \Gate1|Gate1|AeqB~combout\,
	datac => \Gate1|Gate3|AeqB~combout\,
	datad => \Gate1|Gate4|AeqB~combout\,
	combout => \Gate1|Gate5|num1s[0]~0_combout\);

-- Location: LCCOMB_X42_Y23_N18
\Gate1|Gate5|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate5|num1s[1]~1_combout\ = (\Gate1|Gate2|AeqB~combout\ & ((\Gate1|Gate1|AeqB~combout\ & (!\Gate1|Gate3|AeqB~combout\ & !\Gate1|Gate4|AeqB~combout\)) # (!\Gate1|Gate1|AeqB~combout\ & ((!\Gate1|Gate4|AeqB~combout\) # 
-- (!\Gate1|Gate3|AeqB~combout\))))) # (!\Gate1|Gate2|AeqB~combout\ & ((\Gate1|Gate1|AeqB~combout\ & ((!\Gate1|Gate4|AeqB~combout\) # (!\Gate1|Gate3|AeqB~combout\))) # (!\Gate1|Gate1|AeqB~combout\ & ((\Gate1|Gate3|AeqB~combout\) # 
-- (\Gate1|Gate4|AeqB~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|AeqB~combout\,
	datab => \Gate1|Gate1|AeqB~combout\,
	datac => \Gate1|Gate3|AeqB~combout\,
	datad => \Gate1|Gate4|AeqB~combout\,
	combout => \Gate1|Gate5|num1s[1]~1_combout\);

-- Location: LCCOMB_X42_Y23_N20
\Gate1|Gate5|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate1|Gate5|num1s\(2) = (\Gate1|Gate2|AeqB~combout\) # ((\Gate1|Gate1|AeqB~combout\) # ((\Gate1|Gate3|AeqB~combout\) # (\Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate2|AeqB~combout\,
	datab => \Gate1|Gate1|AeqB~combout\,
	datac => \Gate1|Gate3|AeqB~combout\,
	datad => \Gate1|Gate4|AeqB~combout\,
	combout => \Gate1|Gate5|num1s\(2));

-- Location: LCCOMB_X43_Y22_N26
\Gate2|Gate4|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode1w\(3) = (\P4~combout\(2)) # ((\P4~combout\(0)) # (\P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode1w\(3));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P3[0]~I\ : cycloneii_io
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
	padio => ww_P3(0),
	combout => \P3~combout\(0));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P3[1]~I\ : cycloneii_io
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
	padio => ww_P3(1),
	combout => \P3~combout\(1));

-- Location: LCCOMB_X42_Y20_N2
\Gate2|Gate3|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode1w\(3) = (\P3~combout\(2)) # ((\P3~combout\(0)) # (\P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X39_Y21_N22
\Gate2|Gate1|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode1w\(3) = (\P1~combout\(0)) # ((\P1~combout\(1)) # (\P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X40_Y22_N18
\Gate2|Gate9|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate9|num1s[0]~0_combout\ = \Gate2|Gate2|auto_generated|w_anode1w\(3) $ (\Gate2|Gate4|auto_generated|w_anode1w\(3) $ (\Gate2|Gate3|auto_generated|w_anode1w\(3) $ (\Gate2|Gate1|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate4|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate9|num1s[0]~0_combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G4[2]~I\ : cycloneii_io
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
	padio => ww_G4(2),
	combout => \G4~combout\(2));

-- Location: LCCOMB_X43_Y22_N24
\Gate2|Gate8|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode1w\(3) = (\G4~combout\(1)) # ((\G4~combout\(0)) # (\G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode1w\(3));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G3[0]~I\ : cycloneii_io
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
	padio => ww_G3(0),
	combout => \G3~combout\(0));

-- Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G3[1]~I\ : cycloneii_io
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
	padio => ww_G3(1),
	combout => \G3~combout\(1));

-- Location: LCCOMB_X42_Y20_N0
\Gate2|Gate7|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode1w\(3) = (\G3~combout\(2)) # ((\G3~combout\(0)) # (\G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode1w\(3));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G2[1]~I\ : cycloneii_io
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
	padio => ww_G2(1),
	combout => \G2~combout\(1));

-- Location: LCCOMB_X39_Y22_N12
\Gate2|Gate6|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode1w\(3) = (\G2~combout\(2)) # ((\G2~combout\(0)) # (\G2~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(2),
	datab => \G2~combout\(0),
	datac => \G2~combout\(1),
	combout => \Gate2|Gate6|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X40_Y22_N24
\Gate2|Gate15|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate15|num1s[0]~0_combout\ = \Gate2|Gate5|auto_generated|w_anode1w\(3) $ (\Gate2|Gate8|auto_generated|w_anode1w\(3) $ (\Gate2|Gate7|auto_generated|w_anode1w\(3) $ (\Gate2|Gate6|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate8|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate6|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate15|num1s[0]~0_combout\);

-- Location: LCCOMB_X40_Y22_N2
\Gate2|Gate15|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate15|num1s\(2) = (!\Gate2|Gate5|auto_generated|w_anode1w\(3) & (!\Gate2|Gate8|auto_generated|w_anode1w\(3) & (!\Gate2|Gate7|auto_generated|w_anode1w\(3) & !\Gate2|Gate6|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate5|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate8|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate6|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate15|num1s\(2));

-- Location: LCCOMB_X40_Y22_N14
\Gate2|Gate9|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate9|num1s[1]~1_combout\ = (\Gate2|Gate2|auto_generated|w_anode1w\(3) & ((\Gate2|Gate4|auto_generated|w_anode1w\(3) & (!\Gate2|Gate3|auto_generated|w_anode1w\(3) & !\Gate2|Gate1|auto_generated|w_anode1w\(3))) # 
-- (!\Gate2|Gate4|auto_generated|w_anode1w\(3) & ((!\Gate2|Gate1|auto_generated|w_anode1w\(3)) # (!\Gate2|Gate3|auto_generated|w_anode1w\(3)))))) # (!\Gate2|Gate2|auto_generated|w_anode1w\(3) & ((\Gate2|Gate4|auto_generated|w_anode1w\(3) & 
-- ((!\Gate2|Gate1|auto_generated|w_anode1w\(3)) # (!\Gate2|Gate3|auto_generated|w_anode1w\(3)))) # (!\Gate2|Gate4|auto_generated|w_anode1w\(3) & ((\Gate2|Gate3|auto_generated|w_anode1w\(3)) # (\Gate2|Gate1|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate4|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate9|num1s[1]~1_combout\);

-- Location: LCCOMB_X40_Y22_N28
\Gate2|Gate9|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate9|num1s\(2) = (!\Gate2|Gate2|auto_generated|w_anode1w\(3) & (!\Gate2|Gate4|auto_generated|w_anode1w\(3) & (!\Gate2|Gate3|auto_generated|w_anode1w\(3) & !\Gate2|Gate1|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate2|auto_generated|w_anode1w\(3),
	datab => \Gate2|Gate4|auto_generated|w_anode1w\(3),
	datac => \Gate2|Gate3|auto_generated|w_anode1w\(3),
	datad => \Gate2|Gate1|auto_generated|w_anode1w\(3),
	combout => \Gate2|Gate9|num1s\(2));

-- Location: LCCOMB_X40_Y22_N12
\Gate2|Gate21|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate21|NgtM~0_combout\ = (\Gate2|Gate15|num1s\(2) & (!\Gate2|Gate15|num1s[1]~1_combout\ & (\Gate2|Gate9|num1s[1]~1_combout\ & \Gate2|Gate9|num1s\(2)))) # (!\Gate2|Gate15|num1s\(2) & ((\Gate2|Gate9|num1s\(2)) # ((!\Gate2|Gate15|num1s[1]~1_combout\ & 
-- \Gate2|Gate9|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate15|num1s[1]~1_combout\,
	datab => \Gate2|Gate15|num1s\(2),
	datac => \Gate2|Gate9|num1s[1]~1_combout\,
	datad => \Gate2|Gate9|num1s\(2),
	combout => \Gate2|Gate21|NgtM~0_combout\);

-- Location: LCCOMB_X40_Y22_N8
\Gate2|Gate21|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate21|min[0]~0_combout\ = (\Gate2|Gate21|NgtM~0_combout\ & (((\Gate2|Gate15|num1s[0]~0_combout\)))) # (!\Gate2|Gate21|NgtM~0_combout\ & (\Gate2|Gate9|num1s[0]~0_combout\ & ((\Gate2|Gate15|num1s[0]~0_combout\) # (!\Gate2|Gate21|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate21|NgtM~1_combout\,
	datab => \Gate2|Gate9|num1s[0]~0_combout\,
	datac => \Gate2|Gate15|num1s[0]~0_combout\,
	datad => \Gate2|Gate21|NgtM~0_combout\,
	combout => \Gate2|Gate21|min[0]~0_combout\);

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\G2[2]~I\ : cycloneii_io
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
	padio => ww_G2(2),
	combout => \G2~combout\(2));

-- Location: LCCOMB_X40_Y21_N0
\Gate2|Gate6|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ = (!\G2~combout\(1) & (!\G2~combout\(2) & \G2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(1),
	datac => \G2~combout\(2),
	datad => \G2~combout\(0),
	combout => \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X39_Y21_N0
\Gate2|Gate5|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ = (!\G1~combout\(2) & (!\G1~combout\(1) & \G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N12
\Gate2|Gate8|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ = (!\G4~combout\(1) & (\G4~combout\(0) & !\G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y21_N18
\Gate2|Gate16|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate16|num1s[1]~1_combout\ = (\Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((!\Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\) # (\Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))) # 
-- (!\Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\) # (\Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))) # 
-- (!\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate16|num1s[1]~1_combout\);

-- Location: LCCOMB_X42_Y20_N6
\Gate2|Gate3|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ = (!\P3~combout\(2) & (\P3~combout\(0) & !\P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X39_Y22_N18
\Gate2|Gate2|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ = (!\P2~combout\(2) & (!\P2~combout\(1) & \P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N30
\Gate2|Gate4|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ = (!\P4~combout\(2) & (\P4~combout\(0) & !\P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X40_Y21_N24
\Gate2|Gate10|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate10|num1s[1]~1_combout\ = (\Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((!\Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\))) # (!\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\) # (\Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))) # 
-- (!\Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\) # (\Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))) # 
-- (!\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate10|num1s[1]~1_combout\);

-- Location: LCCOMB_X40_Y21_N4
\Gate2|Gate16|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate16|num1s\(2) = (\Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & (\Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate16|num1s\(2));

-- Location: LCCOMB_X40_Y21_N30
\Gate2|Gate22|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate22|NgtM~0_combout\ = (\Gate2|Gate10|num1s\(2) & (((!\Gate2|Gate16|num1s[1]~1_combout\ & \Gate2|Gate10|num1s[1]~1_combout\)) # (!\Gate2|Gate16|num1s\(2)))) # (!\Gate2|Gate10|num1s\(2) & (!\Gate2|Gate16|num1s[1]~1_combout\ & 
-- (\Gate2|Gate10|num1s[1]~1_combout\ & !\Gate2|Gate16|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate10|num1s\(2),
	datab => \Gate2|Gate16|num1s[1]~1_combout\,
	datac => \Gate2|Gate10|num1s[1]~1_combout\,
	datad => \Gate2|Gate16|num1s\(2),
	combout => \Gate2|Gate22|NgtM~0_combout\);

-- Location: LCCOMB_X40_Y21_N16
\Gate2|Gate22|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate22|NgtM~1_combout\ = (\Gate2|Gate10|num1s\(2) & (\Gate2|Gate16|num1s\(2) & (\Gate2|Gate16|num1s[1]~1_combout\ $ (!\Gate2|Gate10|num1s[1]~1_combout\)))) # (!\Gate2|Gate10|num1s\(2) & (!\Gate2|Gate16|num1s\(2) & (\Gate2|Gate16|num1s[1]~1_combout\ 
-- $ (!\Gate2|Gate10|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate10|num1s\(2),
	datab => \Gate2|Gate16|num1s[1]~1_combout\,
	datac => \Gate2|Gate10|num1s[1]~1_combout\,
	datad => \Gate2|Gate16|num1s\(2),
	combout => \Gate2|Gate22|NgtM~1_combout\);

-- Location: LCCOMB_X40_Y21_N28
\Gate2|Gate10|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate10|num1s[0]~0_combout\ = \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ $ (\Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datad => \Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \Gate2|Gate10|num1s[0]~0_combout\);

-- Location: LCCOMB_X40_Y21_N2
\Gate2|Gate22|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate22|min[0]~0_combout\ = (\Gate2|Gate22|NgtM~0_combout\ & (\Gate2|Gate16|num1s[0]~0_combout\)) # (!\Gate2|Gate22|NgtM~0_combout\ & (\Gate2|Gate10|num1s[0]~0_combout\ & ((\Gate2|Gate16|num1s[0]~0_combout\) # (!\Gate2|Gate22|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate16|num1s[0]~0_combout\,
	datab => \Gate2|Gate22|NgtM~0_combout\,
	datac => \Gate2|Gate22|NgtM~1_combout\,
	datad => \Gate2|Gate10|num1s[0]~0_combout\,
	combout => \Gate2|Gate22|min[0]~0_combout\);

-- Location: LCCOMB_X40_Y21_N12
\Gate2|Gate6|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ = (!\G2~combout\(1) & (\G2~combout\(2) & \G2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(1),
	datac => \G2~combout\(2),
	datad => \G2~combout\(0),
	combout => \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X39_Y21_N2
\Gate2|Gate5|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ = (\G1~combout\(2) & (!\G1~combout\(1) & \G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N6
\Gate2|Gate8|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ = (!\G4~combout\(1) & (\G4~combout\(0) & \G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X42_Y21_N18
\Gate2|Gate20|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate20|num1s\(2) = (\Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate20|num1s\(2));

-- Location: LCCOMB_X42_Y20_N12
\Gate2|Gate3|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ = (\P3~combout\(2) & (\P3~combout\(0) & !\P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N28
\Gate2|Gate4|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ = (\P4~combout\(2) & (\P4~combout\(0) & !\P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X39_Y22_N22
\Gate2|Gate2|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ = (\P2~combout\(2) & (!\P2~combout\(1) & \P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X42_Y21_N16
\Gate2|Gate14|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate14|num1s\(2) = (\Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate14|num1s\(2));

-- Location: LCCOMB_X42_Y21_N22
\Gate2|Gate26|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate26|NgtM~1_combout\ = (\Gate2|Gate26|NgtM~0_combout\ & ((\Gate2|Gate14|num1s\(2)) # (!\Gate2|Gate20|num1s\(2)))) # (!\Gate2|Gate26|NgtM~0_combout\ & (!\Gate2|Gate20|num1s\(2) & \Gate2|Gate14|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate26|NgtM~0_combout\,
	datab => \Gate2|Gate20|num1s\(2),
	datac => \Gate2|Gate14|num1s\(2),
	combout => \Gate2|Gate26|NgtM~1_combout\);

-- Location: LCCOMB_X42_Y21_N24
\Gate2|Gate14|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate14|num1s[0]~1_combout\ = \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ $ (\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate14|num1s[0]~1_combout\);

-- Location: LCCOMB_X40_Y21_N22
\Gate2|Gate6|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ = (!\G2~combout\(1) & (\G2~combout\(2) & !\G2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(1),
	datac => \G2~combout\(2),
	datad => \G2~combout\(0),
	combout => \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X43_Y22_N16
\Gate2|Gate8|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ = (!\G4~combout\(1) & (!\G4~combout\(0) & \G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X39_Y21_N20
\Gate2|Gate5|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ = (\G1~combout\(2) & (!\G1~combout\(1) & !\G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X43_Y21_N18
\Gate2|Gate19|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate19|num1s\(2) = (\Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate19|num1s\(2));

-- Location: LCCOMB_X43_Y21_N8
\Gate2|Gate19|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate19|num1s[1]~1_combout\ = (\Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((!\Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\) # (\Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))))) # 
-- (!\Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\) # (\Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))) # 
-- (!\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate19|num1s[1]~1_combout\);

-- Location: LCCOMB_X43_Y22_N18
\Gate2|Gate4|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ = (\P4~combout\(2) & (!\P4~combout\(0) & !\P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X39_Y22_N16
\Gate2|Gate2|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ = (\P2~combout\(2) & (!\P2~combout\(1) & !\P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X42_Y20_N10
\Gate2|Gate3|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ = (\P3~combout\(2) & (!\P3~combout\(0) & !\P3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P3~combout\(2),
	datab => \P3~combout\(0),
	datac => \P3~combout\(1),
	combout => \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X43_Y21_N30
\Gate2|Gate13|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate13|num1s[1]~1_combout\ = (\Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & ((!\Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\))) # (!\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\) # (\Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))))) # 
-- (!\Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & ((\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\) # (\Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))) # 
-- (!\Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ & (\Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate13|num1s[1]~1_combout\);

-- Location: LCCOMB_X43_Y21_N28
\Gate2|Gate25|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate25|NgtM~0_combout\ = (\Gate2|Gate13|num1s\(2) & (((!\Gate2|Gate19|num1s[1]~1_combout\ & \Gate2|Gate13|num1s[1]~1_combout\)) # (!\Gate2|Gate19|num1s\(2)))) # (!\Gate2|Gate13|num1s\(2) & (!\Gate2|Gate19|num1s\(2) & 
-- (!\Gate2|Gate19|num1s[1]~1_combout\ & \Gate2|Gate13|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate13|num1s\(2),
	datab => \Gate2|Gate19|num1s\(2),
	datac => \Gate2|Gate19|num1s[1]~1_combout\,
	datad => \Gate2|Gate13|num1s[1]~1_combout\,
	combout => \Gate2|Gate25|NgtM~0_combout\);

-- Location: LCCOMB_X43_Y21_N22
\Gate2|Gate25|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate25|NgtM~1_combout\ = (\Gate2|Gate13|num1s\(2) & (\Gate2|Gate19|num1s\(2) & (\Gate2|Gate19|num1s[1]~1_combout\ $ (!\Gate2|Gate13|num1s[1]~1_combout\)))) # (!\Gate2|Gate13|num1s\(2) & (!\Gate2|Gate19|num1s\(2) & (\Gate2|Gate19|num1s[1]~1_combout\ 
-- $ (!\Gate2|Gate13|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate13|num1s\(2),
	datab => \Gate2|Gate19|num1s\(2),
	datac => \Gate2|Gate19|num1s[1]~1_combout\,
	datad => \Gate2|Gate13|num1s[1]~1_combout\,
	combout => \Gate2|Gate25|NgtM~1_combout\);

-- Location: LCCOMB_X43_Y21_N0
\Gate2|Gate19|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate19|num1s[0]~0_combout\ = \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ $ (\Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	datab => \Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datac => \Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datad => \Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	combout => \Gate2|Gate19|num1s[0]~0_combout\);

-- Location: LCCOMB_X43_Y21_N24
\Gate2|Gate25|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate25|min[0]~0_combout\ = (\Gate2|Gate25|NgtM~0_combout\ & (((\Gate2|Gate19|num1s[0]~0_combout\)))) # (!\Gate2|Gate25|NgtM~0_combout\ & (\Gate2|Gate13|num1s[0]~0_combout\ & ((\Gate2|Gate19|num1s[0]~0_combout\) # (!\Gate2|Gate25|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate13|num1s[0]~0_combout\,
	datab => \Gate2|Gate25|NgtM~0_combout\,
	datac => \Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate2|Gate19|num1s[0]~0_combout\,
	combout => \Gate2|Gate25|min[0]~0_combout\);

-- Location: LCCOMB_X42_Y21_N0
\Gate2|Gate29|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate29|auto_generated|op_1~0_combout\ = \Gate2|Gate25|min[0]~0_combout\ $ (((\Gate2|Gate26|NgtM~1_combout\ & (\Gate2|Gate20|num1s[0]~1_combout\)) # (!\Gate2|Gate26|NgtM~1_combout\ & ((\Gate2|Gate14|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate20|num1s[0]~1_combout\,
	datab => \Gate2|Gate26|NgtM~1_combout\,
	datac => \Gate2|Gate14|num1s[0]~1_combout\,
	datad => \Gate2|Gate25|min[0]~0_combout\,
	combout => \Gate2|Gate29|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X42_Y22_N24
\Gate2|Gate31|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate31|auto_generated|op_1~0_combout\ = \Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\Gate2|Gate21|min[0]~0_combout\ $ (\Gate2|Gate22|min[0]~0_combout\ $ (\Gate2|Gate29|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \Gate2|Gate21|min[0]~0_combout\,
	datac => \Gate2|Gate22|min[0]~0_combout\,
	datad => \Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate2|Gate31|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X42_Y23_N22
\Gate2|Gate34|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~0_combout\ = \Gate1|Gate5|num1s[0]~0_combout\ $ (\Gate2|Gate31|auto_generated|op_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X40_Y22_N26
\Gate2|Gate21|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate21|NgtM~combout\ = (\Gate2|Gate21|NgtM~0_combout\) # ((\Gate2|Gate21|NgtM~1_combout\ & (\Gate2|Gate9|num1s[0]~0_combout\ & !\Gate2|Gate15|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate21|NgtM~1_combout\,
	datab => \Gate2|Gate9|num1s[0]~0_combout\,
	datac => \Gate2|Gate15|num1s[0]~0_combout\,
	datad => \Gate2|Gate21|NgtM~0_combout\,
	combout => \Gate2|Gate21|NgtM~combout\);

-- Location: LCCOMB_X40_Y22_N22
\Gate2|Gate27|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate27|auto_generated|op_1~0_combout\ = (\Gate2|Gate22|min[0]~0_combout\ & ((\Gate2|Gate21|NgtM~combout\ & ((\Gate2|Gate15|num1s[0]~0_combout\))) # (!\Gate2|Gate21|NgtM~combout\ & (\Gate2|Gate9|num1s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate22|min[0]~0_combout\,
	datab => \Gate2|Gate9|num1s[0]~0_combout\,
	datac => \Gate2|Gate15|num1s[0]~0_combout\,
	datad => \Gate2|Gate21|NgtM~combout\,
	combout => \Gate2|Gate27|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X40_Y21_N20
\Gate2|Gate22|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate22|NgtM~combout\ = (\Gate2|Gate22|NgtM~0_combout\) # ((!\Gate2|Gate16|num1s[0]~0_combout\ & (\Gate2|Gate22|NgtM~1_combout\ & \Gate2|Gate10|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate16|num1s[0]~0_combout\,
	datab => \Gate2|Gate22|NgtM~0_combout\,
	datac => \Gate2|Gate22|NgtM~1_combout\,
	datad => \Gate2|Gate10|num1s[0]~0_combout\,
	combout => \Gate2|Gate22|NgtM~combout\);

-- Location: LCCOMB_X40_Y21_N14
\Gate2|Gate22|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate22|min[1]~1_combout\ = (\Gate2|Gate22|NgtM~combout\ & ((\Gate2|Gate16|num1s[1]~1_combout\))) # (!\Gate2|Gate22|NgtM~combout\ & (\Gate2|Gate10|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate10|num1s[1]~1_combout\,
	datab => \Gate2|Gate16|num1s[1]~1_combout\,
	datac => \Gate2|Gate22|NgtM~combout\,
	combout => \Gate2|Gate22|min[1]~1_combout\);

-- Location: LCCOMB_X40_Y22_N0
\Gate2|Gate27|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate27|auto_generated|op_1~1_combout\ = \Gate2|Gate21|min[1]~1_combout\ $ (\Gate2|Gate27|auto_generated|op_1~0_combout\ $ (\Gate2|Gate22|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate21|min[1]~1_combout\,
	datab => \Gate2|Gate27|auto_generated|op_1~0_combout\,
	datac => \Gate2|Gate22|min[1]~1_combout\,
	combout => \Gate2|Gate27|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X42_Y22_N6
\Gate2|Gate31|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate31|auto_generated|op_1~1_combout\ = (\Gate2|Gate28|auto_generated|op_1~0_combout\ & (!\Gate2|Gate29|auto_generated|op_1~0_combout\ & (\Gate2|Gate21|min[0]~0_combout\ $ (\Gate2|Gate22|min[0]~0_combout\)))) # 
-- (!\Gate2|Gate28|auto_generated|op_1~0_combout\ & (\Gate2|Gate29|auto_generated|op_1~0_combout\ & (\Gate2|Gate21|min[0]~0_combout\ $ (\Gate2|Gate22|min[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \Gate2|Gate21|min[0]~0_combout\,
	datac => \Gate2|Gate22|min[0]~0_combout\,
	datad => \Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \Gate2|Gate31|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X42_Y22_N0
\Gate2|Gate31|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate31|auto_generated|op_1~2_combout\ = \Gate2|Gate30|auto_generated|op_1~0_combout\ $ (\Gate2|Gate27|auto_generated|op_1~1_combout\ $ (\Gate2|Gate31|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate30|auto_generated|op_1~0_combout\,
	datac => \Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate2|Gate31|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X42_Y23_N16
\Gate2|Gate34|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~1_combout\ = \Gate2|Gate31|auto_generated|op_1~2_combout\ $ (\Gate1|Gate5|num1s[1]~1_combout\ $ (((\Gate2|Gate31|auto_generated|op_1~0_combout\) # (!\Gate1|Gate5|num1s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X42_Y20_N8
\Gate2|Gate7|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode30w\(3) = (!\G3~combout\(2) & (!\G3~combout\(0) & \G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X43_Y22_N8
\Gate2|Gate8|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode30w\(3) = (\G4~combout\(1) & (!\G4~combout\(0) & !\G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X39_Y21_N4
\Gate2|Gate5|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode30w\(3) = (!\G1~combout\(2) & (\G1~combout\(1) & !\G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X39_Y22_N20
\Gate2|Gate17|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate17|num1s\(2) = (\Gate2|Gate6|auto_generated|w_anode30w\(3) & (\Gate2|Gate7|auto_generated|w_anode30w\(3) & (\Gate2|Gate8|auto_generated|w_anode30w\(3) & \Gate2|Gate5|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate6|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate7|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate5|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate17|num1s\(2));

-- Location: LCCOMB_X40_Y21_N8
\Gate2|Gate6|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate6|auto_generated|w_anode41w\(3) = (\G2~combout\(1) & (!\G2~combout\(2) & \G2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G2~combout\(1),
	datac => \G2~combout\(2),
	datad => \G2~combout\(0),
	combout => \Gate2|Gate6|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X39_Y21_N14
\Gate2|Gate5|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate5|auto_generated|w_anode41w\(3) = (!\G1~combout\(2) & (\G1~combout\(1) & \G1~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \G1~combout\(2),
	datac => \G1~combout\(1),
	datad => \G1~combout\(0),
	combout => \Gate2|Gate5|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X43_Y22_N22
\Gate2|Gate8|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate8|auto_generated|w_anode41w\(3) = (\G4~combout\(1) & (\G4~combout\(0) & !\G4~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G4~combout\(1),
	datab => \G4~combout\(0),
	datad => \G4~combout\(2),
	combout => \Gate2|Gate8|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X39_Y21_N16
\Gate2|Gate18|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate18|num1s\(2) = (\Gate2|Gate7|auto_generated|w_anode41w\(3) & (\Gate2|Gate6|auto_generated|w_anode41w\(3) & (\Gate2|Gate5|auto_generated|w_anode41w\(3) & \Gate2|Gate8|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate7|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate6|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate5|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate8|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate18|num1s\(2));

-- Location: LCCOMB_X39_Y22_N26
\Gate2|Gate2|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode30w\(3) = (!\P2~combout\(2) & (\P2~combout\(1) & !\P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X39_Y21_N30
\Gate2|Gate1|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode30w\(3) = (!\P1~combout\(0) & (\P1~combout\(1) & !\P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X43_Y22_N10
\Gate2|Gate4|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode30w\(3) = (!\P4~combout\(2) & (!\P4~combout\(0) & \P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X39_Y22_N30
\Gate2|Gate11|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate11|num1s\(2) = (\Gate2|Gate3|auto_generated|w_anode30w\(3) & (\Gate2|Gate2|auto_generated|w_anode30w\(3) & (\Gate2|Gate1|auto_generated|w_anode30w\(3) & \Gate2|Gate4|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate11|num1s\(2));

-- Location: LCCOMB_X38_Y22_N20
\Gate2|Gate34|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~4_combout\ = (\Gate2|Gate12|num1s\(2) & (\Gate2|Gate18|num1s\(2) $ (((\Gate2|Gate17|num1s\(2) & \Gate2|Gate11|num1s\(2)))))) # (!\Gate2|Gate12|num1s\(2) & (\Gate2|Gate17|num1s\(2) & ((\Gate2|Gate11|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate12|num1s\(2),
	datab => \Gate2|Gate17|num1s\(2),
	datac => \Gate2|Gate18|num1s\(2),
	datad => \Gate2|Gate11|num1s\(2),
	combout => \Gate2|Gate34|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X43_Y21_N6
\Gate2|Gate34|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~3_combout\ = (\Gate2|Gate13|num1s\(2) & (\Gate2|Gate19|num1s\(2) $ (((\Gate2|Gate14|num1s\(2) & \Gate2|Gate20|num1s\(2)))))) # (!\Gate2|Gate13|num1s\(2) & (\Gate2|Gate14|num1s\(2) & (\Gate2|Gate20|num1s\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate13|num1s\(2),
	datab => \Gate2|Gate14|num1s\(2),
	datac => \Gate2|Gate20|num1s\(2),
	datad => \Gate2|Gate19|num1s\(2),
	combout => \Gate2|Gate34|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X40_Y22_N4
\Gate2|Gate34|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~5_combout\ = \Gate2|Gate34|auto_generated|op_1~2_combout\ $ (\Gate1|Gate5|num1s\(2) $ (\Gate2|Gate34|auto_generated|op_1~4_combout\ $ (\Gate2|Gate34|auto_generated|op_1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate34|auto_generated|op_1~2_combout\,
	datab => \Gate1|Gate5|num1s\(2),
	datac => \Gate2|Gate34|auto_generated|op_1~4_combout\,
	datad => \Gate2|Gate34|auto_generated|op_1~3_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~5_combout\);

-- Location: LCCOMB_X40_Y22_N30
\Gate2|Gate34|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~6_combout\ = \Gate2|Gate34|auto_generated|op_1~5_combout\ $ (((\Gate2|Gate21|min[1]~1_combout\ & ((\Gate2|Gate22|min[1]~1_combout\) # (\Gate2|Gate27|auto_generated|op_1~0_combout\))) # (!\Gate2|Gate21|min[1]~1_combout\ & 
-- (\Gate2|Gate22|min[1]~1_combout\ & \Gate2|Gate27|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate21|min[1]~1_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~5_combout\,
	datac => \Gate2|Gate22|min[1]~1_combout\,
	datad => \Gate2|Gate27|auto_generated|op_1~0_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X39_Y22_N28
\Gate2|Gate2|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate2|auto_generated|w_anode41w\(3) = (!\P2~combout\(2) & (\P2~combout\(1) & \P2~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P2~combout\(2),
	datac => \P2~combout\(1),
	datad => \P2~combout\(0),
	combout => \Gate2|Gate2|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X39_Y21_N12
\Gate2|Gate1|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate1|auto_generated|w_anode41w\(3) = (\P1~combout\(0) & (\P1~combout\(1) & !\P1~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P1~combout\(0),
	datab => \P1~combout\(1),
	datac => \P1~combout\(2),
	combout => \Gate2|Gate1|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X43_Y22_N20
\Gate2|Gate4|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate4|auto_generated|w_anode41w\(3) = (!\P4~combout\(2) & (\P4~combout\(0) & \P4~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \P4~combout\(2),
	datac => \P4~combout\(0),
	datad => \P4~combout\(1),
	combout => \Gate2|Gate4|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X38_Y22_N18
\Gate2|Gate12|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate12|num1s[1]~0_combout\ = (\Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\Gate2|Gate2|auto_generated|w_anode41w\(3) & ((!\Gate2|Gate4|auto_generated|w_anode41w\(3)) # (!\Gate2|Gate1|auto_generated|w_anode41w\(3)))) # 
-- (!\Gate2|Gate2|auto_generated|w_anode41w\(3) & ((\Gate2|Gate1|auto_generated|w_anode41w\(3)) # (\Gate2|Gate4|auto_generated|w_anode41w\(3)))))) # (!\Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\Gate2|Gate2|auto_generated|w_anode41w\(3) & 
-- ((\Gate2|Gate1|auto_generated|w_anode41w\(3)) # (\Gate2|Gate4|auto_generated|w_anode41w\(3)))) # (!\Gate2|Gate2|auto_generated|w_anode41w\(3) & (\Gate2|Gate1|auto_generated|w_anode41w\(3) & \Gate2|Gate4|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate12|num1s[1]~0_combout\);

-- Location: LCCOMB_X38_Y22_N4
\Gate2|Gate12|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate12|num1s[0]~1_combout\ = \Gate2|Gate3|auto_generated|w_anode41w\(3) $ (\Gate2|Gate2|auto_generated|w_anode41w\(3) $ (\Gate2|Gate1|auto_generated|w_anode41w\(3) $ (\Gate2|Gate4|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate12|num1s[0]~1_combout\);

-- Location: LCCOMB_X42_Y20_N22
\Gate2|Gate7|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate7|auto_generated|w_anode41w\(3) = (!\G3~combout\(2) & (\G3~combout\(0) & \G3~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \G3~combout\(2),
	datab => \G3~combout\(0),
	datad => \G3~combout\(1),
	combout => \Gate2|Gate7|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X40_Y21_N26
\Gate2|Gate18|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate18|num1s[0]~1_combout\ = \Gate2|Gate5|auto_generated|w_anode41w\(3) $ (\Gate2|Gate7|auto_generated|w_anode41w\(3) $ (\Gate2|Gate6|auto_generated|w_anode41w\(3) $ (\Gate2|Gate8|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate5|auto_generated|w_anode41w\(3),
	datab => \Gate2|Gate7|auto_generated|w_anode41w\(3),
	datac => \Gate2|Gate6|auto_generated|w_anode41w\(3),
	datad => \Gate2|Gate8|auto_generated|w_anode41w\(3),
	combout => \Gate2|Gate18|num1s[0]~1_combout\);

-- Location: LCCOMB_X38_Y22_N30
\Gate2|Gate24|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate24|NgtM~0_combout\ = (\Gate2|Gate18|num1s[1]~0_combout\ & (\Gate2|Gate12|num1s[1]~0_combout\ & (\Gate2|Gate12|num1s[0]~1_combout\ & !\Gate2|Gate18|num1s[0]~1_combout\))) # (!\Gate2|Gate18|num1s[1]~0_combout\ & 
-- ((\Gate2|Gate12|num1s[1]~0_combout\) # ((\Gate2|Gate12|num1s[0]~1_combout\ & !\Gate2|Gate18|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate18|num1s[1]~0_combout\,
	datab => \Gate2|Gate12|num1s[1]~0_combout\,
	datac => \Gate2|Gate12|num1s[0]~1_combout\,
	datad => \Gate2|Gate18|num1s[0]~1_combout\,
	combout => \Gate2|Gate24|NgtM~0_combout\);

-- Location: LCCOMB_X38_Y22_N16
\Gate2|Gate24|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate24|NgtM~1_combout\ = (\Gate2|Gate12|num1s\(2) & ((\Gate2|Gate24|NgtM~0_combout\) # (!\Gate2|Gate18|num1s\(2)))) # (!\Gate2|Gate12|num1s\(2) & (\Gate2|Gate24|NgtM~0_combout\ & !\Gate2|Gate18|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate12|num1s\(2),
	datab => \Gate2|Gate24|NgtM~0_combout\,
	datac => \Gate2|Gate18|num1s\(2),
	combout => \Gate2|Gate24|NgtM~1_combout\);

-- Location: LCCOMB_X38_Y22_N0
\Gate2|Gate24|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate24|min[1]~0_combout\ = (\Gate2|Gate24|NgtM~1_combout\ & (\Gate2|Gate18|num1s[1]~0_combout\)) # (!\Gate2|Gate24|NgtM~1_combout\ & ((\Gate2|Gate12|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate18|num1s[1]~0_combout\,
	datab => \Gate2|Gate12|num1s[1]~0_combout\,
	datac => \Gate2|Gate24|NgtM~1_combout\,
	combout => \Gate2|Gate24|min[1]~0_combout\);

-- Location: LCCOMB_X39_Y22_N0
\Gate2|Gate11|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate11|num1s[1]~1_combout\ = (\Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\Gate2|Gate2|auto_generated|w_anode30w\(3) & ((!\Gate2|Gate4|auto_generated|w_anode30w\(3)) # (!\Gate2|Gate1|auto_generated|w_anode30w\(3)))) # 
-- (!\Gate2|Gate2|auto_generated|w_anode30w\(3) & ((\Gate2|Gate1|auto_generated|w_anode30w\(3)) # (\Gate2|Gate4|auto_generated|w_anode30w\(3)))))) # (!\Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\Gate2|Gate2|auto_generated|w_anode30w\(3) & 
-- ((\Gate2|Gate1|auto_generated|w_anode30w\(3)) # (\Gate2|Gate4|auto_generated|w_anode30w\(3)))) # (!\Gate2|Gate2|auto_generated|w_anode30w\(3) & (\Gate2|Gate1|auto_generated|w_anode30w\(3) & \Gate2|Gate4|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate3|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate2|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate11|num1s[1]~1_combout\);

-- Location: LCCOMB_X38_Y22_N28
\Gate2|Gate23|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate23|NgtM~1_combout\ = (\Gate2|Gate17|num1s[1]~1_combout\ & (\Gate2|Gate11|num1s[1]~1_combout\ & (\Gate2|Gate17|num1s\(2) $ (!\Gate2|Gate11|num1s\(2))))) # (!\Gate2|Gate17|num1s[1]~1_combout\ & (!\Gate2|Gate11|num1s[1]~1_combout\ & 
-- (\Gate2|Gate17|num1s\(2) $ (!\Gate2|Gate11|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate17|num1s[1]~1_combout\,
	datab => \Gate2|Gate17|num1s\(2),
	datac => \Gate2|Gate11|num1s[1]~1_combout\,
	datad => \Gate2|Gate11|num1s\(2),
	combout => \Gate2|Gate23|NgtM~1_combout\);

-- Location: LCCOMB_X38_Y22_N10
\Gate2|Gate23|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate23|NgtM~0_combout\ = (\Gate2|Gate17|num1s\(2) & (!\Gate2|Gate17|num1s[1]~1_combout\ & (\Gate2|Gate11|num1s[1]~1_combout\ & \Gate2|Gate11|num1s\(2)))) # (!\Gate2|Gate17|num1s\(2) & ((\Gate2|Gate11|num1s\(2)) # 
-- ((!\Gate2|Gate17|num1s[1]~1_combout\ & \Gate2|Gate11|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate17|num1s[1]~1_combout\,
	datab => \Gate2|Gate17|num1s\(2),
	datac => \Gate2|Gate11|num1s[1]~1_combout\,
	datad => \Gate2|Gate11|num1s\(2),
	combout => \Gate2|Gate23|NgtM~0_combout\);

-- Location: LCCOMB_X39_Y22_N24
\Gate2|Gate17|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate17|num1s[0]~0_combout\ = \Gate2|Gate6|auto_generated|w_anode30w\(3) $ (\Gate2|Gate7|auto_generated|w_anode30w\(3) $ (\Gate2|Gate8|auto_generated|w_anode30w\(3) $ (\Gate2|Gate5|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate6|auto_generated|w_anode30w\(3),
	datab => \Gate2|Gate7|auto_generated|w_anode30w\(3),
	datac => \Gate2|Gate8|auto_generated|w_anode30w\(3),
	datad => \Gate2|Gate5|auto_generated|w_anode30w\(3),
	combout => \Gate2|Gate17|num1s[0]~0_combout\);

-- Location: LCCOMB_X38_Y22_N22
\Gate2|Gate23|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate23|min[0]~0_combout\ = (\Gate2|Gate23|NgtM~0_combout\ & (((\Gate2|Gate17|num1s[0]~0_combout\)))) # (!\Gate2|Gate23|NgtM~0_combout\ & (\Gate2|Gate11|num1s[0]~0_combout\ & ((\Gate2|Gate17|num1s[0]~0_combout\) # (!\Gate2|Gate23|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate11|num1s[0]~0_combout\,
	datab => \Gate2|Gate23|NgtM~1_combout\,
	datac => \Gate2|Gate23|NgtM~0_combout\,
	datad => \Gate2|Gate17|num1s[0]~0_combout\,
	combout => \Gate2|Gate23|min[0]~0_combout\);

-- Location: LCCOMB_X38_Y22_N14
\Gate2|Gate28|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate28|auto_generated|op_1~1_combout\ = (\Gate2|Gate23|min[0]~0_combout\ & ((\Gate2|Gate24|NgtM~1_combout\ & ((\Gate2|Gate18|num1s[0]~1_combout\))) # (!\Gate2|Gate24|NgtM~1_combout\ & (\Gate2|Gate12|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate24|NgtM~1_combout\,
	datab => \Gate2|Gate23|min[0]~0_combout\,
	datac => \Gate2|Gate12|num1s[0]~1_combout\,
	datad => \Gate2|Gate18|num1s[0]~1_combout\,
	combout => \Gate2|Gate28|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X38_Y22_N26
\Gate2|Gate23|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate23|NgtM~combout\ = (\Gate2|Gate23|NgtM~0_combout\) # ((\Gate2|Gate11|num1s[0]~0_combout\ & (\Gate2|Gate23|NgtM~1_combout\ & !\Gate2|Gate17|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate11|num1s[0]~0_combout\,
	datab => \Gate2|Gate23|NgtM~1_combout\,
	datac => \Gate2|Gate23|NgtM~0_combout\,
	datad => \Gate2|Gate17|num1s[0]~0_combout\,
	combout => \Gate2|Gate23|NgtM~combout\);

-- Location: LCCOMB_X38_Y22_N12
\Gate2|Gate23|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate23|min[1]~1_combout\ = (\Gate2|Gate23|NgtM~combout\ & (\Gate2|Gate17|num1s[1]~1_combout\)) # (!\Gate2|Gate23|NgtM~combout\ & ((\Gate2|Gate11|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate17|num1s[1]~1_combout\,
	datab => \Gate2|Gate23|NgtM~combout\,
	datac => \Gate2|Gate11|num1s[1]~1_combout\,
	combout => \Gate2|Gate23|min[1]~1_combout\);

-- Location: LCCOMB_X38_Y22_N2
\Gate2|Gate28|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate28|auto_generated|op_1~2_combout\ = \Gate2|Gate24|min[1]~0_combout\ $ (\Gate2|Gate28|auto_generated|op_1~1_combout\ $ (\Gate2|Gate23|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Gate24|min[1]~0_combout\,
	datac => \Gate2|Gate28|auto_generated|op_1~1_combout\,
	datad => \Gate2|Gate23|min[1]~1_combout\,
	combout => \Gate2|Gate28|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X42_Y21_N2
\Gate2|Gate29|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate29|auto_generated|op_1~1_combout\ = (\Gate2|Gate25|min[0]~0_combout\ & ((\Gate2|Gate26|NgtM~1_combout\ & (\Gate2|Gate20|num1s[0]~1_combout\)) # (!\Gate2|Gate26|NgtM~1_combout\ & ((\Gate2|Gate14|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate20|num1s[0]~1_combout\,
	datab => \Gate2|Gate26|NgtM~1_combout\,
	datac => \Gate2|Gate14|num1s[0]~1_combout\,
	datad => \Gate2|Gate25|min[0]~0_combout\,
	combout => \Gate2|Gate29|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X42_Y21_N20
\Gate2|Gate14|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate14|num1s[1]~0_combout\ = (\Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & ((!\Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\))) # (!\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\) # (\Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))))) # 
-- (!\Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & ((\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\) # (\Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))) # 
-- (!\Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ & (\Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	datac => \Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	combout => \Gate2|Gate14|num1s[1]~0_combout\);

-- Location: LCCOMB_X42_Y21_N28
\Gate2|Gate26|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate26|min[1]~0_combout\ = (\Gate2|Gate26|NgtM~1_combout\ & (\Gate2|Gate20|num1s[1]~0_combout\)) # (!\Gate2|Gate26|NgtM~1_combout\ & ((\Gate2|Gate14|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate20|num1s[1]~0_combout\,
	datab => \Gate2|Gate26|NgtM~1_combout\,
	datac => \Gate2|Gate14|num1s[1]~0_combout\,
	combout => \Gate2|Gate26|min[1]~0_combout\);

-- Location: LCCOMB_X43_Y21_N2
\Gate2|Gate25|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate25|NgtM~combout\ = (\Gate2|Gate25|NgtM~0_combout\) # ((\Gate2|Gate13|num1s[0]~0_combout\ & (\Gate2|Gate25|NgtM~1_combout\ & !\Gate2|Gate19|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate13|num1s[0]~0_combout\,
	datab => \Gate2|Gate25|NgtM~0_combout\,
	datac => \Gate2|Gate25|NgtM~1_combout\,
	datad => \Gate2|Gate19|num1s[0]~0_combout\,
	combout => \Gate2|Gate25|NgtM~combout\);

-- Location: LCCOMB_X43_Y21_N4
\Gate2|Gate25|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate25|min[1]~1_combout\ = (\Gate2|Gate25|NgtM~combout\ & (\Gate2|Gate19|num1s[1]~1_combout\)) # (!\Gate2|Gate25|NgtM~combout\ & ((\Gate2|Gate13|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Gate25|NgtM~combout\,
	datac => \Gate2|Gate19|num1s[1]~1_combout\,
	datad => \Gate2|Gate13|num1s[1]~1_combout\,
	combout => \Gate2|Gate25|min[1]~1_combout\);

-- Location: LCCOMB_X42_Y22_N18
\Gate2|Gate29|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate29|auto_generated|op_1~2_combout\ = \Gate2|Gate29|auto_generated|op_1~1_combout\ $ (\Gate2|Gate26|min[1]~0_combout\ $ (\Gate2|Gate25|min[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate2|Gate29|auto_generated|op_1~1_combout\,
	datac => \Gate2|Gate26|min[1]~0_combout\,
	datad => \Gate2|Gate25|min[1]~1_combout\,
	combout => \Gate2|Gate29|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X42_Y22_N2
\Gate2|Gate34|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~8_combout\ = (\Gate2|Gate28|auto_generated|op_1~2_combout\ & ((\Gate2|Gate29|auto_generated|op_1~2_combout\) # ((\Gate2|Gate28|auto_generated|op_1~0_combout\ & \Gate2|Gate29|auto_generated|op_1~0_combout\)))) # 
-- (!\Gate2|Gate28|auto_generated|op_1~2_combout\ & (\Gate2|Gate28|auto_generated|op_1~0_combout\ & (\Gate2|Gate29|auto_generated|op_1~0_combout\ & \Gate2|Gate29|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \Gate2|Gate28|auto_generated|op_1~2_combout\,
	datad => \Gate2|Gate29|auto_generated|op_1~2_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X42_Y23_N10
\Gate2|Gate34|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~7_combout\ = (\Gate2|Gate31|auto_generated|op_1~2_combout\ & (((\Gate2|Gate31|auto_generated|op_1~0_combout\) # (!\Gate1|Gate5|num1s[1]~1_combout\)) # (!\Gate1|Gate5|num1s[0]~0_combout\))) # 
-- (!\Gate2|Gate31|auto_generated|op_1~2_combout\ & (!\Gate1|Gate5|num1s[1]~1_combout\ & ((\Gate2|Gate31|auto_generated|op_1~0_combout\) # (!\Gate1|Gate5|num1s[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~7_combout\);

-- Location: LCCOMB_X42_Y22_N28
\Gate2|Gate34|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~9_combout\ = \Gate2|Gate28|auto_generated|op_1~3_combout\ $ (((\Gate2|Gate29|auto_generated|op_1~1_combout\ & ((\Gate2|Gate26|min[1]~0_combout\) # (\Gate2|Gate25|min[1]~1_combout\))) # 
-- (!\Gate2|Gate29|auto_generated|op_1~1_combout\ & (\Gate2|Gate26|min[1]~0_combout\ & \Gate2|Gate25|min[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate28|auto_generated|op_1~3_combout\,
	datab => \Gate2|Gate29|auto_generated|op_1~1_combout\,
	datac => \Gate2|Gate26|min[1]~0_combout\,
	datad => \Gate2|Gate25|min[1]~1_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~9_combout\);

-- Location: LCCOMB_X42_Y22_N22
\Gate2|Gate34|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~10_combout\ = \Gate2|Gate34|auto_generated|op_1~9_combout\ $ (((\Gate2|Gate30|auto_generated|op_1~0_combout\ & ((\Gate2|Gate27|auto_generated|op_1~1_combout\) # (\Gate2|Gate31|auto_generated|op_1~1_combout\))) # 
-- (!\Gate2|Gate30|auto_generated|op_1~0_combout\ & (\Gate2|Gate27|auto_generated|op_1~1_combout\ & \Gate2|Gate31|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate30|auto_generated|op_1~0_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~9_combout\,
	datac => \Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \Gate2|Gate31|auto_generated|op_1~1_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X42_Y22_N8
\Gate2|Gate34|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate2|Gate34|auto_generated|op_1~11_combout\ = \Gate2|Gate34|auto_generated|op_1~6_combout\ $ (\Gate2|Gate34|auto_generated|op_1~8_combout\ $ (\Gate2|Gate34|auto_generated|op_1~7_combout\ $ (\Gate2|Gate34|auto_generated|op_1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate34|auto_generated|op_1~6_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~8_combout\,
	datac => \Gate2|Gate34|auto_generated|op_1~7_combout\,
	datad => \Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \Gate2|Gate34|auto_generated|op_1~11_combout\);

-- Location: LCCOMB_X42_Y23_N12
\Gate3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux3~0_combout\ = (\Gate1|Gate5|num1s\(2) & ((\Gate2|Gate31|auto_generated|op_1~0_combout\ & (!\Gate1|Gate5|num1s[0]~0_combout\ & !\Gate1|Gate5|num1s[1]~1_combout\)) # (!\Gate2|Gate31|auto_generated|op_1~0_combout\ & 
-- (\Gate1|Gate5|num1s[0]~0_combout\ $ (\Gate1|Gate5|num1s[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s\(2),
	datab => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datac => \Gate1|Gate5|num1s[0]~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate3|Mux3~0_combout\);

-- Location: LCCOMB_X42_Y23_N30
\Gate3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux1~0_combout\ = (!\Gate1|Gate5|num1s[0]~0_combout\ & (!\Gate2|Gate31|auto_generated|op_1~2_combout\ & (!\Gate2|Gate31|auto_generated|op_1~0_combout\ & !\Gate1|Gate5|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate3|Mux1~0_combout\);

-- Location: LCCOMB_X42_Y23_N8
\Gate3|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux3~1_combout\ = (!\Gate2|Gate34|auto_generated|op_1~11_combout\ & ((\Gate3|Mux3~0_combout\) # ((!\Gate1|Gate5|num1s\(2) & \Gate3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|Mux3~0_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~11_combout\,
	datac => \Gate1|Gate5|num1s\(2),
	datad => \Gate3|Mux1~0_combout\,
	combout => \Gate3|Mux3~1_combout\);

-- Location: LCCOMB_X42_Y23_N26
\Gate3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux2~0_combout\ = (\Gate2|Gate34|auto_generated|op_1~11_combout\ & ((\Gate1|Gate5|num1s[0]~0_combout\) # ((\Gate2|Gate31|auto_generated|op_1~0_combout\) # (\Gate1|Gate5|num1s[1]~1_combout\)))) # (!\Gate2|Gate34|auto_generated|op_1~11_combout\ & 
-- (\Gate1|Gate5|num1s[1]~1_combout\ & (\Gate1|Gate5|num1s[0]~0_combout\ $ (\Gate2|Gate31|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~11_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate3|Mux2~0_combout\);

-- Location: LCCOMB_X42_Y23_N4
\Gate3|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux2~1_combout\ = (\Gate2|Gate34|auto_generated|op_1~1_combout\ & (!\Gate3|Mux2~0_combout\ & \Gate1|Gate5|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate34|auto_generated|op_1~1_combout\,
	datab => \Gate3|Mux2~0_combout\,
	datac => \Gate1|Gate5|num1s\(2),
	combout => \Gate3|Mux2~1_combout\);

-- Location: LCCOMB_X42_Y23_N6
\Gate3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux1~1_combout\ = (\Gate1|Gate5|num1s[0]~0_combout\ & (!\Gate1|Gate5|num1s[1]~1_combout\ & (\Gate2|Gate31|auto_generated|op_1~2_combout\ $ (\Gate2|Gate31|auto_generated|op_1~0_combout\)))) # (!\Gate1|Gate5|num1s[0]~0_combout\ & 
-- (\Gate2|Gate31|auto_generated|op_1~2_combout\ $ (((!\Gate2|Gate31|auto_generated|op_1~0_combout\ & \Gate1|Gate5|num1s[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate1|Gate5|num1s[0]~0_combout\,
	datab => \Gate2|Gate31|auto_generated|op_1~2_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate3|Mux1~1_combout\);

-- Location: LCCOMB_X42_Y23_N0
\Gate3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux1~2_combout\ = (\Gate1|Gate5|num1s\(2) & ((\Gate2|Gate34|auto_generated|op_1~11_combout\ & ((\Gate3|Mux1~0_combout\))) # (!\Gate2|Gate34|auto_generated|op_1~11_combout\ & (\Gate3|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate3|Mux1~1_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~11_combout\,
	datac => \Gate1|Gate5|num1s\(2),
	datad => \Gate3|Mux1~0_combout\,
	combout => \Gate3|Mux1~2_combout\);

-- Location: LCCOMB_X42_Y23_N2
\Gate3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux0~0_combout\ = (\Gate2|Gate34|auto_generated|op_1~1_combout\ & ((\Gate1|Gate5|num1s[0]~0_combout\) # ((\Gate2|Gate34|auto_generated|op_1~11_combout\ & \Gate2|Gate31|auto_generated|op_1~0_combout\)))) # 
-- (!\Gate2|Gate34|auto_generated|op_1~1_combout\ & (\Gate2|Gate34|auto_generated|op_1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Gate2|Gate34|auto_generated|op_1~1_combout\,
	datab => \Gate2|Gate34|auto_generated|op_1~11_combout\,
	datac => \Gate2|Gate31|auto_generated|op_1~0_combout\,
	datad => \Gate1|Gate5|num1s[0]~0_combout\,
	combout => \Gate3|Mux0~0_combout\);

-- Location: LCCOMB_X42_Y23_N28
\Gate3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Gate3|Mux0~1_combout\ = (!\Gate3|Mux0~0_combout\ & (\Gate1|Gate5|num1s\(2) & !\Gate1|Gate5|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Gate3|Mux0~0_combout\,
	datac => \Gate1|Gate5|num1s\(2),
	datad => \Gate1|Gate5|num1s[1]~1_combout\,
	combout => \Gate3|Mux0~1_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\exact_match_score[0]~I\ : cycloneii_io
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
	datain => \Gate1|Gate5|num1s[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_exact_match_score(0));

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\exact_match_score[1]~I\ : cycloneii_io
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
	datain => \Gate1|Gate5|num1s[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_exact_match_score(1));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\exact_match_score[2]~I\ : cycloneii_io
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
	datain => \Gate1|Gate5|ALT_INV_num1s\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_exact_match_score(2));

-- Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\color_match_score[0]~I\ : cycloneii_io
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
	datain => \Gate2|Gate34|auto_generated|op_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_color_match_score(0));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\color_match_score[1]~I\ : cycloneii_io
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
	datain => \Gate2|Gate34|auto_generated|ALT_INV_op_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_color_match_score(1));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\color_match_score[2]~I\ : cycloneii_io
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
	datain => \Gate2|Gate34|auto_generated|op_1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_color_match_score(2));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\score_code[0]~I\ : cycloneii_io
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
	datain => \Gate3|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_score_code(0));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\score_code[1]~I\ : cycloneii_io
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
	datain => \Gate3|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_score_code(1));

-- Location: PIN_G20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\score_code[2]~I\ : cycloneii_io
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
	datain => \Gate3|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_score_code(2));

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\score_code[3]~I\ : cycloneii_io
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
	datain => \Gate3|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_score_code(3));
END structure;


