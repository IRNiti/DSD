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

-- DATE "11/28/2015 12:53:10"

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

ENTITY 	g10_mastermind_controller IS
    PORT (
	SC_CMP : IN std_logic;
	TC_LAST : IN std_logic;
	START : IN std_logic;
	READY : IN std_logic;
	CLK : IN std_logic;
	SR_SEL : OUT std_logic;
	P_SEL : OUT std_logic;
	GR_SEL : OUT std_logic;
	GR_LD : OUT std_logic;
	SR_LD : OUT std_logic;
	TM_IN : OUT std_logic;
	TM_EN : OUT std_logic;
	TC_EN : OUT std_logic;
	TC_RST : OUT std_logic;
	SOLVED : OUT std_logic
	);
END g10_mastermind_controller;

-- Design Ports Information
-- SR_SEL	=>  Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P_SEL	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_SEL	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_LD	=>  Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_LD	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_IN	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_EN	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_RST	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SOLVED	=>  Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- START	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_LAST	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- READY	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SC_CMP	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g10_mastermind_controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SC_CMP : std_logic;
SIGNAL ww_TC_LAST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_READY : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_SR_SEL : std_logic;
SIGNAL ww_P_SEL : std_logic;
SIGNAL ww_GR_SEL : std_logic;
SIGNAL ww_GR_LD : std_logic;
SIGNAL ww_SR_LD : std_logic;
SIGNAL ww_TM_IN : std_logic;
SIGNAL ww_TM_EN : std_logic;
SIGNAL ww_TC_EN : std_logic;
SIGNAL ww_TC_RST : std_logic;
SIGNAL ww_SOLVED : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \START~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \y_present.E~regout\ : std_logic;
SIGNAL \y_present.C~regout\ : std_logic;
SIGNAL \y_present.B~regout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SC_CMP~combout\ : std_logic;
SIGNAL \TC_LAST~combout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \START~clkctrl_outclk\ : std_logic;
SIGNAL \y_present.H~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \y_present.I~regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \y_present.G~regout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \y_present.J~regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \GR_LD~reg0_regout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \P_SEL~reg0_regout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \GR_SEL~reg0_regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \SR_LD~reg0_regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \TM_IN~reg0_regout\ : std_logic;
SIGNAL \Selector13~1_combout\ : std_logic;
SIGNAL \TM_EN~reg0_regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \TC_EN~reg0_regout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \READY~combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \y_present.D~regout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \TC_RST~reg0_regout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \y_present.F~regout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \y_present.A~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \SOLVED~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_START~clkctrl_outclk\ : std_logic;

BEGIN

ww_SC_CMP <= SC_CMP;
ww_TC_LAST <= TC_LAST;
ww_START <= START;
ww_READY <= READY;
ww_CLK <= CLK;
SR_SEL <= ww_SR_SEL;
P_SEL <= ww_P_SEL;
GR_SEL <= ww_GR_SEL;
GR_LD <= ww_GR_LD;
SR_LD <= ww_SR_LD;
TM_IN <= ww_TM_IN;
TM_EN <= ww_TM_EN;
TC_EN <= ww_TC_EN;
TC_RST <= ww_TC_RST;
SOLVED <= ww_SOLVED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\START~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \START~combout\);
\ALT_INV_START~clkctrl_outclk\ <= NOT \START~clkctrl_outclk\;

-- Location: LCFF_X39_Y10_N13
\y_present.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector5~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.E~regout\);

-- Location: LCFF_X40_Y10_N13
\y_present.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector3~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.C~regout\);

-- Location: LCFF_X39_Y10_N17
\y_present.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector2~3_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.B~regout\);

-- Location: LCCOMB_X39_Y10_N6
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\y_present.B~regout\) # ((\TC_RST~reg0_regout\ & ((\y_present.F~regout\) # (!\y_present.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.F~regout\,
	datab => \y_present.A~regout\,
	datac => \y_present.B~regout\,
	datad => \TC_RST~reg0_regout\,
	combout => \Selector11~1_combout\);

-- Location: LCCOMB_X39_Y10_N24
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\y_present.J~regout\ & !\y_present.G~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.J~regout\,
	datad => \y_present.G~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X39_Y10_N12
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\READY~combout\ & \y_present.D~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \READY~combout\,
	datad => \y_present.D~regout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X40_Y10_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\y_present.B~regout\) # ((\y_present.C~regout\ & !\TC_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.B~regout\,
	datac => \y_present.C~regout\,
	datad => \TC_LAST~combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X39_Y10_N26
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (!\y_present.E~regout\ & (!\y_present.A~regout\ & (!\y_present.B~regout\ & !\y_present.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.A~regout\,
	datac => \y_present.B~regout\,
	datad => \y_present.D~regout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X39_Y10_N16
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~0_combout\ & (\Selector2~2_combout\ & (\START~combout\ & \Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~0_combout\,
	datab => \Selector2~2_combout\,
	datac => \START~combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~3_combout\);

-- Location: LCCOMB_X39_Y10_N20
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\y_present.B~regout\) # ((\y_present.F~regout\) # ((\y_present.J~regout\) # (\y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.B~regout\,
	datab => \y_present.F~regout\,
	datac => \y_present.J~regout\,
	datad => \y_present.G~regout\,
	combout => \Selector1~0_combout\);

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

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_SC_CMP,
	combout => \SC_CMP~combout\);

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\TC_LAST~I\ : cycloneii_io
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
	padio => ww_TC_LAST,
	combout => \TC_LAST~combout\);

-- Location: LCCOMB_X40_Y10_N14
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\y_present.G~regout\ & (\SC_CMP~combout\ & !\TC_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.G~regout\,
	datac => \SC_CMP~combout\,
	datad => \TC_LAST~combout\,
	combout => \Selector8~0_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\START~I\ : cycloneii_io
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
	padio => ww_START,
	combout => \START~combout\);

-- Location: CLKCTRL_G1
\START~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \START~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \START~clkctrl_outclk\);

-- Location: LCFF_X40_Y10_N15
\y_present.H\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector8~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.H~regout\);

-- Location: LCCOMB_X40_Y10_N8
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\y_present.G~regout\ & (!\SC_CMP~combout\ & !\TC_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.G~regout\,
	datac => \SC_CMP~combout\,
	datad => \TC_LAST~combout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X40_Y10_N9
\y_present.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector9~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.I~regout\);

-- Location: LCCOMB_X40_Y10_N26
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (!\y_present.H~regout\ & !\y_present.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.H~regout\,
	datac => \y_present.I~regout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X40_Y10_N2
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = ((!\SC_CMP~combout\ & ((\y_present.E~regout\) # (\y_present.J~regout\)))) # (!\Selector13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \Selector13~0_combout\,
	datac => \SC_CMP~combout\,
	datad => \y_present.J~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X40_Y10_N3
\y_present.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector7~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.G~regout\);

-- Location: LCCOMB_X40_Y10_N0
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\y_present.G~regout\ & \TC_LAST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.G~regout\,
	datad => \TC_LAST~combout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X40_Y10_N1
\y_present.J\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector10~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.J~regout\);

-- Location: LCCOMB_X40_Y10_N24
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\y_present.D~regout\) # ((\y_present.J~regout\) # ((\GR_LD~reg0_regout\ & !\y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.D~regout\,
	datab => \y_present.J~regout\,
	datac => \GR_LD~reg0_regout\,
	datad => \y_present.G~regout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X40_Y10_N25
\GR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector17~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_LD~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N10
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\y_present.G~regout\) # ((!\y_present.D~regout\ & (!\y_present.J~regout\ & \P_SEL~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.D~regout\,
	datab => \y_present.J~regout\,
	datac => \P_SEL~reg0_regout\,
	datad => \y_present.G~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X40_Y10_N11
\P_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector16~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P_SEL~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N28
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\y_present.D~regout\) # ((!\y_present.J~regout\ & \GR_SEL~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.D~regout\,
	datab => \y_present.J~regout\,
	datac => \GR_SEL~reg0_regout\,
	combout => \Selector15~0_combout\);

-- Location: LCFF_X40_Y10_N29
\GR_SEL~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector15~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \GR_SEL~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N22
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\y_present.E~regout\) # ((\y_present.J~regout\) # ((\SR_LD~reg0_regout\ & !\y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.J~regout\,
	datac => \SR_LD~reg0_regout\,
	datad => \y_present.G~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X40_Y10_N23
\SR_LD~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector19~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SR_LD~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N16
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\y_present.C~regout\) # ((\y_present.H~regout\) # ((\TM_IN~reg0_regout\ & !\y_present.I~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \y_present.H~regout\,
	datac => \TM_IN~reg0_regout\,
	datad => \y_present.I~regout\,
	combout => \Selector14~0_combout\);

-- Location: LCFF_X40_Y10_N17
\TM_IN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector14~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_IN~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N18
\Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~1_combout\ = (\y_present.C~regout\) # (((\TM_EN~reg0_regout\ & !\y_present.G~regout\)) # (!\Selector13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \Selector13~0_combout\,
	datac => \TM_EN~reg0_regout\,
	datad => \y_present.G~regout\,
	combout => \Selector13~1_combout\);

-- Location: LCFF_X40_Y10_N19
\TM_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector13~1_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_EN~reg0_regout\);

-- Location: LCCOMB_X40_Y10_N20
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\y_present.G~regout\ & (((\TC_LAST~combout\)))) # (!\y_present.G~regout\ & ((\y_present.C~regout\) # ((\TC_EN~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \y_present.G~regout\,
	datac => \TC_EN~reg0_regout\,
	datad => \TC_LAST~combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X40_Y10_N21
\TC_EN~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector12~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_EN~reg0_regout\);

-- Location: LCCOMB_X39_Y10_N22
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (\TC_RST~reg0_regout\ & ((\y_present.E~regout\) # ((\y_present.I~regout\) # (\y_present.H~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.I~regout\,
	datac => \y_present.H~regout\,
	datad => \TC_RST~reg0_regout\,
	combout => \Selector11~0_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\READY~I\ : cycloneii_io
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
	padio => ww_READY,
	combout => \READY~combout\);

-- Location: LCCOMB_X40_Y10_N4
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\y_present.D~regout\ & (((!\READY~combout\)))) # (!\y_present.D~regout\ & (\y_present.C~regout\ & (\TC_LAST~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \TC_LAST~combout\,
	datac => \y_present.D~regout\,
	datad => \READY~combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X40_Y10_N30
\Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (!\y_present.E~regout\ & (!\y_present.J~regout\ & (\Selector4~2_combout\ & !\y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.J~regout\,
	datac => \Selector4~2_combout\,
	datad => \y_present.G~regout\,
	combout => \Selector4~3_combout\);

-- Location: LCFF_X40_Y10_N31
\y_present.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector4~3_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.D~regout\);

-- Location: LCCOMB_X39_Y10_N0
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~1_combout\) # ((\Selector11~0_combout\) # ((\y_present.J~regout\) # (\y_present.D~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~1_combout\,
	datab => \Selector11~0_combout\,
	datac => \y_present.J~regout\,
	datad => \y_present.D~regout\,
	combout => \Selector11~2_combout\);

-- Location: LCFF_X39_Y10_N1
\TC_RST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector11~2_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_RST~reg0_regout\);

-- Location: LCCOMB_X39_Y10_N2
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\y_present.F~regout\) # ((\SC_CMP~combout\ & ((\y_present.E~regout\) # (\y_present.J~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.J~regout\,
	datac => \y_present.F~regout\,
	datad => \SC_CMP~combout\,
	combout => \Selector6~0_combout\);

-- Location: LCFF_X39_Y10_N3
\y_present.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector6~0_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.F~regout\);

-- Location: LCCOMB_X39_Y10_N30
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\y_present.E~regout\) # ((\y_present.A~regout\) # (\y_present.D~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.E~regout\,
	datab => \y_present.A~regout\,
	datad => \y_present.D~regout\,
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X40_Y10_N6
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (!\y_present.H~regout\ & (!\y_present.I~regout\ & ((!\TC_LAST~combout\) # (!\y_present.C~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \y_present.H~regout\,
	datac => \y_present.I~regout\,
	datad => \TC_LAST~combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X39_Y10_N28
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\Selector1~0_combout\) # ((\Selector1~1_combout\) # ((\START~combout\) # (!\Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \START~combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector1~2_combout\);

-- Location: LCFF_X39_Y10_N29
\y_present.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector1~2_combout\,
	aclr => \ALT_INV_START~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.A~regout\);

-- Location: LCCOMB_X39_Y10_N18
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\y_present.F~regout\) # ((\SOLVED~reg0_regout\ & \y_present.A~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.F~regout\,
	datac => \SOLVED~reg0_regout\,
	datad => \y_present.A~regout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X39_Y10_N19
\SOLVED~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \Selector0~0_combout\,
	ena => \START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \SOLVED~reg0_regout\);

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_SEL);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \P_SEL~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P_SEL);

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GR_SEL~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_SEL);

-- Location: PIN_N4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \GR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_LD);

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \SR_LD~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_LD);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_IN~I\ : cycloneii_io
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
	datain => \TM_IN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_IN);

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_EN~I\ : cycloneii_io
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
	datain => \TM_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_EN);

-- Location: PIN_U14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_EN~I\ : cycloneii_io
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
	datain => \TC_EN~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_EN);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TC_RST~I\ : cycloneii_io
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
	datain => \TC_RST~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_RST);

-- Location: PIN_W15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SOLVED~I\ : cycloneii_io
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
	datain => \SOLVED~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SOLVED);
END structure;


