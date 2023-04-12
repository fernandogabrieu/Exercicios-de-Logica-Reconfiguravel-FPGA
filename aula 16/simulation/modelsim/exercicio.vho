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

-- DATE "11/09/2022 15:18:24"

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
	LEDR : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic
	);
END exercicio;

-- Design Ports Information
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \inst2|Add0~89_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~90\ : std_logic;
SIGNAL \inst2|Add0~85_sumout\ : std_logic;
SIGNAL \inst2|Add0~86\ : std_logic;
SIGNAL \inst2|Add0~93_sumout\ : std_logic;
SIGNAL \inst2|Add0~94\ : std_logic;
SIGNAL \inst2|Add0~97_sumout\ : std_logic;
SIGNAL \inst2|Add0~98\ : std_logic;
SIGNAL \inst2|Add0~101_sumout\ : std_logic;
SIGNAL \inst2|Add0~102\ : std_logic;
SIGNAL \inst2|Add0~33_sumout\ : std_logic;
SIGNAL \inst2|Add0~34\ : std_logic;
SIGNAL \inst2|Add0~37_sumout\ : std_logic;
SIGNAL \inst2|Add0~38\ : std_logic;
SIGNAL \inst2|Add0~41_sumout\ : std_logic;
SIGNAL \inst2|Add0~42\ : std_logic;
SIGNAL \inst2|Add0~46\ : std_logic;
SIGNAL \inst2|Add0~49_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~50\ : std_logic;
SIGNAL \inst2|Add0~53_sumout\ : std_logic;
SIGNAL \inst2|Add0~54\ : std_logic;
SIGNAL \inst2|Add0~9_sumout\ : std_logic;
SIGNAL \inst2|Add0~10\ : std_logic;
SIGNAL \inst2|Add0~13_sumout\ : std_logic;
SIGNAL \inst2|Add0~14\ : std_logic;
SIGNAL \inst2|Add0~17_sumout\ : std_logic;
SIGNAL \inst2|Add0~18\ : std_logic;
SIGNAL \inst2|Add0~21_sumout\ : std_logic;
SIGNAL \inst2|Add0~22\ : std_logic;
SIGNAL \inst2|Add0~25_sumout\ : std_logic;
SIGNAL \inst2|Add0~26\ : std_logic;
SIGNAL \inst2|Add0~29_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Add0~30\ : std_logic;
SIGNAL \inst2|Add0~1_sumout\ : std_logic;
SIGNAL \inst2|Add0~2\ : std_logic;
SIGNAL \inst2|Add0~5_sumout\ : std_logic;
SIGNAL \inst2|Add0~6\ : std_logic;
SIGNAL \inst2|Add0~57_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~58\ : std_logic;
SIGNAL \inst2|Add0~61_sumout\ : std_logic;
SIGNAL \inst2|Add0~62\ : std_logic;
SIGNAL \inst2|Add0~65_sumout\ : std_logic;
SIGNAL \inst2|Add0~66\ : std_logic;
SIGNAL \inst2|Add0~69_sumout\ : std_logic;
SIGNAL \inst2|Add0~70\ : std_logic;
SIGNAL \inst2|Add0~73_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~74\ : std_logic;
SIGNAL \inst2|Add0~77_sumout\ : std_logic;
SIGNAL \inst2|Add0~78\ : std_logic;
SIGNAL \inst2|Add0~81_sumout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|ledr_delay[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add0~45_sumout\ : std_logic;
SIGNAL \inst2|ledr_delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|ledr_reg~0_combout\ : std_logic;
SIGNAL \inst2|ledr_reg~q\ : std_logic;
SIGNAL \inst2|Add1~1_sumout\ : std_logic;
SIGNAL \inst2|sobe~_wirecell_combout\ : std_logic;
SIGNAL \inst2|Add1~2\ : std_logic;
SIGNAL \inst2|Add1~10\ : std_logic;
SIGNAL \inst2|Add1~6\ : std_logic;
SIGNAL \inst2|Add1~81_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \inst2|Add1~82\ : std_logic;
SIGNAL \inst2|Add1~85_sumout\ : std_logic;
SIGNAL \inst2|Add1~86\ : std_logic;
SIGNAL \inst2|Add1~89_sumout\ : std_logic;
SIGNAL \inst2|Add1~90\ : std_logic;
SIGNAL \inst2|Add1~93_sumout\ : std_logic;
SIGNAL \inst2|Add1~94\ : std_logic;
SIGNAL \inst2|Add1~97_sumout\ : std_logic;
SIGNAL \inst2|Add1~98\ : std_logic;
SIGNAL \inst2|Add1~101_sumout\ : std_logic;
SIGNAL \inst2|Add1~102\ : std_logic;
SIGNAL \inst2|Add1~105_sumout\ : std_logic;
SIGNAL \inst2|Add1~106\ : std_logic;
SIGNAL \inst2|Add1~109_sumout\ : std_logic;
SIGNAL \inst2|Add1~110\ : std_logic;
SIGNAL \inst2|Add1~113_sumout\ : std_logic;
SIGNAL \inst2|Add1~114\ : std_logic;
SIGNAL \inst2|Add1~117_sumout\ : std_logic;
SIGNAL \inst2|Add1~118\ : std_logic;
SIGNAL \inst2|Add1~121_sumout\ : std_logic;
SIGNAL \inst2|Add1~122\ : std_logic;
SIGNAL \inst2|Add1~13_sumout\ : std_logic;
SIGNAL \inst2|cont[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~14\ : std_logic;
SIGNAL \inst2|Add1~57_sumout\ : std_logic;
SIGNAL \inst2|cont[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~58\ : std_logic;
SIGNAL \inst2|Add1~61_sumout\ : std_logic;
SIGNAL \inst2|Add1~62\ : std_logic;
SIGNAL \inst2|Add1~65_sumout\ : std_logic;
SIGNAL \inst2|Add1~66\ : std_logic;
SIGNAL \inst2|Add1~69_sumout\ : std_logic;
SIGNAL \inst2|Add1~70\ : std_logic;
SIGNAL \inst2|Add1~73_sumout\ : std_logic;
SIGNAL \inst2|Add1~74\ : std_logic;
SIGNAL \inst2|Add1~77_sumout\ : std_logic;
SIGNAL \inst2|Add1~78\ : std_logic;
SIGNAL \inst2|Add1~33_sumout\ : std_logic;
SIGNAL \inst2|Add1~34\ : std_logic;
SIGNAL \inst2|Add1~37_sumout\ : std_logic;
SIGNAL \inst2|Add1~38\ : std_logic;
SIGNAL \inst2|Add1~41_sumout\ : std_logic;
SIGNAL \inst2|Add1~42\ : std_logic;
SIGNAL \inst2|Add1~45_sumout\ : std_logic;
SIGNAL \inst2|Add1~46\ : std_logic;
SIGNAL \inst2|Add1~49_sumout\ : std_logic;
SIGNAL \inst2|cont[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|Add1~50\ : std_logic;
SIGNAL \inst2|Add1~53_sumout\ : std_logic;
SIGNAL \inst2|cont[2]~1_combout\ : std_logic;
SIGNAL \inst2|cont[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|cont[2]~4_combout\ : std_logic;
SIGNAL \inst2|Add1~54\ : std_logic;
SIGNAL \inst2|Add1~17_sumout\ : std_logic;
SIGNAL \inst2|Add1~18\ : std_logic;
SIGNAL \inst2|Add1~21_sumout\ : std_logic;
SIGNAL \inst2|Add1~22\ : std_logic;
SIGNAL \inst2|Add1~25_sumout\ : std_logic;
SIGNAL \inst2|Add1~26\ : std_logic;
SIGNAL \inst2|Add1~29_sumout\ : std_logic;
SIGNAL \inst2|cont[2]~0_combout\ : std_logic;
SIGNAL \inst2|cont[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|cont[2]~2_combout\ : std_logic;
SIGNAL \inst2|cont[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|cont[2]~3_combout\ : std_logic;
SIGNAL \inst2|cont[2]~5_combout\ : std_logic;
SIGNAL \inst2|cont[2]~6_combout\ : std_logic;
SIGNAL \inst2|Add1~9_sumout\ : std_logic;
SIGNAL \inst2|cont[1]~feeder_combout\ : std_logic;
SIGNAL \inst2|cont[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|sobe~0_combout\ : std_logic;
SIGNAL \inst2|sobe~q\ : std_logic;
SIGNAL \inst2|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|led_delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|led_delay~1_combout\ : std_logic;
SIGNAL \inst|led_delay~2_combout\ : std_logic;
SIGNAL \inst|led_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|led_delay~0_combout\ : std_logic;
SIGNAL \inst|led_delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|clk_1us1~0_combout\ : std_logic;
SIGNAL \inst|clk_1us1~q\ : std_logic;
SIGNAL \inst|Add1~25_sumout\ : std_logic;
SIGNAL \inst|Add1~26\ : std_logic;
SIGNAL \inst|Add1~29_sumout\ : std_logic;
SIGNAL \inst|Add1~30\ : std_logic;
SIGNAL \inst|Add1~33_sumout\ : std_logic;
SIGNAL \inst|Add1~34\ : std_logic;
SIGNAL \inst|Add1~37_sumout\ : std_logic;
SIGNAL \inst|Add1~38\ : std_logic;
SIGNAL \inst|Add1~41_sumout\ : std_logic;
SIGNAL \inst|Add1~42\ : std_logic;
SIGNAL \inst|Add1~45_sumout\ : std_logic;
SIGNAL \inst|Add1~46\ : std_logic;
SIGNAL \inst|Add1~14\ : std_logic;
SIGNAL \inst|Add1~17_sumout\ : std_logic;
SIGNAL \inst|Add1~18\ : std_logic;
SIGNAL \inst|Add1~21_sumout\ : std_logic;
SIGNAL \inst|Add1~22\ : std_logic;
SIGNAL \inst|Add1~1_sumout\ : std_logic;
SIGNAL \inst|Add1~2\ : std_logic;
SIGNAL \inst|Add1~5_sumout\ : std_logic;
SIGNAL \inst|Add1~6\ : std_logic;
SIGNAL \inst|Add1~9_sumout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal1~2_combout\ : std_logic;
SIGNAL \inst|Equal1~3_combout\ : std_logic;
SIGNAL \inst|Add1~13_sumout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|clk_100us1~0_combout\ : std_logic;
SIGNAL \inst|clk_100us1~q\ : std_logic;
SIGNAL \inst|count[7]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~21_sumout\ : std_logic;
SIGNAL \inst|count[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~22\ : std_logic;
SIGNAL \inst|Add4~25_sumout\ : std_logic;
SIGNAL \inst|count[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~26\ : std_logic;
SIGNAL \inst|Add4~29_sumout\ : std_logic;
SIGNAL \inst|Add4~30\ : std_logic;
SIGNAL \inst|Add4~33_sumout\ : std_logic;
SIGNAL \inst|count[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~34\ : std_logic;
SIGNAL \inst|Add4~37_sumout\ : std_logic;
SIGNAL \inst|count[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Add4~38\ : std_logic;
SIGNAL \inst|Add4~1_sumout\ : std_logic;
SIGNAL \inst|Add4~2\ : std_logic;
SIGNAL \inst|Add4~5_sumout\ : std_logic;
SIGNAL \inst|Add4~6\ : std_logic;
SIGNAL \inst|Add4~9_sumout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|Add4~10\ : std_logic;
SIGNAL \inst|Add4~13_sumout\ : std_logic;
SIGNAL \inst|Add4~14\ : std_logic;
SIGNAL \inst|Add4~17_sumout\ : std_logic;
SIGNAL \inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst|incrementa~q\ : std_logic;
SIGNAL \inst|Add5~21_sumout\ : std_logic;
SIGNAL \inst|duty1~6_combout\ : std_logic;
SIGNAL \inst|duty1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add5~22\ : std_logic;
SIGNAL \inst|Add5~17_sumout\ : std_logic;
SIGNAL \inst|duty1~5_combout\ : std_logic;
SIGNAL \inst|Add5~18\ : std_logic;
SIGNAL \inst|Add5~14\ : std_logic;
SIGNAL \inst|Add5~9_sumout\ : std_logic;
SIGNAL \inst|duty1~3_combout\ : std_logic;
SIGNAL \inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst|incrementa~0_combout\ : std_logic;
SIGNAL \inst|incrementa~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add5~10\ : std_logic;
SIGNAL \inst|Add5~6\ : std_logic;
SIGNAL \inst|Add5~1_sumout\ : std_logic;
SIGNAL \inst|duty1~1_combout\ : std_logic;
SIGNAL \inst|duty1[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|duty1~0_combout\ : std_logic;
SIGNAL \inst|Add5~5_sumout\ : std_logic;
SIGNAL \inst|duty1~2_combout\ : std_logic;
SIGNAL \inst|duty1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add5~13_sumout\ : std_logic;
SIGNAL \inst|duty1~4_combout\ : std_logic;
SIGNAL \inst|duty1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst|led_on[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|led_on[0]~3_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|Add2~3_combout\ : std_logic;
SIGNAL \inst|duty1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|Add3~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst|led_on~1_combout\ : std_logic;
SIGNAL \inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst|led_on~2_combout\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|led_on~0_combout\ : std_logic;
SIGNAL \inst|Add2~1_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst|led_reg~0_combout\ : std_logic;
SIGNAL \inst|led_reg~q\ : std_logic;
SIGNAL \inst2|ledr[7]~0_combout\ : std_logic;
SIGNAL \inst2|ledr[6]~1_combout\ : std_logic;
SIGNAL \inst2|ledr[5]~2_combout\ : std_logic;
SIGNAL \inst2|ledr[4]~3_combout\ : std_logic;
SIGNAL \inst2|ledr[3]~4_combout\ : std_logic;
SIGNAL \inst2|ledr[2]~5_combout\ : std_logic;
SIGNAL \inst2|ledr[1]~6_combout\ : std_logic;
SIGNAL \inst2|ledr[0]~7_combout\ : std_logic;
SIGNAL \inst|led_delay100\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst2|cont\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst2|ledr_delay\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|duty1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|led_on\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|led_delay\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_led_delay[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_led_delay[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_led_delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_incrementa~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_led_on[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1[5]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[23]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[19]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[10]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay[16]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[11]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[17]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[15]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[25]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[21]~DUPLICATE_q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_led_delay\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add2~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_clk_100us1~q\ : std_logic;
SIGNAL \inst|ALT_INV_duty1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_incrementa~q\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~5_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~4_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~3_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~2_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~1_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont[2]~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_sobe~q\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_reg~q\ : std_logic;
SIGNAL \inst|ALT_INV_clk_1us1~q\ : std_logic;
SIGNAL \inst|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_led_on\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \inst|ALT_INV_duty1\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst|ALT_INV_led_reg~q\ : std_logic;
SIGNAL \inst|ALT_INV_led_delay100\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst|ALT_INV_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_ledr_delay\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst|ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~37_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~33_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~29_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~25_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~21_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~17_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~13_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~9_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~5_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add4~1_sumout\ : std_logic;
SIGNAL \inst|ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \inst2|ALT_INV_cont\ : std_logic_vector(30 DOWNTO 0);

BEGIN

LEDR <= ww_LEDR;
ww_CLOCK_50 <= CLOCK_50;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst|ALT_INV_led_delay[4]~DUPLICATE_q\ <= NOT \inst|led_delay[4]~DUPLICATE_q\;
\inst|ALT_INV_led_delay[2]~DUPLICATE_q\ <= NOT \inst|led_delay[2]~DUPLICATE_q\;
\inst|ALT_INV_led_delay[0]~DUPLICATE_q\ <= NOT \inst|led_delay[0]~DUPLICATE_q\;
\inst|ALT_INV_incrementa~DUPLICATE_q\ <= NOT \inst|incrementa~DUPLICATE_q\;
\inst|ALT_INV_led_on[0]~DUPLICATE_q\ <= NOT \inst|led_on[0]~DUPLICATE_q\;
\inst|ALT_INV_duty1[0]~DUPLICATE_q\ <= NOT \inst|duty1[0]~DUPLICATE_q\;
\inst|ALT_INV_duty1[1]~DUPLICATE_q\ <= NOT \inst|duty1[1]~DUPLICATE_q\;
\inst|ALT_INV_duty1[3]~DUPLICATE_q\ <= NOT \inst|duty1[3]~DUPLICATE_q\;
\inst|ALT_INV_duty1[4]~DUPLICATE_q\ <= NOT \inst|duty1[4]~DUPLICATE_q\;
\inst|ALT_INV_duty1[5]~DUPLICATE_q\ <= NOT \inst|duty1[5]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[0]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[0]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[23]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[23]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[19]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[19]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[10]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[10]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[9]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[9]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[8]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[8]~DUPLICATE_q\;
\inst2|ALT_INV_ledr_delay[16]~DUPLICATE_q\ <= NOT \inst2|ledr_delay[16]~DUPLICATE_q\;
\inst2|ALT_INV_cont[11]~DUPLICATE_q\ <= NOT \inst2|cont[11]~DUPLICATE_q\;
\inst2|ALT_INV_cont[4]~DUPLICATE_q\ <= NOT \inst2|cont[4]~DUPLICATE_q\;
\inst2|ALT_INV_cont[17]~DUPLICATE_q\ <= NOT \inst2|cont[17]~DUPLICATE_q\;
\inst2|ALT_INV_cont[15]~DUPLICATE_q\ <= NOT \inst2|cont[15]~DUPLICATE_q\;
\inst2|ALT_INV_cont[25]~DUPLICATE_q\ <= NOT \inst2|cont[25]~DUPLICATE_q\;
\inst2|ALT_INV_cont[21]~DUPLICATE_q\ <= NOT \inst2|cont[21]~DUPLICATE_q\;
\inst2|ALT_INV_cont[1]~DUPLICATE_q\ <= NOT \inst2|cont[1]~DUPLICATE_q\;
\inst|ALT_INV_Equal1~2_combout\ <= NOT \inst|Equal1~2_combout\;
\inst|ALT_INV_Equal1~1_combout\ <= NOT \inst|Equal1~1_combout\;
\inst|ALT_INV_Equal1~0_combout\ <= NOT \inst|Equal1~0_combout\;
\inst2|ALT_INV_Equal0~4_combout\ <= NOT \inst2|Equal0~4_combout\;
\inst2|ALT_INV_Equal0~3_combout\ <= NOT \inst2|Equal0~3_combout\;
\inst2|ALT_INV_Equal0~2_combout\ <= NOT \inst2|Equal0~2_combout\;
\inst2|ALT_INV_Equal0~1_combout\ <= NOT \inst2|Equal0~1_combout\;
\inst2|ALT_INV_Equal0~0_combout\ <= NOT \inst2|Equal0~0_combout\;
\inst|ALT_INV_led_delay\(4) <= NOT \inst|led_delay\(4);
\inst|ALT_INV_led_delay\(3) <= NOT \inst|led_delay\(3);
\inst|ALT_INV_led_delay\(2) <= NOT \inst|led_delay\(2);
\inst|ALT_INV_led_delay\(1) <= NOT \inst|led_delay\(1);
\inst|ALT_INV_led_delay\(0) <= NOT \inst|led_delay\(0);
\inst|ALT_INV_Add2~4_combout\ <= NOT \inst|Add2~4_combout\;
\inst|ALT_INV_Equal3~0_combout\ <= NOT \inst|Equal3~0_combout\;
\inst|ALT_INV_clk_100us1~q\ <= NOT \inst|clk_100us1~q\;
\inst|ALT_INV_duty1~0_combout\ <= NOT \inst|duty1~0_combout\;
\inst|ALT_INV_LessThan1~0_combout\ <= NOT \inst|LessThan1~0_combout\;
\inst|ALT_INV_incrementa~q\ <= NOT \inst|incrementa~q\;
\inst2|ALT_INV_cont[2]~5_combout\ <= NOT \inst2|cont[2]~5_combout\;
\inst2|ALT_INV_cont[2]~4_combout\ <= NOT \inst2|cont[2]~4_combout\;
\inst2|ALT_INV_cont[2]~3_combout\ <= NOT \inst2|cont[2]~3_combout\;
\inst2|ALT_INV_cont[2]~2_combout\ <= NOT \inst2|cont[2]~2_combout\;
\inst2|ALT_INV_cont[2]~1_combout\ <= NOT \inst2|cont[2]~1_combout\;
\inst2|ALT_INV_cont[2]~0_combout\ <= NOT \inst2|cont[2]~0_combout\;
\inst2|ALT_INV_sobe~q\ <= NOT \inst2|sobe~q\;
\inst2|ALT_INV_ledr_reg~q\ <= NOT \inst2|ledr_reg~q\;
\inst|ALT_INV_clk_1us1~q\ <= NOT \inst|clk_1us1~q\;
\inst|ALT_INV_Equal2~0_combout\ <= NOT \inst|Equal2~0_combout\;
\inst|ALT_INV_LessThan0~4_combout\ <= NOT \inst|LessThan0~4_combout\;
\inst|ALT_INV_LessThan0~3_combout\ <= NOT \inst|LessThan0~3_combout\;
\inst|ALT_INV_Add2~3_combout\ <= NOT \inst|Add2~3_combout\;
\inst|ALT_INV_Add3~1_combout\ <= NOT \inst|Add3~1_combout\;
\inst|ALT_INV_Add2~2_combout\ <= NOT \inst|Add2~2_combout\;
\inst|ALT_INV_led_on\(4) <= NOT \inst|led_on\(4);
\inst|ALT_INV_led_on\(5) <= NOT \inst|led_on\(5);
\inst|ALT_INV_LessThan0~2_combout\ <= NOT \inst|LessThan0~2_combout\;
\inst|ALT_INV_LessThan0~1_combout\ <= NOT \inst|LessThan0~1_combout\;
\inst|ALT_INV_Add2~1_combout\ <= NOT \inst|Add2~1_combout\;
\inst|ALT_INV_Add2~0_combout\ <= NOT \inst|Add2~0_combout\;
\inst|ALT_INV_led_on\(1) <= NOT \inst|led_on\(1);
\inst|ALT_INV_led_on\(0) <= NOT \inst|led_on\(0);
\inst|ALT_INV_led_on\(2) <= NOT \inst|led_on\(2);
\inst|ALT_INV_led_on\(3) <= NOT \inst|led_on\(3);
\inst|ALT_INV_Add3~0_combout\ <= NOT \inst|Add3~0_combout\;
\inst|ALT_INV_LessThan0~0_combout\ <= NOT \inst|LessThan0~0_combout\;
\inst|ALT_INV_duty1\(0) <= NOT \inst|duty1\(0);
\inst|ALT_INV_duty1\(1) <= NOT \inst|duty1\(1);
\inst|ALT_INV_duty1\(2) <= NOT \inst|duty1\(2);
\inst|ALT_INV_duty1\(3) <= NOT \inst|duty1\(3);
\inst|ALT_INV_duty1\(4) <= NOT \inst|duty1\(4);
\inst|ALT_INV_duty1\(5) <= NOT \inst|duty1\(5);
\inst|ALT_INV_led_reg~q\ <= NOT \inst|led_reg~q\;
\inst|ALT_INV_led_delay100\(5) <= NOT \inst|led_delay100\(5);
\inst|ALT_INV_led_delay100\(4) <= NOT \inst|led_delay100\(4);
\inst|ALT_INV_led_delay100\(3) <= NOT \inst|led_delay100\(3);
\inst|ALT_INV_led_delay100\(2) <= NOT \inst|led_delay100\(2);
\inst|ALT_INV_led_delay100\(1) <= NOT \inst|led_delay100\(1);
\inst|ALT_INV_led_delay100\(0) <= NOT \inst|led_delay100\(0);
\inst|ALT_INV_led_delay100\(8) <= NOT \inst|led_delay100\(8);
\inst|ALT_INV_led_delay100\(7) <= NOT \inst|led_delay100\(7);
\inst|ALT_INV_led_delay100\(6) <= NOT \inst|led_delay100\(6);
\inst|ALT_INV_led_delay100\(11) <= NOT \inst|led_delay100\(11);
\inst|ALT_INV_led_delay100\(10) <= NOT \inst|led_delay100\(10);
\inst|ALT_INV_led_delay100\(9) <= NOT \inst|led_delay100\(9);
\inst|ALT_INV_count\(4) <= NOT \inst|count\(4);
\inst|ALT_INV_count\(3) <= NOT \inst|count\(3);
\inst|ALT_INV_count\(2) <= NOT \inst|count\(2);
\inst|ALT_INV_count\(1) <= NOT \inst|count\(1);
\inst|ALT_INV_count\(0) <= NOT \inst|count\(0);
\inst|ALT_INV_count\(9) <= NOT \inst|count\(9);
\inst|ALT_INV_count\(8) <= NOT \inst|count\(8);
\inst|ALT_INV_count\(7) <= NOT \inst|count\(7);
\inst|ALT_INV_count\(6) <= NOT \inst|count\(6);
\inst|ALT_INV_count\(5) <= NOT \inst|count\(5);
\inst|ALT_INV_Add1~45_sumout\ <= NOT \inst|Add1~45_sumout\;
\inst|ALT_INV_Add1~41_sumout\ <= NOT \inst|Add1~41_sumout\;
\inst|ALT_INV_Add1~37_sumout\ <= NOT \inst|Add1~37_sumout\;
\inst|ALT_INV_Add1~33_sumout\ <= NOT \inst|Add1~33_sumout\;
\inst|ALT_INV_Add1~29_sumout\ <= NOT \inst|Add1~29_sumout\;
\inst|ALT_INV_Add1~25_sumout\ <= NOT \inst|Add1~25_sumout\;
\inst|ALT_INV_Add1~21_sumout\ <= NOT \inst|Add1~21_sumout\;
\inst|ALT_INV_Add1~17_sumout\ <= NOT \inst|Add1~17_sumout\;
\inst|ALT_INV_Add1~13_sumout\ <= NOT \inst|Add1~13_sumout\;
\inst|ALT_INV_Add1~9_sumout\ <= NOT \inst|Add1~9_sumout\;
\inst|ALT_INV_Add1~5_sumout\ <= NOT \inst|Add1~5_sumout\;
\inst|ALT_INV_Add1~1_sumout\ <= NOT \inst|Add1~1_sumout\;
\inst2|ALT_INV_ledr_delay\(4) <= NOT \inst2|ledr_delay\(4);
\inst2|ALT_INV_ledr_delay\(3) <= NOT \inst2|ledr_delay\(3);
\inst2|ALT_INV_ledr_delay\(2) <= NOT \inst2|ledr_delay\(2);
\inst2|ALT_INV_ledr_delay\(0) <= NOT \inst2|ledr_delay\(0);
\inst2|ALT_INV_ledr_delay\(1) <= NOT \inst2|ledr_delay\(1);
\inst2|ALT_INV_ledr_delay\(25) <= NOT \inst2|ledr_delay\(25);
\inst2|ALT_INV_ledr_delay\(24) <= NOT \inst2|ledr_delay\(24);
\inst2|ALT_INV_ledr_delay\(23) <= NOT \inst2|ledr_delay\(23);
\inst2|ALT_INV_ledr_delay\(22) <= NOT \inst2|ledr_delay\(22);
\inst2|ALT_INV_ledr_delay\(21) <= NOT \inst2|ledr_delay\(21);
\inst2|ALT_INV_ledr_delay\(20) <= NOT \inst2|ledr_delay\(20);
\inst2|ALT_INV_ledr_delay\(19) <= NOT \inst2|ledr_delay\(19);
\inst2|ALT_INV_ledr_delay\(10) <= NOT \inst2|ledr_delay\(10);
\inst2|ALT_INV_ledr_delay\(9) <= NOT \inst2|ledr_delay\(9);
\inst2|ALT_INV_ledr_delay\(8) <= NOT \inst2|ledr_delay\(8);
\inst2|ALT_INV_ledr_delay\(7) <= NOT \inst2|ledr_delay\(7);
\inst2|ALT_INV_ledr_delay\(6) <= NOT \inst2|ledr_delay\(6);
\inst2|ALT_INV_ledr_delay\(5) <= NOT \inst2|ledr_delay\(5);
\inst2|ALT_INV_ledr_delay\(16) <= NOT \inst2|ledr_delay\(16);
\inst2|ALT_INV_ledr_delay\(15) <= NOT \inst2|ledr_delay\(15);
\inst2|ALT_INV_ledr_delay\(14) <= NOT \inst2|ledr_delay\(14);
\inst2|ALT_INV_ledr_delay\(13) <= NOT \inst2|ledr_delay\(13);
\inst2|ALT_INV_ledr_delay\(12) <= NOT \inst2|ledr_delay\(12);
\inst2|ALT_INV_ledr_delay\(11) <= NOT \inst2|ledr_delay\(11);
\inst2|ALT_INV_ledr_delay\(18) <= NOT \inst2|ledr_delay\(18);
\inst2|ALT_INV_ledr_delay\(17) <= NOT \inst2|ledr_delay\(17);
\inst|ALT_INV_Add5~21_sumout\ <= NOT \inst|Add5~21_sumout\;
\inst|ALT_INV_Add5~17_sumout\ <= NOT \inst|Add5~17_sumout\;
\inst|ALT_INV_Add5~13_sumout\ <= NOT \inst|Add5~13_sumout\;
\inst|ALT_INV_Add5~9_sumout\ <= NOT \inst|Add5~9_sumout\;
\inst|ALT_INV_Add5~5_sumout\ <= NOT \inst|Add5~5_sumout\;
\inst|ALT_INV_Add4~37_sumout\ <= NOT \inst|Add4~37_sumout\;
\inst|ALT_INV_Add4~33_sumout\ <= NOT \inst|Add4~33_sumout\;
\inst|ALT_INV_Add4~29_sumout\ <= NOT \inst|Add4~29_sumout\;
\inst|ALT_INV_Add4~25_sumout\ <= NOT \inst|Add4~25_sumout\;
\inst|ALT_INV_Add4~21_sumout\ <= NOT \inst|Add4~21_sumout\;
\inst|ALT_INV_Add4~17_sumout\ <= NOT \inst|Add4~17_sumout\;
\inst|ALT_INV_Add4~13_sumout\ <= NOT \inst|Add4~13_sumout\;
\inst|ALT_INV_Add4~9_sumout\ <= NOT \inst|Add4~9_sumout\;
\inst|ALT_INV_Add4~5_sumout\ <= NOT \inst|Add4~5_sumout\;
\inst|ALT_INV_Add4~1_sumout\ <= NOT \inst|Add4~1_sumout\;
\inst|ALT_INV_Add5~1_sumout\ <= NOT \inst|Add5~1_sumout\;
\inst2|ALT_INV_Add1~9_sumout\ <= NOT \inst2|Add1~9_sumout\;
\inst2|ALT_INV_cont\(13) <= NOT \inst2|cont\(13);
\inst2|ALT_INV_cont\(12) <= NOT \inst2|cont\(12);
\inst2|ALT_INV_cont\(11) <= NOT \inst2|cont\(11);
\inst2|ALT_INV_cont\(10) <= NOT \inst2|cont\(10);
\inst2|ALT_INV_cont\(9) <= NOT \inst2|cont\(9);
\inst2|ALT_INV_cont\(8) <= NOT \inst2|cont\(8);
\inst2|ALT_INV_cont\(7) <= NOT \inst2|cont\(7);
\inst2|ALT_INV_cont\(6) <= NOT \inst2|cont\(6);
\inst2|ALT_INV_cont\(5) <= NOT \inst2|cont\(5);
\inst2|ALT_INV_cont\(4) <= NOT \inst2|cont\(4);
\inst2|ALT_INV_cont\(3) <= NOT \inst2|cont\(3);
\inst2|ALT_INV_cont\(20) <= NOT \inst2|cont\(20);
\inst2|ALT_INV_cont\(19) <= NOT \inst2|cont\(19);
\inst2|ALT_INV_cont\(18) <= NOT \inst2|cont\(18);
\inst2|ALT_INV_cont\(17) <= NOT \inst2|cont\(17);
\inst2|ALT_INV_cont\(16) <= NOT \inst2|cont\(16);
\inst2|ALT_INV_cont\(15) <= NOT \inst2|cont\(15);
\inst2|ALT_INV_cont\(26) <= NOT \inst2|cont\(26);
\inst2|ALT_INV_cont\(25) <= NOT \inst2|cont\(25);
\inst2|ALT_INV_cont\(24) <= NOT \inst2|cont\(24);
\inst2|ALT_INV_cont\(23) <= NOT \inst2|cont\(23);
\inst2|ALT_INV_cont\(22) <= NOT \inst2|cont\(22);
\inst2|ALT_INV_cont\(21) <= NOT \inst2|cont\(21);
\inst2|ALT_INV_cont\(30) <= NOT \inst2|cont\(30);
\inst2|ALT_INV_cont\(29) <= NOT \inst2|cont\(29);
\inst2|ALT_INV_cont\(28) <= NOT \inst2|cont\(28);
\inst2|ALT_INV_cont\(27) <= NOT \inst2|cont\(27);
\inst2|ALT_INV_cont\(14) <= NOT \inst2|cont\(14);
\inst2|ALT_INV_cont\(1) <= NOT \inst2|cont\(1);
\inst2|ALT_INV_cont\(2) <= NOT \inst2|cont\(2);
\inst2|ALT_INV_cont\(0) <= NOT \inst2|cont\(0);

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ledr[7]~0_combout\,
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
	i => \inst2|ledr[6]~1_combout\,
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
	i => \inst2|ledr[5]~2_combout\,
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
	i => \inst2|ledr[4]~3_combout\,
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
	i => \inst2|ledr[3]~4_combout\,
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
	i => \inst2|ledr[2]~5_combout\,
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
	i => \inst2|ledr[1]~6_combout\,
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
	i => \inst2|ledr[0]~7_combout\,
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

-- Location: LABCELL_X46_Y6_N30
\inst2|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~89_sumout\ = SUM(( \inst2|ledr_delay[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst2|Add0~90\ = CARRY(( \inst2|ledr_delay[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst2|Add0~89_sumout\,
	cout => \inst2|Add0~90\);

-- Location: FF_X46_Y6_N31
\inst2|ledr_delay[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~89_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[0]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y6_N33
\inst2|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~85_sumout\ = SUM(( \inst2|ledr_delay\(1) ) + ( GND ) + ( \inst2|Add0~90\ ))
-- \inst2|Add0~86\ = CARRY(( \inst2|ledr_delay\(1) ) + ( GND ) + ( \inst2|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(1),
	cin => \inst2|Add0~90\,
	sumout => \inst2|Add0~85_sumout\,
	cout => \inst2|Add0~86\);

-- Location: FF_X46_Y6_N35
\inst2|ledr_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~85_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(1));

-- Location: LABCELL_X46_Y6_N36
\inst2|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~93_sumout\ = SUM(( \inst2|ledr_delay\(2) ) + ( GND ) + ( \inst2|Add0~86\ ))
-- \inst2|Add0~94\ = CARRY(( \inst2|ledr_delay\(2) ) + ( GND ) + ( \inst2|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(2),
	cin => \inst2|Add0~86\,
	sumout => \inst2|Add0~93_sumout\,
	cout => \inst2|Add0~94\);

-- Location: FF_X46_Y6_N38
\inst2|ledr_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~93_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(2));

-- Location: LABCELL_X46_Y6_N39
\inst2|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~97_sumout\ = SUM(( \inst2|ledr_delay\(3) ) + ( GND ) + ( \inst2|Add0~94\ ))
-- \inst2|Add0~98\ = CARRY(( \inst2|ledr_delay\(3) ) + ( GND ) + ( \inst2|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(3),
	cin => \inst2|Add0~94\,
	sumout => \inst2|Add0~97_sumout\,
	cout => \inst2|Add0~98\);

-- Location: FF_X46_Y6_N41
\inst2|ledr_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~97_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(3));

-- Location: LABCELL_X46_Y6_N42
\inst2|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~101_sumout\ = SUM(( \inst2|ledr_delay\(4) ) + ( GND ) + ( \inst2|Add0~98\ ))
-- \inst2|Add0~102\ = CARRY(( \inst2|ledr_delay\(4) ) + ( GND ) + ( \inst2|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ledr_delay\(4),
	cin => \inst2|Add0~98\,
	sumout => \inst2|Add0~101_sumout\,
	cout => \inst2|Add0~102\);

-- Location: FF_X46_Y6_N43
\inst2|ledr_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~101_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(4));

-- Location: LABCELL_X46_Y6_N45
\inst2|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~33_sumout\ = SUM(( \inst2|ledr_delay\(5) ) + ( GND ) + ( \inst2|Add0~102\ ))
-- \inst2|Add0~34\ = CARRY(( \inst2|ledr_delay\(5) ) + ( GND ) + ( \inst2|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(5),
	cin => \inst2|Add0~102\,
	sumout => \inst2|Add0~33_sumout\,
	cout => \inst2|Add0~34\);

-- Location: FF_X46_Y6_N47
\inst2|ledr_delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~33_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(5));

-- Location: LABCELL_X46_Y6_N48
\inst2|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~37_sumout\ = SUM(( \inst2|ledr_delay\(6) ) + ( GND ) + ( \inst2|Add0~34\ ))
-- \inst2|Add0~38\ = CARRY(( \inst2|ledr_delay\(6) ) + ( GND ) + ( \inst2|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ledr_delay\(6),
	cin => \inst2|Add0~34\,
	sumout => \inst2|Add0~37_sumout\,
	cout => \inst2|Add0~38\);

-- Location: FF_X46_Y6_N50
\inst2|ledr_delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~37_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(6));

-- Location: LABCELL_X46_Y6_N51
\inst2|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~41_sumout\ = SUM(( \inst2|ledr_delay\(7) ) + ( GND ) + ( \inst2|Add0~38\ ))
-- \inst2|Add0~42\ = CARRY(( \inst2|ledr_delay\(7) ) + ( GND ) + ( \inst2|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ledr_delay\(7),
	cin => \inst2|Add0~38\,
	sumout => \inst2|Add0~41_sumout\,
	cout => \inst2|Add0~42\);

-- Location: FF_X46_Y6_N52
\inst2|ledr_delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~41_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(7));

-- Location: LABCELL_X46_Y6_N54
\inst2|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~45_sumout\ = SUM(( \inst2|ledr_delay[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~42\ ))
-- \inst2|Add0~46\ = CARRY(( \inst2|ledr_delay[8]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ledr_delay[8]~DUPLICATE_q\,
	cin => \inst2|Add0~42\,
	sumout => \inst2|Add0~45_sumout\,
	cout => \inst2|Add0~46\);

-- Location: LABCELL_X46_Y6_N57
\inst2|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~49_sumout\ = SUM(( \inst2|ledr_delay[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~46\ ))
-- \inst2|Add0~50\ = CARRY(( \inst2|ledr_delay[9]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay[9]~DUPLICATE_q\,
	cin => \inst2|Add0~46\,
	sumout => \inst2|Add0~49_sumout\,
	cout => \inst2|Add0~50\);

-- Location: FF_X46_Y6_N58
\inst2|ledr_delay[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~49_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[9]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y5_N0
\inst2|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~53_sumout\ = SUM(( \inst2|ledr_delay\(10) ) + ( GND ) + ( \inst2|Add0~50\ ))
-- \inst2|Add0~54\ = CARRY(( \inst2|ledr_delay\(10) ) + ( GND ) + ( \inst2|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(10),
	cin => \inst2|Add0~50\,
	sumout => \inst2|Add0~53_sumout\,
	cout => \inst2|Add0~54\);

-- Location: FF_X46_Y5_N2
\inst2|ledr_delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~53_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(10));

-- Location: LABCELL_X46_Y5_N3
\inst2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~9_sumout\ = SUM(( \inst2|ledr_delay\(11) ) + ( GND ) + ( \inst2|Add0~54\ ))
-- \inst2|Add0~10\ = CARRY(( \inst2|ledr_delay\(11) ) + ( GND ) + ( \inst2|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(11),
	cin => \inst2|Add0~54\,
	sumout => \inst2|Add0~9_sumout\,
	cout => \inst2|Add0~10\);

-- Location: FF_X46_Y5_N5
\inst2|ledr_delay[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~9_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(11));

-- Location: LABCELL_X46_Y5_N6
\inst2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~13_sumout\ = SUM(( \inst2|ledr_delay\(12) ) + ( GND ) + ( \inst2|Add0~10\ ))
-- \inst2|Add0~14\ = CARRY(( \inst2|ledr_delay\(12) ) + ( GND ) + ( \inst2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(12),
	cin => \inst2|Add0~10\,
	sumout => \inst2|Add0~13_sumout\,
	cout => \inst2|Add0~14\);

-- Location: FF_X46_Y5_N7
\inst2|ledr_delay[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~13_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(12));

-- Location: LABCELL_X46_Y5_N9
\inst2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~17_sumout\ = SUM(( \inst2|ledr_delay\(13) ) + ( GND ) + ( \inst2|Add0~14\ ))
-- \inst2|Add0~18\ = CARRY(( \inst2|ledr_delay\(13) ) + ( GND ) + ( \inst2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ledr_delay\(13),
	cin => \inst2|Add0~14\,
	sumout => \inst2|Add0~17_sumout\,
	cout => \inst2|Add0~18\);

-- Location: FF_X46_Y5_N11
\inst2|ledr_delay[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~17_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(13));

-- Location: FF_X46_Y5_N20
\inst2|ledr_delay[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~29_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(16));

-- Location: LABCELL_X46_Y5_N12
\inst2|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~21_sumout\ = SUM(( \inst2|ledr_delay\(14) ) + ( GND ) + ( \inst2|Add0~18\ ))
-- \inst2|Add0~22\ = CARRY(( \inst2|ledr_delay\(14) ) + ( GND ) + ( \inst2|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ledr_delay\(14),
	cin => \inst2|Add0~18\,
	sumout => \inst2|Add0~21_sumout\,
	cout => \inst2|Add0~22\);

-- Location: FF_X46_Y5_N14
\inst2|ledr_delay[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~21_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(14));

-- Location: LABCELL_X46_Y5_N15
\inst2|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~25_sumout\ = SUM(( \inst2|ledr_delay\(15) ) + ( GND ) + ( \inst2|Add0~22\ ))
-- \inst2|Add0~26\ = CARRY(( \inst2|ledr_delay\(15) ) + ( GND ) + ( \inst2|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(15),
	cin => \inst2|Add0~22\,
	sumout => \inst2|Add0~25_sumout\,
	cout => \inst2|Add0~26\);

-- Location: FF_X46_Y5_N16
\inst2|ledr_delay[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~25_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(15));

-- Location: LABCELL_X46_Y5_N18
\inst2|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~29_sumout\ = SUM(( \inst2|ledr_delay\(16) ) + ( GND ) + ( \inst2|Add0~26\ ))
-- \inst2|Add0~30\ = CARRY(( \inst2|ledr_delay\(16) ) + ( GND ) + ( \inst2|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(16),
	cin => \inst2|Add0~26\,
	sumout => \inst2|Add0~29_sumout\,
	cout => \inst2|Add0~30\);

-- Location: FF_X46_Y5_N19
\inst2|ledr_delay[16]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~29_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[16]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y6_N24
\inst2|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = ( !\inst2|ledr_delay\(15) & ( \inst2|ledr_delay\(14) & ( (\inst2|ledr_delay\(12) & (\inst2|ledr_delay\(11) & (\inst2|ledr_delay\(13) & \inst2|ledr_delay[16]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(12),
	datab => \inst2|ALT_INV_ledr_delay\(11),
	datac => \inst2|ALT_INV_ledr_delay\(13),
	datad => \inst2|ALT_INV_ledr_delay[16]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_ledr_delay\(15),
	dataf => \inst2|ALT_INV_ledr_delay\(14),
	combout => \inst2|Equal0~1_combout\);

-- Location: FF_X46_Y6_N32
\inst2|ledr_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~89_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(0));

-- Location: LABCELL_X46_Y5_N21
\inst2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~1_sumout\ = SUM(( \inst2|ledr_delay\(17) ) + ( GND ) + ( \inst2|Add0~30\ ))
-- \inst2|Add0~2\ = CARRY(( \inst2|ledr_delay\(17) ) + ( GND ) + ( \inst2|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(17),
	cin => \inst2|Add0~30\,
	sumout => \inst2|Add0~1_sumout\,
	cout => \inst2|Add0~2\);

-- Location: FF_X46_Y5_N22
\inst2|ledr_delay[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~1_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(17));

-- Location: LABCELL_X46_Y5_N24
\inst2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~5_sumout\ = SUM(( \inst2|ledr_delay\(18) ) + ( GND ) + ( \inst2|Add0~2\ ))
-- \inst2|Add0~6\ = CARRY(( \inst2|ledr_delay\(18) ) + ( GND ) + ( \inst2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(18),
	cin => \inst2|Add0~2\,
	sumout => \inst2|Add0~5_sumout\,
	cout => \inst2|Add0~6\);

-- Location: FF_X46_Y5_N26
\inst2|ledr_delay[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~5_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(18));

-- Location: LABCELL_X46_Y5_N27
\inst2|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~57_sumout\ = SUM(( \inst2|ledr_delay[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~6\ ))
-- \inst2|Add0~58\ = CARRY(( \inst2|ledr_delay[19]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay[19]~DUPLICATE_q\,
	cin => \inst2|Add0~6\,
	sumout => \inst2|Add0~57_sumout\,
	cout => \inst2|Add0~58\);

-- Location: FF_X46_Y5_N28
\inst2|ledr_delay[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~57_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[19]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y5_N30
\inst2|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~61_sumout\ = SUM(( \inst2|ledr_delay\(20) ) + ( GND ) + ( \inst2|Add0~58\ ))
-- \inst2|Add0~62\ = CARRY(( \inst2|ledr_delay\(20) ) + ( GND ) + ( \inst2|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ledr_delay\(20),
	cin => \inst2|Add0~58\,
	sumout => \inst2|Add0~61_sumout\,
	cout => \inst2|Add0~62\);

-- Location: FF_X46_Y5_N32
\inst2|ledr_delay[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~61_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(20));

-- Location: LABCELL_X46_Y5_N33
\inst2|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~65_sumout\ = SUM(( \inst2|ledr_delay\(21) ) + ( GND ) + ( \inst2|Add0~62\ ))
-- \inst2|Add0~66\ = CARRY(( \inst2|ledr_delay\(21) ) + ( GND ) + ( \inst2|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(21),
	cin => \inst2|Add0~62\,
	sumout => \inst2|Add0~65_sumout\,
	cout => \inst2|Add0~66\);

-- Location: FF_X46_Y5_N35
\inst2|ledr_delay[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~65_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(21));

-- Location: LABCELL_X46_Y5_N36
\inst2|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~69_sumout\ = SUM(( \inst2|ledr_delay\(22) ) + ( GND ) + ( \inst2|Add0~66\ ))
-- \inst2|Add0~70\ = CARRY(( \inst2|ledr_delay\(22) ) + ( GND ) + ( \inst2|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(22),
	cin => \inst2|Add0~66\,
	sumout => \inst2|Add0~69_sumout\,
	cout => \inst2|Add0~70\);

-- Location: FF_X46_Y5_N38
\inst2|ledr_delay[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~69_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(22));

-- Location: LABCELL_X46_Y5_N39
\inst2|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~73_sumout\ = SUM(( \inst2|ledr_delay[23]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~70\ ))
-- \inst2|Add0~74\ = CARRY(( \inst2|ledr_delay[23]~DUPLICATE_q\ ) + ( GND ) + ( \inst2|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay[23]~DUPLICATE_q\,
	cin => \inst2|Add0~70\,
	sumout => \inst2|Add0~73_sumout\,
	cout => \inst2|Add0~74\);

-- Location: FF_X46_Y5_N40
\inst2|ledr_delay[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~73_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[23]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y5_N42
\inst2|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~77_sumout\ = SUM(( \inst2|ledr_delay\(24) ) + ( GND ) + ( \inst2|Add0~74\ ))
-- \inst2|Add0~78\ = CARRY(( \inst2|ledr_delay\(24) ) + ( GND ) + ( \inst2|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_ledr_delay\(24),
	cin => \inst2|Add0~74\,
	sumout => \inst2|Add0~77_sumout\,
	cout => \inst2|Add0~78\);

-- Location: FF_X46_Y5_N44
\inst2|ledr_delay[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~77_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(24));

-- Location: LABCELL_X46_Y5_N45
\inst2|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add0~81_sumout\ = SUM(( \inst2|ledr_delay\(25) ) + ( GND ) + ( \inst2|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_ledr_delay\(25),
	cin => \inst2|Add0~78\,
	sumout => \inst2|Add0~81_sumout\);

-- Location: FF_X46_Y5_N47
\inst2|ledr_delay[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~81_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(25));

-- Location: LABCELL_X46_Y6_N6
\inst2|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = ( !\inst2|ledr_delay\(4) & ( !\inst2|ledr_delay\(25) & ( (!\inst2|ledr_delay\(2) & (!\inst2|ledr_delay\(0) & (!\inst2|ledr_delay\(1) & !\inst2|ledr_delay\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(2),
	datab => \inst2|ALT_INV_ledr_delay\(0),
	datac => \inst2|ALT_INV_ledr_delay\(1),
	datad => \inst2|ALT_INV_ledr_delay\(3),
	datae => \inst2|ALT_INV_ledr_delay\(4),
	dataf => \inst2|ALT_INV_ledr_delay\(25),
	combout => \inst2|Equal0~4_combout\);

-- Location: FF_X46_Y5_N41
\inst2|ledr_delay[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~73_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(23));

-- Location: FF_X46_Y5_N29
\inst2|ledr_delay[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~57_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(19));

-- Location: LABCELL_X46_Y5_N48
\inst2|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = ( \inst2|ledr_delay\(19) & ( \inst2|ledr_delay\(20) & ( (\inst2|ledr_delay\(22) & (\inst2|ledr_delay\(24) & (\inst2|ledr_delay\(21) & !\inst2|ledr_delay\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(22),
	datab => \inst2|ALT_INV_ledr_delay\(24),
	datac => \inst2|ALT_INV_ledr_delay\(21),
	datad => \inst2|ALT_INV_ledr_delay\(23),
	datae => \inst2|ALT_INV_ledr_delay\(19),
	dataf => \inst2|ALT_INV_ledr_delay\(20),
	combout => \inst2|Equal0~3_combout\);

-- Location: LABCELL_X46_Y6_N15
\inst2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = ( !\inst2|ledr_delay\(17) & ( \inst2|ledr_delay\(18) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_ledr_delay\(18),
	dataf => \inst2|ALT_INV_ledr_delay\(17),
	combout => \inst2|Equal0~0_combout\);

-- Location: LABCELL_X46_Y6_N12
\inst2|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = ( \inst2|Equal0~0_combout\ & ( (\inst2|Equal0~1_combout\ & (\inst2|Equal0~4_combout\ & (\inst2|Equal0~2_combout\ & \inst2|Equal0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~1_combout\,
	datab => \inst2|ALT_INV_Equal0~4_combout\,
	datac => \inst2|ALT_INV_Equal0~2_combout\,
	datad => \inst2|ALT_INV_Equal0~3_combout\,
	dataf => \inst2|ALT_INV_Equal0~0_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: FF_X46_Y6_N55
\inst2|ledr_delay[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~45_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[8]~DUPLICATE_q\);

-- Location: FF_X46_Y6_N56
\inst2|ledr_delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~45_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(8));

-- Location: FF_X46_Y6_N59
\inst2|ledr_delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~49_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay\(9));

-- Location: FF_X46_Y5_N1
\inst2|ledr_delay[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst2|Add0~53_sumout\,
	sclr => \inst2|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_delay[10]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y6_N18
\inst2|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = ( !\inst2|ledr_delay\(7) & ( !\inst2|ledr_delay[10]~DUPLICATE_q\ & ( (!\inst2|ledr_delay\(8) & (!\inst2|ledr_delay\(9) & (\inst2|ledr_delay\(6) & !\inst2|ledr_delay\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_ledr_delay\(8),
	datab => \inst2|ALT_INV_ledr_delay\(9),
	datac => \inst2|ALT_INV_ledr_delay\(6),
	datad => \inst2|ALT_INV_ledr_delay\(5),
	datae => \inst2|ALT_INV_ledr_delay\(7),
	dataf => \inst2|ALT_INV_ledr_delay[10]~DUPLICATE_q\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LABCELL_X46_Y6_N0
\inst2|ledr_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr_reg~0_combout\ = ( \inst2|Equal0~3_combout\ & ( \inst2|ledr_reg~q\ & ( (!\inst2|Equal0~2_combout\) # ((!\inst2|Equal0~4_combout\) # ((!\inst2|Equal0~1_combout\) # (!\inst2|Equal0~0_combout\))) ) ) ) # ( !\inst2|Equal0~3_combout\ & ( 
-- \inst2|ledr_reg~q\ ) ) # ( \inst2|Equal0~3_combout\ & ( !\inst2|ledr_reg~q\ & ( (\inst2|Equal0~2_combout\ & (\inst2|Equal0~4_combout\ & (\inst2|Equal0~1_combout\ & \inst2|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000111111111111111111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_Equal0~2_combout\,
	datab => \inst2|ALT_INV_Equal0~4_combout\,
	datac => \inst2|ALT_INV_Equal0~1_combout\,
	datad => \inst2|ALT_INV_Equal0~0_combout\,
	datae => \inst2|ALT_INV_Equal0~3_combout\,
	dataf => \inst2|ALT_INV_ledr_reg~q\,
	combout => \inst2|ledr_reg~0_combout\);

-- Location: FF_X46_Y6_N23
\inst2|ledr_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst2|ledr_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|ledr_reg~q\);

-- Location: MLABCELL_X47_Y6_N0
\inst2|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~1_sumout\ = SUM(( \inst2|cont\(0) ) + ( VCC ) + ( !VCC ))
-- \inst2|Add1~2\ = CARRY(( \inst2|cont\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst2|ALT_INV_cont\(0),
	cin => GND,
	sumout => \inst2|Add1~1_sumout\,
	cout => \inst2|Add1~2\);

-- Location: LABCELL_X48_Y6_N12
\inst2|sobe~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sobe~_wirecell_combout\ = ( !\inst2|sobe~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst2|ALT_INV_sobe~q\,
	combout => \inst2|sobe~_wirecell_combout\);

-- Location: FF_X47_Y6_N1
\inst2|cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~1_sumout\,
	asdata => \inst2|sobe~_wirecell_combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(0));

-- Location: MLABCELL_X47_Y6_N3
\inst2|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~9_sumout\ = SUM(( \inst2|cont\(1) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~2\ ))
-- \inst2|Add1~10\ = CARRY(( \inst2|cont\(1) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_sobe~q\,
	datab => \inst2|ALT_INV_cont\(1),
	cin => \inst2|Add1~2\,
	sumout => \inst2|Add1~9_sumout\,
	cout => \inst2|Add1~10\);

-- Location: MLABCELL_X47_Y6_N6
\inst2|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~5_sumout\ = SUM(( \inst2|cont\(2) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~10\ ))
-- \inst2|Add1~6\ = CARRY(( \inst2|cont\(2) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(2),
	cin => \inst2|Add1~10\,
	sumout => \inst2|Add1~5_sumout\,
	cout => \inst2|Add1~6\);

-- Location: MLABCELL_X47_Y6_N9
\inst2|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~81_sumout\ = SUM(( \inst2|cont\(3) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~6\ ))
-- \inst2|Add1~82\ = CARRY(( \inst2|cont\(3) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(3),
	cin => \inst2|Add1~6\,
	sumout => \inst2|Add1~81_sumout\,
	cout => \inst2|Add1~82\);

-- Location: LABCELL_X46_Y5_N54
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X47_Y6_N10
\inst2|cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~81_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(3));

-- Location: MLABCELL_X47_Y6_N12
\inst2|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~85_sumout\ = SUM(( \inst2|cont\(4) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~82\ ))
-- \inst2|Add1~86\ = CARRY(( \inst2|cont\(4) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(4),
	cin => \inst2|Add1~82\,
	sumout => \inst2|Add1~85_sumout\,
	cout => \inst2|Add1~86\);

-- Location: FF_X47_Y6_N14
\inst2|cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~85_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(4));

-- Location: MLABCELL_X47_Y6_N15
\inst2|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~89_sumout\ = SUM(( \inst2|cont\(5) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~86\ ))
-- \inst2|Add1~90\ = CARRY(( \inst2|cont\(5) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(5),
	cin => \inst2|Add1~86\,
	sumout => \inst2|Add1~89_sumout\,
	cout => \inst2|Add1~90\);

-- Location: FF_X47_Y6_N16
\inst2|cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~89_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(5));

-- Location: MLABCELL_X47_Y6_N18
\inst2|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~93_sumout\ = SUM(( \inst2|cont\(6) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~90\ ))
-- \inst2|Add1~94\ = CARRY(( \inst2|cont\(6) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(6),
	cin => \inst2|Add1~90\,
	sumout => \inst2|Add1~93_sumout\,
	cout => \inst2|Add1~94\);

-- Location: FF_X47_Y6_N19
\inst2|cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~93_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(6));

-- Location: MLABCELL_X47_Y6_N21
\inst2|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~97_sumout\ = SUM(( \inst2|cont\(7) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~94\ ))
-- \inst2|Add1~98\ = CARRY(( \inst2|cont\(7) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(7),
	cin => \inst2|Add1~94\,
	sumout => \inst2|Add1~97_sumout\,
	cout => \inst2|Add1~98\);

-- Location: FF_X47_Y6_N22
\inst2|cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~97_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(7));

-- Location: MLABCELL_X47_Y6_N24
\inst2|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~101_sumout\ = SUM(( \inst2|cont\(8) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~98\ ))
-- \inst2|Add1~102\ = CARRY(( \inst2|cont\(8) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(8),
	cin => \inst2|Add1~98\,
	sumout => \inst2|Add1~101_sumout\,
	cout => \inst2|Add1~102\);

-- Location: FF_X47_Y6_N25
\inst2|cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~101_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(8));

-- Location: MLABCELL_X47_Y6_N27
\inst2|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~105_sumout\ = SUM(( \inst2|cont\(9) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~102\ ))
-- \inst2|Add1~106\ = CARRY(( \inst2|cont\(9) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(9),
	cin => \inst2|Add1~102\,
	sumout => \inst2|Add1~105_sumout\,
	cout => \inst2|Add1~106\);

-- Location: FF_X47_Y6_N28
\inst2|cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~105_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(9));

-- Location: MLABCELL_X47_Y6_N30
\inst2|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~109_sumout\ = SUM(( \inst2|cont\(10) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~106\ ))
-- \inst2|Add1~110\ = CARRY(( \inst2|cont\(10) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(10),
	cin => \inst2|Add1~106\,
	sumout => \inst2|Add1~109_sumout\,
	cout => \inst2|Add1~110\);

-- Location: FF_X47_Y6_N31
\inst2|cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~109_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(10));

-- Location: MLABCELL_X47_Y6_N33
\inst2|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~113_sumout\ = SUM(( \inst2|cont\(11) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~110\ ))
-- \inst2|Add1~114\ = CARRY(( \inst2|cont\(11) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(11),
	datab => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~110\,
	sumout => \inst2|Add1~113_sumout\,
	cout => \inst2|Add1~114\);

-- Location: FF_X47_Y6_N35
\inst2|cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~113_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(11));

-- Location: MLABCELL_X47_Y6_N36
\inst2|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~117_sumout\ = SUM(( \inst2|cont\(12) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~114\ ))
-- \inst2|Add1~118\ = CARRY(( \inst2|cont\(12) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(12),
	cin => \inst2|Add1~114\,
	sumout => \inst2|Add1~117_sumout\,
	cout => \inst2|Add1~118\);

-- Location: FF_X47_Y6_N37
\inst2|cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~117_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(12));

-- Location: MLABCELL_X47_Y6_N39
\inst2|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~121_sumout\ = SUM(( \inst2|cont\(13) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~118\ ))
-- \inst2|Add1~122\ = CARRY(( \inst2|cont\(13) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(13),
	cin => \inst2|Add1~118\,
	sumout => \inst2|Add1~121_sumout\,
	cout => \inst2|Add1~122\);

-- Location: FF_X47_Y6_N40
\inst2|cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~121_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(13));

-- Location: MLABCELL_X47_Y6_N42
\inst2|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~13_sumout\ = SUM(( \inst2|cont\(14) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~122\ ))
-- \inst2|Add1~14\ = CARRY(( \inst2|cont\(14) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(14),
	cin => \inst2|Add1~122\,
	sumout => \inst2|Add1~13_sumout\,
	cout => \inst2|Add1~14\);

-- Location: FF_X47_Y6_N44
\inst2|cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~13_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(14));

-- Location: FF_X47_Y5_N4
\inst2|cont[21]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~33_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[21]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y6_N45
\inst2|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~57_sumout\ = SUM(( \inst2|cont[15]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~14\ ))
-- \inst2|Add1~58\ = CARRY(( \inst2|cont[15]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont[15]~DUPLICATE_q\,
	cin => \inst2|Add1~14\,
	sumout => \inst2|Add1~57_sumout\,
	cout => \inst2|Add1~58\);

-- Location: FF_X47_Y6_N46
\inst2|cont[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~57_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[15]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y6_N48
\inst2|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~61_sumout\ = SUM(( \inst2|cont\(16) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~58\ ))
-- \inst2|Add1~62\ = CARRY(( \inst2|cont\(16) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(16),
	cin => \inst2|Add1~58\,
	sumout => \inst2|Add1~61_sumout\,
	cout => \inst2|Add1~62\);

-- Location: FF_X47_Y6_N49
\inst2|cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~61_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(16));

-- Location: MLABCELL_X47_Y6_N51
\inst2|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~65_sumout\ = SUM(( \inst2|cont\(17) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~62\ ))
-- \inst2|Add1~66\ = CARRY(( \inst2|cont\(17) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(17),
	datab => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~62\,
	sumout => \inst2|Add1~65_sumout\,
	cout => \inst2|Add1~66\);

-- Location: FF_X47_Y6_N53
\inst2|cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~65_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(17));

-- Location: MLABCELL_X47_Y6_N54
\inst2|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~69_sumout\ = SUM(( \inst2|cont\(18) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~66\ ))
-- \inst2|Add1~70\ = CARRY(( \inst2|cont\(18) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(18),
	cin => \inst2|Add1~66\,
	sumout => \inst2|Add1~69_sumout\,
	cout => \inst2|Add1~70\);

-- Location: FF_X47_Y6_N56
\inst2|cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~69_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(18));

-- Location: MLABCELL_X47_Y6_N57
\inst2|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~73_sumout\ = SUM(( \inst2|cont\(19) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~70\ ))
-- \inst2|Add1~74\ = CARRY(( \inst2|cont\(19) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(19),
	datab => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~70\,
	sumout => \inst2|Add1~73_sumout\,
	cout => \inst2|Add1~74\);

-- Location: FF_X47_Y6_N58
\inst2|cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~73_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(19));

-- Location: MLABCELL_X47_Y5_N0
\inst2|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~77_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(20) ) + ( \inst2|Add1~74\ ))
-- \inst2|Add1~78\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(20) ) + ( \inst2|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(20),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~74\,
	sumout => \inst2|Add1~77_sumout\,
	cout => \inst2|Add1~78\);

-- Location: FF_X47_Y5_N2
\inst2|cont[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~77_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(20));

-- Location: MLABCELL_X47_Y5_N3
\inst2|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~33_sumout\ = SUM(( \inst2|cont[21]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~78\ ))
-- \inst2|Add1~34\ = CARRY(( \inst2|cont[21]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont[21]~DUPLICATE_q\,
	cin => \inst2|Add1~78\,
	sumout => \inst2|Add1~33_sumout\,
	cout => \inst2|Add1~34\);

-- Location: FF_X47_Y5_N5
\inst2|cont[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~33_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(21));

-- Location: MLABCELL_X47_Y5_N6
\inst2|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~37_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(22) ) + ( \inst2|Add1~34\ ))
-- \inst2|Add1~38\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(22) ) + ( \inst2|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_cont\(22),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~34\,
	sumout => \inst2|Add1~37_sumout\,
	cout => \inst2|Add1~38\);

-- Location: FF_X47_Y5_N8
\inst2|cont[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~37_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(22));

-- Location: MLABCELL_X47_Y5_N9
\inst2|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~41_sumout\ = SUM(( \inst2|cont\(23) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~38\ ))
-- \inst2|Add1~42\ = CARRY(( \inst2|cont\(23) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(23),
	cin => \inst2|Add1~38\,
	sumout => \inst2|Add1~41_sumout\,
	cout => \inst2|Add1~42\);

-- Location: FF_X47_Y5_N10
\inst2|cont[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~41_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(23));

-- Location: MLABCELL_X47_Y5_N12
\inst2|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~45_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(24) ) + ( \inst2|Add1~42\ ))
-- \inst2|Add1~46\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(24) ) + ( \inst2|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_cont\(24),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~42\,
	sumout => \inst2|Add1~45_sumout\,
	cout => \inst2|Add1~46\);

-- Location: FF_X47_Y5_N14
\inst2|cont[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~45_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(24));

-- Location: MLABCELL_X47_Y5_N15
\inst2|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~49_sumout\ = SUM(( \inst2|cont[25]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~46\ ))
-- \inst2|Add1~50\ = CARRY(( \inst2|cont[25]~DUPLICATE_q\ ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont[25]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~46\,
	sumout => \inst2|Add1~49_sumout\,
	cout => \inst2|Add1~50\);

-- Location: FF_X47_Y5_N16
\inst2|cont[25]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~49_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[25]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y5_N18
\inst2|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~53_sumout\ = SUM(( \inst2|cont\(26) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~50\ ))
-- \inst2|Add1~54\ = CARRY(( \inst2|cont\(26) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(26),
	cin => \inst2|Add1~50\,
	sumout => \inst2|Add1~53_sumout\,
	cout => \inst2|Add1~54\);

-- Location: FF_X47_Y5_N20
\inst2|cont[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~53_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(26));

-- Location: FF_X47_Y5_N17
\inst2|cont[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~49_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(25));

-- Location: MLABCELL_X47_Y5_N42
\inst2|cont[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~1_combout\ = ( !\inst2|cont\(23) & ( !\inst2|cont\(25) & ( (!\inst2|cont\(21) & (!\inst2|cont\(22) & (!\inst2|cont\(26) & !\inst2|cont\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(21),
	datab => \inst2|ALT_INV_cont\(22),
	datac => \inst2|ALT_INV_cont\(26),
	datad => \inst2|ALT_INV_cont\(24),
	datae => \inst2|ALT_INV_cont\(23),
	dataf => \inst2|ALT_INV_cont\(25),
	combout => \inst2|cont[2]~1_combout\);

-- Location: FF_X47_Y6_N34
\inst2|cont[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~113_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[11]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y6_N42
\inst2|cont[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~4_combout\ = ( !\inst2|cont\(9) & ( !\inst2|cont\(10) & ( (!\inst2|cont\(12) & (!\inst2|cont\(13) & !\inst2|cont[11]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(12),
	datac => \inst2|ALT_INV_cont\(13),
	datad => \inst2|ALT_INV_cont[11]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_cont\(9),
	dataf => \inst2|ALT_INV_cont\(10),
	combout => \inst2|cont[2]~4_combout\);

-- Location: MLABCELL_X47_Y5_N21
\inst2|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~17_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(27) ) + ( \inst2|Add1~54\ ))
-- \inst2|Add1~18\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(27) ) + ( \inst2|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_cont\(27),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~54\,
	sumout => \inst2|Add1~17_sumout\,
	cout => \inst2|Add1~18\);

-- Location: FF_X47_Y5_N22
\inst2|cont[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~17_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(27));

-- Location: MLABCELL_X47_Y5_N24
\inst2|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~21_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(28) ) + ( \inst2|Add1~18\ ))
-- \inst2|Add1~22\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(28) ) + ( \inst2|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_cont\(28),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~18\,
	sumout => \inst2|Add1~21_sumout\,
	cout => \inst2|Add1~22\);

-- Location: FF_X47_Y5_N25
\inst2|cont[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~21_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(28));

-- Location: MLABCELL_X47_Y5_N27
\inst2|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~25_sumout\ = SUM(( !\inst2|sobe~q\ ) + ( \inst2|cont\(29) ) + ( \inst2|Add1~22\ ))
-- \inst2|Add1~26\ = CARRY(( !\inst2|sobe~q\ ) + ( \inst2|cont\(29) ) + ( \inst2|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_cont\(29),
	datad => \inst2|ALT_INV_sobe~q\,
	cin => \inst2|Add1~22\,
	sumout => \inst2|Add1~25_sumout\,
	cout => \inst2|Add1~26\);

-- Location: FF_X47_Y5_N28
\inst2|cont[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~25_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(29));

-- Location: MLABCELL_X47_Y5_N30
\inst2|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|Add1~29_sumout\ = SUM(( \inst2|cont\(30) ) + ( !\inst2|sobe~q\ ) + ( \inst2|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_sobe~q\,
	datac => \inst2|ALT_INV_cont\(30),
	cin => \inst2|Add1~26\,
	sumout => \inst2|Add1~29_sumout\);

-- Location: FF_X47_Y5_N31
\inst2|cont[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~29_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(30));

-- Location: LABCELL_X48_Y5_N36
\inst2|cont[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~0_combout\ = ( !\inst2|cont\(27) & ( !\inst2|cont\(28) & ( (!\inst2|cont\(29) & !\inst2|cont\(30)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(29),
	datac => \inst2|ALT_INV_cont\(30),
	datae => \inst2|ALT_INV_cont\(27),
	dataf => \inst2|ALT_INV_cont\(28),
	combout => \inst2|cont[2]~0_combout\);

-- Location: FF_X47_Y6_N47
\inst2|cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~57_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(15));

-- Location: FF_X47_Y6_N52
\inst2|cont[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~65_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[17]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y5_N36
\inst2|cont[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~2_combout\ = ( !\inst2|cont\(18) & ( !\inst2|cont\(19) & ( (!\inst2|cont\(20) & (!\inst2|cont\(16) & (!\inst2|cont\(15) & !\inst2|cont[17]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(20),
	datab => \inst2|ALT_INV_cont\(16),
	datac => \inst2|ALT_INV_cont\(15),
	datad => \inst2|ALT_INV_cont[17]~DUPLICATE_q\,
	datae => \inst2|ALT_INV_cont\(18),
	dataf => \inst2|ALT_INV_cont\(19),
	combout => \inst2|cont[2]~2_combout\);

-- Location: FF_X47_Y6_N13
\inst2|cont[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~85_sumout\,
	asdata => \~GND~combout\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[4]~DUPLICATE_q\);

-- Location: LABCELL_X48_Y6_N30
\inst2|cont[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~3_combout\ = ( !\inst2|cont[4]~DUPLICATE_q\ & ( !\inst2|cont\(8) & ( (!\inst2|cont\(7) & (!\inst2|cont\(5) & (!\inst2|cont\(3) & !\inst2|cont\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(7),
	datab => \inst2|ALT_INV_cont\(5),
	datac => \inst2|ALT_INV_cont\(3),
	datad => \inst2|ALT_INV_cont\(6),
	datae => \inst2|ALT_INV_cont[4]~DUPLICATE_q\,
	dataf => \inst2|ALT_INV_cont\(8),
	combout => \inst2|cont[2]~3_combout\);

-- Location: MLABCELL_X47_Y5_N48
\inst2|cont[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~5_combout\ = ( \inst2|cont[2]~2_combout\ & ( \inst2|cont[2]~3_combout\ & ( (!\inst2|cont\(14) & (\inst2|cont[2]~1_combout\ & (\inst2|cont[2]~4_combout\ & \inst2|cont[2]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(14),
	datab => \inst2|ALT_INV_cont[2]~1_combout\,
	datac => \inst2|ALT_INV_cont[2]~4_combout\,
	datad => \inst2|ALT_INV_cont[2]~0_combout\,
	datae => \inst2|ALT_INV_cont[2]~2_combout\,
	dataf => \inst2|ALT_INV_cont[2]~3_combout\,
	combout => \inst2|cont[2]~5_combout\);

-- Location: MLABCELL_X47_Y5_N54
\inst2|cont[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[2]~6_combout\ = ( \inst2|cont[2]~5_combout\ & ( (!\inst2|cont[1]~DUPLICATE_q\ & (!\inst2|cont\(2) & (!\inst2|cont\(0) & !\inst2|sobe~q\))) # (\inst2|cont[1]~DUPLICATE_q\ & (\inst2|cont\(2) & (\inst2|cont\(0) & \inst2|sobe~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000011000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_cont\(2),
	datac => \inst2|ALT_INV_cont\(0),
	datad => \inst2|ALT_INV_sobe~q\,
	dataf => \inst2|ALT_INV_cont[2]~5_combout\,
	combout => \inst2|cont[2]~6_combout\);

-- Location: FF_X48_Y6_N59
\inst2|cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|cont[1]~feeder_combout\,
	asdata => \inst2|sobe~q\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(1));

-- Location: LABCELL_X48_Y6_N57
\inst2|cont[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|cont[1]~feeder_combout\ = \inst2|Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst2|ALT_INV_Add1~9_sumout\,
	combout => \inst2|cont[1]~feeder_combout\);

-- Location: FF_X48_Y6_N58
\inst2|cont[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|cont[1]~feeder_combout\,
	asdata => \inst2|sobe~q\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont[1]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y5_N57
\inst2|sobe~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|sobe~0_combout\ = ( \inst2|cont[2]~5_combout\ & ( (!\inst2|cont[1]~DUPLICATE_q\ & (((!\inst2|cont\(2) & !\inst2|cont\(0))) # (\inst2|sobe~q\))) # (\inst2|cont[1]~DUPLICATE_q\ & (\inst2|sobe~q\ & ((!\inst2|cont\(2)) # (!\inst2|cont\(0))))) ) ) # ( 
-- !\inst2|cont[2]~5_combout\ & ( \inst2|sobe~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111110001111000011101000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	datab => \inst2|ALT_INV_cont\(2),
	datac => \inst2|ALT_INV_sobe~q\,
	datad => \inst2|ALT_INV_cont\(0),
	dataf => \inst2|ALT_INV_cont[2]~5_combout\,
	combout => \inst2|sobe~0_combout\);

-- Location: FF_X47_Y6_N5
\inst2|sobe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	asdata => \inst2|sobe~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sobe~q\);

-- Location: FF_X47_Y6_N7
\inst2|cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst2|ledr_reg~q\,
	d => \inst2|Add1~5_sumout\,
	asdata => \inst2|sobe~q\,
	sload => \inst2|cont[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|cont\(2));

-- Location: FF_X45_Y4_N35
\inst|led_delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay\(2));

-- Location: LABCELL_X45_Y4_N33
\inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = ( \inst|led_delay\(1) & ( !\inst|led_delay[0]~DUPLICATE_q\ $ (!\inst|led_delay\(2)) ) ) # ( !\inst|led_delay\(1) & ( \inst|led_delay\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_delay[0]~DUPLICATE_q\,
	datad => \inst|ALT_INV_led_delay\(2),
	dataf => \inst|ALT_INV_led_delay\(1),
	combout => \inst|Add0~1_combout\);

-- Location: FF_X45_Y4_N34
\inst|led_delay[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay[2]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y4_N42
\inst|led_delay~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_delay~1_combout\ = ( \inst|led_delay\(1) & ( !\inst|led_delay\(3) $ (((!\inst|led_delay[0]~DUPLICATE_q\) # (!\inst|led_delay[2]~DUPLICATE_q\))) ) ) # ( !\inst|led_delay\(1) & ( (\inst|led_delay\(3) & (((!\inst|led_delay[4]~DUPLICATE_q\) # 
-- (\inst|led_delay[2]~DUPLICATE_q\)) # (\inst|led_delay[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_delay[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_led_delay[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_led_delay[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_led_delay\(3),
	dataf => \inst|ALT_INV_led_delay\(1),
	combout => \inst|led_delay~1_combout\);

-- Location: FF_X45_Y4_N44
\inst|led_delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|led_delay~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay\(3));

-- Location: FF_X45_Y4_N47
\inst|led_delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|led_delay~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay\(4));

-- Location: LABCELL_X45_Y4_N45
\inst|led_delay~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_delay~2_combout\ = ( \inst|led_delay\(1) & ( !\inst|led_delay\(4) $ (((!\inst|led_delay[0]~DUPLICATE_q\) # ((!\inst|led_delay[2]~DUPLICATE_q\) # (!\inst|led_delay\(3))))) ) ) # ( !\inst|led_delay\(1) & ( (\inst|led_delay\(4) & 
-- (((!\inst|led_delay\(3)) # (\inst|led_delay[2]~DUPLICATE_q\)) # (\inst|led_delay[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011100000001111111100000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_delay[0]~DUPLICATE_q\,
	datab => \inst|ALT_INV_led_delay[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_led_delay\(3),
	datad => \inst|ALT_INV_led_delay\(4),
	dataf => \inst|ALT_INV_led_delay\(1),
	combout => \inst|led_delay~2_combout\);

-- Location: FF_X45_Y4_N46
\inst|led_delay[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|led_delay~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay[4]~DUPLICATE_q\);

-- Location: FF_X45_Y4_N22
\inst|led_delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|led_delay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay\(0));

-- Location: LABCELL_X45_Y4_N21
\inst|led_delay~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_delay~0_combout\ = ( !\inst|led_delay\(0) & ( \inst|led_delay\(1) ) ) # ( !\inst|led_delay\(0) & ( !\inst|led_delay\(1) & ( (!\inst|led_delay[4]~DUPLICATE_q\) # ((!\inst|led_delay\(3)) # (\inst|led_delay[2]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111011000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_delay[4]~DUPLICATE_q\,
	datab => \inst|ALT_INV_led_delay[2]~DUPLICATE_q\,
	datac => \inst|ALT_INV_led_delay\(3),
	datae => \inst|ALT_INV_led_delay\(0),
	dataf => \inst|ALT_INV_led_delay\(1),
	combout => \inst|led_delay~0_combout\);

-- Location: FF_X45_Y4_N23
\inst|led_delay[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|led_delay~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay[0]~DUPLICATE_q\);

-- Location: LABCELL_X45_Y4_N36
\inst|Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = ( \inst|led_delay[0]~DUPLICATE_q\ & ( !\inst|led_delay\(1) ) ) # ( !\inst|led_delay[0]~DUPLICATE_q\ & ( \inst|led_delay\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay\(1),
	dataf => \inst|ALT_INV_led_delay[0]~DUPLICATE_q\,
	combout => \inst|Add0~0_combout\);

-- Location: FF_X45_Y4_N38
\inst|led_delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay\(1));

-- Location: LABCELL_X45_Y4_N12
\inst|clk_1us1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_1us1~0_combout\ = ( \inst|led_delay\(4) & ( \inst|clk_1us1~q\ & ( (((!\inst|led_delay\(3)) # (\inst|led_delay\(2))) # (\inst|led_delay\(0))) # (\inst|led_delay\(1)) ) ) ) # ( !\inst|led_delay\(4) & ( \inst|clk_1us1~q\ ) ) # ( \inst|led_delay\(4) 
-- & ( !\inst|clk_1us1~q\ & ( (!\inst|led_delay\(1) & (!\inst|led_delay\(0) & (!\inst|led_delay\(2) & \inst|led_delay\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000011111111111111111111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_delay\(1),
	datab => \inst|ALT_INV_led_delay\(0),
	datac => \inst|ALT_INV_led_delay\(2),
	datad => \inst|ALT_INV_led_delay\(3),
	datae => \inst|ALT_INV_led_delay\(4),
	dataf => \inst|ALT_INV_clk_1us1~q\,
	combout => \inst|clk_1us1~0_combout\);

-- Location: FF_X45_Y4_N59
\inst|clk_1us1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst|clk_1us1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_1us1~q\);

-- Location: FF_X43_Y4_N29
\inst|led_delay100[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add1~1_sumout\,
	sclr => \inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(9));

-- Location: LABCELL_X43_Y4_N0
\inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~25_sumout\ = SUM(( \inst|led_delay100\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add1~26\ = CARRY(( \inst|led_delay100\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(0),
	cin => GND,
	sumout => \inst|Add1~25_sumout\,
	cout => \inst|Add1~26\);

-- Location: FF_X43_Y4_N59
\inst|led_delay100[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~25_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(0));

-- Location: LABCELL_X43_Y4_N3
\inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~29_sumout\ = SUM(( \inst|led_delay100\(1) ) + ( GND ) + ( \inst|Add1~26\ ))
-- \inst|Add1~30\ = CARRY(( \inst|led_delay100\(1) ) + ( GND ) + ( \inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_led_delay100\(1),
	cin => \inst|Add1~26\,
	sumout => \inst|Add1~29_sumout\,
	cout => \inst|Add1~30\);

-- Location: FF_X43_Y4_N44
\inst|led_delay100[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~29_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(1));

-- Location: LABCELL_X43_Y4_N6
\inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~33_sumout\ = SUM(( \inst|led_delay100\(2) ) + ( GND ) + ( \inst|Add1~30\ ))
-- \inst|Add1~34\ = CARRY(( \inst|led_delay100\(2) ) + ( GND ) + ( \inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(2),
	cin => \inst|Add1~30\,
	sumout => \inst|Add1~33_sumout\,
	cout => \inst|Add1~34\);

-- Location: FF_X43_Y4_N52
\inst|led_delay100[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~33_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(2));

-- Location: LABCELL_X43_Y4_N9
\inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~37_sumout\ = SUM(( \inst|led_delay100\(3) ) + ( GND ) + ( \inst|Add1~34\ ))
-- \inst|Add1~38\ = CARRY(( \inst|led_delay100\(3) ) + ( GND ) + ( \inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(3),
	cin => \inst|Add1~34\,
	sumout => \inst|Add1~37_sumout\,
	cout => \inst|Add1~38\);

-- Location: FF_X43_Y4_N37
\inst|led_delay100[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~37_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(3));

-- Location: LABCELL_X43_Y4_N12
\inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~41_sumout\ = SUM(( \inst|led_delay100\(4) ) + ( GND ) + ( \inst|Add1~38\ ))
-- \inst|Add1~42\ = CARRY(( \inst|led_delay100\(4) ) + ( GND ) + ( \inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(4),
	cin => \inst|Add1~38\,
	sumout => \inst|Add1~41_sumout\,
	cout => \inst|Add1~42\);

-- Location: FF_X43_Y4_N56
\inst|led_delay100[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~41_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(4));

-- Location: LABCELL_X43_Y4_N15
\inst|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~45_sumout\ = SUM(( \inst|led_delay100\(5) ) + ( GND ) + ( \inst|Add1~42\ ))
-- \inst|Add1~46\ = CARRY(( \inst|led_delay100\(5) ) + ( GND ) + ( \inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_led_delay100\(5),
	cin => \inst|Add1~42\,
	sumout => \inst|Add1~45_sumout\,
	cout => \inst|Add1~46\);

-- Location: FF_X43_Y4_N41
\inst|led_delay100[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~45_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(5));

-- Location: LABCELL_X43_Y4_N18
\inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~13_sumout\ = SUM(( \inst|led_delay100\(6) ) + ( GND ) + ( \inst|Add1~46\ ))
-- \inst|Add1~14\ = CARRY(( \inst|led_delay100\(6) ) + ( GND ) + ( \inst|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(6),
	cin => \inst|Add1~46\,
	sumout => \inst|Add1~13_sumout\,
	cout => \inst|Add1~14\);

-- Location: LABCELL_X43_Y4_N21
\inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~17_sumout\ = SUM(( \inst|led_delay100\(7) ) + ( GND ) + ( \inst|Add1~14\ ))
-- \inst|Add1~18\ = CARRY(( \inst|led_delay100\(7) ) + ( GND ) + ( \inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(7),
	cin => \inst|Add1~14\,
	sumout => \inst|Add1~17_sumout\,
	cout => \inst|Add1~18\);

-- Location: FF_X43_Y4_N50
\inst|led_delay100[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~17_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(7));

-- Location: LABCELL_X43_Y4_N24
\inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~21_sumout\ = SUM(( \inst|led_delay100\(8) ) + ( GND ) + ( \inst|Add1~18\ ))
-- \inst|Add1~22\ = CARRY(( \inst|led_delay100\(8) ) + ( GND ) + ( \inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(8),
	cin => \inst|Add1~18\,
	sumout => \inst|Add1~21_sumout\,
	cout => \inst|Add1~22\);

-- Location: FF_X43_Y4_N4
\inst|led_delay100[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~21_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(8));

-- Location: LABCELL_X43_Y4_N27
\inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~1_sumout\ = SUM(( \inst|led_delay100\(9) ) + ( GND ) + ( \inst|Add1~22\ ))
-- \inst|Add1~2\ = CARRY(( \inst|led_delay100\(9) ) + ( GND ) + ( \inst|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(9),
	cin => \inst|Add1~22\,
	sumout => \inst|Add1~1_sumout\,
	cout => \inst|Add1~2\);

-- Location: FF_X43_Y4_N35
\inst|led_delay100[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \inst|Add1~9_sumout\,
	sclr => \inst|Equal1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(11));

-- Location: LABCELL_X43_Y4_N30
\inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~5_sumout\ = SUM(( \inst|led_delay100\(10) ) + ( GND ) + ( \inst|Add1~2\ ))
-- \inst|Add1~6\ = CARRY(( \inst|led_delay100\(10) ) + ( GND ) + ( \inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_led_delay100\(10),
	cin => \inst|Add1~2\,
	sumout => \inst|Add1~5_sumout\,
	cout => \inst|Add1~6\);

-- Location: FF_X43_Y4_N23
\inst|led_delay100[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~5_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(10));

-- Location: LABCELL_X43_Y4_N33
\inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add1~9_sumout\ = SUM(( \inst|led_delay100\(11) ) + ( GND ) + ( \inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_led_delay100\(11),
	cin => \inst|Add1~6\,
	sumout => \inst|Add1~9_sumout\);

-- Location: LABCELL_X43_Y4_N36
\inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = ( !\inst|Add1~37_sumout\ & ( !\inst|Add1~41_sumout\ & ( (!\inst|Add1~25_sumout\ & (!\inst|Add1~45_sumout\ & (!\inst|Add1~29_sumout\ & \inst|Add1~33_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~25_sumout\,
	datab => \inst|ALT_INV_Add1~45_sumout\,
	datac => \inst|ALT_INV_Add1~29_sumout\,
	datad => \inst|ALT_INV_Add1~33_sumout\,
	datae => \inst|ALT_INV_Add1~37_sumout\,
	dataf => \inst|ALT_INV_Add1~41_sumout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LABCELL_X43_Y4_N51
\inst|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~2_combout\ = ( \inst|Add1~17_sumout\ & ( \inst|Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~13_sumout\,
	dataf => \inst|ALT_INV_Add1~17_sumout\,
	combout => \inst|Equal1~2_combout\);

-- Location: LABCELL_X43_Y4_N54
\inst|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~3_combout\ = ( \inst|Equal1~1_combout\ & ( \inst|Equal1~2_combout\ & ( (!\inst|Add1~1_sumout\ & (\inst|Add1~21_sumout\ & (\inst|Add1~9_sumout\ & !\inst|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add1~1_sumout\,
	datab => \inst|ALT_INV_Add1~21_sumout\,
	datac => \inst|ALT_INV_Add1~9_sumout\,
	datad => \inst|ALT_INV_Add1~5_sumout\,
	datae => \inst|ALT_INV_Equal1~1_combout\,
	dataf => \inst|ALT_INV_Equal1~2_combout\,
	combout => \inst|Equal1~3_combout\);

-- Location: FF_X43_Y4_N47
\inst|led_delay100[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \inst|Add1~13_sumout\,
	sclr => \inst|Equal1~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_delay100\(6));

-- Location: LABCELL_X43_Y4_N48
\inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = ( \inst|Add1~21_sumout\ & ( (\inst|Add1~13_sumout\ & \inst|Add1~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add1~13_sumout\,
	datad => \inst|ALT_INV_Add1~17_sumout\,
	dataf => \inst|ALT_INV_Add1~21_sumout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LABCELL_X43_Y4_N45
\inst|clk_100us1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|clk_100us1~0_combout\ = ( \inst|Equal1~1_combout\ & ( \inst|clk_100us1~q\ & ( (!\inst|Equal1~0_combout\) # (((!\inst|Add1~9_sumout\) # (\inst|Add1~5_sumout\)) # (\inst|Add1~1_sumout\)) ) ) ) # ( !\inst|Equal1~1_combout\ & ( \inst|clk_100us1~q\ ) ) # 
-- ( \inst|Equal1~1_combout\ & ( !\inst|clk_100us1~q\ & ( (\inst|Equal1~0_combout\ & (!\inst|Add1~1_sumout\ & (!\inst|Add1~5_sumout\ & \inst|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000011111111111111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Equal1~0_combout\,
	datab => \inst|ALT_INV_Add1~1_sumout\,
	datac => \inst|ALT_INV_Add1~5_sumout\,
	datad => \inst|ALT_INV_Add1~9_sumout\,
	datae => \inst|ALT_INV_Equal1~1_combout\,
	dataf => \inst|ALT_INV_clk_100us1~q\,
	combout => \inst|clk_100us1~0_combout\);

-- Location: FF_X43_Y4_N17
\inst|clk_100us1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \inst|clk_100us1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|clk_100us1~q\);

-- Location: LABCELL_X48_Y4_N6
\inst|count[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|count[7]~feeder_combout\ = ( \inst|Add4~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add4~9_sumout\,
	combout => \inst|count[7]~feeder_combout\);

-- Location: FF_X48_Y4_N8
\inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|count[7]~feeder_combout\,
	sclr => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(7));

-- Location: LABCELL_X48_Y4_N30
\inst|Add4~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~21_sumout\ = SUM(( \inst|count\(0) ) + ( VCC ) + ( !VCC ))
-- \inst|Add4~22\ = CARRY(( \inst|count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(0),
	cin => GND,
	sumout => \inst|Add4~21_sumout\,
	cout => \inst|Add4~22\);

-- Location: LABCELL_X48_Y4_N21
\inst|count[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|count[0]~feeder_combout\ = ( \inst|Add4~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add4~21_sumout\,
	combout => \inst|count[0]~feeder_combout\);

-- Location: FF_X48_Y4_N23
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|count[0]~feeder_combout\,
	sclr => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LABCELL_X48_Y4_N33
\inst|Add4~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~25_sumout\ = SUM(( \inst|count\(1) ) + ( GND ) + ( \inst|Add4~22\ ))
-- \inst|Add4~26\ = CARRY(( \inst|count\(1) ) + ( GND ) + ( \inst|Add4~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(1),
	cin => \inst|Add4~22\,
	sumout => \inst|Add4~25_sumout\,
	cout => \inst|Add4~26\);

-- Location: LABCELL_X48_Y4_N0
\inst|count[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|count[1]~feeder_combout\ = ( \inst|Add4~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add4~25_sumout\,
	combout => \inst|count[1]~feeder_combout\);

-- Location: FF_X48_Y4_N2
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|count[1]~feeder_combout\,
	sclr => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LABCELL_X48_Y4_N36
\inst|Add4~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~29_sumout\ = SUM(( \inst|count\(2) ) + ( GND ) + ( \inst|Add4~26\ ))
-- \inst|Add4~30\ = CARRY(( \inst|count\(2) ) + ( GND ) + ( \inst|Add4~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(2),
	cin => \inst|Add4~26\,
	sumout => \inst|Add4~29_sumout\,
	cout => \inst|Add4~30\);

-- Location: FF_X48_Y4_N10
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|Add4~29_sumout\,
	sclr => \inst|Equal3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: LABCELL_X48_Y4_N39
\inst|Add4~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~33_sumout\ = SUM(( \inst|count\(3) ) + ( GND ) + ( \inst|Add4~30\ ))
-- \inst|Add4~34\ = CARRY(( \inst|count\(3) ) + ( GND ) + ( \inst|Add4~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(3),
	cin => \inst|Add4~30\,
	sumout => \inst|Add4~33_sumout\,
	cout => \inst|Add4~34\);

-- Location: LABCELL_X48_Y4_N3
\inst|count[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|count[3]~feeder_combout\ = ( \inst|Add4~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add4~33_sumout\,
	combout => \inst|count[3]~feeder_combout\);

-- Location: FF_X48_Y4_N5
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|count[3]~feeder_combout\,
	sclr => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: LABCELL_X48_Y4_N42
\inst|Add4~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~37_sumout\ = SUM(( \inst|count\(4) ) + ( GND ) + ( \inst|Add4~34\ ))
-- \inst|Add4~38\ = CARRY(( \inst|count\(4) ) + ( GND ) + ( \inst|Add4~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count\(4),
	cin => \inst|Add4~34\,
	sumout => \inst|Add4~37_sumout\,
	cout => \inst|Add4~38\);

-- Location: LABCELL_X48_Y4_N18
\inst|count[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|count[4]~feeder_combout\ = ( \inst|Add4~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_Add4~37_sumout\,
	combout => \inst|count[4]~feeder_combout\);

-- Location: FF_X48_Y4_N20
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|count[4]~feeder_combout\,
	sclr => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LABCELL_X48_Y4_N45
\inst|Add4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~1_sumout\ = SUM(( \inst|count\(5) ) + ( GND ) + ( \inst|Add4~38\ ))
-- \inst|Add4~2\ = CARRY(( \inst|count\(5) ) + ( GND ) + ( \inst|Add4~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count\(5),
	cin => \inst|Add4~38\,
	sumout => \inst|Add4~1_sumout\,
	cout => \inst|Add4~2\);

-- Location: FF_X48_Y4_N17
\inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|Add4~1_sumout\,
	sclr => \inst|Equal3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(5));

-- Location: LABCELL_X48_Y4_N48
\inst|Add4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~5_sumout\ = SUM(( \inst|count\(6) ) + ( GND ) + ( \inst|Add4~2\ ))
-- \inst|Add4~6\ = CARRY(( \inst|count\(6) ) + ( GND ) + ( \inst|Add4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_count\(6),
	cin => \inst|Add4~2\,
	sumout => \inst|Add4~5_sumout\,
	cout => \inst|Add4~6\);

-- Location: FF_X48_Y4_N29
\inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|Add4~5_sumout\,
	sclr => \inst|Equal3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(6));

-- Location: LABCELL_X48_Y4_N51
\inst|Add4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~9_sumout\ = SUM(( \inst|count\(7) ) + ( GND ) + ( \inst|Add4~6\ ))
-- \inst|Add4~10\ = CARRY(( \inst|count\(7) ) + ( GND ) + ( \inst|Add4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count\(7),
	cin => \inst|Add4~6\,
	sumout => \inst|Add4~9_sumout\,
	cout => \inst|Add4~10\);

-- Location: LABCELL_X48_Y4_N24
\inst|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = ( \inst|Add4~29_sumout\ & ( !\inst|Add4~37_sumout\ & ( (!\inst|Add4~21_sumout\ & (!\inst|Add4~25_sumout\ & !\inst|Add4~33_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add4~21_sumout\,
	datac => \inst|ALT_INV_Add4~25_sumout\,
	datad => \inst|ALT_INV_Add4~33_sumout\,
	datae => \inst|ALT_INV_Add4~29_sumout\,
	dataf => \inst|ALT_INV_Add4~37_sumout\,
	combout => \inst|Equal3~0_combout\);

-- Location: FF_X48_Y4_N14
\inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|Add4~13_sumout\,
	sclr => \inst|Equal3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(8));

-- Location: LABCELL_X48_Y4_N54
\inst|Add4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~13_sumout\ = SUM(( \inst|count\(8) ) + ( GND ) + ( \inst|Add4~10\ ))
-- \inst|Add4~14\ = CARRY(( \inst|count\(8) ) + ( GND ) + ( \inst|Add4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_count\(8),
	cin => \inst|Add4~10\,
	sumout => \inst|Add4~13_sumout\,
	cout => \inst|Add4~14\);

-- Location: FF_X48_Y4_N25
\inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|Add4~17_sumout\,
	sclr => \inst|Equal3~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(9));

-- Location: LABCELL_X48_Y4_N57
\inst|Add4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add4~17_sumout\ = SUM(( \inst|count\(9) ) + ( GND ) + ( \inst|Add4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_count\(9),
	cin => \inst|Add4~14\,
	sumout => \inst|Add4~17_sumout\);

-- Location: LABCELL_X48_Y4_N12
\inst|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal3~1_combout\ = ( !\inst|Add4~13_sumout\ & ( !\inst|Add4~17_sumout\ & ( (!\inst|Add4~9_sumout\ & (\inst|Add4~5_sumout\ & (\inst|Equal3~0_combout\ & \inst|Add4~1_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add4~9_sumout\,
	datab => \inst|ALT_INV_Add4~5_sumout\,
	datac => \inst|ALT_INV_Equal3~0_combout\,
	datad => \inst|ALT_INV_Add4~1_sumout\,
	datae => \inst|ALT_INV_Add4~13_sumout\,
	dataf => \inst|ALT_INV_Add4~17_sumout\,
	combout => \inst|Equal3~1_combout\);

-- Location: FF_X47_Y4_N47
\inst|incrementa\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|incrementa~0_combout\,
	sload => VCC,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|incrementa~q\);

-- Location: MLABCELL_X47_Y4_N0
\inst|Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~21_sumout\ = SUM(( \inst|duty1[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \inst|Add5~22\ = CARRY(( \inst|duty1[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst|ALT_INV_duty1[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \inst|Add5~21_sumout\,
	cout => \inst|Add5~22\);

-- Location: FF_X47_Y4_N19
\inst|duty1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~2_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(4));

-- Location: MLABCELL_X47_Y4_N24
\inst|duty1~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~6_combout\ = ( \inst|incrementa~DUPLICATE_q\ & ( \inst|duty1\(4) & ( \inst|Add5~21_sumout\ ) ) ) # ( !\inst|incrementa~DUPLICATE_q\ & ( \inst|duty1\(4) & ( \inst|Add5~21_sumout\ ) ) ) # ( \inst|incrementa~DUPLICATE_q\ & ( !\inst|duty1\(4) & ( 
-- \inst|Add5~21_sumout\ ) ) ) # ( !\inst|incrementa~DUPLICATE_q\ & ( !\inst|duty1\(4) & ( (\inst|Add5~21_sumout\ & ((!\inst|LessThan1~0_combout\) # ((\inst|duty1[0]~DUPLICATE_q\) # (\inst|duty1[5]~DUPLICATE_q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add5~21_sumout\,
	datab => \inst|ALT_INV_LessThan1~0_combout\,
	datac => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datad => \inst|ALT_INV_duty1[0]~DUPLICATE_q\,
	datae => \inst|ALT_INV_incrementa~DUPLICATE_q\,
	dataf => \inst|ALT_INV_duty1\(4),
	combout => \inst|duty1~6_combout\);

-- Location: FF_X46_Y4_N16
\inst|duty1[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|duty1~6_combout\,
	sload => VCC,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1[0]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y4_N3
\inst|Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~17_sumout\ = SUM(( (!\inst|incrementa~DUPLICATE_q\) # ((\inst|duty1[5]~DUPLICATE_q\ & (\inst|duty1[4]~DUPLICATE_q\ & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(1) ) + ( \inst|Add5~22\ ))
-- \inst|Add5~18\ = CARRY(( (!\inst|incrementa~DUPLICATE_q\) # ((\inst|duty1[5]~DUPLICATE_q\ & (\inst|duty1[4]~DUPLICATE_q\ & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(1) ) + ( \inst|Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_incrementa~DUPLICATE_q\,
	datab => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_duty1\(1),
	cin => \inst|Add5~22\,
	sumout => \inst|Add5~17_sumout\,
	cout => \inst|Add5~18\);

-- Location: LABCELL_X46_Y4_N0
\inst|duty1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~5_combout\ = (\inst|Add5~17_sumout\ & !\inst|duty1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add5~17_sumout\,
	datad => \inst|ALT_INV_duty1~0_combout\,
	combout => \inst|duty1~5_combout\);

-- Location: FF_X46_Y4_N1
\inst|duty1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~5_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(1));

-- Location: FF_X47_Y4_N59
\inst|duty1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~1_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(5));

-- Location: MLABCELL_X47_Y4_N6
\inst|Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~13_sumout\ = SUM(( (!\inst|incrementa~q\) # ((\inst|duty1[4]~DUPLICATE_q\ & (\inst|duty1[5]~DUPLICATE_q\ & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(2) ) + ( \inst|Add5~18\ ))
-- \inst|Add5~14\ = CARRY(( (!\inst|incrementa~q\) # ((\inst|duty1[4]~DUPLICATE_q\ & (\inst|duty1[5]~DUPLICATE_q\ & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(2) ) + ( \inst|Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datab => \inst|ALT_INV_incrementa~q\,
	datac => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_duty1\(2),
	cin => \inst|Add5~18\,
	sumout => \inst|Add5~13_sumout\,
	cout => \inst|Add5~14\);

-- Location: MLABCELL_X47_Y4_N9
\inst|Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~9_sumout\ = SUM(( (!\inst|incrementa~q\) # ((\inst|duty1[4]~DUPLICATE_q\ & (\inst|duty1\(5) & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(3) ) + ( \inst|Add5~14\ ))
-- \inst|Add5~10\ = CARRY(( (!\inst|incrementa~q\) # ((\inst|duty1[4]~DUPLICATE_q\ & (\inst|duty1\(5) & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(3) ) + ( \inst|Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001100110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datab => \inst|ALT_INV_incrementa~q\,
	datac => \inst|ALT_INV_duty1\(5),
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	dataf => \inst|ALT_INV_duty1\(3),
	cin => \inst|Add5~14\,
	sumout => \inst|Add5~9_sumout\,
	cout => \inst|Add5~10\);

-- Location: MLABCELL_X47_Y4_N30
\inst|duty1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~3_combout\ = ( !\inst|duty1~0_combout\ & ( \inst|Add5~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_Add5~9_sumout\,
	dataf => \inst|ALT_INV_duty1~0_combout\,
	combout => \inst|duty1~3_combout\);

-- Location: FF_X47_Y4_N31
\inst|duty1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~3_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(3));

-- Location: MLABCELL_X47_Y4_N36
\inst|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan1~0_combout\ = ( !\inst|duty1\(3) & ( (!\inst|duty1\(2) & !\inst|duty1\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst|ALT_INV_duty1\(2),
	datad => \inst|ALT_INV_duty1\(1),
	dataf => \inst|ALT_INV_duty1\(3),
	combout => \inst|LessThan1~0_combout\);

-- Location: MLABCELL_X47_Y4_N39
\inst|incrementa~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|incrementa~0_combout\ = ( \inst|duty1\(4) & ( (\inst|incrementa~q\ & ((!\inst|duty1[5]~DUPLICATE_q\) # (\inst|LessThan1~0_combout\))) ) ) # ( !\inst|duty1\(4) & ( ((!\inst|duty1[5]~DUPLICATE_q\ & (\inst|LessThan1~0_combout\ & 
-- !\inst|duty1[0]~DUPLICATE_q\))) # (\inst|incrementa~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100110011001110110011001100100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datab => \inst|ALT_INV_incrementa~q\,
	datac => \inst|ALT_INV_LessThan1~0_combout\,
	datad => \inst|ALT_INV_duty1[0]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_duty1\(4),
	combout => \inst|incrementa~0_combout\);

-- Location: FF_X47_Y4_N46
\inst|incrementa~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|incrementa~0_combout\,
	sload => VCC,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|incrementa~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y4_N12
\inst|Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~5_sumout\ = SUM(( (!\inst|incrementa~DUPLICATE_q\) # ((\inst|duty1[5]~DUPLICATE_q\ & (\inst|duty1\(4) & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(4) ) + ( \inst|Add5~10\ ))
-- \inst|Add5~6\ = CARRY(( (!\inst|incrementa~DUPLICATE_q\) # ((\inst|duty1[5]~DUPLICATE_q\ & (\inst|duty1\(4) & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1\(4) ) + ( \inst|Add5~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_incrementa~DUPLICATE_q\,
	datab => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1\(4),
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	cin => \inst|Add5~10\,
	sumout => \inst|Add5~5_sumout\,
	cout => \inst|Add5~6\);

-- Location: MLABCELL_X47_Y4_N15
\inst|Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add5~1_sumout\ = SUM(( (!\inst|incrementa~DUPLICATE_q\) # ((\inst|duty1[5]~DUPLICATE_q\ & (\inst|duty1[4]~DUPLICATE_q\ & !\inst|LessThan1~0_combout\))) ) + ( \inst|duty1[5]~DUPLICATE_q\ ) + ( \inst|Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001010101110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_incrementa~DUPLICATE_q\,
	datab => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_LessThan1~0_combout\,
	cin => \inst|Add5~6\,
	sumout => \inst|Add5~1_sumout\);

-- Location: MLABCELL_X47_Y4_N57
\inst|duty1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~1_combout\ = ( \inst|Add5~1_sumout\ & ( !\inst|duty1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1~0_combout\,
	dataf => \inst|ALT_INV_Add5~1_sumout\,
	combout => \inst|duty1~1_combout\);

-- Location: FF_X47_Y4_N58
\inst|duty1[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~1_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1[5]~DUPLICATE_q\);

-- Location: FF_X46_Y4_N17
\inst|duty1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	asdata => \inst|duty1~6_combout\,
	sload => VCC,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(0));

-- Location: MLABCELL_X47_Y4_N33
\inst|duty1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~0_combout\ = ( \inst|LessThan1~0_combout\ & ( (!\inst|duty1[5]~DUPLICATE_q\ & (!\inst|incrementa~q\ & (!\inst|duty1\(4) & !\inst|duty1\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datab => \inst|ALT_INV_incrementa~q\,
	datac => \inst|ALT_INV_duty1\(4),
	datad => \inst|ALT_INV_duty1\(0),
	dataf => \inst|ALT_INV_LessThan1~0_combout\,
	combout => \inst|duty1~0_combout\);

-- Location: MLABCELL_X47_Y4_N18
\inst|duty1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~2_combout\ = ( \inst|Add5~5_sumout\ & ( !\inst|duty1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1~0_combout\,
	dataf => \inst|ALT_INV_Add5~5_sumout\,
	combout => \inst|duty1~2_combout\);

-- Location: FF_X47_Y4_N20
\inst|duty1[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~2_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1[4]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y4_N51
\inst|duty1~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|duty1~4_combout\ = ( !\inst|duty1~0_combout\ & ( \inst|Add5~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_Add5~13_sumout\,
	dataf => \inst|ALT_INV_duty1~0_combout\,
	combout => \inst|duty1~4_combout\);

-- Location: FF_X47_Y4_N53
\inst|duty1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~4_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1\(2));

-- Location: FF_X47_Y4_N32
\inst|duty1[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~3_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1[3]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y4_N42
\inst|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~0_combout\ = ( \inst|duty1\(5) & ( \inst|duty1[0]~DUPLICATE_q\ & ( (\inst|duty1[4]~DUPLICATE_q\ & (((\inst|duty1\(1)) # (\inst|duty1[3]~DUPLICATE_q\)) # (\inst|duty1\(2)))) ) ) ) # ( \inst|duty1\(5) & ( !\inst|duty1[0]~DUPLICATE_q\ & ( 
-- (\inst|duty1[4]~DUPLICATE_q\ & ((\inst|duty1[3]~DUPLICATE_q\) # (\inst|duty1\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001110000011100000000000000000000011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1\(2),
	datab => \inst|ALT_INV_duty1[3]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_duty1\(1),
	datae => \inst|ALT_INV_duty1\(5),
	dataf => \inst|ALT_INV_duty1[0]~DUPLICATE_q\,
	combout => \inst|LessThan0~0_combout\);

-- Location: FF_X46_Y4_N46
\inst|led_on[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	asdata => \inst|led_on[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on[0]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N36
\inst|led_on[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_on[0]~3_combout\ = ( !\inst|led_on[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst|ALT_INV_led_on[0]~DUPLICATE_q\,
	combout => \inst|led_on[0]~3_combout\);

-- Location: FF_X46_Y4_N47
\inst|led_on[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	asdata => \inst|led_on[0]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(0));

-- Location: FF_X46_Y4_N38
\inst|led_on[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	asdata => \inst|Add2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(2));

-- Location: LABCELL_X46_Y4_N39
\inst|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = ( \inst|led_on\(3) & ( (!\inst|led_on\(1)) # ((!\inst|led_on\(0)) # (!\inst|led_on\(2))) ) ) # ( !\inst|led_on\(3) & ( (\inst|led_on\(1) & (\inst|led_on\(0) & \inst|led_on\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_on\(1),
	datac => \inst|ALT_INV_led_on\(0),
	datad => \inst|ALT_INV_led_on\(2),
	dataf => \inst|ALT_INV_led_on\(3),
	combout => \inst|Add2~0_combout\);

-- Location: FF_X46_Y4_N35
\inst|led_on[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	asdata => \inst|Add2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(3));

-- Location: LABCELL_X46_Y4_N3
\inst|Add2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~3_combout\ = ( \inst|led_on\(3) & ( !\inst|led_on\(4) $ (((!\inst|led_on\(0)) # ((!\inst|led_on\(1)) # (!\inst|led_on\(2))))) ) ) # ( !\inst|led_on\(3) & ( \inst|led_on\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101100101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_on\(4),
	datab => \inst|ALT_INV_led_on\(0),
	datac => \inst|ALT_INV_led_on\(1),
	datad => \inst|ALT_INV_led_on\(2),
	dataf => \inst|ALT_INV_led_on\(3),
	combout => \inst|Add2~3_combout\);

-- Location: FF_X46_Y4_N2
\inst|duty1[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_100us1~q\,
	d => \inst|duty1~5_combout\,
	ena => \inst|Equal3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|duty1[1]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y4_N9
\inst|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~1_combout\ = ( !\inst|duty1\(2) & ( (!\inst|duty1[3]~DUPLICATE_q\ & ((!\inst|duty1\(0)) # (!\inst|duty1[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010100000101010101010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[3]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1\(0),
	datad => \inst|ALT_INV_duty1[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_duty1\(2),
	combout => \inst|Add3~1_combout\);

-- Location: LABCELL_X46_Y4_N54
\inst|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_combout\ = ( \inst|Add3~1_combout\ & ( (!\inst|duty1[5]~DUPLICATE_q\ & (\inst|Add2~2_combout\ & (!\inst|duty1\(4) $ (!\inst|Add2~3_combout\)))) # (\inst|duty1[5]~DUPLICATE_q\ & (!\inst|Add2~2_combout\ & (!\inst|duty1\(4) $ 
-- (!\inst|Add2~3_combout\)))) ) ) # ( !\inst|Add3~1_combout\ & ( (!\inst|duty1\(4) & (!\inst|Add2~3_combout\ & (!\inst|duty1[5]~DUPLICATE_q\ $ (!\inst|Add2~2_combout\)))) # (\inst|duty1\(4) & (\inst|Add2~3_combout\ & (!\inst|duty1[5]~DUPLICATE_q\ $ 
-- (\inst|Add2~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000001001011000000000100100000110011000000000011001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Add2~2_combout\,
	datac => \inst|ALT_INV_duty1\(4),
	datad => \inst|ALT_INV_Add2~3_combout\,
	dataf => \inst|ALT_INV_Add3~1_combout\,
	combout => \inst|LessThan0~3_combout\);

-- Location: LABCELL_X46_Y4_N42
\inst|led_on~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_on~1_combout\ = ( \inst|LessThan0~2_combout\ & ( \inst|LessThan0~0_combout\ & ( (\inst|Add2~2_combout\ & !\inst|Equal2~0_combout\) ) ) ) # ( !\inst|LessThan0~2_combout\ & ( \inst|LessThan0~0_combout\ & ( (\inst|Add2~2_combout\ & 
-- !\inst|Equal2~0_combout\) ) ) ) # ( \inst|LessThan0~2_combout\ & ( !\inst|LessThan0~0_combout\ & ( (\inst|Add2~2_combout\ & (((!\inst|Equal2~0_combout\) # (\inst|LessThan0~4_combout\)) # (\inst|LessThan0~3_combout\))) ) ) ) # ( !\inst|LessThan0~2_combout\ 
-- & ( !\inst|LessThan0~0_combout\ & ( (\inst|Add2~2_combout\ & ((!\inst|Equal2~0_combout\) # (\inst|LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010101010100010101010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_Add2~2_combout\,
	datab => \inst|ALT_INV_LessThan0~3_combout\,
	datac => \inst|ALT_INV_Equal2~0_combout\,
	datad => \inst|ALT_INV_LessThan0~4_combout\,
	datae => \inst|ALT_INV_LessThan0~2_combout\,
	dataf => \inst|ALT_INV_LessThan0~0_combout\,
	combout => \inst|led_on~1_combout\);

-- Location: FF_X46_Y4_N44
\inst|led_on[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	d => \inst|led_on~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(5));

-- Location: LABCELL_X45_Y4_N48
\inst|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Equal2~0_combout\ = ( !\inst|led_on\(1) & ( \inst|led_on\(4) & ( (\inst|led_on\(0) & (!\inst|led_on\(2) & (!\inst|led_on\(3) & \inst|led_on\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_on\(0),
	datab => \inst|ALT_INV_led_on\(2),
	datac => \inst|ALT_INV_led_on\(3),
	datad => \inst|ALT_INV_led_on\(5),
	datae => \inst|ALT_INV_led_on\(1),
	dataf => \inst|ALT_INV_led_on\(4),
	combout => \inst|Equal2~0_combout\);

-- Location: LABCELL_X46_Y4_N24
\inst|led_on~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_on~2_combout\ = ( \inst|Equal2~0_combout\ & ( \inst|Add2~3_combout\ & ( (!\inst|LessThan0~0_combout\ & (((\inst|LessThan0~3_combout\ & \inst|LessThan0~2_combout\)) # (\inst|LessThan0~4_combout\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( 
-- \inst|Add2~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110101011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~4_combout\,
	datab => \inst|ALT_INV_LessThan0~3_combout\,
	datac => \inst|ALT_INV_LessThan0~2_combout\,
	datad => \inst|ALT_INV_LessThan0~0_combout\,
	datae => \inst|ALT_INV_Equal2~0_combout\,
	dataf => \inst|ALT_INV_Add2~3_combout\,
	combout => \inst|led_on~2_combout\);

-- Location: FF_X46_Y4_N26
\inst|led_on[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	d => \inst|led_on~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(4));

-- Location: LABCELL_X46_Y4_N12
\inst|Add2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = ( \inst|led_on\(2) & ( \inst|led_on\(3) & ( !\inst|led_on\(5) $ (((!\inst|led_on\(4)) # ((!\inst|led_on\(0)) # (!\inst|led_on\(1))))) ) ) ) # ( !\inst|led_on\(2) & ( \inst|led_on\(3) & ( \inst|led_on\(5) ) ) ) # ( \inst|led_on\(2) 
-- & ( !\inst|led_on\(3) & ( \inst|led_on\(5) ) ) ) # ( !\inst|led_on\(2) & ( !\inst|led_on\(3) & ( \inst|led_on\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_on\(4),
	datab => \inst|ALT_INV_led_on\(0),
	datac => \inst|ALT_INV_led_on\(1),
	datad => \inst|ALT_INV_led_on\(5),
	datae => \inst|ALT_INV_led_on\(2),
	dataf => \inst|ALT_INV_led_on\(3),
	combout => \inst|Add2~2_combout\);

-- Location: LABCELL_X46_Y4_N57
\inst|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~4_combout\ = ( \inst|Add3~1_combout\ & ( (!\inst|duty1[5]~DUPLICATE_q\ & ((!\inst|Add2~2_combout\) # ((!\inst|duty1[4]~DUPLICATE_q\ & !\inst|Add2~3_combout\)))) # (\inst|duty1[5]~DUPLICATE_q\ & (!\inst|Add2~2_combout\ & 
-- (!\inst|duty1[4]~DUPLICATE_q\ & !\inst|Add2~3_combout\))) ) ) # ( !\inst|Add3~1_combout\ & ( (!\inst|duty1[5]~DUPLICATE_q\ & (!\inst|Add2~2_combout\ & ((!\inst|duty1[4]~DUPLICATE_q\) # (!\inst|Add2~3_combout\)))) # (\inst|duty1[5]~DUPLICATE_q\ & 
-- (\inst|duty1[4]~DUPLICATE_q\ & ((!\inst|Add2~2_combout\) # (!\inst|Add2~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110110000100100011011000010011101000100010001110100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[5]~DUPLICATE_q\,
	datab => \inst|ALT_INV_Add2~2_combout\,
	datac => \inst|ALT_INV_duty1[4]~DUPLICATE_q\,
	datad => \inst|ALT_INV_Add2~3_combout\,
	dataf => \inst|ALT_INV_Add3~1_combout\,
	combout => \inst|LessThan0~4_combout\);

-- Location: LABCELL_X45_Y4_N39
\inst|Add2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ( \inst|led_on[0]~DUPLICATE_q\ & ( !\inst|led_on\(1) ) ) # ( !\inst|led_on[0]~DUPLICATE_q\ & ( \inst|led_on\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_led_on\(1),
	dataf => \inst|ALT_INV_led_on[0]~DUPLICATE_q\,
	combout => \inst|Add2~4_combout\);

-- Location: LABCELL_X46_Y4_N27
\inst|led_on~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_on~0_combout\ = ( \inst|Equal2~0_combout\ & ( \inst|Add2~4_combout\ & ( (!\inst|LessThan0~0_combout\ & (((\inst|LessThan0~3_combout\ & \inst|LessThan0~2_combout\)) # (\inst|LessThan0~4_combout\))) ) ) ) # ( !\inst|Equal2~0_combout\ & ( 
-- \inst|Add2~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110101000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~4_combout\,
	datab => \inst|ALT_INV_LessThan0~3_combout\,
	datac => \inst|ALT_INV_LessThan0~0_combout\,
	datad => \inst|ALT_INV_LessThan0~2_combout\,
	datae => \inst|ALT_INV_Equal2~0_combout\,
	dataf => \inst|ALT_INV_Add2~4_combout\,
	combout => \inst|led_on~0_combout\);

-- Location: FF_X46_Y4_N29
\inst|led_on[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	d => \inst|led_on~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_on\(1));

-- Location: LABCELL_X46_Y4_N6
\inst|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add2~1_combout\ = ( \inst|led_on[0]~DUPLICATE_q\ & ( !\inst|led_on\(1) $ (!\inst|led_on\(2)) ) ) # ( !\inst|led_on[0]~DUPLICATE_q\ & ( \inst|led_on\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_led_on\(1),
	datac => \inst|ALT_INV_led_on\(2),
	dataf => \inst|ALT_INV_led_on[0]~DUPLICATE_q\,
	combout => \inst|Add2~1_combout\);

-- Location: LABCELL_X46_Y4_N30
\inst|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|duty1\(0) & \inst|duty1[1]~DUPLICATE_q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst|ALT_INV_duty1\(0),
	datad => \inst|ALT_INV_duty1[1]~DUPLICATE_q\,
	combout => \inst|Add3~0_combout\);

-- Location: LABCELL_X46_Y4_N33
\inst|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_combout\ = ( \inst|led_on[0]~DUPLICATE_q\ & ( (!\inst|duty1[1]~DUPLICATE_q\ & ((\inst|led_on\(1)))) # (\inst|duty1[1]~DUPLICATE_q\ & (\inst|duty1\(0))) ) ) # ( !\inst|led_on[0]~DUPLICATE_q\ & ( (!\inst|led_on\(1) & 
-- (!\inst|duty1[1]~DUPLICATE_q\ $ (\inst|duty1\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1[1]~DUPLICATE_q\,
	datac => \inst|ALT_INV_duty1\(0),
	datad => \inst|ALT_INV_led_on\(1),
	dataf => \inst|ALT_INV_led_on[0]~DUPLICATE_q\,
	combout => \inst|LessThan0~1_combout\);

-- Location: LABCELL_X46_Y4_N21
\inst|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|LessThan0~2_combout\ = ( \inst|Add2~0_combout\ & ( \inst|LessThan0~1_combout\ & ( (!\inst|Add2~1_combout\ & (!\inst|duty1[3]~DUPLICATE_q\ $ (((!\inst|duty1\(2) & !\inst|Add3~0_combout\))))) # (\inst|Add2~1_combout\ & (!\inst|duty1[3]~DUPLICATE_q\ & 
-- (!\inst|duty1\(2) $ (!\inst|Add3~0_combout\)))) ) ) ) # ( !\inst|Add2~0_combout\ & ( \inst|LessThan0~1_combout\ & ( (!\inst|Add2~1_combout\) # ((!\inst|duty1\(2) & ((\inst|duty1[3]~DUPLICATE_q\) # (\inst|Add3~0_combout\))) # (\inst|duty1\(2) & 
-- ((!\inst|Add3~0_combout\) # (!\inst|duty1[3]~DUPLICATE_q\)))) ) ) ) # ( \inst|Add2~0_combout\ & ( !\inst|LessThan0~1_combout\ & ( (!\inst|Add2~1_combout\ & (!\inst|duty1[3]~DUPLICATE_q\ & (!\inst|duty1\(2) $ (!\inst|Add3~0_combout\)))) ) ) ) # ( 
-- !\inst|Add2~0_combout\ & ( !\inst|LessThan0~1_combout\ & ( (!\inst|duty1\(2) & ((!\inst|Add3~0_combout\ & ((\inst|duty1[3]~DUPLICATE_q\))) # (\inst|Add3~0_combout\ & ((!\inst|Add2~1_combout\) # (!\inst|duty1[3]~DUPLICATE_q\))))) # (\inst|duty1\(2) & 
-- ((!\inst|duty1[3]~DUPLICATE_q\) # ((!\inst|Add2~1_combout\ & !\inst|Add3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111111101000010010000000000011011111111111100101111010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_duty1\(2),
	datab => \inst|ALT_INV_Add2~1_combout\,
	datac => \inst|ALT_INV_Add3~0_combout\,
	datad => \inst|ALT_INV_duty1[3]~DUPLICATE_q\,
	datae => \inst|ALT_INV_Add2~0_combout\,
	dataf => \inst|ALT_INV_LessThan0~1_combout\,
	combout => \inst|LessThan0~2_combout\);

-- Location: LABCELL_X46_Y4_N48
\inst|led_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst|led_reg~0_combout\ = ( \inst|LessThan0~3_combout\ & ( \inst|LessThan0~4_combout\ & ( (!\inst|LessThan0~0_combout\ & (\inst|led_reg~q\)) # (\inst|LessThan0~0_combout\ & ((!\inst|Equal2~0_combout\))) ) ) ) # ( !\inst|LessThan0~3_combout\ & ( 
-- \inst|LessThan0~4_combout\ & ( (!\inst|LessThan0~0_combout\ & (\inst|led_reg~q\)) # (\inst|LessThan0~0_combout\ & ((!\inst|Equal2~0_combout\))) ) ) ) # ( \inst|LessThan0~3_combout\ & ( !\inst|LessThan0~4_combout\ & ( (!\inst|LessThan0~0_combout\ & 
-- ((!\inst|LessThan0~2_combout\ & ((!\inst|Equal2~0_combout\))) # (\inst|LessThan0~2_combout\ & (\inst|led_reg~q\)))) # (\inst|LessThan0~0_combout\ & (((!\inst|Equal2~0_combout\)))) ) ) ) # ( !\inst|LessThan0~3_combout\ & ( !\inst|LessThan0~4_combout\ & ( 
-- !\inst|Equal2~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111101110000001001110111001000100111011100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ALT_INV_LessThan0~0_combout\,
	datab => \inst|ALT_INV_led_reg~q\,
	datac => \inst|ALT_INV_LessThan0~2_combout\,
	datad => \inst|ALT_INV_Equal2~0_combout\,
	datae => \inst|ALT_INV_LessThan0~3_combout\,
	dataf => \inst|ALT_INV_LessThan0~4_combout\,
	combout => \inst|led_reg~0_combout\);

-- Location: FF_X46_Y4_N8
\inst|led_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|clk_1us1~q\,
	asdata => \inst|led_reg~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|led_reg~q\);

-- Location: LABCELL_X45_Y4_N27
\inst2|ledr[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[7]~0_combout\ = (\inst2|cont\(2) & (\inst|led_reg~q\ & (\inst2|cont[1]~DUPLICATE_q\ & \inst2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst|ALT_INV_led_reg~q\,
	datac => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_cont\(0),
	combout => \inst2|ledr[7]~0_combout\);

-- Location: LABCELL_X45_Y4_N30
\inst2|ledr[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[6]~1_combout\ = ( \inst|led_reg~q\ & ( (!\inst2|cont\(0) & (\inst2|cont\(2) & \inst2|cont[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_cont\(0),
	datac => \inst2|ALT_INV_cont\(2),
	datad => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_led_reg~q\,
	combout => \inst2|ledr[6]~1_combout\);

-- Location: LABCELL_X45_Y4_N0
\inst2|ledr[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[5]~2_combout\ = ( \inst|led_reg~q\ & ( (\inst2|cont\(0) & (\inst2|cont\(2) & !\inst2|cont[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|ALT_INV_cont\(0),
	datac => \inst2|ALT_INV_cont\(2),
	datad => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_led_reg~q\,
	combout => \inst2|ledr[5]~2_combout\);

-- Location: LABCELL_X45_Y4_N9
\inst2|ledr[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[4]~3_combout\ = (\inst2|cont\(2) & (\inst|led_reg~q\ & (!\inst2|cont[1]~DUPLICATE_q\ & !\inst2|cont\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst|ALT_INV_led_reg~q\,
	datac => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	datad => \inst2|ALT_INV_cont\(0),
	combout => \inst2|ledr[4]~3_combout\);

-- Location: LABCELL_X45_Y4_N3
\inst2|ledr[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[3]~4_combout\ = ( \inst|led_reg~q\ & ( (!\inst2|cont\(2) & (\inst2|cont\(0) & \inst2|cont[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst2|ALT_INV_cont\(0),
	datad => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	dataf => \inst|ALT_INV_led_reg~q\,
	combout => \inst2|ledr[3]~4_combout\);

-- Location: LABCELL_X45_Y4_N24
\inst2|ledr[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[2]~5_combout\ = (!\inst2|cont\(2) & (\inst|led_reg~q\ & (!\inst2|cont\(0) & \inst2|cont[1]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst|ALT_INV_led_reg~q\,
	datac => \inst2|ALT_INV_cont\(0),
	datad => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	combout => \inst2|ledr[2]~5_combout\);

-- Location: LABCELL_X45_Y4_N54
\inst2|ledr[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[1]~6_combout\ = (!\inst2|cont\(2) & (!\inst2|cont[1]~DUPLICATE_q\ & (\inst2|cont\(0) & \inst|led_reg~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	datac => \inst2|ALT_INV_cont\(0),
	datad => \inst|ALT_INV_led_reg~q\,
	combout => \inst2|ledr[1]~6_combout\);

-- Location: LABCELL_X45_Y4_N6
\inst2|ledr[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst2|ledr[0]~7_combout\ = (!\inst2|cont\(2) & (\inst|led_reg~q\ & (!\inst2|cont\(0) & !\inst2|cont[1]~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000100000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|ALT_INV_cont\(2),
	datab => \inst|ALT_INV_led_reg~q\,
	datac => \inst2|ALT_INV_cont\(0),
	datad => \inst2|ALT_INV_cont[1]~DUPLICATE_q\,
	combout => \inst2|ledr[0]~7_combout\);
END structure;


