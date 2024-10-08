-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Standard Edition"

-- DATE "10/08/2024 14:57:10"

-- 
-- Device: Altera 5M80ZT100A5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	hamming_distance IS
    PORT (
	a : IN std_logic_vector(24 DOWNTO 0);
	b : IN std_logic_vector(24 DOWNTO 0);
	y : BUFFER std_logic_vector(4 DOWNTO 0)
	);
END hamming_distance;

-- Design Ports Information


ARCHITECTURE structure OF hamming_distance IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(24 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(4 DOWNTO 0);
SIGNAL \Add20~0_combout\ : std_logic;
SIGNAL \Add19~6_combout\ : std_logic;
SIGNAL \Add16~0_combout\ : std_logic;
SIGNAL \Add15~6_combout\ : std_logic;
SIGNAL \Add17~0_combout\ : std_logic;
SIGNAL \Add22~0_combout\ : std_logic;
SIGNAL \Add21~0_combout\ : std_logic;
SIGNAL \Add12~0_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \Add13~0_combout\ : std_logic;
SIGNAL \Add23~0_combout\ : std_logic;
SIGNAL \Add16~1_combout\ : std_logic;
SIGNAL \Add15~4_combout\ : std_logic;
SIGNAL \Add20~1_combout\ : std_logic;
SIGNAL \Add19~4_combout\ : std_logic;
SIGNAL \Add17~2\ : std_logic;
SIGNAL \Add17~2COUT1_21\ : std_logic;
SIGNAL \Add17~5_combout\ : std_logic;
SIGNAL \Add22~1_combout\ : std_logic;
SIGNAL \Add21~2\ : std_logic;
SIGNAL \Add21~2COUT1_21\ : std_logic;
SIGNAL \Add21~5_combout\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_21\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~2COUT1_21\ : std_logic;
SIGNAL \Add9~5_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~2COUT1_21\ : std_logic;
SIGNAL \Add11~5_combout\ : std_logic;
SIGNAL \Add12~1_combout\ : std_logic;
SIGNAL \Add13~2\ : std_logic;
SIGNAL \Add13~2COUT1_26\ : std_logic;
SIGNAL \Add13~5_combout\ : std_logic;
SIGNAL \Add23~2\ : std_logic;
SIGNAL \Add23~2COUT1_26\ : std_logic;
SIGNAL \Add23~5_combout\ : std_logic;
SIGNAL \Add19~5_combout\ : std_logic;
SIGNAL \Add15~5_combout\ : std_logic;
SIGNAL \Add17~7\ : std_logic;
SIGNAL \Add17~7COUT1_22\ : std_logic;
SIGNAL \Add17~10_combout\ : std_logic;
SIGNAL \Add21~7\ : std_logic;
SIGNAL \Add21~7COUT1_22\ : std_logic;
SIGNAL \Add21~10_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_22\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add7~5_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~7COUT1_22\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~7COUT1_22\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add13~7\ : std_logic;
SIGNAL \Add13~7COUT1_27\ : std_logic;
SIGNAL \Add13~10_combout\ : std_logic;
SIGNAL \Add23~7\ : std_logic;
SIGNAL \Add23~7COUT1_27\ : std_logic;
SIGNAL \Add23~10_combout\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_23\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add9~12\ : std_logic;
SIGNAL \Add9~12COUT1_23\ : std_logic;
SIGNAL \Add9~15_combout\ : std_logic;
SIGNAL \Add11~12\ : std_logic;
SIGNAL \Add11~12COUT1_23\ : std_logic;
SIGNAL \Add11~15_combout\ : std_logic;
SIGNAL \Add13~12\ : std_logic;
SIGNAL \Add13~12COUT1_28\ : std_logic;
SIGNAL \Add13~15_combout\ : std_logic;
SIGNAL \Add17~12\ : std_logic;
SIGNAL \Add17~12COUT1_23\ : std_logic;
SIGNAL \Add17~15_combout\ : std_logic;
SIGNAL \Add21~12\ : std_logic;
SIGNAL \Add21~12COUT1_23\ : std_logic;
SIGNAL \Add21~15_combout\ : std_logic;
SIGNAL \Add23~12\ : std_logic;
SIGNAL \Add23~12COUT1_28\ : std_logic;
SIGNAL \Add23~15_combout\ : std_logic;
SIGNAL \Add13~17\ : std_logic;
SIGNAL \Add13~17COUT1_29\ : std_logic;
SIGNAL \Add13~20_combout\ : std_logic;
SIGNAL \Add23~17\ : std_logic;
SIGNAL \Add23~17COUT1_29\ : std_logic;
SIGNAL \Add23~20_combout\ : std_logic;
SIGNAL diff : std_logic_vector(24 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(24 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X2_Y3_N2
\Add20~0\ : maxv_lcell
-- Equation(s):
-- \Add20~0_combout\ = \b~combout\(3) $ (\b~combout\(2) $ (\a~combout\(2) $ (\a~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add20~0_combout\);

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X2_Y3_N4
\diff[5]\ : maxv_lcell
-- Equation(s):
-- diff(5) = ((\b~combout\(5) $ (\a~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(5),
	datad => \a~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(5));

-- Location: LC_X3_Y3_N5
\Add19~6\ : maxv_lcell
-- Equation(s):
-- \Add19~6_combout\ = \b~combout\(4) $ (\Add20~0_combout\ $ (\a~combout\(4) $ (diff(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \Add20~0_combout\,
	datac => \a~combout\(4),
	datad => diff(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add19~6_combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X3_Y2_N0
\diff[9]\ : maxv_lcell
-- Equation(s):
-- diff(9) = ((\b~combout\(9) $ (\a~combout\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(9),
	datad => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(9));

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X3_Y2_N4
\Add16~0\ : maxv_lcell
-- Equation(s):
-- \Add16~0_combout\ = \b~combout\(6) $ (\a~combout\(7) $ (\b~combout\(7) $ (\a~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(7),
	datac => \b~combout\(7),
	datad => \a~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add16~0_combout\);

-- Location: LC_X3_Y3_N4
\Add15~6\ : maxv_lcell
-- Equation(s):
-- \Add15~6_combout\ = \b~combout\(8) $ (\a~combout\(8) $ (diff(9) $ (\Add16~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datab => \a~combout\(8),
	datac => diff(9),
	datad => \Add16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add15~6_combout\);

-- Location: LC_X3_Y3_N6
\Add17~0\ : maxv_lcell
-- Equation(s):
-- \Add17~0_combout\ = \Add19~6_combout\ $ ((\Add15~6_combout\))
-- \Add17~2\ = CARRY((\Add19~6_combout\ & (\Add15~6_combout\)))
-- \Add17~2COUT1_21\ = CARRY((\Add19~6_combout\ & (\Add15~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~6_combout\,
	datab => \Add15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add17~0_combout\,
	cout0 => \Add17~2\,
	cout1 => \Add17~2COUT1_21\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X3_Y1_N0
\Add22~0\ : maxv_lcell
-- Equation(s):
-- \Add22~0_combout\ = \b~combout\(1) $ (\a~combout\(1) $ (\a~combout\(0) $ (\b~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add22~0_combout\);

-- Location: LC_X3_Y3_N0
\Add21~0\ : maxv_lcell
-- Equation(s):
-- \Add21~0_combout\ = \Add17~0_combout\ $ ((\Add22~0_combout\))
-- \Add21~2\ = CARRY((\Add17~0_combout\ & (\Add22~0_combout\)))
-- \Add21~2COUT1_21\ = CARRY((\Add17~0_combout\ & (\Add22~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~0_combout\,
	datab => \Add22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add21~0_combout\,
	cout0 => \Add21~2\,
	cout1 => \Add21~2COUT1_21\);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X3_Y1_N6
\Add12~0\ : maxv_lcell
-- Equation(s):
-- \Add12~0_combout\ = \b~combout\(10) $ (\a~combout\(10) $ (\a~combout\(11) $ (\b~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \a~combout\(10),
	datac => \a~combout\(11),
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add12~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X3_Y2_N5
\Add10~0\ : maxv_lcell
-- Equation(s):
-- \Add10~0_combout\ = \a~combout\(12) $ (\b~combout\(12) $ (\b~combout\(13) $ (\a~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \b~combout\(12),
	datac => \b~combout\(13),
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(16),
	combout => \a~combout\(16));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(16),
	combout => \b~combout\(16));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(17),
	combout => \a~combout\(17));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(17),
	combout => \b~combout\(17));

-- Location: LC_X3_Y2_N1
\diff[17]\ : maxv_lcell
-- Equation(s):
-- diff(17) = ((\a~combout\(17) $ (\b~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(17),
	datad => \b~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(17));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X4_Y2_N9
\Add8~0\ : maxv_lcell
-- Equation(s):
-- \Add8~0_combout\ = \a~combout\(15) $ (\a~combout\(14) $ (\b~combout\(15) $ (\b~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datab => \a~combout\(14),
	datac => \b~combout\(15),
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~0_combout\);

-- Location: LC_X4_Y2_N0
\Add7~6\ : maxv_lcell
-- Equation(s):
-- \Add7~6_combout\ = \a~combout\(16) $ (\b~combout\(16) $ (diff(17) $ (\Add8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(16),
	datab => \b~combout\(16),
	datac => diff(17),
	datad => \Add8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~6_combout\);

-- Location: LC_X4_Y2_N1
\Add9~0\ : maxv_lcell
-- Equation(s):
-- \Add9~0_combout\ = \Add10~0_combout\ $ ((\Add7~6_combout\))
-- \Add9~2\ = CARRY((\Add10~0_combout\ & (\Add7~6_combout\)))
-- \Add9~2COUT1_21\ = CARRY((\Add10~0_combout\ & (\Add7~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add7~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~0_combout\,
	cout0 => \Add9~2\,
	cout1 => \Add9~2COUT1_21\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(19),
	combout => \b~combout\(19));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(18),
	combout => \b~combout\(18));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(18),
	combout => \a~combout\(18));

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(19),
	combout => \a~combout\(19));

-- Location: LC_X3_Y1_N8
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = \b~combout\(19) $ (\b~combout\(18) $ (\a~combout\(18) $ (\a~combout\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(19),
	datab => \b~combout\(18),
	datac => \a~combout\(18),
	datad => \a~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(20),
	combout => \a~combout\(20));

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(20),
	combout => \b~combout\(20));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(22),
	combout => \a~combout\(22));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(22),
	combout => \b~combout\(22));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(23),
	combout => \b~combout\(23));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(23),
	combout => \a~combout\(23));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(24),
	combout => \a~combout\(24));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(24),
	combout => \b~combout\(24));

-- Location: LC_X4_Y4_N5
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = \b~combout\(23) $ (\a~combout\(23) $ (\a~combout\(24) $ (\b~combout\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(23),
	datab => \a~combout\(23),
	datac => \a~combout\(24),
	datad => \b~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\);

-- Location: LC_X4_Y4_N9
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = \a~combout\(22) $ (\b~combout\(22) $ ((\Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(22),
	datab => \b~combout\(22),
	datac => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(21),
	combout => \a~combout\(21));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(21),
	combout => \b~combout\(21));

-- Location: LC_X3_Y4_N9
\diff[21]\ : maxv_lcell
-- Equation(s):
-- diff(21) = ((\a~combout\(21) $ (\b~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(21),
	datad => \b~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(21));

-- Location: LC_X3_Y4_N0
\Add3~6\ : maxv_lcell
-- Equation(s):
-- \Add3~6_combout\ = \a~combout\(20) $ (\b~combout\(20) $ (\Add1~0_combout\ $ (diff(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(20),
	datab => \b~combout\(20),
	datac => \Add1~0_combout\,
	datad => diff(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~6_combout\);

-- Location: LC_X3_Y4_N1
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = \Add4~0_combout\ $ ((\Add3~6_combout\))
-- \Add5~2\ = CARRY((\Add4~0_combout\ & (\Add3~6_combout\)))
-- \Add5~2COUT1_21\ = CARRY((\Add4~0_combout\ & (\Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add3~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_21\);

-- Location: LC_X3_Y4_N5
\Add11~0\ : maxv_lcell
-- Equation(s):
-- \Add11~0_combout\ = \Add9~0_combout\ $ ((\Add5~0_combout\))
-- \Add11~2\ = CARRY((\Add9~0_combout\ & (\Add5~0_combout\)))
-- \Add11~2COUT1_21\ = CARRY((\Add9~0_combout\ & (\Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~0_combout\,
	cout0 => \Add11~2\,
	cout1 => \Add11~2COUT1_21\);

-- Location: LC_X2_Y4_N0
\Add13~0\ : maxv_lcell
-- Equation(s):
-- \Add13~0_combout\ = \Add12~0_combout\ $ ((\Add11~0_combout\))
-- \Add13~2\ = CARRY((\Add12~0_combout\ & (\Add11~0_combout\)))
-- \Add13~2COUT1_26\ = CARRY((\Add12~0_combout\ & (\Add11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add12~0_combout\,
	datab => \Add11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add13~0_combout\,
	cout0 => \Add13~2\,
	cout1 => \Add13~2COUT1_26\);

-- Location: LC_X2_Y4_N5
\Add23~0\ : maxv_lcell
-- Equation(s):
-- \Add23~0_combout\ = \Add21~0_combout\ $ ((\Add13~0_combout\))
-- \Add23~2\ = CARRY((\Add21~0_combout\ & (\Add13~0_combout\)))
-- \Add23~2COUT1_26\ = CARRY((\Add21~0_combout\ & (\Add13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~0_combout\,
	datab => \Add13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add23~0_combout\,
	cout0 => \Add23~2\,
	cout1 => \Add23~2COUT1_26\);

-- Location: LC_X3_Y2_N2
\Add16~1\ : maxv_lcell
-- Equation(s):
-- \Add16~1_combout\ = (\b~combout\(6) & (!\a~combout\(6) & (\b~combout\(7) $ (\a~combout\(7))))) # (!\b~combout\(6) & (\a~combout\(6) & (\b~combout\(7) $ (\a~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \a~combout\(6),
	datac => \b~combout\(7),
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add16~1_combout\);

-- Location: LC_X3_Y2_N9
\diff[8]\ : maxv_lcell
-- Equation(s):
-- diff(8) = ((\b~combout\(8) $ (\a~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(8),
	datad => \a~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(8));

-- Location: LC_X3_Y2_N6
\Add15~4\ : maxv_lcell
-- Equation(s):
-- \Add15~4_combout\ = \Add16~1_combout\ $ (((\Add16~0_combout\ & ((diff(9)) # (diff(8)))) # (!\Add16~0_combout\ & (diff(9) & diff(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "366c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => \Add16~1_combout\,
	datac => diff(9),
	datad => diff(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add15~4_combout\);

-- Location: LC_X2_Y3_N7
\Add20~1\ : maxv_lcell
-- Equation(s):
-- \Add20~1_combout\ = (\b~combout\(3) & (!\a~combout\(3) & (\b~combout\(2) $ (\a~combout\(2))))) # (!\b~combout\(3) & (\a~combout\(3) & (\b~combout\(2) $ (\a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(3),
	datab => \b~combout\(2),
	datac => \a~combout\(2),
	datad => \a~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add20~1_combout\);

-- Location: LC_X2_Y3_N5
\diff[4]\ : maxv_lcell
-- Equation(s):
-- diff(4) = ((\b~combout\(4) $ (\a~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(4),
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(4));

-- Location: LC_X2_Y3_N6
\Add19~4\ : maxv_lcell
-- Equation(s):
-- \Add19~4_combout\ = \Add20~1_combout\ $ (((diff(5) & ((\Add20~0_combout\) # (diff(4)))) # (!diff(5) & (\Add20~0_combout\ & diff(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => diff(5),
	datab => \Add20~0_combout\,
	datac => \Add20~1_combout\,
	datad => diff(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add19~4_combout\);

-- Location: LC_X3_Y3_N7
\Add17~5\ : maxv_lcell
-- Equation(s):
-- \Add17~5_combout\ = \Add15~4_combout\ $ (\Add19~4_combout\ $ ((\Add17~2\)))
-- \Add17~7\ = CARRY((\Add15~4_combout\ & (!\Add19~4_combout\ & !\Add17~2\)) # (!\Add15~4_combout\ & ((!\Add17~2\) # (!\Add19~4_combout\))))
-- \Add17~7COUT1_22\ = CARRY((\Add15~4_combout\ & (!\Add19~4_combout\ & !\Add17~2COUT1_21\)) # (!\Add15~4_combout\ & ((!\Add17~2COUT1_21\) # (!\Add19~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add15~4_combout\,
	datab => \Add19~4_combout\,
	cin0 => \Add17~2\,
	cin1 => \Add17~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add17~5_combout\,
	cout0 => \Add17~7\,
	cout1 => \Add17~7COUT1_22\);

-- Location: LC_X3_Y1_N2
\Add22~1\ : maxv_lcell
-- Equation(s):
-- \Add22~1_combout\ = (\b~combout\(1) & (!\a~combout\(1) & (\a~combout\(0) $ (\b~combout\(0))))) # (!\b~combout\(1) & (\a~combout\(1) & (\a~combout\(0) $ (\b~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \a~combout\(1),
	datac => \a~combout\(0),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add22~1_combout\);

-- Location: LC_X3_Y3_N1
\Add21~5\ : maxv_lcell
-- Equation(s):
-- \Add21~5_combout\ = \Add17~5_combout\ $ (\Add22~1_combout\ $ ((\Add21~2\)))
-- \Add21~7\ = CARRY((\Add17~5_combout\ & (!\Add22~1_combout\ & !\Add21~2\)) # (!\Add17~5_combout\ & ((!\Add21~2\) # (!\Add22~1_combout\))))
-- \Add21~7COUT1_22\ = CARRY((\Add17~5_combout\ & (!\Add22~1_combout\ & !\Add21~2COUT1_21\)) # (!\Add17~5_combout\ & ((!\Add21~2COUT1_21\) # (!\Add22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~5_combout\,
	datab => \Add22~1_combout\,
	cin0 => \Add21~2\,
	cin1 => \Add21~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add21~5_combout\,
	cout0 => \Add21~7\,
	cout1 => \Add21~7COUT1_22\);

-- Location: LC_X4_Y4_N8
\Add0~1\ : maxv_lcell
-- Equation(s):
-- \Add0~1_combout\ = (\b~combout\(23) & (!\a~combout\(23) & (\b~combout\(24) $ (\a~combout\(24))))) # (!\b~combout\(23) & (\a~combout\(23) & (\b~combout\(24) $ (\a~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1428",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(23),
	datab => \b~combout\(24),
	datac => \a~combout\(24),
	datad => \a~combout\(23),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~1_combout\);

-- Location: LC_X4_Y4_N3
\Add1~1\ : maxv_lcell
-- Equation(s):
-- \Add1~1_combout\ = (\Add0~1_combout\) # ((\Add0~0_combout\ & (\a~combout\(22) $ (\b~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(22),
	datab => \b~combout\(22),
	datac => \Add0~0_combout\,
	datad => \Add0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~1_combout\);

-- Location: LC_X4_Y4_N6
\diff[20]\ : maxv_lcell
-- Equation(s):
-- diff(20) = ((\b~combout\(20) $ (\a~combout\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \b~combout\(20),
	datad => \a~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(20));

-- Location: LC_X4_Y4_N7
\Add3~4\ : maxv_lcell
-- Equation(s):
-- \Add3~4_combout\ = \Add1~1_combout\ $ (((\Add1~0_combout\ & ((diff(21)) # (diff(20)))) # (!\Add1~0_combout\ & (diff(21) & diff(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "566a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~1_combout\,
	datab => \Add1~0_combout\,
	datac => diff(21),
	datad => diff(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~4_combout\);

-- Location: LC_X3_Y1_N5
\Add4~1\ : maxv_lcell
-- Equation(s):
-- \Add4~1_combout\ = (\a~combout\(18) & (!\b~combout\(18) & (\b~combout\(19) $ (\a~combout\(19))))) # (!\a~combout\(18) & (\b~combout\(18) & (\b~combout\(19) $ (\a~combout\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(18),
	datab => \b~combout\(18),
	datac => \b~combout\(19),
	datad => \a~combout\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~1_combout\);

-- Location: LC_X3_Y4_N2
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = \Add3~4_combout\ $ (\Add4~1_combout\ $ ((\Add5~2\)))
-- \Add5~7\ = CARRY((\Add3~4_combout\ & (!\Add4~1_combout\ & !\Add5~2\)) # (!\Add3~4_combout\ & ((!\Add5~2\) # (!\Add4~1_combout\))))
-- \Add5~7COUT1_22\ = CARRY((\Add3~4_combout\ & (!\Add4~1_combout\ & !\Add5~2COUT1_21\)) # (!\Add3~4_combout\ & ((!\Add5~2COUT1_21\) # (!\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add4~1_combout\,
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_22\);

-- Location: LC_X4_Y2_N7
\Add8~1\ : maxv_lcell
-- Equation(s):
-- \Add8~1_combout\ = (\a~combout\(15) & (!\b~combout\(15) & (\a~combout\(14) $ (\b~combout\(14))))) # (!\a~combout\(15) & (\b~combout\(15) & (\a~combout\(14) $ (\b~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1248",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(15),
	datab => \a~combout\(14),
	datac => \b~combout\(15),
	datad => \b~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add8~1_combout\);

-- Location: LC_X4_Y2_N5
\diff[16]\ : maxv_lcell
-- Equation(s):
-- diff(16) = ((\a~combout\(16) $ (\b~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \a~combout\(16),
	datad => \b~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => diff(16));

-- Location: LC_X4_Y2_N6
\Add7~4\ : maxv_lcell
-- Equation(s):
-- \Add7~4_combout\ = \Add8~1_combout\ $ (((diff(17) & ((\Add8~0_combout\) # (diff(16)))) # (!diff(17) & (\Add8~0_combout\ & diff(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e78",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => diff(17),
	datab => \Add8~0_combout\,
	datac => \Add8~1_combout\,
	datad => diff(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~4_combout\);

-- Location: LC_X3_Y2_N7
\Add10~1\ : maxv_lcell
-- Equation(s):
-- \Add10~1_combout\ = (\a~combout\(12) & (!\b~combout\(12) & (\b~combout\(13) $ (\a~combout\(13))))) # (!\a~combout\(12) & (\b~combout\(12) & (\b~combout\(13) $ (\a~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(12),
	datab => \b~combout\(12),
	datac => \b~combout\(13),
	datad => \a~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add10~1_combout\);

-- Location: LC_X4_Y2_N2
\Add9~5\ : maxv_lcell
-- Equation(s):
-- \Add9~5_combout\ = \Add7~4_combout\ $ (\Add10~1_combout\ $ ((\Add9~2\)))
-- \Add9~7\ = CARRY((\Add7~4_combout\ & (!\Add10~1_combout\ & !\Add9~2\)) # (!\Add7~4_combout\ & ((!\Add9~2\) # (!\Add10~1_combout\))))
-- \Add9~7COUT1_22\ = CARRY((\Add7~4_combout\ & (!\Add10~1_combout\ & !\Add9~2COUT1_21\)) # (!\Add7~4_combout\ & ((!\Add9~2COUT1_21\) # (!\Add10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~4_combout\,
	datab => \Add10~1_combout\,
	cin0 => \Add9~2\,
	cin1 => \Add9~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~5_combout\,
	cout0 => \Add9~7\,
	cout1 => \Add9~7COUT1_22\);

-- Location: LC_X3_Y4_N6
\Add11~5\ : maxv_lcell
-- Equation(s):
-- \Add11~5_combout\ = \Add5~5_combout\ $ (\Add9~5_combout\ $ ((\Add11~2\)))
-- \Add11~7\ = CARRY((\Add5~5_combout\ & (!\Add9~5_combout\ & !\Add11~2\)) # (!\Add5~5_combout\ & ((!\Add11~2\) # (!\Add9~5_combout\))))
-- \Add11~7COUT1_22\ = CARRY((\Add5~5_combout\ & (!\Add9~5_combout\ & !\Add11~2COUT1_21\)) # (!\Add5~5_combout\ & ((!\Add11~2COUT1_21\) # (!\Add9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~5_combout\,
	datab => \Add9~5_combout\,
	cin0 => \Add11~2\,
	cin1 => \Add11~2COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~5_combout\,
	cout0 => \Add11~7\,
	cout1 => \Add11~7COUT1_22\);

-- Location: LC_X3_Y1_N4
\Add12~1\ : maxv_lcell
-- Equation(s):
-- \Add12~1_combout\ = (\b~combout\(10) & (!\a~combout\(10) & (\a~combout\(11) $ (\b~combout\(11))))) # (!\b~combout\(10) & (\a~combout\(10) & (\a~combout\(11) $ (\b~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(10),
	datab => \a~combout\(10),
	datac => \a~combout\(11),
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add12~1_combout\);

-- Location: LC_X2_Y4_N1
\Add13~5\ : maxv_lcell
-- Equation(s):
-- \Add13~5_combout\ = \Add11~5_combout\ $ (\Add12~1_combout\ $ ((\Add13~2\)))
-- \Add13~7\ = CARRY((\Add11~5_combout\ & (!\Add12~1_combout\ & !\Add13~2\)) # (!\Add11~5_combout\ & ((!\Add13~2\) # (!\Add12~1_combout\))))
-- \Add13~7COUT1_27\ = CARRY((\Add11~5_combout\ & (!\Add12~1_combout\ & !\Add13~2COUT1_26\)) # (!\Add11~5_combout\ & ((!\Add13~2COUT1_26\) # (!\Add12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~5_combout\,
	datab => \Add12~1_combout\,
	cin0 => \Add13~2\,
	cin1 => \Add13~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add13~5_combout\,
	cout0 => \Add13~7\,
	cout1 => \Add13~7COUT1_27\);

-- Location: LC_X2_Y4_N6
\Add23~5\ : maxv_lcell
-- Equation(s):
-- \Add23~5_combout\ = \Add21~5_combout\ $ (\Add13~5_combout\ $ ((\Add23~2\)))
-- \Add23~7\ = CARRY((\Add21~5_combout\ & (!\Add13~5_combout\ & !\Add23~2\)) # (!\Add21~5_combout\ & ((!\Add23~2\) # (!\Add13~5_combout\))))
-- \Add23~7COUT1_27\ = CARRY((\Add21~5_combout\ & (!\Add13~5_combout\ & !\Add23~2COUT1_26\)) # (!\Add21~5_combout\ & ((!\Add23~2COUT1_26\) # (!\Add13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~5_combout\,
	datab => \Add13~5_combout\,
	cin0 => \Add23~2\,
	cin1 => \Add23~2COUT1_26\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add23~5_combout\,
	cout0 => \Add23~7\,
	cout1 => \Add23~7COUT1_27\);

-- Location: LC_X2_Y3_N8
\Add19~5\ : maxv_lcell
-- Equation(s):
-- \Add19~5_combout\ = (\Add20~1_combout\ & ((diff(5) & ((\Add20~0_combout\) # (diff(4)))) # (!diff(5) & (\Add20~0_combout\ & diff(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => diff(5),
	datab => \Add20~0_combout\,
	datac => diff(4),
	datad => \Add20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add19~5_combout\);

-- Location: LC_X3_Y2_N8
\Add15~5\ : maxv_lcell
-- Equation(s):
-- \Add15~5_combout\ = (\Add16~1_combout\ & ((\Add16~0_combout\ & ((diff(8)) # (diff(9)))) # (!\Add16~0_combout\ & (diff(8) & diff(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add16~0_combout\,
	datab => diff(8),
	datac => diff(9),
	datad => \Add16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add15~5_combout\);

-- Location: LC_X3_Y3_N8
\Add17~10\ : maxv_lcell
-- Equation(s):
-- \Add17~10_combout\ = \Add19~5_combout\ $ (\Add15~5_combout\ $ ((!\Add17~7\)))
-- \Add17~12\ = CARRY((\Add19~5_combout\ & ((\Add15~5_combout\) # (!\Add17~7\))) # (!\Add19~5_combout\ & (\Add15~5_combout\ & !\Add17~7\)))
-- \Add17~12COUT1_23\ = CARRY((\Add19~5_combout\ & ((\Add15~5_combout\) # (!\Add17~7COUT1_22\))) # (!\Add19~5_combout\ & (\Add15~5_combout\ & !\Add17~7COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add19~5_combout\,
	datab => \Add15~5_combout\,
	cin0 => \Add17~7\,
	cin1 => \Add17~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add17~10_combout\,
	cout0 => \Add17~12\,
	cout1 => \Add17~12COUT1_23\);

-- Location: LC_X3_Y3_N2
\Add21~10\ : maxv_lcell
-- Equation(s):
-- \Add21~10_combout\ = \Add17~10_combout\ $ ((((!\Add21~7\))))
-- \Add21~12\ = CARRY((\Add17~10_combout\ & ((!\Add21~7\))))
-- \Add21~12COUT1_23\ = CARRY((\Add17~10_combout\ & ((!\Add21~7COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add17~10_combout\,
	cin0 => \Add21~7\,
	cin1 => \Add21~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add21~10_combout\,
	cout0 => \Add21~12\,
	cout1 => \Add21~12COUT1_23\);

-- Location: LC_X4_Y4_N4
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = (\Add1~1_combout\ & ((diff(21) & ((\Add1~0_combout\) # (diff(20)))) # (!diff(21) & (\Add1~0_combout\ & diff(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => diff(21),
	datab => \Add1~0_combout\,
	datac => diff(20),
	datad => \Add1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\);

-- Location: LC_X3_Y4_N3
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = (\Add3~5_combout\ $ ((!\Add5~7\)))
-- \Add5~12\ = CARRY(((\Add3~5_combout\ & !\Add5~7\)))
-- \Add5~12COUT1_23\ = CARRY(((\Add3~5_combout\ & !\Add5~7COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~5_combout\,
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_23\);

-- Location: LC_X4_Y2_N8
\Add7~5\ : maxv_lcell
-- Equation(s):
-- \Add7~5_combout\ = (\Add8~1_combout\ & ((diff(17) & ((\Add8~0_combout\) # (diff(16)))) # (!diff(17) & (\Add8~0_combout\ & diff(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => diff(17),
	datab => \Add8~0_combout\,
	datac => diff(16),
	datad => \Add8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~5_combout\);

-- Location: LC_X4_Y2_N3
\Add9~10\ : maxv_lcell
-- Equation(s):
-- \Add9~10_combout\ = \Add7~5_combout\ $ ((((!\Add9~7\))))
-- \Add9~12\ = CARRY((\Add7~5_combout\ & ((!\Add9~7\))))
-- \Add9~12COUT1_23\ = CARRY((\Add7~5_combout\ & ((!\Add9~7COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~5_combout\,
	cin0 => \Add9~7\,
	cin1 => \Add9~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~10_combout\,
	cout0 => \Add9~12\,
	cout1 => \Add9~12COUT1_23\);

-- Location: LC_X3_Y4_N7
\Add11~10\ : maxv_lcell
-- Equation(s):
-- \Add11~10_combout\ = \Add5~10_combout\ $ (\Add9~10_combout\ $ ((!\Add11~7\)))
-- \Add11~12\ = CARRY((\Add5~10_combout\ & ((\Add9~10_combout\) # (!\Add11~7\))) # (!\Add5~10_combout\ & (\Add9~10_combout\ & !\Add11~7\)))
-- \Add11~12COUT1_23\ = CARRY((\Add5~10_combout\ & ((\Add9~10_combout\) # (!\Add11~7COUT1_22\))) # (!\Add5~10_combout\ & (\Add9~10_combout\ & !\Add11~7COUT1_22\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datab => \Add9~10_combout\,
	cin0 => \Add11~7\,
	cin1 => \Add11~7COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~10_combout\,
	cout0 => \Add11~12\,
	cout1 => \Add11~12COUT1_23\);

-- Location: LC_X2_Y4_N2
\Add13~10\ : maxv_lcell
-- Equation(s):
-- \Add13~10_combout\ = \Add11~10_combout\ $ ((((!\Add13~7\))))
-- \Add13~12\ = CARRY((\Add11~10_combout\ & ((!\Add13~7\))))
-- \Add13~12COUT1_28\ = CARRY((\Add11~10_combout\ & ((!\Add13~7COUT1_27\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	cin0 => \Add13~7\,
	cin1 => \Add13~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add13~10_combout\,
	cout0 => \Add13~12\,
	cout1 => \Add13~12COUT1_28\);

-- Location: LC_X2_Y4_N7
\Add23~10\ : maxv_lcell
-- Equation(s):
-- \Add23~10_combout\ = \Add21~10_combout\ $ (\Add13~10_combout\ $ ((!\Add23~7\)))
-- \Add23~12\ = CARRY((\Add21~10_combout\ & ((\Add13~10_combout\) # (!\Add23~7\))) # (!\Add21~10_combout\ & (\Add13~10_combout\ & !\Add23~7\)))
-- \Add23~12COUT1_28\ = CARRY((\Add21~10_combout\ & ((\Add13~10_combout\) # (!\Add23~7COUT1_27\))) # (!\Add21~10_combout\ & (\Add13~10_combout\ & !\Add23~7COUT1_27\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add21~10_combout\,
	datab => \Add13~10_combout\,
	cin0 => \Add23~7\,
	cin1 => \Add23~7COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add23~10_combout\,
	cout0 => \Add23~12\,
	cout1 => \Add23~12COUT1_28\);

-- Location: LC_X3_Y4_N4
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = (((\Add5~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\);

-- Location: LC_X4_Y2_N4
\Add9~15\ : maxv_lcell
-- Equation(s):
-- \Add9~15_combout\ = (((\Add9~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add9~12\,
	cin1 => \Add9~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add9~15_combout\);

-- Location: LC_X3_Y4_N8
\Add11~15\ : maxv_lcell
-- Equation(s):
-- \Add11~15_combout\ = \Add5~15_combout\ $ (((\Add11~12\ $ (\Add9~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~15_combout\,
	datad => \Add9~15_combout\,
	cin0 => \Add11~12\,
	cin1 => \Add11~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add11~15_combout\);

-- Location: LC_X2_Y4_N3
\Add13~15\ : maxv_lcell
-- Equation(s):
-- \Add13~15_combout\ = (\Add11~15_combout\ $ ((\Add13~12\)))
-- \Add13~17\ = CARRY(((!\Add13~12\) # (!\Add11~15_combout\)))
-- \Add13~17COUT1_29\ = CARRY(((!\Add13~12COUT1_28\) # (!\Add11~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add11~15_combout\,
	cin0 => \Add13~12\,
	cin1 => \Add13~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add13~15_combout\,
	cout0 => \Add13~17\,
	cout1 => \Add13~17COUT1_29\);

-- Location: LC_X3_Y3_N9
\Add17~15\ : maxv_lcell
-- Equation(s):
-- \Add17~15_combout\ = (((\Add17~12\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add17~12\,
	cin1 => \Add17~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add17~15_combout\);

-- Location: LC_X3_Y3_N3
\Add21~15\ : maxv_lcell
-- Equation(s):
-- \Add21~15_combout\ = ((\Add21~12\ $ (\Add17~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add17~15_combout\,
	cin0 => \Add21~12\,
	cin1 => \Add21~12COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add21~15_combout\);

-- Location: LC_X2_Y4_N8
\Add23~15\ : maxv_lcell
-- Equation(s):
-- \Add23~15_combout\ = \Add13~15_combout\ $ (\Add21~15_combout\ $ ((\Add23~12\)))
-- \Add23~17\ = CARRY((\Add13~15_combout\ & (!\Add21~15_combout\ & !\Add23~12\)) # (!\Add13~15_combout\ & ((!\Add23~12\) # (!\Add21~15_combout\))))
-- \Add23~17COUT1_29\ = CARRY((\Add13~15_combout\ & (!\Add21~15_combout\ & !\Add23~12COUT1_28\)) # (!\Add13~15_combout\ & ((!\Add23~12COUT1_28\) # (!\Add21~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~15_combout\,
	datab => \Add21~15_combout\,
	cin0 => \Add23~12\,
	cin1 => \Add23~12COUT1_28\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add23~15_combout\,
	cout0 => \Add23~17\,
	cout1 => \Add23~17COUT1_29\);

-- Location: LC_X2_Y4_N4
\Add13~20\ : maxv_lcell
-- Equation(s):
-- \Add13~20_combout\ = (((!\Add13~17\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \Add13~17\,
	cin1 => \Add13~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add13~20_combout\);

-- Location: LC_X2_Y4_N9
\Add23~20\ : maxv_lcell
-- Equation(s):
-- \Add23~20_combout\ = \Add13~20_combout\ $ ((((!\Add23~17\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add13~20_combout\,
	cin0 => \Add23~17\,
	cin1 => \Add23~17COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add23~20_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add23~0_combout\,
	oe => VCC,
	padio => ww_y(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add23~5_combout\,
	oe => VCC,
	padio => ww_y(1));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add23~10_combout\,
	oe => VCC,
	padio => ww_y(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add23~15_combout\,
	oe => VCC,
	padio => ww_y(3));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\y[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add23~20_combout\,
	oe => VCC,
	padio => ww_y(4));
END structure;


