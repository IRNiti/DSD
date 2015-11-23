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

-- DATE "11/22/2015 19:20:57"

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
-- SR_SEL	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- P_SEL	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_SEL	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- GR_LD	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SR_LD	=>  Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_IN	=>  Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_EN	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_RST	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SOLVED	=>  Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- START	=>  Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_LAST	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- READY	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SC_CMP	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \WideOr4~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Selector11~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \READY~combout\ : std_logic;
SIGNAL \y_present.A~feeder_combout\ : std_logic;
SIGNAL \START~combout\ : std_logic;
SIGNAL \y_present.A~regout\ : std_logic;
SIGNAL \SC_CMP~combout\ : std_logic;
SIGNAL \TC_LAST~combout\ : std_logic;
SIGNAL \y_next.E~1_combout\ : std_logic;
SIGNAL \y_next.F_53511~combout\ : std_logic;
SIGNAL \y_present.F~regout\ : std_logic;
SIGNAL \y_next.E~2_combout\ : std_logic;
SIGNAL \y_next.E_61305~combout\ : std_logic;
SIGNAL \y_present.E~regout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \y_next.C_76893~combout\ : std_logic;
SIGNAL \y_present.C~regout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector11~1clkctrl_outclk\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \y_next.D_69099~combout\ : std_logic;
SIGNAL \y_present.D~regout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \y_next.B_84687~combout\ : std_logic;
SIGNAL \y_present.B~regout\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \y_next.G_45717~combout\ : std_logic;
SIGNAL \y_present.G~regout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~0clkctrl_outclk\ : std_logic;
SIGNAL \SR_SEL$latch~combout\ : std_logic;
SIGNAL \P_SEL$latch~combout\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \GR_SEL$latch~combout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \TM_IN$latch~combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \TM_EN~0_combout\ : std_logic;
SIGNAL \TM_EN$latch~combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \y_next.E~0_combout\ : std_logic;
SIGNAL \TC_EN$latch~combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \SOLVED$latch~combout\ : std_logic;
SIGNAL \ALT_INV_START~combout\ : std_logic;

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

\WideOr4~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \WideOr4~0_combout\);

\Selector11~1clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Selector11~1_combout\);
\ALT_INV_START~combout\ <= NOT \START~combout\;

-- Location: PIN_W3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y3_N30
\y_present.A~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.A~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \y_present.A~feeder_combout\);

-- Location: PIN_Y4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X1_Y3_N31
\y_present.A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_present.A~feeder_combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.A~regout\);

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X2_Y3_N12
\y_next.E~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.E~1_combout\ = (!\SC_CMP~combout\ & (\y_present.D~regout\ & !\TC_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC_CMP~combout\,
	datac => \y_present.D~regout\,
	datad => \TC_LAST~combout\,
	combout => \y_next.E~1_combout\);

-- Location: LCCOMB_X1_Y3_N4
\y_next.F_53511\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.F_53511~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & ((\y_next.E~1_combout\))) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & (\y_next.F_53511~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_next.F_53511~combout\,
	datac => \Selector11~1clkctrl_outclk\,
	datad => \y_next.E~1_combout\,
	combout => \y_next.F_53511~combout\);

-- Location: LCFF_X1_Y3_N5
\y_present.F\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.F_53511~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.F~regout\);

-- Location: LCCOMB_X2_Y3_N8
\y_next.E~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.E~2_combout\ = (\SC_CMP~combout\ & (\y_present.D~regout\ & !\TC_LAST~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SC_CMP~combout\,
	datac => \y_present.D~regout\,
	datad => \TC_LAST~combout\,
	combout => \y_next.E~2_combout\);

-- Location: LCCOMB_X1_Y3_N14
\y_next.E_61305\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.E_61305~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & ((\y_next.E~2_combout\))) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & (\y_next.E_61305~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_next.E_61305~combout\,
	datac => \Selector11~1clkctrl_outclk\,
	datad => \y_next.E~2_combout\,
	combout => \y_next.E_61305~combout\);

-- Location: LCFF_X1_Y3_N15
\y_present.E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.E_61305~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.E~regout\);

-- Location: LCCOMB_X2_Y3_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\READY~combout\ & (!\y_present.D~regout\ & \y_present.A~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READY~combout\,
	datac => \y_present.D~regout\,
	datad => \y_present.A~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X2_Y3_N30
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = ((\y_present.F~regout\) # ((\y_present.E~regout\) # (!\Selector4~0_combout\))) # (!\SC_CMP~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \y_present.F~regout\,
	datac => \y_present.E~regout\,
	datad => \Selector4~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X1_Y3_N28
\y_next.C_76893\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.C_76893~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & ((!\Selector3~0_combout\))) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & (\y_next.C_76893~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_next.C_76893~combout\,
	datac => \Selector11~1clkctrl_outclk\,
	datad => \Selector3~0_combout\,
	combout => \y_next.C_76893~combout\);

-- Location: LCFF_X1_Y3_N29
\y_present.C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.C_76893~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.C~regout\);

-- Location: LCCOMB_X1_Y3_N2
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (!\y_present.C~regout\ & ((\y_present.A~regout\) # (\START~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.A~regout\,
	datac => \START~combout\,
	datad => \y_present.C~regout\,
	combout => \Selector11~1_combout\);

-- Location: CLKCTRL_G2
\Selector11~1clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Selector11~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Selector11~1clkctrl_outclk\);

-- Location: LCCOMB_X2_Y3_N24
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\y_present.F~regout\) # ((\y_present.E~regout\) # ((!\SC_CMP~combout\ & \Selector4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SC_CMP~combout\,
	datab => \y_present.F~regout\,
	datac => \y_present.E~regout\,
	datad => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X1_Y3_N0
\y_next.D_69099\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.D_69099~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & ((\Selector4~1_combout\))) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & (\y_next.D_69099~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_next.D_69099~combout\,
	datac => \Selector11~1clkctrl_outclk\,
	datad => \Selector4~1_combout\,
	combout => \y_next.D_69099~combout\);

-- Location: LCFF_X1_Y3_N1
\y_present.D\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.D_69099~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.D~regout\);

-- Location: LCCOMB_X2_Y3_N10
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = ((!\READY~combout\ & \y_present.B~regout\)) # (!\y_present.A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READY~combout\,
	datac => \y_present.A~regout\,
	datad => \y_present.B~regout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X1_Y3_N26
\y_next.B_84687\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.B_84687~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & (\Selector2~0_combout\)) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & ((\y_next.B_84687~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~0_combout\,
	datac => \Selector11~1clkctrl_outclk\,
	datad => \y_next.B_84687~combout\,
	combout => \y_next.B_84687~combout\);

-- Location: LCFF_X1_Y3_N27
\y_present.B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.B_84687~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.B~regout\);

-- Location: LCCOMB_X2_Y3_N28
\Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\READY~combout\ & (\TC_LAST~combout\ & (\y_present.D~regout\))) # (!\READY~combout\ & ((\y_present.G~regout\) # ((\TC_LAST~combout\ & \y_present.D~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \READY~combout\,
	datab => \TC_LAST~combout\,
	datac => \y_present.D~regout\,
	datad => \y_present.G~regout\,
	combout => \Selector8~0_combout\);

-- Location: LCCOMB_X2_Y3_N22
\y_next.G_45717\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.G_45717~combout\ = (GLOBAL(\Selector11~1clkctrl_outclk\) & (\Selector8~0_combout\)) # (!GLOBAL(\Selector11~1clkctrl_outclk\) & ((\y_next.G_45717~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector8~0_combout\,
	datac => \y_next.G_45717~combout\,
	datad => \Selector11~1clkctrl_outclk\,
	combout => \y_next.G_45717~combout\);

-- Location: LCFF_X2_Y3_N23
\y_present.G\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~combout\,
	datain => \y_next.G_45717~combout\,
	aclr => \ALT_INV_START~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.G~regout\);

-- Location: LCCOMB_X1_Y3_N12
\WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\y_present.D~regout\) # ((\y_present.B~regout\) # (\y_present.G~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \y_present.D~regout\,
	datac => \y_present.B~regout\,
	datad => \y_present.G~regout\,
	combout => \WideOr4~0_combout\);

-- Location: CLKCTRL_G3
\WideOr4~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \WideOr4~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \WideOr4~0clkctrl_outclk\);

-- Location: LCCOMB_X1_Y3_N22
\SR_SEL$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \SR_SEL$latch~combout\ = (GLOBAL(\WideOr4~0clkctrl_outclk\) & ((!\y_present.D~regout\))) # (!GLOBAL(\WideOr4~0clkctrl_outclk\) & (\SR_SEL$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SR_SEL$latch~combout\,
	datac => \WideOr4~0clkctrl_outclk\,
	datad => \y_present.D~regout\,
	combout => \SR_SEL$latch~combout\);

-- Location: LCCOMB_X1_Y3_N16
\P_SEL$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_SEL$latch~combout\ = (GLOBAL(\WideOr4~0clkctrl_outclk\) & ((\y_present.D~regout\))) # (!GLOBAL(\WideOr4~0clkctrl_outclk\) & (\P_SEL$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_SEL$latch~combout\,
	datac => \WideOr4~0clkctrl_outclk\,
	datad => \y_present.D~regout\,
	combout => \P_SEL$latch~combout\);

-- Location: LCCOMB_X2_Y3_N6
\WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (!\y_present.G~regout\ & !\y_present.B~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.G~regout\,
	datad => \y_present.B~regout\,
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X2_Y3_N18
\GR_SEL$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \GR_SEL$latch~combout\ = (\WideOr3~0_combout\ & (\GR_SEL$latch~combout\)) # (!\WideOr3~0_combout\ & ((!\y_present.G~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr3~0_combout\,
	datab => \GR_SEL$latch~combout\,
	datad => \y_present.G~regout\,
	combout => \GR_SEL$latch~combout\);

-- Location: LCCOMB_X1_Y3_N20
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\y_present.A~regout\ & (((\y_present.E~regout\) # (\y_present.F~regout\)))) # (!\y_present.A~regout\ & (\START~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \y_present.E~regout\,
	datac => \y_present.A~regout\,
	datad => \y_present.F~regout\,
	combout => \Selector13~0_combout\);

-- Location: LCCOMB_X1_Y3_N10
\TM_IN$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_IN$latch~combout\ = (\Selector13~0_combout\ & (!\y_present.F~regout\)) # (!\Selector13~0_combout\ & ((\TM_IN$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.F~regout\,
	datab => \Selector13~0_combout\,
	datad => \TM_IN$latch~combout\,
	combout => \TM_IN$latch~combout\);

-- Location: LCCOMB_X1_Y3_N8
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\y_present.C~regout\ & (!\y_present.B~regout\ & ((\START~combout\) # (\y_present.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.C~regout\,
	datab => \START~combout\,
	datac => \y_present.B~regout\,
	datad => \y_present.A~regout\,
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X2_Y3_N2
\TM_EN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_EN~0_combout\ = (\y_present.D~regout\) # (\y_present.G~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.D~regout\,
	datad => \y_present.G~regout\,
	combout => \TM_EN~0_combout\);

-- Location: LCCOMB_X2_Y3_N20
\TM_EN$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_EN$latch~combout\ = (\Selector11~0_combout\ & ((!\TM_EN~0_combout\))) # (!\Selector11~0_combout\ & (\TM_EN$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector11~0_combout\,
	datac => \TM_EN$latch~combout\,
	datad => \TM_EN~0_combout\,
	combout => \TM_EN$latch~combout\);

-- Location: LCCOMB_X1_Y3_N6
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\y_present.D~regout\) # ((!\y_present.A~regout\ & \START~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y_present.A~regout\,
	datab => \START~combout\,
	datad => \y_present.D~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCCOMB_X2_Y3_N16
\y_next.E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_next.E~0_combout\ = (!\TC_LAST~combout\ & \y_present.D~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_LAST~combout\,
	datac => \y_present.D~regout\,
	combout => \y_next.E~0_combout\);

-- Location: LCCOMB_X2_Y3_N14
\TC_EN$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_EN$latch~combout\ = (\Selector9~0_combout\ & (!\y_next.E~0_combout\)) # (!\Selector9~0_combout\ & ((\TC_EN$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector9~0_combout\,
	datac => \y_next.E~0_combout\,
	datad => \TC_EN$latch~combout\,
	combout => \TC_EN$latch~combout\);

-- Location: LCCOMB_X1_Y3_N18
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\y_present.E~regout\ & (!\y_present.F~regout\ & ((\START~combout\) # (\y_present.A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~combout\,
	datab => \y_present.E~regout\,
	datac => \y_present.A~regout\,
	datad => \y_present.F~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X1_Y3_N24
\SOLVED$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \SOLVED$latch~combout\ = (\Selector7~0_combout\ & (\y_present.C~regout\)) # (!\Selector7~0_combout\ & ((\SOLVED$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~0_combout\,
	datab => \y_present.C~regout\,
	datac => \SOLVED$latch~combout\,
	combout => \SOLVED$latch~combout\);

-- Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SR_SEL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_SEL);

-- Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \P_SEL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_P_SEL);

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \GR_SEL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_SEL);

-- Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SR_SEL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_GR_LD);

-- Location: PIN_W1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SR_SEL$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SR_LD);

-- Location: PIN_V4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \TM_IN$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_IN);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \TM_EN$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_EN);

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \TC_EN$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_EN);

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_RST);

-- Location: PIN_W4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \SOLVED$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SOLVED);
END structure;


