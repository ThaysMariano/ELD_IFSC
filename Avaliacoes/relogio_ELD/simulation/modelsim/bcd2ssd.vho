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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "11/29/2024 10:17:32"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bcd2ssd IS
    PORT (
	BCD : IN std_logic_vector(3 DOWNTO 0);
	ZOP : IN std_logic;
	DPin : IN std_logic;
	SSD : OUT std_logic_vector(6 DOWNTO 0);
	DPout : OUT std_logic
	);
END bcd2ssd;

-- Design Ports Information
-- SSD[0]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[1]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[2]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[4]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[5]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SSD[6]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DPout	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[3]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[2]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[1]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BCD[0]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZOP	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DPin	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bcd2ssd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_BCD : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ZOP : std_logic;
SIGNAL ww_DPin : std_logic;
SIGNAL ww_SSD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_DPout : std_logic;
SIGNAL \SSD[0]~output_o\ : std_logic;
SIGNAL \SSD[1]~output_o\ : std_logic;
SIGNAL \SSD[2]~output_o\ : std_logic;
SIGNAL \SSD[3]~output_o\ : std_logic;
SIGNAL \SSD[4]~output_o\ : std_logic;
SIGNAL \SSD[5]~output_o\ : std_logic;
SIGNAL \SSD[6]~output_o\ : std_logic;
SIGNAL \DPout~output_o\ : std_logic;
SIGNAL \BCD[0]~input_o\ : std_logic;
SIGNAL \BCD[3]~input_o\ : std_logic;
SIGNAL \BCD[2]~input_o\ : std_logic;
SIGNAL \BCD[1]~input_o\ : std_logic;
SIGNAL \ssd_int~15_combout\ : std_logic;
SIGNAL \ZOP~input_o\ : std_logic;
SIGNAL \ssd_int~19_combout\ : std_logic;
SIGNAL \ssd_int~20_combout\ : std_logic;
SIGNAL \ssd_int~37_combout\ : std_logic;
SIGNAL \ssd_int~33_combout\ : std_logic;
SIGNAL \ssd_int~34_combout\ : std_logic;
SIGNAL \ssd_int~23_combout\ : std_logic;
SIGNAL \ssd_int~24_combout\ : std_logic;
SIGNAL \ssd_int~38_combout\ : std_logic;
SIGNAL \ssd_int~32_combout\ : std_logic;
SIGNAL \ssd_int~40_combout\ : std_logic;
SIGNAL \ssd_int~35_combout\ : std_logic;
SIGNAL \ssd_int~36_combout\ : std_logic;
SIGNAL \ssd_int~28_combout\ : std_logic;
SIGNAL \ssd_int~39_combout\ : std_logic;
SIGNAL \DPin~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_BCD <= BCD;
ww_ZOP <= ZOP;
ww_DPin <= DPin;
SSD <= ww_SSD;
DPout <= ww_DPout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N23
\SSD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~15_combout\,
	devoe => ww_devoe,
	o => \SSD[0]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\SSD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~37_combout\,
	devoe => ww_devoe,
	o => \SSD[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\SSD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~34_combout\,
	devoe => ww_devoe,
	o => \SSD[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\SSD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~38_combout\,
	devoe => ww_devoe,
	o => \SSD[3]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\SSD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~40_combout\,
	devoe => ww_devoe,
	o => \SSD[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\SSD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~36_combout\,
	devoe => ww_devoe,
	o => \SSD[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\SSD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd_int~39_combout\,
	devoe => ww_devoe,
	o => \SSD[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\DPout~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DPin~input_o\,
	devoe => ww_devoe,
	o => \DPout~output_o\);

-- Location: IOIBUF_X0_Y8_N15
\BCD[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(0),
	o => \BCD[0]~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\BCD[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(3),
	o => \BCD[3]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\BCD[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(2),
	o => \BCD[2]~input_o\);

-- Location: IOIBUF_X0_Y18_N22
\BCD[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BCD(1),
	o => \BCD[1]~input_o\);

-- Location: LCCOMB_X1_Y9_N8
\ssd_int~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~15_combout\ = (\BCD[2]~input_o\ & (!\BCD[3]~input_o\ & ((!\BCD[1]~input_o\) # (!\BCD[0]~input_o\)))) # (!\BCD[2]~input_o\ & ((\BCD[3]~input_o\ $ (\BCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datab => \BCD[3]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~15_combout\);

-- Location: IOIBUF_X0_Y5_N15
\ZOP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZOP,
	o => \ZOP~input_o\);

-- Location: LCCOMB_X1_Y9_N2
\ssd_int~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~19_combout\ = (\BCD[2]~input_o\ & (!\BCD[3]~input_o\)) # (!\BCD[2]~input_o\ & (!\BCD[1]~input_o\ & ((\BCD[3]~input_o\) # (\ZOP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datab => \ZOP~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~19_combout\);

-- Location: LCCOMB_X1_Y9_N12
\ssd_int~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~20_combout\ = (!\BCD[1]~input_o\ & (\BCD[3]~input_o\ $ (\BCD[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~20_combout\);

-- Location: LCCOMB_X1_Y9_N6
\ssd_int~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~37_combout\ = (\BCD[0]~input_o\ & ((\ssd_int~20_combout\))) # (!\BCD[0]~input_o\ & (\ssd_int~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datab => \ssd_int~19_combout\,
	datad => \ssd_int~20_combout\,
	combout => \ssd_int~37_combout\);

-- Location: LCCOMB_X1_Y9_N16
\ssd_int~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~33_combout\ = (\BCD[0]~input_o\) # ((\BCD[2]~input_o\ & !\BCD[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~33_combout\);

-- Location: LCCOMB_X1_Y9_N18
\ssd_int~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~34_combout\ = (!\ssd_int~33_combout\ & ((\BCD[3]~input_o\ & ((!\BCD[1]~input_o\))) # (!\BCD[3]~input_o\ & ((\ZOP~input_o\) # (\BCD[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datab => \ZOP~input_o\,
	datac => \BCD[1]~input_o\,
	datad => \ssd_int~33_combout\,
	combout => \ssd_int~34_combout\);

-- Location: LCCOMB_X1_Y9_N24
\ssd_int~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~23_combout\ = (\BCD[1]~input_o\ & (!\BCD[3]~input_o\)) # (!\BCD[1]~input_o\ & (!\BCD[2]~input_o\ & ((\BCD[3]~input_o\) # (\ZOP~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datab => \ZOP~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~23_combout\);

-- Location: LCCOMB_X1_Y9_N10
\ssd_int~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~24_combout\ = (\BCD[3]~input_o\ & (!\BCD[2]~input_o\ & !\BCD[1]~input_o\)) # (!\BCD[3]~input_o\ & (\BCD[2]~input_o\ $ (\BCD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~24_combout\);

-- Location: LCCOMB_X1_Y9_N28
\ssd_int~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~38_combout\ = (\BCD[0]~input_o\ & ((\ssd_int~24_combout\))) # (!\BCD[0]~input_o\ & (\ssd_int~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datab => \ssd_int~23_combout\,
	datad => \ssd_int~24_combout\,
	combout => \ssd_int~38_combout\);

-- Location: LCCOMB_X1_Y9_N26
\ssd_int~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~32_combout\ = ((!\BCD[2]~input_o\ & !\BCD[1]~input_o\)) # (!\BCD[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~32_combout\);

-- Location: LCCOMB_X1_Y9_N4
\ssd_int~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~40_combout\ = (\BCD[0]~input_o\ & ((\ssd_int~32_combout\))) # (!\BCD[0]~input_o\ & (\ssd_int~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datab => \ssd_int~19_combout\,
	datac => \ssd_int~32_combout\,
	combout => \ssd_int~40_combout\);

-- Location: LCCOMB_X1_Y9_N20
\ssd_int~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~35_combout\ = (\BCD[2]~input_o\ & (\BCD[0]~input_o\ $ (((!\BCD[1]~input_o\))))) # (!\BCD[2]~input_o\ & ((\BCD[0]~input_o\) # ((\ZOP~input_o\) # (\BCD[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111101011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datab => \ZOP~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~35_combout\);

-- Location: LCCOMB_X1_Y9_N22
\ssd_int~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~36_combout\ = (\BCD[3]~input_o\ & (((!\BCD[2]~input_o\ & !\BCD[1]~input_o\)))) # (!\BCD[3]~input_o\ & (\ssd_int~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datab => \ssd_int~35_combout\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~36_combout\);

-- Location: LCCOMB_X1_Y9_N30
\ssd_int~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~28_combout\ = \BCD[3]~input_o\ $ (((\BCD[2]~input_o\) # (\BCD[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[3]~input_o\,
	datac => \BCD[2]~input_o\,
	datad => \BCD[1]~input_o\,
	combout => \ssd_int~28_combout\);

-- Location: LCCOMB_X1_Y9_N0
\ssd_int~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ssd_int~39_combout\ = (\BCD[0]~input_o\ & (\ssd_int~28_combout\)) # (!\BCD[0]~input_o\ & ((\ssd_int~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[0]~input_o\,
	datac => \ssd_int~28_combout\,
	datad => \ssd_int~23_combout\,
	combout => \ssd_int~39_combout\);

-- Location: IOIBUF_X0_Y11_N8
\DPin~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DPin,
	o => \DPin~input_o\);

ww_SSD(0) <= \SSD[0]~output_o\;

ww_SSD(1) <= \SSD[1]~output_o\;

ww_SSD(2) <= \SSD[2]~output_o\;

ww_SSD(3) <= \SSD[3]~output_o\;

ww_SSD(4) <= \SSD[4]~output_o\;

ww_SSD(5) <= \SSD[5]~output_o\;

ww_SSD(6) <= \SSD[6]~output_o\;

ww_DPout <= \DPout~output_o\;
END structure;


