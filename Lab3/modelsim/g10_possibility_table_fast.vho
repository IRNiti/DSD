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

-- DATE "11/10/2015 20:32:39"

-- 
-- Device: Altera EP2C20F484C8 Package FBGA484
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
-- TC_LAST	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[2]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[4]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[5]	=>  Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[6]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[7]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[8]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[9]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[10]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[11]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_OUT	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TC_EN	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_RST	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_EN	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_IN	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \TC_RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \TC_RST~combout\ : std_logic;
SIGNAL \TM_ADDR1[0]~2_combout\ : std_logic;
SIGNAL \TC_RST~clkctrl_outclk\ : std_logic;
SIGNAL \TC_EN~combout\ : std_logic;
SIGNAL \TM_ADDR1~1_combout\ : std_logic;
SIGNAL \TM_ADDR1~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \TM_ADDR3[0]~3_combout\ : std_logic;
SIGNAL \TM_ADDR4[0]~0_combout\ : std_logic;
SIGNAL \TM_ADDR2[0]~2_combout\ : std_logic;
SIGNAL \TM_ADDR2~1_combout\ : std_logic;
SIGNAL \TM_ADDR2~0_combout\ : std_logic;
SIGNAL \TM_ADDR3[0]~0_combout\ : std_logic;
SIGNAL \TM_ADDR3~2_combout\ : std_logic;
SIGNAL \counter_table~0_combout\ : std_logic;
SIGNAL \TM_ADDR3~1_combout\ : std_logic;
SIGNAL \TM_ADDR4[0]~4_combout\ : std_logic;
SIGNAL \TM_ADDR4[0]~1_combout\ : std_logic;
SIGNAL \TM_ADDR4~2_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \TC_LAST~0_combout\ : std_logic;
SIGNAL \TC_LAST~reg0_regout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \TM_ADDR4~3_combout\ : std_logic;
SIGNAL \TM_EN~combout\ : std_logic;
SIGNAL \TM_IN~combout\ : std_logic;
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

\TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (TM_ADDR4(2) & TM_ADDR4(1) & TM_ADDR4(0) & TM_ADDR3(2) & TM_ADDR3(1) & TM_ADDR3(0) & TM_ADDR2(2) & TM_ADDR2(1) & TM_ADDR2(0) & TM_ADDR1(2) & TM_ADDR1(1) & TM_ADDR1(0));

\TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (TM_ADDR4(2) & TM_ADDR4(1) & TM_ADDR4(0) & TM_ADDR3(2) & TM_ADDR3(1) & TM_ADDR3(0) & TM_ADDR2(2) & TM_ADDR2(1) & TM_ADDR2(0) & TM_ADDR1(2) & TM_ADDR1(1) & TM_ADDR1(0));

\TM[0]__1|auto_generated|q_b\(0) <= \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\TC_RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TC_RST~combout\);

-- Location: LCCOMB_X44_Y16_N28
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (TM_ADDR2(2) & (TM_ADDR3(0) & (TM_ADDR2(0) & !TM_ADDR2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR2(2),
	datab => TM_ADDR3(0),
	datac => TM_ADDR2(0),
	datad => TM_ADDR2(1),
	combout => \Equal3~0_combout\);

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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X43_Y16_N18
\TM_ADDR1[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1[0]~2_combout\ = !TM_ADDR1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR1(0),
	combout => \TM_ADDR1[0]~2_combout\);

-- Location: CLKCTRL_G1
\TC_RST~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \TC_RST~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \TC_RST~clkctrl_outclk\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X43_Y16_N19
\TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1[0]~2_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TC_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(0));

-- Location: LCCOMB_X43_Y16_N22
\TM_ADDR1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1~1_combout\ = (TM_ADDR1(2) & ((!TM_ADDR1(0)))) # (!TM_ADDR1(2) & (TM_ADDR1(1) & TM_ADDR1(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR1(1),
	datac => TM_ADDR1(2),
	datad => TM_ADDR1(0),
	combout => \TM_ADDR1~1_combout\);

-- Location: LCFF_X43_Y16_N23
\TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1~1_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TC_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(2));

-- Location: LCCOMB_X43_Y16_N28
\TM_ADDR1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1~0_combout\ = (TM_ADDR1(0) & (!TM_ADDR1(1) & !TM_ADDR1(2))) # (!TM_ADDR1(0) & (TM_ADDR1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR1(0),
	datac => TM_ADDR1(1),
	datad => TM_ADDR1(2),
	combout => \TM_ADDR1~0_combout\);

-- Location: LCFF_X43_Y16_N29
\TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TC_EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(1));

-- Location: LCCOMB_X43_Y16_N10
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!TM_ADDR1(1) & (TM_ADDR1(0) & TM_ADDR1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => TM_ADDR1(1),
	datac => TM_ADDR1(0),
	datad => TM_ADDR1(2),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X44_Y15_N0
\TM_ADDR3[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[0]~3_combout\ = !TM_ADDR3(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR3(0),
	combout => \TM_ADDR3[0]~3_combout\);

-- Location: LCCOMB_X43_Y16_N16
\TM_ADDR4[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4[0]~0_combout\ = (!TM_ADDR1(1) & (TM_ADDR1(0) & (\TC_EN~combout\ & TM_ADDR1(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(1),
	datab => TM_ADDR1(0),
	datac => \TC_EN~combout\,
	datad => TM_ADDR1(2),
	combout => \TM_ADDR4[0]~0_combout\);

-- Location: LCCOMB_X44_Y16_N16
\TM_ADDR2[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2[0]~2_combout\ = !TM_ADDR2(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR2(0),
	combout => \TM_ADDR2[0]~2_combout\);

-- Location: LCFF_X44_Y16_N17
\TM_ADDR2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2[0]~2_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(0));

-- Location: LCCOMB_X44_Y16_N12
\TM_ADDR2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2~1_combout\ = (TM_ADDR2(0) & ((TM_ADDR2(1) & (!TM_ADDR2(2))) # (!TM_ADDR2(1) & (TM_ADDR2(2) & !\Equal2~0_combout\)))) # (!TM_ADDR2(0) & (((TM_ADDR2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR2(0),
	datab => TM_ADDR2(1),
	datac => TM_ADDR2(2),
	datad => \Equal2~0_combout\,
	combout => \TM_ADDR2~1_combout\);

-- Location: LCFF_X44_Y16_N13
\TM_ADDR2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2~1_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(2));

-- Location: LCCOMB_X44_Y16_N18
\TM_ADDR2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR2~0_combout\ = (TM_ADDR2(0) & (!TM_ADDR2(1) & ((!TM_ADDR2(2)) # (!\Equal2~0_combout\)))) # (!TM_ADDR2(0) & (((TM_ADDR2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR2(0),
	datab => \Equal2~0_combout\,
	datac => TM_ADDR2(1),
	datad => TM_ADDR2(2),
	combout => \TM_ADDR2~0_combout\);

-- Location: LCFF_X44_Y16_N19
\TM_ADDR2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR2~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR2(1));

-- Location: LCCOMB_X44_Y15_N30
\TM_ADDR3[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3[0]~0_combout\ = (TM_ADDR2(2) & (\TM_ADDR4[0]~0_combout\ & (TM_ADDR2(0) & !TM_ADDR2(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR2(2),
	datab => \TM_ADDR4[0]~0_combout\,
	datac => TM_ADDR2(0),
	datad => TM_ADDR2(1),
	combout => \TM_ADDR3[0]~0_combout\);

-- Location: LCFF_X44_Y15_N1
\TM_ADDR3[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3[0]~3_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(0));

-- Location: LCCOMB_X44_Y15_N4
\TM_ADDR3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3~2_combout\ = (!\counter_table~0_combout\ & (TM_ADDR3(2) $ (((TM_ADDR3(0) & TM_ADDR3(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \counter_table~0_combout\,
	datab => TM_ADDR3(0),
	datac => TM_ADDR3(2),
	datad => TM_ADDR3(1),
	combout => \TM_ADDR3~2_combout\);

-- Location: LCFF_X44_Y15_N5
\TM_ADDR3[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3~2_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(2));

-- Location: LCCOMB_X44_Y15_N8
\counter_table~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \counter_table~0_combout\ = (\Equal3~0_combout\ & (\Equal2~0_combout\ & (TM_ADDR3(2) & !TM_ADDR3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => TM_ADDR3(2),
	datad => TM_ADDR3(1),
	combout => \counter_table~0_combout\);

-- Location: LCCOMB_X44_Y15_N2
\TM_ADDR3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR3~1_combout\ = (!\counter_table~0_combout\ & (TM_ADDR3(1) $ (TM_ADDR3(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \counter_table~0_combout\,
	datac => TM_ADDR3(1),
	datad => TM_ADDR3(0),
	combout => \TM_ADDR3~1_combout\);

-- Location: LCFF_X44_Y15_N3
\TM_ADDR3[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR3~1_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR3[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR3(1));

-- Location: LCCOMB_X44_Y16_N22
\TM_ADDR4[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4[0]~4_combout\ = !TM_ADDR4(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR4(0),
	combout => \TM_ADDR4[0]~4_combout\);

-- Location: LCCOMB_X44_Y16_N26
\TM_ADDR4[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4[0]~1_combout\ = (\Equal3~0_combout\ & (\TM_ADDR4[0]~0_combout\ & (TM_ADDR3(2) & !TM_ADDR3(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \TM_ADDR4[0]~0_combout\,
	datac => TM_ADDR3(2),
	datad => TM_ADDR3(1),
	combout => \TM_ADDR4[0]~1_combout\);

-- Location: LCFF_X44_Y16_N23
\TM_ADDR4[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR4[0]~4_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(0));

-- Location: LCCOMB_X44_Y16_N8
\TM_ADDR4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4~2_combout\ = (\Equal2~0_combout\ & (!\Equal3~2_combout\ & (TM_ADDR4(1) $ (TM_ADDR4(0))))) # (!\Equal2~0_combout\ & ((TM_ADDR4(1) $ (TM_ADDR4(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal3~2_combout\,
	datac => TM_ADDR4(1),
	datad => TM_ADDR4(0),
	combout => \TM_ADDR4~2_combout\);

-- Location: LCFF_X44_Y16_N9
\TM_ADDR4[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR4~2_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(1));

-- Location: LCCOMB_X44_Y16_N30
\Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (TM_ADDR4(2) & (!TM_ADDR4(1) & TM_ADDR4(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR4(2),
	datac => TM_ADDR4(1),
	datad => TM_ADDR4(0),
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X44_Y16_N24
\Equal3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (\Equal3~0_combout\ & (!TM_ADDR3(1) & (TM_ADDR3(2) & \Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => TM_ADDR3(1),
	datac => TM_ADDR3(2),
	datad => \Equal3~1_combout\,
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X43_Y16_N0
\TC_LAST~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TC_LAST~0_combout\ = (\TC_RST~combout\ & (((\TC_LAST~reg0_regout\)))) # (!\TC_RST~combout\ & (\TM_ADDR4[0]~0_combout\ & ((\Equal3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TM_ADDR4[0]~0_combout\,
	datab => \TC_RST~combout\,
	datac => \TC_LAST~reg0_regout\,
	datad => \Equal3~2_combout\,
	combout => \TC_LAST~0_combout\);

-- Location: LCFF_X43_Y16_N1
\TC_LAST~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TC_LAST~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TC_LAST~reg0_regout\);

-- Location: LCCOMB_X44_Y16_N4
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = TM_ADDR4(2) $ (((TM_ADDR4(1) & TM_ADDR4(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR4(2),
	datac => TM_ADDR4(1),
	datad => TM_ADDR4(0),
	combout => \Add3~0_combout\);

-- Location: LCCOMB_X44_Y16_N10
\TM_ADDR4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR4~3_combout\ = (\Add3~0_combout\ & ((!\Equal3~2_combout\) # (!\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datac => \Add3~0_combout\,
	datad => \Equal3~2_combout\,
	combout => \TM_ADDR4~3_combout\);

-- Location: LCFF_X44_Y16_N11
\TM_ADDR4[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR4~3_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	ena => \TM_ADDR4[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR4(2));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: M4K_X41_Y16
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

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR1(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR1(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(1));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR1(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(2));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR2(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(3));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR2(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(4));

-- Location: PIN_R15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR2(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(5));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR3(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(6));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR3(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(7));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR3(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(8));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR4(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(9));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR4(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(10));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => TM_ADDR4(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(11));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


