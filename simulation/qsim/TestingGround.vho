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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

-- DATE "04/23/2022 19:44:29"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	GenRegV2 IS
    PORT (
	i_clk : IN std_logic;
	i_rst : IN std_logic;
	i_enable_in : IN std_logic;
	i_enable_out : IN std_logic;
	b_data : INOUT std_logic_vector(7 DOWNTO 0)
	);
END GenRegV2;

ARCHITECTURE structure OF GenRegV2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clk : std_logic;
SIGNAL ww_i_rst : std_logic;
SIGNAL ww_i_enable_in : std_logic;
SIGNAL ww_i_enable_out : std_logic;
SIGNAL \b_data[0]~output_o\ : std_logic;
SIGNAL \b_data[1]~output_o\ : std_logic;
SIGNAL \b_data[2]~output_o\ : std_logic;
SIGNAL \b_data[3]~output_o\ : std_logic;
SIGNAL \b_data[4]~output_o\ : std_logic;
SIGNAL \b_data[5]~output_o\ : std_logic;
SIGNAL \b_data[6]~output_o\ : std_logic;
SIGNAL \b_data[7]~output_o\ : std_logic;
SIGNAL \i_clk~input_o\ : std_logic;
SIGNAL \b_data[0]~input_o\ : std_logic;
SIGNAL \i_rst~input_o\ : std_logic;
SIGNAL \i_enable_in~input_o\ : std_logic;
SIGNAL \GEN_REG:0:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:7:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:0:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \i_enable_out~input_o\ : std_logic;
SIGNAL \GEN_REG:0:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:0:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[1]~input_o\ : std_logic;
SIGNAL \GEN_REG:1:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:1:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:1:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:1:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[2]~input_o\ : std_logic;
SIGNAL \GEN_REG:2:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:2:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:2:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:2:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[3]~input_o\ : std_logic;
SIGNAL \GEN_REG:3:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:3:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:3:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:3:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[4]~input_o\ : std_logic;
SIGNAL \GEN_REG:4:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:4:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:4:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:4:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[5]~input_o\ : std_logic;
SIGNAL \GEN_REG:5:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:5:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:5:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:5:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[6]~input_o\ : std_logic;
SIGNAL \GEN_REG:6:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:6:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:6:REGX|b_data~1_combout\ : std_logic;
SIGNAL \GEN_REG:6:REGX|b_data~en_q\ : std_logic;
SIGNAL \b_data[7]~input_o\ : std_logic;
SIGNAL \GEN_REG:7:REGX|s_latched_data~q\ : std_logic;
SIGNAL \GEN_REG:7:REGX|b_data~reg0_q\ : std_logic;
SIGNAL \GEN_REG:7:REGX|b_data~2_combout\ : std_logic;
SIGNAL \GEN_REG:7:REGX|b_data~en_q\ : std_logic;
SIGNAL \ALT_INV_i_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_i_enable_in~input_o\ : std_logic;
SIGNAL \ALT_INV_i_enable_out~input_o\ : std_logic;

BEGIN

ww_i_clk <= i_clk;
ww_i_rst <= i_rst;
ww_i_enable_in <= i_enable_in;
ww_i_enable_out <= i_enable_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_i_rst~input_o\ <= NOT \i_rst~input_o\;
\ALT_INV_i_enable_in~input_o\ <= NOT \i_enable_in~input_o\;
\ALT_INV_i_enable_out~input_o\ <= NOT \i_enable_out~input_o\;

\b_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:0:REGX|b_data~reg0_q\,
	oe => \GEN_REG:0:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[0]~output_o\);

\b_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:1:REGX|b_data~reg0_q\,
	oe => \GEN_REG:1:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[1]~output_o\);

\b_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:2:REGX|b_data~reg0_q\,
	oe => \GEN_REG:2:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[2]~output_o\);

\b_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:3:REGX|b_data~reg0_q\,
	oe => \GEN_REG:3:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[3]~output_o\);

\b_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:4:REGX|b_data~reg0_q\,
	oe => \GEN_REG:4:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[4]~output_o\);

\b_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:5:REGX|b_data~reg0_q\,
	oe => \GEN_REG:5:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[5]~output_o\);

\b_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:6:REGX|b_data~reg0_q\,
	oe => \GEN_REG:6:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[6]~output_o\);

\b_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \GEN_REG:7:REGX|b_data~reg0_q\,
	oe => \GEN_REG:7:REGX|b_data~en_q\,
	devoe => ww_devoe,
	o => \b_data[7]~output_o\);

\i_clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_clk,
	o => \i_clk~input_o\);

\b_data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(0),
	o => \b_data[0]~input_o\);

\i_rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_rst,
	o => \i_rst~input_o\);

\i_enable_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable_in,
	o => \i_enable_in~input_o\);

\GEN_REG:0:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[0]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:0:REGX|s_latched_data~q\);

\GEN_REG:7:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:7:REGX|b_data~1_combout\ = (\i_rst~input_o\ & \i_enable_in~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_rst~input_o\,
	datab => \ALT_INV_i_enable_in~input_o\,
	combout => \GEN_REG:7:REGX|b_data~1_combout\);

\GEN_REG:0:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:0:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:0:REGX|b_data~reg0_q\);

\i_enable_out~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i_enable_out,
	o => \i_enable_out~input_o\);

\GEN_REG:0:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:0:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:0:REGX|b_data~1_combout\);

\GEN_REG:0:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:0:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:0:REGX|b_data~en_q\);

\b_data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(1),
	o => \b_data[1]~input_o\);

\GEN_REG:1:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[1]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:1:REGX|s_latched_data~q\);

\GEN_REG:1:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:1:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:1:REGX|b_data~reg0_q\);

\GEN_REG:1:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:1:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:1:REGX|b_data~1_combout\);

\GEN_REG:1:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:1:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:1:REGX|b_data~en_q\);

\b_data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(2),
	o => \b_data[2]~input_o\);

\GEN_REG:2:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[2]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:2:REGX|s_latched_data~q\);

\GEN_REG:2:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:2:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:2:REGX|b_data~reg0_q\);

\GEN_REG:2:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:2:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:2:REGX|b_data~1_combout\);

\GEN_REG:2:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:2:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:2:REGX|b_data~en_q\);

\b_data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(3),
	o => \b_data[3]~input_o\);

\GEN_REG:3:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[3]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:3:REGX|s_latched_data~q\);

\GEN_REG:3:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:3:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:3:REGX|b_data~reg0_q\);

\GEN_REG:3:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:3:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:3:REGX|b_data~1_combout\);

\GEN_REG:3:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:3:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:3:REGX|b_data~en_q\);

\b_data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(4),
	o => \b_data[4]~input_o\);

\GEN_REG:4:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[4]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:4:REGX|s_latched_data~q\);

\GEN_REG:4:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:4:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:4:REGX|b_data~reg0_q\);

\GEN_REG:4:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:4:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:4:REGX|b_data~1_combout\);

\GEN_REG:4:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:4:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:4:REGX|b_data~en_q\);

\b_data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(5),
	o => \b_data[5]~input_o\);

\GEN_REG:5:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[5]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:5:REGX|s_latched_data~q\);

\GEN_REG:5:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:5:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:5:REGX|b_data~reg0_q\);

\GEN_REG:5:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:5:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:5:REGX|b_data~1_combout\);

\GEN_REG:5:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:5:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:5:REGX|b_data~en_q\);

\b_data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(6),
	o => \b_data[6]~input_o\);

\GEN_REG:6:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[6]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:6:REGX|s_latched_data~q\);

\GEN_REG:6:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:6:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:6:REGX|b_data~reg0_q\);

\GEN_REG:6:REGX|b_data~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:6:REGX|b_data~1_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:6:REGX|b_data~1_combout\);

\GEN_REG:6:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:6:REGX|b_data~1_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:6:REGX|b_data~en_q\);

\b_data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => b_data(7),
	o => \b_data[7]~input_o\);

\GEN_REG:7:REGX|s_latched_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \b_data[7]~input_o\,
	clrn => \i_rst~input_o\,
	ena => \ALT_INV_i_enable_in~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:7:REGX|s_latched_data~q\);

\GEN_REG:7:REGX|b_data~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:7:REGX|s_latched_data~q\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:7:REGX|b_data~reg0_q\);

\GEN_REG:7:REGX|b_data~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \GEN_REG:7:REGX|b_data~2_combout\ = !\i_enable_out~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_i_enable_out~input_o\,
	combout => \GEN_REG:7:REGX|b_data~2_combout\);

\GEN_REG:7:REGX|b_data~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i_clk~input_o\,
	d => \GEN_REG:7:REGX|b_data~2_combout\,
	ena => \GEN_REG:7:REGX|b_data~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \GEN_REG:7:REGX|b_data~en_q\);

b_data(0) <= \b_data[0]~output_o\;

b_data(1) <= \b_data[1]~output_o\;

b_data(2) <= \b_data[2]~output_o\;

b_data(3) <= \b_data[3]~output_o\;

b_data(4) <= \b_data[4]~output_o\;

b_data(5) <= \b_data[5]~output_o\;

b_data(6) <= \b_data[6]~output_o\;

b_data(7) <= \b_data[7]~output_o\;
END structure;


