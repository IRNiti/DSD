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

-- DATE "12/02/2015 18:05:32"

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

ENTITY 	g10_rptest IS
    PORT (
	start : IN std_logic;
	P_generatedN : IN std_logic;
	clk : IN std_logic;
	segment1 : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0);
	segment4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END g10_rptest;

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
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- start	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P_generatedN	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g10_rptest IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_start : std_logic;
SIGNAL ww_P_generatedN : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate1|gate1|Add2~0_combout\ : std_logic;
SIGNAL \gate1|gate1|Add2~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR1[0]~3_combout\ : std_logic;
SIGNAL \start~combout\ : std_logic;
SIGNAL \P_generatedN~combout\ : std_logic;
SIGNAL \gate1|y_present.A~0_combout\ : std_logic;
SIGNAL \gate1|y_present.A~regout\ : std_logic;
SIGNAL \gate1|tcr2~0_combout\ : std_logic;
SIGNAL \gate1|tcr2~regout\ : std_logic;
SIGNAL \gate1|Selector1~0_combout\ : std_logic;
SIGNAL \gate1|y_present.B~regout\ : std_logic;
SIGNAL \gate1|tce2~0_combout\ : std_logic;
SIGNAL \gate1|tce2~1_combout\ : std_logic;
SIGNAL \gate1|tce2~regout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR1[0]~1_combout\ : std_logic;
SIGNAL \gate1|gate2|q[0]~feeder_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR1~2_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR1~0_combout\ : std_logic;
SIGNAL \gate1|gate2|q[2]~feeder_combout\ : std_logic;
SIGNAL \gate6|Mux6~0_combout\ : std_logic;
SIGNAL \gate6|Mux5~0_combout\ : std_logic;
SIGNAL \gate6|Mux4~0_combout\ : std_logic;
SIGNAL \gate6|Mux3~0_combout\ : std_logic;
SIGNAL \gate6|Mux2~0_combout\ : std_logic;
SIGNAL \gate6|Mux1~0_combout\ : std_logic;
SIGNAL \gate6|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR2[0]~3_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR2[0]~1_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[0]~4_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR2~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR2~2_combout\ : std_logic;
SIGNAL \gate7|Mux6~0_combout\ : std_logic;
SIGNAL \gate7|Mux5~0_combout\ : std_logic;
SIGNAL \gate7|Mux4~0_combout\ : std_logic;
SIGNAL \gate7|Mux3~0_combout\ : std_logic;
SIGNAL \gate7|Mux2~0_combout\ : std_logic;
SIGNAL \gate7|Mux1~0_combout\ : std_logic;
SIGNAL \gate7|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR3[0]~2_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[0]~5_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[0]~10_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR3~0_combout\ : std_logic;
SIGNAL \gate1|gate1|RPG_table~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR3~1_combout\ : std_logic;
SIGNAL \gate1|gate2|q[6]~feeder_combout\ : std_logic;
SIGNAL \gate1|gate2|q[8]~feeder_combout\ : std_logic;
SIGNAL \gate8|Mux6~0_combout\ : std_logic;
SIGNAL \gate8|Mux5~0_combout\ : std_logic;
SIGNAL \gate8|Mux4~0_combout\ : std_logic;
SIGNAL \gate8|Mux3~0_combout\ : std_logic;
SIGNAL \gate8|Mux2~0_combout\ : std_logic;
SIGNAL \gate8|Mux1~0_combout\ : std_logic;
SIGNAL \gate8|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[0]~6_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[0]~8_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[1]~9_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR4[2]~7_combout\ : std_logic;
SIGNAL \gate9|Mux6~0_combout\ : std_logic;
SIGNAL \gate9|Mux5~0_combout\ : std_logic;
SIGNAL \gate9|Mux4~0_combout\ : std_logic;
SIGNAL \gate9|Mux3~0_combout\ : std_logic;
SIGNAL \gate9|Mux2~0_combout\ : std_logic;
SIGNAL \gate9|Mux1~0_combout\ : std_logic;
SIGNAL \gate9|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|gate1|TM_ADDR2\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate1|gate1|TM_ADDR3\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate1|gate2|q\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \gate1|gate1|TM_ADDR1\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate1|gate1|TM_ADDR4\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_start~combout\ : std_logic;
SIGNAL \gate1|ALT_INV_tcr2~regout\ : std_logic;

BEGIN

ww_start <= start;
ww_P_generatedN <= P_generatedN;
ww_clk <= clk;
segment1 <= ww_segment1;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
segment4 <= ww_segment4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_start~combout\ <= NOT \start~combout\;
\gate1|ALT_INV_tcr2~regout\ <= NOT \gate1|tcr2~regout\;

-- Location: LCCOMB_X2_Y23_N12
\gate1|gate1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|Add2~0_combout\ = \gate1|gate1|TM_ADDR3\(2) $ (((\gate1|gate1|TM_ADDR3\(0) & \gate1|gate1|TM_ADDR3\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate1|TM_ADDR3\(0),
	datac => \gate1|gate1|TM_ADDR3\(1),
	datad => \gate1|gate1|TM_ADDR3\(2),
	combout => \gate1|gate1|Add2~0_combout\);

-- Location: LCCOMB_X2_Y23_N10
\gate1|gate1|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|Add2~1_combout\ = \gate1|gate1|TM_ADDR3\(1) $ (\gate1|gate1|TM_ADDR3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|gate1|TM_ADDR3\(1),
	datad => \gate1|gate1|TM_ADDR3\(0),
	combout => \gate1|gate1|Add2~1_combout\);

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

-- Location: LCCOMB_X4_Y23_N28
\gate1|gate1|TM_ADDR1[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR1[0]~3_combout\ = !\gate1|gate1|TM_ADDR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|gate1|TM_ADDR1\(0),
	combout => \gate1|gate1|TM_ADDR1[0]~3_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\start~I\ : cycloneii_io
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
	padio => ww_start,
	combout => \start~combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\P_generatedN~I\ : cycloneii_io
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
	padio => ww_P_generatedN,
	combout => \P_generatedN~combout\);

-- Location: LCCOMB_X5_Y23_N30
\gate1|y_present.A~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.A~0_combout\ = (\start~combout\) # ((\gate1|y_present.A~regout\) # ((\gate1|y_present.B~regout\ & !\P_generatedN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.B~regout\,
	datab => \start~combout\,
	datac => \gate1|y_present.A~regout\,
	datad => \P_generatedN~combout\,
	combout => \gate1|y_present.A~0_combout\);

-- Location: LCFF_X5_Y23_N31
\gate1|y_present.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.A~0_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.A~regout\);

-- Location: LCCOMB_X4_Y23_N4
\gate1|tcr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|tcr2~0_combout\ = (\gate1|tcr2~regout\) # (!\gate1|y_present.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|tcr2~regout\,
	datad => \gate1|y_present.A~regout\,
	combout => \gate1|tcr2~0_combout\);

-- Location: LCFF_X4_Y23_N5
\gate1|tcr2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|tcr2~0_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|tcr2~regout\);

-- Location: LCCOMB_X5_Y23_N16
\gate1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector1~0_combout\ = (\gate1|y_present.B~regout\ & (((\P_generatedN~combout\)))) # (!\gate1|y_present.B~regout\ & (\start~combout\ & (!\gate1|y_present.A~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \gate1|y_present.A~regout\,
	datac => \gate1|y_present.B~regout\,
	datad => \P_generatedN~combout\,
	combout => \gate1|Selector1~0_combout\);

-- Location: LCFF_X5_Y23_N17
\gate1|y_present.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector1~0_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.B~regout\);

-- Location: LCCOMB_X5_Y23_N2
\gate1|tce2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|tce2~0_combout\ = (\start~combout\ & (\gate1|y_present.A~regout\ & (\gate1|y_present.B~regout\ $ (\P_generatedN~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start~combout\,
	datab => \gate1|y_present.A~regout\,
	datac => \gate1|y_present.B~regout\,
	datad => \P_generatedN~combout\,
	combout => \gate1|tce2~0_combout\);

-- Location: LCCOMB_X5_Y23_N24
\gate1|tce2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|tce2~1_combout\ = (\gate1|tce2~0_combout\ & (\gate1|y_present.B~regout\)) # (!\gate1|tce2~0_combout\ & ((\gate1|tce2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.B~regout\,
	datac => \gate1|tce2~regout\,
	datad => \gate1|tce2~0_combout\,
	combout => \gate1|tce2~1_combout\);

-- Location: LCFF_X5_Y23_N25
\gate1|tce2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|tce2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|tce2~regout\);

-- Location: LCCOMB_X4_Y23_N30
\gate1|gate1|TM_ADDR1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR1[0]~1_combout\ = (\gate1|tcr2~regout\ & \gate1|tce2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|tcr2~regout\,
	datad => \gate1|tce2~regout\,
	combout => \gate1|gate1|TM_ADDR1[0]~1_combout\);

-- Location: LCFF_X4_Y23_N29
\gate1|gate1|TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR1[0]~3_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR1\(0));

-- Location: LCCOMB_X4_Y23_N18
\gate1|gate2|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate2|q[0]~feeder_combout\ = \gate1|gate1|TM_ADDR1\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|gate1|TM_ADDR1\(0),
	combout => \gate1|gate2|q[0]~feeder_combout\);

-- Location: LCFF_X4_Y23_N19
\gate1|gate2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate2|q[0]~feeder_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(0));

-- Location: LCCOMB_X4_Y23_N14
\gate1|gate1|TM_ADDR1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR1~2_combout\ = (\gate1|gate1|TM_ADDR1\(1) & ((!\gate1|gate1|TM_ADDR1\(0)))) # (!\gate1|gate1|TM_ADDR1\(1) & (!\gate1|gate1|TM_ADDR1\(2) & \gate1|gate1|TM_ADDR1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR1\(2),
	datac => \gate1|gate1|TM_ADDR1\(1),
	datad => \gate1|gate1|TM_ADDR1\(0),
	combout => \gate1|gate1|TM_ADDR1~2_combout\);

-- Location: LCFF_X4_Y23_N15
\gate1|gate1|TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR1~2_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR1\(1));

-- Location: LCFF_X4_Y23_N25
\gate1|gate2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR1\(1),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(1));

-- Location: LCCOMB_X4_Y23_N10
\gate1|gate1|TM_ADDR1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR1~0_combout\ = (\gate1|gate1|TM_ADDR1\(0) & (!\gate1|gate1|TM_ADDR1\(2) & \gate1|gate1|TM_ADDR1\(1))) # (!\gate1|gate1|TM_ADDR1\(0) & (\gate1|gate1|TM_ADDR1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate1|TM_ADDR1\(0),
	datac => \gate1|gate1|TM_ADDR1\(2),
	datad => \gate1|gate1|TM_ADDR1\(1),
	combout => \gate1|gate1|TM_ADDR1~0_combout\);

-- Location: LCFF_X4_Y23_N11
\gate1|gate1|TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR1~0_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR1\(2));

-- Location: LCCOMB_X4_Y23_N0
\gate1|gate2|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate2|q[2]~feeder_combout\ = \gate1|gate1|TM_ADDR1\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|gate1|TM_ADDR1\(2),
	combout => \gate1|gate2|q[2]~feeder_combout\);

-- Location: LCFF_X4_Y23_N1
\gate1|gate2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate2|q[2]~feeder_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(2));

-- Location: LCCOMB_X4_Y23_N26
\gate6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux6~0_combout\ = (!\gate1|gate2|q\(1) & (\gate1|gate2|q\(0) $ (\gate1|gate2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux6~0_combout\);

-- Location: LCCOMB_X4_Y23_N8
\gate6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux5~0_combout\ = (\gate1|gate2|q\(2) & (\gate1|gate2|q\(0) $ (\gate1|gate2|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y23_N6
\gate6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux4~0_combout\ = (!\gate1|gate2|q\(0) & (\gate1|gate2|q\(1) & !\gate1|gate2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux4~0_combout\);

-- Location: LCCOMB_X4_Y23_N16
\gate6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux3~0_combout\ = (\gate1|gate2|q\(0) & (\gate1|gate2|q\(1) $ (!\gate1|gate2|q\(2)))) # (!\gate1|gate2|q\(0) & (!\gate1|gate2|q\(1) & \gate1|gate2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux3~0_combout\);

-- Location: LCCOMB_X4_Y23_N22
\gate6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux2~0_combout\ = (\gate1|gate2|q\(0)) # ((!\gate1|gate2|q\(1) & \gate1|gate2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux2~0_combout\);

-- Location: LCCOMB_X4_Y23_N20
\gate6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux1~0_combout\ = (\gate1|gate2|q\(0) & ((\gate1|gate2|q\(1)) # (!\gate1|gate2|q\(2)))) # (!\gate1|gate2|q\(0) & (\gate1|gate2|q\(1) & !\gate1|gate2|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux1~0_combout\);

-- Location: LCCOMB_X4_Y23_N2
\gate6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate6|Mux0~0_combout\ = (\gate1|gate2|q\(1) & (\gate1|gate2|q\(0) & \gate1|gate2|q\(2))) # (!\gate1|gate2|q\(1) & ((!\gate1|gate2|q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(0),
	datac => \gate1|gate2|q\(1),
	datad => \gate1|gate2|q\(2),
	combout => \gate6|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y23_N28
\gate1|gate1|TM_ADDR2[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR2[0]~3_combout\ = !\gate1|gate1|TM_ADDR2\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|gate1|TM_ADDR2\(0),
	combout => \gate1|gate1|TM_ADDR2[0]~3_combout\);

-- Location: LCCOMB_X3_Y23_N10
\gate1|gate1|TM_ADDR2[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR2[0]~1_combout\ = (!\gate1|gate1|TM_ADDR1\(1) & (\gate1|gate1|TM_ADDR1\(2) & (\gate1|gate1|TM_ADDR1\(0) & \gate1|gate1|TM_ADDR1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR1\(1),
	datab => \gate1|gate1|TM_ADDR1\(2),
	datac => \gate1|gate1|TM_ADDR1\(0),
	datad => \gate1|gate1|TM_ADDR1[0]~1_combout\,
	combout => \gate1|gate1|TM_ADDR2[0]~1_combout\);

-- Location: LCFF_X3_Y23_N29
\gate1|gate1|TM_ADDR2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR2[0]~3_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR2\(0));

-- Location: LCCOMB_X3_Y23_N30
\gate1|gate1|TM_ADDR4[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[0]~4_combout\ = (\gate1|gate1|TM_ADDR2\(2) & (!\gate1|gate1|TM_ADDR1\(1) & (\gate1|gate1|TM_ADDR1\(2) & \gate1|gate1|TM_ADDR1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR2\(2),
	datab => \gate1|gate1|TM_ADDR1\(1),
	datac => \gate1|gate1|TM_ADDR1\(2),
	datad => \gate1|gate1|TM_ADDR1\(0),
	combout => \gate1|gate1|TM_ADDR4[0]~4_combout\);

-- Location: LCCOMB_X3_Y23_N24
\gate1|gate1|TM_ADDR2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR2~0_combout\ = (\gate1|gate1|TM_ADDR2\(1) & (\gate1|gate1|TM_ADDR2\(0) $ ((\gate1|gate1|TM_ADDR2\(2))))) # (!\gate1|gate1|TM_ADDR2\(1) & (\gate1|gate1|TM_ADDR2\(2) & ((!\gate1|gate1|TM_ADDR4[0]~4_combout\) # 
-- (!\gate1|gate1|TM_ADDR2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR2\(1),
	datab => \gate1|gate1|TM_ADDR2\(0),
	datac => \gate1|gate1|TM_ADDR2\(2),
	datad => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	combout => \gate1|gate1|TM_ADDR2~0_combout\);

-- Location: LCFF_X3_Y23_N25
\gate1|gate1|TM_ADDR2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR2~0_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR2\(2));

-- Location: LCFF_X3_Y23_N15
\gate1|gate2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR2\(2),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(5));

-- Location: LCFF_X3_Y23_N27
\gate1|gate2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR2\(0),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(3));

-- Location: LCCOMB_X3_Y23_N16
\gate1|gate1|TM_ADDR2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR2~2_combout\ = (\gate1|gate1|TM_ADDR2\(0) & (!\gate1|gate1|TM_ADDR2\(1) & !\gate1|gate1|TM_ADDR4[0]~4_combout\)) # (!\gate1|gate1|TM_ADDR2\(0) & (\gate1|gate1|TM_ADDR2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate1|TM_ADDR2\(0),
	datac => \gate1|gate1|TM_ADDR2\(1),
	datad => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	combout => \gate1|gate1|TM_ADDR2~2_combout\);

-- Location: LCFF_X3_Y23_N17
\gate1|gate1|TM_ADDR2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR2~2_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR2\(1));

-- Location: LCFF_X3_Y23_N21
\gate1|gate2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR2\(1),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(4));

-- Location: LCCOMB_X3_Y23_N26
\gate7|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux6~0_combout\ = (!\gate1|gate2|q\(4) & (\gate1|gate2|q\(5) $ (\gate1|gate2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datac => \gate1|gate2|q\(3),
	datad => \gate1|gate2|q\(4),
	combout => \gate7|Mux6~0_combout\);

-- Location: LCCOMB_X3_Y23_N18
\gate7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux5~0_combout\ = (\gate1|gate2|q\(5) & (\gate1|gate2|q\(4) $ (\gate1|gate2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datab => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(3),
	combout => \gate7|Mux5~0_combout\);

-- Location: LCCOMB_X4_Y23_N12
\gate7|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux4~0_combout\ = (!\gate1|gate2|q\(3) & (\gate1|gate2|q\(4) & !\gate1|gate2|q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(3),
	datac => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(5),
	combout => \gate7|Mux4~0_combout\);

-- Location: LCCOMB_X3_Y23_N20
\gate7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux3~0_combout\ = (\gate1|gate2|q\(5) & (\gate1|gate2|q\(4) $ (!\gate1|gate2|q\(3)))) # (!\gate1|gate2|q\(5) & (!\gate1|gate2|q\(4) & \gate1|gate2|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datac => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(3),
	combout => \gate7|Mux3~0_combout\);

-- Location: LCCOMB_X3_Y23_N12
\gate7|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux2~0_combout\ = (\gate1|gate2|q\(3)) # ((\gate1|gate2|q\(5) & !\gate1|gate2|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datab => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(3),
	combout => \gate7|Mux2~0_combout\);

-- Location: LCCOMB_X3_Y23_N2
\gate7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux1~0_combout\ = (\gate1|gate2|q\(5) & (\gate1|gate2|q\(4) & \gate1|gate2|q\(3))) # (!\gate1|gate2|q\(5) & ((\gate1|gate2|q\(4)) # (\gate1|gate2|q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datab => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(3),
	combout => \gate7|Mux1~0_combout\);

-- Location: LCCOMB_X3_Y23_N0
\gate7|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate7|Mux0~0_combout\ = (\gate1|gate2|q\(5) & (\gate1|gate2|q\(4) & \gate1|gate2|q\(3))) # (!\gate1|gate2|q\(5) & (!\gate1|gate2|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(5),
	datab => \gate1|gate2|q\(4),
	datad => \gate1|gate2|q\(3),
	combout => \gate7|Mux0~0_combout\);

-- Location: LCCOMB_X2_Y23_N30
\gate1|gate1|TM_ADDR3[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR3[0]~2_combout\ = !\gate1|gate1|TM_ADDR3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|gate1|TM_ADDR3\(0),
	combout => \gate1|gate1|TM_ADDR3[0]~2_combout\);

-- Location: LCCOMB_X3_Y23_N14
\gate1|gate1|TM_ADDR4[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[0]~5_combout\ = (!\gate1|gate1|TM_ADDR2\(1) & \gate1|gate1|TM_ADDR2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR2\(1),
	datad => \gate1|gate1|TM_ADDR2\(0),
	combout => \gate1|gate1|TM_ADDR4[0]~5_combout\);

-- Location: LCCOMB_X2_Y23_N8
\gate1|gate1|TM_ADDR4[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[0]~10_combout\ = (\gate1|tce2~regout\ & (\gate1|tcr2~regout\ & (\gate1|gate1|TM_ADDR4[0]~5_combout\ & \gate1|gate1|TM_ADDR4[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|tce2~regout\,
	datab => \gate1|tcr2~regout\,
	datac => \gate1|gate1|TM_ADDR4[0]~5_combout\,
	datad => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	combout => \gate1|gate1|TM_ADDR4[0]~10_combout\);

-- Location: LCFF_X2_Y23_N31
\gate1|gate1|TM_ADDR3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR3[0]~2_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR4[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR3\(0));

-- Location: LCCOMB_X2_Y23_N28
\gate1|gate1|TM_ADDR3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR3~0_combout\ = (\gate1|gate1|Add2~0_combout\ & (((!\gate1|gate1|TM_ADDR4[0]~4_combout\) # (!\gate1|gate1|TM_ADDR4[0]~5_combout\)) # (!\gate1|gate1|RPG_table~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|Add2~0_combout\,
	datab => \gate1|gate1|RPG_table~0_combout\,
	datac => \gate1|gate1|TM_ADDR4[0]~5_combout\,
	datad => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	combout => \gate1|gate1|TM_ADDR3~0_combout\);

-- Location: LCFF_X2_Y23_N29
\gate1|gate1|TM_ADDR3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR3~0_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR4[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR3\(2));

-- Location: LCCOMB_X2_Y23_N18
\gate1|gate1|RPG_table~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|RPG_table~0_combout\ = (\gate1|gate1|TM_ADDR3\(0) & (!\gate1|gate1|TM_ADDR3\(1) & \gate1|gate1|TM_ADDR3\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate1|TM_ADDR3\(0),
	datac => \gate1|gate1|TM_ADDR3\(1),
	datad => \gate1|gate1|TM_ADDR3\(2),
	combout => \gate1|gate1|RPG_table~0_combout\);

-- Location: LCCOMB_X2_Y23_N4
\gate1|gate1|TM_ADDR3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR3~1_combout\ = (\gate1|gate1|Add2~1_combout\ & (((!\gate1|gate1|TM_ADDR4[0]~4_combout\) # (!\gate1|gate1|TM_ADDR4[0]~5_combout\)) # (!\gate1|gate1|RPG_table~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|Add2~1_combout\,
	datab => \gate1|gate1|RPG_table~0_combout\,
	datac => \gate1|gate1|TM_ADDR4[0]~5_combout\,
	datad => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	combout => \gate1|gate1|TM_ADDR3~1_combout\);

-- Location: LCFF_X2_Y23_N5
\gate1|gate1|TM_ADDR3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR3~1_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	ena => \gate1|gate1|TM_ADDR4[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR3\(1));

-- Location: LCFF_X2_Y23_N25
\gate1|gate2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR3\(1),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(7));

-- Location: LCCOMB_X2_Y23_N14
\gate1|gate2|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate2|q[6]~feeder_combout\ = \gate1|gate1|TM_ADDR3\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|gate1|TM_ADDR3\(0),
	combout => \gate1|gate2|q[6]~feeder_combout\);

-- Location: LCFF_X2_Y23_N15
\gate1|gate2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate2|q[6]~feeder_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(6));

-- Location: LCCOMB_X2_Y23_N20
\gate1|gate2|q[8]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate2|q[8]~feeder_combout\ = \gate1|gate1|TM_ADDR3\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \gate1|gate1|TM_ADDR3\(2),
	combout => \gate1|gate2|q[8]~feeder_combout\);

-- Location: LCFF_X2_Y23_N21
\gate1|gate2|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate2|q[8]~feeder_combout\,
	aclr => \ALT_INV_start~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(8));

-- Location: LCCOMB_X1_Y23_N16
\gate8|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux6~0_combout\ = (!\gate1|gate2|q\(7) & (\gate1|gate2|q\(6) $ (\gate1|gate2|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y23_N26
\gate8|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux5~0_combout\ = (\gate1|gate2|q\(8) & (\gate1|gate2|q\(7) $ (\gate1|gate2|q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y23_N28
\gate8|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux4~0_combout\ = (\gate1|gate2|q\(7) & (!\gate1|gate2|q\(6) & !\gate1|gate2|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y23_N10
\gate8|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux3~0_combout\ = (\gate1|gate2|q\(7) & (\gate1|gate2|q\(6) & \gate1|gate2|q\(8))) # (!\gate1|gate2|q\(7) & (\gate1|gate2|q\(6) $ (\gate1|gate2|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y23_N0
\gate8|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux2~0_combout\ = (\gate1|gate2|q\(6)) # ((!\gate1|gate2|q\(7) & \gate1|gate2|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y23_N22
\gate8|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux1~0_combout\ = (\gate1|gate2|q\(7) & ((\gate1|gate2|q\(6)) # (!\gate1|gate2|q\(8)))) # (!\gate1|gate2|q\(7) & (\gate1|gate2|q\(6) & !\gate1|gate2|q\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y23_N4
\gate8|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate8|Mux0~0_combout\ = (\gate1|gate2|q\(7) & (\gate1|gate2|q\(6) & \gate1|gate2|q\(8))) # (!\gate1|gate2|q\(7) & ((!\gate1|gate2|q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(7),
	datac => \gate1|gate2|q\(6),
	datad => \gate1|gate2|q\(8),
	combout => \gate8|Mux0~0_combout\);

-- Location: LCCOMB_X3_Y23_N22
\gate1|gate1|TM_ADDR4[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[0]~6_combout\ = (\gate1|gate1|TM_ADDR4[0]~4_combout\ & (\gate1|gate1|RPG_table~0_combout\ & (\gate1|gate1|TM_ADDR4[0]~5_combout\ & \gate1|gate1|TM_ADDR1[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR4[0]~4_combout\,
	datab => \gate1|gate1|RPG_table~0_combout\,
	datac => \gate1|gate1|TM_ADDR4[0]~5_combout\,
	datad => \gate1|gate1|TM_ADDR1[0]~1_combout\,
	combout => \gate1|gate1|TM_ADDR4[0]~6_combout\);

-- Location: LCCOMB_X3_Y23_N8
\gate1|gate1|TM_ADDR4[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[0]~8_combout\ = \gate1|gate1|TM_ADDR4\(0) $ (\gate1|gate1|TM_ADDR4[0]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate1|gate1|TM_ADDR4\(0),
	datad => \gate1|gate1|TM_ADDR4[0]~6_combout\,
	combout => \gate1|gate1|TM_ADDR4[0]~8_combout\);

-- Location: LCFF_X3_Y23_N9
\gate1|gate1|TM_ADDR4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR4[0]~8_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR4\(0));

-- Location: LCCOMB_X3_Y23_N4
\gate1|gate1|TM_ADDR4[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[1]~9_combout\ = \gate1|gate1|TM_ADDR4\(1) $ (((\gate1|gate1|TM_ADDR4\(0) & \gate1|gate1|TM_ADDR4[0]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate1|TM_ADDR4\(0),
	datac => \gate1|gate1|TM_ADDR4\(1),
	datad => \gate1|gate1|TM_ADDR4[0]~6_combout\,
	combout => \gate1|gate1|TM_ADDR4[1]~9_combout\);

-- Location: LCFF_X3_Y23_N5
\gate1|gate1|TM_ADDR4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR4[1]~9_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR4\(1));

-- Location: LCFF_X3_Y23_N19
\gate1|gate2|q[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR4\(1),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(10));

-- Location: LCFF_X3_Y23_N13
\gate1|gate2|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR4\(0),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(9));

-- Location: LCCOMB_X3_Y23_N6
\gate1|gate1|TM_ADDR4[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|gate1|TM_ADDR4[2]~7_combout\ = \gate1|gate1|TM_ADDR4\(2) $ (((\gate1|gate1|TM_ADDR4\(1) & (\gate1|gate1|TM_ADDR4\(0) & \gate1|gate1|TM_ADDR4[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate1|TM_ADDR4\(1),
	datab => \gate1|gate1|TM_ADDR4\(0),
	datac => \gate1|gate1|TM_ADDR4\(2),
	datad => \gate1|gate1|TM_ADDR4[0]~6_combout\,
	combout => \gate1|gate1|TM_ADDR4[2]~7_combout\);

-- Location: LCFF_X3_Y23_N7
\gate1|gate1|TM_ADDR4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|gate1|TM_ADDR4[2]~7_combout\,
	aclr => \gate1|ALT_INV_tcr2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate1|TM_ADDR4\(2));

-- Location: LCFF_X3_Y23_N3
\gate1|gate2|q[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|gate1|TM_ADDR4\(2),
	aclr => \ALT_INV_start~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|gate2|q\(11));

-- Location: LCCOMB_X2_Y23_N22
\gate9|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux6~0_combout\ = (!\gate1|gate2|q\(10) & (\gate1|gate2|q\(9) $ (\gate1|gate2|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux6~0_combout\);

-- Location: LCCOMB_X2_Y23_N0
\gate9|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux5~0_combout\ = (\gate1|gate2|q\(11) & (\gate1|gate2|q\(10) $ (\gate1|gate2|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux5~0_combout\);

-- Location: LCCOMB_X2_Y23_N24
\gate9|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux4~0_combout\ = (!\gate1|gate2|q\(11) & (!\gate1|gate2|q\(9) & \gate1|gate2|q\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|gate2|q\(11),
	datab => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(10),
	combout => \gate9|Mux4~0_combout\);

-- Location: LCCOMB_X2_Y23_N16
\gate9|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux3~0_combout\ = (\gate1|gate2|q\(10) & (\gate1|gate2|q\(9) & \gate1|gate2|q\(11))) # (!\gate1|gate2|q\(10) & (\gate1|gate2|q\(9) $ (\gate1|gate2|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux3~0_combout\);

-- Location: LCCOMB_X2_Y23_N6
\gate9|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux2~0_combout\ = (\gate1|gate2|q\(9)) # ((!\gate1|gate2|q\(10) & \gate1|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux2~0_combout\);

-- Location: LCCOMB_X2_Y23_N26
\gate9|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux1~0_combout\ = (\gate1|gate2|q\(10) & ((\gate1|gate2|q\(9)) # (!\gate1|gate2|q\(11)))) # (!\gate1|gate2|q\(10) & (\gate1|gate2|q\(9) & !\gate1|gate2|q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux1~0_combout\);

-- Location: LCCOMB_X2_Y23_N2
\gate9|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate9|Mux0~0_combout\ = (\gate1|gate2|q\(10) & (\gate1|gate2|q\(9) & \gate1|gate2|q\(11))) # (!\gate1|gate2|q\(10) & ((!\gate1|gate2|q\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|gate2|q\(10),
	datac => \gate1|gate2|q\(9),
	datad => \gate1|gate2|q\(11),
	combout => \gate9|Mux0~0_combout\);

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
	datain => \gate6|Mux6~0_combout\,
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
	datain => \gate6|Mux5~0_combout\,
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
	datain => \gate6|Mux4~0_combout\,
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
	datain => \gate6|Mux3~0_combout\,
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
	datain => \gate6|Mux2~0_combout\,
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
	datain => \gate6|Mux1~0_combout\,
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
	datain => \gate6|Mux0~0_combout\,
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
	datain => \gate7|Mux6~0_combout\,
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
	datain => \gate7|Mux5~0_combout\,
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
	datain => \gate7|Mux4~0_combout\,
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
	datain => \gate7|Mux3~0_combout\,
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
	datain => \gate7|Mux2~0_combout\,
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
	datain => \gate7|Mux1~0_combout\,
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
	datain => \gate7|Mux0~0_combout\,
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
	datain => \gate8|Mux6~0_combout\,
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
	datain => \gate8|Mux5~0_combout\,
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
	datain => \gate8|Mux4~0_combout\,
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
	datain => \gate8|Mux3~0_combout\,
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
	datain => \gate8|Mux2~0_combout\,
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
	datain => \gate8|Mux1~0_combout\,
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
	datain => \gate8|Mux0~0_combout\,
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
	datain => \gate9|Mux6~0_combout\,
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
	datain => \gate9|Mux5~0_combout\,
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
	datain => \gate9|Mux4~0_combout\,
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
	datain => \gate9|Mux3~0_combout\,
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
	datain => \gate9|Mux2~0_combout\,
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
	datain => \gate9|Mux1~0_combout\,
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
	datain => \gate9|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_segment4(6));
END structure;


