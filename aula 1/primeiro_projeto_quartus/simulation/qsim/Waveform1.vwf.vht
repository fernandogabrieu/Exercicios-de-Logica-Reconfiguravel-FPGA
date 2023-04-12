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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "08/17/2022 18:48:59"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          primeiro_projeto
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY primeiro_projeto_vhd_vec_tst IS
END primeiro_projeto_vhd_vec_tst;
ARCHITECTURE primeiro_projeto_arch OF primeiro_projeto_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL IN1 : STD_LOGIC;
SIGNAL IN2 : STD_LOGIC;
SIGNAL IN3 : STD_LOGIC;
SIGNAL IN4 : STD_LOGIC;
SIGNAL SAIDA : STD_LOGIC;
COMPONENT primeiro_projeto
	PORT (
	IN1 : IN STD_LOGIC;
	IN2 : IN STD_LOGIC;
	IN3 : IN STD_LOGIC;
	IN4 : IN STD_LOGIC;
	SAIDA : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : primeiro_projeto
	PORT MAP (
-- list connections between master ports and signals
	IN1 => IN1,
	IN2 => IN2,
	IN3 => IN3,
	IN4 => IN4,
	SAIDA => SAIDA
	);

-- IN1
t_prcs_IN1: PROCESS
BEGIN
LOOP
	IN1 <= '0';
	WAIT FOR 50000 ps;
	IN1 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN1;

-- IN2
t_prcs_IN2: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		IN2 <= '0';
		WAIT FOR 75000 ps;
		IN2 <= '1';
		WAIT FOR 75000 ps;
	END LOOP;
	IN2 <= '0';
	WAIT FOR 75000 ps;
	IN2 <= '1';
WAIT;
END PROCESS t_prcs_IN2;

-- IN3
t_prcs_IN3: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		IN3 <= '0';
		WAIT FOR 150000 ps;
		IN3 <= '1';
		WAIT FOR 150000 ps;
	END LOOP;
	IN3 <= '0';
WAIT;
END PROCESS t_prcs_IN3;

-- IN4
t_prcs_IN4: PROCESS
BEGIN
LOOP
	IN4 <= '0';
	WAIT FOR 100000 ps;
	IN4 <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_IN4;
END primeiro_projeto_arch;
