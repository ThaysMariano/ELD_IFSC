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

-- DATE "12/19/2024 16:44:43"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	fifo_sync_ctrl4 IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	wr : IN std_logic;
	rd : IN std_logic;
	full : OUT std_logic;
	empty : OUT std_logic;
	w_addr : OUT std_logic_vector(3 DOWNTO 0);
	r_addr : OUT std_logic_vector(3 DOWNTO 0)
	);
END fifo_sync_ctrl4;

-- Design Ports Information
-- full	=>  Location: PIN_39,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- empty	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_addr[0]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_addr[1]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_addr[2]	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w_addr[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_addr[0]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_addr[1]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_addr[2]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r_addr[3]	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF fifo_sync_ctrl4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_full : std_logic;
SIGNAL ww_empty : std_logic;
SIGNAL ww_w_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_r_addr : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \full~output_o\ : std_logic;
SIGNAL \empty~output_o\ : std_logic;
SIGNAL \w_addr[0]~output_o\ : std_logic;
SIGNAL \w_addr[1]~output_o\ : std_logic;
SIGNAL \w_addr[2]~output_o\ : std_logic;
SIGNAL \w_addr[3]~output_o\ : std_logic;
SIGNAL \r_addr[0]~output_o\ : std_logic;
SIGNAL \r_addr[1]~output_o\ : std_logic;
SIGNAL \r_addr[2]~output_o\ : std_logic;
SIGNAL \r_addr[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \r_ptr_reg[2]~7\ : std_logic;
SIGNAL \r_ptr_reg[3]~8_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \r_ptr_reg[3]~9\ : std_logic;
SIGNAL \r_ptr_reg[4]~10_combout\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \w_ptr_reg[1]~4_combout\ : std_logic;
SIGNAL \r_ptr_reg[1]~4_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \w_ptr_next~0_combout\ : std_logic;
SIGNAL \w_ptr_reg[0]~12_combout\ : std_logic;
SIGNAL \w_ptr_reg[1]~5\ : std_logic;
SIGNAL \w_ptr_reg[2]~6_combout\ : std_logic;
SIGNAL \w_ptr_reg[2]~7\ : std_logic;
SIGNAL \w_ptr_reg[3]~8_combout\ : std_logic;
SIGNAL \w_ptr_reg[3]~9\ : std_logic;
SIGNAL \w_ptr_reg[4]~10_combout\ : std_logic;
SIGNAL \full_flag~2_combout\ : std_logic;
SIGNAL \r_ptr_next~0_combout\ : std_logic;
SIGNAL \r_ptr_reg[0]~12_combout\ : std_logic;
SIGNAL \r_ptr_reg[1]~5\ : std_logic;
SIGNAL \r_ptr_reg[2]~6_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \full_flag~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL r_ptr_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL w_ptr_reg : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_wr <= wr;
ww_rd <= rd;
full <= ww_full;
empty <= ww_empty;
w_addr <= ww_w_addr;
r_addr <= ww_r_addr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X1_Y0_N16
\full~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \full_flag~3_combout\,
	devoe => ww_devoe,
	o => \full~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\empty~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal1~4_combout\,
	devoe => ww_devoe,
	o => \empty~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\w_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => w_ptr_reg(0),
	devoe => ww_devoe,
	o => \w_addr[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\w_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => w_ptr_reg(1),
	devoe => ww_devoe,
	o => \w_addr[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\w_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => w_ptr_reg(2),
	devoe => ww_devoe,
	o => \w_addr[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\w_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => w_ptr_reg(3),
	devoe => ww_devoe,
	o => \w_addr[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\r_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ptr_reg(0),
	devoe => ww_devoe,
	o => \r_addr[0]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\r_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ptr_reg(1),
	devoe => ww_devoe,
	o => \r_addr[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\r_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ptr_reg(2),
	devoe => ww_devoe,
	o => \r_addr[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\r_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => r_ptr_reg(3),
	devoe => ww_devoe,
	o => \r_addr[3]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y6_N22
\rd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: LCCOMB_X5_Y1_N26
\r_ptr_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_reg[2]~6_combout\ = (r_ptr_reg(2) & (!\r_ptr_reg[1]~5\)) # (!r_ptr_reg(2) & ((\r_ptr_reg[1]~5\) # (GND)))
-- \r_ptr_reg[2]~7\ = CARRY((!\r_ptr_reg[1]~5\) # (!r_ptr_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_ptr_reg(2),
	datad => VCC,
	cin => \r_ptr_reg[1]~5\,
	combout => \r_ptr_reg[2]~6_combout\,
	cout => \r_ptr_reg[2]~7\);

-- Location: LCCOMB_X5_Y1_N28
\r_ptr_reg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_reg[3]~8_combout\ = (r_ptr_reg(3) & (\r_ptr_reg[2]~7\ $ (GND))) # (!r_ptr_reg(3) & (!\r_ptr_reg[2]~7\ & VCC))
-- \r_ptr_reg[3]~9\ = CARRY((r_ptr_reg(3) & !\r_ptr_reg[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => r_ptr_reg(3),
	datad => VCC,
	cin => \r_ptr_reg[2]~7\,
	combout => \r_ptr_reg[3]~8_combout\,
	cout => \r_ptr_reg[3]~9\);

-- Location: IOIBUF_X0_Y11_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X5_Y1_N29
\r_ptr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_ptr_reg[3]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ptr_reg(3));

-- Location: LCCOMB_X5_Y1_N30
\r_ptr_reg[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_reg[4]~10_combout\ = r_ptr_reg(4) $ (\r_ptr_reg[3]~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => r_ptr_reg(4),
	cin => \r_ptr_reg[3]~9\,
	combout => \r_ptr_reg[4]~10_combout\);

-- Location: FF_X5_Y1_N31
\r_ptr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_ptr_reg[4]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ptr_reg(4));

-- Location: IOIBUF_X13_Y0_N1
\wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: LCCOMB_X5_Y1_N6
\w_ptr_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_reg[1]~4_combout\ = (w_ptr_reg(0) & (w_ptr_reg(1) $ (VCC))) # (!w_ptr_reg(0) & (w_ptr_reg(1) & VCC))
-- \w_ptr_reg[1]~5\ = CARRY((w_ptr_reg(0) & w_ptr_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_ptr_reg(0),
	datab => w_ptr_reg(1),
	datad => VCC,
	combout => \w_ptr_reg[1]~4_combout\,
	cout => \w_ptr_reg[1]~5\);

-- Location: FF_X5_Y1_N7
\w_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_ptr_reg[1]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \w_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_ptr_reg(1));

-- Location: LCCOMB_X5_Y1_N24
\r_ptr_reg[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_reg[1]~4_combout\ = (r_ptr_reg(0) & (r_ptr_reg(1) $ (VCC))) # (!r_ptr_reg(0) & (r_ptr_reg(1) & VCC))
-- \r_ptr_reg[1]~5\ = CARRY((r_ptr_reg(0) & r_ptr_reg(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ptr_reg(0),
	datab => r_ptr_reg(1),
	datad => VCC,
	combout => \r_ptr_reg[1]~4_combout\,
	cout => \r_ptr_reg[1]~5\);

-- Location: FF_X5_Y1_N25
\r_ptr_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_ptr_reg[1]~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ptr_reg(1));

-- Location: LCCOMB_X5_Y1_N2
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (w_ptr_reg(1) & (r_ptr_reg(1) & (w_ptr_reg(0) $ (!r_ptr_reg(0))))) # (!w_ptr_reg(1) & (!r_ptr_reg(1) & (w_ptr_reg(0) $ (!r_ptr_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_ptr_reg(1),
	datab => r_ptr_reg(1),
	datac => w_ptr_reg(0),
	datad => r_ptr_reg(0),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X5_Y1_N18
\w_ptr_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_next~0_combout\ = (\wr~input_o\ & (((!\Equal1~2_combout\) # (!\Equal1~3_combout\)) # (!\full_flag~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \full_flag~2_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \w_ptr_next~0_combout\);

-- Location: LCCOMB_X4_Y1_N16
\w_ptr_reg[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_reg[0]~12_combout\ = w_ptr_reg(0) $ (\w_ptr_next~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => w_ptr_reg(0),
	datad => \w_ptr_next~0_combout\,
	combout => \w_ptr_reg[0]~12_combout\);

-- Location: FF_X4_Y1_N17
\w_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_ptr_reg[0]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_ptr_reg(0));

-- Location: LCCOMB_X5_Y1_N8
\w_ptr_reg[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_reg[2]~6_combout\ = (w_ptr_reg(2) & (!\w_ptr_reg[1]~5\)) # (!w_ptr_reg(2) & ((\w_ptr_reg[1]~5\) # (GND)))
-- \w_ptr_reg[2]~7\ = CARRY((!\w_ptr_reg[1]~5\) # (!w_ptr_reg(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => w_ptr_reg(2),
	datad => VCC,
	cin => \w_ptr_reg[1]~5\,
	combout => \w_ptr_reg[2]~6_combout\,
	cout => \w_ptr_reg[2]~7\);

-- Location: FF_X5_Y1_N9
\w_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_ptr_reg[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \w_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_ptr_reg(2));

-- Location: LCCOMB_X5_Y1_N10
\w_ptr_reg[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_reg[3]~8_combout\ = (w_ptr_reg(3) & (\w_ptr_reg[2]~7\ $ (GND))) # (!w_ptr_reg(3) & (!\w_ptr_reg[2]~7\ & VCC))
-- \w_ptr_reg[3]~9\ = CARRY((w_ptr_reg(3) & !\w_ptr_reg[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => w_ptr_reg(3),
	datad => VCC,
	cin => \w_ptr_reg[2]~7\,
	combout => \w_ptr_reg[3]~8_combout\,
	cout => \w_ptr_reg[3]~9\);

-- Location: FF_X5_Y1_N11
\w_ptr_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_ptr_reg[3]~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \w_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_ptr_reg(3));

-- Location: LCCOMB_X5_Y1_N12
\w_ptr_reg[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_ptr_reg[4]~10_combout\ = \w_ptr_reg[3]~9\ $ (w_ptr_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => w_ptr_reg(4),
	cin => \w_ptr_reg[3]~9\,
	combout => \w_ptr_reg[4]~10_combout\);

-- Location: FF_X5_Y1_N13
\w_ptr_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \w_ptr_reg[4]~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \w_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_ptr_reg(4));

-- Location: LCCOMB_X5_Y1_N0
\full_flag~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_flag~2_combout\ = r_ptr_reg(4) $ (w_ptr_reg(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_ptr_reg(4),
	datad => w_ptr_reg(4),
	combout => \full_flag~2_combout\);

-- Location: LCCOMB_X5_Y1_N16
\r_ptr_next~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_next~0_combout\ = (\rd~input_o\ & ((\full_flag~2_combout\) # ((!\Equal1~2_combout\) # (!\Equal1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd~input_o\,
	datab => \full_flag~2_combout\,
	datac => \Equal1~3_combout\,
	datad => \Equal1~2_combout\,
	combout => \r_ptr_next~0_combout\);

-- Location: LCCOMB_X6_Y1_N4
\r_ptr_reg[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_ptr_reg[0]~12_combout\ = r_ptr_reg(0) $ (\r_ptr_next~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_ptr_reg(0),
	datad => \r_ptr_next~0_combout\,
	combout => \r_ptr_reg[0]~12_combout\);

-- Location: FF_X6_Y1_N5
\r_ptr_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_ptr_reg[0]~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ptr_reg(0));

-- Location: FF_X5_Y1_N27
\r_ptr_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \r_ptr_reg[2]~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	ena => \r_ptr_next~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_ptr_reg(2));

-- Location: LCCOMB_X5_Y1_N4
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (r_ptr_reg(2) & (w_ptr_reg(2) & (r_ptr_reg(3) $ (!w_ptr_reg(3))))) # (!r_ptr_reg(2) & (!w_ptr_reg(2) & (r_ptr_reg(3) $ (!w_ptr_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => r_ptr_reg(2),
	datab => r_ptr_reg(3),
	datac => w_ptr_reg(2),
	datad => w_ptr_reg(3),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X5_Y1_N14
\full_flag~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \full_flag~3_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (r_ptr_reg(4) $ (w_ptr_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => r_ptr_reg(4),
	datad => w_ptr_reg(4),
	combout => \full_flag~3_combout\);

-- Location: LCCOMB_X5_Y1_N20
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~2_combout\ & (r_ptr_reg(4) $ (!w_ptr_reg(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~2_combout\,
	datac => r_ptr_reg(4),
	datad => w_ptr_reg(4),
	combout => \Equal1~4_combout\);

ww_full <= \full~output_o\;

ww_empty <= \empty~output_o\;

ww_w_addr(0) <= \w_addr[0]~output_o\;

ww_w_addr(1) <= \w_addr[1]~output_o\;

ww_w_addr(2) <= \w_addr[2]~output_o\;

ww_w_addr(3) <= \w_addr[3]~output_o\;

ww_r_addr(0) <= \r_addr[0]~output_o\;

ww_r_addr(1) <= \r_addr[1]~output_o\;

ww_r_addr(2) <= \r_addr[2]~output_o\;

ww_r_addr(3) <= \r_addr[3]~output_o\;
END structure;


