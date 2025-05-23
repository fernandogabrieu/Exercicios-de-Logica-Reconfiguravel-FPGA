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
-- Generated on "11/16/2021 18:03:48"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CALC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CALC_vhd_vec_tst IS
END CALC_vhd_vec_tst;
ARCHITECTURE CALC_arch OF CALC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL B : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL SEL : STD_LOGIC;
COMPONENT CALC
	PORT (
	A : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	B : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	OUTPUT : BUFFER STD_LOGIC_VECTOR(5 DOWNTO 0);
	SEL : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CALC
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	OUTPUT => OUTPUT,
	SEL => SEL
	);
-- A[2]
t_prcs_A_2: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		A(2) <= '0';
		WAIT FOR 160000 ps;
		A(2) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	A(2) <= '0';
WAIT;
END PROCESS t_prcs_A_2;
-- A[1]
t_prcs_A_1: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		A(1) <= '0';
		WAIT FOR 80000 ps;
		A(1) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	A(1) <= '0';
WAIT;
END PROCESS t_prcs_A_1;
-- A[0]
t_prcs_A_0: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		A(0) <= '0';
		WAIT FOR 40000 ps;
		A(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	A(0) <= '0';
WAIT;
END PROCESS t_prcs_A_0;
-- B[2]
t_prcs_B_2: PROCESS
BEGIN
	B(2) <= '0';
WAIT;
END PROCESS t_prcs_B_2;
-- B[1]
t_prcs_B_1: PROCESS
BEGIN
	B(1) <= '1';
WAIT;
END PROCESS t_prcs_B_1;
-- B[0]
t_prcs_B_0: PROCESS
BEGIN
	B(0) <= '0';
WAIT;
END PROCESS t_prcs_B_0;

-- SEL
t_prcs_SEL: PROCESS
BEGIN
	SEL <= '1';
	WAIT FOR 480000 ps;
	SEL <= '0';
WAIT;
END PROCESS t_prcs_SEL;
END CALC_arch;
