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

-- DATE "12/04/2015 21:51:22"

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
	mode : IN std_logic;
	sw : IN std_logic_vector(2 DOWNTO 0);
	modify_G : IN std_logic;
	GR_SELECT : IN std_logic_vector(3 DOWNTO 0);
	segment1 : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0);
	segment4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MASTERMIND;

-- Design Ports Information
-- segment1[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment1[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment2[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment3[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- segment4[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sw[2]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Start	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modify_G	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_SELECT[0]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_SELECT[1]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_SELECT[2]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- GR_SELECT[3]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P_generated	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ready	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_mode : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_modify_G : std_logic;
SIGNAL ww_GR_SELECT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \gate1|y_present.a~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|sr2N[2]~0_combout\ : std_logic;
SIGNAL \gate2|gate17|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate21|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate2|AeqB~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate4|AeqB~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate1|AeqB~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate1|AeqB~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate23|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate23|NgtM~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux1~2_combout\ : std_logic;
SIGNAL \gate1|y_present.c~regout\ : std_logic;
SIGNAL \gate1|y_present.d~3_combout\ : std_logic;
SIGNAL \gate1|y_present.c~0_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \gate1|Selector8~0_combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \gate1|y_present.a~0_combout\ : std_logic;
SIGNAL \gate1|y_present.a~0clkctrl_outclk\ : std_logic;
SIGNAL \gate1|y_present.h~regout\ : std_logic;
SIGNAL \gate1|y_present.d~1_combout\ : std_logic;
SIGNAL \gate1|y_present.b~0_combout\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \gate1|y_present.a~feeder_combout\ : std_logic;
SIGNAL \gate1|y_present.a~regout\ : std_logic;
SIGNAL \P_generated~combout\ : std_logic;
SIGNAL \gate1|y_present.f~0_combout\ : std_logic;
SIGNAL \Ready~combout\ : std_logic;
SIGNAL \gate1|y_present.f~1_combout\ : std_logic;
SIGNAL \gate1|y_present.f~2_combout\ : std_logic;
SIGNAL \gate1|y_present.b~regout\ : std_logic;
SIGNAL \gate1|y_present.d~0_combout\ : std_logic;
SIGNAL \gate1|y_present.d~2_combout\ : std_logic;
SIGNAL \gate1|y_present.d~4_combout\ : std_logic;
SIGNAL \gate1|y_present.d~regout\ : std_logic;
SIGNAL \gate1|Selector5~0_combout\ : std_logic;
SIGNAL \gate1|y_present.e~regout\ : std_logic;
SIGNAL \gate1|y_present.f~feeder_combout\ : std_logic;
SIGNAL \gate1|y_present.f~regout\ : std_logic;
SIGNAL \gate1|y_present.g~feeder_combout\ : std_logic;
SIGNAL \gate1|y_present.g~regout\ : std_logic;
SIGNAL \gate1|Selector0~0_combout\ : std_logic;
SIGNAL \gate1|RippleBlankInState~0_combout\ : std_logic;
SIGNAL \gate1|switch_REG~regout\ : std_logic;
SIGNAL \gate2|GR1_EN~combout\ : std_logic;
SIGNAL \gate1|Selector9~0_combout\ : std_logic;
SIGNAL \gate1|RippleBlankInState~regout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux6~2_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux6~3_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux5~2_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux5~3_combout\ : std_logic;
SIGNAL \gate2|sr1N[2]~0_combout\ : std_logic;
SIGNAL \gate2|sr1N[1]~2_combout\ : std_logic;
SIGNAL \gate2|sr1N[0]~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux0~4_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux0~5_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR3[0]~7_combout\ : std_logic;
SIGNAL \gate4|y_present.A~0_combout\ : std_logic;
SIGNAL \gate4|y_present.A~regout\ : std_logic;
SIGNAL \gate4|tcr2~0_combout\ : std_logic;
SIGNAL \gate4|tcr2~regout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR1[0]~3_combout\ : std_logic;
SIGNAL \gate4|Selector1~0_combout\ : std_logic;
SIGNAL \gate4|y_present.B~regout\ : std_logic;
SIGNAL \gate4|tce2~0_combout\ : std_logic;
SIGNAL \gate4|tce2~1_combout\ : std_logic;
SIGNAL \gate4|tce2~regout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR1[0]~0_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR1~2_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR1~1_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR2[0]~3_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR2[2]~1_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR2~0_combout\ : std_logic;
SIGNAL \gate4|gate1|RPG_table~0_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR2~2_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR3[0]~6_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR3~5_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR3~4_combout\ : std_logic;
SIGNAL \modify_G~combout\ : std_logic;
SIGNAL \gate2|GR3_EN~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate3|AeqB~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate3|AeqB~combout\ : std_logic;
SIGNAL \gate2|Gate9|q[2]~feeder_combout\ : std_logic;
SIGNAL \gate2|GR2_EN~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate2|AeqB~combout\ : std_logic;
SIGNAL \gate2|GR4_EN~combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4[0]~0_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4[0]~1_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4[1]~5_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4~2_combout\ : std_logic;
SIGNAL \gate4|gate1|RPG_table~1_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4[0]~3_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate4|AeqB~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate4|gate1|TM_ADDR4~4_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate26|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate25|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate25|NgtM~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate25|min[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate23|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate24|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate21|NgtM~combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate22|NgtM~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate22|min[1]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux1~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux3~1_combout\ : std_logic;
SIGNAL \gate1|Selector10~0_combout\ : std_logic;
SIGNAL \gate1|SR_LD~regout\ : std_logic;
SIGNAL \gate2|sr2N[2]~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux0~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux0~1_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate3|Mux2~1_combout\ : std_logic;
SIGNAL \gate2|sr2N[1]~2_combout\ : std_logic;
SIGNAL \gate2|sr2N[1]~3_combout\ : std_logic;
SIGNAL \gate2|gate17|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|sr2N[0]~4_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux0~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux6~2_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux6~3_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux5~2_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux5~3_combout\ : std_logic;
SIGNAL \gate2|sr3N[0]~1_combout\ : std_logic;
SIGNAL \gate2|sr3N[2]~0_combout\ : std_logic;
SIGNAL \gate2|sr3N[1]~2_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux0~4_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux0~5_combout\ : std_logic;
SIGNAL \gate2|gate17|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|sr4N[1]~2_combout\ : std_logic;
SIGNAL \gate2|sr4N[0]~3_combout\ : std_logic;
SIGNAL \gate2|sr4N[2]~0_combout\ : std_logic;
SIGNAL \gate2|sr4N[2]~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux0~0_combout\ : std_logic;
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate10|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate11|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate12|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate13|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate14|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate16|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate17|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate18|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate19|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate20|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate9|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate10|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate11|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate1|Gate5|num1s\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate2|Gate2|q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GR_SELECT~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate4|gate2|q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \gate4|gate1|TM_ADDR2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate8|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate4|gate1|TM_ADDR1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate4|gate1|TM_ADDR4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate4|gate1|TM_ADDR3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|gate16|gate13|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Start~combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \gate4|ALT_INV_tcr2~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_P_generated <= P_generated;
ww_Start <= Start;
ww_Ready <= Ready;
ww_mode <= mode;
ww_sw <= sw;
ww_modify_G <= modify_G;
ww_GR_SELECT <= GR_SELECT;
segment1 <= ww_segment1;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
segment4 <= ww_segment4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\gate1|y_present.a~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \gate1|y_present.a~0_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\gate2|gate16|gate13|ALT_INV_Mux1~0_combout\ <= NOT \gate2|gate16|gate13|Mux1~0_combout\;
\gate2|gate16|gate13|ALT_INV_Mux4~0_combout\ <= NOT \gate2|gate16|gate13|Mux4~0_combout\;
\gate2|gate16|gate11|ALT_INV_Mux1~0_combout\ <= NOT \gate2|gate16|gate11|Mux1~0_combout\;
\gate2|gate16|gate11|ALT_INV_Mux4~0_combout\ <= NOT \gate2|gate16|gate11|Mux4~0_combout\;
\ALT_INV_Start~combout\ <= NOT \Start~combout\;
\gate2|gate16|gate12|ALT_INV_Mux5~3_combout\ <= NOT \gate2|gate16|gate12|Mux5~3_combout\;
\gate2|gate16|gate12|ALT_INV_Mux6~3_combout\ <= NOT \gate2|gate16|gate12|Mux6~3_combout\;
\gate2|gate16|gate10|ALT_INV_Mux5~3_combout\ <= NOT \gate2|gate16|gate10|Mux5~3_combout\;
\gate2|gate16|gate10|ALT_INV_Mux6~3_combout\ <= NOT \gate2|gate16|gate10|Mux6~3_combout\;
\gate4|ALT_INV_tcr2~regout\ <= NOT \gate4|tcr2~regout\;

-- Location: LCFF_X24_Y18_N3
\gate2|Gate2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate1|Gate3|Mux1~2_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate2|q\(2));

-- Location: LCCOMB_X24_Y18_N4
\gate2|sr2N[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr2N[2]~0_combout\ = (!\gate2|Gate2|q\(2) & (\gate1|switch_REG~regout\ & (!\gate2|Gate2|q\(3) & !\gate2|Gate2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|sr2N[2]~0_combout\);

-- Location: LCCOMB_X24_Y18_N12
\gate2|gate17|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate17|Mux5~0_combout\ = (\gate2|Gate2|q\(0) & (\gate2|Gate2|q\(3) $ (((\gate2|Gate2|q\(2) & \gate2|Gate2|q\(1)))))) # (!\gate2|Gate2|q\(0) & (\gate2|Gate2|q\(2) & (!\gate2|Gate2|q\(3) & !\gate2|Gate2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate2|Gate2|q\(0),
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|gate17|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y17_N14
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) = (\gate2|Gate9|q\(2)) # ((\gate2|Gate9|q\(0)) # (\gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3));

-- Location: LCFF_X24_Y19_N11
\gate4|gate2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR3\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(6));

-- Location: LCCOMB_X24_Y19_N28
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) = (\gate4|gate2|q\(6)) # ((\gate4|gate2|q\(8)) # (\gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datac => \gate4|gate2|q\(8),
	datad => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X23_Y17_N6
\gate2|Gate1|Gate2|Gate9|num1s[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3)) # ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3)) # ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3)) # 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\);

-- Location: LCCOMB_X23_Y17_N16
\gate2|Gate1|Gate2|Gate21|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate21|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ & (!\gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\ & \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & ((\gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\) # ((\gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ & !\gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate21|NgtM~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ = (!\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) & !\gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X24_Y19_N24
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ = (\gate4|gate2|q\(6) & (!\gate4|gate2|q\(8) & !\gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datac => \gate4|gate2|q\(8),
	datad => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X24_Y17_N24
\gate2|Gate1|Gate2|Gate10|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\);

-- Location: LCCOMB_X22_Y17_N4
\gate2|Gate1|Gate1|Gate2|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate2|AeqB~0_combout\ = (\gate2|Gate9|q\(0) & ((\gate4|gate2|q\(4) $ (\gate2|Gate9|q\(1))) # (!\gate4|gate2|q\(3)))) # (!\gate2|Gate9|q\(0) & ((\gate4|gate2|q\(3)) # (\gate4|gate2|q\(4) $ (\gate2|Gate9|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate9|q\(0),
	datab => \gate4|gate2|q\(3),
	datac => \gate4|gate2|q\(4),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate1|Gate2|AeqB~0_combout\);

-- Location: LCCOMB_X25_Y19_N10
\gate2|Gate1|Gate1|Gate4|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate4|AeqB~0_combout\ = (\gate2|Gate11|q\(0) & ((\gate2|Gate11|q\(1) $ (\gate4|gate2|q\(10))) # (!\gate4|gate2|q\(9)))) # (!\gate2|Gate11|q\(0) & ((\gate4|gate2|q\(9)) # (\gate2|Gate11|q\(1) $ (\gate4|gate2|q\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(0),
	datab => \gate2|Gate11|q\(1),
	datac => \gate4|gate2|q\(10),
	datad => \gate4|gate2|q\(9),
	combout => \gate2|Gate1|Gate1|Gate4|AeqB~0_combout\);

-- Location: LCCOMB_X23_Y19_N2
\gate2|Gate1|Gate1|Gate1|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate1|AeqB~0_combout\ = (\gate2|Gate8|q\(0) & ((\gate2|Gate8|q\(1) $ (\gate4|gate2|q\(1))) # (!\gate4|gate2|q\(0)))) # (!\gate2|Gate8|q\(0) & ((\gate4|gate2|q\(0)) # (\gate2|Gate8|q\(1) $ (\gate4|gate2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(0),
	datab => \gate4|gate2|q\(0),
	datac => \gate2|Gate8|q\(1),
	datad => \gate4|gate2|q\(1),
	combout => \gate2|Gate1|Gate1|Gate1|AeqB~0_combout\);

-- Location: LCCOMB_X23_Y19_N12
\gate2|Gate1|Gate1|Gate1|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate1|AeqB~combout\ = (\gate2|Gate1|Gate1|Gate1|AeqB~0_combout\) # (\gate4|gate2|q\(2) $ (\gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate1|Gate1|AeqB~0_combout\,
	datac => \gate4|gate2|q\(2),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate1|Gate1|AeqB~combout\);

-- Location: LCCOMB_X24_Y17_N28
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ = (\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & (((!\gate2|Gate1|Gate2|Gate16|num1s\(2)) # (!\gate2|Gate1|Gate2|Gate10|num1s\(2))))) # (!\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & 
-- (\gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\ $ (((\gate2|Gate1|Gate2|Gate10|num1s\(2) & \gate2|Gate1|Gate2|Gate16|num1s\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate10|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate16|num1s\(2),
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X23_Y19_N26
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ = (\gate4|gate2|q\(2) & (!\gate4|gate2|q\(1) & \gate4|gate2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(2),
	datab => \gate4|gate2|q\(1),
	datac => \gate4|gate2|q\(0),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X26_Y18_N16
\gate2|Gate1|Gate2|Gate14|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate14|num1s\(2) = (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate14|num1s\(2));

-- Location: LCCOMB_X24_Y19_N10
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ = (\gate4|gate2|q\(8) & (!\gate4|gate2|q\(6) & !\gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(8),
	datac => \gate4|gate2|q\(6),
	datad => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X25_Y17_N2
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ = (!\gate2|Gate11|q\(0) & (!\gate2|Gate11|q\(1) & \gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(0),
	datac => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X25_Y17_N16
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ = (\gate2|Gate11|q\(0) & (!\gate2|Gate11|q\(1) & \gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(0),
	datac => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N4
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ = (\gate2|Gate1|Gate2|Gate20|num1s\(2) & (\gate2|Gate1|Gate2|Gate14|num1s\(2) $ (((\gate2|Gate1|Gate2|Gate19|num1s\(2) & \gate2|Gate1|Gate2|Gate13|num1s\(2)))))) # 
-- (!\gate2|Gate1|Gate2|Gate20|num1s\(2) & (\gate2|Gate1|Gate2|Gate19|num1s\(2) & ((\gate2|Gate1|Gate2|Gate13|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate20|num1s\(2),
	datab => \gate2|Gate1|Gate2|Gate19|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate14|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate13|num1s\(2),
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X24_Y19_N14
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) = (\gate4|gate2|q\(6) & (!\gate4|gate2|q\(8) & \gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datab => \gate4|gate2|q\(8),
	datac => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X25_Y19_N30
\gate2|Gate1|Gate2|Gate12|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate12|num1s\(2) = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) & 
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate12|num1s\(2));

-- Location: LCCOMB_X22_Y17_N26
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) = (!\gate4|gate2|q\(5) & (\gate4|gate2|q\(4) & !\gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datac => \gate4|gate2|q\(4),
	datad => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X23_Y18_N22
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) = (\gate2|Gate8|q\(1) & (!\gate2|Gate8|q\(0) & !\gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X25_Y17_N26
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) = (\gate2|Gate11|q\(1) & (!\gate2|Gate11|q\(2) & \gate2|Gate11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(1),
	datab => \gate2|Gate11|q\(2),
	datac => \gate2|Gate11|q\(0),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X26_Y19_N2
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\ = (\gate2|Gate1|Gate2|Gate12|num1s\(2) & (\gate2|Gate1|Gate2|Gate18|num1s\(2) $ (((\gate2|Gate1|Gate2|Gate17|num1s\(2) & \gate2|Gate1|Gate2|Gate11|num1s\(2)))))) # 
-- (!\gate2|Gate1|Gate2|Gate12|num1s\(2) & (((\gate2|Gate1|Gate2|Gate17|num1s\(2) & \gate2|Gate1|Gate2|Gate11|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate12|num1s\(2),
	datab => \gate2|Gate1|Gate2|Gate18|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate17|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate11|num1s\(2),
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X24_Y17_N22
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ = \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\ $ (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate1|Gate5|num1s\(2) $ 
-- (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X24_Y17_N0
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\ = \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\ $ (((\gate2|Gate1|Gate2|Gate22|min[1]~0_combout\ & ((\gate2|Gate1|Gate2|Gate21|min[1]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\))) # (!\gate2|Gate1|Gate2|Gate22|min[1]~0_combout\ & (\gate2|Gate1|Gate2|Gate21|min[1]~0_combout\ & \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate22|min[1]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~3_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\);

-- Location: LCCOMB_X23_Y19_N20
\gate2|Gate1|Gate2|Gate11|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)) # 
-- (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3)))) # (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3)) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3)) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) & \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\);

-- Location: LCCOMB_X26_Y19_N12
\gate2|Gate1|Gate2|Gate23|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate23|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate17|num1s\(2) & (\gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate11|num1s\(2) & !\gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate17|num1s\(2) & ((\gate2|Gate1|Gate2|Gate11|num1s\(2)) # ((\gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ & !\gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate17|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate11|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate23|NgtM~0_combout\);

-- Location: LCCOMB_X25_Y18_N12
\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ = \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\ $ (((\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X26_Y18_N6
\gate2|Gate1|Gate2|Gate20|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\);

-- Location: LCCOMB_X26_Y17_N16
\gate2|Gate1|Gate2|Gate13|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\);

-- Location: LCCOMB_X26_Y17_N18
\gate2|Gate1|Gate2|Gate25|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\ = (\gate2|Gate1|Gate2|Gate25|NgtM~0_combout\ & (((\gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\)))) # (!\gate2|Gate1|Gate2|Gate25|NgtM~0_combout\ & (\gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\) # (!\gate2|Gate1|Gate2|Gate25|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate25|NgtM~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\);

-- Location: LCCOMB_X26_Y19_N26
\gate2|Gate1|Gate2|Gate23|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate23|NgtM~combout\ = (\gate2|Gate1|Gate2|Gate23|NgtM~0_combout\) # ((\gate2|Gate1|Gate2|Gate23|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\ & !\gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate23|NgtM~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate23|NgtM~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate23|NgtM~combout\);

-- Location: LCCOMB_X26_Y19_N20
\gate2|Gate1|Gate2|Gate23|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate23|NgtM~combout\ & ((\gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\))) # (!\gate2|Gate1|Gate2|Gate23|NgtM~combout\ & (\gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate23|NgtM~combout\,
	datac => \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\);

-- Location: LCCOMB_X25_Y18_N10
\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ = \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ $ (((\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ & (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	datab => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X25_Y18_N16
\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ = (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ & (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X26_Y19_N4
\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ = (\gate2|Gate1|Gate2|Gate23|min[1]~1_combout\ & ((\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\) # (\gate2|Gate1|Gate2|Gate24|min[1]~0_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate23|min[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ & \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X24_Y18_N24
\gate2|Gate1|Gate3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux3~0_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s\(2) & ((\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ & !\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)) # 
-- (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ $ (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	datac => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate3|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y18_N30
\gate2|Gate1|Gate3|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux1~1_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ & (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ $ 
-- (!\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)))) # (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ $ (((\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\,
	datac => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate3|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y18_N2
\gate2|Gate1|Gate3|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux1~2_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s\(2) & ((\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\gate2|Gate1|Gate3|Mux1~1_combout\))) # (!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & 
-- (\gate2|Gate1|Gate3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datab => \gate2|Gate1|Gate3|Mux1~0_combout\,
	datac => \gate2|Gate1|Gate3|Mux1~1_combout\,
	datad => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	combout => \gate2|Gate1|Gate3|Mux1~2_combout\);

-- Location: LCFF_X21_Y18_N7
\gate1|y_present.c\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.c~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.d~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.c~regout\);

-- Location: LCCOMB_X21_Y18_N2
\gate1|y_present.d~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~3_combout\ = (\gate1|y_present.c~regout\ & (!\gate1|y_present.h~regout\ & \P_generated~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.c~regout\,
	datab => \gate1|y_present.h~regout\,
	datad => \P_generated~combout\,
	combout => \gate1|y_present.d~3_combout\);

-- Location: LCCOMB_X21_Y18_N6
\gate1|y_present.c~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.c~0_combout\ = (!\gate1|y_present.f~regout\ & (\gate1|y_present.b~regout\ & (!\gate1|y_present.g~regout\ & !\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.f~regout\,
	datab => \gate1|y_present.b~regout\,
	datac => \gate1|y_present.g~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|y_present.c~0_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X22_Y18_N30
\gate1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector8~0_combout\ = (\gate1|y_present.g~regout\) # ((!\modify_G~combout\ & \gate1|y_present.h~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \gate1|y_present.g~regout\,
	datac => \gate1|y_present.h~regout\,
	combout => \gate1|Selector8~0_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_mode,
	combout => \mode~combout\);

-- Location: LCCOMB_X22_Y18_N4
\gate1|y_present.a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.a~0_combout\ = (!\Start~combout\ & \mode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~combout\,
	datac => \mode~combout\,
	combout => \gate1|y_present.a~0_combout\);

-- Location: CLKCTRL_G9
\gate1|y_present.a~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \gate1|y_present.a~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \gate1|y_present.a~0clkctrl_outclk\);

-- Location: LCFF_X22_Y18_N31
\gate1|y_present.h\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector8~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.h~regout\);

-- Location: LCCOMB_X21_Y18_N18
\gate1|y_present.d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~1_combout\ = (\gate1|y_present.c~regout\) # (\gate1|y_present.h~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.c~regout\,
	datad => \gate1|y_present.h~regout\,
	combout => \gate1|y_present.d~1_combout\);

-- Location: LCCOMB_X21_Y18_N26
\gate1|y_present.b~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.b~0_combout\ = (!\gate1|y_present.a~regout\ & (!\gate1|y_present.d~regout\ & (!\gate1|y_present.g~regout\ & !\gate1|y_present.f~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.a~regout\,
	datab => \gate1|y_present.d~regout\,
	datac => \gate1|y_present.g~regout\,
	datad => \gate1|y_present.f~regout\,
	combout => \gate1|y_present.b~0_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X21_Y18_N16
\gate1|y_present.a~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.a~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \gate1|y_present.a~feeder_combout\);

-- Location: LCFF_X21_Y18_N17
\gate1|y_present.a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.a~feeder_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.a~regout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_P_generated,
	combout => \P_generated~combout\);

-- Location: LCCOMB_X21_Y18_N8
\gate1|y_present.f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.f~0_combout\ = (\gate1|y_present.c~regout\ & ((\P_generated~combout\) # ((!\Start~combout\ & !\gate1|y_present.a~regout\)))) # (!\gate1|y_present.c~regout\ & (!\Start~combout\ & (!\gate1|y_present.a~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.c~regout\,
	datab => \Start~combout\,
	datac => \gate1|y_present.a~regout\,
	datad => \P_generated~combout\,
	combout => \gate1|y_present.f~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X22_Y18_N18
\gate1|y_present.f~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.f~1_combout\ = (\mode~combout\ & ((!\Ready~combout\) # (!\gate1|y_present.e~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.e~regout\,
	datac => \mode~combout\,
	datad => \Ready~combout\,
	combout => \gate1|y_present.f~1_combout\);

-- Location: LCCOMB_X21_Y18_N30
\gate1|y_present.f~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.f~2_combout\ = (!\gate1|y_present.f~0_combout\ & (\gate1|y_present.f~1_combout\ & ((\gate1|y_present.c~regout\) # (!\gate1|y_present.d~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.c~regout\,
	datab => \gate1|y_present.d~0_combout\,
	datac => \gate1|y_present.f~0_combout\,
	datad => \gate1|y_present.f~1_combout\,
	combout => \gate1|y_present.f~2_combout\);

-- Location: LCFF_X21_Y18_N27
\gate1|y_present.b\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.b~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.b~regout\);

-- Location: LCCOMB_X21_Y18_N28
\gate1|y_present.d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~0_combout\ = (!\modify_G~combout\ & ((\gate1|y_present.b~regout\) # (\gate1|y_present.h~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \gate1|y_present.b~regout\,
	datad => \gate1|y_present.h~regout\,
	combout => \gate1|y_present.d~0_combout\);

-- Location: LCCOMB_X21_Y18_N24
\gate1|y_present.d~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~2_combout\ = (!\gate1|y_present.e~regout\ & (!\gate1|y_present.a~regout\ & !\Start~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|y_present.e~regout\,
	datac => \gate1|y_present.a~regout\,
	datad => \Start~combout\,
	combout => \gate1|y_present.d~2_combout\);

-- Location: LCCOMB_X21_Y18_N20
\gate1|y_present.d~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~4_combout\ = (!\gate1|y_present.d~3_combout\ & (!\gate1|y_present.d~0_combout\ & (!\gate1|y_present.d~2_combout\ & \gate1|y_present.f~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.d~3_combout\,
	datab => \gate1|y_present.d~0_combout\,
	datac => \gate1|y_present.d~2_combout\,
	datad => \gate1|y_present.f~1_combout\,
	combout => \gate1|y_present.d~4_combout\);

-- Location: LCFF_X21_Y18_N19
\gate1|y_present.d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.d~1_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.d~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.d~regout\);

-- Location: LCCOMB_X22_Y18_N24
\gate1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector5~0_combout\ = (\gate1|y_present.d~regout\) # ((\gate1|y_present.e~regout\ & \Ready~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|y_present.d~regout\,
	datac => \gate1|y_present.e~regout\,
	datad => \Ready~combout\,
	combout => \gate1|Selector5~0_combout\);

-- Location: LCFF_X22_Y18_N25
\gate1|y_present.e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector5~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.e~regout\);

-- Location: LCCOMB_X21_Y18_N12
\gate1|y_present.f~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.f~feeder_combout\ = \gate1|y_present.e~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|y_present.e~regout\,
	combout => \gate1|y_present.f~feeder_combout\);

-- Location: LCFF_X21_Y18_N13
\gate1|y_present.f\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.f~feeder_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.f~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.f~regout\);

-- Location: LCCOMB_X22_Y18_N14
\gate1|y_present.g~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.g~feeder_combout\ = \gate1|y_present.f~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|y_present.f~regout\,
	combout => \gate1|y_present.g~feeder_combout\);

-- Location: LCFF_X22_Y18_N15
\gate1|y_present.g\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.g~feeder_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.g~regout\);

-- Location: LCCOMB_X22_Y18_N8
\gate1|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector0~0_combout\ = (\gate1|y_present.g~regout\) # ((\gate1|y_present.a~regout\ & (\gate1|switch_REG~regout\ & !\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.a~regout\,
	datab => \gate1|y_present.g~regout\,
	datac => \gate1|switch_REG~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|Selector0~0_combout\);

-- Location: LCCOMB_X22_Y18_N16
\gate1|RippleBlankInState~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|RippleBlankInState~0_combout\ = (\Start~combout\ & \mode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~combout\,
	datac => \mode~combout\,
	combout => \gate1|RippleBlankInState~0_combout\);

-- Location: LCFF_X22_Y18_N9
\gate1|switch_REG\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector0~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|switch_REG~regout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_sw(0),
	combout => \sw~combout\(0));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_SELECT[0]~I\ : cycloneii_io
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
	padio => ww_GR_SELECT(0),
	combout => \GR_SELECT~combout\(0));

-- Location: LCCOMB_X23_Y18_N0
\gate2|GR1_EN\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|GR1_EN~combout\ = (\modify_G~combout\ & \GR_SELECT~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datad => \GR_SELECT~combout\(0),
	combout => \gate2|GR1_EN~combout\);

-- Location: LCFF_X23_Y18_N3
\gate2|Gate8|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR1_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(0));

-- Location: LCCOMB_X22_Y18_N6
\gate1|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector9~0_combout\ = (\gate1|y_present.g~regout\) # ((\gate1|RippleBlankInState~regout\ & !\gate1|y_present.d~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|y_present.g~regout\,
	datac => \gate1|RippleBlankInState~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|Selector9~0_combout\);

-- Location: LCFF_X22_Y18_N7
\gate1|RippleBlankInState\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector9~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|RippleBlankInState~regout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_sw(2),
	combout => \sw~combout\(2));

-- Location: LCFF_X23_Y18_N1
\gate2|Gate8|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR1_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(2));

-- Location: LCCOMB_X23_Y18_N24
\gate2|gate16|gate10|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux6~2_combout\ = (\gate2|Gate8|q\(1) & (((\gate1|RippleBlankInState~regout\)) # (!\gate2|Gate8|q\(0)))) # (!\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) & ((\gate2|Gate8|q\(2)) # (!\gate1|RippleBlankInState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate1|RippleBlankInState~regout\,
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux6~2_combout\);

-- Location: LCCOMB_X23_Y18_N10
\gate2|gate16|gate10|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux6~3_combout\ = (!\gate1|switch_REG~regout\ & \gate2|gate16|gate10|Mux6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datad => \gate2|gate16|gate10|Mux6~2_combout\,
	combout => \gate2|gate16|gate10|Mux6~3_combout\);

-- Location: LCCOMB_X23_Y18_N4
\gate2|gate16|gate10|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux5~2_combout\ = (\gate2|Gate8|q\(1) & ((\gate2|Gate8|q\(0)) # ((!\gate2|Gate8|q\(2)) # (!\gate1|RippleBlankInState~regout\)))) # (!\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) $ (((\gate2|Gate8|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate1|RippleBlankInState~regout\,
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux5~2_combout\);

-- Location: LCCOMB_X23_Y18_N6
\gate2|gate16|gate10|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux5~3_combout\ = (!\gate1|switch_REG~regout\ & \gate2|gate16|gate10|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datac => \gate2|gate16|gate10|Mux5~2_combout\,
	combout => \gate2|gate16|gate10|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y18_N26
\gate2|sr1N[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr1N[2]~0_combout\ = (!\gate1|switch_REG~regout\ & \gate2|Gate8|q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datac => \gate2|Gate8|q\(2),
	combout => \gate2|sr1N[2]~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_sw(1),
	combout => \sw~combout\(1));

-- Location: LCFF_X23_Y18_N13
\gate2|Gate8|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR1_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(1));

-- Location: LCCOMB_X23_Y18_N12
\gate2|sr1N[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr1N[1]~2_combout\ = (\gate2|Gate8|q\(1) & !\gate1|switch_REG~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate2|Gate8|q\(1),
	datad => \gate1|switch_REG~regout\,
	combout => \gate2|sr1N[1]~2_combout\);

-- Location: LCCOMB_X22_Y18_N28
\gate2|sr1N[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr1N[0]~1_combout\ = (!\gate1|switch_REG~regout\ & \gate2|Gate8|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datad => \gate2|Gate8|q\(0),
	combout => \gate2|sr1N[0]~1_combout\);

-- Location: LCCOMB_X22_Y18_N0
\gate2|gate16|gate10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux4~0_combout\ = (\gate1|RippleBlankInState~regout\ & (!\gate2|sr1N[2]~0_combout\ & ((!\gate2|sr1N[0]~1_combout\)))) # (!\gate1|RippleBlankInState~regout\ & (((!\gate2|sr1N[1]~2_combout\ & \gate2|sr1N[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr1N[2]~0_combout\,
	datac => \gate2|sr1N[1]~2_combout\,
	datad => \gate2|sr1N[0]~1_combout\,
	combout => \gate2|gate16|gate10|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y18_N10
\gate2|gate16|gate10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux3~0_combout\ = (\gate2|sr1N[0]~1_combout\ & ((\gate2|sr1N[2]~0_combout\ $ (!\gate2|sr1N[1]~2_combout\)))) # (!\gate2|sr1N[0]~1_combout\ & ((\gate1|RippleBlankInState~regout\ & ((!\gate2|sr1N[1]~2_combout\))) # 
-- (!\gate1|RippleBlankInState~regout\ & (!\gate2|sr1N[2]~0_combout\ & \gate2|sr1N[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr1N[2]~0_combout\,
	datac => \gate2|sr1N[1]~2_combout\,
	datad => \gate2|sr1N[0]~1_combout\,
	combout => \gate2|gate16|gate10|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y18_N2
\gate2|gate16|gate10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux2~0_combout\ = (\gate1|switch_REG~regout\ & (\gate1|RippleBlankInState~regout\)) # (!\gate1|switch_REG~regout\ & ((\gate2|Gate8|q\(1) & ((\gate2|Gate8|q\(0)))) # (!\gate2|Gate8|q\(1) & (\gate1|RippleBlankInState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datab => \gate1|RippleBlankInState~regout\,
	datac => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(1),
	combout => \gate2|gate16|gate10|Mux2~0_combout\);

-- Location: LCCOMB_X22_Y18_N12
\gate2|gate16|gate10|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux1~0_combout\ = (\gate1|RippleBlankInState~regout\ & (((\gate2|sr1N[1]~2_combout\ & \gate2|sr1N[0]~1_combout\)) # (!\gate2|sr1N[2]~0_combout\))) # (!\gate1|RippleBlankInState~regout\ & (((\gate2|sr1N[1]~2_combout\ & 
-- \gate2|sr1N[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr1N[2]~0_combout\,
	datac => \gate2|sr1N[1]~2_combout\,
	datad => \gate2|sr1N[0]~1_combout\,
	combout => \gate2|gate16|gate10|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y18_N28
\gate2|gate16|gate10|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux0~4_combout\ = (\gate2|Gate8|q\(1) & (((\gate1|switch_REG~regout\) # (!\gate2|Gate8|q\(2))) # (!\gate2|Gate8|q\(0)))) # (!\gate2|Gate8|q\(1) & (((\gate2|Gate8|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux0~4_combout\);

-- Location: LCCOMB_X23_Y18_N14
\gate2|gate16|gate10|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux0~5_combout\ = (\gate1|switch_REG~regout\ & (((\gate1|RippleBlankInState~regout\)))) # (!\gate1|switch_REG~regout\ & ((\gate2|gate16|gate10|Mux0~4_combout\ & (!\gate1|RippleBlankInState~regout\)) # 
-- (!\gate2|gate16|gate10|Mux0~4_combout\ & ((\gate1|RippleBlankInState~regout\) # (\gate2|Gate8|q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010110110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datab => \gate2|gate16|gate10|Mux0~4_combout\,
	datac => \gate1|RippleBlankInState~regout\,
	datad => \gate2|Gate8|q\(0),
	combout => \gate2|gate16|gate10|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y19_N26
\gate4|gate1|TM_ADDR3[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR3[0]~7_combout\ = !\gate4|gate1|TM_ADDR3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate4|gate1|TM_ADDR3\(0),
	combout => \gate4|gate1|TM_ADDR3[0]~7_combout\);

-- Location: LCCOMB_X21_Y19_N6
\gate4|y_present.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|y_present.A~0_combout\ = (\Start~combout\) # ((\gate4|y_present.A~regout\) # ((\gate4|y_present.B~regout\ & !\P_generated~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|y_present.B~regout\,
	datab => \Start~combout\,
	datac => \gate4|y_present.A~regout\,
	datad => \P_generated~combout\,
	combout => \gate4|y_present.A~0_combout\);

-- Location: LCFF_X21_Y19_N7
\gate4|y_present.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|y_present.A~0_combout\,
	aclr => \ALT_INV_Start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|y_present.A~regout\);

-- Location: LCCOMB_X21_Y19_N0
\gate4|tcr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|tcr2~0_combout\ = (\gate4|tcr2~regout\) # (!\gate4|y_present.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate4|tcr2~regout\,
	datad => \gate4|y_present.A~regout\,
	combout => \gate4|tcr2~0_combout\);

-- Location: LCFF_X21_Y19_N1
\gate4|tcr2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|tcr2~0_combout\,
	aclr => \ALT_INV_Start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|tcr2~regout\);

-- Location: LCCOMB_X22_Y19_N0
\gate4|gate1|TM_ADDR1[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR1[0]~3_combout\ = !\gate4|gate1|TM_ADDR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate4|gate1|TM_ADDR1\(0),
	combout => \gate4|gate1|TM_ADDR1[0]~3_combout\);

-- Location: LCCOMB_X21_Y19_N24
\gate4|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|Selector1~0_combout\ = (\gate4|y_present.B~regout\ & (((\P_generated~combout\)))) # (!\gate4|y_present.B~regout\ & (!\gate4|y_present.A~regout\ & (\Start~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|y_present.A~regout\,
	datab => \Start~combout\,
	datac => \gate4|y_present.B~regout\,
	datad => \P_generated~combout\,
	combout => \gate4|Selector1~0_combout\);

-- Location: LCFF_X21_Y19_N25
\gate4|y_present.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|Selector1~0_combout\,
	aclr => \ALT_INV_Start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|y_present.B~regout\);

-- Location: LCCOMB_X21_Y19_N2
\gate4|tce2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|tce2~0_combout\ = (\gate4|y_present.A~regout\ & (\Start~combout\ & (\gate4|y_present.B~regout\ $ (\P_generated~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|y_present.A~regout\,
	datab => \Start~combout\,
	datac => \gate4|y_present.B~regout\,
	datad => \P_generated~combout\,
	combout => \gate4|tce2~0_combout\);

-- Location: LCCOMB_X21_Y19_N18
\gate4|tce2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|tce2~1_combout\ = (\gate4|tce2~0_combout\ & (\gate4|y_present.B~regout\)) # (!\gate4|tce2~0_combout\ & ((\gate4|tce2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|y_present.B~regout\,
	datab => \gate4|tce2~0_combout\,
	datac => \gate4|tce2~regout\,
	combout => \gate4|tce2~1_combout\);

-- Location: LCFF_X21_Y19_N19
\gate4|tce2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|tce2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|tce2~regout\);

-- Location: LCCOMB_X21_Y19_N12
\gate4|gate1|TM_ADDR1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR1[0]~0_combout\ = (\gate4|tce2~regout\ & \gate4|tcr2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|tce2~regout\,
	datad => \gate4|tcr2~regout\,
	combout => \gate4|gate1|TM_ADDR1[0]~0_combout\);

-- Location: LCFF_X22_Y19_N1
\gate4|gate1|TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR1[0]~3_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR1\(0));

-- Location: LCCOMB_X22_Y19_N26
\gate4|gate1|TM_ADDR1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR1~2_combout\ = (\gate4|gate1|TM_ADDR1\(0) & (!\gate4|gate1|TM_ADDR1\(1) & !\gate4|gate1|TM_ADDR1\(2))) # (!\gate4|gate1|TM_ADDR1\(0) & (\gate4|gate1|TM_ADDR1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate1|TM_ADDR1\(0),
	datac => \gate4|gate1|TM_ADDR1\(1),
	datad => \gate4|gate1|TM_ADDR1\(2),
	combout => \gate4|gate1|TM_ADDR1~2_combout\);

-- Location: LCFF_X22_Y19_N27
\gate4|gate1|TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR1~2_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR1\(1));

-- Location: LCCOMB_X22_Y19_N30
\gate4|gate1|TM_ADDR1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR1~1_combout\ = (\gate4|gate1|TM_ADDR1\(0) & (!\gate4|gate1|TM_ADDR1\(2) & \gate4|gate1|TM_ADDR1\(1))) # (!\gate4|gate1|TM_ADDR1\(0) & (\gate4|gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate1|TM_ADDR1\(0),
	datac => \gate4|gate1|TM_ADDR1\(2),
	datad => \gate4|gate1|TM_ADDR1\(1),
	combout => \gate4|gate1|TM_ADDR1~1_combout\);

-- Location: LCFF_X22_Y19_N31
\gate4|gate1|TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR1~1_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR1\(2));

-- Location: LCCOMB_X22_Y19_N18
\gate4|gate1|TM_ADDR2[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR2[0]~3_combout\ = !\gate4|gate1|TM_ADDR2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate4|gate1|TM_ADDR2\(0),
	combout => \gate4|gate1|TM_ADDR2[0]~3_combout\);

-- Location: LCCOMB_X22_Y19_N22
\gate4|gate1|TM_ADDR2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR2[2]~1_combout\ = (\gate4|gate1|TM_ADDR1[0]~0_combout\ & (\gate4|gate1|TM_ADDR1\(2) & (\gate4|gate1|TM_ADDR1\(0) & !\gate4|gate1|TM_ADDR1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	datab => \gate4|gate1|TM_ADDR1\(2),
	datac => \gate4|gate1|TM_ADDR1\(0),
	datad => \gate4|gate1|TM_ADDR1\(1),
	combout => \gate4|gate1|TM_ADDR2[2]~1_combout\);

-- Location: LCFF_X22_Y19_N19
\gate4|gate1|TM_ADDR2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR2[0]~3_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR2\(0));

-- Location: LCCOMB_X22_Y19_N24
\gate4|gate1|TM_ADDR2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR2~0_combout\ = (\gate4|gate1|TM_ADDR2\(1) & ((\gate4|gate1|TM_ADDR2\(2) $ (\gate4|gate1|TM_ADDR2\(0))))) # (!\gate4|gate1|TM_ADDR2\(1) & (\gate4|gate1|TM_ADDR2\(2) & ((!\gate4|gate1|TM_ADDR2\(0)) # 
-- (!\gate4|gate1|RPG_table~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR2\(1),
	datab => \gate4|gate1|RPG_table~0_combout\,
	datac => \gate4|gate1|TM_ADDR2\(2),
	datad => \gate4|gate1|TM_ADDR2\(0),
	combout => \gate4|gate1|TM_ADDR2~0_combout\);

-- Location: LCFF_X22_Y19_N25
\gate4|gate1|TM_ADDR2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR2~0_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR2\(2));

-- Location: LCCOMB_X22_Y19_N28
\gate4|gate1|RPG_table~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|RPG_table~0_combout\ = (\gate4|gate1|TM_ADDR1\(0) & (\gate4|gate1|TM_ADDR1\(2) & (\gate4|gate1|TM_ADDR2\(2) & !\gate4|gate1|TM_ADDR1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR1\(0),
	datab => \gate4|gate1|TM_ADDR1\(2),
	datac => \gate4|gate1|TM_ADDR2\(2),
	datad => \gate4|gate1|TM_ADDR1\(1),
	combout => \gate4|gate1|RPG_table~0_combout\);

-- Location: LCCOMB_X22_Y19_N20
\gate4|gate1|TM_ADDR2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR2~2_combout\ = (\gate4|gate1|TM_ADDR2\(1) & ((!\gate4|gate1|TM_ADDR2\(0)))) # (!\gate4|gate1|TM_ADDR2\(1) & (!\gate4|gate1|RPG_table~0_combout\ & \gate4|gate1|TM_ADDR2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate1|RPG_table~0_combout\,
	datac => \gate4|gate1|TM_ADDR2\(1),
	datad => \gate4|gate1|TM_ADDR2\(0),
	combout => \gate4|gate1|TM_ADDR2~2_combout\);

-- Location: LCFF_X22_Y19_N21
\gate4|gate1|TM_ADDR2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR2~2_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR2[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR2\(1));

-- Location: LCCOMB_X22_Y19_N6
\gate4|gate1|TM_ADDR3[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR3[0]~6_combout\ = (\gate4|gate1|TM_ADDR1[0]~0_combout\ & (\gate4|gate1|RPG_table~0_combout\ & (!\gate4|gate1|TM_ADDR2\(1) & \gate4|gate1|TM_ADDR2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	datab => \gate4|gate1|RPG_table~0_combout\,
	datac => \gate4|gate1|TM_ADDR2\(1),
	datad => \gate4|gate1|TM_ADDR2\(0),
	combout => \gate4|gate1|TM_ADDR3[0]~6_combout\);

-- Location: LCFF_X24_Y19_N27
\gate4|gate1|TM_ADDR3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR3[0]~7_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR3\(0));

-- Location: LCCOMB_X24_Y19_N18
\gate4|gate1|TM_ADDR3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR3~5_combout\ = (!\gate4|gate1|TM_ADDR4[0]~1_combout\ & (\gate4|gate1|TM_ADDR3\(1) $ (\gate4|gate1|TM_ADDR3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR4[0]~1_combout\,
	datac => \gate4|gate1|TM_ADDR3\(1),
	datad => \gate4|gate1|TM_ADDR3\(0),
	combout => \gate4|gate1|TM_ADDR3~5_combout\);

-- Location: LCFF_X24_Y19_N19
\gate4|gate1|TM_ADDR3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR3~5_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR3\(1));

-- Location: LCCOMB_X24_Y19_N12
\gate4|gate1|TM_ADDR3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR3~4_combout\ = (!\gate4|gate1|TM_ADDR4[0]~1_combout\ & (\gate4|gate1|TM_ADDR3\(2) $ (((\gate4|gate1|TM_ADDR3\(0) & \gate4|gate1|TM_ADDR3\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR4[0]~1_combout\,
	datab => \gate4|gate1|TM_ADDR3\(0),
	datac => \gate4|gate1|TM_ADDR3\(2),
	datad => \gate4|gate1|TM_ADDR3\(1),
	combout => \gate4|gate1|TM_ADDR3~4_combout\);

-- Location: LCFF_X24_Y19_N13
\gate4|gate1|TM_ADDR3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR3~4_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR3[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR3\(2));

-- Location: LCFF_X24_Y19_N9
\gate4|gate2|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR3\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(8));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_SELECT[2]~I\ : cycloneii_io
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
	padio => ww_GR_SELECT(2),
	combout => \GR_SELECT~combout\(2));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_modify_G,
	combout => \modify_G~combout\);

-- Location: LCCOMB_X25_Y17_N4
\gate2|GR3_EN\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|GR3_EN~combout\ = (\GR_SELECT~combout\(2) & \modify_G~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GR_SELECT~combout\(2),
	datac => \modify_G~combout\,
	combout => \gate2|GR3_EN~combout\);

-- Location: LCFF_X25_Y17_N25
\gate2|Gate10|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR3_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(2));

-- Location: LCFF_X24_Y19_N15
\gate4|gate2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR3\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(7));

-- Location: LCFF_X25_Y17_N19
\gate2|Gate10|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR3_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(0));

-- Location: LCFF_X25_Y17_N13
\gate2|Gate10|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR3_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(1));

-- Location: LCCOMB_X24_Y19_N22
\gate2|Gate1|Gate1|Gate3|AeqB~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate3|AeqB~0_combout\ = (\gate4|gate2|q\(6) & ((\gate4|gate2|q\(7) $ (\gate2|Gate10|q\(1))) # (!\gate2|Gate10|q\(0)))) # (!\gate4|gate2|q\(6) & ((\gate2|Gate10|q\(0)) # (\gate4|gate2|q\(7) $ (\gate2|Gate10|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datab => \gate4|gate2|q\(7),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate1|Gate3|AeqB~0_combout\);

-- Location: LCCOMB_X24_Y19_N6
\gate2|Gate1|Gate1|Gate3|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate3|AeqB~combout\ = (\gate2|Gate1|Gate1|Gate3|AeqB~0_combout\) # (\gate4|gate2|q\(8) $ (\gate2|Gate10|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(8),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate1|Gate1|Gate3|AeqB~0_combout\,
	combout => \gate2|Gate1|Gate1|Gate3|AeqB~combout\);

-- Location: LCFF_X22_Y17_N17
\gate4|gate2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR2\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(5));

-- Location: LCCOMB_X22_Y17_N0
\gate2|Gate9|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate9|q[2]~feeder_combout\ = \sw~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(2),
	combout => \gate2|Gate9|q[2]~feeder_combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_SELECT[1]~I\ : cycloneii_io
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
	padio => ww_GR_SELECT(1),
	combout => \GR_SELECT~combout\(1));

-- Location: LCCOMB_X23_Y18_N18
\gate2|GR2_EN\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|GR2_EN~combout\ = (\GR_SELECT~combout\(1) & \modify_G~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \GR_SELECT~combout\(1),
	datad => \modify_G~combout\,
	combout => \gate2|GR2_EN~combout\);

-- Location: LCFF_X22_Y17_N1
\gate2|Gate9|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate9|q[2]~feeder_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate2|GR2_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(2));

-- Location: LCCOMB_X22_Y17_N16
\gate2|Gate1|Gate1|Gate2|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate2|AeqB~combout\ = (\gate2|Gate1|Gate1|Gate2|AeqB~0_combout\) # (\gate4|gate2|q\(5) $ (\gate2|Gate9|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate2|AeqB~0_combout\,
	datac => \gate4|gate2|q\(5),
	datad => \gate2|Gate9|q\(2),
	combout => \gate2|Gate1|Gate1|Gate2|AeqB~combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\GR_SELECT[3]~I\ : cycloneii_io
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
	padio => ww_GR_SELECT(3),
	combout => \GR_SELECT~combout\(3));

-- Location: LCCOMB_X25_Y17_N14
\gate2|GR4_EN\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|GR4_EN~combout\ = (\GR_SELECT~combout\(3) & \modify_G~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GR_SELECT~combout\(3),
	datac => \modify_G~combout\,
	combout => \gate2|GR4_EN~combout\);

-- Location: LCFF_X25_Y17_N23
\gate2|Gate11|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR4_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(2));

-- Location: LCCOMB_X24_Y19_N0
\gate4|gate1|TM_ADDR4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4[0]~0_combout\ = (\gate4|gate1|TM_ADDR3\(2) & (\gate4|gate1|TM_ADDR3\(0) & !\gate4|gate1|TM_ADDR3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR3\(2),
	datab => \gate4|gate1|TM_ADDR3\(0),
	datad => \gate4|gate1|TM_ADDR3\(1),
	combout => \gate4|gate1|TM_ADDR4[0]~0_combout\);

-- Location: LCCOMB_X22_Y19_N8
\gate4|gate1|TM_ADDR4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4[0]~1_combout\ = (!\gate4|gate1|TM_ADDR2\(1) & (\gate4|gate1|TM_ADDR2\(0) & (\gate4|gate1|TM_ADDR4[0]~0_combout\ & \gate4|gate1|RPG_table~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR2\(1),
	datab => \gate4|gate1|TM_ADDR2\(0),
	datac => \gate4|gate1|TM_ADDR4[0]~0_combout\,
	datad => \gate4|gate1|RPG_table~0_combout\,
	combout => \gate4|gate1|TM_ADDR4[0]~1_combout\);

-- Location: LCCOMB_X25_Y19_N8
\gate4|gate1|TM_ADDR4[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4[1]~5_combout\ = \gate4|gate1|TM_ADDR4\(1) $ (((\gate4|gate1|TM_ADDR4\(0) & (\gate4|gate1|TM_ADDR4[0]~1_combout\ & \gate4|gate1|TM_ADDR1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR4\(0),
	datab => \gate4|gate1|TM_ADDR4[0]~1_combout\,
	datac => \gate4|gate1|TM_ADDR4\(1),
	datad => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	combout => \gate4|gate1|TM_ADDR4[1]~5_combout\);

-- Location: LCFF_X25_Y19_N9
\gate4|gate1|TM_ADDR4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR4[1]~5_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR4\(1));

-- Location: LCCOMB_X25_Y19_N24
\gate4|gate1|TM_ADDR4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4~2_combout\ = (\gate4|gate1|TM_ADDR4\(0) & (\gate4|gate1|TM_ADDR4\(1) $ ((\gate4|gate1|TM_ADDR4\(2))))) # (!\gate4|gate1|TM_ADDR4\(0) & (\gate4|gate1|TM_ADDR4\(2) & ((\gate4|gate1|TM_ADDR4\(1)) # 
-- (!\gate4|gate1|TM_ADDR4[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR4\(0),
	datab => \gate4|gate1|TM_ADDR4\(1),
	datac => \gate4|gate1|TM_ADDR4\(2),
	datad => \gate4|gate1|TM_ADDR4[0]~1_combout\,
	combout => \gate4|gate1|TM_ADDR4~2_combout\);

-- Location: LCCOMB_X22_Y19_N2
\gate4|gate1|RPG_table~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|RPG_table~1_combout\ = (\gate4|gate1|TM_ADDR2\(0) & !\gate4|gate1|TM_ADDR2\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate1|TM_ADDR2\(0),
	datac => \gate4|gate1|TM_ADDR2\(1),
	combout => \gate4|gate1|RPG_table~1_combout\);

-- Location: LCCOMB_X22_Y19_N12
\gate4|gate1|TM_ADDR4[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4[0]~3_combout\ = (\gate4|gate1|TM_ADDR1[0]~0_combout\ & (\gate4|gate1|RPG_table~0_combout\ & (\gate4|gate1|TM_ADDR4[0]~0_combout\ & \gate4|gate1|RPG_table~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR1[0]~0_combout\,
	datab => \gate4|gate1|RPG_table~0_combout\,
	datac => \gate4|gate1|TM_ADDR4[0]~0_combout\,
	datad => \gate4|gate1|RPG_table~1_combout\,
	combout => \gate4|gate1|TM_ADDR4[0]~3_combout\);

-- Location: LCFF_X25_Y19_N25
\gate4|gate1|TM_ADDR4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR4~2_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR4[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR4\(2));

-- Location: LCFF_X25_Y19_N23
\gate4|gate2|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR4\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(11));

-- Location: LCCOMB_X25_Y19_N28
\gate2|Gate1|Gate1|Gate4|AeqB\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate4|AeqB~combout\ = (\gate2|Gate1|Gate1|Gate4|AeqB~0_combout\) # (\gate2|Gate11|q\(2) $ (\gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate4|AeqB~0_combout\,
	datab => \gate2|Gate11|q\(2),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate1|Gate4|AeqB~combout\);

-- Location: LCCOMB_X24_Y19_N4
\gate2|Gate1|Gate1|Gate5|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate5|num1s\(2) = (\gate2|Gate1|Gate1|Gate1|AeqB~combout\) # ((\gate2|Gate1|Gate1|Gate3|AeqB~combout\) # ((\gate2|Gate1|Gate1|Gate2|AeqB~combout\) # (\gate2|Gate1|Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate1|AeqB~combout\,
	datab => \gate2|Gate1|Gate1|Gate3|AeqB~combout\,
	datac => \gate2|Gate1|Gate1|Gate2|AeqB~combout\,
	datad => \gate2|Gate1|Gate1|Gate4|AeqB~combout\,
	combout => \gate2|Gate1|Gate1|Gate5|num1s\(2));

-- Location: LCCOMB_X23_Y18_N20
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ = (!\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) & \gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCFF_X22_Y17_N21
\gate2|Gate9|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR2_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(0));

-- Location: LCFF_X22_Y17_N19
\gate2|Gate9|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR2_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(1));

-- Location: LCCOMB_X22_Y17_N22
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ = (\gate2|Gate9|q\(2) & (\gate2|Gate9|q\(0) & !\gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X25_Y17_N12
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\ = (\gate2|Gate10|q\(2) & (\gate2|Gate10|q\(0) & !\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate10|q\(2),
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X26_Y18_N26
\gate2|Gate1|Gate2|Gate20|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\ = \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\);

-- Location: LCFF_X22_Y17_N5
\gate4|gate2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR2\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(4));

-- Location: LCFF_X22_Y17_N3
\gate4|gate2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR2\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(3));

-- Location: LCCOMB_X22_Y17_N12
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ = (\gate4|gate2|q\(5) & (!\gate4|gate2|q\(4) & \gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datac => \gate4|gate2|q\(4),
	datad => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X25_Y19_N20
\gate4|gate1|TM_ADDR4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate4|gate1|TM_ADDR4~4_combout\ = (!\gate4|gate1|TM_ADDR4\(0) & (((\gate4|gate1|TM_ADDR4\(1)) # (!\gate4|gate1|TM_ADDR4[0]~1_combout\)) # (!\gate4|gate1|TM_ADDR4\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate1|TM_ADDR4\(2),
	datab => \gate4|gate1|TM_ADDR4\(1),
	datac => \gate4|gate1|TM_ADDR4\(0),
	datad => \gate4|gate1|TM_ADDR4[0]~1_combout\,
	combout => \gate4|gate1|TM_ADDR4~4_combout\);

-- Location: LCFF_X25_Y19_N21
\gate4|gate1|TM_ADDR4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate4|gate1|TM_ADDR4~4_combout\,
	aclr => \gate4|ALT_INV_tcr2~regout\,
	ena => \gate4|gate1|TM_ADDR4[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate1|TM_ADDR4\(0));

-- Location: LCFF_X25_Y19_N7
\gate4|gate2|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR4\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(9));

-- Location: LCCOMB_X25_Y19_N6
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ = (!\gate4|gate2|q\(10) & (\gate4|gate2|q\(9) & \gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(10),
	datac => \gate4|gate2|q\(9),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X24_Y19_N20
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\ = (\gate4|gate2|q\(6) & (\gate4|gate2|q\(8) & !\gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datac => \gate4|gate2|q\(8),
	datad => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\);

-- Location: LCCOMB_X26_Y18_N0
\gate2|Gate1|Gate2|Gate14|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\ = \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\);

-- Location: LCCOMB_X26_Y18_N12
\gate2|Gate1|Gate2|Gate14|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\);

-- Location: LCCOMB_X26_Y18_N20
\gate2|Gate1|Gate2|Gate26|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate26|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\ & (!\gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\ & (\gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\ & \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\ & ((\gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\) # ((!\gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\ & \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate26|NgtM~0_combout\);

-- Location: LCCOMB_X26_Y18_N18
\gate2|Gate1|Gate2|Gate20|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate20|num1s\(2) = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode63w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode63w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode63w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode63w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate20|num1s\(2));

-- Location: LCCOMB_X26_Y18_N22
\gate2|Gate1|Gate2|Gate26|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate14|num1s\(2) & ((\gate2|Gate1|Gate2|Gate26|NgtM~0_combout\) # (!\gate2|Gate1|Gate2|Gate20|num1s\(2)))) # (!\gate2|Gate1|Gate2|Gate14|num1s\(2) & (\gate2|Gate1|Gate2|Gate26|NgtM~0_combout\ 
-- & !\gate2|Gate1|Gate2|Gate20|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate14|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate26|NgtM~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate20|num1s\(2),
	combout => \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\);

-- Location: LCCOMB_X26_Y18_N24
\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ = \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\ $ (((\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X26_Y18_N28
\gate2|Gate1|Gate2|Gate26|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\)) # (!\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & ((\gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate20|num1s[1]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate14|num1s[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ = (!\gate2|Gate8|q\(1) & (!\gate2|Gate8|q\(0) & \gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X22_Y17_N18
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ = (!\gate2|Gate9|q\(0) & (\gate2|Gate9|q\(2) & !\gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate9|q\(0),
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\ = (\gate2|Gate10|q\(2) & (!\gate2|Gate10|q\(0) & !\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N30
\gate2|Gate1|Gate2|Gate19|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\);

-- Location: LCFF_X23_Y19_N29
\gate4|gate2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR1\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(1));

-- Location: LCFF_X23_Y19_N25
\gate4|gate2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR1\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(2));

-- Location: LCFF_X23_Y19_N27
\gate4|gate2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR1\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(0));

-- Location: LCCOMB_X23_Y19_N22
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ = (!\gate4|gate2|q\(1) & (\gate4|gate2|q\(2) & !\gate4|gate2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(1),
	datac => \gate4|gate2|q\(2),
	datad => \gate4|gate2|q\(0),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X22_Y17_N2
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ = (\gate4|gate2|q\(5) & (!\gate4|gate2|q\(4) & !\gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datab => \gate4|gate2|q\(4),
	datac => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCFF_X25_Y19_N27
\gate4|gate2|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate4|gate1|TM_ADDR4\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate4|gate2|q\(10));

-- Location: LCCOMB_X25_Y19_N12
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\ = (!\gate4|gate2|q\(9) & (!\gate4|gate2|q\(10) & \gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(9),
	datac => \gate4|gate2|q\(10),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\gate2|Gate1|Gate2|Gate13|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate13|num1s\(2) = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate13|num1s\(2));

-- Location: LCCOMB_X26_Y17_N26
\gate2|Gate1|Gate2|Gate19|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate19|num1s\(2) = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate19|num1s\(2));

-- Location: LCCOMB_X26_Y17_N12
\gate2|Gate1|Gate2|Gate19|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\);

-- Location: LCCOMB_X26_Y17_N24
\gate2|Gate1|Gate2|Gate25|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate13|num1s\(2) $ (!\gate2|Gate1|Gate2|Gate19|num1s\(2))))) # 
-- (!\gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate13|num1s\(2) $ (!\gate2|Gate1|Gate2|Gate19|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate13|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate19|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\);

-- Location: LCCOMB_X26_Y17_N22
\gate2|Gate1|Gate2|Gate25|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate25|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate13|num1s\(2) & (((\gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ & !\gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate19|num1s\(2)))) # 
-- (!\gate2|Gate1|Gate2|Gate13|num1s\(2) & (\gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate19|num1s\(2) & !\gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate13|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate19|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate25|NgtM~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\gate2|Gate1|Gate2|Gate25|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate25|NgtM~combout\ = (\gate2|Gate1|Gate2|Gate25|NgtM~0_combout\) # ((\gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\ & (!\gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\ & \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate13|num1s[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate19|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate25|NgtM~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate25|NgtM~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate25|NgtM~combout\);

-- Location: LCCOMB_X26_Y17_N10
\gate2|Gate1|Gate2|Gate13|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode52w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode52w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode52w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode52w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\);

-- Location: LCCOMB_X26_Y17_N6
\gate2|Gate1|Gate2|Gate25|min[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate25|min[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate25|NgtM~combout\ & (\gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate25|NgtM~combout\ & ((\gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate19|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate25|NgtM~combout\,
	datad => \gate2|Gate1|Gate2|Gate13|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate25|min[1]~1_combout\);

-- Location: LCCOMB_X26_Y18_N2
\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\ = (\gate2|Gate1|Gate2|Gate25|min[0]~0_combout\ & ((\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate26|NgtM~1_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate25|min[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate20|num1s[0]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate14|num1s[0]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate26|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X26_Y18_N14
\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ = \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\ $ (\gate2|Gate1|Gate2|Gate25|min[1]~1_combout\ $ (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate25|min[1]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X22_Y17_N6
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) = (!\gate2|Gate9|q\(2) & (\gate2|Gate9|q\(0) & \gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X23_Y18_N16
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) = (\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) & !\gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X25_Y17_N28
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3) = (\gate2|Gate10|q\(0) & (!\gate2|Gate10|q\(2) & \gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X25_Y17_N10
\gate2|Gate1|Gate2|Gate18|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\ = \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) $ (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) $ (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\);

-- Location: LCFF_X25_Y17_N27
\gate2|Gate11|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR4_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(0));

-- Location: LCCOMB_X25_Y17_N22
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) = (\gate2|Gate11|q\(1) & (!\gate2|Gate11|q\(0) & !\gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(1),
	datab => \gate2|Gate11|q\(0),
	datac => \gate2|Gate11|q\(2),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X25_Y17_N24
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) = (!\gate2|Gate10|q\(0) & (!\gate2|Gate10|q\(2) & \gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X22_Y17_N28
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3) = (!\gate2|Gate9|q\(2) & (!\gate2|Gate9|q\(0) & \gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X26_Y19_N8
\gate2|Gate1|Gate2|Gate17|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate17|num1s\(2) = (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) & 
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate17|num1s\(2));

-- Location: LCCOMB_X24_Y19_N8
\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) = (!\gate4|gate2|q\(6) & (!\gate4|gate2|q\(8) & \gate4|gate2|q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(6),
	datac => \gate4|gate2|q\(8),
	datad => \gate4|gate2|q\(7),
	combout => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X23_Y19_N24
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) = (!\gate4|gate2|q\(0) & (!\gate4|gate2|q\(2) & \gate4|gate2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(0),
	datac => \gate4|gate2|q\(2),
	datad => \gate4|gate2|q\(1),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X25_Y19_N18
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3) = (!\gate4|gate2|q\(9) & (\gate4|gate2|q\(10) & !\gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(9),
	datac => \gate4|gate2|q\(10),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3));

-- Location: LCCOMB_X23_Y19_N8
\gate2|Gate1|Gate2|Gate11|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate11|num1s\(2) = (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) & 
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate11|num1s\(2));

-- Location: LCCOMB_X26_Y19_N10
\gate2|Gate1|Gate2|Gate17|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & ((!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)) # 
-- (!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3)))) # (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3)) # (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & ((\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3)) # (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) & (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) & \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\);

-- Location: LCCOMB_X26_Y19_N14
\gate2|Gate1|Gate2|Gate23|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate23|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate17|num1s\(2) $ (!\gate2|Gate1|Gate2|Gate11|num1s\(2))))) # 
-- (!\gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate17|num1s\(2) $ (!\gate2|Gate1|Gate2|Gate11|num1s\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate11|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate17|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate11|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate17|num1s[1]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate23|NgtM~1_combout\);

-- Location: LCCOMB_X23_Y19_N18
\gate2|Gate1|Gate2|Gate11|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3) $ (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3) $ (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\gate2|Gate1|Gate2|Gate17|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3) $ (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3) $ (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode30w\(3),
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode30w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode30w\(3),
	datad => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode30w\(3),
	combout => \gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\);

-- Location: LCCOMB_X26_Y19_N16
\gate2|Gate1|Gate2|Gate23|min[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\ = (\gate2|Gate1|Gate2|Gate23|NgtM~0_combout\ & (((\gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\)))) # (!\gate2|Gate1|Gate2|Gate23|NgtM~0_combout\ & (\gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\) # (!\gate2|Gate1|Gate2|Gate23|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate23|NgtM~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate23|NgtM~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate11|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate17|num1s[0]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\);

-- Location: LCCOMB_X25_Y17_N6
\gate2|Gate1|Gate2|Gate18|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate18|num1s\(2) = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & 
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate18|num1s\(2));

-- Location: LCCOMB_X25_Y17_N0
\gate2|Gate1|Gate2|Gate18|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) & ((!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3)) # 
-- (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3)))) # (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3)) # (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3)) # (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3) & \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) = (!\gate4|gate2|q\(2) & (\gate4|gate2|q\(0) & \gate4|gate2|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(2),
	datab => \gate4|gate2|q\(0),
	datac => \gate4|gate2|q\(1),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X22_Y17_N8
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) = (!\gate4|gate2|q\(5) & (\gate4|gate2|q\(4) & \gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datac => \gate4|gate2|q\(4),
	datad => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X25_Y19_N26
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3) = (\gate4|gate2|q\(9) & (\gate4|gate2|q\(10) & !\gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(9),
	datac => \gate4|gate2|q\(10),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3));

-- Location: LCCOMB_X25_Y19_N14
\gate2|Gate1|Gate2|Gate12|num1s[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\ = \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) $ (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) $ (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\);

-- Location: LCCOMB_X26_Y19_N28
\gate2|Gate1|Gate2|Gate24|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate24|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\ & (((!\gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\ & \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\)) # (!\gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\ & (!\gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\ & (!\gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\ & \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate24|NgtM~0_combout\);

-- Location: LCCOMB_X26_Y19_N22
\gate2|Gate1|Gate2|Gate24|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate12|num1s\(2) & ((\gate2|Gate1|Gate2|Gate24|NgtM~0_combout\) # (!\gate2|Gate1|Gate2|Gate18|num1s\(2)))) # (!\gate2|Gate1|Gate2|Gate12|num1s\(2) & (!\gate2|Gate1|Gate2|Gate18|num1s\(2) & 
-- \gate2|Gate1|Gate2|Gate24|NgtM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate12|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate18|num1s\(2),
	datad => \gate2|Gate1|Gate2|Gate24|NgtM~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\);

-- Location: LCCOMB_X26_Y19_N30
\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ = (\gate2|Gate1|Gate2|Gate23|min[0]~0_combout\ & ((\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & ((\gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\))) # (!\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & 
-- (\gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate12|num1s[0]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate18|num1s[0]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate23|min[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X25_Y19_N2
\gate2|Gate1|Gate2|Gate12|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)) # 
-- (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)))) # (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3)) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3) & (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3) & \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode41w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode41w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode41w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode41w\(3),
	combout => \gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\);

-- Location: LCCOMB_X26_Y19_N24
\gate2|Gate1|Gate2|Gate24|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\)) # (!\gate2|Gate1|Gate2|Gate24|NgtM~1_combout\ & ((\gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate24|NgtM~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate18|num1s[1]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate12|num1s[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\);

-- Location: LCCOMB_X26_Y19_N18
\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ = \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\ $ (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\ $ (\gate2|Gate1|Gate2|Gate24|min[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate23|min[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate24|min[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X25_Y18_N0
\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ = \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ $ (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\ $ (((\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\,
	datad => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X23_Y19_N30
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) = (\gate4|gate2|q\(1)) # ((\gate4|gate2|q\(2)) # (\gate4|gate2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(1),
	datac => \gate4|gate2|q\(2),
	datad => \gate4|gate2|q\(0),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X22_Y17_N30
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) = (\gate4|gate2|q\(5)) # ((\gate4|gate2|q\(4)) # (\gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datac => \gate4|gate2|q\(4),
	datad => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X25_Y19_N16
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3) = (\gate4|gate2|q\(9)) # ((\gate4|gate2|q\(10)) # (\gate4|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(9),
	datac => \gate4|gate2|q\(10),
	datad => \gate4|gate2|q\(11),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X23_Y17_N26
\gate2|Gate1|Gate2|Gate9|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) & (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) & 
-- !\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3))) # (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3)) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) & ((!\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3)) # (!\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3)) # (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\);

-- Location: LCCOMB_X23_Y18_N30
\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) = (\gate2|Gate8|q\(1)) # ((\gate2|Gate8|q\(0)) # (\gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(2),
	combout => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X1_Y22_N6
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3) = (\gate2|Gate10|q\(2)) # ((\gate2|Gate10|q\(0)) # (\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3));

-- Location: LCFF_X25_Y17_N17
\gate2|Gate11|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate2|GR4_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(1));

-- Location: LCCOMB_X25_Y17_N20
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3) = (\gate2|Gate11|q\(0)) # ((\gate2|Gate11|q\(1)) # (\gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(0),
	datac => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3));

-- Location: LCCOMB_X23_Y17_N24
\gate2|Gate1|Gate2|Gate15|num1s[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & (!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3) & 
-- !\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & ((!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3)) # (!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)))))) # 
-- (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & ((!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3)) # (!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)))) # 
-- (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) & ((\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)) # (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
\gate2|Gate1|Gate2|Gate15|num1s[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\ = \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3) $ (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3) $ (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\);

-- Location: LCCOMB_X23_Y17_N4
\gate2|Gate1|Gate2|Gate9|num1s[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\ = \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3) $ (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3) $ (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3) $ 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\);

-- Location: LCCOMB_X23_Y17_N28
\gate2|Gate1|Gate2|Gate15|num1s[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\ = (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3)) # ((\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3)) # ((\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3)) # 
-- (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode1w\(3),
	datab => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode1w\(3),
	datac => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode1w\(3),
	datad => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode1w\(3),
	combout => \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\);

-- Location: LCCOMB_X23_Y17_N2
\gate2|Gate1|Gate2|Gate21|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & (\gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ $ (!\gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\)))) # 
-- (!\gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\ & (!\gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\ $ (!\gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate9|num1s[2]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate15|num1s[2]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\);

-- Location: LCCOMB_X23_Y17_N0
\gate2|Gate1|Gate2|Gate21|NgtM\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate21|NgtM~combout\ = (\gate2|Gate1|Gate2|Gate21|NgtM~0_combout\) # ((!\gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\ & \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate21|NgtM~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\,
	datac => \gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\,
	datad => \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate21|NgtM~combout\);

-- Location: LCCOMB_X23_Y17_N18
\gate2|Gate1|Gate2|Gate21|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate21|NgtM~combout\ & ((\gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate21|NgtM~combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate9|num1s[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate15|num1s[1]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate21|NgtM~combout\,
	combout => \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\);

-- Location: LCCOMB_X22_Y17_N10
\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ = (!\gate4|gate2|q\(5) & (!\gate4|gate2|q\(4) & \gate4|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(5),
	datac => \gate4|gate2|q\(4),
	datad => \gate4|gate2|q\(3),
	combout => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X23_Y19_N16
\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ = (!\gate4|gate2|q\(1) & (!\gate4|gate2|q\(2) & \gate4|gate2|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate4|gate2|q\(1),
	datac => \gate4|gate2|q\(2),
	datad => \gate4|gate2|q\(0),
	combout => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\ = (!\gate4|gate2|q\(10) & (!\gate4|gate2|q\(11) & \gate4|gate2|q\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate4|gate2|q\(10),
	datac => \gate4|gate2|q\(11),
	datad => \gate4|gate2|q\(9),
	combout => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X24_Y17_N26
\gate2|Gate1|Gate2|Gate10|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\);

-- Location: LCCOMB_X24_Y17_N4
\gate2|Gate1|Gate2|Gate10|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate10|num1s\(2) = (\gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate3|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate2|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate1|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate4|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate10|num1s\(2));

-- Location: LCCOMB_X25_Y17_N8
\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ = (\gate2|Gate11|q\(0) & (!\gate2|Gate11|q\(1) & !\gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(0),
	datac => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ = (!\gate2|Gate9|q\(2) & (\gate2|Gate9|q\(0) & !\gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\ = (\gate2|Gate10|q\(0) & (!\gate2|Gate10|q\(2) & !\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\);

-- Location: LCCOMB_X24_Y17_N18
\gate2|Gate1|Gate2|Gate16|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\ = (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ & ((!\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\) # 
-- (!\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\))))) # (!\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & ((\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\) # (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\))) # (!\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ & 
-- (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\);

-- Location: LCCOMB_X24_Y17_N16
\gate2|Gate1|Gate2|Gate16|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\ = \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ $ (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\);

-- Location: LCCOMB_X24_Y17_N20
\gate2|Gate1|Gate2|Gate22|NgtM~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate22|NgtM~0_combout\ = (\gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\ & (((!\gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\ & \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\)) # (!\gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\))) # 
-- (!\gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\ & \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate22|NgtM~0_combout\);

-- Location: LCCOMB_X24_Y17_N6
\gate2|Gate1|Gate2|Gate16|num1s[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate16|num1s\(2) = (\gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\ & (\gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate5|auto_generated|w_anode19w[3]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate8|auto_generated|w_anode19w[3]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate6|auto_generated|w_anode19w[3]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate7|auto_generated|w_anode19w[3]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate16|num1s\(2));

-- Location: LCCOMB_X24_Y17_N14
\gate2|Gate1|Gate2|Gate22|NgtM~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ = (\gate2|Gate1|Gate2|Gate10|num1s\(2) & ((\gate2|Gate1|Gate2|Gate22|NgtM~0_combout\) # (!\gate2|Gate1|Gate2|Gate16|num1s\(2)))) # (!\gate2|Gate1|Gate2|Gate10|num1s\(2) & (\gate2|Gate1|Gate2|Gate22|NgtM~0_combout\ 
-- & !\gate2|Gate1|Gate2|Gate16|num1s\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate10|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate22|NgtM~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate16|num1s\(2),
	combout => \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\);

-- Location: LCCOMB_X23_Y17_N12
\gate2|Gate1|Gate2|Gate21|min[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\ = (\gate2|Gate1|Gate2|Gate21|NgtM~0_combout\ & (\gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\)) # (!\gate2|Gate1|Gate2|Gate21|NgtM~0_combout\ & (\gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\) # (!\gate2|Gate1|Gate2|Gate21|NgtM~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate21|NgtM~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate15|num1s[0]~2_combout\,
	datac => \gate2|Gate1|Gate2|Gate9|num1s[0]~2_combout\,
	datad => \gate2|Gate1|Gate2|Gate21|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\);

-- Location: LCCOMB_X24_Y17_N8
\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ = (\gate2|Gate1|Gate2|Gate21|min[0]~1_combout\ & ((\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\)) # (!\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X24_Y17_N10
\gate2|Gate1|Gate2|Gate22|min[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate22|min[1]~0_combout\ = (\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & ((\gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\))) # (!\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate10|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate16|num1s[1]~1_combout\,
	datac => \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate22|min[1]~0_combout\);

-- Location: LCCOMB_X24_Y17_N12
\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\ = \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\ $ (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate22|min[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate1|Gate2|Gate21|min[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate22|min[1]~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X24_Y18_N26
\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ = \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ $ (\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\);

-- Location: LCCOMB_X24_Y19_N16
\gate2|Gate1|Gate1|Gate5|num1s[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ = \gate2|Gate1|Gate1|Gate1|AeqB~combout\ $ (\gate2|Gate1|Gate1|Gate3|AeqB~combout\ $ (\gate2|Gate1|Gate1|Gate2|AeqB~combout\ $ (\gate2|Gate1|Gate1|Gate4|AeqB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate1|AeqB~combout\,
	datab => \gate2|Gate1|Gate1|Gate3|AeqB~combout\,
	datac => \gate2|Gate1|Gate1|Gate2|AeqB~combout\,
	datad => \gate2|Gate1|Gate1|Gate4|AeqB~combout\,
	combout => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\);

-- Location: LCCOMB_X24_Y17_N2
\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ = \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\ $ (((\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & (\gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\)) # (!\gate2|Gate1|Gate2|Gate22|NgtM~1_combout\ & 
-- ((\gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate16|num1s[0]~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate10|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate22|NgtM~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate21|min[0]~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\);

-- Location: LCCOMB_X25_Y18_N30
\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\ = \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ $ (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\);

-- Location: LCCOMB_X24_Y18_N28
\gate2|Gate1|Gate3|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux1~0_combout\ = (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\ & (!\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ & 
-- !\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~3_combout\,
	datac => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate3|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y18_N8
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ = \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\ $ (((\gate2|Gate1|Gate2|Gate26|min[1]~0_combout\ & ((\gate2|Gate1|Gate2|Gate25|min[1]~1_combout\) # 
-- (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))) # (!\gate2|Gate1|Gate2|Gate26|min[1]~0_combout\ & (\gate2|Gate1|Gate2|Gate25|min[1]~1_combout\ & \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~3_combout\,
	datab => \gate2|Gate1|Gate2|Gate26|min[1]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate25|min[1]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~1_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\);

-- Location: LCCOMB_X25_Y18_N2
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\ = \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\ $ (((\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ & ((\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\))) # (!\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\ & (\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\ & \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~1_combout\,
	datab => \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~8_combout\,
	datad => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\);

-- Location: LCCOMB_X25_Y18_N14
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ = (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ & ((\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\) # ((\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\)))) # (!\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\ & (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ & (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\ & 
-- \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~2_combout\,
	datad => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\);

-- Location: LCCOMB_X25_Y18_N22
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ = (\gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\ $ (\gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\))) # 
-- (!\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate28|auto_generated|op_1~0_combout\,
	datab => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate27|auto_generated|op_1~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate29|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\);

-- Location: LCCOMB_X24_Y19_N30
\gate2|Gate1|Gate1|Gate5|num1s[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ = (\gate2|Gate1|Gate1|Gate1|AeqB~combout\ & ((\gate2|Gate1|Gate1|Gate3|AeqB~combout\ & (!\gate2|Gate1|Gate1|Gate2|AeqB~combout\ & !\gate2|Gate1|Gate1|Gate4|AeqB~combout\)) # 
-- (!\gate2|Gate1|Gate1|Gate3|AeqB~combout\ & ((!\gate2|Gate1|Gate1|Gate4|AeqB~combout\) # (!\gate2|Gate1|Gate1|Gate2|AeqB~combout\))))) # (!\gate2|Gate1|Gate1|Gate1|AeqB~combout\ & ((\gate2|Gate1|Gate1|Gate3|AeqB~combout\ & 
-- ((!\gate2|Gate1|Gate1|Gate4|AeqB~combout\) # (!\gate2|Gate1|Gate1|Gate2|AeqB~combout\))) # (!\gate2|Gate1|Gate1|Gate3|AeqB~combout\ & ((\gate2|Gate1|Gate1|Gate2|AeqB~combout\) # (\gate2|Gate1|Gate1|Gate4|AeqB~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate1|AeqB~combout\,
	datab => \gate2|Gate1|Gate1|Gate3|AeqB~combout\,
	datac => \gate2|Gate1|Gate1|Gate2|AeqB~combout\,
	datad => \gate2|Gate1|Gate1|Gate4|AeqB~combout\,
	combout => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\);

-- Location: LCCOMB_X25_Y18_N28
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\ = (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ & ((\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\)) # 
-- (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\))) # (!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ & (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\,
	datac => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\);

-- Location: LCCOMB_X25_Y18_N4
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ = \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\ $ (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\ $ (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~4_combout\,
	datab => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~9_combout\,
	datac => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~7_combout\,
	datad => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~6_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\);

-- Location: LCCOMB_X24_Y18_N8
\gate2|Gate1|Gate3|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux3~1_combout\ = (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\gate2|Gate1|Gate3|Mux3~0_combout\) # ((!\gate2|Gate1|Gate1|Gate5|num1s\(2) & \gate2|Gate1|Gate3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate3|Mux3~0_combout\,
	datab => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	datac => \gate2|Gate1|Gate3|Mux1~0_combout\,
	datad => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	combout => \gate2|Gate1|Gate3|Mux3~1_combout\);

-- Location: LCCOMB_X22_Y18_N2
\gate1|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector10~0_combout\ = (\gate1|y_present.e~regout\ & (((\gate1|SR_LD~regout\)) # (!\Ready~combout\))) # (!\gate1|y_present.e~regout\ & (((\gate1|SR_LD~regout\ & !\gate1|y_present.f~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.e~regout\,
	datab => \Ready~combout\,
	datac => \gate1|SR_LD~regout\,
	datad => \gate1|y_present.f~regout\,
	combout => \gate1|Selector10~0_combout\);

-- Location: LCFF_X22_Y18_N3
\gate1|SR_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector10~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|SR_LD~regout\);

-- Location: LCFF_X24_Y18_N9
\gate2|Gate2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate1|Gate3|Mux3~1_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate2|q\(0));

-- Location: LCCOMB_X24_Y18_N6
\gate2|sr2N[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr2N[2]~1_combout\ = (\gate2|sr2N[2]~0_combout\ & ((\gate2|Gate2|q\(0)) # ((!\gate1|switch_REG~regout\ & \gate2|Gate9|q\(2))))) # (!\gate2|sr2N[2]~0_combout\ & (((!\gate1|switch_REG~regout\ & \gate2|Gate9|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~0_combout\,
	datab => \gate2|Gate2|q\(0),
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|Gate9|q\(2),
	combout => \gate2|sr2N[2]~1_combout\);

-- Location: LCCOMB_X25_Y18_N26
\gate2|Gate1|Gate3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux0~0_combout\ = (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\ & ((\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\) # ((!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & 
-- \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)))) # (!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\ & (((!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\,
	datab => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datad => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate3|Mux0~0_combout\);

-- Location: LCCOMB_X25_Y18_N8
\gate2|Gate1|Gate3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux0~1_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s\(2) & (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & !\gate2|Gate1|Gate3|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	datac => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datad => \gate2|Gate1|Gate3|Mux0~0_combout\,
	combout => \gate2|Gate1|Gate3|Mux0~1_combout\);

-- Location: LCFF_X25_Y18_N9
\gate2|Gate2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate1|Gate3|Mux0~1_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate2|q\(3));

-- Location: LCCOMB_X25_Y18_N24
\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\ = \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\ $ (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\ $ (\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ $ 
-- (\gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~0_combout\,
	datab => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~5_combout\,
	datac => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datad => \gate2|Gate1|Gate2|Gate30|auto_generated|op_1~0_combout\,
	combout => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\);

-- Location: LCCOMB_X25_Y18_N20
\gate2|Gate1|Gate3|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux2~0_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & ((\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\ $ (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\)) # 
-- (!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\))) # (!\gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\ & (!\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\ & ((\gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\) # 
-- (\gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s[1]~1_combout\,
	datab => \gate2|Gate1|Gate1|Gate5|num1s[0]~0_combout\,
	datac => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~10_combout\,
	datad => \gate2|Gate1|Gate2|Gate31|auto_generated|op_1~2_combout\,
	combout => \gate2|Gate1|Gate3|Mux2~0_combout\);

-- Location: LCCOMB_X25_Y18_N18
\gate2|Gate1|Gate3|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate1|Gate3|Mux2~1_combout\ = (\gate2|Gate1|Gate1|Gate5|num1s\(2) & (\gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\ & !\gate2|Gate1|Gate3|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate1|Gate1|Gate5|num1s\(2),
	datac => \gate2|Gate1|Gate2|Gate34|auto_generated|op_1~11_combout\,
	datad => \gate2|Gate1|Gate3|Mux2~0_combout\,
	combout => \gate2|Gate1|Gate3|Mux2~1_combout\);

-- Location: LCFF_X25_Y18_N19
\gate2|Gate2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate1|Gate3|Mux2~1_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|SR_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate2|q\(1));

-- Location: LCCOMB_X24_Y18_N0
\gate2|sr2N[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr2N[1]~2_combout\ = (\gate1|switch_REG~regout\ & (!\gate2|Gate2|q\(3) & (\gate2|Gate2|q\(2) $ (\gate2|Gate2|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|sr2N[1]~2_combout\);

-- Location: LCCOMB_X1_Y21_N0
\gate2|sr2N[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr2N[1]~3_combout\ = (\gate2|sr2N[1]~2_combout\) # ((!\gate1|switch_REG~regout\ & \gate2|Gate9|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|sr2N[1]~2_combout\,
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|sr2N[1]~3_combout\);

-- Location: LCCOMB_X24_Y18_N10
\gate2|gate17|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate17|Mux2~0_combout\ = (\gate2|Gate2|q\(3) & (!\gate2|Gate2|q\(2) & ((!\gate2|Gate2|q\(1))))) # (!\gate2|Gate2|q\(3) & (\gate2|Gate2|q\(1) & ((\gate2|Gate2|q\(2)) # (!\gate2|Gate2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate2|Gate2|q\(0),
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|gate17|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y18_N20
\gate2|sr2N[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr2N[0]~4_combout\ = (\gate1|switch_REG~regout\ & ((\gate2|gate17|Mux2~0_combout\))) # (!\gate1|switch_REG~regout\ & (\gate2|Gate9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(0),
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|gate17|Mux2~0_combout\,
	combout => \gate2|sr2N[0]~4_combout\);

-- Location: LCCOMB_X1_Y21_N18
\gate2|gate16|gate11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux6~0_combout\ = (\gate2|sr2N[1]~3_combout\ & (((\gate2|sr2N[0]~4_combout\ & !\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr2N[1]~3_combout\ & (\gate2|sr2N[0]~4_combout\ $ (((\gate2|sr2N[2]~1_combout\) # 
-- (!\gate1|RippleBlankInState~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\gate2|gate16|gate11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux5~0_combout\ = (\gate1|RippleBlankInState~regout\ & (\gate2|sr2N[2]~1_combout\ & (\gate2|sr2N[1]~3_combout\ $ (\gate2|sr2N[0]~4_combout\)))) # (!\gate1|RippleBlankInState~regout\ & (!\gate2|sr2N[1]~3_combout\ & 
-- (\gate2|sr2N[2]~1_combout\ $ (!\gate2|sr2N[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N30
\gate2|gate16|gate11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux4~0_combout\ = (\gate2|sr2N[1]~3_combout\ & ((\gate2|sr2N[2]~1_combout\) # ((\gate2|sr2N[0]~4_combout\) # (!\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr2N[1]~3_combout\ & (((\gate1|RippleBlankInState~regout\) # 
-- (!\gate2|sr2N[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\gate2|gate16|gate11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux3~0_combout\ = (\gate2|sr2N[0]~4_combout\ & (\gate2|sr2N[2]~1_combout\ $ ((!\gate2|sr2N[1]~3_combout\)))) # (!\gate2|sr2N[0]~4_combout\ & ((\gate2|sr2N[2]~1_combout\ & (!\gate2|sr2N[1]~3_combout\ & 
-- \gate1|RippleBlankInState~regout\)) # (!\gate2|sr2N[2]~1_combout\ & (\gate2|sr2N[1]~3_combout\ & !\gate1|RippleBlankInState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N10
\gate2|gate16|gate11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux2~0_combout\ = (\gate2|sr2N[1]~3_combout\ & (((\gate2|sr2N[0]~4_combout\)))) # (!\gate2|sr2N[1]~3_combout\ & (\gate1|RippleBlankInState~regout\ & ((\gate2|sr2N[2]~1_combout\) # (\gate2|sr2N[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N20
\gate2|gate16|gate11|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux1~0_combout\ = (\gate2|sr2N[1]~3_combout\ & (!\gate2|sr2N[0]~4_combout\ & ((\gate2|sr2N[2]~1_combout\) # (!\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr2N[1]~3_combout\ & ((\gate2|sr2N[2]~1_combout\) # 
-- ((!\gate1|RippleBlankInState~regout\) # (!\gate2|sr2N[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N14
\gate2|gate16|gate11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux0~0_combout\ = (\gate2|sr2N[0]~4_combout\ & ((\gate2|sr2N[2]~1_combout\ $ (!\gate2|sr2N[1]~3_combout\)) # (!\gate1|RippleBlankInState~regout\))) # (!\gate2|sr2N[0]~4_combout\ & (\gate1|RippleBlankInState~regout\ $ 
-- (((\gate2|sr2N[2]~1_combout\) # (\gate2|sr2N[1]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr2N[2]~1_combout\,
	datab => \gate2|sr2N[1]~3_combout\,
	datac => \gate2|sr2N[0]~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate11|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y22_N20
\gate2|gate16|gate12|Mux6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux6~2_combout\ = (\gate1|RippleBlankInState~regout\ & ((\gate2|Gate10|q\(1)) # ((\gate2|Gate10|q\(2) & \gate2|Gate10|q\(0))))) # (!\gate1|RippleBlankInState~regout\ & ((\gate2|Gate10|q\(0) $ (\gate2|Gate10|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux6~2_combout\);

-- Location: LCCOMB_X1_Y22_N22
\gate2|gate16|gate12|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux6~3_combout\ = (!\gate1|switch_REG~regout\ & \gate2|gate16|gate12|Mux6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datac => \gate2|gate16|gate12|Mux6~2_combout\,
	combout => \gate2|gate16|gate12|Mux6~3_combout\);

-- Location: LCCOMB_X1_Y22_N24
\gate2|gate16|gate12|Mux5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux5~2_combout\ = (\gate2|Gate10|q\(1) & (((\gate2|Gate10|q\(0)) # (!\gate2|Gate10|q\(2))) # (!\gate1|RippleBlankInState~regout\))) # (!\gate2|Gate10|q\(1) & ((\gate2|Gate10|q\(2) $ (\gate2|Gate10|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux5~2_combout\);

-- Location: LCCOMB_X1_Y22_N2
\gate2|gate16|gate12|Mux5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux5~3_combout\ = (!\gate1|switch_REG~regout\ & \gate2|gate16|gate12|Mux5~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datac => \gate2|gate16|gate12|Mux5~2_combout\,
	combout => \gate2|gate16|gate12|Mux5~3_combout\);

-- Location: LCCOMB_X1_Y22_N26
\gate2|sr3N[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr3N[0]~1_combout\ = (\gate2|Gate10|q\(0) & !\gate1|switch_REG~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate1|switch_REG~regout\,
	combout => \gate2|sr3N[0]~1_combout\);

-- Location: LCCOMB_X1_Y22_N8
\gate2|sr3N[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr3N[2]~0_combout\ = (\gate2|Gate10|q\(2) & !\gate1|switch_REG~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(2),
	datac => \gate1|switch_REG~regout\,
	combout => \gate2|sr3N[2]~0_combout\);

-- Location: LCCOMB_X1_Y22_N28
\gate2|sr3N[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr3N[1]~2_combout\ = (!\gate1|switch_REG~regout\ & \gate2|Gate10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|sr3N[1]~2_combout\);

-- Location: LCCOMB_X1_Y22_N14
\gate2|gate16|gate12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux4~0_combout\ = (\gate1|RippleBlankInState~regout\ & (!\gate2|sr3N[0]~1_combout\ & (!\gate2|sr3N[2]~0_combout\))) # (!\gate1|RippleBlankInState~regout\ & (\gate2|sr3N[0]~1_combout\ & ((!\gate2|sr3N[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr3N[0]~1_combout\,
	datac => \gate2|sr3N[2]~0_combout\,
	datad => \gate2|sr3N[1]~2_combout\,
	combout => \gate2|gate16|gate12|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y22_N0
\gate2|gate16|gate12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux3~0_combout\ = (\gate2|sr3N[0]~1_combout\ & ((\gate2|sr3N[2]~0_combout\ $ (!\gate2|sr3N[1]~2_combout\)))) # (!\gate2|sr3N[0]~1_combout\ & ((\gate1|RippleBlankInState~regout\ & ((!\gate2|sr3N[1]~2_combout\))) # 
-- (!\gate1|RippleBlankInState~regout\ & (!\gate2|sr3N[2]~0_combout\ & \gate2|sr3N[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr3N[0]~1_combout\,
	datac => \gate2|sr3N[2]~0_combout\,
	datad => \gate2|sr3N[1]~2_combout\,
	combout => \gate2|gate16|gate12|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\gate2|gate16|gate12|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux2~0_combout\ = (\gate1|switch_REG~regout\ & (\gate1|RippleBlankInState~regout\)) # (!\gate1|switch_REG~regout\ & ((\gate2|Gate10|q\(1) & ((\gate2|Gate10|q\(0)))) # (!\gate2|Gate10|q\(1) & (\gate1|RippleBlankInState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|Gate10|q\(0),
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y22_N12
\gate2|gate16|gate12|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux1~0_combout\ = (\gate1|RippleBlankInState~regout\ & (((\gate2|sr3N[0]~1_combout\ & \gate2|sr3N[1]~2_combout\)) # (!\gate2|sr3N[2]~0_combout\))) # (!\gate1|RippleBlankInState~regout\ & (\gate2|sr3N[0]~1_combout\ & 
-- ((\gate2|sr3N[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|RippleBlankInState~regout\,
	datab => \gate2|sr3N[0]~1_combout\,
	datac => \gate2|sr3N[2]~0_combout\,
	datad => \gate2|sr3N[1]~2_combout\,
	combout => \gate2|gate16|gate12|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y22_N16
\gate2|gate16|gate12|Mux0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux0~4_combout\ = (\gate2|Gate10|q\(2) & ((\gate1|switch_REG~regout\) # ((!\gate2|Gate10|q\(1)) # (!\gate2|Gate10|q\(0))))) # (!\gate2|Gate10|q\(2) & (((\gate2|Gate10|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux0~4_combout\);

-- Location: LCCOMB_X1_Y22_N18
\gate2|gate16|gate12|Mux0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux0~5_combout\ = (\gate1|switch_REG~regout\ & (((\gate1|RippleBlankInState~regout\)))) # (!\gate1|switch_REG~regout\ & ((\gate2|gate16|gate12|Mux0~4_combout\ & ((!\gate1|RippleBlankInState~regout\))) # 
-- (!\gate2|gate16|gate12|Mux0~4_combout\ & ((\gate2|Gate10|q\(0)) # (\gate1|RippleBlankInState~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|switch_REG~regout\,
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|gate16|gate12|Mux0~4_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate12|Mux0~5_combout\);

-- Location: LCCOMB_X24_Y18_N18
\gate2|gate17|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate17|Mux4~0_combout\ = (!\gate2|Gate2|q\(1) & ((\gate2|Gate2|q\(3)) # ((\gate2|Gate2|q\(2) & \gate2|Gate2|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate2|Gate2|q\(0),
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|gate17|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N24
\gate2|sr4N[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr4N[1]~2_combout\ = (\gate1|switch_REG~regout\ & (\gate2|gate17|Mux4~0_combout\)) # (!\gate1|switch_REG~regout\ & ((\gate2|Gate11|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|gate17|Mux4~0_combout\,
	datad => \gate2|Gate11|q\(1),
	combout => \gate2|sr4N[1]~2_combout\);

-- Location: LCCOMB_X24_Y18_N14
\gate2|sr4N[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr4N[0]~3_combout\ = (\gate1|switch_REG~regout\ & (\gate2|gate17|Mux5~0_combout\)) # (!\gate1|switch_REG~regout\ & ((\gate2|Gate11|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|gate17|Mux5~0_combout\,
	datac => \gate1|switch_REG~regout\,
	datad => \gate2|Gate11|q\(0),
	combout => \gate2|sr4N[0]~3_combout\);

-- Location: LCCOMB_X24_Y18_N22
\gate2|sr4N[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr4N[2]~0_combout\ = (\gate2|Gate2|q\(2) & (\gate1|switch_REG~regout\ & (\gate2|Gate2|q\(3) & \gate2|Gate2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate2|q\(2),
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|Gate2|q\(3),
	datad => \gate2|Gate2|q\(1),
	combout => \gate2|sr4N[2]~0_combout\);

-- Location: LCCOMB_X24_Y18_N16
\gate2|sr4N[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|sr4N[2]~1_combout\ = (\gate2|Gate11|q\(2) & (((!\gate2|Gate2|q\(0) & \gate2|sr4N[2]~0_combout\)) # (!\gate1|switch_REG~regout\))) # (!\gate2|Gate11|q\(2) & (((!\gate2|Gate2|q\(0) & \gate2|sr4N[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(2),
	datab => \gate1|switch_REG~regout\,
	datac => \gate2|Gate2|q\(0),
	datad => \gate2|sr4N[2]~0_combout\,
	combout => \gate2|sr4N[2]~1_combout\);

-- Location: LCCOMB_X1_Y21_N2
\gate2|gate16|gate13|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux6~0_combout\ = (\gate2|sr4N[1]~2_combout\ & (\gate2|sr4N[0]~3_combout\ & ((!\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr4N[1]~2_combout\ & (\gate2|sr4N[0]~3_combout\ $ (((\gate2|sr4N[2]~1_combout\) # 
-- (!\gate1|RippleBlankInState~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010010011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N12
\gate2|gate16|gate13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux5~0_combout\ = (\gate1|RippleBlankInState~regout\ & (\gate2|sr4N[2]~1_combout\ & (\gate2|sr4N[1]~2_combout\ $ (\gate2|sr4N[0]~3_combout\)))) # (!\gate1|RippleBlankInState~regout\ & (!\gate2|sr4N[1]~2_combout\ & 
-- (\gate2|sr4N[0]~3_combout\ $ (!\gate2|sr4N[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\gate2|gate16|gate13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux4~0_combout\ = (\gate2|sr4N[1]~2_combout\ & ((\gate2|sr4N[0]~3_combout\) # ((\gate2|sr4N[2]~1_combout\) # (!\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr4N[1]~2_combout\ & (((\gate1|RippleBlankInState~regout\)) # 
-- (!\gate2|sr4N[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N8
\gate2|gate16|gate13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux3~0_combout\ = (\gate2|sr4N[0]~3_combout\ & (\gate2|sr4N[1]~2_combout\ $ ((!\gate2|sr4N[2]~1_combout\)))) # (!\gate2|sr4N[0]~3_combout\ & ((\gate2|sr4N[1]~2_combout\ & (!\gate2|sr4N[2]~1_combout\ & 
-- !\gate1|RippleBlankInState~regout\)) # (!\gate2|sr4N[1]~2_combout\ & (\gate2|sr4N[2]~1_combout\ & \gate1|RippleBlankInState~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\gate2|gate16|gate13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux2~0_combout\ = (\gate2|sr4N[1]~2_combout\ & (\gate2|sr4N[0]~3_combout\)) # (!\gate2|sr4N[1]~2_combout\ & (\gate1|RippleBlankInState~regout\ & ((\gate2|sr4N[0]~3_combout\) # (\gate2|sr4N[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N4
\gate2|gate16|gate13|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux1~0_combout\ = (\gate2|sr4N[1]~2_combout\ & (!\gate2|sr4N[0]~3_combout\ & ((\gate2|sr4N[2]~1_combout\) # (!\gate1|RippleBlankInState~regout\)))) # (!\gate2|sr4N[1]~2_combout\ & (((\gate2|sr4N[2]~1_combout\) # 
-- (!\gate1|RippleBlankInState~regout\)) # (!\gate2|sr4N[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y21_N6
\gate2|gate16|gate13|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux0~0_combout\ = (\gate2|sr4N[0]~3_combout\ & ((\gate2|sr4N[1]~2_combout\ $ (!\gate2|sr4N[2]~1_combout\)) # (!\gate1|RippleBlankInState~regout\))) # (!\gate2|sr4N[0]~3_combout\ & (\gate1|RippleBlankInState~regout\ $ 
-- (((\gate2|sr4N[1]~2_combout\) # (\gate2|sr4N[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|sr4N[1]~2_combout\,
	datab => \gate2|sr4N[0]~3_combout\,
	datac => \gate2|sr4N[2]~1_combout\,
	datad => \gate1|RippleBlankInState~regout\,
	combout => \gate2|gate16|gate13|Mux0~0_combout\);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|ALT_INV_Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|ALT_INV_Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate10|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment1(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate11|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment2(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|ALT_INV_Mux6~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|ALT_INV_Mux5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate12|Mux0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment3(6));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \gate2|gate16|gate13|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(6));
END structure;


