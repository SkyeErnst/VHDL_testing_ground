-- Copyright (C) 2021  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/20/2022 14:38:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GenericRegister
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GenericRegister_vhd_vec_tst IS
END GenericRegister_vhd_vec_tst;
ARCHITECTURE GenericRegister_arch OF GenericRegister_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_data : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL i_chip_sel : STD_LOGIC;
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_mode : STD_LOGIC;
SIGNAL i_n_clr : STD_LOGIC;
SIGNAL o_n_q : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL o_q_direct : STD_LOGIC_VECTOR(15 DOWNTO 0);
COMPONENT GenericRegister
	PORT (
	b_data : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	i_chip_sel : IN STD_LOGIC;
	i_clk : IN STD_LOGIC;
	i_mode : IN STD_LOGIC;
	i_n_clr : IN STD_LOGIC;
	o_n_q : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0);
	o_q_direct : BUFFER STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : GenericRegister
	PORT MAP (
-- list connections between master ports and signals
	b_data => b_data,
	i_chip_sel => i_chip_sel,
	i_clk => i_clk,
	i_mode => i_mode,
	i_n_clr => i_n_clr,
	o_n_q => o_n_q,
	o_q_direct => o_q_direct
	);

-- i_clk
t_prcs_i_clk: PROCESS
BEGIN
LOOP
	i_clk <= '0';
	WAIT FOR 10000 ps;
	i_clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 500000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clk;

-- i_n_clr
t_prcs_i_n_clr: PROCESS
BEGIN
	i_n_clr <= '0';
	WAIT FOR 10000 ps;
	i_n_clr <= '1';
WAIT;
END PROCESS t_prcs_i_n_clr;

-- i_chip_sel
t_prcs_i_chip_sel: PROCESS
BEGIN
	i_chip_sel <= '0';
	WAIT FOR 10000 ps;
	i_chip_sel <= '1';
	WAIT FOR 10000 ps;
	i_chip_sel <= '0';
WAIT;
END PROCESS t_prcs_i_chip_sel;

-- i_mode
t_prcs_i_mode: PROCESS
BEGIN
	i_mode <= '0';
	WAIT FOR 10000 ps;
	i_mode <= '1';
	WAIT FOR 10000 ps;
	i_mode <= '0';
WAIT;
END PROCESS t_prcs_i_mode;
-- b_data[15]
t_prcs_b_data_15: PROCESS
BEGIN
	b_data(15) <= '1';
	WAIT FOR 20000 ps;
	b_data(15) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_15;
-- b_data[14]
t_prcs_b_data_14: PROCESS
BEGIN
	b_data(14) <= '1';
	WAIT FOR 20000 ps;
	b_data(14) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_14;
-- b_data[13]
t_prcs_b_data_13: PROCESS
BEGIN
	b_data(13) <= '1';
	WAIT FOR 20000 ps;
	b_data(13) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_13;
-- b_data[12]
t_prcs_b_data_12: PROCESS
BEGIN
	b_data(12) <= '1';
	WAIT FOR 20000 ps;
	b_data(12) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_12;
-- b_data[11]
t_prcs_b_data_11: PROCESS
BEGIN
	b_data(11) <= '1';
	WAIT FOR 20000 ps;
	b_data(11) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_11;
-- b_data[10]
t_prcs_b_data_10: PROCESS
BEGIN
	b_data(10) <= '1';
	WAIT FOR 20000 ps;
	b_data(10) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_10;
-- b_data[9]
t_prcs_b_data_9: PROCESS
BEGIN
	b_data(9) <= '1';
	WAIT FOR 20000 ps;
	b_data(9) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_9;
-- b_data[8]
t_prcs_b_data_8: PROCESS
BEGIN
	b_data(8) <= '1';
	WAIT FOR 20000 ps;
	b_data(8) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_8;
-- b_data[7]
t_prcs_b_data_7: PROCESS
BEGIN
	b_data(7) <= '1';
	WAIT FOR 20000 ps;
	b_data(7) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_7;
-- b_data[6]
t_prcs_b_data_6: PROCESS
BEGIN
	b_data(6) <= '1';
	WAIT FOR 20000 ps;
	b_data(6) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_6;
-- b_data[5]
t_prcs_b_data_5: PROCESS
BEGIN
	b_data(5) <= '1';
	WAIT FOR 20000 ps;
	b_data(5) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_5;
-- b_data[4]
t_prcs_b_data_4: PROCESS
BEGIN
	b_data(4) <= '1';
	WAIT FOR 20000 ps;
	b_data(4) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_4;
-- b_data[3]
t_prcs_b_data_3: PROCESS
BEGIN
	b_data(3) <= '1';
	WAIT FOR 20000 ps;
	b_data(3) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_3;
-- b_data[2]
t_prcs_b_data_2: PROCESS
BEGIN
	b_data(2) <= '1';
	WAIT FOR 20000 ps;
	b_data(2) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_2;
-- b_data[1]
t_prcs_b_data_1: PROCESS
BEGIN
	b_data(1) <= '1';
	WAIT FOR 20000 ps;
	b_data(1) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_1;
-- b_data[0]
t_prcs_b_data_0: PROCESS
BEGIN
	b_data(0) <= '1';
	WAIT FOR 20000 ps;
	b_data(0) <= 'Z';
WAIT;
END PROCESS t_prcs_b_data_0;
END GenericRegister_arch;
