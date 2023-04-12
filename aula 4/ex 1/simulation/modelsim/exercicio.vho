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

-- DATE "08/25/2022 15:11:46"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	exercicio IS
    PORT (
	OUT3 : OUT std_logic;
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	OUT2 : OUT std_logic;
	IN3 : IN std_logic;
	OUT1 : OUT std_logic
	);
END exercicio;

-- Design Ports Information
-- OUT3	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT2	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUT1	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_OUT3 : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_OUT2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_OUT1 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \inst5~combout\ : std_logic;
SIGNAL \inst2~combout\ : std_logic;
SIGNAL \ALT_INV_IN3~input_o\ : std_logic;
SIGNAL \ALT_INV_IN2~input_o\ : std_logic;
SIGNAL \ALT_INV_IN1~input_o\ : std_logic;

BEGIN

OUT3 <= ww_OUT3;
ww_IN1 <= IN1;
ww_IN2 <= IN2;
OUT2 <= ww_OUT2;
ww_IN3 <= IN3;
OUT1 <= ww_OUT1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_IN3~input_o\ <= NOT \IN3~input_o\;
\ALT_INV_IN2~input_o\ <= NOT \IN2~input_o\;
\ALT_INV_IN1~input_o\ <= NOT \IN1~input_o\;

-- Location: IOOBUF_X89_Y35_N96
\OUT3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => ww_OUT3);

-- Location: IOOBUF_X89_Y37_N5
\OUT2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~combout\,
	devoe => ww_devoe,
	o => ww_OUT2);

-- Location: IOOBUF_X89_Y37_N39
\OUT1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~combout\,
	devoe => ww_devoe,
	o => ww_OUT1);

-- Location: IOIBUF_X89_Y37_N55
\IN1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: IOIBUF_X89_Y38_N38
\IN2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: LABCELL_X88_Y37_N30
inst : cyclonev_lcell_comb
-- Equation(s):
-- \inst~combout\ = ( !\IN1~input_o\ & ( \IN2~input_o\ ) ) # ( \IN1~input_o\ & ( !\IN2~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_IN1~input_o\,
	dataf => \ALT_INV_IN2~input_o\,
	combout => \inst~combout\);

-- Location: IOIBUF_X89_Y37_N21
\IN3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN3,
	o => \IN3~input_o\);

-- Location: LABCELL_X88_Y37_N9
inst5 : cyclonev_lcell_comb
-- Equation(s):
-- \inst5~combout\ = ( !\IN1~input_o\ & ( \IN2~input_o\ & ( !\IN3~input_o\ ) ) ) # ( \IN1~input_o\ & ( !\IN2~input_o\ & ( !\IN3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_IN3~input_o\,
	datae => \ALT_INV_IN1~input_o\,
	dataf => \ALT_INV_IN2~input_o\,
	combout => \inst5~combout\);

-- Location: LABCELL_X88_Y37_N12
inst2 : cyclonev_lcell_comb
-- Equation(s):
-- \inst2~combout\ = ( \IN1~input_o\ & ( \IN2~input_o\ ) ) # ( !\IN1~input_o\ & ( \IN2~input_o\ & ( \IN3~input_o\ ) ) ) # ( \IN1~input_o\ & ( !\IN2~input_o\ & ( \IN3~input_o\ ) ) ) # ( !\IN1~input_o\ & ( !\IN2~input_o\ & ( \IN3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_IN3~input_o\,
	datae => \ALT_INV_IN1~input_o\,
	dataf => \ALT_INV_IN2~input_o\,
	combout => \inst2~combout\);

-- Location: LABCELL_X88_Y59_N0
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


