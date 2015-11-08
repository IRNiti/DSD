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

-- DATE "11/06/2015 15:28:45"

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

ENTITY 	g10_possibility_table IS
    PORT (
	TC_EN : IN std_logic;
	TC_RST : IN std_logic;
	TM_IN : IN std_logic;
	TM_EN : IN std_logic;
	CLK : IN std_logic;
	TC_LAST : OUT std_logic;
	TM_ADDR : OUT std_logic_vector(11 DOWNTO 0);
	TM_OUT : OUT std_logic
	);
END g10_possibility_table;

-- Design Ports Information
-- TC_LAST	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[0]	=>  Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[1]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[3]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[4]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[5]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[7]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[8]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[9]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[10]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[11]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_OUT	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_RST	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_EN	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_IN	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF g10_possibility_table IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TC_EN : std_logic;
SIGNAL ww_TC_RST : std_logic;
SIGNAL ww_TM_IN : std_logic;
SIGNAL ww_TM_EN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_TC_LAST : std_logic;
SIGNAL ww_TM_ADDR : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_TM_OUT : std_logic;
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TM_ADDR_Int[0]~1_combout\ : std_logic;
SIGNAL \TM_ADDR4[0]~1_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \TM_ADDR2[2]~1_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \TC_EN~combout\ : std_logic;
SIGNAL \TC_RST~combout\ : std_logic;
SIGNAL \TM_ADDR1~0_combout\ : std_logic;
SIGNAL \TM_ADDR1[0]~1_combout\ : std_logic;
SIGNAL \TM_ADDR1~2_combout\ : std_logic;
SIGNAL \TM_ADDR1~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \TM_ADDR2[0]~0_combout\ : std_logic;
SIGNAL \TM_ADDR2[0]~2_combout\ : std_logic;
SIGNAL \TM_ADDR2[1]~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \TM_ADDR2[2]~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \TM_ADDR4~0_combout\ : std_logic;
SIGNAL \TM_ADDR4[0]~2_combout\ : std_logic;
SIGNAL \TM_ADDR3[2]~2_combout\ : std_logic;
SIGNAL \TM_ADDR3[2]~5_combout\ : std_logic;
SIGNAL \TM_ADDR3[0]~4_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \TM_ADDR3[0]~0_combout\ : std_logic;
SIGNAL \TM_ADDR3[0]~1_combout\ : std_logic;
SIGNAL \TM_ADDR3[1]~3_combout\ : std_logic;
SIGNAL \TM_ADDR_Int[0]~0_combout\ : std_logic;
SIGNAL \TM_ADDR_Int[0]~2_combout\ : std_logic;
SIGNAL \TC_LAST~0_combout\ : std_logic;
SIGNAL \TC_LAST~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~3_combout\ : std_logic;
SIGNAL \TM_ADDR[0]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[0]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~4_combout\ : std_logic;
SIGNAL \TM_ADDR[1]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~5_combout\ : std_logic;
SIGNAL \TM_ADDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[2]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~6_combout\ : std_logic;
SIGNAL \TM_ADDR[3]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~7_combout\ : std_logic;
SIGNAL \TM_ADDR[4]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[4]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~8_combout\ : std_logic;
SIGNAL \TM_ADDR[5]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~9_combout\ : std_logic;
SIGNAL \TM_ADDR[6]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[6]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~10_combout\ : std_logic;
SIGNAL \TM_ADDR[7]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[7]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~11_combout\ : std_logic;
SIGNAL \TM_ADDR[8]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[8]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR_Int~12_combout\ : std_logic;
SIGNAL \TM_ADDR[9]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[9]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR4~4_combout\ : std_logic;
SIGNAL \TM_ADDR_Int[10]~feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[10]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[10]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR4~3_combout\ : std_logic;
SIGNAL \TM_ADDR_Int~13_combout\ : std_logic;
SIGNAL \TM_ADDR[11]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[11]~reg0_regout\ : std_logic;
SIGNAL \TM_EN~combout\ : std_logic;
SIGNAL \TM_IN~combout\ : std_logic;
SIGNAL TM_ADDR_Int : std_logic_vector(11 DOWNTO 0);
SIGNAL TM_ADDR4 : std_logic_vector(2 DOWNTO 0);
SIGNAL TM_ADDR3 : std_logic_vector(2 DOWNTO 0);
SIGNAL TM_ADDR2 : std_logic_vector(2 DOWNTO 0);
SIGNAL TM_ADDR1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_TC_EN <= TC_EN;
ww_TC_RST <= TC_RST;
ww_TM_IN <= TM_IN;
ww_TM_EN <= TM_EN;
ww_CLK <= CLK;
TC_LAST <= ww_TC_LAST;
TM_ADDR <= ww_TM_ADDR;
TM_OUT <= ww_TM_OUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\TM[0]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\(0) <= \TM_IN~combout\;

\TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (TM_ADDR_Int(11) & TM_ADDR_Int(10) & TM_ADDR_Int(9) & TM_ADDR_Int(8) & TM_ADDR_Int(7) & TM_ADDR_Int(6) & TM_ADDR_Int(5) & TM_ADDR_Int(4) & TM_ADDR_Int(3) & TM_ADDR_Int(2) & 
TM_ADDR_Int(1) & TM_ADDR_Int(0));

\TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (TM_ADDR_Int(11) & TM_ADDR_Int(10) & TM_ADDR_Int(9) & TM_ADDR_Int(8) & TM_ADDR_Int(7) & TM_ADDR_Int(6) & TM_ADDR_Int(5) & TM_ADDR_Int(4) & TM_ADDR_Int(3) & TM_ADDR_Int(2) & 
TM_ADDR_Int(1) & TM_ADDR_Int(0));

\TM[0]__1|auto_generated|q_b\(0) <= \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

-- Location: LCCOMB_X19_Y26_N20
\TM_ADDR_Int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[0]~1_combout\ = (!\TC_RST~combout\ & (TM_ADDR4(2) & !TM_ADDR4(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datac => TM_ADDR4(2),
	datad => TM_ADDR4(1),
	combout => \TM_ADDR_Int[0]~1_combout\);

-- Location: LCCOMB_X19_Y26_N16
\TM_ADDR4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4[0]~1_combout\ = ((TM_ADDR3(1)) # ((!TM_ADDR3(0)) # (!TM_ADDR3(2)))) # (!\TC_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_EN~combout\,
	datab => TM_ADDR3(1),
	datac => TM_ADDR3(2),
	datad => TM_ADDR3(0),
	combout => \TM_ADDR4[0]~1_combout\);

-- Location: LCCOMB_X19_Y26_N26
\Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = TM_ADDR3(2) $ (((TM_ADDR3(1) & TM_ADDR3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR3(2),
	datab => TM_ADDR3(1),
	datad => TM_ADDR3(0),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X19_Y26_N30
\TM_ADDR2[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[2]~1_combout\ = (\TC_EN~combout\ & (!\TC_RST~combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_EN~combout\,
	datab => \TC_RST~combout\,
	datac => \Equal0~0_combout\,
	combout => \TM_ADDR2[2]~1_combout\);

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

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_TC_EN,
	combout => \TC_EN~combout\);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_TC_RST,
	combout => \TC_RST~combout\);

-- Location: LCCOMB_X18_Y26_N14
\TM_ADDR1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1~0_combout\ = (!TM_ADDR1(0) & !\TC_RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR1(0),
	datad => \TC_RST~combout\,
	combout => \TM_ADDR1~0_combout\);

-- Location: LCCOMB_X21_Y26_N16
\TM_ADDR1[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1[0]~1_combout\ = (\TC_EN~combout\) # (\TC_RST~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_EN~combout\,
	datac => \TC_RST~combout\,
	combout => \TM_ADDR1[0]~1_combout\);

-- Location: LCFF_X18_Y26_N15
\TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1~0_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(0));

-- Location: LCCOMB_X18_Y26_N24
\TM_ADDR1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1~2_combout\ = (!\TC_RST~combout\ & ((TM_ADDR1(0) & (TM_ADDR1(1) & !TM_ADDR1(2))) # (!TM_ADDR1(0) & ((TM_ADDR1(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(0),
	datab => TM_ADDR1(1),
	datac => TM_ADDR1(2),
	datad => \TC_RST~combout\,
	combout => \TM_ADDR1~2_combout\);

-- Location: LCFF_X18_Y26_N25
\TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1~2_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(2));

-- Location: LCCOMB_X18_Y26_N28
\TM_ADDR1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1~3_combout\ = (!\TC_RST~combout\ & ((TM_ADDR1(0) & (!TM_ADDR1(2) & !TM_ADDR1(1))) # (!TM_ADDR1(0) & ((TM_ADDR1(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(0),
	datab => TM_ADDR1(2),
	datac => TM_ADDR1(1),
	datad => \TC_RST~combout\,
	combout => \TM_ADDR1~3_combout\);

-- Location: LCFF_X18_Y26_N29
\TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1~3_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(1));

-- Location: LCCOMB_X18_Y26_N30
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (TM_ADDR1(2) & (TM_ADDR1(0) & !TM_ADDR1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(2),
	datab => TM_ADDR1(0),
	datad => TM_ADDR1(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X20_Y26_N28
\TM_ADDR2[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[0]~0_combout\ = (!\TC_RST~combout\ & (((!\Equal1~0_combout\ & !\Equal0~0_combout\)) # (!\TC_EN~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_RST~combout\,
	datab => \Equal1~0_combout\,
	datac => \TC_EN~combout\,
	datad => \Equal0~0_combout\,
	combout => \TM_ADDR2[0]~0_combout\);

-- Location: LCCOMB_X20_Y26_N0
\TM_ADDR2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[0]~2_combout\ = (TM_ADDR2(0) & ((\TM_ADDR2[0]~0_combout\))) # (!TM_ADDR2(0) & (\TM_ADDR2[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR2[2]~1_combout\,
	datac => TM_ADDR2(0),
	datad => \TM_ADDR2[0]~0_combout\,
	combout => \TM_ADDR2[0]~2_combout\);

-- Location: LCFF_X20_Y26_N1
\TM_ADDR2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(0));

-- Location: LCCOMB_X20_Y26_N16
\TM_ADDR2[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[1]~4_combout\ = (TM_ADDR2(1) & ((\TM_ADDR2[0]~0_combout\) # ((\TM_ADDR2[2]~1_combout\ & !TM_ADDR2(0))))) # (!TM_ADDR2(1) & (\TM_ADDR2[2]~1_combout\ & (TM_ADDR2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR2[2]~1_combout\,
	datab => TM_ADDR2(0),
	datac => TM_ADDR2(1),
	datad => \TM_ADDR2[0]~0_combout\,
	combout => \TM_ADDR2[1]~4_combout\);

-- Location: LCFF_X20_Y26_N17
\TM_ADDR2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(1));

-- Location: LCCOMB_X20_Y26_N6
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = TM_ADDR2(2) $ (((TM_ADDR2(1) & TM_ADDR2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR2(2),
	datac => TM_ADDR2(1),
	datad => TM_ADDR2(0),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X20_Y26_N14
\TM_ADDR2[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[2]~3_combout\ = (\TM_ADDR2[2]~1_combout\ & ((\Add1~0_combout\) # ((TM_ADDR2(2) & \TM_ADDR2[0]~0_combout\)))) # (!\TM_ADDR2[2]~1_combout\ & (((TM_ADDR2(2) & \TM_ADDR2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR2[2]~1_combout\,
	datab => \Add1~0_combout\,
	datac => TM_ADDR2(2),
	datad => \TM_ADDR2[0]~0_combout\,
	combout => \TM_ADDR2[2]~3_combout\);

-- Location: LCFF_X20_Y26_N15
\TM_ADDR2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(2));

-- Location: LCCOMB_X20_Y26_N30
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (TM_ADDR2(2) & (!TM_ADDR2(1) & TM_ADDR2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR2(2),
	datac => TM_ADDR2(1),
	datad => TM_ADDR2(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X20_Y26_N26
\TM_ADDR4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4~0_combout\ = (!\TC_RST~combout\ & !TM_ADDR4(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_RST~combout\,
	datad => TM_ADDR4(0),
	combout => \TM_ADDR4~0_combout\);

-- Location: LCCOMB_X19_Y26_N10
\TM_ADDR4[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4[0]~2_combout\ = (\TC_RST~combout\) # ((!\TM_ADDR4[0]~1_combout\ & (!\Equal0~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR4[0]~1_combout\,
	datab => \TC_RST~combout\,
	datac => \Equal0~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \TM_ADDR4[0]~2_combout\);

-- Location: LCFF_X19_Y26_N27
\TM_ADDR4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \TM_ADDR4~0_combout\,
	sload => VCC,
	ena => \TM_ADDR4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(0));

-- Location: LCCOMB_X19_Y26_N12
\TM_ADDR3[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[2]~2_combout\ = (!\TM_ADDR3[0]~0_combout\ & (!\TC_RST~combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR3[0]~0_combout\,
	datab => \TC_RST~combout\,
	datad => \Equal1~0_combout\,
	combout => \TM_ADDR3[2]~2_combout\);

-- Location: LCCOMB_X19_Y26_N24
\TM_ADDR3[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[2]~5_combout\ = (\Add2~0_combout\ & ((\TM_ADDR3[2]~2_combout\) # ((\TM_ADDR3[0]~1_combout\ & TM_ADDR3(2))))) # (!\Add2~0_combout\ & (\TM_ADDR3[0]~1_combout\ & (TM_ADDR3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \TM_ADDR3[0]~1_combout\,
	datac => TM_ADDR3(2),
	datad => \TM_ADDR3[2]~2_combout\,
	combout => \TM_ADDR3[2]~5_combout\);

-- Location: LCFF_X19_Y26_N25
\TM_ADDR3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3[2]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(2));

-- Location: LCCOMB_X19_Y26_N2
\TM_ADDR3[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[0]~4_combout\ = (TM_ADDR3(0) & ((\TM_ADDR3[0]~1_combout\))) # (!TM_ADDR3(0) & (\TM_ADDR3[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR3[2]~2_combout\,
	datac => TM_ADDR3(0),
	datad => \TM_ADDR3[0]~1_combout\,
	combout => \TM_ADDR3[0]~4_combout\);

-- Location: LCFF_X19_Y26_N3
\TM_ADDR3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(0));

-- Location: LCCOMB_X19_Y26_N28
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!TM_ADDR3(1) & (TM_ADDR3(2) & TM_ADDR3(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR3(1),
	datac => TM_ADDR3(2),
	datad => TM_ADDR3(0),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X18_Y26_N10
\TM_ADDR3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[0]~0_combout\ = ((TM_ADDR1(0) & (TM_ADDR1(2) & !TM_ADDR1(1)))) # (!\TC_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_EN~combout\,
	datab => TM_ADDR1(0),
	datac => TM_ADDR1(2),
	datad => TM_ADDR1(1),
	combout => \TM_ADDR3[0]~0_combout\);

-- Location: LCCOMB_X19_Y26_N18
\TM_ADDR3[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[0]~1_combout\ = (!\TC_RST~combout\ & ((\TM_ADDR3[0]~0_combout\) # ((!\Equal2~0_combout\ & !\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TC_RST~combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => \TM_ADDR3[0]~0_combout\,
	combout => \TM_ADDR3[0]~1_combout\);

-- Location: LCCOMB_X19_Y26_N4
\TM_ADDR3[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[1]~3_combout\ = (TM_ADDR3(1) & ((\TM_ADDR3[0]~1_combout\) # ((!TM_ADDR3(0) & \TM_ADDR3[2]~2_combout\)))) # (!TM_ADDR3(1) & (TM_ADDR3(0) & ((\TM_ADDR3[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR3(0),
	datab => \TM_ADDR3[0]~1_combout\,
	datac => TM_ADDR3(1),
	datad => \TM_ADDR3[2]~2_combout\,
	combout => \TM_ADDR3[1]~3_combout\);

-- Location: LCFF_X19_Y26_N5
\TM_ADDR3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(1));

-- Location: LCCOMB_X19_Y26_N14
\TM_ADDR_Int[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[0]~0_combout\ = (TM_ADDR4(0) & (((TM_ADDR3(1)) # (!TM_ADDR3(0))) # (!TM_ADDR3(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR3(2),
	datab => TM_ADDR4(0),
	datac => TM_ADDR3(1),
	datad => TM_ADDR3(0),
	combout => \TM_ADDR_Int[0]~0_combout\);

-- Location: LCCOMB_X19_Y26_N22
\TM_ADDR_Int[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[0]~2_combout\ = (\TM_ADDR_Int[0]~1_combout\ & (!\Equal1~0_combout\ & (\TM_ADDR_Int[0]~0_combout\ & !\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR_Int[0]~1_combout\,
	datab => \Equal1~0_combout\,
	datac => \TM_ADDR_Int[0]~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \TM_ADDR_Int[0]~2_combout\);

-- Location: LCCOMB_X19_Y26_N0
\TC_LAST~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_LAST~0_combout\ = (\TC_EN~combout\ & \TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TC_EN~combout\,
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TC_LAST~0_combout\);

-- Location: LCFF_X19_Y26_N1
\TC_LAST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TC_LAST~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_LAST~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N16
\TM_ADDR_Int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~3_combout\ = (TM_ADDR1(0) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(0),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~3_combout\);

-- Location: LCFF_X18_Y26_N17
\TM_ADDR_Int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~3_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(0));

-- Location: LCCOMB_X18_Y26_N26
\TM_ADDR[0]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[0]~reg0feeder_combout\ = TM_ADDR_Int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(0),
	combout => \TM_ADDR[0]~reg0feeder_combout\);

-- Location: LCFF_X18_Y26_N27
\TM_ADDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[0]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[0]~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N8
\TM_ADDR_Int~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~4_combout\ = (TM_ADDR1(1) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR1(1),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~4_combout\);

-- Location: LCFF_X18_Y26_N9
\TM_ADDR_Int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~4_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(1));

-- Location: LCFF_X18_Y26_N31
\TM_ADDR[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => TM_ADDR_Int(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[1]~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N2
\TM_ADDR_Int~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~5_combout\ = (TM_ADDR1(2) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR1(2),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~5_combout\);

-- Location: LCFF_X18_Y26_N3
\TM_ADDR_Int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~5_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(2));

-- Location: LCCOMB_X18_Y26_N20
\TM_ADDR[2]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[2]~reg0feeder_combout\ = TM_ADDR_Int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(2),
	combout => \TM_ADDR[2]~reg0feeder_combout\);

-- Location: LCFF_X18_Y26_N21
\TM_ADDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[2]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[2]~reg0_regout\);

-- Location: LCCOMB_X20_Y26_N4
\TM_ADDR_Int~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~6_combout\ = (TM_ADDR2(0) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR2(0),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~6_combout\);

-- Location: LCFF_X20_Y26_N5
\TM_ADDR_Int[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~6_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(3));

-- Location: LCFF_X20_Y26_N25
\TM_ADDR[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => TM_ADDR_Int(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[3]~reg0_regout\);

-- Location: LCCOMB_X20_Y26_N10
\TM_ADDR_Int~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~7_combout\ = (TM_ADDR2(1) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR2(1),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~7_combout\);

-- Location: LCFF_X20_Y26_N11
\TM_ADDR_Int[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~7_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(4));

-- Location: LCCOMB_X20_Y26_N2
\TM_ADDR[4]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[4]~reg0feeder_combout\ = TM_ADDR_Int(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(4),
	combout => \TM_ADDR[4]~reg0feeder_combout\);

-- Location: LCFF_X20_Y26_N3
\TM_ADDR[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[4]~reg0_regout\);

-- Location: LCCOMB_X20_Y26_N20
\TM_ADDR_Int~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~8_combout\ = (TM_ADDR2(2) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR2(2),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~8_combout\);

-- Location: LCFF_X20_Y26_N21
\TM_ADDR_Int[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~8_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(5));

-- Location: LCFF_X20_Y26_N9
\TM_ADDR[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => TM_ADDR_Int(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[5]~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N18
\TM_ADDR_Int~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~9_combout\ = (TM_ADDR3(0) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR3(0),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~9_combout\);

-- Location: LCFF_X18_Y26_N19
\TM_ADDR_Int[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~9_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(6));

-- Location: LCCOMB_X16_Y26_N0
\TM_ADDR[6]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[6]~reg0feeder_combout\ = TM_ADDR_Int(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(6),
	combout => \TM_ADDR[6]~reg0feeder_combout\);

-- Location: LCFF_X16_Y26_N1
\TM_ADDR[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[6]~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N0
\TM_ADDR_Int~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~10_combout\ = (TM_ADDR3(1) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR3(1),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~10_combout\);

-- Location: LCFF_X18_Y26_N1
\TM_ADDR_Int[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~10_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(7));

-- Location: LCCOMB_X18_Y26_N6
\TM_ADDR[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[7]~reg0feeder_combout\ = TM_ADDR_Int(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(7),
	combout => \TM_ADDR[7]~reg0feeder_combout\);

-- Location: LCFF_X18_Y26_N7
\TM_ADDR[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[7]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[7]~reg0_regout\);

-- Location: LCCOMB_X18_Y26_N22
\TM_ADDR_Int~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~11_combout\ = (TM_ADDR3(2) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR3(2),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~11_combout\);

-- Location: LCFF_X18_Y26_N23
\TM_ADDR_Int[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~11_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(8));

-- Location: LCCOMB_X16_Y26_N10
\TM_ADDR[8]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[8]~reg0feeder_combout\ = TM_ADDR_Int(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(8),
	combout => \TM_ADDR[8]~reg0feeder_combout\);

-- Location: LCFF_X16_Y26_N11
\TM_ADDR[8]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[8]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[8]~reg0_regout\);

-- Location: LCCOMB_X20_Y26_N18
\TM_ADDR_Int~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~12_combout\ = (TM_ADDR4(0) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR4(0),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~12_combout\);

-- Location: LCFF_X20_Y26_N19
\TM_ADDR_Int[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~12_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(9));

-- Location: LCCOMB_X16_Y26_N20
\TM_ADDR[9]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[9]~reg0feeder_combout\ = TM_ADDR_Int(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(9),
	combout => \TM_ADDR[9]~reg0feeder_combout\);

-- Location: LCFF_X16_Y26_N21
\TM_ADDR[9]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[9]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[9]~reg0_regout\);

-- Location: LCCOMB_X19_Y26_N6
\TM_ADDR4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4~4_combout\ = (!\TC_RST~combout\ & (TM_ADDR4(1) $ (TM_ADDR4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_RST~combout\,
	datac => TM_ADDR4(1),
	datad => TM_ADDR4(0),
	combout => \TM_ADDR4~4_combout\);

-- Location: LCFF_X19_Y26_N7
\TM_ADDR4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR4~4_combout\,
	ena => \TM_ADDR4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(1));

-- Location: LCCOMB_X20_Y26_N12
\TM_ADDR_Int[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[10]~feeder_combout\ = TM_ADDR4(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR4(1),
	combout => \TM_ADDR_Int[10]~feeder_combout\);

-- Location: LCFF_X20_Y26_N13
\TM_ADDR_Int[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int[10]~feeder_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(10));

-- Location: LCCOMB_X20_Y26_N22
\TM_ADDR[10]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[10]~reg0feeder_combout\ = TM_ADDR_Int(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(10),
	combout => \TM_ADDR[10]~reg0feeder_combout\);

-- Location: LCFF_X20_Y26_N23
\TM_ADDR[10]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[10]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[10]~reg0_regout\);

-- Location: LCCOMB_X19_Y26_N8
\TM_ADDR4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4~3_combout\ = (!\TC_RST~combout\ & (TM_ADDR4(2) $ (((TM_ADDR4(1) & TM_ADDR4(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR4(1),
	datab => \TC_RST~combout\,
	datac => TM_ADDR4(2),
	datad => TM_ADDR4(0),
	combout => \TM_ADDR4~3_combout\);

-- Location: LCFF_X19_Y26_N9
\TM_ADDR4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR4~3_combout\,
	ena => \TM_ADDR4[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(2));

-- Location: LCCOMB_X18_Y26_N12
\TM_ADDR_Int~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int~13_combout\ = (TM_ADDR4(2) & !\TM_ADDR_Int[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR4(2),
	datad => \TM_ADDR_Int[0]~2_combout\,
	combout => \TM_ADDR_Int~13_combout\);

-- Location: LCFF_X18_Y26_N13
\TM_ADDR_Int[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int~13_combout\,
	ena => \TM_ADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(11));

-- Location: LCCOMB_X18_Y26_N4
\TM_ADDR[11]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[11]~reg0feeder_combout\ = TM_ADDR_Int(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(11),
	combout => \TM_ADDR[11]~reg0feeder_combout\);

-- Location: LCFF_X18_Y26_N5
\TM_ADDR[11]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[11]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[11]~reg0_regout\);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_TM_EN,
	combout => \TM_EN~combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
	padio => ww_TM_IN,
	combout => \TM_IN~combout\);

-- Location: M4K_X17_Y26
\TM[0]__1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:TM[0]__1|altsyncram_cug1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 12,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 1,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \TM_EN~combout\,
	portbrewe => VCC,
	clk0 => \CLK~clkctrl_outclk\,
	portadatain => \TM[0]__1|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TC_LAST~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_LAST);

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(0));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(1));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(2));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(3));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(4));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(6));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(7));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[8]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(8));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[9]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(9));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[10]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(10));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \TM_ADDR[11]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(11));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\TM_OUT~I\ : cycloneii_io
-- pragma translate_off
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
	datain => \TM[0]__1|auto_generated|q_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_OUT);
END structure;


