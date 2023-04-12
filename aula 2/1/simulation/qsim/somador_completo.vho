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

-- DATE "08/18/2022 15:27:31"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	somador_completo IS
    PORT (
	A : IN std_logic;
	B : IN std_logic;
	carry_in : IN std_logic;
	carry_out : OUT std_logic;
	sum : OUT std_logic
	);
END somador_completo;

ARCHITECTURE structure OF somador_completo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_carry_in : std_logic;
SIGNAL ww_carry_out : std_logic;
SIGNAL ww_sum : std_logic;
SIGNAL \carry_out~output_o\ : std_logic;
SIGNAL \sum~output_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \carry_in~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \carry_out~0_combout\ : std_logic;
SIGNAL \sum~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_carry_in <= carry_in;
carry_out <= ww_carry_out;
sum <= ww_sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\carry_out~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carry_out~0_combout\,
	devoe => ww_devoe,
	o => \carry_out~output_o\);

\sum~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sum~0_combout\,
	devoe => ww_devoe,
	o => \sum~output_o\);

\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

\carry_in~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carry_in,
	o => \carry_in~input_o\);

\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

\carry_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carry_out~0_combout\ = (\B~input_o\ & ((\carry_in~input_o\) # (\A~input_o\))) # (!\B~input_o\ & (\carry_in~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \carry_in~input_o\,
	datac => \A~input_o\,
	combout => \carry_out~0_combout\);

\sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sum~0_combout\ = \B~input_o\ $ (\carry_in~input_o\ $ (\A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~input_o\,
	datab => \carry_in~input_o\,
	datac => \A~input_o\,
	combout => \sum~0_combout\);

ww_carry_out <= \carry_out~output_o\;

ww_sum <= \sum~output_o\;
END structure;


