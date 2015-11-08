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

-- DATE "11/05/2015 22:24:58"

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
-- TC_LAST	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[0]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[1]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[4]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[5]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[6]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[8]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[9]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[10]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_ADDR[11]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- TM_OUT	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_RST	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_EN	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TM_IN	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TC_EN	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \TC_RST~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \TC_EN~combout\ : std_logic;
SIGNAL \TM_ADDR1[0]~0_combout\ : std_logic;
SIGNAL \TC_RST~combout\ : std_logic;
SIGNAL \TC_RST~clkctrl_outclk\ : std_logic;
SIGNAL \TM_ADDR_Int[0]~feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[0]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR1[1]~1_combout\ : std_logic;
SIGNAL \TM_ADDR_Int[1]~feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[1]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[1]~reg0_regout\ : std_logic;
SIGNAL \TM_ADDR1[2]~2_combout\ : std_logic;
SIGNAL \TM_ADDR[2]~reg0feeder_combout\ : std_logic;
SIGNAL \TM_ADDR[2]~reg0_regout\ : std_logic;
SIGNAL \TM_EN~combout\ : std_logic;
SIGNAL \TM_IN~combout\ : std_logic;
SIGNAL TM_ADDR_Int : std_logic_vector(11 DOWNTO 0);
SIGNAL TM_ADDR1 : std_logic_vector(2 DOWNTO 0);
SIGNAL \TM[0]__1|auto_generated|q_b\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_TC_RST~combout\ : std_logic;

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

\TM[0]__1|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (TM_ADDR_Int(2) & TM_ADDR_Int(1) & TM_ADDR_Int(0));

\TM[0]__1|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (TM_ADDR_Int(2) & TM_ADDR_Int(1) & TM_ADDR_Int(0));

\TM[0]__1|auto_generated|q_b\(0) <= \TM[0]__1|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\TC_RST~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \TC_RST~combout\);
\ALT_INV_TC_RST~combout\ <= NOT \TC_RST~combout\;

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

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X4_Y12_N28
\TM_ADDR1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1[0]~0_combout\ = TM_ADDR1(0) $ (\TC_EN~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => TM_ADDR1(0),
	datad => \TC_EN~combout\,
	combout => \TM_ADDR1[0]~0_combout\);

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

-- Location: LCFF_X4_Y12_N29
\TM_ADDR1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1[0]~0_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(0));

-- Location: LCCOMB_X4_Y12_N14
\TM_ADDR_Int[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[0]~feeder_combout\ = TM_ADDR1(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR1(0),
	combout => \TM_ADDR_Int[0]~feeder_combout\);

-- Location: LCFF_X4_Y12_N15
\TM_ADDR_Int[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int[0]~feeder_combout\,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(0));

-- Location: LCFF_X4_Y12_N25
\TM_ADDR[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => TM_ADDR_Int(0),
	sload => VCC,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[0]~reg0_regout\);

-- Location: LCCOMB_X4_Y12_N6
\TM_ADDR1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1[1]~1_combout\ = TM_ADDR1(1) $ (((\TC_EN~combout\ & TM_ADDR1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TC_EN~combout\,
	datac => TM_ADDR1(1),
	datad => TM_ADDR1(0),
	combout => \TM_ADDR1[1]~1_combout\);

-- Location: LCFF_X4_Y12_N7
\TM_ADDR1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1[1]~1_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(1));

-- Location: LCCOMB_X4_Y12_N0
\TM_ADDR_Int[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR_Int[1]~feeder_combout\ = TM_ADDR1(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR1(1),
	combout => \TM_ADDR_Int[1]~feeder_combout\);

-- Location: LCFF_X4_Y12_N1
\TM_ADDR_Int[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR_Int[1]~feeder_combout\,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(1));

-- Location: LCCOMB_X4_Y12_N26
\TM_ADDR[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR[1]~reg0feeder_combout\ = TM_ADDR_Int(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => TM_ADDR_Int(1),
	combout => \TM_ADDR[1]~reg0feeder_combout\);

-- Location: LCFF_X4_Y12_N27
\TM_ADDR[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[1]~reg0feeder_combout\,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[1]~reg0_regout\);

-- Location: LCCOMB_X4_Y12_N8
\TM_ADDR1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \TM_ADDR1[2]~2_combout\ = TM_ADDR1(2) $ (((TM_ADDR1(1) & (\TC_EN~combout\ & TM_ADDR1(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => TM_ADDR1(1),
	datab => \TC_EN~combout\,
	datac => TM_ADDR1(2),
	datad => TM_ADDR1(0),
	combout => \TM_ADDR1[2]~2_combout\);

-- Location: LCFF_X4_Y12_N9
\TM_ADDR1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR1[2]~2_combout\,
	aclr => \TC_RST~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR1(2));

-- Location: LCFF_X4_Y12_N3
\TM_ADDR_Int[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => TM_ADDR1(2),
	sload => VCC,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => TM_ADDR_Int(2));

-- Location: LCCOMB_X4_Y12_N20
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

-- Location: LCFF_X4_Y12_N21
\TM_ADDR[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \TM_ADDR[2]~reg0feeder_combout\,
	ena => \ALT_INV_TC_RST~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TM_ADDR[2]~reg0_regout\);

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: M4K_X17_Y12
\TM[0]__1|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "altsyncram:TM[0]__1|altsyncram_cug1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 3,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 1,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 7,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 1,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 3,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 1,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 7,
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

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TC_LAST);

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(3));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(4));

-- Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(5));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(6));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(7));

-- Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(8));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(9));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(10));

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_TM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


