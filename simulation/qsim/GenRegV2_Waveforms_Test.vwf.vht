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
-- Generated on "04/23/2022 19:44:28"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          GenRegV2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY GenRegV2_vhd_vec_tst IS
END GenRegV2_vhd_vec_tst;
ARCHITECTURE GenRegV2_arch OF GenRegV2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL b_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL i_clk : STD_LOGIC;
SIGNAL i_enable_in : STD_LOGIC;
SIGNAL i_enable_out : STD_LOGIC;
SIGNAL i_rst : STD_LOGIC;
COMPONENT GenRegV2
	PORT (
	b_data : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	i_clk : IN STD_LOGIC;
	i_enable_in : IN STD_LOGIC;
	i_enable_out : IN STD_LOGIC;
	i_rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : GenRegV2
	PORT MAP (
-- list connections between master ports and signals
	b_data => b_data,
	i_clk => i_clk,
	i_enable_in => i_enable_in,
	i_enable_out => i_enable_out,
	i_rst => i_rst
	);

-- i_clk
t_prcs_i_clk: PROCESS
BEGIN
LOOP
	i_clk <= '0';
	WAIT FOR 10000 ps;
	i_clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 100000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_i_clk;

-- i_enable_in
t_prcs_i_enable_in: PROCESS
BEGIN
	i_enable_in <= '1';
	WAIT FOR 20000 ps;
	i_enable_in <= '0';
	WAIT FOR 20000 ps;
	i_enable_in <= '1';
WAIT;
END PROCESS t_prcs_i_enable_in;

-- i_enable_out
t_prcs_i_enable_out: PROCESS
BEGIN
	i_enable_out <= '1';
WAIT;
END PROCESS t_prcs_i_enable_out;

-- i_rst
t_prcs_i_rst: PROCESS
BEGIN
	i_rst <= '1';
WAIT;
END PROCESS t_prcs_i_rst;
END GenRegV2_arch;
