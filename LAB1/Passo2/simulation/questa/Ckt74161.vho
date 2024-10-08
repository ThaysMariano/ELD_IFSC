-- Copyright (C) 2024  Intel Corporation. All rights reserved.
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
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "10/06/2024 15:46:20"

-- 
-- Device: Altera EP4CE6E22A7 Package TQFP144
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Ckt74161 IS
    PORT (
	QD : OUT std_logic;
	CLRN : IN std_logic;
	CLK : IN std_logic;
	ENP : IN std_logic;
	LDN : IN std_logic;
	A : IN std_logic;
	D : IN std_logic;
	ENT : IN std_logic;
	B : IN std_logic;
	C : IN std_logic;
	QC : OUT std_logic;
	QB : OUT std_logic;
	QA : OUT std_logic;
	RCO : OUT std_logic
	);
END Ckt74161;

-- Design Ports Information
-- QD	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QC	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QB	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- QA	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RCO	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENT	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LDN	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENP	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLRN	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ckt74161 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_QD : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_ENP : std_logic;
SIGNAL ww_LDN : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_ENT : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_QC : std_logic;
SIGNAL ww_QB : std_logic;
SIGNAL ww_QA : std_logic;
SIGNAL ww_RCO : std_logic;
SIGNAL \CLRN~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \QD~output_o\ : std_logic;
SIGNAL \QC~output_o\ : std_logic;
SIGNAL \QB~output_o\ : std_logic;
SIGNAL \QA~output_o\ : std_logic;
SIGNAL \RCO~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \LDN~input_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \ENT~input_o\ : std_logic;
SIGNAL \ENP~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst|sub|75~0_combout\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \inst|sub|75~1_combout\ : std_logic;
SIGNAL \CLRN~input_o\ : std_logic;
SIGNAL \CLRN~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|sub|9~q\ : std_logic;
SIGNAL \inst|sub|90~combout\ : std_logic;
SIGNAL \inst|sub|92~0_combout\ : std_logic;
SIGNAL \inst|sub|87~q\ : std_logic;
SIGNAL \inst|sub|96~0_combout\ : std_logic;
SIGNAL \inst|sub|102~0_combout\ : std_logic;
SIGNAL \inst|sub|99~q\ : std_logic;
SIGNAL \inst|sub|109~0_combout\ : std_logic;
SIGNAL \inst|sub|109~1_combout\ : std_logic;
SIGNAL \inst|sub|110~q\ : std_logic;
SIGNAL \inst|sub|104~0_combout\ : std_logic;
SIGNAL \inst|sub|104~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

QD <= ww_QD;
ww_CLRN <= CLRN;
ww_CLK <= CLK;
ww_ENP <= ENP;
ww_LDN <= LDN;
ww_A <= A;
ww_D <= D;
ww_ENT <= ENT;
ww_B <= B;
ww_C <= C;
QC <= ww_QC;
QB <= ww_QB;
QA <= ww_QA;
RCO <= ww_RCO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLRN~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLRN~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\QD~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|110~q\,
	devoe => ww_devoe,
	o => \QD~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\QC~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|99~q\,
	devoe => ww_devoe,
	o => \QC~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\QB~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|87~q\,
	devoe => ww_devoe,
	o => \QB~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\QA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|9~q\,
	devoe => ww_devoe,
	o => \QA~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\RCO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|sub|104~1_combout\,
	devoe => ww_devoe,
	o => \RCO~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N1
\LDN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LDN,
	o => \LDN~input_o\);

-- Location: IOIBUF_X30_Y0_N22
\D~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\C~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\ENT~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENT,
	o => \ENT~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\ENP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ENP,
	o => \ENP~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LCCOMB_X28_Y4_N22
\inst|sub|75~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|75~0_combout\ = (\LDN~input_o\ & (\inst|sub|9~q\ $ (((\ENT~input_o\ & \ENP~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT~input_o\,
	datab => \LDN~input_o\,
	datac => \ENP~input_o\,
	datad => \inst|sub|9~q\,
	combout => \inst|sub|75~0_combout\);

-- Location: IOIBUF_X34_Y4_N15
\A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: LCCOMB_X28_Y4_N18
\inst|sub|75~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|75~1_combout\ = (\inst|sub|75~0_combout\) # ((!\LDN~input_o\ & \A~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDN~input_o\,
	datac => \inst|sub|75~0_combout\,
	datad => \A~input_o\,
	combout => \inst|sub|75~1_combout\);

-- Location: IOIBUF_X0_Y11_N15
\CLRN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLRN,
	o => \CLRN~input_o\);

-- Location: CLKCTRL_G4
\CLRN~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLRN~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLRN~inputclkctrl_outclk\);

-- Location: FF_X28_Y4_N19
\inst|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|75~1_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|9~q\);

-- Location: LCCOMB_X28_Y4_N16
\inst|sub|90\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|90~combout\ = \inst|sub|87~q\ $ (((\ENT~input_o\ & (\ENP~input_o\ & \inst|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT~input_o\,
	datab => \ENP~input_o\,
	datac => \inst|sub|9~q\,
	datad => \inst|sub|87~q\,
	combout => \inst|sub|90~combout\);

-- Location: LCCOMB_X28_Y4_N8
\inst|sub|92~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|92~0_combout\ = (\LDN~input_o\ & ((\inst|sub|90~combout\))) # (!\LDN~input_o\ & (\B~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDN~input_o\,
	datac => \B~input_o\,
	datad => \inst|sub|90~combout\,
	combout => \inst|sub|92~0_combout\);

-- Location: FF_X28_Y4_N9
\inst|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|92~0_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|87~q\);

-- Location: LCCOMB_X28_Y4_N24
\inst|sub|96~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|96~0_combout\ = (\ENT~input_o\ & (\ENP~input_o\ & (\inst|sub|87~q\ & \inst|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT~input_o\,
	datab => \ENP~input_o\,
	datac => \inst|sub|87~q\,
	datad => \inst|sub|9~q\,
	combout => \inst|sub|96~0_combout\);

-- Location: LCCOMB_X28_Y4_N30
\inst|sub|102~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|102~0_combout\ = (\LDN~input_o\ & ((\inst|sub|99~q\ $ (\inst|sub|96~0_combout\)))) # (!\LDN~input_o\ & (\C~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C~input_o\,
	datab => \LDN~input_o\,
	datac => \inst|sub|99~q\,
	datad => \inst|sub|96~0_combout\,
	combout => \inst|sub|102~0_combout\);

-- Location: FF_X28_Y4_N31
\inst|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|102~0_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|99~q\);

-- Location: LCCOMB_X28_Y4_N6
\inst|sub|109~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|109~0_combout\ = (\LDN~input_o\ & (\inst|sub|110~q\ $ (((\inst|sub|99~q\ & \inst|sub|96~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sub|99~q\,
	datab => \LDN~input_o\,
	datac => \inst|sub|110~q\,
	datad => \inst|sub|96~0_combout\,
	combout => \inst|sub|109~0_combout\);

-- Location: LCCOMB_X28_Y4_N28
\inst|sub|109~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|109~1_combout\ = (\inst|sub|109~0_combout\) # ((!\LDN~input_o\ & \D~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LDN~input_o\,
	datac => \D~input_o\,
	datad => \inst|sub|109~0_combout\,
	combout => \inst|sub|109~1_combout\);

-- Location: FF_X28_Y4_N29
\inst|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|sub|109~1_combout\,
	clrn => \CLRN~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sub|110~q\);

-- Location: LCCOMB_X28_Y4_N20
\inst|sub|104~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|104~0_combout\ = (\ENT~input_o\ & (\inst|sub|110~q\ & (\inst|sub|99~q\ & \inst|sub|87~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ENT~input_o\,
	datab => \inst|sub|110~q\,
	datac => \inst|sub|99~q\,
	datad => \inst|sub|87~q\,
	combout => \inst|sub|104~0_combout\);

-- Location: LCCOMB_X28_Y4_N26
\inst|sub|104~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sub|104~1_combout\ = (\inst|sub|9~q\ & \inst|sub|104~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sub|9~q\,
	datad => \inst|sub|104~0_combout\,
	combout => \inst|sub|104~1_combout\);

ww_QD <= \QD~output_o\;

ww_QC <= \QC~output_o\;

ww_QB <= \QB~output_o\;

ww_QA <= \QA~output_o\;

ww_RCO <= \RCO~output_o\;
END structure;


