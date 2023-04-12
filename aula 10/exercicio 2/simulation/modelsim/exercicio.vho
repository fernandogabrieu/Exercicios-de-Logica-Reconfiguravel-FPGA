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

-- DATE "09/22/2022 15:50:00"

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

ENTITY 	exercicio IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : OUT std_logic_vector(0 TO 6)
	);
END exercicio;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF exercicio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(0 TO 6);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \sum[0]~3_combout\ : std_logic;
SIGNAL \sum[0]~DUPLICATE_q\ : std_logic;
SIGNAL \sum[1]~0_combout\ : std_logic;
SIGNAL \sum[1]~DUPLICATE_q\ : std_logic;
SIGNAL \sum[2]~1_combout\ : std_logic;
SIGNAL \sum[3]~2_combout\ : std_logic;
SIGNAL \sum[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \HEX0[5]~reg0_q\ : std_logic;
SIGNAL \sum[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \HEX0[4]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \HEX0[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \HEX0[2]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL sum : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_sum[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_sum[0]~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_sum : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_KEY <= KEY;
HEX0 <= ww_HEX0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_sum[3]~DUPLICATE_q\ <= NOT \sum[3]~DUPLICATE_q\;
\ALT_INV_sum[2]~DUPLICATE_q\ <= NOT \sum[2]~DUPLICATE_q\;
\ALT_INV_sum[1]~DUPLICATE_q\ <= NOT \sum[1]~DUPLICATE_q\;
\ALT_INV_sum[0]~DUPLICATE_q\ <= NOT \sum[0]~DUPLICATE_q\;
ALT_INV_sum(3) <= NOT sum(3);
ALT_INV_sum(2) <= NOT sum(2);
ALT_INV_sum(1) <= NOT sum(1);
ALT_INV_sum(0) <= NOT sum(0);

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[6]~reg0_q\,
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
	i => \HEX0[5]~reg0_q\,
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
	i => \HEX0[4]~reg0_q\,
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
	i => \HEX0[3]~reg0_q\,
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
	i => \HEX0[2]~reg0_q\,
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
	i => \HEX0[1]~reg0_q\,
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
	i => \HEX0[0]~reg0_q\,
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

-- Location: FF_X88_Y11_N56
\sum[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(0));

-- Location: LABCELL_X88_Y11_N54
\sum[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[0]~3_combout\ = !sum(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(0),
	combout => \sum[0]~3_combout\);

-- Location: FF_X88_Y11_N55
\sum[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[0]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N21
\sum[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[1]~0_combout\ = ( \sum[0]~DUPLICATE_q\ & ( !sum(1) ) ) # ( !\sum[0]~DUPLICATE_q\ & ( sum(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_sum(1),
	dataf => \ALT_INV_sum[0]~DUPLICATE_q\,
	combout => \sum[1]~0_combout\);

-- Location: FF_X88_Y11_N23
\sum[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(1));

-- Location: FF_X88_Y11_N22
\sum[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[1]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N51
\sum[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[2]~1_combout\ = ( \sum[1]~DUPLICATE_q\ & ( !sum(0) $ (!sum(2)) ) ) # ( !\sum[1]~DUPLICATE_q\ & ( sum(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(0),
	datad => ALT_INV_sum(2),
	dataf => \ALT_INV_sum[1]~DUPLICATE_q\,
	combout => \sum[2]~1_combout\);

-- Location: FF_X88_Y11_N52
\sum[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(2));

-- Location: LABCELL_X88_Y11_N27
\sum[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \sum[3]~2_combout\ = ( \sum[0]~DUPLICATE_q\ & ( !sum(3) $ (((!sum(1)) # (!sum(2)))) ) ) # ( !\sum[0]~DUPLICATE_q\ & ( sum(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(1),
	datac => ALT_INV_sum(2),
	datad => ALT_INV_sum(3),
	dataf => \ALT_INV_sum[0]~DUPLICATE_q\,
	combout => \sum[3]~2_combout\);

-- Location: FF_X88_Y11_N29
\sum[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sum(3));

-- Location: FF_X88_Y11_N53
\sum[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[2]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N18
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = ( \sum[2]~DUPLICATE_q\ & ( (!sum(3) & (sum(0) & sum(1))) ) ) # ( !\sum[2]~DUPLICATE_q\ & ( (!sum(3) & !sum(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(3),
	datac => ALT_INV_sum(0),
	datad => ALT_INV_sum(1),
	dataf => \ALT_INV_sum[2]~DUPLICATE_q\,
	combout => \Mux6~0_combout\);

-- Location: FF_X88_Y11_N19
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LABCELL_X88_Y11_N57
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = ( \sum[1]~DUPLICATE_q\ & ( (!sum(3) & ((!sum(2)) # (sum(0)))) ) ) # ( !\sum[1]~DUPLICATE_q\ & ( (!sum(3) & (!sum(2) & sum(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(3),
	datac => ALT_INV_sum(2),
	datad => ALT_INV_sum(0),
	dataf => \ALT_INV_sum[1]~DUPLICATE_q\,
	combout => \Mux5~0_combout\);

-- Location: FF_X88_Y11_N59
\HEX0[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[5]~reg0_q\);

-- Location: FF_X88_Y11_N28
\sum[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \sum[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sum[3]~DUPLICATE_q\);

-- Location: LABCELL_X88_Y11_N45
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = ( \sum[1]~DUPLICATE_q\ & ( (!\sum[3]~DUPLICATE_q\ & sum(0)) ) ) # ( !\sum[1]~DUPLICATE_q\ & ( (!\sum[2]~DUPLICATE_q\ & ((sum(0)))) # (\sum[2]~DUPLICATE_q\ & (!\sum[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111010010100001111101000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum[2]~DUPLICATE_q\,
	datac => \ALT_INV_sum[3]~DUPLICATE_q\,
	datad => ALT_INV_sum(0),
	dataf => \ALT_INV_sum[1]~DUPLICATE_q\,
	combout => \Mux4~0_combout\);

-- Location: FF_X88_Y11_N46
\HEX0[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[4]~reg0_q\);

-- Location: LABCELL_X88_Y11_N48
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( !\sum[3]~DUPLICATE_q\ & ( (!sum(0) & (!sum(1) & sum(2))) # (sum(0) & (!sum(1) $ (sum(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100101010100001010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_sum(0),
	datac => ALT_INV_sum(1),
	datad => ALT_INV_sum(2),
	dataf => \ALT_INV_sum[3]~DUPLICATE_q\,
	combout => \Mux3~0_combout\);

-- Location: FF_X88_Y11_N49
\HEX0[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[3]~reg0_q\);

-- Location: LABCELL_X88_Y11_N42
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \sum[0]~DUPLICATE_q\ & ( (\sum[3]~DUPLICATE_q\ & ((sum(1)) # (\sum[2]~DUPLICATE_q\))) ) ) # ( !\sum[0]~DUPLICATE_q\ & ( (!\sum[2]~DUPLICATE_q\ & ((sum(1)))) # (\sum[2]~DUPLICATE_q\ & (\sum[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000011001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum[3]~DUPLICATE_q\,
	datac => \ALT_INV_sum[2]~DUPLICATE_q\,
	datad => ALT_INV_sum(1),
	dataf => \ALT_INV_sum[0]~DUPLICATE_q\,
	combout => \Mux2~0_combout\);

-- Location: FF_X88_Y11_N43
\HEX0[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[2]~reg0_q\);

-- Location: LABCELL_X88_Y11_N24
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \sum[1]~DUPLICATE_q\ & ( ((\sum[2]~DUPLICATE_q\ & !sum(0))) # (\sum[3]~DUPLICATE_q\) ) ) # ( !\sum[1]~DUPLICATE_q\ & ( (\sum[2]~DUPLICATE_q\ & ((sum(0)) # (\sum[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100111111001100110011111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_sum[3]~DUPLICATE_q\,
	datac => \ALT_INV_sum[2]~DUPLICATE_q\,
	datad => ALT_INV_sum(0),
	dataf => \ALT_INV_sum[1]~DUPLICATE_q\,
	combout => \Mux1~0_combout\);

-- Location: FF_X88_Y11_N25
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LABCELL_X88_Y11_N36
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( !sum(3) & ( !\sum[1]~DUPLICATE_q\ & ( !\sum[2]~DUPLICATE_q\ $ (!sum(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_sum[2]~DUPLICATE_q\,
	datac => ALT_INV_sum(0),
	datae => ALT_INV_sum(3),
	dataf => \ALT_INV_sum[1]~DUPLICATE_q\,
	combout => \Mux0~0_combout\);

-- Location: FF_X88_Y11_N37
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: LABCELL_X16_Y31_N0
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


