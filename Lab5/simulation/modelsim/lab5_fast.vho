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

-- DATE "12/04/2015 03:49:39"

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
	segment1 : OUT std_logic_vector(6 DOWNTO 0);
	segment2 : OUT std_logic_vector(6 DOWNTO 0);
	segment3 : OUT std_logic_vector(6 DOWNTO 0);
	segment4 : OUT std_logic_vector(6 DOWNTO 0)
	);
END MASTERMIND;

-- Design Ports Information
-- sw[0]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
-- Start	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- modify_G	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- mode	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- switch_LED	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Ready	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- P_generated	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_segment1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segment4 : std_logic_vector(6 DOWNTO 0);
SIGNAL \gate1|y_present.a~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \gate1|Selector5~0_combout\ : std_logic;
SIGNAL \gate1|y_present.d~0_combout\ : std_logic;
SIGNAL \gate1|y_present.a~regout\ : std_logic;
SIGNAL \gate1|y_present.m~1_combout\ : std_logic;
SIGNAL \gate1|y_present.m~4_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Ready~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \gate1|y_present.a~feeder_combout\ : std_logic;
SIGNAL \gate2|Gate4|q[0]~feeder_combout\ : std_logic;
SIGNAL \Start~combout\ : std_logic;
SIGNAL \switch_LED~combout\ : std_logic;
SIGNAL \gate1|Selector5~1_combout\ : std_logic;
SIGNAL \mode~combout\ : std_logic;
SIGNAL \gate1|y_present.a~0_combout\ : std_logic;
SIGNAL \gate1|y_present.a~0clkctrl_outclk\ : std_logic;
SIGNAL \gate1|y_present.f~regout\ : std_logic;
SIGNAL \gate1|y_present.h~0_combout\ : std_logic;
SIGNAL \gate1|y_present.g~regout\ : std_logic;
SIGNAL \gate1|y_present.h~regout\ : std_logic;
SIGNAL \gate1|Selector16~0_combout\ : std_logic;
SIGNAL \gate1|RippleBlankInState~0_combout\ : std_logic;
SIGNAL \gate1|sw1_LD~regout\ : std_logic;
SIGNAL \gate1|Selector8~0_combout\ : std_logic;
SIGNAL \gate1|y_present.i~regout\ : std_logic;
SIGNAL \modify_G~combout\ : std_logic;
SIGNAL \gate1|y_present.m~8_combout\ : std_logic;
SIGNAL \gate1|y_present.d~1_combout\ : std_logic;
SIGNAL \gate1|y_present.d~regout\ : std_logic;
SIGNAL \gate1|y_present.b~0_combout\ : std_logic;
SIGNAL \gate1|y_present.b~regout\ : std_logic;
SIGNAL \P_generated~combout\ : std_logic;
SIGNAL \gate1|Selector2~0_combout\ : std_logic;
SIGNAL \gate1|y_present.c~regout\ : std_logic;
SIGNAL \gate1|y_present.m~2_combout\ : std_logic;
SIGNAL \gate1|y_present.m~5_combout\ : std_logic;
SIGNAL \gate1|y_present.m~0_combout\ : std_logic;
SIGNAL \gate1|y_present.m~6_combout\ : std_logic;
SIGNAL \gate1|y_present.m~3_combout\ : std_logic;
SIGNAL \gate1|y_present.m~7_combout\ : std_logic;
SIGNAL \gate1|y_present.j~regout\ : std_logic;
SIGNAL \gate1|y_present.k~regout\ : std_logic;
SIGNAL \gate1|y_present.l~regout\ : std_logic;
SIGNAL \gate1|Selector13~0_combout\ : std_logic;
SIGNAL \gate1|y_present.n~regout\ : std_logic;
SIGNAL \gate1|Selector4~0_combout\ : std_logic;
SIGNAL \gate1|Selector4~1_combout\ : std_logic;
SIGNAL \gate1|y_present.e~regout\ : std_logic;
SIGNAL \gate1|Selector20~0_combout\ : std_logic;
SIGNAL \gate1|GR_LD1~regout\ : std_logic;
SIGNAL \gate2|Gate4|q[1]~feeder_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux6~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate10|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|Selector17~0_combout\ : std_logic;
SIGNAL \gate1|sw2_LD~regout\ : std_logic;
SIGNAL \gate2|Gate5|q[0]~feeder_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux6~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate11|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|Selector18~0_combout\ : std_logic;
SIGNAL \gate1|sw3_LD~regout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux6~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate12|Mux0~0_combout\ : std_logic;
SIGNAL \gate1|Selector19~0_combout\ : std_logic;
SIGNAL \gate1|sw4_LD~regout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux6~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux5~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux4~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux3~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux2~0_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux6~1_combout\ : std_logic;
SIGNAL \gate2|gate16|gate13|Mux0~0_combout\ : std_logic;
SIGNAL \gate2|Gate5|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate6|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate7|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate8|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate9|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate10|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate11|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \gate2|Gate4|q\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \sw~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_Start~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_P_generated <= P_generated;
ww_Start <= Start;
ww_Ready <= Ready;
ww_switch_LED <= switch_LED;
ww_mode <= mode;
ww_sw <= sw;
ww_modify_G <= modify_G;
segment1 <= ww_segment1;
segment2 <= ww_segment2;
segment3 <= ww_segment3;
segment4 <= ww_segment4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\gate1|y_present.a~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \gate1|y_present.a~0_combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_Start~combout\ <= NOT \Start~combout\;

-- Location: LCCOMB_X19_Y13_N12
\gate1|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector5~0_combout\ = (!\switch_LED~combout\ & ((\gate1|y_present.e~regout\) # ((\modify_G~combout\ & \gate1|y_present.i~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.e~regout\,
	datab => \switch_LED~combout\,
	datac => \modify_G~combout\,
	datad => \gate1|y_present.i~regout\,
	combout => \gate1|Selector5~0_combout\);

-- Location: LCCOMB_X19_Y13_N24
\gate1|y_present.d~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~0_combout\ = (!\gate1|y_present.k~regout\ & (\gate1|y_present.c~regout\ & (!\gate1|y_present.l~regout\ & !\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.k~regout\,
	datab => \gate1|y_present.c~regout\,
	datac => \gate1|y_present.l~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|y_present.d~0_combout\);

-- Location: LCFF_X18_Y13_N27
\gate1|y_present.a\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.a~feeder_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.m~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.a~regout\);

-- Location: LCCOMB_X18_Y13_N12
\gate1|y_present.m~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~1_combout\ = (\Ready~combout\ & ((\gate1|y_present.j~regout\) # ((!\gate1|y_present.a~regout\ & !\Start~combout\)))) # (!\Ready~combout\ & (!\gate1|y_present.a~regout\ & ((!\Start~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Ready~combout\,
	datab => \gate1|y_present.a~regout\,
	datac => \gate1|y_present.j~regout\,
	datad => \Start~combout\,
	combout => \gate1|y_present.m~1_combout\);

-- Location: LCCOMB_X18_Y13_N30
\gate1|y_present.m~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~4_combout\ = (!\gate1|y_present.l~regout\ & (\gate1|y_present.a~regout\ & (!\gate1|y_present.k~regout\ & !\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.l~regout\,
	datab => \gate1|y_present.a~regout\,
	datac => \gate1|y_present.k~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|y_present.m~4_combout\);

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

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X18_Y13_N26
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y13_N6
\gate2|Gate4|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate4|q[0]~feeder_combout\ = \sw~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(1),
	combout => \gate2|Gate4|q[0]~feeder_combout\);

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

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_switch_LED,
	combout => \switch_LED~combout\);

-- Location: LCCOMB_X19_Y13_N20
\gate1|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector5~1_combout\ = (\gate1|Selector5~0_combout\) # ((\gate1|y_present.f~regout\ & \switch_LED~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|Selector5~0_combout\,
	datac => \gate1|y_present.f~regout\,
	datad => \switch_LED~combout\,
	combout => \gate1|Selector5~1_combout\);

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

-- Location: LCCOMB_X1_Y13_N26
\gate1|y_present.a~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.a~0_combout\ = (\mode~combout\ & !\Start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\,
	datad => \Start~combout\,
	combout => \gate1|y_present.a~0_combout\);

-- Location: CLKCTRL_G1
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

-- Location: LCFF_X19_Y13_N21
\gate1|y_present.f\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector5~1_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.f~regout\);

-- Location: LCCOMB_X18_Y13_N28
\gate1|y_present.h~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.h~0_combout\ = (!\switch_LED~combout\ & \mode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \switch_LED~combout\,
	datad => \mode~combout\,
	combout => \gate1|y_present.h~0_combout\);

-- Location: LCFF_X18_Y13_N9
\gate1|y_present.g\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|y_present.f~regout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	sload => VCC,
	ena => \gate1|y_present.h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.g~regout\);

-- Location: LCFF_X18_Y13_N11
\gate1|y_present.h\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|y_present.g~regout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	sload => VCC,
	ena => \gate1|y_present.h~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.h~regout\);

-- Location: LCCOMB_X1_Y13_N16
\gate1|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector16~0_combout\ = (\gate1|y_present.f~regout\) # ((\gate1|y_present.m~0_combout\ & (!\gate1|y_present.h~regout\ & \gate1|sw1_LD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~0_combout\,
	datab => \gate1|y_present.h~regout\,
	datac => \gate1|sw1_LD~regout\,
	datad => \gate1|y_present.f~regout\,
	combout => \gate1|Selector16~0_combout\);

-- Location: LCCOMB_X1_Y13_N2
\gate1|RippleBlankInState~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|RippleBlankInState~0_combout\ = (\mode~combout\ & \Start~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~combout\,
	datad => \Start~combout\,
	combout => \gate1|RippleBlankInState~0_combout\);

-- Location: LCFF_X1_Y13_N17
\gate1|sw1_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector16~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|sw1_LD~regout\);

-- Location: LCFF_X1_Y13_N7
\gate2|Gate4|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate4|q[0]~feeder_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|sw1_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate4|q\(0));

-- Location: LCCOMB_X19_Y13_N26
\gate1|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector8~0_combout\ = (\switch_LED~combout\ & (\modify_G~combout\ & (\gate1|y_present.i~regout\))) # (!\switch_LED~combout\ & (((\gate1|y_present.h~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \switch_LED~combout\,
	datac => \gate1|y_present.i~regout\,
	datad => \gate1|y_present.h~regout\,
	combout => \gate1|Selector8~0_combout\);

-- Location: LCFF_X19_Y13_N27
\gate1|y_present.i\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector8~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.i~regout\);

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

-- Location: LCCOMB_X18_Y13_N16
\gate1|y_present.m~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~8_combout\ = (\gate1|y_present.i~regout\ & !\modify_G~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|y_present.i~regout\,
	datad => \modify_G~combout\,
	combout => \gate1|y_present.m~8_combout\);

-- Location: LCCOMB_X19_Y13_N30
\gate1|y_present.d~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.d~1_combout\ = (\gate1|y_present.m~7_combout\ & (\gate1|y_present.d~0_combout\)) # (!\gate1|y_present.m~7_combout\ & ((\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.d~0_combout\,
	datab => \gate1|y_present.m~7_combout\,
	datac => \gate1|y_present.d~regout\,
	combout => \gate1|y_present.d~1_combout\);

-- Location: LCFF_X19_Y13_N31
\gate1|y_present.d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.d~1_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.d~regout\);

-- Location: LCCOMB_X18_Y13_N14
\gate1|y_present.b~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.b~0_combout\ = (!\gate1|y_present.a~regout\ & (!\gate1|y_present.k~regout\ & (!\gate1|y_present.l~regout\ & !\gate1|y_present.d~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.a~regout\,
	datab => \gate1|y_present.k~regout\,
	datac => \gate1|y_present.l~regout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|y_present.b~0_combout\);

-- Location: LCFF_X18_Y13_N15
\gate1|y_present.b\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.b~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.m~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.b~regout\);

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

-- Location: LCCOMB_X19_Y13_N22
\gate1|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector2~0_combout\ = (\modify_G~combout\ & ((\gate1|y_present.b~regout\) # ((\gate1|y_present.c~regout\ & \P_generated~combout\)))) # (!\modify_G~combout\ & (((\gate1|y_present.c~regout\ & \P_generated~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \gate1|y_present.b~regout\,
	datac => \gate1|y_present.c~regout\,
	datad => \P_generated~combout\,
	combout => \gate1|Selector2~0_combout\);

-- Location: LCFF_X19_Y13_N23
\gate1|y_present.c\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector2~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.c~regout\);

-- Location: LCCOMB_X19_Y13_N10
\gate1|y_present.m~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~2_combout\ = ((\P_generated~combout\ & \gate1|y_present.c~regout\)) # (!\mode~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_generated~combout\,
	datab => \gate1|y_present.c~regout\,
	datad => \mode~combout\,
	combout => \gate1|y_present.m~2_combout\);

-- Location: LCCOMB_X19_Y13_N28
\gate1|y_present.m~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~5_combout\ = (\modify_G~combout\ & (!\gate1|y_present.b~regout\ & (!\gate1|y_present.n~regout\))) # (!\modify_G~combout\ & (((!\gate1|y_present.i~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.b~regout\,
	datab => \gate1|y_present.n~regout\,
	datac => \modify_G~combout\,
	datad => \gate1|y_present.i~regout\,
	combout => \gate1|y_present.m~5_combout\);

-- Location: LCCOMB_X18_Y13_N8
\gate1|y_present.m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~0_combout\ = (!\gate1|y_present.f~regout\ & (!\gate1|y_present.e~regout\ & (!\gate1|y_present.g~regout\ & !\gate1|y_present.i~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.f~regout\,
	datab => \gate1|y_present.e~regout\,
	datac => \gate1|y_present.g~regout\,
	datad => \gate1|y_present.i~regout\,
	combout => \gate1|y_present.m~0_combout\);

-- Location: LCCOMB_X18_Y13_N24
\gate1|y_present.m~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~6_combout\ = (\gate1|y_present.m~4_combout\ & (\gate1|y_present.m~5_combout\ & ((\gate1|y_present.m~0_combout\) # (\switch_LED~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~4_combout\,
	datab => \gate1|y_present.m~5_combout\,
	datac => \gate1|y_present.m~0_combout\,
	datad => \switch_LED~combout\,
	combout => \gate1|y_present.m~6_combout\);

-- Location: LCCOMB_X18_Y13_N10
\gate1|y_present.m~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~3_combout\ = (!\gate1|y_present.j~regout\ & (!\gate1|y_present.c~regout\ & ((\switch_LED~combout\) # (!\gate1|y_present.h~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.j~regout\,
	datab => \gate1|y_present.c~regout\,
	datac => \gate1|y_present.h~regout\,
	datad => \switch_LED~combout\,
	combout => \gate1|y_present.m~3_combout\);

-- Location: LCCOMB_X18_Y13_N18
\gate1|y_present.m~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|y_present.m~7_combout\ = (!\gate1|y_present.m~1_combout\ & (!\gate1|y_present.m~2_combout\ & ((!\gate1|y_present.m~3_combout\) # (!\gate1|y_present.m~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~1_combout\,
	datab => \gate1|y_present.m~2_combout\,
	datac => \gate1|y_present.m~6_combout\,
	datad => \gate1|y_present.m~3_combout\,
	combout => \gate1|y_present.m~7_combout\);

-- Location: LCFF_X18_Y13_N17
\gate1|y_present.j\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|y_present.m~8_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \gate1|y_present.m~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.j~regout\);

-- Location: LCFF_X18_Y13_N31
\gate1|y_present.k\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|y_present.j~regout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	sload => VCC,
	ena => \gate1|y_present.m~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.k~regout\);

-- Location: LCFF_X19_Y13_N25
\gate1|y_present.l\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate1|y_present.k~regout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	sload => VCC,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.l~regout\);

-- Location: LCCOMB_X19_Y13_N8
\gate1|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector13~0_combout\ = (\gate1|y_present.l~regout\) # ((!\modify_G~combout\ & \gate1|y_present.n~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datac => \gate1|y_present.n~regout\,
	datad => \gate1|y_present.l~regout\,
	combout => \gate1|Selector13~0_combout\);

-- Location: LCFF_X19_Y13_N9
\gate1|y_present.n\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector13~0_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.n~regout\);

-- Location: LCCOMB_X19_Y13_N18
\gate1|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector4~0_combout\ = (\modify_G~combout\ & ((\gate1|y_present.n~regout\) # ((\switch_LED~combout\ & \gate1|y_present.e~regout\)))) # (!\modify_G~combout\ & (\switch_LED~combout\ & ((\gate1|y_present.e~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \switch_LED~combout\,
	datac => \gate1|y_present.n~regout\,
	datad => \gate1|y_present.e~regout\,
	combout => \gate1|Selector4~0_combout\);

-- Location: LCCOMB_X19_Y13_N16
\gate1|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector4~1_combout\ = (\gate1|Selector4~0_combout\) # (\gate1|y_present.d~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate1|Selector4~0_combout\,
	datad => \gate1|y_present.d~regout\,
	combout => \gate1|Selector4~1_combout\);

-- Location: LCFF_X19_Y13_N17
\gate1|y_present.e\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector4~1_combout\,
	aclr => \gate1|y_present.a~0clkctrl_outclk\,
	ena => \mode~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|y_present.e~regout\);

-- Location: LCCOMB_X1_Y13_N18
\gate1|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector20~0_combout\ = (\gate1|GR_LD1~regout\ & ((\modify_G~combout\) # ((!\gate1|y_present.i~regout\)))) # (!\gate1|GR_LD1~regout\ & (((\gate1|y_present.e~regout\ & !\gate1|y_present.i~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \modify_G~combout\,
	datab => \gate1|y_present.e~regout\,
	datac => \gate1|GR_LD1~regout\,
	datad => \gate1|y_present.i~regout\,
	combout => \gate1|Selector20~0_combout\);

-- Location: LCFF_X1_Y13_N19
\gate1|GR_LD1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector20~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|GR_LD1~regout\);

-- Location: LCFF_X1_Y19_N29
\gate2|Gate8|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate4|q\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_sw(3),
	combout => \sw~combout\(3));

-- Location: LCFF_X1_Y13_N25
\gate2|Gate4|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(3),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw1_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate4|q\(2));

-- Location: LCFF_X1_Y19_N17
\gate2|Gate8|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate4|q\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(2));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y13_N12
\gate2|Gate4|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate4|q[1]~feeder_combout\ = \sw~combout\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(2),
	combout => \gate2|Gate4|q[1]~feeder_combout\);

-- Location: LCFF_X1_Y13_N13
\gate2|Gate4|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate4|q[1]~feeder_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|sw1_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate4|q\(1));

-- Location: LCFF_X1_Y19_N11
\gate2|Gate8|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate4|q\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate8|q\(1));

-- Location: LCCOMB_X1_Y19_N16
\gate2|gate16|gate10|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux6~0_combout\ = (\gate2|Gate8|q\(0) & (\gate2|Gate8|q\(2) & !\gate2|Gate8|q\(1))) # (!\gate2|Gate8|q\(0) & ((\gate2|Gate8|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate8|q\(0),
	datac => \gate2|Gate8|q\(2),
	datad => \gate2|Gate8|q\(1),
	combout => \gate2|gate16|gate10|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y19_N10
\gate2|gate16|gate10|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux5~0_combout\ = (\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(2) $ (!\gate2|Gate8|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(2),
	datab => \gate2|Gate8|q\(0),
	datac => \gate2|Gate8|q\(1),
	combout => \gate2|gate16|gate10|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y19_N28
\gate2|gate16|gate10|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux4~0_combout\ = (\gate2|Gate8|q\(0) & \gate2|Gate8|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(1),
	combout => \gate2|gate16|gate10|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y19_N22
\gate2|gate16|gate10|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux3~0_combout\ = (\gate2|Gate8|q\(0) & ((!\gate2|Gate8|q\(2)))) # (!\gate2|Gate8|q\(0) & (!\gate2|Gate8|q\(1) & \gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y19_N0
\gate2|gate16|gate10|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux2~0_combout\ = (\gate2|Gate8|q\(0) & !\gate2|Gate8|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate8|q\(0),
	datad => \gate2|Gate8|q\(1),
	combout => \gate2|gate16|gate10|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y19_N2
\gate2|gate16|gate10|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux6~1_combout\ = (!\gate2|Gate8|q\(1) & (\gate2|Gate8|q\(0) & \gate2|Gate8|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y19_N4
\gate2|gate16|gate10|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate10|Mux0~0_combout\ = (\gate2|Gate8|q\(2)) # ((\gate2|Gate8|q\(1) & \gate2|Gate8|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate8|q\(1),
	datab => \gate2|Gate8|q\(0),
	datac => \gate2|Gate8|q\(2),
	combout => \gate2|gate16|gate10|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N28
\gate1|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector17~0_combout\ = (\gate1|y_present.g~regout\) # ((\gate1|y_present.m~0_combout\ & (!\gate1|y_present.h~regout\ & \gate1|sw2_LD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~0_combout\,
	datab => \gate1|y_present.h~regout\,
	datac => \gate1|sw2_LD~regout\,
	datad => \gate1|y_present.g~regout\,
	combout => \gate1|Selector17~0_combout\);

-- Location: LCFF_X1_Y13_N29
\gate1|sw2_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector17~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|sw2_LD~regout\);

-- Location: LCFF_X1_Y21_N25
\gate2|Gate5|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw2_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate5|q\(1));

-- Location: LCFF_X1_Y21_N27
\gate2|Gate9|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate5|q\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(1));

-- Location: LCFF_X1_Y21_N15
\gate2|Gate5|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(3),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw2_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate5|q\(2));

-- Location: LCFF_X1_Y21_N9
\gate2|Gate9|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate5|q\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(2));

-- Location: LCCOMB_X1_Y21_N18
\gate2|Gate5|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|Gate5|q[0]~feeder_combout\ = \sw~combout\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sw~combout\(1),
	combout => \gate2|Gate5|q[0]~feeder_combout\);

-- Location: LCFF_X1_Y21_N19
\gate2|Gate5|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate2|Gate5|q[0]~feeder_combout\,
	aclr => \ALT_INV_Start~combout\,
	ena => \gate1|sw2_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate5|q\(0));

-- Location: LCFF_X1_Y21_N29
\gate2|Gate9|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate5|q\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate9|q\(0));

-- Location: LCCOMB_X1_Y21_N8
\gate2|gate16|gate11|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux6~0_combout\ = (\gate2|Gate9|q\(1) & ((!\gate2|Gate9|q\(0)))) # (!\gate2|Gate9|q\(1) & (\gate2|Gate9|q\(2) & \gate2|Gate9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(1),
	datac => \gate2|Gate9|q\(2),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y21_N26
\gate2|gate16|gate11|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux5~0_combout\ = (\gate2|Gate9|q\(1) & (\gate2|Gate9|q\(2) $ (!\gate2|Gate9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(2),
	datac => \gate2|Gate9|q\(1),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y21_N28
\gate2|gate16|gate11|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux4~0_combout\ = (\gate2|Gate9|q\(0) & \gate2|Gate9|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate2|Gate9|q\(0),
	datad => \gate2|Gate9|q\(1),
	combout => \gate2|gate16|gate11|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y21_N22
\gate2|gate16|gate11|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux3~0_combout\ = (\gate2|Gate9|q\(2) & (!\gate2|Gate9|q\(1) & !\gate2|Gate9|q\(0))) # (!\gate2|Gate9|q\(2) & ((\gate2|Gate9|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(1),
	datac => \gate2|Gate9|q\(2),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y21_N16
\gate2|gate16|gate11|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux2~0_combout\ = (!\gate2|Gate9|q\(1) & \gate2|Gate9|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(1),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y21_N2
\gate2|gate16|gate11|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux6~1_combout\ = (!\gate2|Gate9|q\(1) & (\gate2|Gate9|q\(2) & \gate2|Gate9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(1),
	datac => \gate2|Gate9|q\(2),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y21_N4
\gate2|gate16|gate11|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate11|Mux0~0_combout\ = (\gate2|Gate9|q\(2)) # ((\gate2|Gate9|q\(1) & \gate2|Gate9|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate9|q\(1),
	datac => \gate2|Gate9|q\(2),
	datad => \gate2|Gate9|q\(0),
	combout => \gate2|gate16|gate11|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N22
\gate1|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector18~0_combout\ = (\gate1|y_present.h~regout\) # ((\gate1|y_present.m~0_combout\ & \gate1|sw3_LD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~0_combout\,
	datab => \gate1|y_present.h~regout\,
	datac => \gate1|sw3_LD~regout\,
	combout => \gate1|Selector18~0_combout\);

-- Location: LCFF_X1_Y13_N23
\gate1|sw3_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector18~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|sw3_LD~regout\);

-- Location: LCFF_X1_Y22_N3
\gate2|Gate6|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw3_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate6|q\(0));

-- Location: LCFF_X1_Y22_N29
\gate2|Gate10|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate6|q\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(0));

-- Location: LCFF_X1_Y22_N15
\gate2|Gate6|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(3),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw3_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate6|q\(2));

-- Location: LCFF_X1_Y22_N9
\gate2|Gate10|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate6|q\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(2));

-- Location: LCFF_X1_Y22_N25
\gate2|Gate6|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw3_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate6|q\(1));

-- Location: LCFF_X1_Y22_N11
\gate2|Gate10|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate6|q\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate10|q\(1));

-- Location: LCCOMB_X1_Y22_N8
\gate2|gate16|gate12|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux6~0_combout\ = (\gate2|Gate10|q\(0) & (\gate2|Gate10|q\(2) & !\gate2|Gate10|q\(1))) # (!\gate2|Gate10|q\(0) & ((\gate2|Gate10|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y22_N10
\gate2|gate16|gate12|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux5~0_combout\ = (\gate2|Gate10|q\(1) & (\gate2|Gate10|q\(2) $ (!\gate2|Gate10|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(1),
	datad => \gate2|Gate10|q\(0),
	combout => \gate2|gate16|gate12|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y22_N6
\gate2|gate16|gate12|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux4~0_combout\ = (\gate2|Gate10|q\(0) & \gate2|Gate10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y22_N0
\gate2|gate16|gate12|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux3~0_combout\ = (\gate2|Gate10|q\(0) & (!\gate2|Gate10|q\(2))) # (!\gate2|Gate10|q\(0) & (\gate2|Gate10|q\(2) & !\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y22_N18
\gate2|gate16|gate12|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux2~0_combout\ = (\gate2|Gate10|q\(0) & !\gate2|Gate10|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y22_N4
\gate2|gate16|gate12|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux6~1_combout\ = (\gate2|Gate10|q\(0) & (\gate2|Gate10|q\(2) & !\gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(0),
	datac => \gate2|Gate10|q\(2),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y22_N28
\gate2|gate16|gate12|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate12|Mux0~0_combout\ = (\gate2|Gate10|q\(2)) # ((\gate2|Gate10|q\(0) & \gate2|Gate10|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate10|q\(2),
	datac => \gate2|Gate10|q\(0),
	datad => \gate2|Gate10|q\(1),
	combout => \gate2|gate16|gate12|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y13_N0
\gate1|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate1|Selector19~0_combout\ = (\gate1|y_present.i~regout\) # ((\gate1|y_present.m~0_combout\ & (!\gate1|y_present.h~regout\ & \gate1|sw4_LD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate1|y_present.m~0_combout\,
	datab => \gate1|y_present.h~regout\,
	datac => \gate1|sw4_LD~regout\,
	datad => \gate1|y_present.i~regout\,
	combout => \gate1|Selector19~0_combout\);

-- Location: LCFF_X1_Y13_N1
\gate1|sw4_LD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \gate1|Selector19~0_combout\,
	ena => \gate1|RippleBlankInState~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate1|sw4_LD~regout\);

-- Location: LCFF_X1_Y20_N25
\gate2|Gate7|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw4_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate7|q\(1));

-- Location: LCFF_X1_Y20_N3
\gate2|Gate11|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate7|q\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(1));

-- Location: LCFF_X1_Y20_N15
\gate2|Gate7|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(3),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw4_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate7|q\(2));

-- Location: LCFF_X1_Y20_N1
\gate2|Gate11|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate7|q\(2),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(2));

-- Location: LCFF_X1_Y20_N19
\gate2|Gate7|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \sw~combout\(1),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|sw4_LD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate7|q\(0));

-- Location: LCFF_X1_Y20_N13
\gate2|Gate11|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \gate2|Gate7|q\(0),
	aclr => \ALT_INV_Start~combout\,
	sload => VCC,
	ena => \gate1|GR_LD1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \gate2|Gate11|q\(0));

-- Location: LCCOMB_X1_Y20_N0
\gate2|gate16|gate13|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux6~0_combout\ = (\gate2|Gate11|q\(1) & ((!\gate2|Gate11|q\(0)))) # (!\gate2|Gate11|q\(1) & (\gate2|Gate11|q\(2) & \gate2|Gate11|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(1),
	datac => \gate2|Gate11|q\(2),
	datad => \gate2|Gate11|q\(0),
	combout => \gate2|gate16|gate13|Mux6~0_combout\);

-- Location: LCCOMB_X1_Y20_N2
\gate2|gate16|gate13|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux5~0_combout\ = (\gate2|Gate11|q\(1) & (\gate2|Gate11|q\(2) $ (!\gate2|Gate11|q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(2),
	datac => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(0),
	combout => \gate2|gate16|gate13|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y20_N12
\gate2|gate16|gate13|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux4~0_combout\ = (\gate2|Gate11|q\(0) & \gate2|Gate11|q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gate2|Gate11|q\(0),
	datad => \gate2|Gate11|q\(1),
	combout => \gate2|gate16|gate13|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y20_N22
\gate2|gate16|gate13|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux3~0_combout\ = (\gate2|Gate11|q\(0) & ((!\gate2|Gate11|q\(2)))) # (!\gate2|Gate11|q\(0) & (!\gate2|Gate11|q\(1) & \gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(0),
	datab => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|gate16|gate13|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y20_N16
\gate2|gate16|gate13|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux2~0_combout\ = (!\gate2|Gate11|q\(1) & \gate2|Gate11|q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(0),
	combout => \gate2|gate16|gate13|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y20_N10
\gate2|gate16|gate13|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux6~1_combout\ = (\gate2|Gate11|q\(0) & (!\gate2|Gate11|q\(1) & \gate2|Gate11|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(0),
	datab => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|gate16|gate13|Mux6~1_combout\);

-- Location: LCCOMB_X1_Y20_N28
\gate2|gate16|gate13|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \gate2|gate16|gate13|Mux0~0_combout\ = (\gate2|Gate11|q\(2)) # ((\gate2|Gate11|q\(0) & \gate2|Gate11|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gate2|Gate11|q\(0),
	datab => \gate2|Gate11|q\(1),
	datad => \gate2|Gate11|q\(2),
	combout => \gate2|gate16|gate13|Mux0~0_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	datain => \gate2|gate16|gate10|Mux6~0_combout\,
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
	datain => \gate2|gate16|gate10|Mux5~0_combout\,
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
	datain => \gate2|gate16|gate10|Mux6~1_combout\,
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
	datain => \gate2|gate16|gate10|Mux0~0_combout\,
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
	datain => \gate2|gate16|gate11|Mux4~0_combout\,
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
	datain => \gate2|gate16|gate11|Mux6~1_combout\,
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
	datain => \gate2|gate16|gate12|Mux6~0_combout\,
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
	datain => \gate2|gate16|gate12|Mux5~0_combout\,
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
	datain => \gate2|gate16|gate12|Mux6~1_combout\,
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
	datain => \gate2|gate16|gate12|Mux0~0_combout\,
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
	datain => \gate2|gate16|gate13|Mux4~0_combout\,
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
	datain => \gate2|gate16|gate13|Mux6~1_combout\,
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


