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

-- DATE "08/17/2022 18:26:58"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	primeiro_projeto IS
    PORT (
	IN1 : IN std_logic;
	IN2 : IN std_logic;
	IN3 : IN std_logic;
	SAIDA1 : BUFFER std_logic;
	SAIDA2 : BUFFER std_logic
	);
END primeiro_projeto;

-- Design Ports Information
-- SAIDA1	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA2	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN3	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN1	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IN2	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF primeiro_projeto IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IN1 : std_logic;
SIGNAL ww_IN2 : std_logic;
SIGNAL ww_IN3 : std_logic;
SIGNAL ww_SAIDA1 : std_logic;
SIGNAL ww_SAIDA2 : std_logic;
SIGNAL \SAIDA1~output_o\ : std_logic;
SIGNAL \SAIDA2~output_o\ : std_logic;
SIGNAL \IN2~input_o\ : std_logic;
SIGNAL \IN1~input_o\ : std_logic;
SIGNAL \IN3~input_o\ : std_logic;
SIGNAL \SAIDA1~0_combout\ : std_logic;
SIGNAL \SAIDA2~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_IN1 <= IN1;
ww_IN2 <= IN2;
ww_IN3 <= IN3;
SAIDA1 <= ww_SAIDA1;
SAIDA2 <= ww_SAIDA2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y10_N23
\SAIDA1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA1~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA1~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\SAIDA2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SAIDA2~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA2~output_o\);

-- Location: IOIBUF_X0_Y8_N22
\IN2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN2,
	o => \IN2~input_o\);

-- Location: IOIBUF_X0_Y7_N8
\IN1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN1,
	o => \IN1~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\IN3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IN3,
	o => \IN3~input_o\);

-- Location: LCCOMB_X1_Y11_N16
\SAIDA1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA1~0_combout\ = (\IN3~input_o\) # ((\IN2~input_o\ & \IN1~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN2~input_o\,
	datac => \IN1~input_o\,
	datad => \IN3~input_o\,
	combout => \SAIDA1~0_combout\);

-- Location: LCCOMB_X1_Y11_N10
\SAIDA2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SAIDA2~0_combout\ = (!\IN3~input_o\ & (\IN2~input_o\ $ (\IN1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IN2~input_o\,
	datac => \IN1~input_o\,
	datad => \IN3~input_o\,
	combout => \SAIDA2~0_combout\);

ww_SAIDA1 <= \SAIDA1~output_o\;

ww_SAIDA2 <= \SAIDA2~output_o\;
END structure;


