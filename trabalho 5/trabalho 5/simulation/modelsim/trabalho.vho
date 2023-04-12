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

-- DATE "12/08/2022 16:07:36"

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

ENTITY 	trabalho IS
    PORT (
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(1 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	LEDR : OUT std_logic_vector(0 TO 9)
	);
END trabalho;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF trabalho IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(0 TO 9);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \ESTADO.S000~feeder_combout\ : std_logic;
SIGNAL \ESTADO.S000~q\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \HEX0[0]~reg0_q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \ESTADO.S125~q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \ESTADO.S050~q\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \ESTADO.S075~q\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \ESTADO.S100~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \ESTADO.S150~q\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \ESTADO.S025~q\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \HEX0[1]~reg0_q\ : std_logic;
SIGNAL \Selector10~1_combout\ : std_logic;
SIGNAL \HEX0[6]~reg0_q\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \HEX1[1]~reg0_q\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector21~1_combout\ : std_logic;
SIGNAL \HEX1[2]~reg0_q\ : std_logic;
SIGNAL \Selector20~1_combout\ : std_logic;
SIGNAL \Selector20~2_combout\ : std_logic;
SIGNAL \HEX1[3]~reg0_q\ : std_logic;
SIGNAL \Selector19~1_combout\ : std_logic;
SIGNAL \HEX1[4]~reg0_q\ : std_logic;
SIGNAL \Selector17~1_combout\ : std_logic;
SIGNAL \Selector17~2_combout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \Selector17~3_combout\ : std_logic;
SIGNAL \HEX1[6]~reg0_q\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \HEX2[0]~reg0_q\ : std_logic;
SIGNAL \Selector27~0_combout\ : std_logic;
SIGNAL \Selector27~1_combout\ : std_logic;
SIGNAL \HEX2[3]~reg0_q\ : std_logic;
SIGNAL \HEX2[6]~0_combout\ : std_logic;
SIGNAL \HEX2[6]~reg0_q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \LEDR[9]~reg0_q\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \LEDR[6]~reg0_q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \LEDR[1]~reg0_q\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \LEDR[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~2_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector17~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \ALT_INV_Selector22~1_combout\ : std_logic;
SIGNAL \ALT_INV_Selector15~0_combout\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S125~q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S100~q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S050~q\ : std_logic;
SIGNAL \ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S075~q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S025~q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S000~q\ : std_logic;
SIGNAL \ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \ALT_INV_LEDR[0]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_LEDR[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_LEDR[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_LEDR[9]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX2[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX1[2]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_HEX0[1]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ESTADO.S150~q\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_Selector0~1_combout\ <= NOT \Selector0~1_combout\;
\ALT_INV_Selector0~0_combout\ <= NOT \Selector0~0_combout\;
\ALT_INV_Selector1~0_combout\ <= NOT \Selector1~0_combout\;
\ALT_INV_Selector6~1_combout\ <= NOT \Selector6~1_combout\;
\ALT_INV_Selector6~0_combout\ <= NOT \Selector6~0_combout\;
\ALT_INV_Selector27~0_combout\ <= NOT \Selector27~0_combout\;
\ALT_INV_Selector17~2_combout\ <= NOT \Selector17~2_combout\;
\ALT_INV_Selector17~1_combout\ <= NOT \Selector17~1_combout\;
\ALT_INV_Selector17~0_combout\ <= NOT \Selector17~0_combout\;
\ALT_INV_Selector20~1_combout\ <= NOT \Selector20~1_combout\;
\ALT_INV_Selector21~0_combout\ <= NOT \Selector21~0_combout\;
\ALT_INV_Selector22~1_combout\ <= NOT \Selector22~1_combout\;
\ALT_INV_Selector15~0_combout\ <= NOT \Selector15~0_combout\;
\ALT_INV_ESTADO.S125~q\ <= NOT \ESTADO.S125~q\;
\ALT_INV_ESTADO.S100~q\ <= NOT \ESTADO.S100~q\;
\ALT_INV_ESTADO.S050~q\ <= NOT \ESTADO.S050~q\;
\ALT_INV_Selector19~0_combout\ <= NOT \Selector19~0_combout\;
\ALT_INV_ESTADO.S075~q\ <= NOT \ESTADO.S075~q\;
\ALT_INV_ESTADO.S025~q\ <= NOT \ESTADO.S025~q\;
\ALT_INV_ESTADO.S000~q\ <= NOT \ESTADO.S000~q\;
\ALT_INV_Selector20~0_combout\ <= NOT \Selector20~0_combout\;
\ALT_INV_LEDR[0]~reg0_q\ <= NOT \LEDR[0]~reg0_q\;
\ALT_INV_LEDR[1]~reg0_q\ <= NOT \LEDR[1]~reg0_q\;
\ALT_INV_LEDR[6]~reg0_q\ <= NOT \LEDR[6]~reg0_q\;
\ALT_INV_LEDR[9]~reg0_q\ <= NOT \LEDR[9]~reg0_q\;
\ALT_INV_HEX2[6]~reg0_q\ <= NOT \HEX2[6]~reg0_q\;
\ALT_INV_HEX2[3]~reg0_q\ <= NOT \HEX2[3]~reg0_q\;
\ALT_INV_HEX1[6]~reg0_q\ <= NOT \HEX1[6]~reg0_q\;
\ALT_INV_HEX1[3]~reg0_q\ <= NOT \HEX1[3]~reg0_q\;
\ALT_INV_HEX1[2]~reg0_q\ <= NOT \HEX1[2]~reg0_q\;
\ALT_INV_HEX0[6]~reg0_q\ <= NOT \HEX0[6]~reg0_q\;
\ALT_INV_HEX0[1]~reg0_q\ <= NOT \HEX0[1]~reg0_q\;
\ALT_INV_ESTADO.S150~q\ <= NOT \ESTADO.S150~q\;

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

-- Location: IOOBUF_X89_Y11_N96
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y4_N79
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y13_N56
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y13_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y4_N96
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX0[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X89_Y6_N56
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X89_Y16_N39
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X89_Y16_N56
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X89_Y15_N39
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX1[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X89_Y15_N56
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX0[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X89_Y8_N56
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX1[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y9_N22
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y23_N39
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X89_Y23_N56
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X89_Y20_N79
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X89_Y25_N39
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X89_Y20_N96
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \HEX2[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X89_Y25_N56
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_HEX2[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[9]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \LEDR[1]~reg0_q\,
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
	i => \LEDR[1]~reg0_q\,
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
	i => \LEDR[1]~reg0_q\,
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
	i => \LEDR[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

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

-- Location: LABCELL_X83_Y4_N33
\Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = ( !\SW[0]~input_o\ & ( !\SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \Selector20~0_combout\);

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

-- Location: LABCELL_X83_Y4_N18
\ESTADO.S000~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \ESTADO.S000~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \ESTADO.S000~feeder_combout\);

-- Location: FF_X83_Y4_N20
\ESTADO.S000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \ESTADO.S000~feeder_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S000~q\);

-- Location: LABCELL_X83_Y4_N51
\Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = ( \ESTADO.S000~q\ & ( (\SW[1]~input_o\) # (\SW[0]~input_o\) ) ) # ( !\ESTADO.S000~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	dataf => \ALT_INV_ESTADO.S000~q\,
	combout => \Selector10~0_combout\);

-- Location: FF_X83_Y4_N53
\HEX0[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \Selector20~0_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[0]~reg0_q\);

-- Location: LABCELL_X85_Y4_N36
\Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = ( \ESTADO.S100~q\ & ( (\ESTADO.S075~q\) # (\SW[0]~input_o\) ) ) # ( !\ESTADO.S100~q\ & ( (!\SW[0]~input_o\ & \ESTADO.S075~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_ESTADO.S075~q\,
	dataf => \ALT_INV_ESTADO.S100~q\,
	combout => \Selector35~0_combout\);

-- Location: FF_X85_Y4_N38
\ESTADO.S125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector35~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S125~q\);

-- Location: MLABCELL_X84_Y4_N6
\Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = ( \ESTADO.S000~q\ & ( \ESTADO.S025~q\ & ( ((\ESTADO.S150~q\) # (\ESTADO.S125~q\)) # (\SW[0]~input_o\) ) ) ) # ( !\ESTADO.S000~q\ & ( \ESTADO.S025~q\ ) ) # ( \ESTADO.S000~q\ & ( !\ESTADO.S025~q\ & ( (!\SW[0]~input_o\ & 
-- ((\ESTADO.S150~q\) # (\ESTADO.S125~q\))) ) ) ) # ( !\ESTADO.S000~q\ & ( !\ESTADO.S025~q\ & ( !\SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001010100010101011111111111111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_ESTADO.S125~q\,
	datac => \ALT_INV_ESTADO.S150~q\,
	datae => \ALT_INV_ESTADO.S000~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X84_Y4_N8
\ESTADO.S050\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector32~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S050~q\);

-- Location: MLABCELL_X84_Y4_N12
\Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = ( \ESTADO.S025~q\ & ( (!\SW[0]~input_o\) # (\ESTADO.S050~q\) ) ) # ( !\ESTADO.S025~q\ & ( (\SW[0]~input_o\ & \ESTADO.S050~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector33~0_combout\);

-- Location: FF_X84_Y4_N14
\ESTADO.S075\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector33~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S075~q\);

-- Location: MLABCELL_X84_Y4_N33
\Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = ( \ESTADO.S050~q\ & ( (!\SW[0]~input_o\) # (\ESTADO.S075~q\) ) ) # ( !\ESTADO.S050~q\ & ( (\SW[0]~input_o\ & \ESTADO.S075~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_ESTADO.S075~q\,
	dataf => \ALT_INV_ESTADO.S050~q\,
	combout => \Selector34~0_combout\);

-- Location: FF_X84_Y4_N35
\ESTADO.S100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector34~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S100~q\);

-- Location: LABCELL_X85_Y4_N0
\Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = ( \ESTADO.S150~q\ & ( \ESTADO.S100~q\ & ( \SW[1]~input_o\ ) ) ) # ( !\ESTADO.S150~q\ & ( \ESTADO.S100~q\ & ( \SW[1]~input_o\ ) ) ) # ( \ESTADO.S150~q\ & ( !\ESTADO.S100~q\ & ( !\SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_ESTADO.S150~q\,
	dataf => \ALT_INV_ESTADO.S100~q\,
	combout => \Selector36~0_combout\);

-- Location: FF_X84_Y4_N53
\ESTADO.S150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \Selector36~0_combout\,
	clrn => \KEY[1]~input_o\,
	sclr => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S150~q\);

-- Location: LABCELL_X85_Y4_N24
\Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = ( \ESTADO.S125~q\ & ( \SW[0]~input_o\ ) ) # ( !\ESTADO.S125~q\ & ( (\SW[0]~input_o\ & ((!\ESTADO.S000~q\) # (\ESTADO.S150~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001111000011000000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ESTADO.S000~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_ESTADO.S150~q\,
	dataf => \ALT_INV_ESTADO.S125~q\,
	combout => \Selector31~0_combout\);

-- Location: FF_X85_Y4_N26
\ESTADO.S025\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector31~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \ALT_INV_Selector20~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ESTADO.S025~q\);

-- Location: MLABCELL_X84_Y4_N3
\Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = ( !\ESTADO.S150~q\ & ( !\ESTADO.S075~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ESTADO.S075~q\,
	dataf => \ALT_INV_ESTADO.S150~q\,
	combout => \Selector19~0_combout\);

-- Location: MLABCELL_X84_Y4_N0
\Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = ( !\ESTADO.S125~q\ & ( (!\ESTADO.S050~q\ & !\ESTADO.S100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ESTADO.S050~q\,
	datac => \ALT_INV_ESTADO.S100~q\,
	dataf => \ALT_INV_ESTADO.S125~q\,
	combout => \Selector15~0_combout\);

-- Location: MLABCELL_X84_Y4_N21
\Selector15~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = ( \HEX0[1]~reg0_q\ & ( \Selector15~0_combout\ & ( !\SW[0]~input_o\ $ (((!\ESTADO.S025~q\ & \Selector19~0_combout\))) ) ) ) # ( !\HEX0[1]~reg0_q\ & ( \Selector15~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & 
-- ((!\Selector19~0_combout\) # (\ESTADO.S025~q\)))) # (\SW[0]~input_o\ & (((!\ESTADO.S025~q\ & \Selector19~0_combout\)))) ) ) ) # ( \HEX0[1]~reg0_q\ & ( !\Selector15~0_combout\ & ( (!\SW[0]~input_o\ & ((!\SW[1]~input_o\) # ((!\Selector19~0_combout\) # 
-- (\ESTADO.S025~q\)))) # (\SW[0]~input_o\ & (((!\ESTADO.S025~q\ & \Selector19~0_combout\)))) ) ) ) # ( !\HEX0[1]~reg0_q\ & ( !\Selector15~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\Selector19~0_combout\) # (\ESTADO.S025~q\)))) # 
-- (\SW[0]~input_o\ & (((!\ESTADO.S025~q\ & \Selector19~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001010010101010101101101000100010010100101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S025~q\,
	datad => \ALT_INV_Selector19~0_combout\,
	datae => \ALT_INV_HEX0[1]~reg0_q\,
	dataf => \ALT_INV_Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: FF_X84_Y4_N23
\HEX0[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector15~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[1]~reg0_q\);

-- Location: LABCELL_X85_Y4_N12
\Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector10~1_combout\ = ( \ESTADO.S075~q\ & ( \ESTADO.S150~q\ & ( !\SW[0]~input_o\ ) ) ) # ( !\ESTADO.S075~q\ & ( \ESTADO.S150~q\ & ( !\SW[0]~input_o\ ) ) ) # ( \ESTADO.S075~q\ & ( !\ESTADO.S150~q\ & ( !\SW[0]~input_o\ ) ) ) # ( !\ESTADO.S075~q\ & ( 
-- !\ESTADO.S150~q\ & ( (!\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\ESTADO.S025~q\))) # (\SW[0]~input_o\ & ((!\ESTADO.S025~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101011011010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S025~q\,
	datae => \ALT_INV_ESTADO.S075~q\,
	dataf => \ALT_INV_ESTADO.S150~q\,
	combout => \Selector10~1_combout\);

-- Location: FF_X84_Y4_N28
\HEX0[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	asdata => \Selector10~1_combout\,
	clrn => \KEY[1]~input_o\,
	sload => VCC,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX0[6]~reg0_q\);

-- Location: LABCELL_X83_Y4_N54
\Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = ( \SW[0]~input_o\ & ( \ESTADO.S000~q\ & ( \ESTADO.S025~q\ ) ) ) # ( !\SW[0]~input_o\ & ( \ESTADO.S000~q\ & ( (\SW[1]~input_o\ & ((\ESTADO.S125~q\) # (\ESTADO.S100~q\))) ) ) ) # ( \SW[0]~input_o\ & ( !\ESTADO.S000~q\ & ( 
-- \ESTADO.S025~q\ ) ) ) # ( !\SW[0]~input_o\ & ( !\ESTADO.S000~q\ & ( \SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111100010011000100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S100~q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S125~q\,
	datad => \ALT_INV_ESTADO.S025~q\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_ESTADO.S000~q\,
	combout => \Selector22~0_combout\);

-- Location: FF_X83_Y4_N55
\HEX1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector22~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[1]~reg0_q\);

-- Location: MLABCELL_X84_Y4_N54
\Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = ( !\ESTADO.S025~q\ & ( (!\ESTADO.S050~q\ & (!\ESTADO.S100~q\ & !\ESTADO.S125~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_ESTADO.S050~q\,
	datac => \ALT_INV_ESTADO.S100~q\,
	datad => \ALT_INV_ESTADO.S125~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector21~0_combout\);

-- Location: MLABCELL_X84_Y4_N57
\Selector22~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = ( !\ESTADO.S100~q\ & ( (!\ESTADO.S125~q\ & \ESTADO.S000~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ESTADO.S125~q\,
	datad => \ALT_INV_ESTADO.S000~q\,
	dataf => \ALT_INV_ESTADO.S100~q\,
	combout => \Selector22~1_combout\);

-- Location: MLABCELL_X84_Y4_N42
\Selector21~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector21~1_combout\ = ( \HEX1[2]~reg0_q\ & ( \Selector22~1_combout\ & ( (!\SW[0]~input_o\ & ((!\Selector19~0_combout\) # ((!\SW[1]~input_o\ & !\Selector21~0_combout\)))) ) ) ) # ( !\HEX1[2]~reg0_q\ & ( \Selector22~1_combout\ & ( 
-- (!\Selector19~0_combout\ & (\SW[1]~input_o\ & !\SW[0]~input_o\)) ) ) ) # ( \HEX1[2]~reg0_q\ & ( !\Selector22~1_combout\ & ( (!\Selector19~0_combout\) # (((!\SW[1]~input_o\ & !\Selector21~0_combout\)) # (\SW[0]~input_o\)) ) ) ) # ( !\HEX1[2]~reg0_q\ & ( 
-- !\Selector22~1_combout\ & ( ((!\Selector19~0_combout\ & \SW[1]~input_o\)) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111111111010101111111100100010000000001110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Selector19~0_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_Selector21~0_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_HEX1[2]~reg0_q\,
	dataf => \ALT_INV_Selector22~1_combout\,
	combout => \Selector21~1_combout\);

-- Location: FF_X84_Y4_N43
\HEX1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector21~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[2]~reg0_q\);

-- Location: LABCELL_X83_Y4_N6
\Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~1_combout\ = ( !\ESTADO.S125~q\ & ( !\ESTADO.S075~q\ & ( (!\ESTADO.S100~q\ & !\ESTADO.S150~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S100~q\,
	datac => \ALT_INV_ESTADO.S150~q\,
	datae => \ALT_INV_ESTADO.S125~q\,
	dataf => \ALT_INV_ESTADO.S075~q\,
	combout => \Selector20~1_combout\);

-- Location: LABCELL_X83_Y4_N39
\Selector20~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector20~2_combout\ = ( \HEX1[3]~reg0_q\ & ( \Selector20~1_combout\ & ( (!\SW[0]~input_o\ & (((\ESTADO.S050~q\ & !\SW[1]~input_o\)) # (\ESTADO.S025~q\))) # (\SW[0]~input_o\ & (\ESTADO.S050~q\)) ) ) ) # ( !\HEX1[3]~reg0_q\ & ( \Selector20~1_combout\ & ( 
-- (!\SW[0]~input_o\ & (((\ESTADO.S025~q\ & \SW[1]~input_o\)))) # (\SW[0]~input_o\ & (\ESTADO.S050~q\)) ) ) ) # ( \HEX1[3]~reg0_q\ & ( !\Selector20~1_combout\ & ( (!\SW[0]~input_o\ & (((!\SW[1]~input_o\) # (\ESTADO.S025~q\)))) # (\SW[0]~input_o\ & 
-- (\ESTADO.S050~q\)) ) ) ) # ( !\HEX1[3]~reg0_q\ & ( !\Selector20~1_combout\ & ( (!\SW[0]~input_o\ & (((\ESTADO.S025~q\ & \SW[1]~input_o\)))) # (\SW[0]~input_o\ & (\ESTADO.S050~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101111100110101010100000011010101010111001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S050~q\,
	datab => \ALT_INV_ESTADO.S025~q\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_HEX1[3]~reg0_q\,
	dataf => \ALT_INV_Selector20~1_combout\,
	combout => \Selector20~2_combout\);

-- Location: FF_X83_Y4_N40
\HEX1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector20~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[3]~reg0_q\);

-- Location: LABCELL_X83_Y4_N12
\Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector19~1_combout\ = ( \ESTADO.S050~q\ & ( \ESTADO.S075~q\ & ( \SW[0]~input_o\ ) ) ) # ( !\ESTADO.S050~q\ & ( \ESTADO.S075~q\ & ( (\ESTADO.S025~q\ & \SW[0]~input_o\) ) ) ) # ( \ESTADO.S050~q\ & ( !\ESTADO.S075~q\ & ( \SW[0]~input_o\ ) ) ) # ( 
-- !\ESTADO.S050~q\ & ( !\ESTADO.S075~q\ & ( (!\SW[0]~input_o\ & (((\SW[1]~input_o\ & !\ESTADO.S150~q\)))) # (\SW[0]~input_o\ & (\ESTADO.S025~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001010101000000001111111100000000010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S025~q\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S150~q\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S075~q\,
	combout => \Selector19~1_combout\);

-- Location: FF_X83_Y4_N13
\HEX1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector19~1_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[4]~reg0_q\);

-- Location: MLABCELL_X84_Y4_N15
\Selector17~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~1_combout\ = ( !\ESTADO.S150~q\ & ( (!\ESTADO.S075~q\ & (((!\ESTADO.S100~q\ & !\ESTADO.S125~q\)) # (\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000110000101100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S100~q\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_ESTADO.S075~q\,
	datad => \ALT_INV_ESTADO.S125~q\,
	dataf => \ALT_INV_ESTADO.S150~q\,
	combout => \Selector17~1_combout\);

-- Location: MLABCELL_X84_Y4_N27
\Selector17~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~2_combout\ = ( \ESTADO.S075~q\ & ( \SW[0]~input_o\ ) ) # ( !\ESTADO.S075~q\ & ( (\SW[0]~input_o\ & ((\ESTADO.S150~q\) # (\ESTADO.S050~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_ESTADO.S050~q\,
	datad => \ALT_INV_ESTADO.S150~q\,
	dataf => \ALT_INV_ESTADO.S075~q\,
	combout => \Selector17~2_combout\);

-- Location: LABCELL_X85_Y4_N33
\Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = ( \ESTADO.S025~q\ & ( (\SW[0]~input_o\ & !\ESTADO.S050~q\) ) ) # ( !\ESTADO.S025~q\ & ( !\ESTADO.S050~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector17~0_combout\);

-- Location: MLABCELL_X84_Y4_N36
\Selector17~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector17~3_combout\ = ( \Selector17~0_combout\ & ( (!\Selector17~2_combout\ & (((\HEX1[6]~reg0_q\) # (\Selector17~1_combout\)) # (\SW[1]~input_o\))) ) ) # ( !\Selector17~0_combout\ & ( (!\SW[1]~input_o\ & (!\Selector17~2_combout\ & \HEX1[6]~reg0_q\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_Selector17~1_combout\,
	datac => \ALT_INV_Selector17~2_combout\,
	datad => \ALT_INV_HEX1[6]~reg0_q\,
	dataf => \ALT_INV_Selector17~0_combout\,
	combout => \Selector17~3_combout\);

-- Location: FF_X84_Y4_N37
\HEX1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector17~3_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX1[6]~reg0_q\);

-- Location: LABCELL_X83_Y4_N30
\Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = ( \ESTADO.S075~q\ ) # ( !\ESTADO.S075~q\ & ( ((!\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\ESTADO.S050~q\)))) # (\ESTADO.S100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111110101111100011111010111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S100~q\,
	datad => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S075~q\,
	combout => \Selector30~0_combout\);

-- Location: FF_X83_Y4_N32
\HEX2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector30~0_combout\,
	clrn => \KEY[1]~input_o\,
	ena => \Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[0]~reg0_q\);

-- Location: LABCELL_X85_Y4_N42
\Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~0_combout\ = ( \ESTADO.S050~q\ & ( \ESTADO.S100~q\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\HEX2[3]~reg0_q\)) ) ) ) # ( !\ESTADO.S050~q\ & ( \ESTADO.S100~q\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\HEX2[3]~reg0_q\)) ) ) ) # ( 
-- \ESTADO.S050~q\ & ( !\ESTADO.S100~q\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & ((!\HEX2[3]~reg0_q\)))) # (\SW[0]~input_o\ & (((!\ESTADO.S075~q\)))) ) ) ) # ( !\ESTADO.S050~q\ & ( !\ESTADO.S100~q\ & ( (!\ESTADO.S075~q\) # ((!\SW[0]~input_o\ & 
-- (!\SW[1]~input_o\ & !\HEX2[3]~reg0_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100011110000110110000101000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_ESTADO.S075~q\,
	datad => \ALT_INV_HEX2[3]~reg0_q\,
	datae => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S100~q\,
	combout => \Selector27~0_combout\);

-- Location: LABCELL_X85_Y4_N6
\Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector27~1_combout\ = ( \HEX2[3]~reg0_q\ & ( \Selector27~0_combout\ & ( (\Selector20~0_combout\ & (((\ESTADO.S025~q\) # (\ESTADO.S150~q\)) # (\ESTADO.S125~q\))) ) ) ) # ( \HEX2[3]~reg0_q\ & ( !\Selector27~0_combout\ ) ) # ( !\HEX2[3]~reg0_q\ & ( 
-- !\Selector27~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S125~q\,
	datab => \ALT_INV_ESTADO.S150~q\,
	datac => \ALT_INV_ESTADO.S025~q\,
	datad => \ALT_INV_Selector20~0_combout\,
	datae => \ALT_INV_HEX2[3]~reg0_q\,
	dataf => \ALT_INV_Selector27~0_combout\,
	combout => \Selector27~1_combout\);

-- Location: FF_X85_Y4_N8
\HEX2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector27~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[3]~reg0_q\);

-- Location: LABCELL_X83_Y4_N42
\HEX2[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \HEX2[6]~0_combout\ = ( \HEX2[6]~reg0_q\ & ( \ESTADO.S000~q\ & ( (!\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( \HEX2[6]~reg0_q\ & ( !\ESTADO.S000~q\ & ( (!\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) ) # ( !\HEX2[6]~reg0_q\ & ( !\ESTADO.S000~q\ & ( 
-- (!\SW[1]~input_o\ & !\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_HEX2[6]~reg0_q\,
	dataf => \ALT_INV_ESTADO.S000~q\,
	combout => \HEX2[6]~0_combout\);

-- Location: FF_X83_Y4_N43
\HEX2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \HEX2[6]~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \HEX2[6]~reg0_q\);

-- Location: LABCELL_X85_Y4_N51
\Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = ( !\ESTADO.S125~q\ & ( !\ESTADO.S100~q\ & ( !\ESTADO.S025~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_ESTADO.S025~q\,
	datae => \ALT_INV_ESTADO.S125~q\,
	dataf => \ALT_INV_ESTADO.S100~q\,
	combout => \Selector6~0_combout\);

-- Location: LABCELL_X85_Y4_N18
\Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = ( \LEDR[9]~reg0_q\ & ( \Selector6~0_combout\ & ( (!\Selector19~0_combout\) # ((\ESTADO.S050~q\ & !\SW[0]~input_o\)) ) ) ) # ( !\LEDR[9]~reg0_q\ & ( \Selector6~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & 
-- ((!\Selector19~0_combout\) # (\ESTADO.S050~q\)))) # (\SW[0]~input_o\ & (((!\Selector19~0_combout\)))) ) ) ) # ( \LEDR[9]~reg0_q\ & ( !\Selector6~0_combout\ & ( (!\Selector19~0_combout\) # ((!\SW[0]~input_o\ & ((!\SW[1]~input_o\) # (\ESTADO.S050~q\)))) ) ) 
-- ) # ( !\LEDR[9]~reg0_q\ & ( !\Selector6~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((!\Selector19~0_combout\) # (\ESTADO.S050~q\)))) # (\SW[0]~input_o\ & (((!\Selector19~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100010000111111111011000001011111000100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_ESTADO.S050~q\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \ALT_INV_Selector19~0_combout\,
	datae => \ALT_INV_LEDR[9]~reg0_q\,
	dataf => \ALT_INV_Selector6~0_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X85_Y4_N19
\LEDR[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector9~0_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[9]~reg0_q\);

-- Location: LABCELL_X85_Y4_N39
\Selector6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = ( \ESTADO.S075~q\ & ( (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & !\LEDR[6]~reg0_q\)) ) ) # ( !\ESTADO.S075~q\ & ( ((!\ESTADO.S050~q\) # ((!\SW[1]~input_o\ & !\LEDR[6]~reg0_q\))) # (\SW[0]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111010101111111111101010110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_LEDR[6]~reg0_q\,
	datad => \ALT_INV_ESTADO.S050~q\,
	dataf => \ALT_INV_ESTADO.S075~q\,
	combout => \Selector6~1_combout\);

-- Location: LABCELL_X85_Y4_N30
\Selector6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = ( \Selector6~1_combout\ & ( (\Selector20~0_combout\ & (\LEDR[6]~reg0_q\ & ((!\Selector6~0_combout\) # (\ESTADO.S150~q\)))) ) ) # ( !\Selector6~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000001100010000000000110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S150~q\,
	datab => \ALT_INV_Selector20~0_combout\,
	datac => \ALT_INV_Selector6~0_combout\,
	datad => \ALT_INV_LEDR[6]~reg0_q\,
	dataf => \ALT_INV_Selector6~1_combout\,
	combout => \Selector6~2_combout\);

-- Location: FF_X85_Y4_N32
\LEDR[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector6~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[6]~reg0_q\);

-- Location: LABCELL_X85_Y4_N27
\Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = ( !\ESTADO.S025~q\ & ( (!\ESTADO.S100~q\ & (!\ESTADO.S050~q\ & !\ESTADO.S075~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ESTADO.S100~q\,
	datac => \ALT_INV_ESTADO.S050~q\,
	datad => \ALT_INV_ESTADO.S075~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector1~0_combout\);

-- Location: LABCELL_X85_Y4_N54
\Selector1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = ( \LEDR[1]~reg0_q\ & ( \Selector1~0_combout\ & ( (\ESTADO.S125~q\) # (\ESTADO.S150~q\) ) ) ) # ( !\LEDR[1]~reg0_q\ & ( \Selector1~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\ESTADO.S125~q\) # (\ESTADO.S150~q\)))) # 
-- (\SW[0]~input_o\ & (((\ESTADO.S125~q\)) # (\ESTADO.S150~q\))) ) ) ) # ( \LEDR[1]~reg0_q\ & ( !\Selector1~0_combout\ & ( (((!\SW[0]~input_o\ & !\SW[1]~input_o\)) # (\ESTADO.S125~q\)) # (\ESTADO.S150~q\) ) ) ) # ( !\LEDR[1]~reg0_q\ & ( 
-- !\Selector1~0_combout\ & ( (!\SW[0]~input_o\ & (\SW[1]~input_o\ & ((\ESTADO.S125~q\) # (\ESTADO.S150~q\)))) # (\SW[0]~input_o\ & (((\ESTADO.S125~q\)) # (\ESTADO.S150~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100111111101111110011111100010101001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_ESTADO.S150~q\,
	datac => \ALT_INV_ESTADO.S125~q\,
	datad => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_LEDR[1]~reg0_q\,
	dataf => \ALT_INV_Selector1~0_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X85_Y4_N56
\LEDR[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector1~1_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[1]~reg0_q\);

-- Location: MLABCELL_X84_Y4_N39
\Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = ( !\ESTADO.S025~q\ & ( (!\ESTADO.S050~q\ & !\ESTADO.S100~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ESTADO.S050~q\,
	datad => \ALT_INV_ESTADO.S100~q\,
	dataf => \ALT_INV_ESTADO.S025~q\,
	combout => \Selector0~1_combout\);

-- Location: MLABCELL_X84_Y4_N30
\Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = ( !\ESTADO.S125~q\ & ( !\ESTADO.S150~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_ESTADO.S150~q\,
	dataf => \ALT_INV_ESTADO.S125~q\,
	combout => \Selector0~0_combout\);

-- Location: MLABCELL_X84_Y4_N48
\Selector0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = ( \LEDR[0]~reg0_q\ & ( \Selector0~0_combout\ & ( (!\SW[0]~input_o\ & (((!\Selector0~1_combout\ & !\SW[1]~input_o\)) # (\ESTADO.S075~q\))) ) ) ) # ( !\LEDR[0]~reg0_q\ & ( \Selector0~0_combout\ & ( (!\SW[0]~input_o\ & 
-- (\SW[1]~input_o\ & \ESTADO.S075~q\)) ) ) ) # ( \LEDR[0]~reg0_q\ & ( !\Selector0~0_combout\ ) ) # ( !\LEDR[0]~reg0_q\ & ( !\Selector0~0_combout\ & ( (\SW[1]~input_o\) # (\SW[0]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111100000000000010101000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_Selector0~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_ESTADO.S075~q\,
	datae => \ALT_INV_LEDR[0]~reg0_q\,
	dataf => \ALT_INV_Selector0~0_combout\,
	combout => \Selector0~2_combout\);

-- Location: FF_X84_Y4_N49
\LEDR[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \Selector0~2_combout\,
	clrn => \KEY[1]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \LEDR[0]~reg0_q\);

-- Location: LABCELL_X45_Y55_N3
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


