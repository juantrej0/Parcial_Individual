-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/11/2026 11:45:02"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	MorseCode IS
    PORT (
	Reset : IN std_logic;
	start_n : IN std_logic;
	Clock : IN std_logic;
	sw : IN std_logic_vector(2 DOWNTO 0);
	led : OUT std_logic
	);
END MorseCode;

-- Design Ports Information
-- led	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start_n	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF MorseCode IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_start_n : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_sw : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_led : std_logic;
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_inst|Add2~0_combout\ : std_logic;
SIGNAL \div_inst|Add2~1\ : std_logic;
SIGNAL \div_inst|Add2~2_combout\ : std_logic;
SIGNAL \div_inst|Add2~3\ : std_logic;
SIGNAL \div_inst|Add2~4_combout\ : std_logic;
SIGNAL \div_inst|Add2~5\ : std_logic;
SIGNAL \div_inst|Add2~6_combout\ : std_logic;
SIGNAL \div_inst|Add2~7\ : std_logic;
SIGNAL \div_inst|Add2~8_combout\ : std_logic;
SIGNAL \div_inst|Add2~9\ : std_logic;
SIGNAL \div_inst|Add2~10_combout\ : std_logic;
SIGNAL \div_inst|cont_2~0_combout\ : std_logic;
SIGNAL \div_inst|Add2~11\ : std_logic;
SIGNAL \div_inst|Add2~12_combout\ : std_logic;
SIGNAL \div_inst|Add2~13\ : std_logic;
SIGNAL \div_inst|Add2~14_combout\ : std_logic;
SIGNAL \div_inst|Add2~15\ : std_logic;
SIGNAL \div_inst|Add2~16_combout\ : std_logic;
SIGNAL \div_inst|Add2~17\ : std_logic;
SIGNAL \div_inst|Add2~18_combout\ : std_logic;
SIGNAL \div_inst|Add2~19\ : std_logic;
SIGNAL \div_inst|Add2~20_combout\ : std_logic;
SIGNAL \div_inst|cont_2~1_combout\ : std_logic;
SIGNAL \div_inst|Add2~21\ : std_logic;
SIGNAL \div_inst|Add2~22_combout\ : std_logic;
SIGNAL \div_inst|cont_2~2_combout\ : std_logic;
SIGNAL \div_inst|Add2~23\ : std_logic;
SIGNAL \div_inst|Add2~24_combout\ : std_logic;
SIGNAL \div_inst|cont_2~3_combout\ : std_logic;
SIGNAL \div_inst|Add2~25\ : std_logic;
SIGNAL \div_inst|Add2~26_combout\ : std_logic;
SIGNAL \div_inst|cont_2~4_combout\ : std_logic;
SIGNAL \div_inst|Add2~27\ : std_logic;
SIGNAL \div_inst|Add2~28_combout\ : std_logic;
SIGNAL \div_inst|Add2~29\ : std_logic;
SIGNAL \div_inst|Add2~30_combout\ : std_logic;
SIGNAL \div_inst|cont_2~5_combout\ : std_logic;
SIGNAL \div_inst|Add2~31\ : std_logic;
SIGNAL \div_inst|Add2~32_combout\ : std_logic;
SIGNAL \div_inst|Add2~33\ : std_logic;
SIGNAL \div_inst|Add2~34_combout\ : std_logic;
SIGNAL \div_inst|cont_2~6_combout\ : std_logic;
SIGNAL \div_inst|Add2~35\ : std_logic;
SIGNAL \div_inst|Add2~36_combout\ : std_logic;
SIGNAL \div_inst|cont_2~7_combout\ : std_logic;
SIGNAL \div_inst|Add2~37\ : std_logic;
SIGNAL \div_inst|Add2~38_combout\ : std_logic;
SIGNAL \div_inst|cont_2~8_combout\ : std_logic;
SIGNAL \div_inst|Equal2~5_combout\ : std_logic;
SIGNAL \div_inst|Add2~39\ : std_logic;
SIGNAL \div_inst|Add2~40_combout\ : std_logic;
SIGNAL \div_inst|cont_2~9_combout\ : std_logic;
SIGNAL \div_inst|Add2~41\ : std_logic;
SIGNAL \div_inst|Add2~42_combout\ : std_logic;
SIGNAL \div_inst|cont_2~10_combout\ : std_logic;
SIGNAL \div_inst|Add2~43\ : std_logic;
SIGNAL \div_inst|Add2~44_combout\ : std_logic;
SIGNAL \div_inst|Add2~45\ : std_logic;
SIGNAL \div_inst|Add2~46_combout\ : std_logic;
SIGNAL \div_inst|cont_2~11_combout\ : std_logic;
SIGNAL \div_inst|Equal2~6_combout\ : std_logic;
SIGNAL \div_inst|Add2~47\ : std_logic;
SIGNAL \div_inst|Add2~48_combout\ : std_logic;
SIGNAL \div_inst|Add2~49\ : std_logic;
SIGNAL \div_inst|Add2~50_combout\ : std_logic;
SIGNAL \div_inst|Equal2~7_combout\ : std_logic;
SIGNAL \div_inst|Equal2~3_combout\ : std_logic;
SIGNAL \div_inst|Equal2~0_combout\ : std_logic;
SIGNAL \div_inst|Equal2~2_combout\ : std_logic;
SIGNAL \div_inst|Equal2~1_combout\ : std_logic;
SIGNAL \div_inst|Equal2~4_combout\ : std_logic;
SIGNAL \div_inst|Equal2~8_combout\ : std_logic;
SIGNAL \div_inst|s_2~0_combout\ : std_logic;
SIGNAL \div_inst|s_2~q\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \Reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \prev_out_2~q\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \pattern_reg[3]~0_combout\ : std_logic;
SIGNAL \pattern_reg~3_combout\ : std_logic;
SIGNAL \start_n~input_o\ : std_logic;
SIGNAL \length_reg[1]~5_combout\ : std_logic;
SIGNAL \length_reg~8_combout\ : std_logic;
SIGNAL \length_reg[0]~0_combout\ : std_logic;
SIGNAL \length_reg[0]~_wirecell_combout\ : std_logic;
SIGNAL \tick~0_combout\ : std_logic;
SIGNAL \gap_counter~1_combout\ : std_logic;
SIGNAL \gap_counter~2_combout\ : std_logic;
SIGNAL \gap_counter~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \current_state.silencio~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \length_reg[2]~2_combout\ : std_logic;
SIGNAL \length_reg[0]~1_combout\ : std_logic;
SIGNAL \length_reg[2]~3_combout\ : std_logic;
SIGNAL \length_reg[2]~4_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \length_reg[1]~6_combout\ : std_logic;
SIGNAL \length_reg[1]~7_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \current_state.finalizado~q\ : std_logic;
SIGNAL \next_state.reposo~0_combout\ : std_logic;
SIGNAL \current_state.reposo~q\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \pattern_reg~4_combout\ : std_logic;
SIGNAL \pattern_reg~1_combout\ : std_logic;
SIGNAL \pattern_reg~2_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \current_state.alineacion~q\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \on_counter~2_combout\ : std_logic;
SIGNAL \on_counter~3_combout\ : std_logic;
SIGNAL \on_counter~4_combout\ : std_logic;
SIGNAL \on_counter~0_combout\ : std_logic;
SIGNAL \on_counter~1_combout\ : std_logic;
SIGNAL \gap_counter~0_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \current_state.emision~q\ : std_logic;
SIGNAL pattern_reg : std_logic_vector(3 DOWNTO 0);
SIGNAL on_counter : std_logic_vector(1 DOWNTO 0);
SIGNAL length_reg : std_logic_vector(2 DOWNTO 0);
SIGNAL \div_inst|cont_2\ : std_logic_vector(25 DOWNTO 0);

BEGIN

ww_Reset <= Reset;
ww_start_n <= start_n;
ww_Clock <= Clock;
ww_sw <= sw;
led <= ww_led;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);

\Reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset~input_o\);

-- Location: IOOBUF_X11_Y29_N30
\led~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \current_state.emision~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\Clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G4
\Clock~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y18_N6
\div_inst|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~0_combout\ = \div_inst|cont_2\(0) $ (VCC)
-- \div_inst|Add2~1\ = CARRY(\div_inst|cont_2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(0),
	datad => VCC,
	combout => \div_inst|Add2~0_combout\,
	cout => \div_inst|Add2~1\);

-- Location: FF_X19_Y18_N7
\div_inst|cont_2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(0));

-- Location: LCCOMB_X19_Y18_N8
\div_inst|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~2_combout\ = (\div_inst|cont_2\(1) & (!\div_inst|Add2~1\)) # (!\div_inst|cont_2\(1) & ((\div_inst|Add2~1\) # (GND)))
-- \div_inst|Add2~3\ = CARRY((!\div_inst|Add2~1\) # (!\div_inst|cont_2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(1),
	datad => VCC,
	cin => \div_inst|Add2~1\,
	combout => \div_inst|Add2~2_combout\,
	cout => \div_inst|Add2~3\);

-- Location: FF_X19_Y18_N9
\div_inst|cont_2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(1));

-- Location: LCCOMB_X19_Y18_N10
\div_inst|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~4_combout\ = (\div_inst|cont_2\(2) & (\div_inst|Add2~3\ $ (GND))) # (!\div_inst|cont_2\(2) & (!\div_inst|Add2~3\ & VCC))
-- \div_inst|Add2~5\ = CARRY((\div_inst|cont_2\(2) & !\div_inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(2),
	datad => VCC,
	cin => \div_inst|Add2~3\,
	combout => \div_inst|Add2~4_combout\,
	cout => \div_inst|Add2~5\);

-- Location: FF_X19_Y18_N11
\div_inst|cont_2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(2));

-- Location: LCCOMB_X19_Y18_N12
\div_inst|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~6_combout\ = (\div_inst|cont_2\(3) & (!\div_inst|Add2~5\)) # (!\div_inst|cont_2\(3) & ((\div_inst|Add2~5\) # (GND)))
-- \div_inst|Add2~7\ = CARRY((!\div_inst|Add2~5\) # (!\div_inst|cont_2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(3),
	datad => VCC,
	cin => \div_inst|Add2~5\,
	combout => \div_inst|Add2~6_combout\,
	cout => \div_inst|Add2~7\);

-- Location: FF_X19_Y18_N13
\div_inst|cont_2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(3));

-- Location: LCCOMB_X19_Y18_N14
\div_inst|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~8_combout\ = (\div_inst|cont_2\(4) & (\div_inst|Add2~7\ $ (GND))) # (!\div_inst|cont_2\(4) & (!\div_inst|Add2~7\ & VCC))
-- \div_inst|Add2~9\ = CARRY((\div_inst|cont_2\(4) & !\div_inst|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(4),
	datad => VCC,
	cin => \div_inst|Add2~7\,
	combout => \div_inst|Add2~8_combout\,
	cout => \div_inst|Add2~9\);

-- Location: FF_X19_Y18_N15
\div_inst|cont_2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(4));

-- Location: LCCOMB_X19_Y18_N16
\div_inst|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~10_combout\ = (\div_inst|cont_2\(5) & (!\div_inst|Add2~9\)) # (!\div_inst|cont_2\(5) & ((\div_inst|Add2~9\) # (GND)))
-- \div_inst|Add2~11\ = CARRY((!\div_inst|Add2~9\) # (!\div_inst|cont_2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(5),
	datad => VCC,
	cin => \div_inst|Add2~9\,
	combout => \div_inst|Add2~10_combout\,
	cout => \div_inst|Add2~11\);

-- Location: LCCOMB_X19_Y18_N0
\div_inst|cont_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~0_combout\ = (\div_inst|Add2~10_combout\ & !\div_inst|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Add2~10_combout\,
	datad => \div_inst|Equal2~8_combout\,
	combout => \div_inst|cont_2~0_combout\);

-- Location: FF_X19_Y18_N1
\div_inst|cont_2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(5));

-- Location: LCCOMB_X19_Y18_N18
\div_inst|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~12_combout\ = (\div_inst|cont_2\(6) & (\div_inst|Add2~11\ $ (GND))) # (!\div_inst|cont_2\(6) & (!\div_inst|Add2~11\ & VCC))
-- \div_inst|Add2~13\ = CARRY((\div_inst|cont_2\(6) & !\div_inst|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(6),
	datad => VCC,
	cin => \div_inst|Add2~11\,
	combout => \div_inst|Add2~12_combout\,
	cout => \div_inst|Add2~13\);

-- Location: FF_X19_Y18_N19
\div_inst|cont_2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(6));

-- Location: LCCOMB_X19_Y18_N20
\div_inst|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~14_combout\ = (\div_inst|cont_2\(7) & (!\div_inst|Add2~13\)) # (!\div_inst|cont_2\(7) & ((\div_inst|Add2~13\) # (GND)))
-- \div_inst|Add2~15\ = CARRY((!\div_inst|Add2~13\) # (!\div_inst|cont_2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(7),
	datad => VCC,
	cin => \div_inst|Add2~13\,
	combout => \div_inst|Add2~14_combout\,
	cout => \div_inst|Add2~15\);

-- Location: FF_X19_Y18_N21
\div_inst|cont_2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(7));

-- Location: LCCOMB_X19_Y18_N22
\div_inst|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~16_combout\ = (\div_inst|cont_2\(8) & (\div_inst|Add2~15\ $ (GND))) # (!\div_inst|cont_2\(8) & (!\div_inst|Add2~15\ & VCC))
-- \div_inst|Add2~17\ = CARRY((\div_inst|cont_2\(8) & !\div_inst|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(8),
	datad => VCC,
	cin => \div_inst|Add2~15\,
	combout => \div_inst|Add2~16_combout\,
	cout => \div_inst|Add2~17\);

-- Location: FF_X19_Y18_N23
\div_inst|cont_2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(8));

-- Location: LCCOMB_X19_Y18_N24
\div_inst|Add2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~18_combout\ = (\div_inst|cont_2\(9) & (!\div_inst|Add2~17\)) # (!\div_inst|cont_2\(9) & ((\div_inst|Add2~17\) # (GND)))
-- \div_inst|Add2~19\ = CARRY((!\div_inst|Add2~17\) # (!\div_inst|cont_2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(9),
	datad => VCC,
	cin => \div_inst|Add2~17\,
	combout => \div_inst|Add2~18_combout\,
	cout => \div_inst|Add2~19\);

-- Location: FF_X19_Y18_N25
\div_inst|cont_2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(9));

-- Location: LCCOMB_X19_Y18_N26
\div_inst|Add2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~20_combout\ = (\div_inst|cont_2\(10) & (\div_inst|Add2~19\ $ (GND))) # (!\div_inst|cont_2\(10) & (!\div_inst|Add2~19\ & VCC))
-- \div_inst|Add2~21\ = CARRY((\div_inst|cont_2\(10) & !\div_inst|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(10),
	datad => VCC,
	cin => \div_inst|Add2~19\,
	combout => \div_inst|Add2~20_combout\,
	cout => \div_inst|Add2~21\);

-- Location: LCCOMB_X20_Y17_N0
\div_inst|cont_2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~1_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Equal2~8_combout\,
	datac => \div_inst|Add2~20_combout\,
	combout => \div_inst|cont_2~1_combout\);

-- Location: FF_X20_Y17_N1
\div_inst|cont_2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(10));

-- Location: LCCOMB_X19_Y18_N28
\div_inst|Add2~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~22_combout\ = (\div_inst|cont_2\(11) & (!\div_inst|Add2~21\)) # (!\div_inst|cont_2\(11) & ((\div_inst|Add2~21\) # (GND)))
-- \div_inst|Add2~23\ = CARRY((!\div_inst|Add2~21\) # (!\div_inst|cont_2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(11),
	datad => VCC,
	cin => \div_inst|Add2~21\,
	combout => \div_inst|Add2~22_combout\,
	cout => \div_inst|Add2~23\);

-- Location: LCCOMB_X19_Y18_N2
\div_inst|cont_2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~2_combout\ = (\div_inst|Add2~22_combout\ & !\div_inst|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Add2~22_combout\,
	datad => \div_inst|Equal2~8_combout\,
	combout => \div_inst|cont_2~2_combout\);

-- Location: FF_X19_Y18_N3
\div_inst|cont_2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(11));

-- Location: LCCOMB_X19_Y18_N30
\div_inst|Add2~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~24_combout\ = (\div_inst|cont_2\(12) & (\div_inst|Add2~23\ $ (GND))) # (!\div_inst|cont_2\(12) & (!\div_inst|Add2~23\ & VCC))
-- \div_inst|Add2~25\ = CARRY((\div_inst|cont_2\(12) & !\div_inst|Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(12),
	datad => VCC,
	cin => \div_inst|Add2~23\,
	combout => \div_inst|Add2~24_combout\,
	cout => \div_inst|Add2~25\);

-- Location: LCCOMB_X19_Y18_N4
\div_inst|cont_2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~3_combout\ = (\div_inst|Add2~24_combout\ & !\div_inst|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_inst|Add2~24_combout\,
	datad => \div_inst|Equal2~8_combout\,
	combout => \div_inst|cont_2~3_combout\);

-- Location: FF_X19_Y18_N5
\div_inst|cont_2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(12));

-- Location: LCCOMB_X19_Y17_N0
\div_inst|Add2~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~26_combout\ = (\div_inst|cont_2\(13) & (!\div_inst|Add2~25\)) # (!\div_inst|cont_2\(13) & ((\div_inst|Add2~25\) # (GND)))
-- \div_inst|Add2~27\ = CARRY((!\div_inst|Add2~25\) # (!\div_inst|cont_2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(13),
	datad => VCC,
	cin => \div_inst|Add2~25\,
	combout => \div_inst|Add2~26_combout\,
	cout => \div_inst|Add2~27\);

-- Location: LCCOMB_X19_Y17_N30
\div_inst|cont_2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~4_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|Equal2~8_combout\,
	datad => \div_inst|Add2~26_combout\,
	combout => \div_inst|cont_2~4_combout\);

-- Location: FF_X19_Y17_N31
\div_inst|cont_2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(13));

-- Location: LCCOMB_X19_Y17_N2
\div_inst|Add2~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~28_combout\ = (\div_inst|cont_2\(14) & (\div_inst|Add2~27\ $ (GND))) # (!\div_inst|cont_2\(14) & (!\div_inst|Add2~27\ & VCC))
-- \div_inst|Add2~29\ = CARRY((\div_inst|cont_2\(14) & !\div_inst|Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(14),
	datad => VCC,
	cin => \div_inst|Add2~27\,
	combout => \div_inst|Add2~28_combout\,
	cout => \div_inst|Add2~29\);

-- Location: FF_X19_Y17_N3
\div_inst|cont_2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(14));

-- Location: LCCOMB_X19_Y17_N4
\div_inst|Add2~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~30_combout\ = (\div_inst|cont_2\(15) & (!\div_inst|Add2~29\)) # (!\div_inst|cont_2\(15) & ((\div_inst|Add2~29\) # (GND)))
-- \div_inst|Add2~31\ = CARRY((!\div_inst|Add2~29\) # (!\div_inst|cont_2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(15),
	datad => VCC,
	cin => \div_inst|Add2~29\,
	combout => \div_inst|Add2~30_combout\,
	cout => \div_inst|Add2~31\);

-- Location: LCCOMB_X20_Y17_N8
\div_inst|cont_2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~5_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Equal2~8_combout\,
	datac => \div_inst|Add2~30_combout\,
	combout => \div_inst|cont_2~5_combout\);

-- Location: FF_X20_Y17_N9
\div_inst|cont_2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(15));

-- Location: LCCOMB_X19_Y17_N6
\div_inst|Add2~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~32_combout\ = (\div_inst|cont_2\(16) & (\div_inst|Add2~31\ $ (GND))) # (!\div_inst|cont_2\(16) & (!\div_inst|Add2~31\ & VCC))
-- \div_inst|Add2~33\ = CARRY((\div_inst|cont_2\(16) & !\div_inst|Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(16),
	datad => VCC,
	cin => \div_inst|Add2~31\,
	combout => \div_inst|Add2~32_combout\,
	cout => \div_inst|Add2~33\);

-- Location: FF_X19_Y17_N7
\div_inst|cont_2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(16));

-- Location: LCCOMB_X19_Y17_N8
\div_inst|Add2~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~34_combout\ = (\div_inst|cont_2\(17) & (!\div_inst|Add2~33\)) # (!\div_inst|cont_2\(17) & ((\div_inst|Add2~33\) # (GND)))
-- \div_inst|Add2~35\ = CARRY((!\div_inst|Add2~33\) # (!\div_inst|cont_2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(17),
	datad => VCC,
	cin => \div_inst|Add2~33\,
	combout => \div_inst|Add2~34_combout\,
	cout => \div_inst|Add2~35\);

-- Location: LCCOMB_X20_Y17_N18
\div_inst|cont_2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~6_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Equal2~8_combout\,
	datac => \div_inst|Add2~34_combout\,
	combout => \div_inst|cont_2~6_combout\);

-- Location: FF_X20_Y17_N19
\div_inst|cont_2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(17));

-- Location: LCCOMB_X19_Y17_N10
\div_inst|Add2~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~36_combout\ = (\div_inst|cont_2\(18) & (\div_inst|Add2~35\ $ (GND))) # (!\div_inst|cont_2\(18) & (!\div_inst|Add2~35\ & VCC))
-- \div_inst|Add2~37\ = CARRY((\div_inst|cont_2\(18) & !\div_inst|Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(18),
	datad => VCC,
	cin => \div_inst|Add2~35\,
	combout => \div_inst|Add2~36_combout\,
	cout => \div_inst|Add2~37\);

-- Location: LCCOMB_X20_Y17_N24
\div_inst|cont_2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~7_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_inst|Equal2~8_combout\,
	datad => \div_inst|Add2~36_combout\,
	combout => \div_inst|cont_2~7_combout\);

-- Location: FF_X20_Y17_N25
\div_inst|cont_2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(18));

-- Location: LCCOMB_X19_Y17_N12
\div_inst|Add2~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~38_combout\ = (\div_inst|cont_2\(19) & (!\div_inst|Add2~37\)) # (!\div_inst|cont_2\(19) & ((\div_inst|Add2~37\) # (GND)))
-- \div_inst|Add2~39\ = CARRY((!\div_inst|Add2~37\) # (!\div_inst|cont_2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(19),
	datad => VCC,
	cin => \div_inst|Add2~37\,
	combout => \div_inst|Add2~38_combout\,
	cout => \div_inst|Add2~39\);

-- Location: LCCOMB_X19_Y17_N28
\div_inst|cont_2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~8_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|Equal2~8_combout\,
	datad => \div_inst|Add2~38_combout\,
	combout => \div_inst|cont_2~8_combout\);

-- Location: FF_X19_Y17_N29
\div_inst|cont_2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(19));

-- Location: LCCOMB_X20_Y17_N6
\div_inst|Equal2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~5_combout\ = (\div_inst|cont_2\(19) & (\div_inst|cont_2\(17) & (!\div_inst|cont_2\(16) & \div_inst|cont_2\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(19),
	datab => \div_inst|cont_2\(17),
	datac => \div_inst|cont_2\(16),
	datad => \div_inst|cont_2\(18),
	combout => \div_inst|Equal2~5_combout\);

-- Location: LCCOMB_X19_Y17_N14
\div_inst|Add2~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~40_combout\ = (\div_inst|cont_2\(20) & (\div_inst|Add2~39\ $ (GND))) # (!\div_inst|cont_2\(20) & (!\div_inst|Add2~39\ & VCC))
-- \div_inst|Add2~41\ = CARRY((\div_inst|cont_2\(20) & !\div_inst|Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(20),
	datad => VCC,
	cin => \div_inst|Add2~39\,
	combout => \div_inst|Add2~40_combout\,
	cout => \div_inst|Add2~41\);

-- Location: LCCOMB_X19_Y17_N26
\div_inst|cont_2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~9_combout\ = (\div_inst|Add2~40_combout\ & !\div_inst|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_inst|Add2~40_combout\,
	datad => \div_inst|Equal2~8_combout\,
	combout => \div_inst|cont_2~9_combout\);

-- Location: FF_X19_Y17_N27
\div_inst|cont_2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(20));

-- Location: LCCOMB_X19_Y17_N16
\div_inst|Add2~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~42_combout\ = (\div_inst|cont_2\(21) & (!\div_inst|Add2~41\)) # (!\div_inst|cont_2\(21) & ((\div_inst|Add2~41\) # (GND)))
-- \div_inst|Add2~43\ = CARRY((!\div_inst|Add2~41\) # (!\div_inst|cont_2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(21),
	datad => VCC,
	cin => \div_inst|Add2~41\,
	combout => \div_inst|Add2~42_combout\,
	cout => \div_inst|Add2~43\);

-- Location: LCCOMB_X20_Y17_N20
\div_inst|cont_2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~10_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|Equal2~8_combout\,
	datac => \div_inst|Add2~42_combout\,
	combout => \div_inst|cont_2~10_combout\);

-- Location: FF_X20_Y17_N21
\div_inst|cont_2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(21));

-- Location: LCCOMB_X19_Y17_N18
\div_inst|Add2~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~44_combout\ = (\div_inst|cont_2\(22) & (\div_inst|Add2~43\ $ (GND))) # (!\div_inst|cont_2\(22) & (!\div_inst|Add2~43\ & VCC))
-- \div_inst|Add2~45\ = CARRY((\div_inst|cont_2\(22) & !\div_inst|Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(22),
	datad => VCC,
	cin => \div_inst|Add2~43\,
	combout => \div_inst|Add2~44_combout\,
	cout => \div_inst|Add2~45\);

-- Location: FF_X19_Y17_N19
\div_inst|cont_2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(22));

-- Location: LCCOMB_X19_Y17_N20
\div_inst|Add2~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~46_combout\ = (\div_inst|cont_2\(23) & (!\div_inst|Add2~45\)) # (!\div_inst|cont_2\(23) & ((\div_inst|Add2~45\) # (GND)))
-- \div_inst|Add2~47\ = CARRY((!\div_inst|Add2~45\) # (!\div_inst|cont_2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(23),
	datad => VCC,
	cin => \div_inst|Add2~45\,
	combout => \div_inst|Add2~46_combout\,
	cout => \div_inst|Add2~47\);

-- Location: LCCOMB_X20_Y17_N14
\div_inst|cont_2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|cont_2~11_combout\ = (!\div_inst|Equal2~8_combout\ & \div_inst|Add2~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_inst|Equal2~8_combout\,
	datad => \div_inst|Add2~46_combout\,
	combout => \div_inst|cont_2~11_combout\);

-- Location: FF_X20_Y17_N15
\div_inst|cont_2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|cont_2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(23));

-- Location: LCCOMB_X20_Y17_N28
\div_inst|Equal2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~6_combout\ = (!\div_inst|cont_2\(22) & (\div_inst|cont_2\(21) & (\div_inst|cont_2\(23) & \div_inst|cont_2\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(22),
	datab => \div_inst|cont_2\(21),
	datac => \div_inst|cont_2\(23),
	datad => \div_inst|cont_2\(20),
	combout => \div_inst|Equal2~6_combout\);

-- Location: LCCOMB_X19_Y17_N22
\div_inst|Add2~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~48_combout\ = (\div_inst|cont_2\(24) & (\div_inst|Add2~47\ $ (GND))) # (!\div_inst|cont_2\(24) & (!\div_inst|Add2~47\ & VCC))
-- \div_inst|Add2~49\ = CARRY((\div_inst|cont_2\(24) & !\div_inst|Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(24),
	datad => VCC,
	cin => \div_inst|Add2~47\,
	combout => \div_inst|Add2~48_combout\,
	cout => \div_inst|Add2~49\);

-- Location: FF_X19_Y17_N23
\div_inst|cont_2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(24));

-- Location: LCCOMB_X19_Y17_N24
\div_inst|Add2~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Add2~50_combout\ = \div_inst|Add2~49\ $ (\div_inst|cont_2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \div_inst|cont_2\(25),
	cin => \div_inst|Add2~49\,
	combout => \div_inst|Add2~50_combout\);

-- Location: FF_X19_Y17_N25
\div_inst|cont_2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|Add2~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|cont_2\(25));

-- Location: LCCOMB_X20_Y17_N22
\div_inst|Equal2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~7_combout\ = (!\div_inst|cont_2\(25) & !\div_inst|cont_2\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_inst|cont_2\(25),
	datad => \div_inst|cont_2\(24),
	combout => \div_inst|Equal2~7_combout\);

-- Location: LCCOMB_X20_Y17_N30
\div_inst|Equal2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~3_combout\ = (!\div_inst|cont_2\(14) & (\div_inst|cont_2\(15) & (\div_inst|cont_2\(13) & \div_inst|cont_2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(14),
	datab => \div_inst|cont_2\(15),
	datac => \div_inst|cont_2\(13),
	datad => \div_inst|cont_2\(12),
	combout => \div_inst|Equal2~3_combout\);

-- Location: LCCOMB_X20_Y17_N16
\div_inst|Equal2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~0_combout\ = (!\div_inst|cont_2\(7) & (!\div_inst|cont_2\(8) & (!\div_inst|cont_2\(9) & !\div_inst|cont_2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(7),
	datab => \div_inst|cont_2\(8),
	datac => \div_inst|cont_2\(9),
	datad => \div_inst|cont_2\(6),
	combout => \div_inst|Equal2~0_combout\);

-- Location: LCCOMB_X20_Y17_N26
\div_inst|Equal2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~2_combout\ = (\div_inst|cont_2\(10) & (\div_inst|cont_2\(11) & (\div_inst|cont_2\(0) & \div_inst|cont_2\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(10),
	datab => \div_inst|cont_2\(11),
	datac => \div_inst|cont_2\(0),
	datad => \div_inst|cont_2\(1),
	combout => \div_inst|Equal2~2_combout\);

-- Location: LCCOMB_X20_Y17_N2
\div_inst|Equal2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~1_combout\ = (\div_inst|cont_2\(4) & (!\div_inst|cont_2\(5) & (\div_inst|cont_2\(2) & \div_inst|cont_2\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|cont_2\(4),
	datab => \div_inst|cont_2\(5),
	datac => \div_inst|cont_2\(2),
	datad => \div_inst|cont_2\(3),
	combout => \div_inst|Equal2~1_combout\);

-- Location: LCCOMB_X20_Y17_N12
\div_inst|Equal2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~4_combout\ = (\div_inst|Equal2~3_combout\ & (\div_inst|Equal2~0_combout\ & (\div_inst|Equal2~2_combout\ & \div_inst|Equal2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|Equal2~3_combout\,
	datab => \div_inst|Equal2~0_combout\,
	datac => \div_inst|Equal2~2_combout\,
	datad => \div_inst|Equal2~1_combout\,
	combout => \div_inst|Equal2~4_combout\);

-- Location: LCCOMB_X20_Y17_N4
\div_inst|Equal2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|Equal2~8_combout\ = (\div_inst|Equal2~5_combout\ & (\div_inst|Equal2~6_combout\ & (\div_inst|Equal2~7_combout\ & \div_inst|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_inst|Equal2~5_combout\,
	datab => \div_inst|Equal2~6_combout\,
	datac => \div_inst|Equal2~7_combout\,
	datad => \div_inst|Equal2~4_combout\,
	combout => \div_inst|Equal2~8_combout\);

-- Location: LCCOMB_X16_Y28_N28
\div_inst|s_2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \div_inst|s_2~0_combout\ = \div_inst|s_2~q\ $ (\div_inst|Equal2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_inst|s_2~q\,
	datad => \div_inst|Equal2~8_combout\,
	combout => \div_inst|s_2~0_combout\);

-- Location: FF_X16_Y28_N29
\div_inst|s_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \div_inst|s_2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_inst|s_2~q\);

-- Location: IOIBUF_X0_Y14_N8
\Reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: CLKCTRL_G2
\Reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~inputclkctrl_outclk\);

-- Location: FF_X11_Y28_N31
prev_out_2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \div_inst|s_2~q\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \prev_out_2~q\);

-- Location: LCCOMB_X11_Y28_N28
\Selector2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\current_state.emision~q\ & (!\prev_out_2~q\ & \div_inst|s_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \current_state.emision~q\,
	datac => \prev_out_2~q\,
	datad => \div_inst|s_2~q\,
	combout => \Selector2~1_combout\);

-- Location: IOIBUF_X9_Y29_N8
\sw[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\sw[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X9_Y29_N29
\sw[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X10_Y28_N14
\pattern_reg[3]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pattern_reg[3]~0_combout\ = (\sw[0]~input_o\ & ((!\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\sw[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \pattern_reg[3]~0_combout\);

-- Location: LCCOMB_X9_Y28_N10
\pattern_reg~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pattern_reg~3_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[2]~input_o\)) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & \sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \pattern_reg~3_combout\);

-- Location: IOIBUF_X9_Y29_N15
\start_n~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start_n,
	o => \start_n~input_o\);

-- Location: LCCOMB_X9_Y28_N16
\length_reg[1]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[1]~5_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))) # (!\sw[1]~input_o\ & (!\sw[0]~input_o\ & !\sw[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \length_reg[1]~5_combout\);

-- Location: LCCOMB_X9_Y28_N14
\length_reg~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg~8_combout\ = (\sw[0]~input_o\ & \sw[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \length_reg~8_combout\);

-- Location: LCCOMB_X10_Y28_N24
\length_reg[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[0]~0_combout\ = (\sw[2]~input_o\ & (!\sw[0]~input_o\)) # (!\sw[2]~input_o\ & ((\length_reg~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datad => \length_reg~8_combout\,
	combout => \length_reg[0]~0_combout\);

-- Location: LCCOMB_X10_Y28_N26
\length_reg[0]~_wirecell\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[0]~_wirecell_combout\ = !length_reg(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => length_reg(0),
	combout => \length_reg[0]~_wirecell_combout\);

-- Location: LCCOMB_X11_Y28_N2
\tick~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \tick~0_combout\ = (!\prev_out_2~q\ & \div_inst|s_2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \prev_out_2~q\,
	datad => \div_inst|s_2~q\,
	combout => \tick~0_combout\);

-- Location: LCCOMB_X11_Y28_N16
\gap_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gap_counter~1_combout\ = (!\gap_counter~q\ & ((\current_state.silencio~q\) # ((\current_state.emision~q\ & \gap_counter~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gap_counter~q\,
	datab => \current_state.emision~q\,
	datac => \current_state.silencio~q\,
	datad => \gap_counter~0_combout\,
	combout => \gap_counter~1_combout\);

-- Location: LCCOMB_X11_Y28_N22
\gap_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gap_counter~2_combout\ = (\gap_counter~1_combout\) # ((\gap_counter~q\ & ((!\current_state.silencio~q\) # (!\tick~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick~0_combout\,
	datab => \current_state.silencio~q\,
	datac => \gap_counter~q\,
	datad => \gap_counter~1_combout\,
	combout => \gap_counter~2_combout\);

-- Location: FF_X11_Y28_N23
gap_counter : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \gap_counter~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gap_counter~q\);

-- Location: LCCOMB_X11_Y28_N14
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\current_state.silencio~q\ & (((\prev_out_2~q\) # (!\div_inst|s_2~q\)) # (!\gap_counter~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gap_counter~q\,
	datab => \current_state.silencio~q\,
	datac => \prev_out_2~q\,
	datad => \div_inst|s_2~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X11_Y28_N4
\Selector2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\Selector2~0_combout\) # ((!on_counter(1) & (on_counter(0) & \Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => on_counter(1),
	datab => on_counter(0),
	datac => \Selector2~0_combout\,
	datad => \Selector2~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: FF_X11_Y28_N5
\current_state.silencio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector2~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.silencio~q\);

-- Location: LCCOMB_X11_Y28_N6
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\prev_out_2~q\ & (\current_state.silencio~q\ & (\gap_counter~q\ & \div_inst|s_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_out_2~q\,
	datab => \current_state.silencio~q\,
	datac => \gap_counter~q\,
	datad => \div_inst|s_2~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X10_Y28_N6
\length_reg[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[2]~2_combout\ = (length_reg(2) & (\Selector3~0_combout\ & ((length_reg(0)) # (length_reg(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => length_reg(2),
	datab => length_reg(0),
	datac => length_reg(1),
	datad => \Selector3~0_combout\,
	combout => \length_reg[2]~2_combout\);

-- Location: LCCOMB_X10_Y28_N2
\length_reg[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[0]~1_combout\ = (\Selector1~3_combout\) # ((!\current_state.reposo~q\ & !\start_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.reposo~q\,
	datac => \start_n~input_o\,
	datad => \Selector1~3_combout\,
	combout => \length_reg[0]~1_combout\);

-- Location: LCCOMB_X10_Y28_N0
\length_reg[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[2]~3_combout\ = (!\Selector1~3_combout\ & (\sw[0]~input_o\ $ (((!\sw[2]~input_o\ & \sw[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \sw[1]~input_o\,
	datad => \Selector1~3_combout\,
	combout => \length_reg[2]~3_combout\);

-- Location: LCCOMB_X10_Y28_N12
\length_reg[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[2]~4_combout\ = (\length_reg[0]~1_combout\ & ((\length_reg[2]~2_combout\) # ((\length_reg[2]~3_combout\)))) # (!\length_reg[0]~1_combout\ & (((length_reg(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \length_reg[2]~2_combout\,
	datab => \length_reg[0]~1_combout\,
	datac => length_reg(2),
	datad => \length_reg[2]~3_combout\,
	combout => \length_reg[2]~4_combout\);

-- Location: FF_X10_Y28_N13
\length_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \length_reg[2]~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => length_reg(2));

-- Location: LCCOMB_X10_Y28_N20
\Selector1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector3~0_combout\ & ((length_reg(2)) # (length_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => length_reg(2),
	datac => length_reg(1),
	datad => \Selector3~0_combout\,
	combout => \Selector1~3_combout\);

-- Location: FF_X10_Y28_N25
\length_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \length_reg[0]~0_combout\,
	asdata => \length_reg[0]~_wirecell_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \Selector1~3_combout\,
	ena => \length_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => length_reg(0));

-- Location: LCCOMB_X10_Y28_N4
\length_reg[1]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[1]~6_combout\ = (\Selector1~3_combout\ & ((length_reg(0) $ (!length_reg(1))))) # (!\Selector1~3_combout\ & (\length_reg[1]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \length_reg[1]~5_combout\,
	datab => length_reg(0),
	datac => length_reg(1),
	datad => \Selector1~3_combout\,
	combout => \length_reg[1]~6_combout\);

-- Location: LCCOMB_X10_Y28_N22
\length_reg[1]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \length_reg[1]~7_combout\ = (\length_reg[0]~1_combout\ & (\length_reg[1]~6_combout\)) # (!\length_reg[0]~1_combout\ & ((length_reg(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \length_reg[1]~6_combout\,
	datac => length_reg(1),
	datad => \length_reg[0]~1_combout\,
	combout => \length_reg[1]~7_combout\);

-- Location: FF_X10_Y28_N23
\length_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \length_reg[1]~7_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => length_reg(1));

-- Location: LCCOMB_X11_Y28_N30
\Selector3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (!length_reg(1) & !length_reg(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => length_reg(1),
	datad => length_reg(2),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X10_Y28_N18
\Selector3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~1_combout\ & ((\Selector3~0_combout\) # ((!\start_n~input_o\ & \current_state.finalizado~q\)))) # (!\Selector3~1_combout\ & (!\start_n~input_o\ & (\current_state.finalizado~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \start_n~input_o\,
	datac => \current_state.finalizado~q\,
	datad => \Selector3~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: FF_X10_Y28_N19
\current_state.finalizado\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector3~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.finalizado~q\);

-- Location: LCCOMB_X10_Y28_N10
\next_state.reposo~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \next_state.reposo~0_combout\ = ((\current_state.reposo~q\ & !\current_state.finalizado~q\)) # (!\start_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \start_n~input_o\,
	datac => \current_state.reposo~q\,
	datad => \current_state.finalizado~q\,
	combout => \next_state.reposo~0_combout\);

-- Location: FF_X10_Y28_N11
\current_state.reposo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \next_state.reposo~0_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.reposo~q\);

-- Location: LCCOMB_X10_Y28_N28
\Selector0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (!\start_n~input_o\ & !\current_state.reposo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start_n~input_o\,
	datad => \current_state.reposo~q\,
	combout => \Selector0~4_combout\);

-- Location: LCCOMB_X10_Y28_N30
\pattern_reg~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pattern_reg~4_combout\ = (!\Selector1~3_combout\ & ((\Selector0~4_combout\ & (\pattern_reg~3_combout\)) # (!\Selector0~4_combout\ & ((pattern_reg(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pattern_reg~3_combout\,
	datab => \Selector0~4_combout\,
	datac => pattern_reg(1),
	datad => \Selector1~3_combout\,
	combout => \pattern_reg~4_combout\);

-- Location: FF_X10_Y28_N31
\pattern_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \pattern_reg~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pattern_reg(1));

-- Location: LCCOMB_X9_Y28_N4
\pattern_reg~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pattern_reg~1_combout\ = (!\sw[0]~input_o\ & (\sw[1]~input_o\ $ (!\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datac => \sw[0]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \pattern_reg~1_combout\);

-- Location: LCCOMB_X10_Y28_N8
\pattern_reg~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \pattern_reg~2_combout\ = (\Selector3~1_combout\ & (((\pattern_reg~1_combout\)))) # (!\Selector3~1_combout\ & ((\Selector3~0_combout\ & (pattern_reg(1))) # (!\Selector3~0_combout\ & ((\pattern_reg~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pattern_reg(1),
	datab => \pattern_reg~1_combout\,
	datac => \Selector3~1_combout\,
	datad => \Selector3~0_combout\,
	combout => \pattern_reg~2_combout\);

-- Location: FF_X10_Y28_N9
\pattern_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \pattern_reg~2_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	ena => \length_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pattern_reg(2));

-- Location: FF_X10_Y28_N15
\pattern_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \pattern_reg[3]~0_combout\,
	asdata => pattern_reg(2),
	clrn => \Reset~inputclkctrl_outclk\,
	sload => \Selector1~3_combout\,
	ena => \length_reg[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pattern_reg(3));

-- Location: LCCOMB_X10_Y28_N16
\Selector0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\current_state.reposo~q\ & (((\current_state.alineacion~q\ & !\tick~0_combout\)))) # (!\current_state.reposo~q\ & (((\current_state.alineacion~q\ & !\tick~0_combout\)) # (!\start_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.reposo~q\,
	datab => \start_n~input_o\,
	datac => \current_state.alineacion~q\,
	datad => \tick~0_combout\,
	combout => \Selector0~5_combout\);

-- Location: FF_X10_Y28_N17
\current_state.alineacion\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector0~5_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.alineacion~q\);

-- Location: LCCOMB_X11_Y28_N8
\Selector1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (!\prev_out_2~q\ & (\current_state.alineacion~q\ & \div_inst|s_2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_out_2~q\,
	datac => \current_state.alineacion~q\,
	datad => \div_inst|s_2~q\,
	combout => \Selector1~2_combout\);

-- Location: LCCOMB_X11_Y28_N12
\on_counter~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_counter~2_combout\ = (\Selector1~2_combout\ & (pattern_reg(3))) # (!\Selector1~2_combout\ & ((pattern_reg(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pattern_reg(3),
	datac => \Selector1~2_combout\,
	datad => pattern_reg(2),
	combout => \on_counter~2_combout\);

-- Location: LCCOMB_X11_Y28_N10
\on_counter~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_counter~3_combout\ = (\Selector1~2_combout\ & (\on_counter~2_combout\ $ ((on_counter(1))))) # (!\Selector1~2_combout\ & (\Selector1~3_combout\ & (\on_counter~2_combout\ $ (on_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \on_counter~2_combout\,
	datab => \Selector1~2_combout\,
	datac => on_counter(1),
	datad => \Selector1~3_combout\,
	combout => \on_counter~3_combout\);

-- Location: LCCOMB_X11_Y28_N26
\on_counter~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_counter~4_combout\ = (\Selector2~1_combout\ & ((on_counter(0) & (on_counter(1))) # (!on_counter(0) & (!on_counter(1) & \on_counter~3_combout\)))) # (!\Selector2~1_combout\ & ((on_counter(1) $ (\on_counter~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => on_counter(0),
	datab => \Selector2~1_combout\,
	datac => on_counter(1),
	datad => \on_counter~3_combout\,
	combout => \on_counter~4_combout\);

-- Location: FF_X11_Y28_N27
\on_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \on_counter~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => on_counter(1));

-- Location: LCCOMB_X11_Y28_N18
\on_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_counter~0_combout\ = (\Selector1~2_combout\) # ((\Selector1~3_combout\) # ((on_counter(1) & \Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => on_counter(1),
	datab => \Selector2~1_combout\,
	datac => \Selector1~2_combout\,
	datad => \Selector1~3_combout\,
	combout => \on_counter~0_combout\);

-- Location: LCCOMB_X11_Y28_N24
\on_counter~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \on_counter~1_combout\ = (on_counter(0) & (!\Selector2~1_combout\)) # (!on_counter(0) & ((\on_counter~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~1_combout\,
	datac => on_counter(0),
	datad => \on_counter~0_combout\,
	combout => \on_counter~1_combout\);

-- Location: FF_X11_Y28_N25
\on_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \on_counter~1_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => on_counter(0));

-- Location: LCCOMB_X11_Y28_N20
\gap_counter~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \gap_counter~0_combout\ = (!\prev_out_2~q\ & (on_counter(0) & (!on_counter(1) & \div_inst|s_2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \prev_out_2~q\,
	datab => on_counter(0),
	datac => on_counter(1),
	datad => \div_inst|s_2~q\,
	combout => \gap_counter~0_combout\);

-- Location: LCCOMB_X11_Y28_N0
\Selector1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\Selector1~2_combout\) # ((\Selector1~3_combout\) # ((!\gap_counter~0_combout\ & \current_state.emision~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gap_counter~0_combout\,
	datab => \Selector1~2_combout\,
	datac => \current_state.emision~q\,
	datad => \Selector1~3_combout\,
	combout => \Selector1~4_combout\);

-- Location: FF_X11_Y28_N1
\current_state.emision\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \Selector1~4_combout\,
	clrn => \Reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \current_state.emision~q\);

ww_led <= \led~output_o\;
END structure;


