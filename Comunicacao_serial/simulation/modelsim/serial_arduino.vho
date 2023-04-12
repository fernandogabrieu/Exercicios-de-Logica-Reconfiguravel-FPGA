-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/02/2022 17:14:23"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	serial_arduino IS
    PORT (
	GPIO_1 : OUT std_logic_vector(1 DOWNTO 1);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(3 DOWNTO 0)
	);
END serial_arduino;

-- Design Ports Information
-- GPIO_1[1]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF serial_arduino IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_GPIO_1 : std_logic_vector(1 DOWNTO 1);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst|Add0~33_sumout\ : std_logic;
SIGNAL \inst|count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~34\ : std_logic;
SIGNAL \inst|Add0~29_sumout\ : std_logic;
SIGNAL \inst|count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~30\ : std_logic;
SIGNAL \inst|Add0~25_sumout\ : std_logic;
SIGNAL \inst|Add0~26\ : std_logic;
SIGNAL \inst|Add0~21_sumout\ : std_logic;
SIGNAL \inst|Add0~22\ : std_logic;
SIGNAL \inst|Add0~17_sumout\ : std_logic;
SIGNAL \inst|count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~18\ : std_logic;
SIGNAL \inst|Add0~14\ : std_logic;
SIGNAL \inst|Add0~9_sumout\ : std_logic;
SIGNAL \inst|count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~10\ : std_logic;
SIGNAL \inst|Add0~49_sumout\ : std_logic;
SIGNAL \inst|count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~50\ : std_logic;
SIGNAL \inst|Add0~45_sumout\ : std_logic;
SIGNAL \inst|count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~46\ : std_logic;
SIGNAL \inst|Add0~5_sumout\ : std_logic;
SIGNAL \inst|Add0~6\ : std_logic;
SIGNAL \inst|Add0~41_sumout\ : std_logic;
SIGNAL \inst|Add0~42\ : std_logic;
SIGNAL \inst|Add0~1_sumout\ : std_logic;
SIGNAL \inst|count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~2\ : std_logic;
SIGNAL \inst|Add0~37_sumout\ : std_logic;
SIGNAL \inst|count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~13_sumout\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|clk_out~q\ : std_logic;
SIGNAL \inst14|count~3_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst14|dados_velho[0]~1_combout\ : std_logic;
SIGNAL \inst14|dados_velho[4]~0_combout\ : std_logic;
SIGNAL \inst14|dados_velho[4]~feeder_combout\ : std_logic;
SIGNAL \inst5|Mux1~3_combout\ : std_logic;
SIGNAL \inst5|Mux1~2_combout\ : std_logic;
SIGNAL \inst14|Equal0~0_combout\ : std_logic;
SIGNAL \inst14|count[3]~1_combout\ : std_logic;
SIGNAL \inst14|count~2_combout\ : std_logic;
SIGNAL \inst14|count~4_combout\ : std_logic;
SIGNAL \inst14|count~0_combout\ : std_logic;
SIGNAL \inst14|tx~0_combout\ : std_logic;
SIGNAL \inst14|tx~1_combout\ : std_logic;
SIGNAL \inst14|tx~q\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~1_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst14|dados_velho\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst14|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|ALT_INV_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[12]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_tx~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst14|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_dados_velho\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst14|ALT_INV_tx~q\ : std_logic;
SIGNAL \inst|ALT_INV_count\ : std_logic_vector(12 DOWNTO 0);

BEGIN

GPIO_1 <= ww_GPIO_1;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_count[7]~DUPLICATE_q\ <= NOT \inst|count[7]~DUPLICATE_q\;
\inst|ALT_INV_count[8]~DUPLICATE_q\ <= NOT \inst|count[8]~DUPLICATE_q\;
\inst|ALT_INV_count[10]~DUPLICATE_q\ <= NOT \inst|count[10]~DUPLICATE_q\;
\inst|ALT_INV_count[12]~DUPLICATE_q\ <= NOT \inst|count[12]~DUPLICATE_q\;
\inst|ALT_INV_count[0]~DUPLICATE_q\ <= NOT \inst|count[0]~DUPLICATE_q\;
\inst|ALT_INV_count[1]~DUPLICATE_q\ <= NOT \inst|count[1]~DUPLICATE_q\;
\inst|ALT_INV_count[2]~DUPLICATE_q\ <= NOT \inst|count[2]~DUPLICATE_q\;
\inst|ALT_INV_count[4]~DUPLICATE_q\ <= NOT \inst|count[4]~DUPLICATE_q\;
\inst|ALT_INV_count[5]~DUPLICATE_q\ <= NOT \inst|count[5]~DUPLICATE_q\;
\inst|ALT_INV_count[6]~DUPLICATE_q\ <= NOT \inst|count[6]~DUPLICATE_q\;
\inst|ALT_INV_count[9]~DUPLICATE_q\ <= NOT \inst|count[9]~DUPLICATE_q\;
\inst|ALT_INV_count[11]~DUPLICATE_q\ <= NOT \inst|count[11]~DUPLICATE_q\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\inst|ALT_INV_Equal0~1_combout\ <= NOT \inst|Equal0~1_combout\;
\inst|ALT_INV_Equal0~0_combout\ <= NOT \inst|Equal0~0_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst14|ALT_INV_tx~0_combout\ <= NOT \inst14|tx~0_combout\;
\inst14|ALT_INV_count\(0) <= NOT \inst14|count\(0);
\inst14|ALT_INV_count\(1) <= NOT \inst14|count\(1);
\inst14|ALT_INV_count\(2) <= NOT \inst14|count\(2);
\inst14|ALT_INV_count\(3) <= NOT \inst14|count\(3);
\inst14|ALT_INV_Equal0~0_combout\ <= NOT \inst14|Equal0~0_combout\;
\inst14|ALT_INV_dados_velho\(2) <= NOT \inst14|dados_velho\(2);
\inst14|ALT_INV_dados_velho\(1) <= NOT \inst14|dados_velho\(1);
\inst14|ALT_INV_dados_velho\(0) <= NOT \inst14|dados_velho\(0);
\inst14|ALT_INV_dados_velho\(4) <= NOT \inst14|dados_velho\(4);
\inst5|ALT_INV_Mux2~0_combout\ <= NOT \inst5|Mux2~0_combout\;
\inst14|ALT_INV_tx~q\ <= NOT \inst14|tx~q\;
\inst|ALT_INV_count\(7) <= NOT \inst|count\(7);
\inst|ALT_INV_count\(8) <= NOT \inst|count\(8);
\inst|ALT_INV_count\(10) <= NOT \inst|count\(10);
\inst|ALT_INV_count\(12) <= NOT \inst|count\(12);
\inst|ALT_INV_count\(0) <= NOT \inst|count\(0);
\inst|ALT_INV_count\(1) <= NOT \inst|count\(1);
\inst|ALT_INV_count\(2) <= NOT \inst|count\(2);
\inst|ALT_INV_count\(3) <= NOT \inst|count\(3);
\inst|ALT_INV_count\(4) <= NOT \inst|count\(4);
\inst|ALT_INV_count\(5) <= NOT \inst|count\(5);
\inst|ALT_INV_count\(6) <= NOT \inst|count\(6);
\inst|ALT_INV_count\(9) <= NOT \inst|count\(9);
\inst|ALT_INV_count\(11) <= NOT \inst|count\(11);

-- Location: IOOBUF_X88_Y0_N3
\GPIO_1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14|ALT_INV_tx~q\,
	devoe => ww_devoe,
	o => ww_GPIO_1(1));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~1_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|Mux1~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: FF_X36_Y2_N2
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LABCELL_X36_Y2_N0
\inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~33_sumout\ = SUM(( \inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add0~34\ = CARRY(( \inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \inst|Add0~33_sumout\,
	cout => \inst|Add0~34\);

-- Location: FF_X36_Y2_N1
\inst|count[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~33_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[0]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N5
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LABCELL_X36_Y2_N3
\inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~29_sumout\ = SUM(( \inst|count\(1) ) + ( GND ) + ( \inst|Add0~34\ ))
-- \inst|Add0~30\ = CARRY(( \inst|count\(1) ) + ( GND ) + ( \inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(1),
	cin => \inst|Add0~34\,
	sumout => \inst|Add0~29_sumout\,
	cout => \inst|Add0~30\);

-- Location: FF_X36_Y2_N4
\inst|count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~29_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[1]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N23
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~49_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LABCELL_X36_Y2_N6
\inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~25_sumout\ = SUM(( \inst|count\(2) ) + ( GND ) + ( \inst|Add0~30\ ))
-- \inst|Add0~26\ = CARRY(( \inst|count\(2) ) + ( GND ) + ( \inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(2),
	cin => \inst|Add0~30\,
	sumout => \inst|Add0~25_sumout\,
	cout => \inst|Add0~26\);

-- Location: FF_X36_Y2_N7
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LABCELL_X36_Y2_N9
\inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~21_sumout\ = SUM(( \inst|count\(3) ) + ( GND ) + ( \inst|Add0~26\ ))
-- \inst|Add0~22\ = CARRY(( \inst|count\(3) ) + ( GND ) + ( \inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count\(3),
	cin => \inst|Add0~26\,
	sumout => \inst|Add0~21_sumout\,
	cout => \inst|Add0~22\);

-- Location: FF_X36_Y2_N11
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~21_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LABCELL_X36_Y2_N12
\inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~17_sumout\ = SUM(( \inst|count[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~22\ ))
-- \inst|Add0~18\ = CARRY(( \inst|count[4]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_count[4]~DUPLICATE_q\,
	cin => \inst|Add0~22\,
	sumout => \inst|Add0~17_sumout\,
	cout => \inst|Add0~18\);

-- Location: FF_X36_Y2_N14
\inst|count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[4]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N15
\inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~13_sumout\ = SUM(( \inst|count[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~18\ ))
-- \inst|Add0~14\ = CARRY(( \inst|count[5]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count[5]~DUPLICATE_q\,
	cin => \inst|Add0~18\,
	sumout => \inst|Add0~13_sumout\,
	cout => \inst|Add0~14\);

-- Location: LABCELL_X36_Y2_N18
\inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~9_sumout\ = SUM(( \inst|count[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~14\ ))
-- \inst|Add0~10\ = CARRY(( \inst|count[6]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count[6]~DUPLICATE_q\,
	cin => \inst|Add0~14\,
	sumout => \inst|Add0~9_sumout\,
	cout => \inst|Add0~10\);

-- Location: FF_X36_Y2_N20
\inst|count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[6]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N21
\inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~49_sumout\ = SUM(( \inst|count\(7) ) + ( GND ) + ( \inst|Add0~10\ ))
-- \inst|Add0~50\ = CARRY(( \inst|count\(7) ) + ( GND ) + ( \inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(7),
	cin => \inst|Add0~10\,
	sumout => \inst|Add0~49_sumout\,
	cout => \inst|Add0~50\);

-- Location: FF_X36_Y2_N22
\inst|count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~49_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[7]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N32
\inst|count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[10]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N24
\inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~45_sumout\ = SUM(( \inst|count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~50\ ))
-- \inst|Add0~46\ = CARRY(( \inst|count[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count[8]~DUPLICATE_q\,
	cin => \inst|Add0~50\,
	sumout => \inst|Add0~45_sumout\,
	cout => \inst|Add0~46\);

-- Location: FF_X36_Y2_N26
\inst|count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~45_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[8]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N27
\inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~5_sumout\ = SUM(( \inst|count\(9) ) + ( GND ) + ( \inst|Add0~46\ ))
-- \inst|Add0~6\ = CARRY(( \inst|count\(9) ) + ( GND ) + ( \inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(9),
	cin => \inst|Add0~46\,
	sumout => \inst|Add0~5_sumout\,
	cout => \inst|Add0~6\);

-- Location: FF_X36_Y2_N29
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LABCELL_X36_Y2_N30
\inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~41_sumout\ = SUM(( \inst|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~6\ ))
-- \inst|Add0~42\ = CARRY(( \inst|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_count[10]~DUPLICATE_q\,
	cin => \inst|Add0~6\,
	sumout => \inst|Add0~41_sumout\,
	cout => \inst|Add0~42\);

-- Location: FF_X36_Y2_N31
\inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~41_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(10));

-- Location: FF_X36_Y2_N25
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~45_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: FF_X36_Y2_N35
\inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(11));

-- Location: LABCELL_X36_Y2_N33
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_sumout\ = SUM(( \inst|count\(11) ) + ( GND ) + ( \inst|Add0~42\ ))
-- \inst|Add0~2\ = CARRY(( \inst|count\(11) ) + ( GND ) + ( \inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(11),
	cin => \inst|Add0~42\,
	sumout => \inst|Add0~1_sumout\,
	cout => \inst|Add0~2\);

-- Location: FF_X36_Y2_N34
\inst|count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[11]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N28
\inst|count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~5_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[9]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N36
\inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~37_sumout\ = SUM(( \inst|count[12]~DUPLICATE_q\ ) + ( GND ) + ( \inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count[12]~DUPLICATE_q\,
	cin => \inst|Add0~2\,
	sumout => \inst|Add0~37_sumout\);

-- Location: FF_X36_Y2_N37
\inst|count[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[12]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y2_N9
\inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = ( \inst|count[12]~DUPLICATE_q\ & ( (\inst|count\(10) & (!\inst|count\(8) & (!\inst|count[11]~DUPLICATE_q\ & !\inst|count[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(10),
	datab => \inst|ALT_INV_count\(8),
	datac => \inst|ALT_INV_count[11]~DUPLICATE_q\,
	datad => \inst|ALT_INV_count[9]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_count[12]~DUPLICATE_q\,
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X36_Y2_N13
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~17_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: FF_X36_Y2_N8
\inst|count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~25_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[2]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y2_N57
\inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = ( !\inst|count[2]~DUPLICATE_q\ & ( (\inst|count\(4) & (\inst|count\(3) & (!\inst|count[5]~DUPLICATE_q\ & \inst|count[6]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(4),
	datab => \inst|ALT_INV_count\(3),
	datac => \inst|ALT_INV_count[5]~DUPLICATE_q\,
	datad => \inst|ALT_INV_count[6]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_count[2]~DUPLICATE_q\,
	combout => \inst|Equal0~1_combout\);

-- Location: LABCELL_X37_Y2_N54
\inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = ( \inst|Equal0~1_combout\ & ( (!\inst|count[0]~DUPLICATE_q\ & (!\inst|count[1]~DUPLICATE_q\ & (!\inst|count[7]~DUPLICATE_q\ & \inst|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_count[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_count[7]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Equal0~0_combout\,
	dataf => \inst|ALT_INV_Equal0~1_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: FF_X36_Y2_N17
\inst|count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count[5]~DUPLICATE_q\);

-- Location: FF_X36_Y2_N16
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~13_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: FF_X36_Y2_N19
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~9_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LABCELL_X36_Y2_N54
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst|count\(1) & ( (!\inst|count\(4) & ((!\inst|count\(3)) # (!\inst|count\(2)))) ) ) # ( !\inst|count\(1) & ( (!\inst|count\(4) & ((!\inst|count\(3)) # ((!\inst|count[0]~DUPLICATE_q\) # (!\inst|count\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101000101010101010100010101010100010001010101010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(4),
	datab => \inst|ALT_INV_count\(3),
	datac => \inst|ALT_INV_count[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_count\(2),
	dataf => \inst|ALT_INV_count\(1),
	combout => \inst|LessThan0~0_combout\);

-- Location: FF_X36_Y2_N38
\inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~37_sumout\,
	sclr => \inst|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(12));

-- Location: LABCELL_X36_Y2_N48
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst|count\(8) & ( !\inst|count\(12) & ( (!\inst|count\(11)) # ((!\inst|count[10]~DUPLICATE_q\ & !\inst|count\(9))) ) ) ) # ( !\inst|count\(8) & ( !\inst|count\(12) & ( (!\inst|count\(11)) # ((!\inst|count[10]~DUPLICATE_q\ 
-- & ((!\inst|count\(9)) # (!\inst|count[7]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101010111010101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(11),
	datab => \inst|ALT_INV_count[10]~DUPLICATE_q\,
	datac => \inst|ALT_INV_count\(9),
	datad => \inst|ALT_INV_count[7]~DUPLICATE_q\,
	datae => \inst|ALT_INV_count\(8),
	dataf => \inst|ALT_INV_count\(12),
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X36_Y2_N42
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( \inst|count[11]~DUPLICATE_q\ & ( \inst|count[9]~DUPLICATE_q\ & ( (!\inst|count\(6) & (\inst|LessThan0~1_combout\ & ((!\inst|count\(5)) # (\inst|LessThan0~0_combout\)))) ) ) ) # ( !\inst|count[11]~DUPLICATE_q\ & ( 
-- \inst|count[9]~DUPLICATE_q\ & ( \inst|LessThan0~1_combout\ ) ) ) # ( \inst|count[11]~DUPLICATE_q\ & ( !\inst|count[9]~DUPLICATE_q\ & ( \inst|LessThan0~1_combout\ ) ) ) # ( !\inst|count[11]~DUPLICATE_q\ & ( !\inst|count[9]~DUPLICATE_q\ & ( 
-- \inst|LessThan0~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_count\(5),
	datab => \inst|ALT_INV_count\(6),
	datac => \inst|ALT_INV_LessThan0~0_combout\,
	datad => \inst|ALT_INV_LessThan0~1_combout\,
	datae => \inst|ALT_INV_count[11]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_count[9]~DUPLICATE_q\,
	combout => \inst|LessThan0~2_combout\);

-- Location: FF_X36_Y2_N44
\inst|clk_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \inst|LessThan0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_out~q\);

-- Location: LABCELL_X37_Y2_N33
\inst14|count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|count~3_combout\ = ( \inst14|count\(0) & ( (!\inst14|count\(1) & !\inst14|count\(3)) ) ) # ( !\inst14|count\(0) & ( (\inst14|count\(1) & !\inst14|count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(1),
	datad => \inst14|ALT_INV_count\(3),
	dataf => \inst14|ALT_INV_count\(0),
	combout => \inst14|count~3_combout\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X37_Y2_N57
\inst14|dados_velho[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|dados_velho[0]~1_combout\ = !\SW[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \inst14|dados_velho[0]~1_combout\);

-- Location: LABCELL_X37_Y2_N21
\inst14|dados_velho[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|dados_velho[4]~0_combout\ = ( \inst14|count\(1) & ( !\inst14|Equal0~0_combout\ & ( (\inst14|count\(3) & (\SW[2]~input_o\ & ((!\inst14|count\(0)) # (!\inst14|count\(2))))) ) ) ) # ( !\inst14|count\(1) & ( !\inst14|Equal0~0_combout\ & ( 
-- (\inst14|count\(3) & (\SW[2]~input_o\ & ((\inst14|count\(2)) # (\inst14|count\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000100010001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(3),
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \inst14|ALT_INV_count\(0),
	datad => \inst14|ALT_INV_count\(2),
	datae => \inst14|ALT_INV_count\(1),
	dataf => \inst14|ALT_INV_Equal0~0_combout\,
	combout => \inst14|dados_velho[4]~0_combout\);

-- Location: FF_X37_Y2_N59
\inst14|dados_velho[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	d => \inst14|dados_velho[0]~1_combout\,
	ena => \inst14|dados_velho[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dados_velho\(0));

-- Location: LABCELL_X37_Y2_N30
\inst14|dados_velho[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|dados_velho[4]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \inst14|dados_velho[4]~feeder_combout\);

-- Location: FF_X37_Y2_N32
\inst14|dados_velho[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	d => \inst14|dados_velho[4]~feeder_combout\,
	ena => \inst14|dados_velho[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dados_velho\(4));

-- Location: LABCELL_X37_Y2_N3
\inst5|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~3_combout\ = ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ ) ) # ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \inst5|Mux1~3_combout\);

-- Location: FF_X37_Y2_N5
\inst14|dados_velho[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	d => \inst5|Mux1~3_combout\,
	ena => \inst14|dados_velho[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dados_velho\(1));

-- Location: LABCELL_X37_Y2_N24
\inst5|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~2_combout\ = ( \SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \inst5|Mux1~2_combout\);

-- Location: FF_X37_Y2_N26
\inst14|dados_velho[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	d => \inst5|Mux1~2_combout\,
	ena => \inst14|dados_velho[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|dados_velho\(2));

-- Location: LABCELL_X37_Y2_N15
\inst14|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|Equal0~0_combout\ = ( !\inst14|dados_velho\(1) & ( \inst14|dados_velho\(2) & ( (\SW[1]~input_o\ & (!\inst14|dados_velho\(0) & (\inst14|dados_velho\(4) & \SW[0]~input_o\))) ) ) ) # ( \inst14|dados_velho\(1) & ( !\inst14|dados_velho\(2) & ( 
-- (\inst14|dados_velho\(4) & ((!\SW[1]~input_o\ & (!\inst14|dados_velho\(0) & \SW[0]~input_o\)) # (\SW[1]~input_o\ & (\inst14|dados_velho\(0) & !\SW[0]~input_o\)))) ) ) ) # ( !\inst14|dados_velho\(1) & ( !\inst14|dados_velho\(2) & ( (!\SW[1]~input_o\ & 
-- (\inst14|dados_velho\(0) & (\inst14|dados_velho\(4) & !\SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000010000100000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \inst14|ALT_INV_dados_velho\(0),
	datac => \inst14|ALT_INV_dados_velho\(4),
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \inst14|ALT_INV_dados_velho\(1),
	dataf => \inst14|ALT_INV_dados_velho\(2),
	combout => \inst14|Equal0~0_combout\);

-- Location: LABCELL_X37_Y2_N45
\inst14|count[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|count[3]~1_combout\ = ( !\inst14|Equal0~0_combout\ & ( \SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \inst14|ALT_INV_Equal0~0_combout\,
	combout => \inst14|count[3]~1_combout\);

-- Location: FF_X37_Y2_N53
\inst14|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	asdata => \inst14|count~3_combout\,
	sload => VCC,
	ena => \inst14|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(1));

-- Location: LABCELL_X37_Y2_N27
\inst14|count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|count~2_combout\ = ( \inst14|count\(0) & ( (!\inst14|count\(3) & (!\inst14|count\(1) $ (!\inst14|count\(2)))) ) ) # ( !\inst14|count\(0) & ( (\inst14|count\(2) & !\inst14|count\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001011010000000000101101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(1),
	datac => \inst14|ALT_INV_count\(2),
	datad => \inst14|ALT_INV_count\(3),
	dataf => \inst14|ALT_INV_count\(0),
	combout => \inst14|count~2_combout\);

-- Location: FF_X37_Y2_N50
\inst14|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	asdata => \inst14|count~2_combout\,
	sload => VCC,
	ena => \inst14|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(2));

-- Location: LABCELL_X37_Y2_N42
\inst14|count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|count~4_combout\ = ( \inst14|count\(3) & ( (!\inst14|count\(2) & (!\inst14|count\(0) & !\inst14|count\(1))) ) ) # ( !\inst14|count\(3) & ( !\inst14|count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(2),
	datab => \inst14|ALT_INV_count\(0),
	datac => \inst14|ALT_INV_count\(1),
	dataf => \inst14|ALT_INV_count\(3),
	combout => \inst14|count~4_combout\);

-- Location: FF_X37_Y2_N20
\inst14|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	asdata => \inst14|count~4_combout\,
	sload => VCC,
	ena => \inst14|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(0));

-- Location: LABCELL_X37_Y2_N36
\inst14|count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|count~0_combout\ = ( \inst14|count\(2) & ( (!\inst14|count\(3) & (\inst14|count\(0) & \inst14|count\(1))) ) ) # ( !\inst14|count\(2) & ( (\inst14|count\(3) & (!\inst14|count\(0) & !\inst14|count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(3),
	datac => \inst14|ALT_INV_count\(0),
	datad => \inst14|ALT_INV_count\(1),
	dataf => \inst14|ALT_INV_count\(2),
	combout => \inst14|count~0_combout\);

-- Location: FF_X37_Y2_N38
\inst14|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	d => \inst14|count~0_combout\,
	ena => \inst14|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|count\(3));

-- Location: LABCELL_X37_Y2_N0
\inst14|tx~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|tx~0_combout\ = ( \inst14|count\(2) & ( !\inst14|count\(0) $ (!\inst14|count\(1)) ) ) # ( !\inst14|count\(2) & ( (!\inst14|count\(0) & (\inst14|count\(1) & (!\SW[0]~input_o\ $ (!\SW[1]~input_o\)))) # (\inst14|count\(0) & ((!\SW[0]~input_o\ & 
-- (!\inst14|count\(1))) # (\SW[0]~input_o\ & (\inst14|count\(1) & \SW[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001001001010000100100100101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(0),
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \inst14|ALT_INV_count\(1),
	datad => \ALT_INV_SW[1]~input_o\,
	dataf => \inst14|ALT_INV_count\(2),
	combout => \inst14|tx~0_combout\);

-- Location: LABCELL_X37_Y2_N39
\inst14|tx~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst14|tx~1_combout\ = ( \inst14|Equal0~0_combout\ & ( (!\SW[2]~input_o\ & \inst14|tx~q\) ) ) # ( !\inst14|Equal0~0_combout\ & ( (!\SW[2]~input_o\ & (((\inst14|tx~q\)))) # (\SW[2]~input_o\ & (((!\inst14|tx~0_combout\)) # (\inst14|count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100011101001111110001110100001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|ALT_INV_count\(3),
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \inst14|ALT_INV_tx~q\,
	datad => \inst14|ALT_INV_tx~0_combout\,
	dataf => \inst14|ALT_INV_Equal0~0_combout\,
	combout => \inst14|tx~1_combout\);

-- Location: FF_X37_Y2_N14
\inst14|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_out~q\,
	asdata => \inst14|tx~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14|tx~q\);

-- Location: LABCELL_X37_Y2_N48
\inst5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \inst5|Mux2~0_combout\);

-- Location: LABCELL_X37_Y2_N6
\inst5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = ( !\SW[1]~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \inst5|Mux1~0_combout\);

-- Location: LABCELL_X37_Y1_N24
\inst5|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5|Mux1~1_combout\ = ( \SW[1]~input_o\ & ( !\SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \inst5|Mux1~1_combout\);

-- Location: MLABCELL_X39_Y21_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


