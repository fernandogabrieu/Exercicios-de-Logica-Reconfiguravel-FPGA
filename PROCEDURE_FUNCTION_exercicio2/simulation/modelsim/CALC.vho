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

-- DATE "11/03/2022 19:15:49"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
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

ENTITY 	CALC IS
    PORT (
	SW : IN std_logic_vector(6 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END CALC;

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
-- HEX3[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CALC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL \Mult0~8_AX_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_AY_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \Mult0~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \Mult0~36\ : std_logic;
SIGNAL \Mult0~37\ : std_logic;
SIGNAL \Mult0~38\ : std_logic;
SIGNAL \Mult0~39\ : std_logic;
SIGNAL \Mult0~40\ : std_logic;
SIGNAL \Mult0~41\ : std_logic;
SIGNAL \Mult0~42\ : std_logic;
SIGNAL \Mult0~43\ : std_logic;
SIGNAL \Mult0~44\ : std_logic;
SIGNAL \Mult0~45\ : std_logic;
SIGNAL \Mult0~46\ : std_logic;
SIGNAL \Mult0~47\ : std_logic;
SIGNAL \Mult0~48\ : std_logic;
SIGNAL \Mult0~49\ : std_logic;
SIGNAL \Mult0~50\ : std_logic;
SIGNAL \Mult0~51\ : std_logic;
SIGNAL \Mult0~52\ : std_logic;
SIGNAL \Mult0~53\ : std_logic;
SIGNAL \Mult0~54\ : std_logic;
SIGNAL \Mult0~55\ : std_logic;
SIGNAL \Mult0~56\ : std_logic;
SIGNAL \Mult0~57\ : std_logic;
SIGNAL \Mult0~58\ : std_logic;
SIGNAL \Mult0~59\ : std_logic;
SIGNAL \Mult0~60\ : std_logic;
SIGNAL \Mult0~61\ : std_logic;
SIGNAL \Mult0~62\ : std_logic;
SIGNAL \Mult0~63\ : std_logic;
SIGNAL \Mult0~64\ : std_logic;
SIGNAL \Mult0~65\ : std_logic;
SIGNAL \Mult0~66\ : std_logic;
SIGNAL \Mult0~67\ : std_logic;
SIGNAL \Mult0~68\ : std_logic;
SIGNAL \Mult0~69\ : std_logic;
SIGNAL \Mult0~70\ : std_logic;
SIGNAL \Mult0~71\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~18_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~22\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\ : std_logic;
SIGNAL \OUTPUT[3]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_2~5_sumout\ : std_logic;
SIGNAL \OUTPUT[2]~1_combout\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~6\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~26\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~25_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_3~5_sumout\ : std_logic;
SIGNAL \Mult0~8_resulta\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~2\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~30_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~26_cout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \unidade[2]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \unidade[2]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \unidade[1]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \unidade[3]~5_combout\ : std_logic;
SIGNAL \unidade[3]~6_combout\ : std_logic;
SIGNAL \unidade[0]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \unidade[0]~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~6\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_2~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~22\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~18\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~14\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~10\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~19\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~26_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~18_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~14_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~10_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~6_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~26_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~6\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~10\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~14\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~18\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~30_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~22_cout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~1_sumout\ : std_logic;
SIGNAL \dezena[1]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~17_sumout\ : std_logic;
SIGNAL \dezena[3]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~13_sumout\ : std_logic;
SIGNAL \dezena[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|op_4~5_sumout\ : std_logic;
SIGNAL \dezena[0]~0_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux24~0_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mult0~13\ : std_logic;
SIGNAL \ALT_INV_Mult0~12\ : std_logic;
SIGNAL \ALT_INV_Mult0~11\ : std_logic;
SIGNAL \ALT_INV_Mult0~10\ : std_logic;
SIGNAL \ALT_INV_Mult0~9\ : std_logic;
SIGNAL \ALT_INV_Mult0~8_resulta\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Mux21~0_combout\ : std_logic;
SIGNAL \ALT_INV_dezena[3]~3_combout\ : std_logic;
SIGNAL \ALT_INV_dezena[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~0_combout\ : std_logic;
SIGNAL \ALT_INV_dezena[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_dezena[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[3]~6_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[3]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[2]~4_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[2]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_unidade[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_OUTPUT[1]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~2_combout\ : std_logic;
SIGNAL \ALT_INV_OUTPUT[2]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_combout\ : std_logic;
SIGNAL \ALT_INV_OUTPUT[3]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add0~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_2~17_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[3]~21_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_2~21_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[4]~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[2]~13_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[1]~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[0]~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ : std_logic;

BEGIN

ww_SW <= SW;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult0~8_AX_bus\ <= (\SW[2]~input_o\ & \SW[1]~input_o\ & \SW[0]~input_o\);

\Mult0~8_AY_bus\ <= (\SW[5]~input_o\ & \SW[4]~input_o\ & \SW[3]~input_o\);

\Mult0~8_resulta\ <= \Mult0~8_RESULTA_bus\(0);
\Mult0~9\ <= \Mult0~8_RESULTA_bus\(1);
\Mult0~10\ <= \Mult0~8_RESULTA_bus\(2);
\Mult0~11\ <= \Mult0~8_RESULTA_bus\(3);
\Mult0~12\ <= \Mult0~8_RESULTA_bus\(4);
\Mult0~13\ <= \Mult0~8_RESULTA_bus\(5);
\Mult0~14\ <= \Mult0~8_RESULTA_bus\(6);
\Mult0~15\ <= \Mult0~8_RESULTA_bus\(7);
\Mult0~16\ <= \Mult0~8_RESULTA_bus\(8);
\Mult0~17\ <= \Mult0~8_RESULTA_bus\(9);
\Mult0~18\ <= \Mult0~8_RESULTA_bus\(10);
\Mult0~19\ <= \Mult0~8_RESULTA_bus\(11);
\Mult0~20\ <= \Mult0~8_RESULTA_bus\(12);
\Mult0~21\ <= \Mult0~8_RESULTA_bus\(13);
\Mult0~22\ <= \Mult0~8_RESULTA_bus\(14);
\Mult0~23\ <= \Mult0~8_RESULTA_bus\(15);
\Mult0~24\ <= \Mult0~8_RESULTA_bus\(16);
\Mult0~25\ <= \Mult0~8_RESULTA_bus\(17);
\Mult0~26\ <= \Mult0~8_RESULTA_bus\(18);
\Mult0~27\ <= \Mult0~8_RESULTA_bus\(19);
\Mult0~28\ <= \Mult0~8_RESULTA_bus\(20);
\Mult0~29\ <= \Mult0~8_RESULTA_bus\(21);
\Mult0~30\ <= \Mult0~8_RESULTA_bus\(22);
\Mult0~31\ <= \Mult0~8_RESULTA_bus\(23);
\Mult0~32\ <= \Mult0~8_RESULTA_bus\(24);
\Mult0~33\ <= \Mult0~8_RESULTA_bus\(25);
\Mult0~34\ <= \Mult0~8_RESULTA_bus\(26);
\Mult0~35\ <= \Mult0~8_RESULTA_bus\(27);
\Mult0~36\ <= \Mult0~8_RESULTA_bus\(28);
\Mult0~37\ <= \Mult0~8_RESULTA_bus\(29);
\Mult0~38\ <= \Mult0~8_RESULTA_bus\(30);
\Mult0~39\ <= \Mult0~8_RESULTA_bus\(31);
\Mult0~40\ <= \Mult0~8_RESULTA_bus\(32);
\Mult0~41\ <= \Mult0~8_RESULTA_bus\(33);
\Mult0~42\ <= \Mult0~8_RESULTA_bus\(34);
\Mult0~43\ <= \Mult0~8_RESULTA_bus\(35);
\Mult0~44\ <= \Mult0~8_RESULTA_bus\(36);
\Mult0~45\ <= \Mult0~8_RESULTA_bus\(37);
\Mult0~46\ <= \Mult0~8_RESULTA_bus\(38);
\Mult0~47\ <= \Mult0~8_RESULTA_bus\(39);
\Mult0~48\ <= \Mult0~8_RESULTA_bus\(40);
\Mult0~49\ <= \Mult0~8_RESULTA_bus\(41);
\Mult0~50\ <= \Mult0~8_RESULTA_bus\(42);
\Mult0~51\ <= \Mult0~8_RESULTA_bus\(43);
\Mult0~52\ <= \Mult0~8_RESULTA_bus\(44);
\Mult0~53\ <= \Mult0~8_RESULTA_bus\(45);
\Mult0~54\ <= \Mult0~8_RESULTA_bus\(46);
\Mult0~55\ <= \Mult0~8_RESULTA_bus\(47);
\Mult0~56\ <= \Mult0~8_RESULTA_bus\(48);
\Mult0~57\ <= \Mult0~8_RESULTA_bus\(49);
\Mult0~58\ <= \Mult0~8_RESULTA_bus\(50);
\Mult0~59\ <= \Mult0~8_RESULTA_bus\(51);
\Mult0~60\ <= \Mult0~8_RESULTA_bus\(52);
\Mult0~61\ <= \Mult0~8_RESULTA_bus\(53);
\Mult0~62\ <= \Mult0~8_RESULTA_bus\(54);
\Mult0~63\ <= \Mult0~8_RESULTA_bus\(55);
\Mult0~64\ <= \Mult0~8_RESULTA_bus\(56);
\Mult0~65\ <= \Mult0~8_RESULTA_bus\(57);
\Mult0~66\ <= \Mult0~8_RESULTA_bus\(58);
\Mult0~67\ <= \Mult0~8_RESULTA_bus\(59);
\Mult0~68\ <= \Mult0~8_RESULTA_bus\(60);
\Mult0~69\ <= \Mult0~8_RESULTA_bus\(61);
\Mult0~70\ <= \Mult0~8_RESULTA_bus\(62);
\Mult0~71\ <= \Mult0~8_RESULTA_bus\(63);
\ALT_INV_Mult0~13\ <= NOT \Mult0~13\;
\ALT_INV_Mult0~12\ <= NOT \Mult0~12\;
\ALT_INV_Mult0~11\ <= NOT \Mult0~11\;
\ALT_INV_Mult0~10\ <= NOT \Mult0~10\;
\ALT_INV_Mult0~9\ <= NOT \Mult0~9\;
\ALT_INV_Mult0~8_resulta\ <= NOT \Mult0~8_resulta\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~1_sumout\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[20]~6_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\ <= NOT \Div0|auto_generated|divider|divider|StageOut[17]~0_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[21]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\;
\ALT_INV_Mux21~0_combout\ <= NOT \Mux21~0_combout\;
\ALT_INV_dezena[3]~3_combout\ <= NOT \dezena[3]~3_combout\;
\ALT_INV_dezena[2]~2_combout\ <= NOT \dezena[2]~2_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\;
\Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~0_combout\ <= NOT \Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\;
\ALT_INV_dezena[1]~1_combout\ <= NOT \dezena[1]~1_combout\;
\ALT_INV_dezena[0]~0_combout\ <= NOT \dezena[0]~0_combout\;
\ALT_INV_Mux14~0_combout\ <= NOT \Mux14~0_combout\;
\ALT_INV_unidade[3]~6_combout\ <= NOT \unidade[3]~6_combout\;
\ALT_INV_unidade[3]~5_combout\ <= NOT \unidade[3]~5_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\;
\ALT_INV_unidade[2]~4_combout\ <= NOT \unidade[2]~4_combout\;
\ALT_INV_unidade[2]~3_combout\ <= NOT \unidade[2]~3_combout\;
\Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\ <= NOT \Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\;
\ALT_INV_unidade[1]~2_combout\ <= NOT \unidade[1]~2_combout\;
\ALT_INV_unidade[0]~1_combout\ <= NOT \unidade[0]~1_combout\;
\ALT_INV_unidade[0]~0_combout\ <= NOT \unidade[0]~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_OUTPUT[1]~2_combout\ <= NOT \OUTPUT[1]~2_combout\;
\ALT_INV_Add0~2_combout\ <= NOT \Add0~2_combout\;
\ALT_INV_OUTPUT[2]~1_combout\ <= NOT \OUTPUT[2]~1_combout\;
\ALT_INV_Add0~1_combout\ <= NOT \Add0~1_combout\;
\ALT_INV_OUTPUT[3]~0_combout\ <= NOT \OUTPUT[3]~0_combout\;
\ALT_INV_Add0~0_combout\ <= NOT \Add0~0_combout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_2~17_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_2~17_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_2~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[3]~21_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~9_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_2~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_2~21_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_2~21_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~25_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_2~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[4]~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_2~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~17_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[2]~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~13_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_2~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[1]~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~9_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[0]~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_3~1_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~5_sumout\;
\Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Mod1|auto_generated|divider|divider|op_4~1_sumout\;
\Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\ <= NOT \Div0|auto_generated|divider|divider|op_4~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_2~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~17_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_2~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_2~1_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~13_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_4~9_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~5_sumout\;
\Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\ <= NOT \Mod0|auto_generated|divider|divider|op_3~1_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~0_combout\,
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
	i => \Mux19~0_combout\,
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
	i => \Mux18~0_combout\,
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
	i => \Mux17~0_combout\,
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
	i => \Mux16~0_combout\,
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
	i => \Mux15~0_combout\,
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
	i => \ALT_INV_Mux14~0_combout\,
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
	i => \Mux27~0_combout\,
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
	i => \Mux26~0_combout\,
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
	i => \Mux25~0_combout\,
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
	i => \Mux24~0_combout\,
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
	i => \Mux23~0_combout\,
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
	i => \Mux22~0_combout\,
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
	i => \ALT_INV_Mux21~0_combout\,
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
	i => \Mux13~0_combout\,
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
	i => \Mux12~0_combout\,
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
	i => \Mux11~0_combout\,
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
	i => \Mux10~0_combout\,
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
	i => \Mux9~0_combout\,
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
	i => \Mux8~0_combout\,
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
	i => \Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X89_Y16_N5
\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

-- Location: IOOBUF_X89_Y16_N22
\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

-- Location: IOOBUF_X89_Y4_N45
\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

-- Location: IOOBUF_X89_Y4_N62
\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

-- Location: IOOBUF_X89_Y21_N39
\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

-- Location: IOOBUF_X89_Y11_N62
\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

-- Location: IOOBUF_X89_Y9_N5
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

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

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: DSP_X86_Y4_N0
\Mult0~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 3,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 3,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m9x9",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "false",
	signed_may => "false",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~8_AX_bus\,
	ay => \Mult0~8_AY_bus\,
	resulta => \Mult0~8_RESULTA_bus\);

-- Location: LABCELL_X88_Y4_N0
\Add0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = ( \SW[5]~input_o\ & ( \SW[1]~input_o\ & ( (((\SW[3]~input_o\ & \SW[0]~input_o\)) # (\SW[4]~input_o\)) # (\SW[2]~input_o\) ) ) ) # ( !\SW[5]~input_o\ & ( \SW[1]~input_o\ & ( (\SW[2]~input_o\ & (((\SW[3]~input_o\ & \SW[0]~input_o\)) # 
-- (\SW[4]~input_o\))) ) ) ) # ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ & ( ((\SW[4]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\))) # (\SW[2]~input_o\) ) ) ) # ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ & ( (\SW[2]~input_o\ & (\SW[4]~input_o\ & (\SW[3]~input_o\ 
-- & \SW[0]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001010101010101011100010001000101010111011101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Add0~0_combout\);

-- Location: LABCELL_X88_Y4_N6
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = ( \SW[5]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ $ ((((\SW[3]~input_o\ & \SW[0]~input_o\)) # (\SW[4]~input_o\))) ) ) ) # ( !\SW[5]~input_o\ & ( \SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (((!\SW[4]~input_o\ & ((!\SW[3]~input_o\) # 
-- (!\SW[0]~input_o\))))) ) ) ) # ( \SW[5]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (((\SW[4]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))) ) ) ) # ( !\SW[5]~input_o\ & ( !\SW[1]~input_o\ & ( !\SW[2]~input_o\ $ (((!\SW[4]~input_o\) # 
-- ((!\SW[3]~input_o\) # (!\SW[0]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010110101010101010100101100110011010101001100110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[5]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Add0~1_combout\);

-- Location: MLABCELL_X84_Y5_N0
\Mod0|auto_generated|divider|divider|op_2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_2~18_cout\);

-- Location: MLABCELL_X84_Y5_N3
\Mod0|auto_generated|divider|divider|op_2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~5_sumout\ = SUM(( (!\SW[6]~input_o\ & ((\Mult0~10\))) # (\SW[6]~input_o\ & (\Add0~1_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_2~18_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_2~6\ = CARRY(( (!\SW[6]~input_o\ & ((\Mult0~10\))) # (\SW[6]~input_o\ & (\Add0~1_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_2~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~1_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_Mult0~10\,
	cin => \Mod0|auto_generated|divider|divider|op_2~18_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_2~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~6\);

-- Location: MLABCELL_X84_Y5_N6
\Mod0|auto_generated|divider|divider|op_2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~9_sumout\ = SUM(( GND ) + ( (!\SW[6]~input_o\ & ((\Mult0~11\))) # (\SW[6]~input_o\ & (\Add0~0_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_2~6\ ))
-- \Mod0|auto_generated|divider|divider|op_2~10\ = CARRY(( GND ) + ( (!\SW[6]~input_o\ & ((\Mult0~11\))) # (\SW[6]~input_o\ & (\Add0~0_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	dataf => \ALT_INV_Mult0~11\,
	cin => \Mod0|auto_generated|divider|divider|op_2~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_2~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~10\);

-- Location: MLABCELL_X84_Y5_N9
\Mod0|auto_generated|divider|divider|op_2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~21_sumout\ = SUM(( (!\SW[6]~input_o\ & \Mult0~12\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_2~10\ ))
-- \Mod0|auto_generated|divider|divider|op_2~22\ = CARRY(( (!\SW[6]~input_o\ & \Mult0~12\) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_Mult0~12\,
	cin => \Mod0|auto_generated|divider|divider|op_2~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_2~21_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~22\);

-- Location: MLABCELL_X84_Y5_N12
\Mod0|auto_generated|divider|divider|op_2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~13_sumout\ = SUM(( GND ) + ( (!\SW[6]~input_o\ & \Mult0~13\) ) + ( \Mod0|auto_generated|divider|divider|op_2~22\ ))
-- \Mod0|auto_generated|divider|divider|op_2~14\ = CARRY(( GND ) + ( (!\SW[6]~input_o\ & \Mult0~13\) ) + ( \Mod0|auto_generated|divider|divider|op_2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~13\,
	cin => \Mod0|auto_generated|divider|divider|op_2~22\,
	sumout => \Mod0|auto_generated|divider|divider|op_2~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_2~14\);

-- Location: MLABCELL_X84_Y5_N15
\Mod0|auto_generated|divider|divider|op_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_2~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_2~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_2~1_sumout\);

-- Location: MLABCELL_X84_Y4_N30
\Mod0|auto_generated|divider|divider|StageOut[19]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\ = (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & \Mod0|auto_generated|divider|divider|op_2~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\);

-- Location: MLABCELL_X84_Y5_N51
\OUTPUT[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTPUT[3]~0_combout\ = ( \Mult0~11\ & ( (!\SW[6]~input_o\) # (\Add0~0_combout\) ) ) # ( !\Mult0~11\ & ( (\Add0~0_combout\ & \SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~11\,
	combout => \OUTPUT[3]~0_combout\);

-- Location: MLABCELL_X84_Y4_N33
\Mod0|auto_generated|divider|divider|StageOut[19]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\ = (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & \OUTPUT[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_OUTPUT[3]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\);

-- Location: MLABCELL_X84_Y5_N21
\OUTPUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTPUT[2]~1_combout\ = ( \Add0~1_combout\ & ( (\SW[6]~input_o\) # (\Mult0~10\) ) ) # ( !\Add0~1_combout\ & ( (\Mult0~10\ & !\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~10\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Add0~1_combout\,
	combout => \OUTPUT[2]~1_combout\);

-- Location: LABCELL_X88_Y4_N36
\Add0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = ( \SW[1]~input_o\ & ( !\SW[4]~input_o\ $ (((\SW[3]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\SW[1]~input_o\ & ( !\SW[4]~input_o\ $ (((!\SW[3]~input_o\) # (!\SW[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101100110001100110110011011001100100110011100110010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \Add0~2_combout\);

-- Location: MLABCELL_X84_Y5_N24
\Mod0|auto_generated|divider|divider|op_3~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_3~22_cout\);

-- Location: MLABCELL_X84_Y5_N27
\Mod0|auto_generated|divider|divider|op_3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~5_sumout\ = SUM(( (!\SW[6]~input_o\ & (\Mult0~9\)) # (\SW[6]~input_o\ & ((\Add0~2_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_3~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_3~6\ = CARRY(( (!\SW[6]~input_o\ & (\Mult0~9\)) # (\SW[6]~input_o\ & ((\Add0~2_combout\))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_3~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~9\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Add0~2_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_3~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~5_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~6\);

-- Location: MLABCELL_X84_Y5_N30
\Mod0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_2~5_sumout\)) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & ((\OUTPUT[2]~1_combout\))) 
-- ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_3~6\ ))
-- \Mod0|auto_generated|divider|divider|op_3~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_2~5_sumout\)) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & ((\OUTPUT[2]~1_combout\))) ) + 
-- ( GND ) + ( \Mod0|auto_generated|divider|divider|op_3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_OUTPUT[2]~1_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_3~6\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~10\);

-- Location: MLABCELL_X84_Y5_N33
\Mod0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( VCC ) + ( (\Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( \Mod0|auto_generated|divider|divider|op_3~10\ ))
-- \Mod0|auto_generated|divider|divider|op_3~14\ = CARRY(( VCC ) + ( (\Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\) ) + ( \Mod0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_3~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~14\);

-- Location: MLABCELL_X84_Y5_N36
\Mod0|auto_generated|divider|divider|op_3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~25_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_2~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~12\))) ) + ( \Mod0|auto_generated|divider|divider|op_3~14\ ))
-- \Mod0|auto_generated|divider|divider|op_3~26\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_2~21_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~12\))) ) + ( \Mod0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_Mult0~12\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~21_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_3~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~25_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~26\);

-- Location: MLABCELL_X84_Y5_N39
\Mod0|auto_generated|divider|divider|op_3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~17_sumout\ = SUM(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_2~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~13\))) ) + ( \Mod0|auto_generated|divider|divider|op_3~26\ ))
-- \Mod0|auto_generated|divider|divider|op_3~18\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Mod0|auto_generated|divider|divider|op_2~13_sumout\)))) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~13\))) ) + ( \Mod0|auto_generated|divider|divider|op_3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111010011000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_Mult0~13\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_3~26\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_3~18\);

-- Location: MLABCELL_X84_Y5_N42
\Mod0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_3~18\,
	sumout => \Mod0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: MLABCELL_X84_Y5_N54
\Mod0|auto_generated|divider|divider|StageOut[21]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\ = ( \Mod0|auto_generated|divider|divider|op_2~13_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\);

-- Location: LABCELL_X83_Y4_N27
\Mod0|auto_generated|divider|divider|StageOut[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~5_combout\ = ( \Mult0~13\ & ( (!\SW[6]~input_o\ & \Mod0|auto_generated|divider|divider|op_2~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	dataf => \ALT_INV_Mult0~13\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~5_combout\);

-- Location: MLABCELL_X84_Y5_N18
\Mod0|auto_generated|divider|divider|StageOut[20]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~6_combout\ = ( !\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_2~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~21_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~6_combout\);

-- Location: MLABCELL_X84_Y5_N57
\Mod0|auto_generated|divider|divider|StageOut[20]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\ = (\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & (!\SW[6]~input_o\ & \Mult0~12\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_Mult0~12\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\);

-- Location: MLABCELL_X84_Y4_N6
\Mod0|auto_generated|divider|divider|StageOut[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\ ) # ( !\Mod0|auto_generated|divider|divider|StageOut[19]~1_combout\ & ( 
-- \Mod0|auto_generated|divider|divider|StageOut[19]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~2_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\);

-- Location: MLABCELL_X84_Y5_N48
\Mod0|auto_generated|divider|divider|StageOut[18]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\ = ( \OUTPUT[2]~1_combout\ & ( (\Mod0|auto_generated|divider|divider|op_2~5_sumout\) # (\Mod0|auto_generated|divider|divider|op_2~1_sumout\) ) ) # ( !\OUTPUT[2]~1_combout\ & ( 
-- (!\Mod0|auto_generated|divider|divider|op_2~1_sumout\ & \Mod0|auto_generated|divider|divider|op_2~5_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\,
	dataf => \ALT_INV_OUTPUT[2]~1_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LABCELL_X83_Y4_N24
\OUTPUT[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \OUTPUT[1]~2_combout\ = ( \Mult0~9\ & ( (!\SW[6]~input_o\) # (\Add0~2_combout\) ) ) # ( !\Mult0~9\ & ( (\SW[6]~input_o\ & \Add0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_Add0~2_combout\,
	dataf => \ALT_INV_Mult0~9\,
	combout => \OUTPUT[1]~2_combout\);

-- Location: LABCELL_X83_Y4_N0
\Mod0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X83_Y4_N3
\Mod0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( (!\SW[6]~input_o\ & (((\Mult0~8_resulta\)))) # (\SW[6]~input_o\ & (!\SW[0]~input_o\ $ ((!\SW[3]~input_o\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))
-- \Mod0|auto_generated|divider|divider|op_4~2\ = CARRY(( (!\SW[6]~input_o\ & (((\Mult0~8_resulta\)))) # (\SW[6]~input_o\ & (!\SW[0]~input_o\ $ ((!\SW[3]~input_o\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001001011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \ALT_INV_Mult0~8_resulta\,
	cin => \Mod0|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~1_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~2\);

-- Location: LABCELL_X83_Y4_N6
\Mod0|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & (\OUTPUT[1]~2_combout\)) 
-- ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~2\ ))
-- \Mod0|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~5_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & (\OUTPUT[1]~2_combout\)) ) + 
-- ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \ALT_INV_OUTPUT[1]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~2\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~10\);

-- Location: LABCELL_X83_Y4_N9
\Mod0|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~10\ ))
-- \Mod0|auto_generated|divider|divider|op_4~14\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~9_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\)) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~10\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~14\);

-- Location: LABCELL_X83_Y4_N12
\Mod0|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))
-- \Mod0|auto_generated|divider|divider|op_4~18\ = CARRY(( GND ) + ( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Mod0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\)) ) + ( \Mod0|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~14\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~18\);

-- Location: LABCELL_X83_Y4_N15
\Mod0|auto_generated|divider|divider|op_4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~30_cout\ = CARRY(( VCC ) + ( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_3~25_sumout\)) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[20]~7_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[20]~6_combout\)))) ) + ( \Mod0|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001000100000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~25_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~6_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[20]~7_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~18\,
	cout => \Mod0|auto_generated|divider|divider|op_4~30_cout\);

-- Location: LABCELL_X83_Y4_N18
\Mod0|auto_generated|divider|divider|op_4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~26_cout\ = CARRY(( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & (\Mod0|auto_generated|divider|divider|op_3~17_sumout\)) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Mod0|auto_generated|divider|divider|StageOut[21]~5_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~4_combout\)))) ) + ( VCC ) + ( \Mod0|auto_generated|divider|divider|op_4~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[21]~5_combout\,
	cin => \Mod0|auto_generated|divider|divider|op_4~30_cout\,
	cout => \Mod0|auto_generated|divider|divider|op_4~26_cout\);

-- Location: LABCELL_X83_Y4_N21
\Mod0|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod0|auto_generated|divider|divider|op_4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|op_4~26_cout\,
	sumout => \Mod0|auto_generated|divider|divider|op_4~5_sumout\);

-- Location: LABCELL_X83_Y4_N30
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \OUTPUT[2]~1_combout\ & ( \Mult0~12\ & ( (!\OUTPUT[3]~0_combout\ & \SW[6]~input_o\) ) ) ) # ( !\OUTPUT[2]~1_combout\ & ( \Mult0~12\ & ( (\SW[6]~input_o\ & ((!\OUTPUT[1]~2_combout\) # (!\OUTPUT[3]~0_combout\))) ) ) ) # ( 
-- \OUTPUT[2]~1_combout\ & ( !\Mult0~12\ & ( (!\OUTPUT[3]~0_combout\ & ((!\Mult0~13\) # (\SW[6]~input_o\))) ) ) ) # ( !\OUTPUT[2]~1_combout\ & ( !\Mult0~12\ & ( (!\OUTPUT[1]~2_combout\ & ((!\Mult0~13\) # ((\SW[6]~input_o\)))) # (\OUTPUT[1]~2_combout\ & 
-- (!\OUTPUT[3]~0_combout\ & ((!\Mult0~13\) # (\SW[6]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011111010110000001111000000000000111110100000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OUTPUT[1]~2_combout\,
	datab => \ALT_INV_Mult0~13\,
	datac => \ALT_INV_OUTPUT[3]~0_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	datae => \ALT_INV_OUTPUT[2]~1_combout\,
	dataf => \ALT_INV_Mult0~12\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X83_Y4_N51
\unidade[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[2]~3_combout\ = ( \Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ( (\Mod0|auto_generated|divider|divider|op_3~9_sumout\) # (\Mod0|auto_generated|divider|divider|op_3~1_sumout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & \Mod0|auto_generated|divider|divider|op_3~9_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[18]~0_combout\,
	combout => \unidade[2]~3_combout\);

-- Location: LABCELL_X83_Y4_N54
\unidade[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[2]~4_combout\ = ( \Mod0|auto_generated|divider|divider|op_4~13_sumout\ & ( (!\LessThan0~0_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~5_sumout\) # ((\unidade[2]~3_combout\)))) # (\LessThan0~0_combout\ & (((\OUTPUT[2]~1_combout\)))) ) 
-- ) # ( !\Mod0|auto_generated|divider|divider|op_4~13_sumout\ & ( (!\LessThan0~0_combout\ & (\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & (\unidade[2]~3_combout\))) # (\LessThan0~0_combout\ & (((\OUTPUT[2]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000110111000001000011011110001100101111111000110010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_unidade[2]~3_combout\,
	datad => \ALT_INV_OUTPUT[2]~1_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \unidade[2]~4_combout\);

-- Location: LABCELL_X83_Y4_N42
\unidade[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[1]~2_combout\ = ( \Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_4~9_sumout\ & ( ((!\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & !\LessThan0~0_combout\)) # (\OUTPUT[1]~2_combout\) ) ) ) # 
-- ( !\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ( \Mod0|auto_generated|divider|divider|op_4~9_sumout\ & ( (!\LessThan0~0_combout\ & (((!\Mod0|auto_generated|divider|divider|op_4~5_sumout\) # 
-- (\Mod0|auto_generated|divider|divider|op_3~5_sumout\)))) # (\LessThan0~0_combout\ & (\OUTPUT[1]~2_combout\)) ) ) ) # ( \Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_4~9_sumout\ & ( (\OUTPUT[1]~2_combout\ 
-- & ((\LessThan0~0_combout\) # (\Mod0|auto_generated|divider|divider|op_4~5_sumout\))) ) ) ) # ( !\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & ( !\Mod0|auto_generated|divider|divider|op_4~9_sumout\ & ( (!\LessThan0~0_combout\ & 
-- (((\Mod0|auto_generated|divider|divider|op_3~5_sumout\ & \Mod0|auto_generated|divider|divider|op_4~5_sumout\)))) # (\LessThan0~0_combout\ & (\OUTPUT[1]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010101000001010101010111110011010101011111010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OUTPUT[1]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~5_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	combout => \unidade[1]~2_combout\);

-- Location: LABCELL_X83_Y4_N48
\unidade[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[3]~5_combout\ = ( \Mod0|auto_generated|divider|divider|op_3~13_sumout\ & ( (!\Mod0|auto_generated|divider|divider|op_3~1_sumout\) # (\Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\) ) ) # ( 
-- !\Mod0|auto_generated|divider|divider|op_3~13_sumout\ & ( (\Mod0|auto_generated|divider|divider|op_3~1_sumout\ & \Mod0|auto_generated|divider|divider|StageOut[19]~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_StageOut[19]~3_combout\,
	dataf => \Mod0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	combout => \unidade[3]~5_combout\);

-- Location: LABCELL_X83_Y4_N57
\unidade[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[3]~6_combout\ = ( \OUTPUT[3]~0_combout\ & ( ((!\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & (\Mod0|auto_generated|divider|divider|op_4~17_sumout\)) # (\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & ((\unidade[3]~5_combout\)))) # 
-- (\LessThan0~0_combout\) ) ) # ( !\OUTPUT[3]~0_combout\ & ( (!\LessThan0~0_combout\ & ((!\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & (\Mod0|auto_generated|divider|divider|op_4~17_sumout\)) # (\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & 
-- ((\unidade[3]~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000111011011111110011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \ALT_INV_unidade[3]~5_combout\,
	dataf => \ALT_INV_OUTPUT[3]~0_combout\,
	combout => \unidade[3]~6_combout\);

-- Location: LABCELL_X83_Y4_N36
\unidade[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[0]~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[6]~input_o\ & ((\Mult0~8_resulta\))) # (\SW[6]~input_o\ & (!\SW[3]~input_o\)) ) ) # ( !\SW[0]~input_o\ & ( (!\SW[6]~input_o\ & ((\Mult0~8_resulta\))) # (\SW[6]~input_o\ & (\SW[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100001100111111000000110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	datad => \ALT_INV_Mult0~8_resulta\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \unidade[0]~0_combout\);

-- Location: LABCELL_X83_Y4_N39
\unidade[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \unidade[0]~1_combout\ = ( \LessThan0~0_combout\ & ( \unidade[0]~0_combout\ ) ) # ( !\LessThan0~0_combout\ & ( (!\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & ((\Mod0|auto_generated|divider|divider|op_4~1_sumout\))) # 
-- (\Mod0|auto_generated|divider|divider|op_4~5_sumout\ & (\unidade[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datac => \ALT_INV_unidade[0]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \unidade[0]~1_combout\);

-- Location: MLABCELL_X84_Y4_N45
\Mux20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( (!\unidade[2]~4_combout\ & !\unidade[1]~2_combout\) ) ) ) # ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (\unidade[2]~4_combout\ & !\unidade[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_unidade[2]~4_combout\,
	datac => \ALT_INV_unidade[1]~2_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux20~0_combout\);

-- Location: MLABCELL_X84_Y4_N18
\Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( (!\unidade[1]~2_combout\ & \unidade[2]~4_combout\) ) ) ) # ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (\unidade[1]~2_combout\ & \unidade[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000001100000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_unidade[1]~2_combout\,
	datac => \ALT_INV_unidade[2]~4_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux19~0_combout\);

-- Location: MLABCELL_X84_Y4_N57
\Mux18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (!\unidade[2]~4_combout\ & \unidade[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_unidade[2]~4_combout\,
	datac => \ALT_INV_unidade[1]~2_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux18~0_combout\);

-- Location: MLABCELL_X84_Y4_N3
\Mux17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( !\unidade[2]~4_combout\ $ (\unidade[1]~2_combout\) ) ) ) # ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (\unidade[2]~4_combout\ & !\unidade[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000010100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_unidade[2]~4_combout\,
	datac => \ALT_INV_unidade[1]~2_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux17~0_combout\);

-- Location: MLABCELL_X84_Y4_N36
\Mux16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = ( \unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( (!\unidade[1]~2_combout\ & !\unidade[2]~4_combout\) ) ) ) # ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ ) ) # ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( 
-- (!\unidade[1]~2_combout\ & \unidade[2]~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000000000000000011111111111111111100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_unidade[1]~2_combout\,
	datac => \ALT_INV_unidade[2]~4_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux16~0_combout\);

-- Location: MLABCELL_X84_Y4_N15
\Mux15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( (!\unidade[2]~4_combout\) # (\unidade[1]~2_combout\) ) ) ) # ( !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (!\unidade[2]~4_combout\ & \unidade[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000010101111101011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_unidade[2]~4_combout\,
	datac => \ALT_INV_unidade[1]~2_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux15~0_combout\);

-- Location: MLABCELL_X84_Y4_N48
\Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = ( \unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ ) ) # ( !\unidade[3]~6_combout\ & ( \unidade[0]~1_combout\ & ( !\unidade[1]~2_combout\ $ (!\unidade[2]~4_combout\) ) ) ) # ( \unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ ) ) # ( 
-- !\unidade[3]~6_combout\ & ( !\unidade[0]~1_combout\ & ( (\unidade[2]~4_combout\) # (\unidade[1]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111111111111111111100111100001111001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_unidade[1]~2_combout\,
	datac => \ALT_INV_unidade[2]~4_combout\,
	datae => \ALT_INV_unidade[3]~6_combout\,
	dataf => \ALT_INV_unidade[0]~1_combout\,
	combout => \Mux14~0_combout\);

-- Location: LABCELL_X85_Y4_N6
\Div0|auto_generated|divider|divider|op_2~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~22_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_2~22_cout\);

-- Location: LABCELL_X85_Y4_N9
\Div0|auto_generated|divider|divider|op_2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~17_sumout\ = SUM(( (!\SW[6]~input_o\ & (\Mult0~10\)) # (\SW[6]~input_o\ & ((\Add0~1_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_2~22_cout\ ))
-- \Div0|auto_generated|divider|divider|op_2~18\ = CARRY(( (!\SW[6]~input_o\ & (\Mult0~10\)) # (\SW[6]~input_o\ & ((\Add0~1_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_2~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mult0~10\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Add0~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_2~22_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_2~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_2~18\);

-- Location: LABCELL_X85_Y4_N12
\Div0|auto_generated|divider|divider|op_2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~13_sumout\ = SUM(( (!\SW[6]~input_o\ & ((\Mult0~11\))) # (\SW[6]~input_o\ & (\Add0~0_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_2~18\ ))
-- \Div0|auto_generated|divider|divider|op_2~14\ = CARRY(( (!\SW[6]~input_o\ & ((\Mult0~11\))) # (\SW[6]~input_o\ & (\Add0~0_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Add0~0_combout\,
	datad => \ALT_INV_Mult0~11\,
	cin => \Div0|auto_generated|divider|divider|op_2~18\,
	sumout => \Div0|auto_generated|divider|divider|op_2~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_2~14\);

-- Location: LABCELL_X85_Y4_N15
\Div0|auto_generated|divider|divider|op_2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~9_sumout\ = SUM(( VCC ) + ( (!\SW[6]~input_o\ & \Mult0~12\) ) + ( \Div0|auto_generated|divider|divider|op_2~14\ ))
-- \Div0|auto_generated|divider|divider|op_2~10\ = CARRY(( VCC ) + ( (!\SW[6]~input_o\ & \Mult0~12\) ) + ( \Div0|auto_generated|divider|divider|op_2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~12\,
	cin => \Div0|auto_generated|divider|divider|op_2~14\,
	sumout => \Div0|auto_generated|divider|divider|op_2~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_2~10\);

-- Location: LABCELL_X85_Y4_N18
\Div0|auto_generated|divider|divider|op_2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~5_sumout\ = SUM(( GND ) + ( (!\SW[6]~input_o\ & \Mult0~13\) ) + ( \Div0|auto_generated|divider|divider|op_2~10\ ))
-- \Div0|auto_generated|divider|divider|op_2~6\ = CARRY(( GND ) + ( (!\SW[6]~input_o\ & \Mult0~13\) ) + ( \Div0|auto_generated|divider|divider|op_2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~13\,
	cin => \Div0|auto_generated|divider|divider|op_2~10\,
	sumout => \Div0|auto_generated|divider|divider|op_2~5_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_2~6\);

-- Location: LABCELL_X85_Y4_N21
\Div0|auto_generated|divider|divider|op_2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_2~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_2~6\,
	sumout => \Div0|auto_generated|divider|divider|op_2~1_sumout\);

-- Location: LABCELL_X85_Y4_N30
\Div0|auto_generated|divider|divider|StageOut[16]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ = (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & \Div0|auto_generated|divider|divider|op_2~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LABCELL_X85_Y4_N3
\Div0|auto_generated|divider|divider|StageOut[16]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\ = (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & \OUTPUT[3]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_OUTPUT[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~4_combout\);

-- Location: LABCELL_X85_Y4_N36
\Div0|auto_generated|divider|divider|op_3~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_3~26_cout\);

-- Location: LABCELL_X85_Y4_N39
\Div0|auto_generated|divider|divider|op_3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~21_sumout\ = SUM(( (!\SW[6]~input_o\ & ((\Mult0~9\))) # (\SW[6]~input_o\ & (\Add0~2_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~26_cout\ ))
-- \Div0|auto_generated|divider|divider|op_3~22\ = CARRY(( (!\SW[6]~input_o\ & ((\Mult0~9\))) # (\SW[6]~input_o\ & (\Add0~2_combout\)) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~2_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Mult0~9\,
	cin => \Div0|auto_generated|divider|divider|op_3~26_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~21_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~22\);

-- Location: LABCELL_X85_Y4_N42
\Div0|auto_generated|divider|divider|op_3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~17_sumout\ = SUM(( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_2~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (\OUTPUT[2]~1_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~22\ ))
-- \Div0|auto_generated|divider|divider|op_3~18\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_2~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (\OUTPUT[2]~1_combout\)) ) + 
-- ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_OUTPUT[2]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_2~17_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~22\,
	sumout => \Div0|auto_generated|divider|divider|op_3~17_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~18\);

-- Location: LABCELL_X85_Y4_N45
\Div0|auto_generated|divider|divider|op_3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~13_sumout\ = SUM(( (\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~3_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~18\ ))
-- \Div0|auto_generated|divider|divider|op_3~14\ = CARRY(( (\Div0|auto_generated|divider|divider|StageOut[16]~4_combout\) # (\Div0|auto_generated|divider|divider|StageOut[16]~3_combout\) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~3_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~4_combout\,
	cin => \Div0|auto_generated|divider|divider|op_3~18\,
	sumout => \Div0|auto_generated|divider|divider|op_3~13_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~14\);

-- Location: LABCELL_X85_Y4_N48
\Div0|auto_generated|divider|divider|op_3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~9_sumout\ = SUM(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_2~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~12\))) ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))
-- \Div0|auto_generated|divider|divider|op_3~10\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_2~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (!\SW[6]~input_o\ 
-- & (\Mult0~12\))) ) + ( \Div0|auto_generated|divider|divider|op_3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Mult0~12\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~14\,
	sumout => \Div0|auto_generated|divider|divider|op_3~9_sumout\,
	cout => \Div0|auto_generated|divider|divider|op_3~10\);

-- Location: LABCELL_X85_Y4_N51
\Div0|auto_generated|divider|divider|op_3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~6_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_2~5_sumout\)))) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- (!\SW[6]~input_o\ & (\Mult0~13\))) ) + ( \Div0|auto_generated|divider|divider|op_3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \ALT_INV_Mult0~13\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_2~5_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_3~10\,
	cout => \Div0|auto_generated|divider|divider|op_3~6_cout\);

-- Location: LABCELL_X85_Y4_N54
\Div0|auto_generated|divider|divider|op_3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_3~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_3~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_3~1_sumout\);

-- Location: MLABCELL_X87_Y8_N0
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\ = CARRY(( !\Div0|auto_generated|divider|divider|op_3~1_sumout\ ) + ( !VCC ) + ( !VCC ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\ = SHARE(VCC)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	cin => GND,
	sharein => GND,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\);

-- Location: MLABCELL_X87_Y8_N3
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_2~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\ = CARRY(( !\Div0|auto_generated|divider|divider|op_2~1_sumout\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\ ) + ( 
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~6\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~7\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\);

-- Location: MLABCELL_X87_Y8_N6
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\ = SUM(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\ = CARRY(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~10\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~11\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\);

-- Location: MLABCELL_X87_Y8_N9
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21_sumout\ = SUM(( GND ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\ = CARRY(( GND ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~14\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~15\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\);

-- Location: MLABCELL_X87_Y8_N12
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17_sumout\ = SUM(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~18\ = CARRY(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\ ))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~19\ = SHARE(GND)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~22\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~23\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~18\,
	shareout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~19\);

-- Location: MLABCELL_X87_Y8_N15
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ = SUM(( VCC ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~19\ ) + ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~18\,
	sharein => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~19\,
	sumout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\);

-- Location: LABCELL_X85_Y4_N0
\Div0|auto_generated|divider|divider|StageOut[17]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~0_combout\ = ( \Div0|auto_generated|divider|divider|op_2~9_sumout\ & ( !\Div0|auto_generated|divider|divider|op_2~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_2~9_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~0_combout\);

-- Location: LABCELL_X85_Y4_N27
\Div0|auto_generated|divider|divider|StageOut[17]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ = ( \Mult0~12\ & ( (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & !\SW[6]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~12\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LABCELL_X85_Y4_N33
\Div0|auto_generated|divider|divider|StageOut[16]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\ = (!\Div0|auto_generated|divider|divider|op_2~1_sumout\ & (\Div0|auto_generated|divider|divider|op_2~13_sumout\)) # (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & 
-- ((\OUTPUT[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_op_2~13_sumout\,
	datac => \ALT_INV_OUTPUT[3]~0_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~2_combout\);

-- Location: LABCELL_X85_Y4_N24
\Div0|auto_generated|divider|divider|StageOut[15]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ = ( \Div0|auto_generated|divider|divider|op_2~17_sumout\ & ( (!\Div0|auto_generated|divider|divider|op_2~1_sumout\) # (\OUTPUT[2]~1_combout\) ) ) # ( 
-- !\Div0|auto_generated|divider|divider|op_2~17_sumout\ & ( (\Div0|auto_generated|divider|divider|op_2~1_sumout\ & \OUTPUT[2]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	datac => \ALT_INV_OUTPUT[2]~1_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_2~17_sumout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LABCELL_X88_Y4_N12
\Div0|auto_generated|divider|divider|op_4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Div0|auto_generated|divider|divider|op_4~26_cout\);

-- Location: LABCELL_X88_Y4_N15
\Div0|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( (!\SW[6]~input_o\ & (((\Mult0~8_resulta\)))) # (\SW[6]~input_o\ & (!\SW[3]~input_o\ $ ((!\SW[0]~input_o\)))) ) + ( \Div0|auto_generated|divider|divider|op_4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110010000100100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_Mult0~8_resulta\,
	cin => \Div0|auto_generated|divider|divider|op_4~26_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~22_cout\);

-- Location: LABCELL_X88_Y4_N18
\Div0|auto_generated|divider|divider|op_4~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~18_cout\ = CARRY(( GND ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~21_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\OUTPUT[1]~2_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \ALT_INV_OUTPUT[1]~2_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~21_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~22_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~18_cout\);

-- Location: LABCELL_X88_Y4_N21
\Div0|auto_generated|divider|divider|op_4~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~14_cout\ = CARRY(( VCC ) + ( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~17_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~5_combout\)) ) + ( \Div0|auto_generated|divider|divider|op_4~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110100101000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[15]~5_combout\,
	dataf => \Div0|auto_generated|divider|divider|ALT_INV_op_3~17_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~18_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~14_cout\);

-- Location: LABCELL_X88_Y4_N24
\Div0|auto_generated|divider|divider|op_4~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~10_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & ((\Div0|auto_generated|divider|divider|op_3~13_sumout\))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (\Div0|auto_generated|divider|divider|StageOut[16]~2_combout\)) ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[16]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_3~13_sumout\,
	cin => \Div0|auto_generated|divider|divider|op_4~14_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~10_cout\);

-- Location: LABCELL_X88_Y4_N27
\Div0|auto_generated|divider|divider|op_4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~6_cout\ = CARRY(( (!\Div0|auto_generated|divider|divider|op_3~1_sumout\ & (((\Div0|auto_generated|divider|divider|op_3~9_sumout\)))) # (\Div0|auto_generated|divider|divider|op_3~1_sumout\ & 
-- (((\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\)) # (\Div0|auto_generated|divider|divider|StageOut[17]~0_combout\))) ) + ( VCC ) + ( \Div0|auto_generated|divider|divider|op_4~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001101101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~0_combout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~9_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_StageOut[17]~1_combout\,
	cin => \Div0|auto_generated|divider|divider|op_4~10_cout\,
	cout => \Div0|auto_generated|divider|divider|op_4~6_cout\);

-- Location: LABCELL_X88_Y4_N30
\Div0|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Div0|auto_generated|divider|divider|op_4~6_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|op_4~6_cout\,
	sumout => \Div0|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: MLABCELL_X87_Y8_N24
\Mod1|auto_generated|divider|divider|op_4~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~26_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Mod1|auto_generated|divider|divider|op_4~26_cout\);

-- Location: MLABCELL_X87_Y8_N27
\Mod1|auto_generated|divider|divider|op_4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~5_sumout\ = SUM(( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_4~26_cout\ ))
-- \Mod1|auto_generated|divider|divider|op_4~6\ = CARRY(( !\Div0|auto_generated|divider|divider|op_4~1_sumout\ ) + ( VCC ) + ( \Mod1|auto_generated|divider|divider|op_4~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~26_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~5_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~6\);

-- Location: MLABCELL_X87_Y8_N30
\Mod1|auto_generated|divider|divider|op_4~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~9_sumout\ = SUM(( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~6\ ))
-- \Mod1|auto_generated|divider|divider|op_4~10\ = CARRY(( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\))) # 
-- (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_3~1_sumout\)) ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	datac => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[0]~5_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~6\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~9_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~10\);

-- Location: MLABCELL_X87_Y8_N21
\Mod1|auto_generated|divider|divider|StageOut[25]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\ = ( !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[1]~9_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\);

-- Location: LABCELL_X83_Y8_N0
\Mod1|auto_generated|divider|divider|StageOut[25]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\ = ( !\Div0|auto_generated|divider|divider|op_2~1_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	datae => \Div0|auto_generated|divider|divider|ALT_INV_op_2~1_sumout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\);

-- Location: MLABCELL_X87_Y8_N33
\Mod1|auto_generated|divider|divider|op_4~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~13_sumout\ = SUM(( VCC ) + ( (\Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\) ) + ( \Mod1|auto_generated|divider|divider|op_4~10\ ))
-- \Mod1|auto_generated|divider|divider|op_4~14\ = CARRY(( VCC ) + ( (\Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\) ) + ( \Mod1|auto_generated|divider|divider|op_4~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~0_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~10\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~13_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~14\);

-- Location: MLABCELL_X87_Y8_N36
\Mod1|auto_generated|divider|divider|op_4~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~17_sumout\ = SUM(( GND ) + ( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\) ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14\ ))
-- \Mod1|auto_generated|divider|divider|op_4~18\ = CARRY(( GND ) + ( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\) ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[2]~13_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~14\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~17_sumout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~18\);

-- Location: MLABCELL_X87_Y8_N39
\Mod1|auto_generated|divider|divider|op_4~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~30_cout\ = CARRY(( VCC ) + ( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~21_sumout\) ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[3]~21_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~18\,
	cout => \Mod1|auto_generated|divider|divider|op_4~30_cout\);

-- Location: MLABCELL_X87_Y8_N42
\Mod1|auto_generated|divider|divider|op_4~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~22_cout\ = CARRY(( VCC ) + ( (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~17_sumout\) ) + ( 
-- \Mod1|auto_generated|divider|divider|op_4~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110011001100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[4]~17_sumout\,
	cin => \Mod1|auto_generated|divider|divider|op_4~30_cout\,
	cout => \Mod1|auto_generated|divider|divider|op_4~22_cout\);

-- Location: MLABCELL_X87_Y8_N45
\Mod1|auto_generated|divider|divider|op_4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|op_4~1_sumout\ = SUM(( VCC ) + ( GND ) + ( \Mod1|auto_generated|divider|divider|op_4~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|op_4~22_cout\,
	sumout => \Mod1|auto_generated|divider|divider|op_4~1_sumout\);

-- Location: MLABCELL_X87_Y8_N48
\dezena[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \dezena[1]~1_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (!\LessThan0~0_combout\ & 
-- ((!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|op_4~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ & ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (!\LessThan0~0_combout\ & ((!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|op_4~9_sumout\))) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (!\Div0|auto_generated|divider|divider|op_3~1_sumout\)))) ) ) ) # ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ & 
-- ( !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (!\LessThan0~0_combout\ & ((\Mod1|auto_generated|divider|divider|op_4~1_sumout\) # (\Mod1|auto_generated|divider|divider|op_4~9_sumout\))) ) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[0]~5_sumout\ & ( !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (\Mod1|auto_generated|divider|divider|op_4~9_sumout\ & (!\LessThan0~0_combout\ & 
-- !\Mod1|auto_generated|divider|divider|op_4~1_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100001111000000110000101000000011000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|ALT_INV_op_3~1_sumout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~9_sumout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datae => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[0]~5_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	combout => \dezena[1]~1_combout\);

-- Location: MLABCELL_X87_Y8_N54
\dezena[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \dezena[3]~3_combout\ = ( \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (!\LessThan0~0_combout\ & (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & \Mod1|auto_generated|divider|divider|op_4~17_sumout\)) ) ) # ( 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~1_sumout\ & ( (!\LessThan0~0_combout\ & ((!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_4~17_sumout\)) # 
-- (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & ((\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~17_sumout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[2]~13_sumout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_add_sub_4_result_int[5]~1_sumout\,
	combout => \dezena[3]~3_combout\);

-- Location: MLABCELL_X87_Y8_N57
\dezena[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \dezena[2]~2_combout\ = ( \Mod1|auto_generated|divider|divider|op_4~13_sumout\ & ( (!\LessThan0~0_combout\ & ((!\Mod1|auto_generated|divider|divider|op_4~1_sumout\) # ((\Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\)))) ) ) # ( !\Mod1|auto_generated|divider|divider|op_4~13_sumout\ & ( (!\LessThan0~0_combout\ & (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[25]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[25]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010000000100010001010001010101010101000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~1_combout\,
	datad => \Mod1|auto_generated|divider|divider|ALT_INV_StageOut[25]~0_combout\,
	dataf => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~13_sumout\,
	combout => \dezena[2]~2_combout\);

-- Location: MLABCELL_X87_Y8_N18
\dezena[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \dezena[0]~0_combout\ = ( !\LessThan0~0_combout\ & ( (!\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & (\Mod1|auto_generated|divider|divider|op_4~5_sumout\)) # (\Mod1|auto_generated|divider|divider|op_4~1_sumout\ & 
-- ((!\Div0|auto_generated|divider|divider|op_4~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	datac => \Mod1|auto_generated|divider|divider|ALT_INV_op_4~5_sumout\,
	datad => \Div0|auto_generated|divider|divider|ALT_INV_op_4~1_sumout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \dezena[0]~0_combout\);

-- Location: LABCELL_X83_Y12_N30
\Mux27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = ( \dezena[0]~0_combout\ & ( (!\dezena[1]~1_combout\ & (!\dezena[3]~3_combout\ & !\dezena[2]~2_combout\)) ) ) # ( !\dezena[0]~0_combout\ & ( (!\dezena[1]~1_combout\ & (!\dezena[3]~3_combout\ & \dezena[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000100000001000000000001000000010001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[1]~1_combout\,
	datab => \ALT_INV_dezena[3]~3_combout\,
	datac => \ALT_INV_dezena[2]~2_combout\,
	datae => \ALT_INV_dezena[0]~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: LABCELL_X83_Y12_N39
\Mux26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = ( \dezena[0]~0_combout\ & ( (\dezena[2]~2_combout\ & (!\dezena[3]~3_combout\ & !\dezena[1]~1_combout\)) ) ) # ( !\dezena[0]~0_combout\ & ( (\dezena[2]~2_combout\ & (!\dezena[3]~3_combout\ & \dezena[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000010100000000000000000000010100000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[2]~2_combout\,
	datac => \ALT_INV_dezena[3]~3_combout\,
	datad => \ALT_INV_dezena[1]~1_combout\,
	datae => \ALT_INV_dezena[0]~0_combout\,
	combout => \Mux26~0_combout\);

-- Location: LABCELL_X83_Y12_N15
\Mux25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = ( !\dezena[0]~0_combout\ & ( (!\dezena[2]~2_combout\ & (!\dezena[3]~3_combout\ & \dezena[1]~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000000000000000000000101000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[2]~2_combout\,
	datac => \ALT_INV_dezena[3]~3_combout\,
	datad => \ALT_INV_dezena[1]~1_combout\,
	datae => \ALT_INV_dezena[0]~0_combout\,
	combout => \Mux25~0_combout\);

-- Location: LABCELL_X83_Y12_N18
\Mux24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux24~0_combout\ = ( \dezena[2]~2_combout\ & ( (!\dezena[3]~3_combout\ & (!\dezena[1]~1_combout\ $ (\dezena[0]~0_combout\))) ) ) # ( !\dezena[2]~2_combout\ & ( (!\dezena[1]~1_combout\ & (!\dezena[3]~3_combout\ & \dezena[0]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010000100100001001000010010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[1]~1_combout\,
	datab => \ALT_INV_dezena[3]~3_combout\,
	datac => \ALT_INV_dezena[0]~0_combout\,
	dataf => \ALT_INV_dezena[2]~2_combout\,
	combout => \Mux24~0_combout\);

-- Location: LABCELL_X83_Y12_N21
\Mux23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = ( \dezena[2]~2_combout\ & ( (!\dezena[3]~3_combout\ & ((!\dezena[1]~1_combout\) # (\dezena[0]~0_combout\))) ) ) # ( !\dezena[2]~2_combout\ & ( (\dezena[0]~0_combout\ & ((!\dezena[1]~1_combout\) # (!\dezena[3]~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101110000000001110111010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[1]~1_combout\,
	datab => \ALT_INV_dezena[3]~3_combout\,
	datad => \ALT_INV_dezena[0]~0_combout\,
	dataf => \ALT_INV_dezena[2]~2_combout\,
	combout => \Mux23~0_combout\);

-- Location: LABCELL_X83_Y12_N24
\Mux22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ( \dezena[0]~0_combout\ & ( (!\dezena[3]~3_combout\ & ((!\dezena[2]~2_combout\) # (\dezena[1]~1_combout\))) ) ) # ( !\dezena[0]~0_combout\ & ( (\dezena[1]~1_combout\ & (!\dezena[3]~3_combout\ & !\dezena[2]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000110001001100010001000000010000001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[1]~1_combout\,
	datab => \ALT_INV_dezena[3]~3_combout\,
	datac => \ALT_INV_dezena[2]~2_combout\,
	datae => \ALT_INV_dezena[0]~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: LABCELL_X83_Y12_N0
\Mux21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = ( \dezena[0]~0_combout\ & ( (!\dezena[1]~1_combout\ $ (!\dezena[2]~2_combout\)) # (\dezena[3]~3_combout\) ) ) # ( !\dezena[0]~0_combout\ & ( ((\dezena[2]~2_combout\) # (\dezena[3]~3_combout\)) # (\dezena[1]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011110110111101101111111011111110111101101111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_dezena[1]~1_combout\,
	datab => \ALT_INV_dezena[3]~3_combout\,
	datac => \ALT_INV_dezena[2]~2_combout\,
	datae => \ALT_INV_dezena[0]~0_combout\,
	combout => \Mux21~0_combout\);

-- Location: LABCELL_X83_Y12_N9
\Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = ( \SW[0]~input_o\ & ( (!\SW[2]~input_o\ & !\SW[1]~input_o\) ) ) # ( !\SW[0]~input_o\ & ( (\SW[2]~input_o\ & !\SW[1]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101000001010000001010000010100001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datae => \ALT_INV_SW[0]~input_o\,
	combout => \Mux13~0_combout\);

-- Location: LABCELL_X83_Y12_N42
\Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \Mux12~0_combout\);

-- Location: LABCELL_X83_Y12_N45
\Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \Mux11~0_combout\);

-- Location: LABCELL_X83_Y12_N48
\Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)) # (\SW[2]~input_o\ & (!\SW[1]~input_o\ $ (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100101000100100110010100010010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \Mux10~0_combout\);

-- Location: LABCELL_X83_Y12_N51
\Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = ((\SW[2]~input_o\ & !\SW[1]~input_o\)) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011111111010100001111111101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \Mux9~0_combout\);

-- Location: LABCELL_X83_Y12_N54
\Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (!\SW[2]~input_o\ & ((\SW[0]~input_o\) # (\SW[1]~input_o\))) # (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100100010101110110010001010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	combout => \Mux8~0_combout\);

-- Location: LABCELL_X83_Y12_N57
\Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\)) # (\SW[2]~input_o\ & (\SW[1]~input_o\ & \SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100110001001100010011000100110001001100010011000100110001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_SW[0]~input_o\,
	combout => \Mux7~0_combout\);

-- Location: LABCELL_X88_Y4_N45
\Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100001000100100010000100010010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LABCELL_X88_Y4_N51
\Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\SW[5]~input_o\ & (!\SW[4]~input_o\ $ (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LABCELL_X88_Y4_N39
\Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!\SW[3]~input_o\ & (\SW[4]~input_o\ & !\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[5]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LABCELL_X88_Y4_N42
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ $ (!\SW[3]~input_o\))) # (\SW[4]~input_o\ & (\SW[5]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100001100110000110000110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LABCELL_X88_Y4_N48
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ((!\SW[4]~input_o\ & \SW[5]~input_o\)) # (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011111111000011001111111100001100111111110000110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X88_Y4_N54
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\SW[4]~input_o\ & (!\SW[5]~input_o\ & \SW[3]~input_o\)) # (\SW[4]~input_o\ & ((!\SW[5]~input_o\) # (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110011001100001111001100110000111100110011000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X88_Y4_N57
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (!\SW[5]~input_o\ & (!\SW[4]~input_o\)) # (\SW[5]~input_o\ & (\SW[4]~input_o\ & \SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010011001100010001001100110001000100110011000100010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_SW[3]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: MLABCELL_X28_Y43_N0
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


