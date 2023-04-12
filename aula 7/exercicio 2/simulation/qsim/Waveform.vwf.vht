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
-- Generated on "09/08/2022 15:30:41"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          generatecond
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY generatecond_vhd_vec_tst IS
END generatecond_vhd_vec_tst;
ARCHITECTURE generatecond_arch OF generatecond_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL d : STD_LOGIC_VECTOR(0 TO 3);
SIGNAL y : STD_LOGIC_VECTOR(0 TO 3);
COMPONENT generatecond
	PORT (
	d : IN STD_LOGIC_VECTOR(0 TO 3);
	y : OUT STD_LOGIC_VECTOR(0 TO 3)
	);
END COMPONENT;
BEGIN
	i1 : generatecond
	PORT MAP (
-- list connections between master ports and signals
	d => d,
	y => y
	);
-- d[3]
t_prcs_d_3: PROCESS
BEGIN
	d(3) <= '0';
WAIT;
END PROCESS t_prcs_d_3;
-- d[2]
t_prcs_d_2: PROCESS
BEGIN
	d(2) <= '0';
WAIT;
END PROCESS t_prcs_d_2;
-- d[1]
t_prcs_d_1: PROCESS
BEGIN
	d(1) <= '0';
WAIT;
END PROCESS t_prcs_d_1;
-- d[0]
t_prcs_d_0: PROCESS
BEGIN
	d(0) <= '0';
WAIT;
END PROCESS t_prcs_d_0;
END generatecond_arch;
