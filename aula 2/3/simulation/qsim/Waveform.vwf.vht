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
-- Generated on "08/18/2022 15:51:54"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          mux_vetor
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY mux_vetor_vhd_vec_tst IS
END mux_vetor_vhd_vec_tst;
ARCHITECTURE mux_vetor_arch OF mux_vetor_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL key : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL led : STD_LOGIC;
SIGNAL switch : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT mux_vetor
	PORT (
	key : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	led : OUT STD_LOGIC;
	switch : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : mux_vetor
	PORT MAP (
-- list connections between master ports and signals
	key => key,
	led => led,
	switch => switch
	);
-- key[1]
t_prcs_key_1: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		key(1) <= '0';
		WAIT FOR 200000 ps;
		key(1) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	key(1) <= '0';
WAIT;
END PROCESS t_prcs_key_1;
-- key[0]
t_prcs_key_0: PROCESS
BEGIN
LOOP
	key(0) <= '0';
	WAIT FOR 100000 ps;
	key(0) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_key_0;
-- switch[3]
t_prcs_switch_3: PROCESS
BEGIN
	switch(3) <= '0';
	WAIT FOR 400000 ps;
	switch(3) <= '1';
	WAIT FOR 400000 ps;
	switch(3) <= '0';
WAIT;
END PROCESS t_prcs_switch_3;
-- switch[2]
t_prcs_switch_2: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		switch(2) <= '0';
		WAIT FOR 200000 ps;
		switch(2) <= '1';
		WAIT FOR 200000 ps;
	END LOOP;
	switch(2) <= '0';
WAIT;
END PROCESS t_prcs_switch_2;
-- switch[1]
t_prcs_switch_1: PROCESS
BEGIN
LOOP
	switch(1) <= '0';
	WAIT FOR 100000 ps;
	switch(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_switch_1;
-- switch[0]
t_prcs_switch_0: PROCESS
BEGIN
LOOP
	switch(0) <= '0';
	WAIT FOR 50000 ps;
	switch(0) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_switch_0;
END mux_vetor_arch;
