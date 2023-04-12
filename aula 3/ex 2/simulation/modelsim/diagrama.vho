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

-- DATE "08/24/2022 16:26:47"

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

ENTITY 	diagrama IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0)
	);
END diagrama;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF diagrama IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst7~0_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst4~q\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~q\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~DUPLICATE_q\ : std_logic;
SIGNAL \inst5~DUPLICATE_q\ : std_logic;
SIGNAL \inst6~DUPLICATE_q\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \inst10|87~combout\ : std_logic;
SIGNAL \inst10|86~0_combout\ : std_logic;
SIGNAL \inst10|85~combout\ : std_logic;
SIGNAL \inst10|84~0_combout\ : std_logic;
SIGNAL \inst10|83~combout\ : std_logic;
SIGNAL \inst10|82~0_combout\ : std_logic;
SIGNAL \inst10|81~combout\ : std_logic;
SIGNAL \ALT_INV_inst4~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_inst5~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_inst6~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_inst4~q\ : std_logic;
SIGNAL \ALT_INV_inst5~q\ : std_logic;
SIGNAL \ALT_INV_inst6~q\ : std_logic;
SIGNAL \ALT_INV_inst7~q\ : std_logic;

BEGIN

HEX0 <= ww_HEX0;
ww_KEY <= KEY;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst4~DUPLICATE_q\ <= NOT \inst4~DUPLICATE_q\;
\ALT_INV_inst5~DUPLICATE_q\ <= NOT \inst5~DUPLICATE_q\;
\ALT_INV_inst6~DUPLICATE_q\ <= NOT \inst6~DUPLICATE_q\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_inst4~q\ <= NOT \inst4~q\;
\ALT_INV_inst5~q\ <= NOT \inst5~q\;
\ALT_INV_inst6~q\ <= NOT \inst6~q\;
\ALT_INV_inst7~q\ <= NOT \inst7~q\;

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|87~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|86~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|85~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|84~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|83~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y11_N79
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|82~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|81~combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G6
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: LABCELL_X88_Y11_N30
\inst7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst7~0_combout\ = !\inst7~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_inst7~q\,
	combout => \inst7~0_combout\);

-- Location: FF_X88_Y11_N32
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: FF_X88_Y11_N28
inst4 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~q\);

-- Location: LABCELL_X88_Y11_N21
\inst6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = ( \inst4~q\ & ( (!\inst7~q\ & \inst6~q\) ) ) # ( !\inst4~q\ & ( !\inst7~q\ $ (!\inst6~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst7~q\,
	datad => \ALT_INV_inst6~q\,
	dataf => \ALT_INV_inst4~q\,
	combout => \inst6~0_combout\);

-- Location: FF_X88_Y11_N22
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LABCELL_X88_Y11_N57
\inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = ( \inst5~q\ & ( \inst6~q\ & ( !\inst7~q\ ) ) ) # ( !\inst5~q\ & ( \inst6~q\ & ( \inst7~q\ ) ) ) # ( \inst5~q\ & ( !\inst6~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst5~q\,
	dataf => \ALT_INV_inst6~q\,
	combout => \inst5~0_combout\);

-- Location: FF_X88_Y11_N59
inst5 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~q\);

-- Location: LABCELL_X88_Y11_N27
\inst4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = ( \inst4~q\ & ( \inst6~q\ & ( !\inst7~q\ ) ) ) # ( !\inst4~q\ & ( \inst6~q\ & ( (\inst5~q\ & \inst7~q\) ) ) ) # ( \inst4~q\ & ( !\inst6~q\ & ( !\inst7~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000011000000111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_inst5~q\,
	datac => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst4~q\,
	dataf => \ALT_INV_inst6~q\,
	combout => \inst4~0_combout\);

-- Location: FF_X88_Y11_N29
\inst4~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~DUPLICATE_q\);

-- Location: FF_X88_Y11_N58
\inst5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~DUPLICATE_q\);

-- Location: FF_X88_Y11_N23
\inst6~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \inst6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~DUPLICATE_q\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X88_Y11_N0
\inst10|87\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|87~combout\ = ( \inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (\inst4~DUPLICATE_q\ & \inst5~DUPLICATE_q\) ) ) ) # ( !\inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst5~DUPLICATE_q\ & !\inst7~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~DUPLICATE_q\,
	datab => \ALT_INV_inst5~DUPLICATE_q\,
	datac => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst6~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|87~combout\);

-- Location: LABCELL_X88_Y11_N18
\inst10|86~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|86~0_combout\ = ( \KEY[1]~input_o\ & ( (!\inst4~DUPLICATE_q\ & (((!\inst6~DUPLICATE_q\ & \inst5~DUPLICATE_q\)))) # (\inst4~DUPLICATE_q\ & (((!\inst7~q\ & !\inst6~DUPLICATE_q\)) # (\inst5~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000111101010100000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~DUPLICATE_q\,
	datab => \ALT_INV_inst7~q\,
	datac => \ALT_INV_inst6~DUPLICATE_q\,
	datad => \ALT_INV_inst5~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|86~0_combout\);

-- Location: LABCELL_X88_Y11_N33
\inst10|85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|85~combout\ = ( \KEY[1]~input_o\ & ( ((\inst6~DUPLICATE_q\ & !\inst5~DUPLICATE_q\)) # (\inst4~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst6~DUPLICATE_q\,
	datac => \ALT_INV_inst5~DUPLICATE_q\,
	datad => \ALT_INV_inst4~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|85~combout\);

-- Location: LABCELL_X88_Y11_N6
\inst10|84~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|84~0_combout\ = ( \inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( !\inst5~DUPLICATE_q\ $ (\inst4~DUPLICATE_q\) ) ) ) # ( !\inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst5~DUPLICATE_q\ & \inst4~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst5~DUPLICATE_q\,
	datac => \ALT_INV_inst4~DUPLICATE_q\,
	datae => \ALT_INV_inst6~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|84~0_combout\);

-- Location: LABCELL_X88_Y11_N42
\inst10|83\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|83~combout\ = ( \inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( \inst7~q\ ) ) ) # ( !\inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst4~DUPLICATE_q\ & \inst5~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~DUPLICATE_q\,
	datab => \ALT_INV_inst5~DUPLICATE_q\,
	datac => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst6~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|83~combout\);

-- Location: LABCELL_X88_Y11_N51
\inst10|82~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|82~0_combout\ = ( \inst4~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst5~DUPLICATE_q\ & (\inst6~DUPLICATE_q\)) # (\inst5~DUPLICATE_q\ & ((\inst7~q\))) ) ) ) # ( !\inst4~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (\inst5~DUPLICATE_q\ & ((\inst7~q\) # 
-- (\inst6~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000011110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst6~DUPLICATE_q\,
	datac => \ALT_INV_inst5~DUPLICATE_q\,
	datad => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst4~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|82~0_combout\);

-- Location: LABCELL_X88_Y11_N36
\inst10|81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst10|81~combout\ = ( \inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst4~DUPLICATE_q\) # ((\inst5~DUPLICATE_q\ & \inst7~q\)) ) ) ) # ( !\inst6~DUPLICATE_q\ & ( \KEY[1]~input_o\ & ( (!\inst5~DUPLICATE_q\ & (\inst4~DUPLICATE_q\ & !\inst7~q\)) # 
-- (\inst5~DUPLICATE_q\ & ((\inst7~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000011010000111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_inst4~DUPLICATE_q\,
	datab => \ALT_INV_inst5~DUPLICATE_q\,
	datac => \ALT_INV_inst7~q\,
	datae => \ALT_INV_inst6~DUPLICATE_q\,
	dataf => \ALT_INV_KEY[1]~input_o\,
	combout => \inst10|81~combout\);

-- Location: LABCELL_X42_Y41_N0
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


