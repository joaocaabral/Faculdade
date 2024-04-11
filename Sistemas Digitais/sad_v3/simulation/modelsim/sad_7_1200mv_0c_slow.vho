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

-- DATE "06/04/2023 16:28:27"

-- 
-- Device: Altera EP3C5E144C7 Package TQFP144
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

ENTITY 	sad IS
    PORT (
	a : IN std_logic_vector(31 DOWNTO 0);
	b : IN std_logic_vector(31 DOWNTO 0);
	clk : IN std_logic;
	iniciar : IN std_logic;
	rst : IN std_logic;
	pronto : OUT std_logic;
	fim : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(13 DOWNTO 0)
	);
END sad;

-- Design Ports Information
-- pronto	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim[0]	=>  Location: PIN_10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim[1]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim[2]	=>  Location: PIN_2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- fim[3]	=>  Location: PIN_33,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_111,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_106,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[8]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[9]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[10]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[11]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[12]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[13]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iniciar	=>  Location: PIN_31,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[16]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[16]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[23]	=>  Location: PIN_143,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[23]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[22]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[22]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[21]	=>  Location: PIN_119,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[21]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[20]	=>  Location: PIN_144,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[20]	=>  Location: PIN_120,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[19]	=>  Location: PIN_4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[19]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[18]	=>  Location: PIN_113,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[18]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[17]	=>  Location: PIN_1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[17]	=>  Location: PIN_115,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[24]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[24]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[31]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[31]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[30]	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[30]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[29]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[29]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[28]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[28]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[27]	=>  Location: PIN_105,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[27]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[26]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[26]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[25]	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[25]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_133,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_114,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[8]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[8]	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[15]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[15]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[14]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[14]	=>  Location: PIN_138,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[13]	=>  Location: PIN_136,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[13]	=>  Location: PIN_30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[12]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[12]	=>  Location: PIN_142,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[11]	=>  Location: PIN_42,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[11]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[10]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[10]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[9]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[9]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sad IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_iniciar : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pronto : std_logic;
SIGNAL ww_fim : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(13 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pronto~output_o\ : std_logic;
SIGNAL \fim[0]~output_o\ : std_logic;
SIGNAL \fim[1]~output_o\ : std_logic;
SIGNAL \fim[2]~output_o\ : std_logic;
SIGNAL \fim[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \result[8]~output_o\ : std_logic;
SIGNAL \result[9]~output_o\ : std_logic;
SIGNAL \result[10]~output_o\ : std_logic;
SIGNAL \result[11]~output_o\ : std_logic;
SIGNAL \result[12]~output_o\ : std_logic;
SIGNAL \result[13]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \iniciar~input_o\ : std_logic;
SIGNAL \sad_control|ci~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \sad_control|estadoatual.s2~q\ : std_logic;
SIGNAL \sad_control|estadoatual~12_combout\ : std_logic;
SIGNAL \sad_control|estadoatual.s3~q\ : std_logic;
SIGNAL \sad_control|estadoatual.s4~feeder_combout\ : std_logic;
SIGNAL \sad_control|estadoatual.s4~q\ : std_logic;
SIGNAL \sad_control|Selector4~0_combout\ : std_logic;
SIGNAL \sad_control|zi~q\ : std_logic;
SIGNAL \sad_operacional|mux5bits|y[0]~0_combout\ : std_logic;
SIGNAL \sad_operacional|soma5|Add0~0_combout\ : std_logic;
SIGNAL \sad_operacional|soma5|Add0~1_combout\ : std_logic;
SIGNAL \sad_operacional|mux5bits|y[4]~1_combout\ : std_logic;
SIGNAL \sad_operacional|soma5|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|mux5bits|y[4]~2_combout\ : std_logic;
SIGNAL \sad_control|estadoatual~11_combout\ : std_logic;
SIGNAL \sad_control|estadoatual.s5~q\ : std_logic;
SIGNAL \sad_control|Selector2~0_combout\ : std_logic;
SIGNAL \sad_control|estadoatual.s0~q\ : std_logic;
SIGNAL \sad_control|estadoatual~10_combout\ : std_logic;
SIGNAL \sad_control|estadoatual.s1~q\ : std_logic;
SIGNAL \sad_control|Selector0~0_combout\ : std_logic;
SIGNAL \sad_control|pronto~q\ : std_logic;
SIGNAL \b[31]~input_o\ : std_logic;
SIGNAL \a[31]~input_o\ : std_logic;
SIGNAL \b[30]~input_o\ : std_logic;
SIGNAL \a[30]~input_o\ : std_logic;
SIGNAL \b[29]~input_o\ : std_logic;
SIGNAL \a[29]~input_o\ : std_logic;
SIGNAL \b[28]~input_o\ : std_logic;
SIGNAL \a[28]~input_o\ : std_logic;
SIGNAL \a[27]~input_o\ : std_logic;
SIGNAL \b[27]~input_o\ : std_logic;
SIGNAL \a[26]~input_o\ : std_logic;
SIGNAL \b[26]~input_o\ : std_logic;
SIGNAL \a[25]~input_o\ : std_logic;
SIGNAL \b[25]~input_o\ : std_logic;
SIGNAL \b[24]~input_o\ : std_logic;
SIGNAL \a[24]~input_o\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~1_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~3_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~5_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~7_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~9_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~11_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~13_cout\ : std_logic;
SIGNAL \sad_operacional|sub3|LessThan0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~1\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~3\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~5\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~7\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~9\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~11\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~13\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|result~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~1\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~3\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~5\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~7\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~9\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~11\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~13\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|result~1_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~2_combout\ : std_logic;
SIGNAL \b[23]~input_o\ : std_logic;
SIGNAL \a[23]~input_o\ : std_logic;
SIGNAL \a[22]~input_o\ : std_logic;
SIGNAL \b[22]~input_o\ : std_logic;
SIGNAL \a[21]~input_o\ : std_logic;
SIGNAL \b[21]~input_o\ : std_logic;
SIGNAL \a[20]~input_o\ : std_logic;
SIGNAL \b[20]~input_o\ : std_logic;
SIGNAL \b[19]~input_o\ : std_logic;
SIGNAL \a[19]~input_o\ : std_logic;
SIGNAL \a[18]~input_o\ : std_logic;
SIGNAL \b[18]~input_o\ : std_logic;
SIGNAL \b[17]~input_o\ : std_logic;
SIGNAL \a[17]~input_o\ : std_logic;
SIGNAL \b[16]~input_o\ : std_logic;
SIGNAL \a[16]~input_o\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~1_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~3_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~5_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~7_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~9_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~11_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~13_cout\ : std_logic;
SIGNAL \sad_operacional|sub2|LessThan0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~1\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~3\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~5\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~7\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~9\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~11\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~13\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|result~1_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~1\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~3\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~5\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~7\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~9\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~11\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~13\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|result~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~2_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~0_combout\ : std_logic;
SIGNAL \b[15]~input_o\ : std_logic;
SIGNAL \a[15]~input_o\ : std_logic;
SIGNAL \b[14]~input_o\ : std_logic;
SIGNAL \a[14]~input_o\ : std_logic;
SIGNAL \a[13]~input_o\ : std_logic;
SIGNAL \b[13]~input_o\ : std_logic;
SIGNAL \b[12]~input_o\ : std_logic;
SIGNAL \a[12]~input_o\ : std_logic;
SIGNAL \b[11]~input_o\ : std_logic;
SIGNAL \a[11]~input_o\ : std_logic;
SIGNAL \b[10]~input_o\ : std_logic;
SIGNAL \a[10]~input_o\ : std_logic;
SIGNAL \b[9]~input_o\ : std_logic;
SIGNAL \a[9]~input_o\ : std_logic;
SIGNAL \a[8]~input_o\ : std_logic;
SIGNAL \b[8]~input_o\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~1_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~3_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~5_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~7_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~9_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~11_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~13_cout\ : std_logic;
SIGNAL \sad_operacional|sub1|LessThan0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~1\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~3\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~5\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~7\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~9\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~11\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~13\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|result~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~1\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~3\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~5\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~7\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~9\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~11\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~13\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|result~1_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~2_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~1_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~3_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~5_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~7_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~9_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~11_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~13_cout\ : std_logic;
SIGNAL \sad_operacional|sub0|LessThan0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~1\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~3\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~5\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~7\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~9\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~11\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~13\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|result~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~1\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~3\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~5\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~7\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~9\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~11\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~13\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|result~1_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~0_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~2_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[0]~0_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[0]~0_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[0]~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~1\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~3_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~1\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~5_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~1\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~1\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~3_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~5_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~1\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~1\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~1\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~3_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~5_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~1\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~2_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~1\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~3_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~5_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[0]~1\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[1]~2_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[0]~1\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[1]~2_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[0]~15\ : std_logic;
SIGNAL \sad_operacional|soma|Q[1]~16_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~4\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~3\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~4\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~3\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~8_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~3\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~3\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~4\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~4\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~3\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~4_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~8_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[1]~3\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[2]~4_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[1]~3\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[2]~4_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[1]~17\ : std_logic;
SIGNAL \sad_operacional|soma|Q[2]~18_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[2]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~7\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~9_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~5\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~11_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~5\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~7\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~9_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~11_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~5\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~5\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~7\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~9_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~11_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~7\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~9_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~5\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~6_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~11_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[2]~5\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[3]~6_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[2]~5\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[3]~6_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[2]~19\ : std_logic;
SIGNAL \sad_operacional|soma|Q[3]~20_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[3]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~10\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~7\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~7\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~10\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~14_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[3]~7\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[4]~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~7\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~10\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~10\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~7\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~8_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~14_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~7\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~8_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[3]~7\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[4]~8_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[3]~21\ : std_logic;
SIGNAL \sad_operacional|soma|Q[4]~22_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~9\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~13\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~15_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~17_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~9\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~13\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~15_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~17_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[4]~9\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[5]~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~9\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~13\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~15_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~17_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~9\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~10_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~13\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~15_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~17_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~9\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~10_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[4]~9\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[5]~10_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[4]~23\ : std_logic;
SIGNAL \sad_operacional|soma|Q[5]~24_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add0~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~11\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add2~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~16\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~18_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~20_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add2~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~16\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~18_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add0~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~11\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~20_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[5]~11\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[6]~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add0~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~11\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add2~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~16\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~18_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~20_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add0~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~11\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add2~12_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~16\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~18_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~20_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~11\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~12_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[5]~11\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[6]~12_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[5]~25\ : std_logic;
SIGNAL \sad_operacional|soma|Q[6]~26_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~19\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~21_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~13\ : std_logic;
SIGNAL \sad_operacional|sub1|Add1~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub1|Add3~23_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~13\ : std_logic;
SIGNAL \sad_operacional|sub0|Add1~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~19\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~21_combout\ : std_logic;
SIGNAL \sad_operacional|sub0|Add3~23_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[6]~13\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[7]~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~19\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~21_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~13\ : std_logic;
SIGNAL \sad_operacional|sub2|Add1~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub2|Add3~23_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~19\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~21_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~13\ : std_logic;
SIGNAL \sad_operacional|sub3|Add1~14_combout\ : std_logic;
SIGNAL \sad_operacional|sub3|Add3~23_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~13\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~14_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[6]~13\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[7]~14_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[6]~27\ : std_logic;
SIGNAL \sad_operacional|soma|Q[7]~28_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[7]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~15\ : std_logic;
SIGNAL \sad_operacional|soma8Bits2|Add0~16_combout\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[7]~15\ : std_logic;
SIGNAL \sad_operacional|soma8Bits1|result[8]~16_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[7]~15\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[8]~16_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[7]~29\ : std_logic;
SIGNAL \sad_operacional|soma|Q[8]~30_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[8]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[8]~17\ : std_logic;
SIGNAL \sad_operacional|soma9Bits|result[9]~18_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[8]~31\ : std_logic;
SIGNAL \sad_operacional|soma|Q[9]~32_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[9]~33\ : std_logic;
SIGNAL \sad_operacional|soma|Q[10]~34_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[10]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[10]~35\ : std_logic;
SIGNAL \sad_operacional|soma|Q[11]~36_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[11]~37\ : std_logic;
SIGNAL \sad_operacional|soma|Q[12]~38_combout\ : std_logic;
SIGNAL \sad_operacional|soma|Q[12]~39\ : std_logic;
SIGNAL \sad_operacional|soma|Q[13]~40_combout\ : std_logic;
SIGNAL \sad_operacional|SAD_reg|Q[13]~feeder_combout\ : std_logic;
SIGNAL \sad_operacional|pA0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|soma|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \sad_operacional|reg5|Q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \sad_operacional|pB2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|pB1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|pA2|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|pB0|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|SAD_reg|Q\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \sad_operacional|pA3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|pB3|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \sad_operacional|pA1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_rst~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_clk <= clk;
ww_iniciar <= iniciar;
ww_rst <= rst;
pronto <= ww_pronto;
fim <= ww_fim;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\rst~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \rst~input_o\);
\ALT_INV_rst~inputclkctrl_outclk\ <= NOT \rst~inputclkctrl_outclk\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;

-- Location: IOOBUF_X1_Y0_N23
\pronto~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_control|pronto~q\,
	devoe => ww_devoe,
	o => \pronto~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\fim[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|reg5|Q\(0),
	devoe => ww_devoe,
	o => \fim[0]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\fim[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|reg5|Q\(1),
	devoe => ww_devoe,
	o => \fim[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\fim[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|reg5|Q\(2),
	devoe => ww_devoe,
	o => \fim[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\fim[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|reg5|Q\(3),
	devoe => ww_devoe,
	o => \fim[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\result[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X30_Y24_N23
\result[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\result[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\result[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\result[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(4),
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X34_Y4_N23
\result[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(5),
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\result[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(6),
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X34_Y20_N9
\result[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(7),
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\result[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(8),
	devoe => ww_devoe,
	o => \result[8]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\result[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(9),
	devoe => ww_devoe,
	o => \result[9]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\result[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(10),
	devoe => ww_devoe,
	o => \result[10]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\result[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(11),
	devoe => ww_devoe,
	o => \result[11]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\result[12]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(12),
	devoe => ww_devoe,
	o => \result[12]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\result[13]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sad_operacional|SAD_reg|Q\(13),
	devoe => ww_devoe,
	o => \result[13]~output_o\);

-- Location: IOIBUF_X0_Y11_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
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

-- Location: IOIBUF_X0_Y7_N1
\iniciar~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iniciar,
	o => \iniciar~input_o\);

-- Location: LCCOMB_X1_Y18_N26
\sad_control|ci~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|ci~0_combout\ = (\sad_control|estadoatual.s4~q\) # (\sad_control|estadoatual.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_control|estadoatual.s4~q\,
	datad => \sad_control|estadoatual.s1~q\,
	combout => \sad_control|ci~0_combout\);

-- Location: IOIBUF_X0_Y11_N8
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: CLKCTRL_G2
\rst~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~inputclkctrl_outclk\);

-- Location: FF_X1_Y18_N27
\sad_control|estadoatual.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|ci~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s2~q\);

-- Location: LCCOMB_X1_Y18_N16
\sad_control|estadoatual~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|estadoatual~12_combout\ = (!\sad_operacional|reg5|Q\(4) & \sad_control|estadoatual.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|reg5|Q\(4),
	datac => \sad_control|estadoatual.s2~q\,
	combout => \sad_control|estadoatual~12_combout\);

-- Location: FF_X1_Y18_N17
\sad_control|estadoatual.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|estadoatual~12_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s3~q\);

-- Location: LCCOMB_X1_Y18_N10
\sad_control|estadoatual.s4~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|estadoatual.s4~feeder_combout\ = \sad_control|estadoatual.s3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_control|estadoatual.s3~q\,
	combout => \sad_control|estadoatual.s4~feeder_combout\);

-- Location: FF_X1_Y18_N11
\sad_control|estadoatual.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|estadoatual.s4~feeder_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s4~q\);

-- Location: LCCOMB_X1_Y18_N22
\sad_control|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|Selector4~0_combout\ = (\sad_control|estadoatual.s1~q\) # ((!\sad_control|estadoatual.s4~q\ & \sad_control|zi~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_control|estadoatual.s4~q\,
	datac => \sad_control|zi~q\,
	datad => \sad_control|estadoatual.s1~q\,
	combout => \sad_control|Selector4~0_combout\);

-- Location: FF_X1_Y18_N23
\sad_control|zi\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|Selector4~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|zi~q\);

-- Location: LCCOMB_X1_Y18_N12
\sad_operacional|mux5bits|y[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|mux5bits|y[0]~0_combout\ = (!\sad_control|zi~q\ & !\sad_operacional|reg5|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_control|zi~q\,
	datac => \sad_operacional|reg5|Q\(0),
	combout => \sad_operacional|mux5bits|y[0]~0_combout\);

-- Location: FF_X1_Y18_N13
\sad_operacional|reg5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|mux5bits|y[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|reg5|Q\(0));

-- Location: LCCOMB_X1_Y18_N0
\sad_operacional|soma5|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma5|Add0~0_combout\ = \sad_operacional|reg5|Q\(1) $ (\sad_operacional|reg5|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|reg5|Q\(1),
	datad => \sad_operacional|reg5|Q\(0),
	combout => \sad_operacional|soma5|Add0~0_combout\);

-- Location: FF_X1_Y18_N1
\sad_operacional|reg5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma5|Add0~0_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|reg5|Q\(1));

-- Location: LCCOMB_X1_Y18_N14
\sad_operacional|soma5|Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma5|Add0~1_combout\ = \sad_operacional|reg5|Q\(2) $ (((\sad_operacional|reg5|Q\(1) & \sad_operacional|reg5|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|reg5|Q\(1),
	datac => \sad_operacional|reg5|Q\(2),
	datad => \sad_operacional|reg5|Q\(0),
	combout => \sad_operacional|soma5|Add0~1_combout\);

-- Location: FF_X1_Y18_N15
\sad_operacional|reg5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma5|Add0~1_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|reg5|Q\(2));

-- Location: LCCOMB_X1_Y18_N30
\sad_operacional|mux5bits|y[4]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|mux5bits|y[4]~1_combout\ = (\sad_operacional|reg5|Q\(0) & (\sad_operacional|reg5|Q\(1) & (!\sad_control|zi~q\ & \sad_operacional|reg5|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|reg5|Q\(0),
	datab => \sad_operacional|reg5|Q\(1),
	datac => \sad_control|zi~q\,
	datad => \sad_operacional|reg5|Q\(2),
	combout => \sad_operacional|mux5bits|y[4]~1_combout\);

-- Location: LCCOMB_X1_Y18_N28
\sad_operacional|soma5|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma5|Add0~2_combout\ = \sad_operacional|reg5|Q\(3) $ (((\sad_operacional|reg5|Q\(0) & (\sad_operacional|reg5|Q\(1) & \sad_operacional|reg5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|reg5|Q\(0),
	datab => \sad_operacional|reg5|Q\(1),
	datac => \sad_operacional|reg5|Q\(3),
	datad => \sad_operacional|reg5|Q\(2),
	combout => \sad_operacional|soma5|Add0~2_combout\);

-- Location: FF_X1_Y18_N29
\sad_operacional|reg5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma5|Add0~2_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|reg5|Q\(3));

-- Location: LCCOMB_X1_Y18_N4
\sad_operacional|mux5bits|y[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|mux5bits|y[4]~2_combout\ = (\sad_operacional|mux5bits|y[4]~1_combout\ & \sad_operacional|reg5|Q\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|mux5bits|y[4]~1_combout\,
	datad => \sad_operacional|reg5|Q\(3),
	combout => \sad_operacional|mux5bits|y[4]~2_combout\);

-- Location: FF_X1_Y18_N5
\sad_operacional|reg5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|mux5bits|y[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|reg5|Q\(4));

-- Location: LCCOMB_X1_Y18_N20
\sad_control|estadoatual~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|estadoatual~11_combout\ = (\sad_operacional|reg5|Q\(4) & \sad_control|estadoatual.s2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|reg5|Q\(4),
	datac => \sad_control|estadoatual.s2~q\,
	combout => \sad_control|estadoatual~11_combout\);

-- Location: FF_X1_Y18_N21
\sad_control|estadoatual.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|estadoatual~11_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s5~q\);

-- Location: LCCOMB_X1_Y18_N24
\sad_control|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|Selector2~0_combout\ = (!\sad_control|estadoatual.s5~q\ & ((\iniciar~input_o\) # (\sad_control|estadoatual.s0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iniciar~input_o\,
	datac => \sad_control|estadoatual.s0~q\,
	datad => \sad_control|estadoatual.s5~q\,
	combout => \sad_control|Selector2~0_combout\);

-- Location: FF_X1_Y18_N25
\sad_control|estadoatual.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|Selector2~0_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s0~q\);

-- Location: LCCOMB_X1_Y18_N2
\sad_control|estadoatual~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|estadoatual~10_combout\ = (\iniciar~input_o\ & !\sad_control|estadoatual.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iniciar~input_o\,
	datad => \sad_control|estadoatual.s0~q\,
	combout => \sad_control|estadoatual~10_combout\);

-- Location: FF_X1_Y18_N3
\sad_control|estadoatual.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|estadoatual~10_combout\,
	clrn => \ALT_INV_rst~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|estadoatual.s1~q\);

-- Location: LCCOMB_X1_Y18_N6
\sad_control|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_control|Selector0~0_combout\ = ((!\sad_control|estadoatual.s1~q\ & \sad_control|pronto~q\)) # (!\sad_control|estadoatual.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_control|estadoatual.s1~q\,
	datac => \sad_control|pronto~q\,
	datad => \sad_control|estadoatual.s0~q\,
	combout => \sad_control|Selector0~0_combout\);

-- Location: FF_X1_Y18_N7
\sad_control|pronto\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_control|Selector0~0_combout\,
	ena => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_control|pronto~q\);

-- Location: IOIBUF_X30_Y24_N1
\b[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(31),
	o => \b[31]~input_o\);

-- Location: FF_X30_Y20_N15
\sad_operacional|pB3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(7));

-- Location: IOIBUF_X34_Y9_N22
\a[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(31),
	o => \a[31]~input_o\);

-- Location: FF_X30_Y20_N31
\sad_operacional|pA3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[31]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(7));

-- Location: IOIBUF_X34_Y2_N15
\b[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(30),
	o => \b[30]~input_o\);

-- Location: FF_X30_Y20_N13
\sad_operacional|pB3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(6));

-- Location: IOIBUF_X34_Y9_N1
\a[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(30),
	o => \a[30]~input_o\);

-- Location: FF_X30_Y20_N29
\sad_operacional|pA3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[30]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(6));

-- Location: IOIBUF_X34_Y17_N22
\b[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(29),
	o => \b[29]~input_o\);

-- Location: FF_X30_Y20_N27
\sad_operacional|pB3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(5));

-- Location: IOIBUF_X34_Y9_N8
\a[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(29),
	o => \a[29]~input_o\);

-- Location: FF_X30_Y20_N11
\sad_operacional|pA3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[29]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(5));

-- Location: IOIBUF_X34_Y12_N22
\b[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(28),
	o => \b[28]~input_o\);

-- Location: FF_X30_Y20_N9
\sad_operacional|pB3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(4));

-- Location: IOIBUF_X34_Y12_N15
\a[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(28),
	o => \a[28]~input_o\);

-- Location: FF_X30_Y20_N25
\sad_operacional|pA3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[28]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(4));

-- Location: IOIBUF_X30_Y0_N1
\a[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(27),
	o => \a[27]~input_o\);

-- Location: FF_X30_Y20_N7
\sad_operacional|pA3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(3));

-- Location: IOIBUF_X34_Y19_N15
\b[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(27),
	o => \b[27]~input_o\);

-- Location: FF_X30_Y20_N23
\sad_operacional|pB3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[27]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(3));

-- Location: IOIBUF_X30_Y0_N22
\a[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(26),
	o => \a[26]~input_o\);

-- Location: FF_X30_Y20_N21
\sad_operacional|pA3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(2));

-- Location: IOIBUF_X30_Y0_N8
\b[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(26),
	o => \b[26]~input_o\);

-- Location: FF_X30_Y20_N5
\sad_operacional|pB3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[26]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(2));

-- Location: IOIBUF_X34_Y18_N15
\a[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(25),
	o => \a[25]~input_o\);

-- Location: FF_X30_Y20_N3
\sad_operacional|pA3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(1));

-- Location: IOIBUF_X34_Y2_N22
\b[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(25),
	o => \b[25]~input_o\);

-- Location: FF_X30_Y20_N19
\sad_operacional|pB3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[25]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(1));

-- Location: IOIBUF_X34_Y4_N15
\b[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(24),
	o => \b[24]~input_o\);

-- Location: FF_X30_Y20_N1
\sad_operacional|pB3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB3|Q\(0));

-- Location: IOIBUF_X34_Y9_N15
\a[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(24),
	o => \a[24]~input_o\);

-- Location: FF_X30_Y20_N17
\sad_operacional|pA3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[24]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA3|Q\(0));

-- Location: LCCOMB_X31_Y20_N6
\sad_operacional|sub3|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~1_cout\ = CARRY((\sad_operacional|pB3|Q\(0) & !\sad_operacional|pA3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(0),
	datab => \sad_operacional|pA3|Q\(0),
	datad => VCC,
	cout => \sad_operacional|sub3|LessThan0~1_cout\);

-- Location: LCCOMB_X31_Y20_N8
\sad_operacional|sub3|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~3_cout\ = CARRY((\sad_operacional|pA3|Q\(1) & ((!\sad_operacional|sub3|LessThan0~1_cout\) # (!\sad_operacional|pB3|Q\(1)))) # (!\sad_operacional|pA3|Q\(1) & (!\sad_operacional|pB3|Q\(1) & 
-- !\sad_operacional|sub3|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(1),
	datab => \sad_operacional|pB3|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~1_cout\,
	cout => \sad_operacional|sub3|LessThan0~3_cout\);

-- Location: LCCOMB_X31_Y20_N10
\sad_operacional|sub3|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~5_cout\ = CARRY((\sad_operacional|pA3|Q\(2) & (\sad_operacional|pB3|Q\(2) & !\sad_operacional|sub3|LessThan0~3_cout\)) # (!\sad_operacional|pA3|Q\(2) & ((\sad_operacional|pB3|Q\(2)) # 
-- (!\sad_operacional|sub3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(2),
	datab => \sad_operacional|pB3|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~3_cout\,
	cout => \sad_operacional|sub3|LessThan0~5_cout\);

-- Location: LCCOMB_X31_Y20_N12
\sad_operacional|sub3|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~7_cout\ = CARRY((\sad_operacional|pA3|Q\(3) & ((!\sad_operacional|sub3|LessThan0~5_cout\) # (!\sad_operacional|pB3|Q\(3)))) # (!\sad_operacional|pA3|Q\(3) & (!\sad_operacional|pB3|Q\(3) & 
-- !\sad_operacional|sub3|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(3),
	datab => \sad_operacional|pB3|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~5_cout\,
	cout => \sad_operacional|sub3|LessThan0~7_cout\);

-- Location: LCCOMB_X31_Y20_N14
\sad_operacional|sub3|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~9_cout\ = CARRY((\sad_operacional|pB3|Q\(4) & ((!\sad_operacional|sub3|LessThan0~7_cout\) # (!\sad_operacional|pA3|Q\(4)))) # (!\sad_operacional|pB3|Q\(4) & (!\sad_operacional|pA3|Q\(4) & 
-- !\sad_operacional|sub3|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(4),
	datab => \sad_operacional|pA3|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~7_cout\,
	cout => \sad_operacional|sub3|LessThan0~9_cout\);

-- Location: LCCOMB_X31_Y20_N16
\sad_operacional|sub3|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~11_cout\ = CARRY((\sad_operacional|pB3|Q\(5) & (\sad_operacional|pA3|Q\(5) & !\sad_operacional|sub3|LessThan0~9_cout\)) # (!\sad_operacional|pB3|Q\(5) & ((\sad_operacional|pA3|Q\(5)) # 
-- (!\sad_operacional|sub3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(5),
	datab => \sad_operacional|pA3|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~9_cout\,
	cout => \sad_operacional|sub3|LessThan0~11_cout\);

-- Location: LCCOMB_X31_Y20_N18
\sad_operacional|sub3|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~13_cout\ = CARRY((\sad_operacional|pB3|Q\(6) & ((!\sad_operacional|sub3|LessThan0~11_cout\) # (!\sad_operacional|pA3|Q\(6)))) # (!\sad_operacional|pB3|Q\(6) & (!\sad_operacional|pA3|Q\(6) & 
-- !\sad_operacional|sub3|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(6),
	datab => \sad_operacional|pA3|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub3|LessThan0~11_cout\,
	cout => \sad_operacional|sub3|LessThan0~13_cout\);

-- Location: LCCOMB_X31_Y20_N20
\sad_operacional|sub3|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|LessThan0~14_combout\ = (\sad_operacional|pB3|Q\(7) & ((\sad_operacional|sub3|LessThan0~13_cout\) # (!\sad_operacional|pA3|Q\(7)))) # (!\sad_operacional|pB3|Q\(7) & (\sad_operacional|sub3|LessThan0~13_cout\ & 
-- !\sad_operacional|pA3|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(7),
	datad => \sad_operacional|pA3|Q\(7),
	cin => \sad_operacional|sub3|LessThan0~13_cout\,
	combout => \sad_operacional|sub3|LessThan0~14_combout\);

-- Location: LCCOMB_X30_Y20_N16
\sad_operacional|sub3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~0_combout\ = (\sad_operacional|pB3|Q\(0) & ((GND) # (!\sad_operacional|pA3|Q\(0)))) # (!\sad_operacional|pB3|Q\(0) & (\sad_operacional|pA3|Q\(0) $ (GND)))
-- \sad_operacional|sub3|Add0~1\ = CARRY((\sad_operacional|pB3|Q\(0)) # (!\sad_operacional|pA3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(0),
	datab => \sad_operacional|pA3|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub3|Add0~0_combout\,
	cout => \sad_operacional|sub3|Add0~1\);

-- Location: LCCOMB_X30_Y20_N18
\sad_operacional|sub3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~2_combout\ = (\sad_operacional|pB3|Q\(1) & ((\sad_operacional|pA3|Q\(1) & (!\sad_operacional|sub3|Add0~1\)) # (!\sad_operacional|pA3|Q\(1) & (\sad_operacional|sub3|Add0~1\ & VCC)))) # (!\sad_operacional|pB3|Q\(1) & 
-- ((\sad_operacional|pA3|Q\(1) & ((\sad_operacional|sub3|Add0~1\) # (GND))) # (!\sad_operacional|pA3|Q\(1) & (!\sad_operacional|sub3|Add0~1\))))
-- \sad_operacional|sub3|Add0~3\ = CARRY((\sad_operacional|pB3|Q\(1) & (\sad_operacional|pA3|Q\(1) & !\sad_operacional|sub3|Add0~1\)) # (!\sad_operacional|pB3|Q\(1) & ((\sad_operacional|pA3|Q\(1)) # (!\sad_operacional|sub3|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(1),
	datab => \sad_operacional|pA3|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~1\,
	combout => \sad_operacional|sub3|Add0~2_combout\,
	cout => \sad_operacional|sub3|Add0~3\);

-- Location: LCCOMB_X30_Y20_N20
\sad_operacional|sub3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~4_combout\ = ((\sad_operacional|pB3|Q\(2) $ (\sad_operacional|pA3|Q\(2) $ (\sad_operacional|sub3|Add0~3\)))) # (GND)
-- \sad_operacional|sub3|Add0~5\ = CARRY((\sad_operacional|pB3|Q\(2) & ((!\sad_operacional|sub3|Add0~3\) # (!\sad_operacional|pA3|Q\(2)))) # (!\sad_operacional|pB3|Q\(2) & (!\sad_operacional|pA3|Q\(2) & !\sad_operacional|sub3|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(2),
	datab => \sad_operacional|pA3|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~3\,
	combout => \sad_operacional|sub3|Add0~4_combout\,
	cout => \sad_operacional|sub3|Add0~5\);

-- Location: LCCOMB_X30_Y20_N22
\sad_operacional|sub3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~6_combout\ = (\sad_operacional|pA3|Q\(3) & ((\sad_operacional|pB3|Q\(3) & (!\sad_operacional|sub3|Add0~5\)) # (!\sad_operacional|pB3|Q\(3) & ((\sad_operacional|sub3|Add0~5\) # (GND))))) # (!\sad_operacional|pA3|Q\(3) & 
-- ((\sad_operacional|pB3|Q\(3) & (\sad_operacional|sub3|Add0~5\ & VCC)) # (!\sad_operacional|pB3|Q\(3) & (!\sad_operacional|sub3|Add0~5\))))
-- \sad_operacional|sub3|Add0~7\ = CARRY((\sad_operacional|pA3|Q\(3) & ((!\sad_operacional|sub3|Add0~5\) # (!\sad_operacional|pB3|Q\(3)))) # (!\sad_operacional|pA3|Q\(3) & (!\sad_operacional|pB3|Q\(3) & !\sad_operacional|sub3|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(3),
	datab => \sad_operacional|pB3|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~5\,
	combout => \sad_operacional|sub3|Add0~6_combout\,
	cout => \sad_operacional|sub3|Add0~7\);

-- Location: LCCOMB_X30_Y20_N24
\sad_operacional|sub3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~8_combout\ = ((\sad_operacional|pB3|Q\(4) $ (\sad_operacional|pA3|Q\(4) $ (\sad_operacional|sub3|Add0~7\)))) # (GND)
-- \sad_operacional|sub3|Add0~9\ = CARRY((\sad_operacional|pB3|Q\(4) & ((!\sad_operacional|sub3|Add0~7\) # (!\sad_operacional|pA3|Q\(4)))) # (!\sad_operacional|pB3|Q\(4) & (!\sad_operacional|pA3|Q\(4) & !\sad_operacional|sub3|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(4),
	datab => \sad_operacional|pA3|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~7\,
	combout => \sad_operacional|sub3|Add0~8_combout\,
	cout => \sad_operacional|sub3|Add0~9\);

-- Location: LCCOMB_X30_Y20_N26
\sad_operacional|sub3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~10_combout\ = (\sad_operacional|pA3|Q\(5) & ((\sad_operacional|pB3|Q\(5) & (!\sad_operacional|sub3|Add0~9\)) # (!\sad_operacional|pB3|Q\(5) & ((\sad_operacional|sub3|Add0~9\) # (GND))))) # (!\sad_operacional|pA3|Q\(5) & 
-- ((\sad_operacional|pB3|Q\(5) & (\sad_operacional|sub3|Add0~9\ & VCC)) # (!\sad_operacional|pB3|Q\(5) & (!\sad_operacional|sub3|Add0~9\))))
-- \sad_operacional|sub3|Add0~11\ = CARRY((\sad_operacional|pA3|Q\(5) & ((!\sad_operacional|sub3|Add0~9\) # (!\sad_operacional|pB3|Q\(5)))) # (!\sad_operacional|pA3|Q\(5) & (!\sad_operacional|pB3|Q\(5) & !\sad_operacional|sub3|Add0~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(5),
	datab => \sad_operacional|pB3|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~9\,
	combout => \sad_operacional|sub3|Add0~10_combout\,
	cout => \sad_operacional|sub3|Add0~11\);

-- Location: LCCOMB_X30_Y20_N28
\sad_operacional|sub3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~12_combout\ = ((\sad_operacional|pB3|Q\(6) $ (\sad_operacional|pA3|Q\(6) $ (\sad_operacional|sub3|Add0~11\)))) # (GND)
-- \sad_operacional|sub3|Add0~13\ = CARRY((\sad_operacional|pB3|Q\(6) & ((!\sad_operacional|sub3|Add0~11\) # (!\sad_operacional|pA3|Q\(6)))) # (!\sad_operacional|pB3|Q\(6) & (!\sad_operacional|pA3|Q\(6) & !\sad_operacional|sub3|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(6),
	datab => \sad_operacional|pA3|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub3|Add0~11\,
	combout => \sad_operacional|sub3|Add0~12_combout\,
	cout => \sad_operacional|sub3|Add0~13\);

-- Location: LCCOMB_X30_Y20_N30
\sad_operacional|sub3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add0~14_combout\ = \sad_operacional|pA3|Q\(7) $ (\sad_operacional|pB3|Q\(7) $ (!\sad_operacional|sub3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(7),
	datab => \sad_operacional|pB3|Q\(7),
	cin => \sad_operacional|sub3|Add0~13\,
	combout => \sad_operacional|sub3|Add0~14_combout\);

-- Location: LCCOMB_X29_Y20_N18
\sad_operacional|sub3|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|result~0_combout\ = \sad_operacional|sub3|Add0~0_combout\ $ (\sad_operacional|sub3|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~0_combout\,
	datac => \sad_operacional|sub3|Add0~14_combout\,
	combout => \sad_operacional|sub3|result~0_combout\);

-- Location: LCCOMB_X29_Y20_N0
\sad_operacional|sub3|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~0_combout\ = (\sad_operacional|sub3|Add0~14_combout\ & (\sad_operacional|sub3|result~0_combout\ $ (VCC))) # (!\sad_operacional|sub3|Add0~14_combout\ & (\sad_operacional|sub3|result~0_combout\ & VCC))
-- \sad_operacional|sub3|Add1~1\ = CARRY((\sad_operacional|sub3|Add0~14_combout\ & \sad_operacional|sub3|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|result~0_combout\,
	datad => VCC,
	combout => \sad_operacional|sub3|Add1~0_combout\,
	cout => \sad_operacional|sub3|Add1~1\);

-- Location: LCCOMB_X30_Y20_N0
\sad_operacional|sub3|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~0_combout\ = (\sad_operacional|pA3|Q\(0) & ((GND) # (!\sad_operacional|pB3|Q\(0)))) # (!\sad_operacional|pA3|Q\(0) & (\sad_operacional|pB3|Q\(0) $ (GND)))
-- \sad_operacional|sub3|Add2~1\ = CARRY((\sad_operacional|pA3|Q\(0)) # (!\sad_operacional|pB3|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(0),
	datab => \sad_operacional|pB3|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub3|Add2~0_combout\,
	cout => \sad_operacional|sub3|Add2~1\);

-- Location: LCCOMB_X30_Y20_N2
\sad_operacional|sub3|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~2_combout\ = (\sad_operacional|pB3|Q\(1) & ((\sad_operacional|pA3|Q\(1) & (!\sad_operacional|sub3|Add2~1\)) # (!\sad_operacional|pA3|Q\(1) & ((\sad_operacional|sub3|Add2~1\) # (GND))))) # (!\sad_operacional|pB3|Q\(1) & 
-- ((\sad_operacional|pA3|Q\(1) & (\sad_operacional|sub3|Add2~1\ & VCC)) # (!\sad_operacional|pA3|Q\(1) & (!\sad_operacional|sub3|Add2~1\))))
-- \sad_operacional|sub3|Add2~3\ = CARRY((\sad_operacional|pB3|Q\(1) & ((!\sad_operacional|sub3|Add2~1\) # (!\sad_operacional|pA3|Q\(1)))) # (!\sad_operacional|pB3|Q\(1) & (!\sad_operacional|pA3|Q\(1) & !\sad_operacional|sub3|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(1),
	datab => \sad_operacional|pA3|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~1\,
	combout => \sad_operacional|sub3|Add2~2_combout\,
	cout => \sad_operacional|sub3|Add2~3\);

-- Location: LCCOMB_X30_Y20_N4
\sad_operacional|sub3|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~4_combout\ = ((\sad_operacional|pB3|Q\(2) $ (\sad_operacional|pA3|Q\(2) $ (\sad_operacional|sub3|Add2~3\)))) # (GND)
-- \sad_operacional|sub3|Add2~5\ = CARRY((\sad_operacional|pB3|Q\(2) & (\sad_operacional|pA3|Q\(2) & !\sad_operacional|sub3|Add2~3\)) # (!\sad_operacional|pB3|Q\(2) & ((\sad_operacional|pA3|Q\(2)) # (!\sad_operacional|sub3|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(2),
	datab => \sad_operacional|pA3|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~3\,
	combout => \sad_operacional|sub3|Add2~4_combout\,
	cout => \sad_operacional|sub3|Add2~5\);

-- Location: LCCOMB_X30_Y20_N6
\sad_operacional|sub3|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~6_combout\ = (\sad_operacional|pA3|Q\(3) & ((\sad_operacional|pB3|Q\(3) & (!\sad_operacional|sub3|Add2~5\)) # (!\sad_operacional|pB3|Q\(3) & (\sad_operacional|sub3|Add2~5\ & VCC)))) # (!\sad_operacional|pA3|Q\(3) & 
-- ((\sad_operacional|pB3|Q\(3) & ((\sad_operacional|sub3|Add2~5\) # (GND))) # (!\sad_operacional|pB3|Q\(3) & (!\sad_operacional|sub3|Add2~5\))))
-- \sad_operacional|sub3|Add2~7\ = CARRY((\sad_operacional|pA3|Q\(3) & (\sad_operacional|pB3|Q\(3) & !\sad_operacional|sub3|Add2~5\)) # (!\sad_operacional|pA3|Q\(3) & ((\sad_operacional|pB3|Q\(3)) # (!\sad_operacional|sub3|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(3),
	datab => \sad_operacional|pB3|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~5\,
	combout => \sad_operacional|sub3|Add2~6_combout\,
	cout => \sad_operacional|sub3|Add2~7\);

-- Location: LCCOMB_X30_Y20_N8
\sad_operacional|sub3|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~8_combout\ = ((\sad_operacional|pB3|Q\(4) $ (\sad_operacional|pA3|Q\(4) $ (\sad_operacional|sub3|Add2~7\)))) # (GND)
-- \sad_operacional|sub3|Add2~9\ = CARRY((\sad_operacional|pB3|Q\(4) & (\sad_operacional|pA3|Q\(4) & !\sad_operacional|sub3|Add2~7\)) # (!\sad_operacional|pB3|Q\(4) & ((\sad_operacional|pA3|Q\(4)) # (!\sad_operacional|sub3|Add2~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(4),
	datab => \sad_operacional|pA3|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~7\,
	combout => \sad_operacional|sub3|Add2~8_combout\,
	cout => \sad_operacional|sub3|Add2~9\);

-- Location: LCCOMB_X30_Y20_N10
\sad_operacional|sub3|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~10_combout\ = (\sad_operacional|pA3|Q\(5) & ((\sad_operacional|pB3|Q\(5) & (!\sad_operacional|sub3|Add2~9\)) # (!\sad_operacional|pB3|Q\(5) & (\sad_operacional|sub3|Add2~9\ & VCC)))) # (!\sad_operacional|pA3|Q\(5) & 
-- ((\sad_operacional|pB3|Q\(5) & ((\sad_operacional|sub3|Add2~9\) # (GND))) # (!\sad_operacional|pB3|Q\(5) & (!\sad_operacional|sub3|Add2~9\))))
-- \sad_operacional|sub3|Add2~11\ = CARRY((\sad_operacional|pA3|Q\(5) & (\sad_operacional|pB3|Q\(5) & !\sad_operacional|sub3|Add2~9\)) # (!\sad_operacional|pA3|Q\(5) & ((\sad_operacional|pB3|Q\(5)) # (!\sad_operacional|sub3|Add2~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(5),
	datab => \sad_operacional|pB3|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~9\,
	combout => \sad_operacional|sub3|Add2~10_combout\,
	cout => \sad_operacional|sub3|Add2~11\);

-- Location: LCCOMB_X30_Y20_N12
\sad_operacional|sub3|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~12_combout\ = ((\sad_operacional|pB3|Q\(6) $ (\sad_operacional|pA3|Q\(6) $ (\sad_operacional|sub3|Add2~11\)))) # (GND)
-- \sad_operacional|sub3|Add2~13\ = CARRY((\sad_operacional|pB3|Q\(6) & (\sad_operacional|pA3|Q\(6) & !\sad_operacional|sub3|Add2~11\)) # (!\sad_operacional|pB3|Q\(6) & ((\sad_operacional|pA3|Q\(6)) # (!\sad_operacional|sub3|Add2~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB3|Q\(6),
	datab => \sad_operacional|pA3|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub3|Add2~11\,
	combout => \sad_operacional|sub3|Add2~12_combout\,
	cout => \sad_operacional|sub3|Add2~13\);

-- Location: LCCOMB_X30_Y20_N14
\sad_operacional|sub3|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add2~14_combout\ = \sad_operacional|pA3|Q\(7) $ (\sad_operacional|pB3|Q\(7) $ (!\sad_operacional|sub3|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA3|Q\(7),
	datab => \sad_operacional|pB3|Q\(7),
	cin => \sad_operacional|sub3|Add2~13\,
	combout => \sad_operacional|sub3|Add2~14_combout\);

-- Location: LCCOMB_X28_Y20_N28
\sad_operacional|sub3|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|result~1_combout\ = \sad_operacional|sub3|Add2~0_combout\ $ (\sad_operacional|sub3|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub3|Add2~0_combout\,
	datad => \sad_operacional|sub3|Add2~14_combout\,
	combout => \sad_operacional|sub3|result~1_combout\);

-- Location: LCCOMB_X28_Y20_N12
\sad_operacional|sub3|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~0_combout\ = (\sad_operacional|sub3|Add2~14_combout\ & (\sad_operacional|sub3|result~1_combout\ $ (VCC))) # (!\sad_operacional|sub3|Add2~14_combout\ & (\sad_operacional|sub3|result~1_combout\ & VCC))
-- \sad_operacional|sub3|Add3~1\ = CARRY((\sad_operacional|sub3|Add2~14_combout\ & \sad_operacional|sub3|result~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~14_combout\,
	datab => \sad_operacional|sub3|result~1_combout\,
	datad => VCC,
	combout => \sad_operacional|sub3|Add3~0_combout\,
	cout => \sad_operacional|sub3|Add3~1\);

-- Location: LCCOMB_X28_Y20_N10
\sad_operacional|sub3|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~2_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add1~0_combout\)) # (!\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|LessThan0~14_combout\,
	datab => \sad_operacional|sub3|Add1~0_combout\,
	datad => \sad_operacional|sub3|Add3~0_combout\,
	combout => \sad_operacional|sub3|Add3~2_combout\);

-- Location: IOIBUF_X1_Y24_N1
\b[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(23),
	o => \b[23]~input_o\);

-- Location: FF_X25_Y22_N15
\sad_operacional|pB2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(7));

-- Location: IOIBUF_X16_Y24_N22
\a[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(23),
	o => \a[23]~input_o\);

-- Location: FF_X24_Y22_N15
\sad_operacional|pA2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[23]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(7));

-- Location: IOIBUF_X5_Y0_N22
\a[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(22),
	o => \a[22]~input_o\);

-- Location: FF_X24_Y22_N13
\sad_operacional|pA2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(6));

-- Location: IOIBUF_X34_Y7_N22
\b[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(22),
	o => \b[22]~input_o\);

-- Location: FF_X25_Y22_N13
\sad_operacional|pB2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[22]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(6));

-- Location: IOIBUF_X34_Y18_N1
\a[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(21),
	o => \a[21]~input_o\);

-- Location: FF_X25_Y22_N11
\sad_operacional|pA2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(5));

-- Location: IOIBUF_X23_Y24_N1
\b[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(21),
	o => \b[21]~input_o\);

-- Location: FF_X24_Y22_N11
\sad_operacional|pB2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[21]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(5));

-- Location: IOIBUF_X23_Y24_N8
\a[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(20),
	o => \a[20]~input_o\);

-- Location: FF_X24_Y22_N9
\sad_operacional|pA2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(4));

-- Location: IOIBUF_X1_Y24_N8
\b[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(20),
	o => \b[20]~input_o\);

-- Location: FF_X25_Y22_N9
\sad_operacional|pB2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[20]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(4));

-- Location: IOIBUF_X0_Y22_N1
\b[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(19),
	o => \b[19]~input_o\);

-- Location: FF_X24_Y22_N7
\sad_operacional|pB2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(3));

-- Location: IOIBUF_X32_Y0_N8
\a[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(19),
	o => \a[19]~input_o\);

-- Location: FF_X25_Y22_N7
\sad_operacional|pA2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[19]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(3));

-- Location: IOIBUF_X16_Y24_N8
\a[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(18),
	o => \a[18]~input_o\);

-- Location: FF_X24_Y22_N5
\sad_operacional|pA2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(2));

-- Location: IOIBUF_X28_Y24_N8
\b[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(18),
	o => \b[18]~input_o\);

-- Location: FF_X25_Y22_N5
\sad_operacional|pB2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[18]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(2));

-- Location: IOIBUF_X0_Y23_N1
\b[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(17),
	o => \b[17]~input_o\);

-- Location: FF_X24_Y22_N3
\sad_operacional|pB2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(1));

-- Location: IOIBUF_X28_Y24_N22
\a[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(17),
	o => \a[17]~input_o\);

-- Location: FF_X25_Y22_N3
\sad_operacional|pA2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[17]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(1));

-- Location: IOIBUF_X25_Y0_N1
\b[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(16),
	o => \b[16]~input_o\);

-- Location: FF_X25_Y22_N1
\sad_operacional|pB2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB2|Q\(0));

-- Location: IOIBUF_X21_Y0_N8
\a[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(16),
	o => \a[16]~input_o\);

-- Location: FF_X24_Y22_N1
\sad_operacional|pA2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[16]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA2|Q\(0));

-- Location: LCCOMB_X23_Y22_N0
\sad_operacional|sub2|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~1_cout\ = CARRY((\sad_operacional|pB2|Q\(0) & !\sad_operacional|pA2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(0),
	datab => \sad_operacional|pA2|Q\(0),
	datad => VCC,
	cout => \sad_operacional|sub2|LessThan0~1_cout\);

-- Location: LCCOMB_X23_Y22_N2
\sad_operacional|sub2|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~3_cout\ = CARRY((\sad_operacional|pB2|Q\(1) & (\sad_operacional|pA2|Q\(1) & !\sad_operacional|sub2|LessThan0~1_cout\)) # (!\sad_operacional|pB2|Q\(1) & ((\sad_operacional|pA2|Q\(1)) # 
-- (!\sad_operacional|sub2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(1),
	datab => \sad_operacional|pA2|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~1_cout\,
	cout => \sad_operacional|sub2|LessThan0~3_cout\);

-- Location: LCCOMB_X23_Y22_N4
\sad_operacional|sub2|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~5_cout\ = CARRY((\sad_operacional|pA2|Q\(2) & (\sad_operacional|pB2|Q\(2) & !\sad_operacional|sub2|LessThan0~3_cout\)) # (!\sad_operacional|pA2|Q\(2) & ((\sad_operacional|pB2|Q\(2)) # 
-- (!\sad_operacional|sub2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(2),
	datab => \sad_operacional|pB2|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~3_cout\,
	cout => \sad_operacional|sub2|LessThan0~5_cout\);

-- Location: LCCOMB_X23_Y22_N6
\sad_operacional|sub2|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~7_cout\ = CARRY((\sad_operacional|pB2|Q\(3) & (\sad_operacional|pA2|Q\(3) & !\sad_operacional|sub2|LessThan0~5_cout\)) # (!\sad_operacional|pB2|Q\(3) & ((\sad_operacional|pA2|Q\(3)) # 
-- (!\sad_operacional|sub2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(3),
	datab => \sad_operacional|pA2|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~5_cout\,
	cout => \sad_operacional|sub2|LessThan0~7_cout\);

-- Location: LCCOMB_X23_Y22_N8
\sad_operacional|sub2|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~9_cout\ = CARRY((\sad_operacional|pA2|Q\(4) & (\sad_operacional|pB2|Q\(4) & !\sad_operacional|sub2|LessThan0~7_cout\)) # (!\sad_operacional|pA2|Q\(4) & ((\sad_operacional|pB2|Q\(4)) # 
-- (!\sad_operacional|sub2|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(4),
	datab => \sad_operacional|pB2|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~7_cout\,
	cout => \sad_operacional|sub2|LessThan0~9_cout\);

-- Location: LCCOMB_X23_Y22_N10
\sad_operacional|sub2|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~11_cout\ = CARRY((\sad_operacional|pA2|Q\(5) & ((!\sad_operacional|sub2|LessThan0~9_cout\) # (!\sad_operacional|pB2|Q\(5)))) # (!\sad_operacional|pA2|Q\(5) & (!\sad_operacional|pB2|Q\(5) & 
-- !\sad_operacional|sub2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(5),
	datab => \sad_operacional|pB2|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~9_cout\,
	cout => \sad_operacional|sub2|LessThan0~11_cout\);

-- Location: LCCOMB_X23_Y22_N12
\sad_operacional|sub2|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~13_cout\ = CARRY((\sad_operacional|pA2|Q\(6) & (\sad_operacional|pB2|Q\(6) & !\sad_operacional|sub2|LessThan0~11_cout\)) # (!\sad_operacional|pA2|Q\(6) & ((\sad_operacional|pB2|Q\(6)) # 
-- (!\sad_operacional|sub2|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(6),
	datab => \sad_operacional|pB2|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub2|LessThan0~11_cout\,
	cout => \sad_operacional|sub2|LessThan0~13_cout\);

-- Location: LCCOMB_X23_Y22_N14
\sad_operacional|sub2|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|LessThan0~14_combout\ = (\sad_operacional|pB2|Q\(7) & ((\sad_operacional|sub2|LessThan0~13_cout\) # (!\sad_operacional|pA2|Q\(7)))) # (!\sad_operacional|pB2|Q\(7) & (\sad_operacional|sub2|LessThan0~13_cout\ & 
-- !\sad_operacional|pA2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|pB2|Q\(7),
	datad => \sad_operacional|pA2|Q\(7),
	cin => \sad_operacional|sub2|LessThan0~13_cout\,
	combout => \sad_operacional|sub2|LessThan0~14_combout\);

-- Location: LCCOMB_X25_Y22_N0
\sad_operacional|sub2|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~0_combout\ = (\sad_operacional|pA2|Q\(0) & ((GND) # (!\sad_operacional|pB2|Q\(0)))) # (!\sad_operacional|pA2|Q\(0) & (\sad_operacional|pB2|Q\(0) $ (GND)))
-- \sad_operacional|sub2|Add2~1\ = CARRY((\sad_operacional|pA2|Q\(0)) # (!\sad_operacional|pB2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(0),
	datab => \sad_operacional|pB2|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub2|Add2~0_combout\,
	cout => \sad_operacional|sub2|Add2~1\);

-- Location: LCCOMB_X25_Y22_N2
\sad_operacional|sub2|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~2_combout\ = (\sad_operacional|pB2|Q\(1) & ((\sad_operacional|pA2|Q\(1) & (!\sad_operacional|sub2|Add2~1\)) # (!\sad_operacional|pA2|Q\(1) & ((\sad_operacional|sub2|Add2~1\) # (GND))))) # (!\sad_operacional|pB2|Q\(1) & 
-- ((\sad_operacional|pA2|Q\(1) & (\sad_operacional|sub2|Add2~1\ & VCC)) # (!\sad_operacional|pA2|Q\(1) & (!\sad_operacional|sub2|Add2~1\))))
-- \sad_operacional|sub2|Add2~3\ = CARRY((\sad_operacional|pB2|Q\(1) & ((!\sad_operacional|sub2|Add2~1\) # (!\sad_operacional|pA2|Q\(1)))) # (!\sad_operacional|pB2|Q\(1) & (!\sad_operacional|pA2|Q\(1) & !\sad_operacional|sub2|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(1),
	datab => \sad_operacional|pA2|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~1\,
	combout => \sad_operacional|sub2|Add2~2_combout\,
	cout => \sad_operacional|sub2|Add2~3\);

-- Location: LCCOMB_X25_Y22_N4
\sad_operacional|sub2|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~4_combout\ = ((\sad_operacional|pB2|Q\(2) $ (\sad_operacional|pA2|Q\(2) $ (\sad_operacional|sub2|Add2~3\)))) # (GND)
-- \sad_operacional|sub2|Add2~5\ = CARRY((\sad_operacional|pB2|Q\(2) & (\sad_operacional|pA2|Q\(2) & !\sad_operacional|sub2|Add2~3\)) # (!\sad_operacional|pB2|Q\(2) & ((\sad_operacional|pA2|Q\(2)) # (!\sad_operacional|sub2|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(2),
	datab => \sad_operacional|pA2|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~3\,
	combout => \sad_operacional|sub2|Add2~4_combout\,
	cout => \sad_operacional|sub2|Add2~5\);

-- Location: LCCOMB_X25_Y22_N6
\sad_operacional|sub2|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~6_combout\ = (\sad_operacional|pA2|Q\(3) & ((\sad_operacional|pB2|Q\(3) & (!\sad_operacional|sub2|Add2~5\)) # (!\sad_operacional|pB2|Q\(3) & (\sad_operacional|sub2|Add2~5\ & VCC)))) # (!\sad_operacional|pA2|Q\(3) & 
-- ((\sad_operacional|pB2|Q\(3) & ((\sad_operacional|sub2|Add2~5\) # (GND))) # (!\sad_operacional|pB2|Q\(3) & (!\sad_operacional|sub2|Add2~5\))))
-- \sad_operacional|sub2|Add2~7\ = CARRY((\sad_operacional|pA2|Q\(3) & (\sad_operacional|pB2|Q\(3) & !\sad_operacional|sub2|Add2~5\)) # (!\sad_operacional|pA2|Q\(3) & ((\sad_operacional|pB2|Q\(3)) # (!\sad_operacional|sub2|Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(3),
	datab => \sad_operacional|pB2|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~5\,
	combout => \sad_operacional|sub2|Add2~6_combout\,
	cout => \sad_operacional|sub2|Add2~7\);

-- Location: LCCOMB_X25_Y22_N8
\sad_operacional|sub2|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~8_combout\ = ((\sad_operacional|pA2|Q\(4) $ (\sad_operacional|pB2|Q\(4) $ (\sad_operacional|sub2|Add2~7\)))) # (GND)
-- \sad_operacional|sub2|Add2~9\ = CARRY((\sad_operacional|pA2|Q\(4) & ((!\sad_operacional|sub2|Add2~7\) # (!\sad_operacional|pB2|Q\(4)))) # (!\sad_operacional|pA2|Q\(4) & (!\sad_operacional|pB2|Q\(4) & !\sad_operacional|sub2|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(4),
	datab => \sad_operacional|pB2|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~7\,
	combout => \sad_operacional|sub2|Add2~8_combout\,
	cout => \sad_operacional|sub2|Add2~9\);

-- Location: LCCOMB_X25_Y22_N10
\sad_operacional|sub2|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~10_combout\ = (\sad_operacional|pB2|Q\(5) & ((\sad_operacional|pA2|Q\(5) & (!\sad_operacional|sub2|Add2~9\)) # (!\sad_operacional|pA2|Q\(5) & ((\sad_operacional|sub2|Add2~9\) # (GND))))) # (!\sad_operacional|pB2|Q\(5) & 
-- ((\sad_operacional|pA2|Q\(5) & (\sad_operacional|sub2|Add2~9\ & VCC)) # (!\sad_operacional|pA2|Q\(5) & (!\sad_operacional|sub2|Add2~9\))))
-- \sad_operacional|sub2|Add2~11\ = CARRY((\sad_operacional|pB2|Q\(5) & ((!\sad_operacional|sub2|Add2~9\) # (!\sad_operacional|pA2|Q\(5)))) # (!\sad_operacional|pB2|Q\(5) & (!\sad_operacional|pA2|Q\(5) & !\sad_operacional|sub2|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(5),
	datab => \sad_operacional|pA2|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~9\,
	combout => \sad_operacional|sub2|Add2~10_combout\,
	cout => \sad_operacional|sub2|Add2~11\);

-- Location: LCCOMB_X25_Y22_N12
\sad_operacional|sub2|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~12_combout\ = ((\sad_operacional|pA2|Q\(6) $ (\sad_operacional|pB2|Q\(6) $ (\sad_operacional|sub2|Add2~11\)))) # (GND)
-- \sad_operacional|sub2|Add2~13\ = CARRY((\sad_operacional|pA2|Q\(6) & ((!\sad_operacional|sub2|Add2~11\) # (!\sad_operacional|pB2|Q\(6)))) # (!\sad_operacional|pA2|Q\(6) & (!\sad_operacional|pB2|Q\(6) & !\sad_operacional|sub2|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(6),
	datab => \sad_operacional|pB2|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub2|Add2~11\,
	combout => \sad_operacional|sub2|Add2~12_combout\,
	cout => \sad_operacional|sub2|Add2~13\);

-- Location: LCCOMB_X25_Y22_N14
\sad_operacional|sub2|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add2~14_combout\ = \sad_operacional|pB2|Q\(7) $ (\sad_operacional|sub2|Add2~13\ $ (!\sad_operacional|pA2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|pB2|Q\(7),
	datad => \sad_operacional|pA2|Q\(7),
	cin => \sad_operacional|sub2|Add2~13\,
	combout => \sad_operacional|sub2|Add2~14_combout\);

-- Location: LCCOMB_X26_Y22_N4
\sad_operacional|sub2|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|result~1_combout\ = \sad_operacional|sub2|Add2~0_combout\ $ (\sad_operacional|sub2|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub2|Add2~0_combout\,
	datad => \sad_operacional|sub2|Add2~14_combout\,
	combout => \sad_operacional|sub2|result~1_combout\);

-- Location: LCCOMB_X25_Y22_N16
\sad_operacional|sub2|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~0_combout\ = (\sad_operacional|sub2|result~1_combout\ & (\sad_operacional|sub2|Add2~14_combout\ $ (VCC))) # (!\sad_operacional|sub2|result~1_combout\ & (\sad_operacional|sub2|Add2~14_combout\ & VCC))
-- \sad_operacional|sub2|Add3~1\ = CARRY((\sad_operacional|sub2|result~1_combout\ & \sad_operacional|sub2|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|result~1_combout\,
	datab => \sad_operacional|sub2|Add2~14_combout\,
	datad => VCC,
	combout => \sad_operacional|sub2|Add3~0_combout\,
	cout => \sad_operacional|sub2|Add3~1\);

-- Location: LCCOMB_X24_Y22_N0
\sad_operacional|sub2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~0_combout\ = (\sad_operacional|pA2|Q\(0) & (\sad_operacional|pB2|Q\(0) $ (VCC))) # (!\sad_operacional|pA2|Q\(0) & ((\sad_operacional|pB2|Q\(0)) # (GND)))
-- \sad_operacional|sub2|Add0~1\ = CARRY((\sad_operacional|pB2|Q\(0)) # (!\sad_operacional|pA2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(0),
	datab => \sad_operacional|pB2|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub2|Add0~0_combout\,
	cout => \sad_operacional|sub2|Add0~1\);

-- Location: LCCOMB_X24_Y22_N2
\sad_operacional|sub2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~2_combout\ = (\sad_operacional|pA2|Q\(1) & ((\sad_operacional|pB2|Q\(1) & (!\sad_operacional|sub2|Add0~1\)) # (!\sad_operacional|pB2|Q\(1) & ((\sad_operacional|sub2|Add0~1\) # (GND))))) # (!\sad_operacional|pA2|Q\(1) & 
-- ((\sad_operacional|pB2|Q\(1) & (\sad_operacional|sub2|Add0~1\ & VCC)) # (!\sad_operacional|pB2|Q\(1) & (!\sad_operacional|sub2|Add0~1\))))
-- \sad_operacional|sub2|Add0~3\ = CARRY((\sad_operacional|pA2|Q\(1) & ((!\sad_operacional|sub2|Add0~1\) # (!\sad_operacional|pB2|Q\(1)))) # (!\sad_operacional|pA2|Q\(1) & (!\sad_operacional|pB2|Q\(1) & !\sad_operacional|sub2|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(1),
	datab => \sad_operacional|pB2|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~1\,
	combout => \sad_operacional|sub2|Add0~2_combout\,
	cout => \sad_operacional|sub2|Add0~3\);

-- Location: LCCOMB_X24_Y22_N4
\sad_operacional|sub2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~4_combout\ = ((\sad_operacional|pB2|Q\(2) $ (\sad_operacional|pA2|Q\(2) $ (\sad_operacional|sub2|Add0~3\)))) # (GND)
-- \sad_operacional|sub2|Add0~5\ = CARRY((\sad_operacional|pB2|Q\(2) & ((!\sad_operacional|sub2|Add0~3\) # (!\sad_operacional|pA2|Q\(2)))) # (!\sad_operacional|pB2|Q\(2) & (!\sad_operacional|pA2|Q\(2) & !\sad_operacional|sub2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(2),
	datab => \sad_operacional|pA2|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~3\,
	combout => \sad_operacional|sub2|Add0~4_combout\,
	cout => \sad_operacional|sub2|Add0~5\);

-- Location: LCCOMB_X24_Y22_N6
\sad_operacional|sub2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~6_combout\ = (\sad_operacional|pA2|Q\(3) & ((\sad_operacional|pB2|Q\(3) & (!\sad_operacional|sub2|Add0~5\)) # (!\sad_operacional|pB2|Q\(3) & ((\sad_operacional|sub2|Add0~5\) # (GND))))) # (!\sad_operacional|pA2|Q\(3) & 
-- ((\sad_operacional|pB2|Q\(3) & (\sad_operacional|sub2|Add0~5\ & VCC)) # (!\sad_operacional|pB2|Q\(3) & (!\sad_operacional|sub2|Add0~5\))))
-- \sad_operacional|sub2|Add0~7\ = CARRY((\sad_operacional|pA2|Q\(3) & ((!\sad_operacional|sub2|Add0~5\) # (!\sad_operacional|pB2|Q\(3)))) # (!\sad_operacional|pA2|Q\(3) & (!\sad_operacional|pB2|Q\(3) & !\sad_operacional|sub2|Add0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(3),
	datab => \sad_operacional|pB2|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~5\,
	combout => \sad_operacional|sub2|Add0~6_combout\,
	cout => \sad_operacional|sub2|Add0~7\);

-- Location: LCCOMB_X24_Y22_N8
\sad_operacional|sub2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~8_combout\ = ((\sad_operacional|pA2|Q\(4) $ (\sad_operacional|pB2|Q\(4) $ (\sad_operacional|sub2|Add0~7\)))) # (GND)
-- \sad_operacional|sub2|Add0~9\ = CARRY((\sad_operacional|pA2|Q\(4) & (\sad_operacional|pB2|Q\(4) & !\sad_operacional|sub2|Add0~7\)) # (!\sad_operacional|pA2|Q\(4) & ((\sad_operacional|pB2|Q\(4)) # (!\sad_operacional|sub2|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(4),
	datab => \sad_operacional|pB2|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~7\,
	combout => \sad_operacional|sub2|Add0~8_combout\,
	cout => \sad_operacional|sub2|Add0~9\);

-- Location: LCCOMB_X24_Y22_N10
\sad_operacional|sub2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~10_combout\ = (\sad_operacional|pB2|Q\(5) & ((\sad_operacional|pA2|Q\(5) & (!\sad_operacional|sub2|Add0~9\)) # (!\sad_operacional|pA2|Q\(5) & (\sad_operacional|sub2|Add0~9\ & VCC)))) # (!\sad_operacional|pB2|Q\(5) & 
-- ((\sad_operacional|pA2|Q\(5) & ((\sad_operacional|sub2|Add0~9\) # (GND))) # (!\sad_operacional|pA2|Q\(5) & (!\sad_operacional|sub2|Add0~9\))))
-- \sad_operacional|sub2|Add0~11\ = CARRY((\sad_operacional|pB2|Q\(5) & (\sad_operacional|pA2|Q\(5) & !\sad_operacional|sub2|Add0~9\)) # (!\sad_operacional|pB2|Q\(5) & ((\sad_operacional|pA2|Q\(5)) # (!\sad_operacional|sub2|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB2|Q\(5),
	datab => \sad_operacional|pA2|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~9\,
	combout => \sad_operacional|sub2|Add0~10_combout\,
	cout => \sad_operacional|sub2|Add0~11\);

-- Location: LCCOMB_X24_Y22_N12
\sad_operacional|sub2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~12_combout\ = ((\sad_operacional|pA2|Q\(6) $ (\sad_operacional|pB2|Q\(6) $ (\sad_operacional|sub2|Add0~11\)))) # (GND)
-- \sad_operacional|sub2|Add0~13\ = CARRY((\sad_operacional|pA2|Q\(6) & (\sad_operacional|pB2|Q\(6) & !\sad_operacional|sub2|Add0~11\)) # (!\sad_operacional|pA2|Q\(6) & ((\sad_operacional|pB2|Q\(6)) # (!\sad_operacional|sub2|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA2|Q\(6),
	datab => \sad_operacional|pB2|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub2|Add0~11\,
	combout => \sad_operacional|sub2|Add0~12_combout\,
	cout => \sad_operacional|sub2|Add0~13\);

-- Location: LCCOMB_X24_Y22_N14
\sad_operacional|sub2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add0~14_combout\ = \sad_operacional|pB2|Q\(7) $ (\sad_operacional|sub2|Add0~13\ $ (!\sad_operacional|pA2|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|pB2|Q\(7),
	datad => \sad_operacional|pA2|Q\(7),
	cin => \sad_operacional|sub2|Add0~13\,
	combout => \sad_operacional|sub2|Add0~14_combout\);

-- Location: LCCOMB_X23_Y22_N16
\sad_operacional|sub2|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|result~0_combout\ = \sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub2|Add0~14_combout\,
	datad => \sad_operacional|sub2|Add0~0_combout\,
	combout => \sad_operacional|sub2|result~0_combout\);

-- Location: LCCOMB_X24_Y22_N16
\sad_operacional|sub2|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~0_combout\ = (\sad_operacional|sub2|result~0_combout\ & (\sad_operacional|sub2|Add0~14_combout\ $ (VCC))) # (!\sad_operacional|sub2|result~0_combout\ & (\sad_operacional|sub2|Add0~14_combout\ & VCC))
-- \sad_operacional|sub2|Add1~1\ = CARRY((\sad_operacional|sub2|result~0_combout\ & \sad_operacional|sub2|Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|result~0_combout\,
	datab => \sad_operacional|sub2|Add0~14_combout\,
	datad => VCC,
	combout => \sad_operacional|sub2|Add1~0_combout\,
	cout => \sad_operacional|sub2|Add1~1\);

-- Location: LCCOMB_X23_Y22_N30
\sad_operacional|sub2|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~2_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add1~0_combout\))) # (!\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add3~0_combout\,
	datad => \sad_operacional|sub2|Add1~0_combout\,
	combout => \sad_operacional|sub2|Add3~2_combout\);

-- Location: LCCOMB_X24_Y20_N10
\sad_operacional|soma8Bits2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~0_combout\ = (\sad_operacional|sub3|Add3~2_combout\ & (\sad_operacional|sub2|Add3~2_combout\ $ (VCC))) # (!\sad_operacional|sub3|Add3~2_combout\ & (\sad_operacional|sub2|Add3~2_combout\ & VCC))
-- \sad_operacional|soma8Bits2|Add0~1\ = CARRY((\sad_operacional|sub3|Add3~2_combout\ & \sad_operacional|sub2|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~2_combout\,
	datab => \sad_operacional|sub2|Add3~2_combout\,
	datad => VCC,
	combout => \sad_operacional|soma8Bits2|Add0~0_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~1\);

-- Location: IOIBUF_X13_Y24_N15
\b[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(15),
	o => \b[15]~input_o\);

-- Location: FF_X19_Y20_N31
\sad_operacional|pB1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(7));

-- Location: IOIBUF_X7_Y0_N1
\a[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(15),
	o => \a[15]~input_o\);

-- Location: FF_X19_Y20_N15
\sad_operacional|pA1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(7));

-- Location: IOIBUF_X16_Y0_N22
\b[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(14),
	o => \b[14]~input_o\);

-- Location: FF_X19_Y20_N29
\sad_operacional|pB1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(6));

-- Location: IOIBUF_X7_Y24_N8
\a[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(14),
	o => \a[14]~input_o\);

-- Location: FF_X19_Y20_N13
\sad_operacional|pA1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(6));

-- Location: IOIBUF_X0_Y8_N15
\a[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(13),
	o => \a[13]~input_o\);

-- Location: FF_X19_Y20_N27
\sad_operacional|pA1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(5));

-- Location: IOIBUF_X9_Y24_N8
\b[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(13),
	o => \b[13]~input_o\);

-- Location: FF_X19_Y20_N11
\sad_operacional|pB1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(5));

-- Location: IOIBUF_X16_Y24_N1
\b[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(12),
	o => \b[12]~input_o\);

-- Location: FF_X19_Y20_N25
\sad_operacional|pB1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(4));

-- Location: IOIBUF_X3_Y24_N22
\a[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(12),
	o => \a[12]~input_o\);

-- Location: FF_X19_Y20_N9
\sad_operacional|pA1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(4));

-- Location: IOIBUF_X3_Y0_N1
\b[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(11),
	o => \b[11]~input_o\);

-- Location: FF_X19_Y20_N7
\sad_operacional|pB1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(3));

-- Location: IOIBUF_X18_Y0_N22
\a[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(11),
	o => \a[11]~input_o\);

-- Location: FF_X19_Y20_N23
\sad_operacional|pA1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(3));

-- Location: IOIBUF_X18_Y0_N15
\b[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(10),
	o => \b[10]~input_o\);

-- Location: FF_X19_Y20_N21
\sad_operacional|pB1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(2));

-- Location: IOIBUF_X18_Y24_N22
\a[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(10),
	o => \a[10]~input_o\);

-- Location: FF_X19_Y20_N5
\sad_operacional|pA1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(2));

-- Location: IOIBUF_X11_Y24_N15
\b[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(9),
	o => \b[9]~input_o\);

-- Location: FF_X19_Y20_N3
\sad_operacional|pB1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(1));

-- Location: IOIBUF_X34_Y12_N8
\a[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(9),
	o => \a[9]~input_o\);

-- Location: FF_X19_Y20_N19
\sad_operacional|pA1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(1));

-- Location: IOIBUF_X7_Y24_N1
\a[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(8),
	o => \a[8]~input_o\);

-- Location: FF_X19_Y20_N1
\sad_operacional|pA1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA1|Q\(0));

-- Location: IOIBUF_X13_Y0_N15
\b[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(8),
	o => \b[8]~input_o\);

-- Location: FF_X19_Y20_N17
\sad_operacional|pB1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB1|Q\(0));

-- Location: LCCOMB_X18_Y20_N0
\sad_operacional|sub1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~1_cout\ = CARRY((!\sad_operacional|pA1|Q\(0) & \sad_operacional|pB1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(0),
	datab => \sad_operacional|pB1|Q\(0),
	datad => VCC,
	cout => \sad_operacional|sub1|LessThan0~1_cout\);

-- Location: LCCOMB_X18_Y20_N2
\sad_operacional|sub1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~3_cout\ = CARRY((\sad_operacional|pB1|Q\(1) & (\sad_operacional|pA1|Q\(1) & !\sad_operacional|sub1|LessThan0~1_cout\)) # (!\sad_operacional|pB1|Q\(1) & ((\sad_operacional|pA1|Q\(1)) # 
-- (!\sad_operacional|sub1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(1),
	datab => \sad_operacional|pA1|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~1_cout\,
	cout => \sad_operacional|sub1|LessThan0~3_cout\);

-- Location: LCCOMB_X18_Y20_N4
\sad_operacional|sub1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~5_cout\ = CARRY((\sad_operacional|pB1|Q\(2) & ((!\sad_operacional|sub1|LessThan0~3_cout\) # (!\sad_operacional|pA1|Q\(2)))) # (!\sad_operacional|pB1|Q\(2) & (!\sad_operacional|pA1|Q\(2) & 
-- !\sad_operacional|sub1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(2),
	datab => \sad_operacional|pA1|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~3_cout\,
	cout => \sad_operacional|sub1|LessThan0~5_cout\);

-- Location: LCCOMB_X18_Y20_N6
\sad_operacional|sub1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~7_cout\ = CARRY((\sad_operacional|pB1|Q\(3) & (\sad_operacional|pA1|Q\(3) & !\sad_operacional|sub1|LessThan0~5_cout\)) # (!\sad_operacional|pB1|Q\(3) & ((\sad_operacional|pA1|Q\(3)) # 
-- (!\sad_operacional|sub1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(3),
	datab => \sad_operacional|pA1|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~5_cout\,
	cout => \sad_operacional|sub1|LessThan0~7_cout\);

-- Location: LCCOMB_X18_Y20_N8
\sad_operacional|sub1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~9_cout\ = CARRY((\sad_operacional|pB1|Q\(4) & ((!\sad_operacional|sub1|LessThan0~7_cout\) # (!\sad_operacional|pA1|Q\(4)))) # (!\sad_operacional|pB1|Q\(4) & (!\sad_operacional|pA1|Q\(4) & 
-- !\sad_operacional|sub1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(4),
	datab => \sad_operacional|pA1|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~7_cout\,
	cout => \sad_operacional|sub1|LessThan0~9_cout\);

-- Location: LCCOMB_X18_Y20_N10
\sad_operacional|sub1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~11_cout\ = CARRY((\sad_operacional|pA1|Q\(5) & ((!\sad_operacional|sub1|LessThan0~9_cout\) # (!\sad_operacional|pB1|Q\(5)))) # (!\sad_operacional|pA1|Q\(5) & (!\sad_operacional|pB1|Q\(5) & 
-- !\sad_operacional|sub1|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(5),
	datab => \sad_operacional|pB1|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~9_cout\,
	cout => \sad_operacional|sub1|LessThan0~11_cout\);

-- Location: LCCOMB_X18_Y20_N12
\sad_operacional|sub1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~13_cout\ = CARRY((\sad_operacional|pB1|Q\(6) & ((!\sad_operacional|sub1|LessThan0~11_cout\) # (!\sad_operacional|pA1|Q\(6)))) # (!\sad_operacional|pB1|Q\(6) & (!\sad_operacional|pA1|Q\(6) & 
-- !\sad_operacional|sub1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(6),
	datab => \sad_operacional|pA1|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub1|LessThan0~11_cout\,
	cout => \sad_operacional|sub1|LessThan0~13_cout\);

-- Location: LCCOMB_X18_Y20_N14
\sad_operacional|sub1|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|LessThan0~14_combout\ = (\sad_operacional|pB1|Q\(7) & ((\sad_operacional|sub1|LessThan0~13_cout\) # (!\sad_operacional|pA1|Q\(7)))) # (!\sad_operacional|pB1|Q\(7) & (!\sad_operacional|pA1|Q\(7) & 
-- \sad_operacional|sub1|LessThan0~13_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(7),
	datab => \sad_operacional|pA1|Q\(7),
	cin => \sad_operacional|sub1|LessThan0~13_cout\,
	combout => \sad_operacional|sub1|LessThan0~14_combout\);

-- Location: LCCOMB_X19_Y20_N0
\sad_operacional|sub1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~0_combout\ = (\sad_operacional|pB1|Q\(0) & ((GND) # (!\sad_operacional|pA1|Q\(0)))) # (!\sad_operacional|pB1|Q\(0) & (\sad_operacional|pA1|Q\(0) $ (GND)))
-- \sad_operacional|sub1|Add0~1\ = CARRY((\sad_operacional|pB1|Q\(0)) # (!\sad_operacional|pA1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(0),
	datab => \sad_operacional|pA1|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub1|Add0~0_combout\,
	cout => \sad_operacional|sub1|Add0~1\);

-- Location: LCCOMB_X19_Y20_N2
\sad_operacional|sub1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~2_combout\ = (\sad_operacional|pB1|Q\(1) & ((\sad_operacional|pA1|Q\(1) & (!\sad_operacional|sub1|Add0~1\)) # (!\sad_operacional|pA1|Q\(1) & (\sad_operacional|sub1|Add0~1\ & VCC)))) # (!\sad_operacional|pB1|Q\(1) & 
-- ((\sad_operacional|pA1|Q\(1) & ((\sad_operacional|sub1|Add0~1\) # (GND))) # (!\sad_operacional|pA1|Q\(1) & (!\sad_operacional|sub1|Add0~1\))))
-- \sad_operacional|sub1|Add0~3\ = CARRY((\sad_operacional|pB1|Q\(1) & (\sad_operacional|pA1|Q\(1) & !\sad_operacional|sub1|Add0~1\)) # (!\sad_operacional|pB1|Q\(1) & ((\sad_operacional|pA1|Q\(1)) # (!\sad_operacional|sub1|Add0~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(1),
	datab => \sad_operacional|pA1|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~1\,
	combout => \sad_operacional|sub1|Add0~2_combout\,
	cout => \sad_operacional|sub1|Add0~3\);

-- Location: LCCOMB_X19_Y20_N4
\sad_operacional|sub1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~4_combout\ = ((\sad_operacional|pA1|Q\(2) $ (\sad_operacional|pB1|Q\(2) $ (\sad_operacional|sub1|Add0~3\)))) # (GND)
-- \sad_operacional|sub1|Add0~5\ = CARRY((\sad_operacional|pA1|Q\(2) & (\sad_operacional|pB1|Q\(2) & !\sad_operacional|sub1|Add0~3\)) # (!\sad_operacional|pA1|Q\(2) & ((\sad_operacional|pB1|Q\(2)) # (!\sad_operacional|sub1|Add0~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(2),
	datab => \sad_operacional|pB1|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~3\,
	combout => \sad_operacional|sub1|Add0~4_combout\,
	cout => \sad_operacional|sub1|Add0~5\);

-- Location: LCCOMB_X19_Y20_N6
\sad_operacional|sub1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~6_combout\ = (\sad_operacional|pB1|Q\(3) & ((\sad_operacional|pA1|Q\(3) & (!\sad_operacional|sub1|Add0~5\)) # (!\sad_operacional|pA1|Q\(3) & (\sad_operacional|sub1|Add0~5\ & VCC)))) # (!\sad_operacional|pB1|Q\(3) & 
-- ((\sad_operacional|pA1|Q\(3) & ((\sad_operacional|sub1|Add0~5\) # (GND))) # (!\sad_operacional|pA1|Q\(3) & (!\sad_operacional|sub1|Add0~5\))))
-- \sad_operacional|sub1|Add0~7\ = CARRY((\sad_operacional|pB1|Q\(3) & (\sad_operacional|pA1|Q\(3) & !\sad_operacional|sub1|Add0~5\)) # (!\sad_operacional|pB1|Q\(3) & ((\sad_operacional|pA1|Q\(3)) # (!\sad_operacional|sub1|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(3),
	datab => \sad_operacional|pA1|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~5\,
	combout => \sad_operacional|sub1|Add0~6_combout\,
	cout => \sad_operacional|sub1|Add0~7\);

-- Location: LCCOMB_X19_Y20_N8
\sad_operacional|sub1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~8_combout\ = ((\sad_operacional|pB1|Q\(4) $ (\sad_operacional|pA1|Q\(4) $ (\sad_operacional|sub1|Add0~7\)))) # (GND)
-- \sad_operacional|sub1|Add0~9\ = CARRY((\sad_operacional|pB1|Q\(4) & ((!\sad_operacional|sub1|Add0~7\) # (!\sad_operacional|pA1|Q\(4)))) # (!\sad_operacional|pB1|Q\(4) & (!\sad_operacional|pA1|Q\(4) & !\sad_operacional|sub1|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(4),
	datab => \sad_operacional|pA1|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~7\,
	combout => \sad_operacional|sub1|Add0~8_combout\,
	cout => \sad_operacional|sub1|Add0~9\);

-- Location: LCCOMB_X19_Y20_N10
\sad_operacional|sub1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~10_combout\ = (\sad_operacional|pB1|Q\(5) & ((\sad_operacional|pA1|Q\(5) & (!\sad_operacional|sub1|Add0~9\)) # (!\sad_operacional|pA1|Q\(5) & (\sad_operacional|sub1|Add0~9\ & VCC)))) # (!\sad_operacional|pB1|Q\(5) & 
-- ((\sad_operacional|pA1|Q\(5) & ((\sad_operacional|sub1|Add0~9\) # (GND))) # (!\sad_operacional|pA1|Q\(5) & (!\sad_operacional|sub1|Add0~9\))))
-- \sad_operacional|sub1|Add0~11\ = CARRY((\sad_operacional|pB1|Q\(5) & (\sad_operacional|pA1|Q\(5) & !\sad_operacional|sub1|Add0~9\)) # (!\sad_operacional|pB1|Q\(5) & ((\sad_operacional|pA1|Q\(5)) # (!\sad_operacional|sub1|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(5),
	datab => \sad_operacional|pA1|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~9\,
	combout => \sad_operacional|sub1|Add0~10_combout\,
	cout => \sad_operacional|sub1|Add0~11\);

-- Location: LCCOMB_X19_Y20_N12
\sad_operacional|sub1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~12_combout\ = ((\sad_operacional|pA1|Q\(6) $ (\sad_operacional|pB1|Q\(6) $ (\sad_operacional|sub1|Add0~11\)))) # (GND)
-- \sad_operacional|sub1|Add0~13\ = CARRY((\sad_operacional|pA1|Q\(6) & (\sad_operacional|pB1|Q\(6) & !\sad_operacional|sub1|Add0~11\)) # (!\sad_operacional|pA1|Q\(6) & ((\sad_operacional|pB1|Q\(6)) # (!\sad_operacional|sub1|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(6),
	datab => \sad_operacional|pB1|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub1|Add0~11\,
	combout => \sad_operacional|sub1|Add0~12_combout\,
	cout => \sad_operacional|sub1|Add0~13\);

-- Location: LCCOMB_X19_Y20_N14
\sad_operacional|sub1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add0~14_combout\ = \sad_operacional|pB1|Q\(7) $ (\sad_operacional|pA1|Q\(7) $ (!\sad_operacional|sub1|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(7),
	datab => \sad_operacional|pA1|Q\(7),
	cin => \sad_operacional|sub1|Add0~13\,
	combout => \sad_operacional|sub1|Add0~14_combout\);

-- Location: LCCOMB_X21_Y20_N4
\sad_operacional|sub1|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|result~0_combout\ = \sad_operacional|sub1|Add0~14_combout\ $ (\sad_operacional|sub1|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub1|Add0~14_combout\,
	datad => \sad_operacional|sub1|Add0~0_combout\,
	combout => \sad_operacional|sub1|result~0_combout\);

-- Location: LCCOMB_X21_Y20_N6
\sad_operacional|sub1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~0_combout\ = (\sad_operacional|sub1|Add0~14_combout\ & (\sad_operacional|sub1|result~0_combout\ $ (VCC))) # (!\sad_operacional|sub1|Add0~14_combout\ & (\sad_operacional|sub1|result~0_combout\ & VCC))
-- \sad_operacional|sub1|Add1~1\ = CARRY((\sad_operacional|sub1|Add0~14_combout\ & \sad_operacional|sub1|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~14_combout\,
	datab => \sad_operacional|sub1|result~0_combout\,
	datad => VCC,
	combout => \sad_operacional|sub1|Add1~0_combout\,
	cout => \sad_operacional|sub1|Add1~1\);

-- Location: LCCOMB_X19_Y20_N16
\sad_operacional|sub1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~0_combout\ = (\sad_operacional|pB1|Q\(0) & (\sad_operacional|pA1|Q\(0) $ (VCC))) # (!\sad_operacional|pB1|Q\(0) & ((\sad_operacional|pA1|Q\(0)) # (GND)))
-- \sad_operacional|sub1|Add2~1\ = CARRY((\sad_operacional|pA1|Q\(0)) # (!\sad_operacional|pB1|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(0),
	datab => \sad_operacional|pA1|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub1|Add2~0_combout\,
	cout => \sad_operacional|sub1|Add2~1\);

-- Location: LCCOMB_X19_Y20_N18
\sad_operacional|sub1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~2_combout\ = (\sad_operacional|pB1|Q\(1) & ((\sad_operacional|pA1|Q\(1) & (!\sad_operacional|sub1|Add2~1\)) # (!\sad_operacional|pA1|Q\(1) & ((\sad_operacional|sub1|Add2~1\) # (GND))))) # (!\sad_operacional|pB1|Q\(1) & 
-- ((\sad_operacional|pA1|Q\(1) & (\sad_operacional|sub1|Add2~1\ & VCC)) # (!\sad_operacional|pA1|Q\(1) & (!\sad_operacional|sub1|Add2~1\))))
-- \sad_operacional|sub1|Add2~3\ = CARRY((\sad_operacional|pB1|Q\(1) & ((!\sad_operacional|sub1|Add2~1\) # (!\sad_operacional|pA1|Q\(1)))) # (!\sad_operacional|pB1|Q\(1) & (!\sad_operacional|pA1|Q\(1) & !\sad_operacional|sub1|Add2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(1),
	datab => \sad_operacional|pA1|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~1\,
	combout => \sad_operacional|sub1|Add2~2_combout\,
	cout => \sad_operacional|sub1|Add2~3\);

-- Location: LCCOMB_X19_Y20_N20
\sad_operacional|sub1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~4_combout\ = ((\sad_operacional|pA1|Q\(2) $ (\sad_operacional|pB1|Q\(2) $ (\sad_operacional|sub1|Add2~3\)))) # (GND)
-- \sad_operacional|sub1|Add2~5\ = CARRY((\sad_operacional|pA1|Q\(2) & ((!\sad_operacional|sub1|Add2~3\) # (!\sad_operacional|pB1|Q\(2)))) # (!\sad_operacional|pA1|Q\(2) & (!\sad_operacional|pB1|Q\(2) & !\sad_operacional|sub1|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(2),
	datab => \sad_operacional|pB1|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~3\,
	combout => \sad_operacional|sub1|Add2~4_combout\,
	cout => \sad_operacional|sub1|Add2~5\);

-- Location: LCCOMB_X19_Y20_N22
\sad_operacional|sub1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~6_combout\ = (\sad_operacional|pB1|Q\(3) & ((\sad_operacional|pA1|Q\(3) & (!\sad_operacional|sub1|Add2~5\)) # (!\sad_operacional|pA1|Q\(3) & ((\sad_operacional|sub1|Add2~5\) # (GND))))) # (!\sad_operacional|pB1|Q\(3) & 
-- ((\sad_operacional|pA1|Q\(3) & (\sad_operacional|sub1|Add2~5\ & VCC)) # (!\sad_operacional|pA1|Q\(3) & (!\sad_operacional|sub1|Add2~5\))))
-- \sad_operacional|sub1|Add2~7\ = CARRY((\sad_operacional|pB1|Q\(3) & ((!\sad_operacional|sub1|Add2~5\) # (!\sad_operacional|pA1|Q\(3)))) # (!\sad_operacional|pB1|Q\(3) & (!\sad_operacional|pA1|Q\(3) & !\sad_operacional|sub1|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(3),
	datab => \sad_operacional|pA1|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~5\,
	combout => \sad_operacional|sub1|Add2~6_combout\,
	cout => \sad_operacional|sub1|Add2~7\);

-- Location: LCCOMB_X19_Y20_N24
\sad_operacional|sub1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~8_combout\ = ((\sad_operacional|pA1|Q\(4) $ (\sad_operacional|pB1|Q\(4) $ (\sad_operacional|sub1|Add2~7\)))) # (GND)
-- \sad_operacional|sub1|Add2~9\ = CARRY((\sad_operacional|pA1|Q\(4) & ((!\sad_operacional|sub1|Add2~7\) # (!\sad_operacional|pB1|Q\(4)))) # (!\sad_operacional|pA1|Q\(4) & (!\sad_operacional|pB1|Q\(4) & !\sad_operacional|sub1|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(4),
	datab => \sad_operacional|pB1|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~7\,
	combout => \sad_operacional|sub1|Add2~8_combout\,
	cout => \sad_operacional|sub1|Add2~9\);

-- Location: LCCOMB_X19_Y20_N26
\sad_operacional|sub1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~10_combout\ = (\sad_operacional|pB1|Q\(5) & ((\sad_operacional|pA1|Q\(5) & (!\sad_operacional|sub1|Add2~9\)) # (!\sad_operacional|pA1|Q\(5) & ((\sad_operacional|sub1|Add2~9\) # (GND))))) # (!\sad_operacional|pB1|Q\(5) & 
-- ((\sad_operacional|pA1|Q\(5) & (\sad_operacional|sub1|Add2~9\ & VCC)) # (!\sad_operacional|pA1|Q\(5) & (!\sad_operacional|sub1|Add2~9\))))
-- \sad_operacional|sub1|Add2~11\ = CARRY((\sad_operacional|pB1|Q\(5) & ((!\sad_operacional|sub1|Add2~9\) # (!\sad_operacional|pA1|Q\(5)))) # (!\sad_operacional|pB1|Q\(5) & (!\sad_operacional|pA1|Q\(5) & !\sad_operacional|sub1|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(5),
	datab => \sad_operacional|pA1|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~9\,
	combout => \sad_operacional|sub1|Add2~10_combout\,
	cout => \sad_operacional|sub1|Add2~11\);

-- Location: LCCOMB_X19_Y20_N28
\sad_operacional|sub1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~12_combout\ = ((\sad_operacional|pA1|Q\(6) $ (\sad_operacional|pB1|Q\(6) $ (\sad_operacional|sub1|Add2~11\)))) # (GND)
-- \sad_operacional|sub1|Add2~13\ = CARRY((\sad_operacional|pA1|Q\(6) & ((!\sad_operacional|sub1|Add2~11\) # (!\sad_operacional|pB1|Q\(6)))) # (!\sad_operacional|pA1|Q\(6) & (!\sad_operacional|pB1|Q\(6) & !\sad_operacional|sub1|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA1|Q\(6),
	datab => \sad_operacional|pB1|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub1|Add2~11\,
	combout => \sad_operacional|sub1|Add2~12_combout\,
	cout => \sad_operacional|sub1|Add2~13\);

-- Location: LCCOMB_X19_Y20_N30
\sad_operacional|sub1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add2~14_combout\ = \sad_operacional|pB1|Q\(7) $ (\sad_operacional|pA1|Q\(7) $ (!\sad_operacional|sub1|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB1|Q\(7),
	datab => \sad_operacional|pA1|Q\(7),
	cin => \sad_operacional|sub1|Add2~13\,
	combout => \sad_operacional|sub1|Add2~14_combout\);

-- Location: LCCOMB_X22_Y20_N30
\sad_operacional|sub1|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|result~1_combout\ = \sad_operacional|sub1|Add2~0_combout\ $ (\sad_operacional|sub1|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub1|Add2~0_combout\,
	datad => \sad_operacional|sub1|Add2~14_combout\,
	combout => \sad_operacional|sub1|result~1_combout\);

-- Location: LCCOMB_X22_Y20_N0
\sad_operacional|sub1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~0_combout\ = (\sad_operacional|sub1|result~1_combout\ & (\sad_operacional|sub1|Add2~14_combout\ $ (VCC))) # (!\sad_operacional|sub1|result~1_combout\ & (\sad_operacional|sub1|Add2~14_combout\ & VCC))
-- \sad_operacional|sub1|Add3~1\ = CARRY((\sad_operacional|sub1|result~1_combout\ & \sad_operacional|sub1|Add2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|result~1_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	combout => \sad_operacional|sub1|Add3~0_combout\,
	cout => \sad_operacional|sub1|Add3~1\);

-- Location: LCCOMB_X22_Y20_N16
\sad_operacional|sub1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~2_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add1~0_combout\)) # (!\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add1~0_combout\,
	datad => \sad_operacional|sub1|Add3~0_combout\,
	combout => \sad_operacional|sub1|Add3~2_combout\);

-- Location: IOIBUF_X32_Y0_N15
\b[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: FF_X24_Y21_N31
\sad_operacional|pB0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(7));

-- Location: IOIBUF_X23_Y24_N15
\a[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: FF_X24_Y21_N15
\sad_operacional|pA0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(7));

-- Location: IOIBUF_X0_Y18_N22
\a[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: FF_X24_Y21_N13
\sad_operacional|pA0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(6));

-- Location: IOIBUF_X5_Y0_N15
\b[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: FF_X24_Y21_N29
\sad_operacional|pB0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(6));

-- Location: IOIBUF_X28_Y0_N1
\a[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: FF_X24_Y21_N27
\sad_operacional|pA0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(5));

-- Location: IOIBUF_X28_Y24_N1
\b[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: FF_X24_Y21_N11
\sad_operacional|pB0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(5));

-- Location: IOIBUF_X0_Y6_N15
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: FF_X24_Y21_N9
\sad_operacional|pA0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(4));

-- Location: IOIBUF_X16_Y24_N15
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: FF_X24_Y21_N25
\sad_operacional|pB0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(4));

-- Location: IOIBUF_X5_Y24_N8
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: FF_X24_Y21_N23
\sad_operacional|pA0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(3));

-- Location: IOIBUF_X0_Y21_N8
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: FF_X24_Y21_N7
\sad_operacional|pB0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(3));

-- Location: IOIBUF_X23_Y0_N15
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: FF_X24_Y21_N5
\sad_operacional|pA0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(2));

-- Location: IOIBUF_X34_Y7_N8
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: FF_X24_Y21_N21
\sad_operacional|pB0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(2));

-- Location: IOIBUF_X13_Y24_N22
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: FF_X24_Y21_N3
\sad_operacional|pB0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(1));

-- Location: IOIBUF_X28_Y24_N15
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: FF_X24_Y21_N19
\sad_operacional|pA0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(1));

-- Location: IOIBUF_X16_Y0_N1
\b[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: FF_X24_Y21_N17
\sad_operacional|pB0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \b[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pB0|Q\(0));

-- Location: IOIBUF_X0_Y23_N15
\a[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: FF_X24_Y21_N1
\sad_operacional|pA0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \a[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|pA0|Q\(0));

-- Location: LCCOMB_X25_Y21_N2
\sad_operacional|sub0|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~1_cout\ = CARRY((\sad_operacional|pB0|Q\(0) & !\sad_operacional|pA0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(0),
	datab => \sad_operacional|pA0|Q\(0),
	datad => VCC,
	cout => \sad_operacional|sub0|LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y21_N4
\sad_operacional|sub0|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~3_cout\ = CARRY((\sad_operacional|pB0|Q\(1) & (\sad_operacional|pA0|Q\(1) & !\sad_operacional|sub0|LessThan0~1_cout\)) # (!\sad_operacional|pB0|Q\(1) & ((\sad_operacional|pA0|Q\(1)) # 
-- (!\sad_operacional|sub0|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(1),
	datab => \sad_operacional|pA0|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~1_cout\,
	cout => \sad_operacional|sub0|LessThan0~3_cout\);

-- Location: LCCOMB_X25_Y21_N6
\sad_operacional|sub0|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~5_cout\ = CARRY((\sad_operacional|pA0|Q\(2) & (\sad_operacional|pB0|Q\(2) & !\sad_operacional|sub0|LessThan0~3_cout\)) # (!\sad_operacional|pA0|Q\(2) & ((\sad_operacional|pB0|Q\(2)) # 
-- (!\sad_operacional|sub0|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(2),
	datab => \sad_operacional|pB0|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~3_cout\,
	cout => \sad_operacional|sub0|LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y21_N8
\sad_operacional|sub0|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~7_cout\ = CARRY((\sad_operacional|pA0|Q\(3) & ((!\sad_operacional|sub0|LessThan0~5_cout\) # (!\sad_operacional|pB0|Q\(3)))) # (!\sad_operacional|pA0|Q\(3) & (!\sad_operacional|pB0|Q\(3) & 
-- !\sad_operacional|sub0|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(3),
	datab => \sad_operacional|pB0|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~5_cout\,
	cout => \sad_operacional|sub0|LessThan0~7_cout\);

-- Location: LCCOMB_X25_Y21_N10
\sad_operacional|sub0|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~9_cout\ = CARRY((\sad_operacional|pA0|Q\(4) & (\sad_operacional|pB0|Q\(4) & !\sad_operacional|sub0|LessThan0~7_cout\)) # (!\sad_operacional|pA0|Q\(4) & ((\sad_operacional|pB0|Q\(4)) # 
-- (!\sad_operacional|sub0|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(4),
	datab => \sad_operacional|pB0|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~7_cout\,
	cout => \sad_operacional|sub0|LessThan0~9_cout\);

-- Location: LCCOMB_X25_Y21_N12
\sad_operacional|sub0|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~11_cout\ = CARRY((\sad_operacional|pA0|Q\(5) & ((!\sad_operacional|sub0|LessThan0~9_cout\) # (!\sad_operacional|pB0|Q\(5)))) # (!\sad_operacional|pA0|Q\(5) & (!\sad_operacional|pB0|Q\(5) & 
-- !\sad_operacional|sub0|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(5),
	datab => \sad_operacional|pB0|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~9_cout\,
	cout => \sad_operacional|sub0|LessThan0~11_cout\);

-- Location: LCCOMB_X25_Y21_N14
\sad_operacional|sub0|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~13_cout\ = CARRY((\sad_operacional|pA0|Q\(6) & (\sad_operacional|pB0|Q\(6) & !\sad_operacional|sub0|LessThan0~11_cout\)) # (!\sad_operacional|pA0|Q\(6) & ((\sad_operacional|pB0|Q\(6)) # 
-- (!\sad_operacional|sub0|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(6),
	datab => \sad_operacional|pB0|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub0|LessThan0~11_cout\,
	cout => \sad_operacional|sub0|LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y21_N16
\sad_operacional|sub0|LessThan0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|LessThan0~14_combout\ = (\sad_operacional|pB0|Q\(7) & ((\sad_operacional|sub0|LessThan0~13_cout\) # (!\sad_operacional|pA0|Q\(7)))) # (!\sad_operacional|pB0|Q\(7) & (\sad_operacional|sub0|LessThan0~13_cout\ & 
-- !\sad_operacional|pA0|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|pB0|Q\(7),
	datad => \sad_operacional|pA0|Q\(7),
	cin => \sad_operacional|sub0|LessThan0~13_cout\,
	combout => \sad_operacional|sub0|LessThan0~14_combout\);

-- Location: LCCOMB_X24_Y21_N0
\sad_operacional|sub0|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~0_combout\ = (\sad_operacional|pA0|Q\(0) & (\sad_operacional|pB0|Q\(0) $ (VCC))) # (!\sad_operacional|pA0|Q\(0) & ((\sad_operacional|pB0|Q\(0)) # (GND)))
-- \sad_operacional|sub0|Add0~1\ = CARRY((\sad_operacional|pB0|Q\(0)) # (!\sad_operacional|pA0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(0),
	datab => \sad_operacional|pB0|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub0|Add0~0_combout\,
	cout => \sad_operacional|sub0|Add0~1\);

-- Location: LCCOMB_X24_Y21_N2
\sad_operacional|sub0|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~2_combout\ = (\sad_operacional|pA0|Q\(1) & ((\sad_operacional|pB0|Q\(1) & (!\sad_operacional|sub0|Add0~1\)) # (!\sad_operacional|pB0|Q\(1) & ((\sad_operacional|sub0|Add0~1\) # (GND))))) # (!\sad_operacional|pA0|Q\(1) & 
-- ((\sad_operacional|pB0|Q\(1) & (\sad_operacional|sub0|Add0~1\ & VCC)) # (!\sad_operacional|pB0|Q\(1) & (!\sad_operacional|sub0|Add0~1\))))
-- \sad_operacional|sub0|Add0~3\ = CARRY((\sad_operacional|pA0|Q\(1) & ((!\sad_operacional|sub0|Add0~1\) # (!\sad_operacional|pB0|Q\(1)))) # (!\sad_operacional|pA0|Q\(1) & (!\sad_operacional|pB0|Q\(1) & !\sad_operacional|sub0|Add0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(1),
	datab => \sad_operacional|pB0|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~1\,
	combout => \sad_operacional|sub0|Add0~2_combout\,
	cout => \sad_operacional|sub0|Add0~3\);

-- Location: LCCOMB_X24_Y21_N4
\sad_operacional|sub0|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~4_combout\ = ((\sad_operacional|pB0|Q\(2) $ (\sad_operacional|pA0|Q\(2) $ (\sad_operacional|sub0|Add0~3\)))) # (GND)
-- \sad_operacional|sub0|Add0~5\ = CARRY((\sad_operacional|pB0|Q\(2) & ((!\sad_operacional|sub0|Add0~3\) # (!\sad_operacional|pA0|Q\(2)))) # (!\sad_operacional|pB0|Q\(2) & (!\sad_operacional|pA0|Q\(2) & !\sad_operacional|sub0|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(2),
	datab => \sad_operacional|pA0|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~3\,
	combout => \sad_operacional|sub0|Add0~4_combout\,
	cout => \sad_operacional|sub0|Add0~5\);

-- Location: LCCOMB_X24_Y21_N6
\sad_operacional|sub0|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~6_combout\ = (\sad_operacional|pB0|Q\(3) & ((\sad_operacional|pA0|Q\(3) & (!\sad_operacional|sub0|Add0~5\)) # (!\sad_operacional|pA0|Q\(3) & (\sad_operacional|sub0|Add0~5\ & VCC)))) # (!\sad_operacional|pB0|Q\(3) & 
-- ((\sad_operacional|pA0|Q\(3) & ((\sad_operacional|sub0|Add0~5\) # (GND))) # (!\sad_operacional|pA0|Q\(3) & (!\sad_operacional|sub0|Add0~5\))))
-- \sad_operacional|sub0|Add0~7\ = CARRY((\sad_operacional|pB0|Q\(3) & (\sad_operacional|pA0|Q\(3) & !\sad_operacional|sub0|Add0~5\)) # (!\sad_operacional|pB0|Q\(3) & ((\sad_operacional|pA0|Q\(3)) # (!\sad_operacional|sub0|Add0~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(3),
	datab => \sad_operacional|pA0|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~5\,
	combout => \sad_operacional|sub0|Add0~6_combout\,
	cout => \sad_operacional|sub0|Add0~7\);

-- Location: LCCOMB_X24_Y21_N8
\sad_operacional|sub0|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~8_combout\ = ((\sad_operacional|pA0|Q\(4) $ (\sad_operacional|pB0|Q\(4) $ (\sad_operacional|sub0|Add0~7\)))) # (GND)
-- \sad_operacional|sub0|Add0~9\ = CARRY((\sad_operacional|pA0|Q\(4) & (\sad_operacional|pB0|Q\(4) & !\sad_operacional|sub0|Add0~7\)) # (!\sad_operacional|pA0|Q\(4) & ((\sad_operacional|pB0|Q\(4)) # (!\sad_operacional|sub0|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(4),
	datab => \sad_operacional|pB0|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~7\,
	combout => \sad_operacional|sub0|Add0~8_combout\,
	cout => \sad_operacional|sub0|Add0~9\);

-- Location: LCCOMB_X24_Y21_N10
\sad_operacional|sub0|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~10_combout\ = (\sad_operacional|pB0|Q\(5) & ((\sad_operacional|pA0|Q\(5) & (!\sad_operacional|sub0|Add0~9\)) # (!\sad_operacional|pA0|Q\(5) & (\sad_operacional|sub0|Add0~9\ & VCC)))) # (!\sad_operacional|pB0|Q\(5) & 
-- ((\sad_operacional|pA0|Q\(5) & ((\sad_operacional|sub0|Add0~9\) # (GND))) # (!\sad_operacional|pA0|Q\(5) & (!\sad_operacional|sub0|Add0~9\))))
-- \sad_operacional|sub0|Add0~11\ = CARRY((\sad_operacional|pB0|Q\(5) & (\sad_operacional|pA0|Q\(5) & !\sad_operacional|sub0|Add0~9\)) # (!\sad_operacional|pB0|Q\(5) & ((\sad_operacional|pA0|Q\(5)) # (!\sad_operacional|sub0|Add0~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(5),
	datab => \sad_operacional|pA0|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~9\,
	combout => \sad_operacional|sub0|Add0~10_combout\,
	cout => \sad_operacional|sub0|Add0~11\);

-- Location: LCCOMB_X24_Y21_N12
\sad_operacional|sub0|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~12_combout\ = ((\sad_operacional|pA0|Q\(6) $ (\sad_operacional|pB0|Q\(6) $ (\sad_operacional|sub0|Add0~11\)))) # (GND)
-- \sad_operacional|sub0|Add0~13\ = CARRY((\sad_operacional|pA0|Q\(6) & (\sad_operacional|pB0|Q\(6) & !\sad_operacional|sub0|Add0~11\)) # (!\sad_operacional|pA0|Q\(6) & ((\sad_operacional|pB0|Q\(6)) # (!\sad_operacional|sub0|Add0~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(6),
	datab => \sad_operacional|pB0|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub0|Add0~11\,
	combout => \sad_operacional|sub0|Add0~12_combout\,
	cout => \sad_operacional|sub0|Add0~13\);

-- Location: LCCOMB_X24_Y21_N14
\sad_operacional|sub0|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add0~14_combout\ = \sad_operacional|pB0|Q\(7) $ (\sad_operacional|pA0|Q\(7) $ (!\sad_operacional|sub0|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(7),
	datab => \sad_operacional|pA0|Q\(7),
	cin => \sad_operacional|sub0|Add0~13\,
	combout => \sad_operacional|sub0|Add0~14_combout\);

-- Location: LCCOMB_X22_Y21_N20
\sad_operacional|sub0|result~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|result~0_combout\ = \sad_operacional|sub0|Add0~0_combout\ $ (\sad_operacional|sub0|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub0|Add0~0_combout\,
	datad => \sad_operacional|sub0|Add0~14_combout\,
	combout => \sad_operacional|sub0|result~0_combout\);

-- Location: LCCOMB_X22_Y21_N4
\sad_operacional|sub0|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~0_combout\ = (\sad_operacional|sub0|Add0~14_combout\ & (\sad_operacional|sub0|result~0_combout\ $ (VCC))) # (!\sad_operacional|sub0|Add0~14_combout\ & (\sad_operacional|sub0|result~0_combout\ & VCC))
-- \sad_operacional|sub0|Add1~1\ = CARRY((\sad_operacional|sub0|Add0~14_combout\ & \sad_operacional|sub0|result~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~14_combout\,
	datab => \sad_operacional|sub0|result~0_combout\,
	datad => VCC,
	combout => \sad_operacional|sub0|Add1~0_combout\,
	cout => \sad_operacional|sub0|Add1~1\);

-- Location: LCCOMB_X24_Y21_N16
\sad_operacional|sub0|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~0_combout\ = (\sad_operacional|pA0|Q\(0) & ((GND) # (!\sad_operacional|pB0|Q\(0)))) # (!\sad_operacional|pA0|Q\(0) & (\sad_operacional|pB0|Q\(0) $ (GND)))
-- \sad_operacional|sub0|Add2~1\ = CARRY((\sad_operacional|pA0|Q\(0)) # (!\sad_operacional|pB0|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(0),
	datab => \sad_operacional|pB0|Q\(0),
	datad => VCC,
	combout => \sad_operacional|sub0|Add2~0_combout\,
	cout => \sad_operacional|sub0|Add2~1\);

-- Location: LCCOMB_X24_Y21_N18
\sad_operacional|sub0|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~2_combout\ = (\sad_operacional|pA0|Q\(1) & ((\sad_operacional|pB0|Q\(1) & (!\sad_operacional|sub0|Add2~1\)) # (!\sad_operacional|pB0|Q\(1) & (\sad_operacional|sub0|Add2~1\ & VCC)))) # (!\sad_operacional|pA0|Q\(1) & 
-- ((\sad_operacional|pB0|Q\(1) & ((\sad_operacional|sub0|Add2~1\) # (GND))) # (!\sad_operacional|pB0|Q\(1) & (!\sad_operacional|sub0|Add2~1\))))
-- \sad_operacional|sub0|Add2~3\ = CARRY((\sad_operacional|pA0|Q\(1) & (\sad_operacional|pB0|Q\(1) & !\sad_operacional|sub0|Add2~1\)) # (!\sad_operacional|pA0|Q\(1) & ((\sad_operacional|pB0|Q\(1)) # (!\sad_operacional|sub0|Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(1),
	datab => \sad_operacional|pB0|Q\(1),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~1\,
	combout => \sad_operacional|sub0|Add2~2_combout\,
	cout => \sad_operacional|sub0|Add2~3\);

-- Location: LCCOMB_X24_Y21_N20
\sad_operacional|sub0|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~4_combout\ = ((\sad_operacional|pB0|Q\(2) $ (\sad_operacional|pA0|Q\(2) $ (\sad_operacional|sub0|Add2~3\)))) # (GND)
-- \sad_operacional|sub0|Add2~5\ = CARRY((\sad_operacional|pB0|Q\(2) & (\sad_operacional|pA0|Q\(2) & !\sad_operacional|sub0|Add2~3\)) # (!\sad_operacional|pB0|Q\(2) & ((\sad_operacional|pA0|Q\(2)) # (!\sad_operacional|sub0|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(2),
	datab => \sad_operacional|pA0|Q\(2),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~3\,
	combout => \sad_operacional|sub0|Add2~4_combout\,
	cout => \sad_operacional|sub0|Add2~5\);

-- Location: LCCOMB_X24_Y21_N22
\sad_operacional|sub0|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~6_combout\ = (\sad_operacional|pB0|Q\(3) & ((\sad_operacional|pA0|Q\(3) & (!\sad_operacional|sub0|Add2~5\)) # (!\sad_operacional|pA0|Q\(3) & ((\sad_operacional|sub0|Add2~5\) # (GND))))) # (!\sad_operacional|pB0|Q\(3) & 
-- ((\sad_operacional|pA0|Q\(3) & (\sad_operacional|sub0|Add2~5\ & VCC)) # (!\sad_operacional|pA0|Q\(3) & (!\sad_operacional|sub0|Add2~5\))))
-- \sad_operacional|sub0|Add2~7\ = CARRY((\sad_operacional|pB0|Q\(3) & ((!\sad_operacional|sub0|Add2~5\) # (!\sad_operacional|pA0|Q\(3)))) # (!\sad_operacional|pB0|Q\(3) & (!\sad_operacional|pA0|Q\(3) & !\sad_operacional|sub0|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(3),
	datab => \sad_operacional|pA0|Q\(3),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~5\,
	combout => \sad_operacional|sub0|Add2~6_combout\,
	cout => \sad_operacional|sub0|Add2~7\);

-- Location: LCCOMB_X24_Y21_N24
\sad_operacional|sub0|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~8_combout\ = ((\sad_operacional|pA0|Q\(4) $ (\sad_operacional|pB0|Q\(4) $ (\sad_operacional|sub0|Add2~7\)))) # (GND)
-- \sad_operacional|sub0|Add2~9\ = CARRY((\sad_operacional|pA0|Q\(4) & ((!\sad_operacional|sub0|Add2~7\) # (!\sad_operacional|pB0|Q\(4)))) # (!\sad_operacional|pA0|Q\(4) & (!\sad_operacional|pB0|Q\(4) & !\sad_operacional|sub0|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(4),
	datab => \sad_operacional|pB0|Q\(4),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~7\,
	combout => \sad_operacional|sub0|Add2~8_combout\,
	cout => \sad_operacional|sub0|Add2~9\);

-- Location: LCCOMB_X24_Y21_N26
\sad_operacional|sub0|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~10_combout\ = (\sad_operacional|pB0|Q\(5) & ((\sad_operacional|pA0|Q\(5) & (!\sad_operacional|sub0|Add2~9\)) # (!\sad_operacional|pA0|Q\(5) & ((\sad_operacional|sub0|Add2~9\) # (GND))))) # (!\sad_operacional|pB0|Q\(5) & 
-- ((\sad_operacional|pA0|Q\(5) & (\sad_operacional|sub0|Add2~9\ & VCC)) # (!\sad_operacional|pA0|Q\(5) & (!\sad_operacional|sub0|Add2~9\))))
-- \sad_operacional|sub0|Add2~11\ = CARRY((\sad_operacional|pB0|Q\(5) & ((!\sad_operacional|sub0|Add2~9\) # (!\sad_operacional|pA0|Q\(5)))) # (!\sad_operacional|pB0|Q\(5) & (!\sad_operacional|pA0|Q\(5) & !\sad_operacional|sub0|Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(5),
	datab => \sad_operacional|pA0|Q\(5),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~9\,
	combout => \sad_operacional|sub0|Add2~10_combout\,
	cout => \sad_operacional|sub0|Add2~11\);

-- Location: LCCOMB_X24_Y21_N28
\sad_operacional|sub0|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~12_combout\ = ((\sad_operacional|pA0|Q\(6) $ (\sad_operacional|pB0|Q\(6) $ (\sad_operacional|sub0|Add2~11\)))) # (GND)
-- \sad_operacional|sub0|Add2~13\ = CARRY((\sad_operacional|pA0|Q\(6) & ((!\sad_operacional|sub0|Add2~11\) # (!\sad_operacional|pB0|Q\(6)))) # (!\sad_operacional|pA0|Q\(6) & (!\sad_operacional|pB0|Q\(6) & !\sad_operacional|sub0|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pA0|Q\(6),
	datab => \sad_operacional|pB0|Q\(6),
	datad => VCC,
	cin => \sad_operacional|sub0|Add2~11\,
	combout => \sad_operacional|sub0|Add2~12_combout\,
	cout => \sad_operacional|sub0|Add2~13\);

-- Location: LCCOMB_X24_Y21_N30
\sad_operacional|sub0|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add2~14_combout\ = \sad_operacional|pB0|Q\(7) $ (\sad_operacional|pA0|Q\(7) $ (!\sad_operacional|sub0|Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|pB0|Q\(7),
	datab => \sad_operacional|pA0|Q\(7),
	cin => \sad_operacional|sub0|Add2~13\,
	combout => \sad_operacional|sub0|Add2~14_combout\);

-- Location: LCCOMB_X23_Y21_N0
\sad_operacional|sub0|result~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|result~1_combout\ = \sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sad_operacional|sub0|Add2~14_combout\,
	datad => \sad_operacional|sub0|Add2~0_combout\,
	combout => \sad_operacional|sub0|result~1_combout\);

-- Location: LCCOMB_X23_Y21_N2
\sad_operacional|sub0|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~0_combout\ = (\sad_operacional|sub0|Add2~14_combout\ & (\sad_operacional|sub0|result~1_combout\ $ (VCC))) # (!\sad_operacional|sub0|Add2~14_combout\ & (\sad_operacional|sub0|result~1_combout\ & VCC))
-- \sad_operacional|sub0|Add3~1\ = CARRY((\sad_operacional|sub0|Add2~14_combout\ & \sad_operacional|sub0|result~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|result~1_combout\,
	datad => VCC,
	combout => \sad_operacional|sub0|Add3~0_combout\,
	cout => \sad_operacional|sub0|Add3~1\);

-- Location: LCCOMB_X22_Y21_N2
\sad_operacional|sub0|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~2_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~0_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add1~0_combout\,
	datad => \sad_operacional|sub0|Add3~0_combout\,
	combout => \sad_operacional|sub0|Add3~2_combout\);

-- Location: LCCOMB_X23_Y20_N8
\sad_operacional|soma8Bits1|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[0]~0_combout\ = (\sad_operacional|sub1|Add3~2_combout\ & (\sad_operacional|sub0|Add3~2_combout\ $ (VCC))) # (!\sad_operacional|sub1|Add3~2_combout\ & (\sad_operacional|sub0|Add3~2_combout\ & VCC))
-- \sad_operacional|soma8Bits1|result[0]~1\ = CARRY((\sad_operacional|sub1|Add3~2_combout\ & \sad_operacional|sub0|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add3~2_combout\,
	datab => \sad_operacional|sub0|Add3~2_combout\,
	datad => VCC,
	combout => \sad_operacional|soma8Bits1|result[0]~0_combout\,
	cout => \sad_operacional|soma8Bits1|result[0]~1\);

-- Location: LCCOMB_X25_Y20_N4
\sad_operacional|soma9Bits|result[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[0]~0_combout\ = (\sad_operacional|soma8Bits2|Add0~0_combout\ & (\sad_operacional|soma8Bits1|result[0]~0_combout\ $ (VCC))) # (!\sad_operacional|soma8Bits2|Add0~0_combout\ & 
-- (\sad_operacional|soma8Bits1|result[0]~0_combout\ & VCC))
-- \sad_operacional|soma9Bits|result[0]~1\ = CARRY((\sad_operacional|soma8Bits2|Add0~0_combout\ & \sad_operacional|soma8Bits1|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits2|Add0~0_combout\,
	datab => \sad_operacional|soma8Bits1|result[0]~0_combout\,
	datad => VCC,
	combout => \sad_operacional|soma9Bits|result[0]~0_combout\,
	cout => \sad_operacional|soma9Bits|result[0]~1\);

-- Location: LCCOMB_X26_Y20_N2
\sad_operacional|soma|Q[0]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[0]~14_combout\ = (\sad_operacional|soma|Q\(0) & (\sad_operacional|soma9Bits|result[0]~0_combout\ $ (VCC))) # (!\sad_operacional|soma|Q\(0) & (\sad_operacional|soma9Bits|result[0]~0_combout\ & VCC))
-- \sad_operacional|soma|Q[0]~15\ = CARRY((\sad_operacional|soma|Q\(0) & \sad_operacional|soma9Bits|result[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(0),
	datab => \sad_operacional|soma9Bits|result[0]~0_combout\,
	datad => VCC,
	combout => \sad_operacional|soma|Q[0]~14_combout\,
	cout => \sad_operacional|soma|Q[0]~15\);

-- Location: FF_X26_Y20_N3
\sad_operacional|soma|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[0]~14_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(0));

-- Location: FF_X28_Y20_N1
\sad_operacional|SAD_reg|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(0));

-- Location: LCCOMB_X28_Y20_N14
\sad_operacional|sub3|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~3_combout\ = (\sad_operacional|sub3|Add3~1\ & (\sad_operacional|sub3|Add2~14_combout\ $ ((!\sad_operacional|sub3|Add2~2_combout\)))) # (!\sad_operacional|sub3|Add3~1\ & ((\sad_operacional|sub3|Add2~14_combout\ $ 
-- (\sad_operacional|sub3|Add2~2_combout\)) # (GND)))
-- \sad_operacional|sub3|Add3~4\ = CARRY((\sad_operacional|sub3|Add2~14_combout\ $ (!\sad_operacional|sub3|Add2~2_combout\)) # (!\sad_operacional|sub3|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~14_combout\,
	datab => \sad_operacional|sub3|Add2~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~1\,
	combout => \sad_operacional|sub3|Add3~3_combout\,
	cout => \sad_operacional|sub3|Add3~4\);

-- Location: LCCOMB_X29_Y20_N2
\sad_operacional|sub3|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~2_combout\ = (\sad_operacional|sub3|Add1~1\ & (\sad_operacional|sub3|Add0~14_combout\ $ ((!\sad_operacional|sub3|Add0~2_combout\)))) # (!\sad_operacional|sub3|Add1~1\ & ((\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~2_combout\)) # (GND)))
-- \sad_operacional|sub3|Add1~3\ = CARRY((\sad_operacional|sub3|Add0~14_combout\ $ (!\sad_operacional|sub3|Add0~2_combout\)) # (!\sad_operacional|sub3|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~1\,
	combout => \sad_operacional|sub3|Add1~2_combout\,
	cout => \sad_operacional|sub3|Add1~3\);

-- Location: LCCOMB_X28_Y20_N30
\sad_operacional|sub3|Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~5_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add1~2_combout\))) # (!\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|LessThan0~14_combout\,
	datac => \sad_operacional|sub3|Add3~3_combout\,
	datad => \sad_operacional|sub3|Add1~2_combout\,
	combout => \sad_operacional|sub3|Add3~5_combout\);

-- Location: LCCOMB_X24_Y22_N18
\sad_operacional|sub2|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~2_combout\ = (\sad_operacional|sub2|Add1~1\ & (\sad_operacional|sub2|Add0~14_combout\ $ ((!\sad_operacional|sub2|Add0~2_combout\)))) # (!\sad_operacional|sub2|Add1~1\ & ((\sad_operacional|sub2|Add0~14_combout\ $ 
-- (\sad_operacional|sub2|Add0~2_combout\)) # (GND)))
-- \sad_operacional|sub2|Add1~3\ = CARRY((\sad_operacional|sub2|Add0~14_combout\ $ (!\sad_operacional|sub2|Add0~2_combout\)) # (!\sad_operacional|sub2|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~14_combout\,
	datab => \sad_operacional|sub2|Add0~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~1\,
	combout => \sad_operacional|sub2|Add1~2_combout\,
	cout => \sad_operacional|sub2|Add1~3\);

-- Location: LCCOMB_X25_Y22_N18
\sad_operacional|sub2|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~3_combout\ = (\sad_operacional|sub2|Add3~1\ & (\sad_operacional|sub2|Add2~14_combout\ $ ((!\sad_operacional|sub2|Add2~2_combout\)))) # (!\sad_operacional|sub2|Add3~1\ & ((\sad_operacional|sub2|Add2~14_combout\ $ 
-- (\sad_operacional|sub2|Add2~2_combout\)) # (GND)))
-- \sad_operacional|sub2|Add3~4\ = CARRY((\sad_operacional|sub2|Add2~14_combout\ $ (!\sad_operacional|sub2|Add2~2_combout\)) # (!\sad_operacional|sub2|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~14_combout\,
	datab => \sad_operacional|sub2|Add2~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~1\,
	combout => \sad_operacional|sub2|Add3~3_combout\,
	cout => \sad_operacional|sub2|Add3~4\);

-- Location: LCCOMB_X24_Y20_N2
\sad_operacional|sub2|Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~5_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add1~2_combout\)) # (!\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add1~2_combout\,
	datad => \sad_operacional|sub2|Add3~3_combout\,
	combout => \sad_operacional|sub2|Add3~5_combout\);

-- Location: LCCOMB_X24_Y20_N12
\sad_operacional|soma8Bits2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~2_combout\ = (\sad_operacional|sub3|Add3~5_combout\ & ((\sad_operacional|sub2|Add3~5_combout\ & (\sad_operacional|soma8Bits2|Add0~1\ & VCC)) # (!\sad_operacional|sub2|Add3~5_combout\ & 
-- (!\sad_operacional|soma8Bits2|Add0~1\)))) # (!\sad_operacional|sub3|Add3~5_combout\ & ((\sad_operacional|sub2|Add3~5_combout\ & (!\sad_operacional|soma8Bits2|Add0~1\)) # (!\sad_operacional|sub2|Add3~5_combout\ & ((\sad_operacional|soma8Bits2|Add0~1\) # 
-- (GND)))))
-- \sad_operacional|soma8Bits2|Add0~3\ = CARRY((\sad_operacional|sub3|Add3~5_combout\ & (!\sad_operacional|sub2|Add3~5_combout\ & !\sad_operacional|soma8Bits2|Add0~1\)) # (!\sad_operacional|sub3|Add3~5_combout\ & ((!\sad_operacional|soma8Bits2|Add0~1\) # 
-- (!\sad_operacional|sub2|Add3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~5_combout\,
	datab => \sad_operacional|sub2|Add3~5_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~1\,
	combout => \sad_operacional|soma8Bits2|Add0~2_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~3\);

-- Location: LCCOMB_X22_Y21_N6
\sad_operacional|sub0|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~2_combout\ = (\sad_operacional|sub0|Add1~1\ & (\sad_operacional|sub0|Add0~14_combout\ $ ((!\sad_operacional|sub0|Add0~2_combout\)))) # (!\sad_operacional|sub0|Add1~1\ & ((\sad_operacional|sub0|Add0~14_combout\ $ 
-- (\sad_operacional|sub0|Add0~2_combout\)) # (GND)))
-- \sad_operacional|sub0|Add1~3\ = CARRY((\sad_operacional|sub0|Add0~14_combout\ $ (!\sad_operacional|sub0|Add0~2_combout\)) # (!\sad_operacional|sub0|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~14_combout\,
	datab => \sad_operacional|sub0|Add0~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~1\,
	combout => \sad_operacional|sub0|Add1~2_combout\,
	cout => \sad_operacional|sub0|Add1~3\);

-- Location: LCCOMB_X23_Y21_N4
\sad_operacional|sub0|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~3_combout\ = (\sad_operacional|sub0|Add3~1\ & (\sad_operacional|sub0|Add2~14_combout\ $ ((!\sad_operacional|sub0|Add2~2_combout\)))) # (!\sad_operacional|sub0|Add3~1\ & ((\sad_operacional|sub0|Add2~14_combout\ $ 
-- (\sad_operacional|sub0|Add2~2_combout\)) # (GND)))
-- \sad_operacional|sub0|Add3~4\ = CARRY((\sad_operacional|sub0|Add2~14_combout\ $ (!\sad_operacional|sub0|Add2~2_combout\)) # (!\sad_operacional|sub0|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|Add2~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~1\,
	combout => \sad_operacional|sub0|Add3~3_combout\,
	cout => \sad_operacional|sub0|Add3~4\);

-- Location: LCCOMB_X22_Y21_N24
\sad_operacional|sub0|Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~5_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~2_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add1~2_combout\,
	datac => \sad_operacional|sub0|LessThan0~14_combout\,
	datad => \sad_operacional|sub0|Add3~3_combout\,
	combout => \sad_operacional|sub0|Add3~5_combout\);

-- Location: LCCOMB_X21_Y20_N8
\sad_operacional|sub1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~2_combout\ = (\sad_operacional|sub1|Add1~1\ & (\sad_operacional|sub1|Add0~14_combout\ $ ((!\sad_operacional|sub1|Add0~2_combout\)))) # (!\sad_operacional|sub1|Add1~1\ & ((\sad_operacional|sub1|Add0~14_combout\ $ 
-- (\sad_operacional|sub1|Add0~2_combout\)) # (GND)))
-- \sad_operacional|sub1|Add1~3\ = CARRY((\sad_operacional|sub1|Add0~14_combout\ $ (!\sad_operacional|sub1|Add0~2_combout\)) # (!\sad_operacional|sub1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~14_combout\,
	datab => \sad_operacional|sub1|Add0~2_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~1\,
	combout => \sad_operacional|sub1|Add1~2_combout\,
	cout => \sad_operacional|sub1|Add1~3\);

-- Location: LCCOMB_X22_Y20_N2
\sad_operacional|sub1|Add3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~3_combout\ = (\sad_operacional|sub1|Add3~1\ & (\sad_operacional|sub1|Add2~2_combout\ $ ((!\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~1\ & ((\sad_operacional|sub1|Add2~2_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub1|Add3~4\ = CARRY((\sad_operacional|sub1|Add2~2_combout\ $ (!\sad_operacional|sub1|Add2~14_combout\)) # (!\sad_operacional|sub1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~2_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~1\,
	combout => \sad_operacional|sub1|Add3~3_combout\,
	cout => \sad_operacional|sub1|Add3~4\);

-- Location: LCCOMB_X23_Y20_N28
\sad_operacional|sub1|Add3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~5_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add1~2_combout\)) # (!\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add1~2_combout\,
	datad => \sad_operacional|sub1|Add3~3_combout\,
	combout => \sad_operacional|sub1|Add3~5_combout\);

-- Location: LCCOMB_X23_Y20_N10
\sad_operacional|soma8Bits1|result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[1]~2_combout\ = (\sad_operacional|sub0|Add3~5_combout\ & ((\sad_operacional|sub1|Add3~5_combout\ & (\sad_operacional|soma8Bits1|result[0]~1\ & VCC)) # (!\sad_operacional|sub1|Add3~5_combout\ & 
-- (!\sad_operacional|soma8Bits1|result[0]~1\)))) # (!\sad_operacional|sub0|Add3~5_combout\ & ((\sad_operacional|sub1|Add3~5_combout\ & (!\sad_operacional|soma8Bits1|result[0]~1\)) # (!\sad_operacional|sub1|Add3~5_combout\ & 
-- ((\sad_operacional|soma8Bits1|result[0]~1\) # (GND)))))
-- \sad_operacional|soma8Bits1|result[1]~3\ = CARRY((\sad_operacional|sub0|Add3~5_combout\ & (!\sad_operacional|sub1|Add3~5_combout\ & !\sad_operacional|soma8Bits1|result[0]~1\)) # (!\sad_operacional|sub0|Add3~5_combout\ & 
-- ((!\sad_operacional|soma8Bits1|result[0]~1\) # (!\sad_operacional|sub1|Add3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add3~5_combout\,
	datab => \sad_operacional|sub1|Add3~5_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[0]~1\,
	combout => \sad_operacional|soma8Bits1|result[1]~2_combout\,
	cout => \sad_operacional|soma8Bits1|result[1]~3\);

-- Location: LCCOMB_X25_Y20_N6
\sad_operacional|soma9Bits|result[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[1]~2_combout\ = (\sad_operacional|soma8Bits2|Add0~2_combout\ & ((\sad_operacional|soma8Bits1|result[1]~2_combout\ & (\sad_operacional|soma9Bits|result[0]~1\ & VCC)) # (!\sad_operacional|soma8Bits1|result[1]~2_combout\ & 
-- (!\sad_operacional|soma9Bits|result[0]~1\)))) # (!\sad_operacional|soma8Bits2|Add0~2_combout\ & ((\sad_operacional|soma8Bits1|result[1]~2_combout\ & (!\sad_operacional|soma9Bits|result[0]~1\)) # (!\sad_operacional|soma8Bits1|result[1]~2_combout\ & 
-- ((\sad_operacional|soma9Bits|result[0]~1\) # (GND)))))
-- \sad_operacional|soma9Bits|result[1]~3\ = CARRY((\sad_operacional|soma8Bits2|Add0~2_combout\ & (!\sad_operacional|soma8Bits1|result[1]~2_combout\ & !\sad_operacional|soma9Bits|result[0]~1\)) # (!\sad_operacional|soma8Bits2|Add0~2_combout\ & 
-- ((!\sad_operacional|soma9Bits|result[0]~1\) # (!\sad_operacional|soma8Bits1|result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits2|Add0~2_combout\,
	datab => \sad_operacional|soma8Bits1|result[1]~2_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[0]~1\,
	combout => \sad_operacional|soma9Bits|result[1]~2_combout\,
	cout => \sad_operacional|soma9Bits|result[1]~3\);

-- Location: LCCOMB_X26_Y20_N4
\sad_operacional|soma|Q[1]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[1]~16_combout\ = (\sad_operacional|soma|Q\(1) & ((\sad_operacional|soma9Bits|result[1]~2_combout\ & (\sad_operacional|soma|Q[0]~15\ & VCC)) # (!\sad_operacional|soma9Bits|result[1]~2_combout\ & (!\sad_operacional|soma|Q[0]~15\)))) 
-- # (!\sad_operacional|soma|Q\(1) & ((\sad_operacional|soma9Bits|result[1]~2_combout\ & (!\sad_operacional|soma|Q[0]~15\)) # (!\sad_operacional|soma9Bits|result[1]~2_combout\ & ((\sad_operacional|soma|Q[0]~15\) # (GND)))))
-- \sad_operacional|soma|Q[1]~17\ = CARRY((\sad_operacional|soma|Q\(1) & (!\sad_operacional|soma9Bits|result[1]~2_combout\ & !\sad_operacional|soma|Q[0]~15\)) # (!\sad_operacional|soma|Q\(1) & ((!\sad_operacional|soma|Q[0]~15\) # 
-- (!\sad_operacional|soma9Bits|result[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(1),
	datab => \sad_operacional|soma9Bits|result[1]~2_combout\,
	datad => VCC,
	cin => \sad_operacional|soma|Q[0]~15\,
	combout => \sad_operacional|soma|Q[1]~16_combout\,
	cout => \sad_operacional|soma|Q[1]~17\);

-- Location: FF_X26_Y20_N5
\sad_operacional|soma|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[1]~16_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(1));

-- Location: FF_X29_Y20_N25
\sad_operacional|SAD_reg|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(1));

-- Location: LCCOMB_X28_Y20_N16
\sad_operacional|sub3|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~6_combout\ = (\sad_operacional|sub3|Add3~4\ & ((\sad_operacional|sub3|Add2~4_combout\ $ (\sad_operacional|sub3|Add2~14_combout\)))) # (!\sad_operacional|sub3|Add3~4\ & (\sad_operacional|sub3|Add2~4_combout\ $ 
-- (\sad_operacional|sub3|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add3~7\ = CARRY((!\sad_operacional|sub3|Add3~4\ & (\sad_operacional|sub3|Add2~4_combout\ $ (\sad_operacional|sub3|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~4_combout\,
	datab => \sad_operacional|sub3|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~4\,
	combout => \sad_operacional|sub3|Add3~6_combout\,
	cout => \sad_operacional|sub3|Add3~7\);

-- Location: LCCOMB_X29_Y20_N4
\sad_operacional|sub3|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~4_combout\ = (\sad_operacional|sub3|Add1~3\ & ((\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~4_combout\)))) # (!\sad_operacional|sub3|Add1~3\ & (\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~4_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add1~5\ = CARRY((!\sad_operacional|sub3|Add1~3\ & (\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~4_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~3\,
	combout => \sad_operacional|sub3|Add1~4_combout\,
	cout => \sad_operacional|sub3|Add1~5\);

-- Location: LCCOMB_X28_Y20_N4
\sad_operacional|sub3|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~8_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add1~4_combout\))) # (!\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub3|Add3~6_combout\,
	datac => \sad_operacional|sub3|LessThan0~14_combout\,
	datad => \sad_operacional|sub3|Add1~4_combout\,
	combout => \sad_operacional|sub3|Add3~8_combout\);

-- Location: LCCOMB_X25_Y22_N20
\sad_operacional|sub2|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~6_combout\ = (\sad_operacional|sub2|Add3~4\ & ((\sad_operacional|sub2|Add2~14_combout\ $ (\sad_operacional|sub2|Add2~4_combout\)))) # (!\sad_operacional|sub2|Add3~4\ & (\sad_operacional|sub2|Add2~14_combout\ $ 
-- (\sad_operacional|sub2|Add2~4_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add3~7\ = CARRY((!\sad_operacional|sub2|Add3~4\ & (\sad_operacional|sub2|Add2~14_combout\ $ (\sad_operacional|sub2|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~14_combout\,
	datab => \sad_operacional|sub2|Add2~4_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~4\,
	combout => \sad_operacional|sub2|Add3~6_combout\,
	cout => \sad_operacional|sub2|Add3~7\);

-- Location: LCCOMB_X24_Y22_N20
\sad_operacional|sub2|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~4_combout\ = (\sad_operacional|sub2|Add1~3\ & ((\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~4_combout\)))) # (!\sad_operacional|sub2|Add1~3\ & (\sad_operacional|sub2|Add0~14_combout\ $ 
-- (\sad_operacional|sub2|Add0~4_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add1~5\ = CARRY((!\sad_operacional|sub2|Add1~3\ & (\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~14_combout\,
	datab => \sad_operacional|sub2|Add0~4_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~3\,
	combout => \sad_operacional|sub2|Add1~4_combout\,
	cout => \sad_operacional|sub2|Add1~5\);

-- Location: LCCOMB_X24_Y20_N4
\sad_operacional|sub2|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~8_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add1~4_combout\))) # (!\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add3~6_combout\,
	datad => \sad_operacional|sub2|Add1~4_combout\,
	combout => \sad_operacional|sub2|Add3~8_combout\);

-- Location: LCCOMB_X24_Y20_N14
\sad_operacional|soma8Bits2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~4_combout\ = ((\sad_operacional|sub3|Add3~8_combout\ $ (\sad_operacional|sub2|Add3~8_combout\ $ (!\sad_operacional|soma8Bits2|Add0~3\)))) # (GND)
-- \sad_operacional|soma8Bits2|Add0~5\ = CARRY((\sad_operacional|sub3|Add3~8_combout\ & ((\sad_operacional|sub2|Add3~8_combout\) # (!\sad_operacional|soma8Bits2|Add0~3\))) # (!\sad_operacional|sub3|Add3~8_combout\ & (\sad_operacional|sub2|Add3~8_combout\ & 
-- !\sad_operacional|soma8Bits2|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~8_combout\,
	datab => \sad_operacional|sub2|Add3~8_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~3\,
	combout => \sad_operacional|soma8Bits2|Add0~4_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~5\);

-- Location: LCCOMB_X22_Y21_N8
\sad_operacional|sub0|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~4_combout\ = (\sad_operacional|sub0|Add1~3\ & ((\sad_operacional|sub0|Add0~14_combout\ $ (\sad_operacional|sub0|Add0~4_combout\)))) # (!\sad_operacional|sub0|Add1~3\ & (\sad_operacional|sub0|Add0~14_combout\ $ 
-- (\sad_operacional|sub0|Add0~4_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add1~5\ = CARRY((!\sad_operacional|sub0|Add1~3\ & (\sad_operacional|sub0|Add0~14_combout\ $ (\sad_operacional|sub0|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~14_combout\,
	datab => \sad_operacional|sub0|Add0~4_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~3\,
	combout => \sad_operacional|sub0|Add1~4_combout\,
	cout => \sad_operacional|sub0|Add1~5\);

-- Location: LCCOMB_X23_Y21_N6
\sad_operacional|sub0|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~6_combout\ = (\sad_operacional|sub0|Add3~4\ & ((\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~4_combout\)))) # (!\sad_operacional|sub0|Add3~4\ & (\sad_operacional|sub0|Add2~14_combout\ $ 
-- (\sad_operacional|sub0|Add2~4_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add3~7\ = CARRY((!\sad_operacional|sub0|Add3~4\ & (\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|Add2~4_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~4\,
	combout => \sad_operacional|sub0|Add3~6_combout\,
	cout => \sad_operacional|sub0|Add3~7\);

-- Location: LCCOMB_X22_Y21_N30
\sad_operacional|sub0|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~8_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~4_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add1~4_combout\,
	datad => \sad_operacional|sub0|Add3~6_combout\,
	combout => \sad_operacional|sub0|Add3~8_combout\);

-- Location: LCCOMB_X22_Y20_N4
\sad_operacional|sub1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~6_combout\ = (\sad_operacional|sub1|Add3~4\ & ((\sad_operacional|sub1|Add2~4_combout\ $ (\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~4\ & (\sad_operacional|sub1|Add2~4_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add3~7\ = CARRY((!\sad_operacional|sub1|Add3~4\ & (\sad_operacional|sub1|Add2~4_combout\ $ (\sad_operacional|sub1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~4_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~4\,
	combout => \sad_operacional|sub1|Add3~6_combout\,
	cout => \sad_operacional|sub1|Add3~7\);

-- Location: LCCOMB_X21_Y20_N10
\sad_operacional|sub1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~4_combout\ = (\sad_operacional|sub1|Add1~3\ & ((\sad_operacional|sub1|Add0~4_combout\ $ (\sad_operacional|sub1|Add0~14_combout\)))) # (!\sad_operacional|sub1|Add1~3\ & (\sad_operacional|sub1|Add0~4_combout\ $ 
-- (\sad_operacional|sub1|Add0~14_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add1~5\ = CARRY((!\sad_operacional|sub1|Add1~3\ & (\sad_operacional|sub1|Add0~4_combout\ $ (\sad_operacional|sub1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~4_combout\,
	datab => \sad_operacional|sub1|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~3\,
	combout => \sad_operacional|sub1|Add1~4_combout\,
	cout => \sad_operacional|sub1|Add1~5\);

-- Location: LCCOMB_X22_Y20_N22
\sad_operacional|sub1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~8_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add1~4_combout\))) # (!\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add3~6_combout\,
	datad => \sad_operacional|sub1|Add1~4_combout\,
	combout => \sad_operacional|sub1|Add3~8_combout\);

-- Location: LCCOMB_X23_Y20_N12
\sad_operacional|soma8Bits1|result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[2]~4_combout\ = ((\sad_operacional|sub0|Add3~8_combout\ $ (\sad_operacional|sub1|Add3~8_combout\ $ (!\sad_operacional|soma8Bits1|result[1]~3\)))) # (GND)
-- \sad_operacional|soma8Bits1|result[2]~5\ = CARRY((\sad_operacional|sub0|Add3~8_combout\ & ((\sad_operacional|sub1|Add3~8_combout\) # (!\sad_operacional|soma8Bits1|result[1]~3\))) # (!\sad_operacional|sub0|Add3~8_combout\ & 
-- (\sad_operacional|sub1|Add3~8_combout\ & !\sad_operacional|soma8Bits1|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add3~8_combout\,
	datab => \sad_operacional|sub1|Add3~8_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[1]~3\,
	combout => \sad_operacional|soma8Bits1|result[2]~4_combout\,
	cout => \sad_operacional|soma8Bits1|result[2]~5\);

-- Location: LCCOMB_X25_Y20_N8
\sad_operacional|soma9Bits|result[2]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[2]~4_combout\ = ((\sad_operacional|soma8Bits2|Add0~4_combout\ $ (\sad_operacional|soma8Bits1|result[2]~4_combout\ $ (!\sad_operacional|soma9Bits|result[1]~3\)))) # (GND)
-- \sad_operacional|soma9Bits|result[2]~5\ = CARRY((\sad_operacional|soma8Bits2|Add0~4_combout\ & ((\sad_operacional|soma8Bits1|result[2]~4_combout\) # (!\sad_operacional|soma9Bits|result[1]~3\))) # (!\sad_operacional|soma8Bits2|Add0~4_combout\ & 
-- (\sad_operacional|soma8Bits1|result[2]~4_combout\ & !\sad_operacional|soma9Bits|result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits2|Add0~4_combout\,
	datab => \sad_operacional|soma8Bits1|result[2]~4_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[1]~3\,
	combout => \sad_operacional|soma9Bits|result[2]~4_combout\,
	cout => \sad_operacional|soma9Bits|result[2]~5\);

-- Location: LCCOMB_X26_Y20_N6
\sad_operacional|soma|Q[2]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[2]~18_combout\ = ((\sad_operacional|soma9Bits|result[2]~4_combout\ $ (\sad_operacional|soma|Q\(2) $ (!\sad_operacional|soma|Q[1]~17\)))) # (GND)
-- \sad_operacional|soma|Q[2]~19\ = CARRY((\sad_operacional|soma9Bits|result[2]~4_combout\ & ((\sad_operacional|soma|Q\(2)) # (!\sad_operacional|soma|Q[1]~17\))) # (!\sad_operacional|soma9Bits|result[2]~4_combout\ & (\sad_operacional|soma|Q\(2) & 
-- !\sad_operacional|soma|Q[1]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma9Bits|result[2]~4_combout\,
	datab => \sad_operacional|soma|Q\(2),
	datad => VCC,
	cin => \sad_operacional|soma|Q[1]~17\,
	combout => \sad_operacional|soma|Q[2]~18_combout\,
	cout => \sad_operacional|soma|Q[2]~19\);

-- Location: FF_X26_Y20_N7
\sad_operacional|soma|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[2]~18_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(2));

-- Location: LCCOMB_X26_Y20_N0
\sad_operacional|SAD_reg|Q[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[2]~feeder_combout\ = \sad_operacional|soma|Q\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(2),
	combout => \sad_operacional|SAD_reg|Q[2]~feeder_combout\);

-- Location: FF_X26_Y20_N1
\sad_operacional|SAD_reg|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(2));

-- Location: LCCOMB_X28_Y20_N18
\sad_operacional|sub3|Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~9_combout\ = (\sad_operacional|sub3|Add3~7\ & (\sad_operacional|sub3|Add2~14_combout\ $ ((!\sad_operacional|sub3|Add2~6_combout\)))) # (!\sad_operacional|sub3|Add3~7\ & ((\sad_operacional|sub3|Add2~14_combout\ $ 
-- (\sad_operacional|sub3|Add2~6_combout\)) # (GND)))
-- \sad_operacional|sub3|Add3~10\ = CARRY((\sad_operacional|sub3|Add2~14_combout\ $ (!\sad_operacional|sub3|Add2~6_combout\)) # (!\sad_operacional|sub3|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~14_combout\,
	datab => \sad_operacional|sub3|Add2~6_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~7\,
	combout => \sad_operacional|sub3|Add3~9_combout\,
	cout => \sad_operacional|sub3|Add3~10\);

-- Location: LCCOMB_X29_Y20_N6
\sad_operacional|sub3|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~6_combout\ = (\sad_operacional|sub3|Add1~5\ & (\sad_operacional|sub3|Add0~14_combout\ $ ((!\sad_operacional|sub3|Add0~6_combout\)))) # (!\sad_operacional|sub3|Add1~5\ & ((\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~6_combout\)) # (GND)))
-- \sad_operacional|sub3|Add1~7\ = CARRY((\sad_operacional|sub3|Add0~14_combout\ $ (!\sad_operacional|sub3|Add0~6_combout\)) # (!\sad_operacional|sub3|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~6_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~5\,
	combout => \sad_operacional|sub3|Add1~6_combout\,
	cout => \sad_operacional|sub3|Add1~7\);

-- Location: LCCOMB_X28_Y20_N6
\sad_operacional|sub3|Add3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~11_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add1~6_combout\))) # (!\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub3|Add3~9_combout\,
	datac => \sad_operacional|sub3|LessThan0~14_combout\,
	datad => \sad_operacional|sub3|Add1~6_combout\,
	combout => \sad_operacional|sub3|Add3~11_combout\);

-- Location: LCCOMB_X24_Y22_N22
\sad_operacional|sub2|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~6_combout\ = (\sad_operacional|sub2|Add1~5\ & (\sad_operacional|sub2|Add0~6_combout\ $ ((!\sad_operacional|sub2|Add0~14_combout\)))) # (!\sad_operacional|sub2|Add1~5\ & ((\sad_operacional|sub2|Add0~6_combout\ $ 
-- (\sad_operacional|sub2|Add0~14_combout\)) # (GND)))
-- \sad_operacional|sub2|Add1~7\ = CARRY((\sad_operacional|sub2|Add0~6_combout\ $ (!\sad_operacional|sub2|Add0~14_combout\)) # (!\sad_operacional|sub2|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~6_combout\,
	datab => \sad_operacional|sub2|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~5\,
	combout => \sad_operacional|sub2|Add1~6_combout\,
	cout => \sad_operacional|sub2|Add1~7\);

-- Location: LCCOMB_X25_Y22_N22
\sad_operacional|sub2|Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~9_combout\ = (\sad_operacional|sub2|Add3~7\ & (\sad_operacional|sub2|Add2~14_combout\ $ ((!\sad_operacional|sub2|Add2~6_combout\)))) # (!\sad_operacional|sub2|Add3~7\ & ((\sad_operacional|sub2|Add2~14_combout\ $ 
-- (\sad_operacional|sub2|Add2~6_combout\)) # (GND)))
-- \sad_operacional|sub2|Add3~10\ = CARRY((\sad_operacional|sub2|Add2~14_combout\ $ (!\sad_operacional|sub2|Add2~6_combout\)) # (!\sad_operacional|sub2|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~14_combout\,
	datab => \sad_operacional|sub2|Add2~6_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~7\,
	combout => \sad_operacional|sub2|Add3~9_combout\,
	cout => \sad_operacional|sub2|Add3~10\);

-- Location: LCCOMB_X25_Y20_N28
\sad_operacional|sub2|Add3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~11_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add1~6_combout\)) # (!\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add1~6_combout\,
	datad => \sad_operacional|sub2|Add3~9_combout\,
	combout => \sad_operacional|sub2|Add3~11_combout\);

-- Location: LCCOMB_X24_Y20_N16
\sad_operacional|soma8Bits2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~6_combout\ = (\sad_operacional|sub3|Add3~11_combout\ & ((\sad_operacional|sub2|Add3~11_combout\ & (\sad_operacional|soma8Bits2|Add0~5\ & VCC)) # (!\sad_operacional|sub2|Add3~11_combout\ & 
-- (!\sad_operacional|soma8Bits2|Add0~5\)))) # (!\sad_operacional|sub3|Add3~11_combout\ & ((\sad_operacional|sub2|Add3~11_combout\ & (!\sad_operacional|soma8Bits2|Add0~5\)) # (!\sad_operacional|sub2|Add3~11_combout\ & ((\sad_operacional|soma8Bits2|Add0~5\) # 
-- (GND)))))
-- \sad_operacional|soma8Bits2|Add0~7\ = CARRY((\sad_operacional|sub3|Add3~11_combout\ & (!\sad_operacional|sub2|Add3~11_combout\ & !\sad_operacional|soma8Bits2|Add0~5\)) # (!\sad_operacional|sub3|Add3~11_combout\ & ((!\sad_operacional|soma8Bits2|Add0~5\) # 
-- (!\sad_operacional|sub2|Add3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~11_combout\,
	datab => \sad_operacional|sub2|Add3~11_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~5\,
	combout => \sad_operacional|soma8Bits2|Add0~6_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~7\);

-- Location: LCCOMB_X22_Y21_N10
\sad_operacional|sub0|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~6_combout\ = (\sad_operacional|sub0|Add1~5\ & (\sad_operacional|sub0|Add0~14_combout\ $ ((!\sad_operacional|sub0|Add0~6_combout\)))) # (!\sad_operacional|sub0|Add1~5\ & ((\sad_operacional|sub0|Add0~14_combout\ $ 
-- (\sad_operacional|sub0|Add0~6_combout\)) # (GND)))
-- \sad_operacional|sub0|Add1~7\ = CARRY((\sad_operacional|sub0|Add0~14_combout\ $ (!\sad_operacional|sub0|Add0~6_combout\)) # (!\sad_operacional|sub0|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~14_combout\,
	datab => \sad_operacional|sub0|Add0~6_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~5\,
	combout => \sad_operacional|sub0|Add1~6_combout\,
	cout => \sad_operacional|sub0|Add1~7\);

-- Location: LCCOMB_X23_Y21_N8
\sad_operacional|sub0|Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~9_combout\ = (\sad_operacional|sub0|Add3~7\ & (\sad_operacional|sub0|Add2~6_combout\ $ ((!\sad_operacional|sub0|Add2~14_combout\)))) # (!\sad_operacional|sub0|Add3~7\ & ((\sad_operacional|sub0|Add2~6_combout\ $ 
-- (\sad_operacional|sub0|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub0|Add3~10\ = CARRY((\sad_operacional|sub0|Add2~6_combout\ $ (!\sad_operacional|sub0|Add2~14_combout\)) # (!\sad_operacional|sub0|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~6_combout\,
	datab => \sad_operacional|sub0|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~7\,
	combout => \sad_operacional|sub0|Add3~9_combout\,
	cout => \sad_operacional|sub0|Add3~10\);

-- Location: LCCOMB_X23_Y20_N26
\sad_operacional|sub0|Add3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~11_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~6_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add1~6_combout\,
	datab => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add3~9_combout\,
	combout => \sad_operacional|sub0|Add3~11_combout\);

-- Location: LCCOMB_X22_Y20_N6
\sad_operacional|sub1|Add3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~9_combout\ = (\sad_operacional|sub1|Add3~7\ & (\sad_operacional|sub1|Add2~6_combout\ $ ((!\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~7\ & ((\sad_operacional|sub1|Add2~6_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub1|Add3~10\ = CARRY((\sad_operacional|sub1|Add2~6_combout\ $ (!\sad_operacional|sub1|Add2~14_combout\)) # (!\sad_operacional|sub1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~6_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~7\,
	combout => \sad_operacional|sub1|Add3~9_combout\,
	cout => \sad_operacional|sub1|Add3~10\);

-- Location: LCCOMB_X21_Y20_N12
\sad_operacional|sub1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~6_combout\ = (\sad_operacional|sub1|Add1~5\ & (\sad_operacional|sub1|Add0~6_combout\ $ ((!\sad_operacional|sub1|Add0~14_combout\)))) # (!\sad_operacional|sub1|Add1~5\ & ((\sad_operacional|sub1|Add0~6_combout\ $ 
-- (\sad_operacional|sub1|Add0~14_combout\)) # (GND)))
-- \sad_operacional|sub1|Add1~7\ = CARRY((\sad_operacional|sub1|Add0~6_combout\ $ (!\sad_operacional|sub1|Add0~14_combout\)) # (!\sad_operacional|sub1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~6_combout\,
	datab => \sad_operacional|sub1|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~5\,
	combout => \sad_operacional|sub1|Add1~6_combout\,
	cout => \sad_operacional|sub1|Add1~7\);

-- Location: LCCOMB_X23_Y20_N0
\sad_operacional|sub1|Add3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~11_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add1~6_combout\))) # (!\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add3~9_combout\,
	datad => \sad_operacional|sub1|Add1~6_combout\,
	combout => \sad_operacional|sub1|Add3~11_combout\);

-- Location: LCCOMB_X23_Y20_N14
\sad_operacional|soma8Bits1|result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[3]~6_combout\ = (\sad_operacional|sub0|Add3~11_combout\ & ((\sad_operacional|sub1|Add3~11_combout\ & (\sad_operacional|soma8Bits1|result[2]~5\ & VCC)) # (!\sad_operacional|sub1|Add3~11_combout\ & 
-- (!\sad_operacional|soma8Bits1|result[2]~5\)))) # (!\sad_operacional|sub0|Add3~11_combout\ & ((\sad_operacional|sub1|Add3~11_combout\ & (!\sad_operacional|soma8Bits1|result[2]~5\)) # (!\sad_operacional|sub1|Add3~11_combout\ & 
-- ((\sad_operacional|soma8Bits1|result[2]~5\) # (GND)))))
-- \sad_operacional|soma8Bits1|result[3]~7\ = CARRY((\sad_operacional|sub0|Add3~11_combout\ & (!\sad_operacional|sub1|Add3~11_combout\ & !\sad_operacional|soma8Bits1|result[2]~5\)) # (!\sad_operacional|sub0|Add3~11_combout\ & 
-- ((!\sad_operacional|soma8Bits1|result[2]~5\) # (!\sad_operacional|sub1|Add3~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add3~11_combout\,
	datab => \sad_operacional|sub1|Add3~11_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[2]~5\,
	combout => \sad_operacional|soma8Bits1|result[3]~6_combout\,
	cout => \sad_operacional|soma8Bits1|result[3]~7\);

-- Location: LCCOMB_X25_Y20_N10
\sad_operacional|soma9Bits|result[3]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[3]~6_combout\ = (\sad_operacional|soma8Bits2|Add0~6_combout\ & ((\sad_operacional|soma8Bits1|result[3]~6_combout\ & (\sad_operacional|soma9Bits|result[2]~5\ & VCC)) # (!\sad_operacional|soma8Bits1|result[3]~6_combout\ & 
-- (!\sad_operacional|soma9Bits|result[2]~5\)))) # (!\sad_operacional|soma8Bits2|Add0~6_combout\ & ((\sad_operacional|soma8Bits1|result[3]~6_combout\ & (!\sad_operacional|soma9Bits|result[2]~5\)) # (!\sad_operacional|soma8Bits1|result[3]~6_combout\ & 
-- ((\sad_operacional|soma9Bits|result[2]~5\) # (GND)))))
-- \sad_operacional|soma9Bits|result[3]~7\ = CARRY((\sad_operacional|soma8Bits2|Add0~6_combout\ & (!\sad_operacional|soma8Bits1|result[3]~6_combout\ & !\sad_operacional|soma9Bits|result[2]~5\)) # (!\sad_operacional|soma8Bits2|Add0~6_combout\ & 
-- ((!\sad_operacional|soma9Bits|result[2]~5\) # (!\sad_operacional|soma8Bits1|result[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits2|Add0~6_combout\,
	datab => \sad_operacional|soma8Bits1|result[3]~6_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[2]~5\,
	combout => \sad_operacional|soma9Bits|result[3]~6_combout\,
	cout => \sad_operacional|soma9Bits|result[3]~7\);

-- Location: LCCOMB_X26_Y20_N8
\sad_operacional|soma|Q[3]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[3]~20_combout\ = (\sad_operacional|soma9Bits|result[3]~6_combout\ & ((\sad_operacional|soma|Q\(3) & (\sad_operacional|soma|Q[2]~19\ & VCC)) # (!\sad_operacional|soma|Q\(3) & (!\sad_operacional|soma|Q[2]~19\)))) # 
-- (!\sad_operacional|soma9Bits|result[3]~6_combout\ & ((\sad_operacional|soma|Q\(3) & (!\sad_operacional|soma|Q[2]~19\)) # (!\sad_operacional|soma|Q\(3) & ((\sad_operacional|soma|Q[2]~19\) # (GND)))))
-- \sad_operacional|soma|Q[3]~21\ = CARRY((\sad_operacional|soma9Bits|result[3]~6_combout\ & (!\sad_operacional|soma|Q\(3) & !\sad_operacional|soma|Q[2]~19\)) # (!\sad_operacional|soma9Bits|result[3]~6_combout\ & ((!\sad_operacional|soma|Q[2]~19\) # 
-- (!\sad_operacional|soma|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma9Bits|result[3]~6_combout\,
	datab => \sad_operacional|soma|Q\(3),
	datad => VCC,
	cin => \sad_operacional|soma|Q[2]~19\,
	combout => \sad_operacional|soma|Q[3]~20_combout\,
	cout => \sad_operacional|soma|Q[3]~21\);

-- Location: FF_X26_Y20_N9
\sad_operacional|soma|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[3]~20_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(3));

-- Location: LCCOMB_X26_Y18_N0
\sad_operacional|SAD_reg|Q[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[3]~feeder_combout\ = \sad_operacional|soma|Q\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(3),
	combout => \sad_operacional|SAD_reg|Q[3]~feeder_combout\);

-- Location: FF_X26_Y18_N1
\sad_operacional|SAD_reg|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(3));

-- Location: LCCOMB_X23_Y21_N10
\sad_operacional|sub0|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~12_combout\ = (\sad_operacional|sub0|Add3~10\ & ((\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~8_combout\)))) # (!\sad_operacional|sub0|Add3~10\ & (\sad_operacional|sub0|Add2~14_combout\ $ 
-- (\sad_operacional|sub0|Add2~8_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add3~13\ = CARRY((!\sad_operacional|sub0|Add3~10\ & (\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|Add2~8_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~10\,
	combout => \sad_operacional|sub0|Add3~12_combout\,
	cout => \sad_operacional|sub0|Add3~13\);

-- Location: LCCOMB_X22_Y21_N12
\sad_operacional|sub0|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~8_combout\ = (\sad_operacional|sub0|Add1~7\ & ((\sad_operacional|sub0|Add0~8_combout\ $ (\sad_operacional|sub0|Add0~14_combout\)))) # (!\sad_operacional|sub0|Add1~7\ & (\sad_operacional|sub0|Add0~8_combout\ $ 
-- (\sad_operacional|sub0|Add0~14_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add1~9\ = CARRY((!\sad_operacional|sub0|Add1~7\ & (\sad_operacional|sub0|Add0~8_combout\ $ (\sad_operacional|sub0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~8_combout\,
	datab => \sad_operacional|sub0|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~7\,
	combout => \sad_operacional|sub0|Add1~8_combout\,
	cout => \sad_operacional|sub0|Add1~9\);

-- Location: LCCOMB_X22_Y21_N28
\sad_operacional|sub0|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~14_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add1~8_combout\))) # (!\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add3~12_combout\,
	datad => \sad_operacional|sub0|Add1~8_combout\,
	combout => \sad_operacional|sub0|Add3~14_combout\);

-- Location: LCCOMB_X21_Y20_N14
\sad_operacional|sub1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~8_combout\ = (\sad_operacional|sub1|Add1~7\ & ((\sad_operacional|sub1|Add0~14_combout\ $ (\sad_operacional|sub1|Add0~8_combout\)))) # (!\sad_operacional|sub1|Add1~7\ & (\sad_operacional|sub1|Add0~14_combout\ $ 
-- (\sad_operacional|sub1|Add0~8_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add1~9\ = CARRY((!\sad_operacional|sub1|Add1~7\ & (\sad_operacional|sub1|Add0~14_combout\ $ (\sad_operacional|sub1|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~14_combout\,
	datab => \sad_operacional|sub1|Add0~8_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~7\,
	combout => \sad_operacional|sub1|Add1~8_combout\,
	cout => \sad_operacional|sub1|Add1~9\);

-- Location: LCCOMB_X22_Y20_N8
\sad_operacional|sub1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~12_combout\ = (\sad_operacional|sub1|Add3~10\ & ((\sad_operacional|sub1|Add2~8_combout\ $ (\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~10\ & (\sad_operacional|sub1|Add2~8_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add3~13\ = CARRY((!\sad_operacional|sub1|Add3~10\ & (\sad_operacional|sub1|Add2~8_combout\ $ (\sad_operacional|sub1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~8_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~10\,
	combout => \sad_operacional|sub1|Add3~12_combout\,
	cout => \sad_operacional|sub1|Add3~13\);

-- Location: LCCOMB_X23_Y20_N2
\sad_operacional|sub1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~14_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add1~8_combout\)) # (!\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add1~8_combout\,
	datad => \sad_operacional|sub1|Add3~12_combout\,
	combout => \sad_operacional|sub1|Add3~14_combout\);

-- Location: LCCOMB_X23_Y20_N16
\sad_operacional|soma8Bits1|result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[4]~8_combout\ = ((\sad_operacional|sub0|Add3~14_combout\ $ (\sad_operacional|sub1|Add3~14_combout\ $ (!\sad_operacional|soma8Bits1|result[3]~7\)))) # (GND)
-- \sad_operacional|soma8Bits1|result[4]~9\ = CARRY((\sad_operacional|sub0|Add3~14_combout\ & ((\sad_operacional|sub1|Add3~14_combout\) # (!\sad_operacional|soma8Bits1|result[3]~7\))) # (!\sad_operacional|sub0|Add3~14_combout\ & 
-- (\sad_operacional|sub1|Add3~14_combout\ & !\sad_operacional|soma8Bits1|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add3~14_combout\,
	datab => \sad_operacional|sub1|Add3~14_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[3]~7\,
	combout => \sad_operacional|soma8Bits1|result[4]~8_combout\,
	cout => \sad_operacional|soma8Bits1|result[4]~9\);

-- Location: LCCOMB_X24_Y22_N24
\sad_operacional|sub2|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~8_combout\ = (\sad_operacional|sub2|Add1~7\ & ((\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~8_combout\)))) # (!\sad_operacional|sub2|Add1~7\ & (\sad_operacional|sub2|Add0~14_combout\ $ 
-- (\sad_operacional|sub2|Add0~8_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add1~9\ = CARRY((!\sad_operacional|sub2|Add1~7\ & (\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~14_combout\,
	datab => \sad_operacional|sub2|Add0~8_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~7\,
	combout => \sad_operacional|sub2|Add1~8_combout\,
	cout => \sad_operacional|sub2|Add1~9\);

-- Location: LCCOMB_X25_Y22_N24
\sad_operacional|sub2|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~12_combout\ = (\sad_operacional|sub2|Add3~10\ & ((\sad_operacional|sub2|Add2~8_combout\ $ (\sad_operacional|sub2|Add2~14_combout\)))) # (!\sad_operacional|sub2|Add3~10\ & (\sad_operacional|sub2|Add2~8_combout\ $ 
-- (\sad_operacional|sub2|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add3~13\ = CARRY((!\sad_operacional|sub2|Add3~10\ & (\sad_operacional|sub2|Add2~8_combout\ $ (\sad_operacional|sub2|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~8_combout\,
	datab => \sad_operacional|sub2|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~10\,
	combout => \sad_operacional|sub2|Add3~12_combout\,
	cout => \sad_operacional|sub2|Add3~13\);

-- Location: LCCOMB_X24_Y20_N30
\sad_operacional|sub2|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~14_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add1~8_combout\)) # (!\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add1~8_combout\,
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add3~12_combout\,
	combout => \sad_operacional|sub2|Add3~14_combout\);

-- Location: LCCOMB_X28_Y20_N20
\sad_operacional|sub3|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~12_combout\ = (\sad_operacional|sub3|Add3~10\ & ((\sad_operacional|sub3|Add2~8_combout\ $ (\sad_operacional|sub3|Add2~14_combout\)))) # (!\sad_operacional|sub3|Add3~10\ & (\sad_operacional|sub3|Add2~8_combout\ $ 
-- (\sad_operacional|sub3|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add3~13\ = CARRY((!\sad_operacional|sub3|Add3~10\ & (\sad_operacional|sub3|Add2~8_combout\ $ (\sad_operacional|sub3|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~8_combout\,
	datab => \sad_operacional|sub3|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~10\,
	combout => \sad_operacional|sub3|Add3~12_combout\,
	cout => \sad_operacional|sub3|Add3~13\);

-- Location: LCCOMB_X29_Y20_N8
\sad_operacional|sub3|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~8_combout\ = (\sad_operacional|sub3|Add1~7\ & ((\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~8_combout\)))) # (!\sad_operacional|sub3|Add1~7\ & (\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~8_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add1~9\ = CARRY((!\sad_operacional|sub3|Add1~7\ & (\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~8_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~7\,
	combout => \sad_operacional|sub3|Add1~8_combout\,
	cout => \sad_operacional|sub3|Add1~9\);

-- Location: LCCOMB_X24_Y20_N0
\sad_operacional|sub3|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~14_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add1~8_combout\))) # (!\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub3|LessThan0~14_combout\,
	datac => \sad_operacional|sub3|Add3~12_combout\,
	datad => \sad_operacional|sub3|Add1~8_combout\,
	combout => \sad_operacional|sub3|Add3~14_combout\);

-- Location: LCCOMB_X24_Y20_N18
\sad_operacional|soma8Bits2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~8_combout\ = ((\sad_operacional|sub2|Add3~14_combout\ $ (\sad_operacional|sub3|Add3~14_combout\ $ (!\sad_operacional|soma8Bits2|Add0~7\)))) # (GND)
-- \sad_operacional|soma8Bits2|Add0~9\ = CARRY((\sad_operacional|sub2|Add3~14_combout\ & ((\sad_operacional|sub3|Add3~14_combout\) # (!\sad_operacional|soma8Bits2|Add0~7\))) # (!\sad_operacional|sub2|Add3~14_combout\ & (\sad_operacional|sub3|Add3~14_combout\ 
-- & !\sad_operacional|soma8Bits2|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add3~14_combout\,
	datab => \sad_operacional|sub3|Add3~14_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~7\,
	combout => \sad_operacional|soma8Bits2|Add0~8_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~9\);

-- Location: LCCOMB_X25_Y20_N12
\sad_operacional|soma9Bits|result[4]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[4]~8_combout\ = ((\sad_operacional|soma8Bits1|result[4]~8_combout\ $ (\sad_operacional|soma8Bits2|Add0~8_combout\ $ (!\sad_operacional|soma9Bits|result[3]~7\)))) # (GND)
-- \sad_operacional|soma9Bits|result[4]~9\ = CARRY((\sad_operacional|soma8Bits1|result[4]~8_combout\ & ((\sad_operacional|soma8Bits2|Add0~8_combout\) # (!\sad_operacional|soma9Bits|result[3]~7\))) # (!\sad_operacional|soma8Bits1|result[4]~8_combout\ & 
-- (\sad_operacional|soma8Bits2|Add0~8_combout\ & !\sad_operacional|soma9Bits|result[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits1|result[4]~8_combout\,
	datab => \sad_operacional|soma8Bits2|Add0~8_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[3]~7\,
	combout => \sad_operacional|soma9Bits|result[4]~8_combout\,
	cout => \sad_operacional|soma9Bits|result[4]~9\);

-- Location: LCCOMB_X26_Y20_N10
\sad_operacional|soma|Q[4]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[4]~22_combout\ = ((\sad_operacional|soma9Bits|result[4]~8_combout\ $ (\sad_operacional|soma|Q\(4) $ (!\sad_operacional|soma|Q[3]~21\)))) # (GND)
-- \sad_operacional|soma|Q[4]~23\ = CARRY((\sad_operacional|soma9Bits|result[4]~8_combout\ & ((\sad_operacional|soma|Q\(4)) # (!\sad_operacional|soma|Q[3]~21\))) # (!\sad_operacional|soma9Bits|result[4]~8_combout\ & (\sad_operacional|soma|Q\(4) & 
-- !\sad_operacional|soma|Q[3]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma9Bits|result[4]~8_combout\,
	datab => \sad_operacional|soma|Q\(4),
	datad => VCC,
	cin => \sad_operacional|soma|Q[3]~21\,
	combout => \sad_operacional|soma|Q[4]~22_combout\,
	cout => \sad_operacional|soma|Q[4]~23\);

-- Location: FF_X26_Y20_N11
\sad_operacional|soma|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[4]~22_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(4));

-- Location: FF_X28_Y20_N11
\sad_operacional|SAD_reg|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(4));

-- Location: LCCOMB_X22_Y21_N14
\sad_operacional|sub0|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~10_combout\ = (\sad_operacional|sub0|Add1~9\ & (\sad_operacional|sub0|Add0~14_combout\ $ ((!\sad_operacional|sub0|Add0~10_combout\)))) # (!\sad_operacional|sub0|Add1~9\ & ((\sad_operacional|sub0|Add0~14_combout\ $ 
-- (\sad_operacional|sub0|Add0~10_combout\)) # (GND)))
-- \sad_operacional|sub0|Add1~11\ = CARRY((\sad_operacional|sub0|Add0~14_combout\ $ (!\sad_operacional|sub0|Add0~10_combout\)) # (!\sad_operacional|sub0|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~14_combout\,
	datab => \sad_operacional|sub0|Add0~10_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~9\,
	combout => \sad_operacional|sub0|Add1~10_combout\,
	cout => \sad_operacional|sub0|Add1~11\);

-- Location: LCCOMB_X23_Y21_N12
\sad_operacional|sub0|Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~15_combout\ = (\sad_operacional|sub0|Add3~13\ & (\sad_operacional|sub0|Add2~14_combout\ $ ((!\sad_operacional|sub0|Add2~10_combout\)))) # (!\sad_operacional|sub0|Add3~13\ & ((\sad_operacional|sub0|Add2~14_combout\ $ 
-- (\sad_operacional|sub0|Add2~10_combout\)) # (GND)))
-- \sad_operacional|sub0|Add3~16\ = CARRY((\sad_operacional|sub0|Add2~14_combout\ $ (!\sad_operacional|sub0|Add2~10_combout\)) # (!\sad_operacional|sub0|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|Add2~10_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~13\,
	combout => \sad_operacional|sub0|Add3~15_combout\,
	cout => \sad_operacional|sub0|Add3~16\);

-- Location: LCCOMB_X23_Y20_N6
\sad_operacional|sub0|Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~17_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~10_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add1~10_combout\,
	datad => \sad_operacional|sub0|Add3~15_combout\,
	combout => \sad_operacional|sub0|Add3~17_combout\);

-- Location: LCCOMB_X21_Y20_N16
\sad_operacional|sub1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~10_combout\ = (\sad_operacional|sub1|Add1~9\ & (\sad_operacional|sub1|Add0~10_combout\ $ ((!\sad_operacional|sub1|Add0~14_combout\)))) # (!\sad_operacional|sub1|Add1~9\ & ((\sad_operacional|sub1|Add0~10_combout\ $ 
-- (\sad_operacional|sub1|Add0~14_combout\)) # (GND)))
-- \sad_operacional|sub1|Add1~11\ = CARRY((\sad_operacional|sub1|Add0~10_combout\ $ (!\sad_operacional|sub1|Add0~14_combout\)) # (!\sad_operacional|sub1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~10_combout\,
	datab => \sad_operacional|sub1|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~9\,
	combout => \sad_operacional|sub1|Add1~10_combout\,
	cout => \sad_operacional|sub1|Add1~11\);

-- Location: LCCOMB_X22_Y20_N10
\sad_operacional|sub1|Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~15_combout\ = (\sad_operacional|sub1|Add3~13\ & (\sad_operacional|sub1|Add2~10_combout\ $ ((!\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~13\ & ((\sad_operacional|sub1|Add2~10_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub1|Add3~16\ = CARRY((\sad_operacional|sub1|Add2~10_combout\ $ (!\sad_operacional|sub1|Add2~14_combout\)) # (!\sad_operacional|sub1|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~10_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~13\,
	combout => \sad_operacional|sub1|Add3~15_combout\,
	cout => \sad_operacional|sub1|Add3~16\);

-- Location: LCCOMB_X22_Y20_N24
\sad_operacional|sub1|Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~17_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add1~10_combout\)) # (!\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add1~10_combout\,
	datad => \sad_operacional|sub1|Add3~15_combout\,
	combout => \sad_operacional|sub1|Add3~17_combout\);

-- Location: LCCOMB_X23_Y20_N18
\sad_operacional|soma8Bits1|result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[5]~10_combout\ = (\sad_operacional|sub0|Add3~17_combout\ & ((\sad_operacional|sub1|Add3~17_combout\ & (\sad_operacional|soma8Bits1|result[4]~9\ & VCC)) # (!\sad_operacional|sub1|Add3~17_combout\ & 
-- (!\sad_operacional|soma8Bits1|result[4]~9\)))) # (!\sad_operacional|sub0|Add3~17_combout\ & ((\sad_operacional|sub1|Add3~17_combout\ & (!\sad_operacional|soma8Bits1|result[4]~9\)) # (!\sad_operacional|sub1|Add3~17_combout\ & 
-- ((\sad_operacional|soma8Bits1|result[4]~9\) # (GND)))))
-- \sad_operacional|soma8Bits1|result[5]~11\ = CARRY((\sad_operacional|sub0|Add3~17_combout\ & (!\sad_operacional|sub1|Add3~17_combout\ & !\sad_operacional|soma8Bits1|result[4]~9\)) # (!\sad_operacional|sub0|Add3~17_combout\ & 
-- ((!\sad_operacional|soma8Bits1|result[4]~9\) # (!\sad_operacional|sub1|Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add3~17_combout\,
	datab => \sad_operacional|sub1|Add3~17_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[4]~9\,
	combout => \sad_operacional|soma8Bits1|result[5]~10_combout\,
	cout => \sad_operacional|soma8Bits1|result[5]~11\);

-- Location: LCCOMB_X29_Y20_N10
\sad_operacional|sub3|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~10_combout\ = (\sad_operacional|sub3|Add1~9\ & (\sad_operacional|sub3|Add0~14_combout\ $ ((!\sad_operacional|sub3|Add0~10_combout\)))) # (!\sad_operacional|sub3|Add1~9\ & ((\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~10_combout\)) # (GND)))
-- \sad_operacional|sub3|Add1~11\ = CARRY((\sad_operacional|sub3|Add0~14_combout\ $ (!\sad_operacional|sub3|Add0~10_combout\)) # (!\sad_operacional|sub3|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~10_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~9\,
	combout => \sad_operacional|sub3|Add1~10_combout\,
	cout => \sad_operacional|sub3|Add1~11\);

-- Location: LCCOMB_X28_Y20_N22
\sad_operacional|sub3|Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~15_combout\ = (\sad_operacional|sub3|Add3~13\ & (\sad_operacional|sub3|Add2~10_combout\ $ ((!\sad_operacional|sub3|Add2~14_combout\)))) # (!\sad_operacional|sub3|Add3~13\ & ((\sad_operacional|sub3|Add2~10_combout\ $ 
-- (\sad_operacional|sub3|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub3|Add3~16\ = CARRY((\sad_operacional|sub3|Add2~10_combout\ $ (!\sad_operacional|sub3|Add2~14_combout\)) # (!\sad_operacional|sub3|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~10_combout\,
	datab => \sad_operacional|sub3|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~13\,
	combout => \sad_operacional|sub3|Add3~15_combout\,
	cout => \sad_operacional|sub3|Add3~16\);

-- Location: LCCOMB_X28_Y20_N8
\sad_operacional|sub3|Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~17_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add1~10_combout\)) # (!\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|LessThan0~14_combout\,
	datac => \sad_operacional|sub3|Add1~10_combout\,
	datad => \sad_operacional|sub3|Add3~15_combout\,
	combout => \sad_operacional|sub3|Add3~17_combout\);

-- Location: LCCOMB_X24_Y22_N26
\sad_operacional|sub2|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~10_combout\ = (\sad_operacional|sub2|Add1~9\ & (\sad_operacional|sub2|Add0~10_combout\ $ ((!\sad_operacional|sub2|Add0~14_combout\)))) # (!\sad_operacional|sub2|Add1~9\ & ((\sad_operacional|sub2|Add0~10_combout\ $ 
-- (\sad_operacional|sub2|Add0~14_combout\)) # (GND)))
-- \sad_operacional|sub2|Add1~11\ = CARRY((\sad_operacional|sub2|Add0~10_combout\ $ (!\sad_operacional|sub2|Add0~14_combout\)) # (!\sad_operacional|sub2|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~10_combout\,
	datab => \sad_operacional|sub2|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~9\,
	combout => \sad_operacional|sub2|Add1~10_combout\,
	cout => \sad_operacional|sub2|Add1~11\);

-- Location: LCCOMB_X25_Y22_N26
\sad_operacional|sub2|Add3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~15_combout\ = (\sad_operacional|sub2|Add3~13\ & (\sad_operacional|sub2|Add2~10_combout\ $ ((!\sad_operacional|sub2|Add2~14_combout\)))) # (!\sad_operacional|sub2|Add3~13\ & ((\sad_operacional|sub2|Add2~10_combout\ $ 
-- (\sad_operacional|sub2|Add2~14_combout\)) # (GND)))
-- \sad_operacional|sub2|Add3~16\ = CARRY((\sad_operacional|sub2|Add2~10_combout\ $ (!\sad_operacional|sub2|Add2~14_combout\)) # (!\sad_operacional|sub2|Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~10_combout\,
	datab => \sad_operacional|sub2|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~13\,
	combout => \sad_operacional|sub2|Add3~15_combout\,
	cout => \sad_operacional|sub2|Add3~16\);

-- Location: LCCOMB_X24_Y20_N28
\sad_operacional|sub2|Add3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~17_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add1~10_combout\)) # (!\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add3~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|LessThan0~14_combout\,
	datab => \sad_operacional|sub2|Add1~10_combout\,
	datad => \sad_operacional|sub2|Add3~15_combout\,
	combout => \sad_operacional|sub2|Add3~17_combout\);

-- Location: LCCOMB_X24_Y20_N20
\sad_operacional|soma8Bits2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~10_combout\ = (\sad_operacional|sub3|Add3~17_combout\ & ((\sad_operacional|sub2|Add3~17_combout\ & (\sad_operacional|soma8Bits2|Add0~9\ & VCC)) # (!\sad_operacional|sub2|Add3~17_combout\ & 
-- (!\sad_operacional|soma8Bits2|Add0~9\)))) # (!\sad_operacional|sub3|Add3~17_combout\ & ((\sad_operacional|sub2|Add3~17_combout\ & (!\sad_operacional|soma8Bits2|Add0~9\)) # (!\sad_operacional|sub2|Add3~17_combout\ & ((\sad_operacional|soma8Bits2|Add0~9\) # 
-- (GND)))))
-- \sad_operacional|soma8Bits2|Add0~11\ = CARRY((\sad_operacional|sub3|Add3~17_combout\ & (!\sad_operacional|sub2|Add3~17_combout\ & !\sad_operacional|soma8Bits2|Add0~9\)) # (!\sad_operacional|sub3|Add3~17_combout\ & ((!\sad_operacional|soma8Bits2|Add0~9\) # 
-- (!\sad_operacional|sub2|Add3~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~17_combout\,
	datab => \sad_operacional|sub2|Add3~17_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~9\,
	combout => \sad_operacional|soma8Bits2|Add0~10_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~11\);

-- Location: LCCOMB_X25_Y20_N14
\sad_operacional|soma9Bits|result[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[5]~10_combout\ = (\sad_operacional|soma8Bits1|result[5]~10_combout\ & ((\sad_operacional|soma8Bits2|Add0~10_combout\ & (\sad_operacional|soma9Bits|result[4]~9\ & VCC)) # (!\sad_operacional|soma8Bits2|Add0~10_combout\ & 
-- (!\sad_operacional|soma9Bits|result[4]~9\)))) # (!\sad_operacional|soma8Bits1|result[5]~10_combout\ & ((\sad_operacional|soma8Bits2|Add0~10_combout\ & (!\sad_operacional|soma9Bits|result[4]~9\)) # (!\sad_operacional|soma8Bits2|Add0~10_combout\ & 
-- ((\sad_operacional|soma9Bits|result[4]~9\) # (GND)))))
-- \sad_operacional|soma9Bits|result[5]~11\ = CARRY((\sad_operacional|soma8Bits1|result[5]~10_combout\ & (!\sad_operacional|soma8Bits2|Add0~10_combout\ & !\sad_operacional|soma9Bits|result[4]~9\)) # (!\sad_operacional|soma8Bits1|result[5]~10_combout\ & 
-- ((!\sad_operacional|soma9Bits|result[4]~9\) # (!\sad_operacional|soma8Bits2|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits1|result[5]~10_combout\,
	datab => \sad_operacional|soma8Bits2|Add0~10_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[4]~9\,
	combout => \sad_operacional|soma9Bits|result[5]~10_combout\,
	cout => \sad_operacional|soma9Bits|result[5]~11\);

-- Location: LCCOMB_X26_Y20_N12
\sad_operacional|soma|Q[5]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[5]~24_combout\ = (\sad_operacional|soma9Bits|result[5]~10_combout\ & ((\sad_operacional|soma|Q\(5) & (\sad_operacional|soma|Q[4]~23\ & VCC)) # (!\sad_operacional|soma|Q\(5) & (!\sad_operacional|soma|Q[4]~23\)))) # 
-- (!\sad_operacional|soma9Bits|result[5]~10_combout\ & ((\sad_operacional|soma|Q\(5) & (!\sad_operacional|soma|Q[4]~23\)) # (!\sad_operacional|soma|Q\(5) & ((\sad_operacional|soma|Q[4]~23\) # (GND)))))
-- \sad_operacional|soma|Q[5]~25\ = CARRY((\sad_operacional|soma9Bits|result[5]~10_combout\ & (!\sad_operacional|soma|Q\(5) & !\sad_operacional|soma|Q[4]~23\)) # (!\sad_operacional|soma9Bits|result[5]~10_combout\ & ((!\sad_operacional|soma|Q[4]~23\) # 
-- (!\sad_operacional|soma|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma9Bits|result[5]~10_combout\,
	datab => \sad_operacional|soma|Q\(5),
	datad => VCC,
	cin => \sad_operacional|soma|Q[4]~23\,
	combout => \sad_operacional|soma|Q[5]~24_combout\,
	cout => \sad_operacional|soma|Q[5]~25\);

-- Location: FF_X26_Y20_N13
\sad_operacional|soma|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[5]~24_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(5));

-- Location: FF_X29_Y20_N31
\sad_operacional|SAD_reg|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(5));

-- Location: LCCOMB_X21_Y20_N18
\sad_operacional|sub1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~12_combout\ = (\sad_operacional|sub1|Add1~11\ & ((\sad_operacional|sub1|Add0~12_combout\ $ (\sad_operacional|sub1|Add0~14_combout\)))) # (!\sad_operacional|sub1|Add1~11\ & (\sad_operacional|sub1|Add0~12_combout\ $ 
-- (\sad_operacional|sub1|Add0~14_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add1~13\ = CARRY((!\sad_operacional|sub1|Add1~11\ & (\sad_operacional|sub1|Add0~12_combout\ $ (\sad_operacional|sub1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add0~12_combout\,
	datab => \sad_operacional|sub1|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add1~11\,
	combout => \sad_operacional|sub1|Add1~12_combout\,
	cout => \sad_operacional|sub1|Add1~13\);

-- Location: LCCOMB_X22_Y20_N12
\sad_operacional|sub1|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~18_combout\ = (\sad_operacional|sub1|Add3~16\ & ((\sad_operacional|sub1|Add2~12_combout\ $ (\sad_operacional|sub1|Add2~14_combout\)))) # (!\sad_operacional|sub1|Add3~16\ & (\sad_operacional|sub1|Add2~12_combout\ $ 
-- (\sad_operacional|sub1|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub1|Add3~19\ = CARRY((!\sad_operacional|sub1|Add3~16\ & (\sad_operacional|sub1|Add2~12_combout\ $ (\sad_operacional|sub1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add2~12_combout\,
	datab => \sad_operacional|sub1|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub1|Add3~16\,
	combout => \sad_operacional|sub1|Add3~18_combout\,
	cout => \sad_operacional|sub1|Add3~19\);

-- Location: LCCOMB_X23_Y20_N30
\sad_operacional|sub1|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~20_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add1~12_combout\)) # (!\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add1~12_combout\,
	datad => \sad_operacional|sub1|Add3~18_combout\,
	combout => \sad_operacional|sub1|Add3~20_combout\);

-- Location: LCCOMB_X23_Y21_N14
\sad_operacional|sub0|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~18_combout\ = (\sad_operacional|sub0|Add3~16\ & ((\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~12_combout\)))) # (!\sad_operacional|sub0|Add3~16\ & (\sad_operacional|sub0|Add2~14_combout\ $ 
-- (\sad_operacional|sub0|Add2~12_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add3~19\ = CARRY((!\sad_operacional|sub0|Add3~16\ & (\sad_operacional|sub0|Add2~14_combout\ $ (\sad_operacional|sub0|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add2~14_combout\,
	datab => \sad_operacional|sub0|Add2~12_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add3~16\,
	combout => \sad_operacional|sub0|Add3~18_combout\,
	cout => \sad_operacional|sub0|Add3~19\);

-- Location: LCCOMB_X22_Y21_N16
\sad_operacional|sub0|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~12_combout\ = (\sad_operacional|sub0|Add1~11\ & ((\sad_operacional|sub0|Add0~12_combout\ $ (\sad_operacional|sub0|Add0~14_combout\)))) # (!\sad_operacional|sub0|Add1~11\ & (\sad_operacional|sub0|Add0~12_combout\ $ 
-- (\sad_operacional|sub0|Add0~14_combout\ $ (VCC))))
-- \sad_operacional|sub0|Add1~13\ = CARRY((!\sad_operacional|sub0|Add1~11\ & (\sad_operacional|sub0|Add0~12_combout\ $ (\sad_operacional|sub0|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|Add0~12_combout\,
	datab => \sad_operacional|sub0|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub0|Add1~11\,
	combout => \sad_operacional|sub0|Add1~12_combout\,
	cout => \sad_operacional|sub0|Add1~13\);

-- Location: LCCOMB_X23_Y20_N4
\sad_operacional|sub0|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~20_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add1~12_combout\))) # (!\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub0|LessThan0~14_combout\,
	datac => \sad_operacional|sub0|Add3~18_combout\,
	datad => \sad_operacional|sub0|Add1~12_combout\,
	combout => \sad_operacional|sub0|Add3~20_combout\);

-- Location: LCCOMB_X23_Y20_N20
\sad_operacional|soma8Bits1|result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[6]~12_combout\ = ((\sad_operacional|sub1|Add3~20_combout\ $ (\sad_operacional|sub0|Add3~20_combout\ $ (!\sad_operacional|soma8Bits1|result[5]~11\)))) # (GND)
-- \sad_operacional|soma8Bits1|result[6]~13\ = CARRY((\sad_operacional|sub1|Add3~20_combout\ & ((\sad_operacional|sub0|Add3~20_combout\) # (!\sad_operacional|soma8Bits1|result[5]~11\))) # (!\sad_operacional|sub1|Add3~20_combout\ & 
-- (\sad_operacional|sub0|Add3~20_combout\ & !\sad_operacional|soma8Bits1|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add3~20_combout\,
	datab => \sad_operacional|sub0|Add3~20_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[5]~11\,
	combout => \sad_operacional|soma8Bits1|result[6]~12_combout\,
	cout => \sad_operacional|soma8Bits1|result[6]~13\);

-- Location: LCCOMB_X24_Y22_N28
\sad_operacional|sub2|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~12_combout\ = (\sad_operacional|sub2|Add1~11\ & ((\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~12_combout\)))) # (!\sad_operacional|sub2|Add1~11\ & (\sad_operacional|sub2|Add0~14_combout\ $ 
-- (\sad_operacional|sub2|Add0~12_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add1~13\ = CARRY((!\sad_operacional|sub2|Add1~11\ & (\sad_operacional|sub2|Add0~14_combout\ $ (\sad_operacional|sub2|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add0~14_combout\,
	datab => \sad_operacional|sub2|Add0~12_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add1~11\,
	combout => \sad_operacional|sub2|Add1~12_combout\,
	cout => \sad_operacional|sub2|Add1~13\);

-- Location: LCCOMB_X25_Y22_N28
\sad_operacional|sub2|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~18_combout\ = (\sad_operacional|sub2|Add3~16\ & ((\sad_operacional|sub2|Add2~12_combout\ $ (\sad_operacional|sub2|Add2~14_combout\)))) # (!\sad_operacional|sub2|Add3~16\ & (\sad_operacional|sub2|Add2~12_combout\ $ 
-- (\sad_operacional|sub2|Add2~14_combout\ $ (VCC))))
-- \sad_operacional|sub2|Add3~19\ = CARRY((!\sad_operacional|sub2|Add3~16\ & (\sad_operacional|sub2|Add2~12_combout\ $ (\sad_operacional|sub2|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add2~12_combout\,
	datab => \sad_operacional|sub2|Add2~14_combout\,
	datad => VCC,
	cin => \sad_operacional|sub2|Add3~16\,
	combout => \sad_operacional|sub2|Add3~18_combout\,
	cout => \sad_operacional|sub2|Add3~19\);

-- Location: LCCOMB_X24_Y20_N6
\sad_operacional|sub2|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~20_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add1~12_combout\)) # (!\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add1~12_combout\,
	datad => \sad_operacional|sub2|Add3~18_combout\,
	combout => \sad_operacional|sub2|Add3~20_combout\);

-- Location: LCCOMB_X29_Y20_N12
\sad_operacional|sub3|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~12_combout\ = (\sad_operacional|sub3|Add1~11\ & ((\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~12_combout\)))) # (!\sad_operacional|sub3|Add1~11\ & (\sad_operacional|sub3|Add0~14_combout\ $ 
-- (\sad_operacional|sub3|Add0~12_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add1~13\ = CARRY((!\sad_operacional|sub3|Add1~11\ & (\sad_operacional|sub3|Add0~14_combout\ $ (\sad_operacional|sub3|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add0~14_combout\,
	datab => \sad_operacional|sub3|Add0~12_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add1~11\,
	combout => \sad_operacional|sub3|Add1~12_combout\,
	cout => \sad_operacional|sub3|Add1~13\);

-- Location: LCCOMB_X28_Y20_N24
\sad_operacional|sub3|Add3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~18_combout\ = (\sad_operacional|sub3|Add3~16\ & ((\sad_operacional|sub3|Add2~14_combout\ $ (\sad_operacional|sub3|Add2~12_combout\)))) # (!\sad_operacional|sub3|Add3~16\ & (\sad_operacional|sub3|Add2~14_combout\ $ 
-- (\sad_operacional|sub3|Add2~12_combout\ $ (VCC))))
-- \sad_operacional|sub3|Add3~19\ = CARRY((!\sad_operacional|sub3|Add3~16\ & (\sad_operacional|sub3|Add2~14_combout\ $ (\sad_operacional|sub3|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100000110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add2~14_combout\,
	datab => \sad_operacional|sub3|Add2~12_combout\,
	datad => VCC,
	cin => \sad_operacional|sub3|Add3~16\,
	combout => \sad_operacional|sub3|Add3~18_combout\,
	cout => \sad_operacional|sub3|Add3~19\);

-- Location: LCCOMB_X28_Y20_N2
\sad_operacional|sub3|Add3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~20_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add1~12_combout\)) # (!\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|LessThan0~14_combout\,
	datac => \sad_operacional|sub3|Add1~12_combout\,
	datad => \sad_operacional|sub3|Add3~18_combout\,
	combout => \sad_operacional|sub3|Add3~20_combout\);

-- Location: LCCOMB_X24_Y20_N22
\sad_operacional|soma8Bits2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~12_combout\ = ((\sad_operacional|sub2|Add3~20_combout\ $ (\sad_operacional|sub3|Add3~20_combout\ $ (!\sad_operacional|soma8Bits2|Add0~11\)))) # (GND)
-- \sad_operacional|soma8Bits2|Add0~13\ = CARRY((\sad_operacional|sub2|Add3~20_combout\ & ((\sad_operacional|sub3|Add3~20_combout\) # (!\sad_operacional|soma8Bits2|Add0~11\))) # (!\sad_operacional|sub2|Add3~20_combout\ & 
-- (\sad_operacional|sub3|Add3~20_combout\ & !\sad_operacional|soma8Bits2|Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add3~20_combout\,
	datab => \sad_operacional|sub3|Add3~20_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~11\,
	combout => \sad_operacional|soma8Bits2|Add0~12_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~13\);

-- Location: LCCOMB_X25_Y20_N16
\sad_operacional|soma9Bits|result[6]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[6]~12_combout\ = ((\sad_operacional|soma8Bits1|result[6]~12_combout\ $ (\sad_operacional|soma8Bits2|Add0~12_combout\ $ (!\sad_operacional|soma9Bits|result[5]~11\)))) # (GND)
-- \sad_operacional|soma9Bits|result[6]~13\ = CARRY((\sad_operacional|soma8Bits1|result[6]~12_combout\ & ((\sad_operacional|soma8Bits2|Add0~12_combout\) # (!\sad_operacional|soma9Bits|result[5]~11\))) # (!\sad_operacional|soma8Bits1|result[6]~12_combout\ & 
-- (\sad_operacional|soma8Bits2|Add0~12_combout\ & !\sad_operacional|soma9Bits|result[5]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits1|result[6]~12_combout\,
	datab => \sad_operacional|soma8Bits2|Add0~12_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[5]~11\,
	combout => \sad_operacional|soma9Bits|result[6]~12_combout\,
	cout => \sad_operacional|soma9Bits|result[6]~13\);

-- Location: LCCOMB_X26_Y20_N14
\sad_operacional|soma|Q[6]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[6]~26_combout\ = ((\sad_operacional|soma9Bits|result[6]~12_combout\ $ (\sad_operacional|soma|Q\(6) $ (!\sad_operacional|soma|Q[5]~25\)))) # (GND)
-- \sad_operacional|soma|Q[6]~27\ = CARRY((\sad_operacional|soma9Bits|result[6]~12_combout\ & ((\sad_operacional|soma|Q\(6)) # (!\sad_operacional|soma|Q[5]~25\))) # (!\sad_operacional|soma9Bits|result[6]~12_combout\ & (\sad_operacional|soma|Q\(6) & 
-- !\sad_operacional|soma|Q[5]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma9Bits|result[6]~12_combout\,
	datab => \sad_operacional|soma|Q\(6),
	datad => VCC,
	cin => \sad_operacional|soma|Q[5]~25\,
	combout => \sad_operacional|soma|Q[6]~26_combout\,
	cout => \sad_operacional|soma|Q[6]~27\);

-- Location: FF_X26_Y20_N15
\sad_operacional|soma|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[6]~26_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(6));

-- Location: FF_X22_Y20_N29
\sad_operacional|SAD_reg|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(6));

-- Location: LCCOMB_X22_Y20_N14
\sad_operacional|sub1|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~21_combout\ = \sad_operacional|sub1|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub1|Add3~19\,
	combout => \sad_operacional|sub1|Add3~21_combout\);

-- Location: LCCOMB_X21_Y20_N20
\sad_operacional|sub1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add1~14_combout\ = \sad_operacional|sub1|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub1|Add1~13\,
	combout => \sad_operacional|sub1|Add1~14_combout\);

-- Location: LCCOMB_X22_Y20_N26
\sad_operacional|sub1|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub1|Add3~23_combout\ = (\sad_operacional|sub1|LessThan0~14_combout\ & ((\sad_operacional|sub1|Add1~14_combout\))) # (!\sad_operacional|sub1|LessThan0~14_combout\ & (\sad_operacional|sub1|Add3~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|LessThan0~14_combout\,
	datac => \sad_operacional|sub1|Add3~21_combout\,
	datad => \sad_operacional|sub1|Add1~14_combout\,
	combout => \sad_operacional|sub1|Add3~23_combout\);

-- Location: LCCOMB_X22_Y21_N18
\sad_operacional|sub0|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add1~14_combout\ = \sad_operacional|sub0|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub0|Add1~13\,
	combout => \sad_operacional|sub0|Add1~14_combout\);

-- Location: LCCOMB_X23_Y21_N16
\sad_operacional|sub0|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~21_combout\ = \sad_operacional|sub0|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub0|Add3~19\,
	combout => \sad_operacional|sub0|Add3~21_combout\);

-- Location: LCCOMB_X22_Y21_N22
\sad_operacional|sub0|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub0|Add3~23_combout\ = (\sad_operacional|sub0|LessThan0~14_combout\ & (\sad_operacional|sub0|Add1~14_combout\)) # (!\sad_operacional|sub0|LessThan0~14_combout\ & ((\sad_operacional|sub0|Add3~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub0|LessThan0~14_combout\,
	datab => \sad_operacional|sub0|Add1~14_combout\,
	datad => \sad_operacional|sub0|Add3~21_combout\,
	combout => \sad_operacional|sub0|Add3~23_combout\);

-- Location: LCCOMB_X23_Y20_N22
\sad_operacional|soma8Bits1|result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[7]~14_combout\ = (\sad_operacional|sub1|Add3~23_combout\ & ((\sad_operacional|sub0|Add3~23_combout\ & (\sad_operacional|soma8Bits1|result[6]~13\ & VCC)) # (!\sad_operacional|sub0|Add3~23_combout\ & 
-- (!\sad_operacional|soma8Bits1|result[6]~13\)))) # (!\sad_operacional|sub1|Add3~23_combout\ & ((\sad_operacional|sub0|Add3~23_combout\ & (!\sad_operacional|soma8Bits1|result[6]~13\)) # (!\sad_operacional|sub0|Add3~23_combout\ & 
-- ((\sad_operacional|soma8Bits1|result[6]~13\) # (GND)))))
-- \sad_operacional|soma8Bits1|result[7]~15\ = CARRY((\sad_operacional|sub1|Add3~23_combout\ & (!\sad_operacional|sub0|Add3~23_combout\ & !\sad_operacional|soma8Bits1|result[6]~13\)) # (!\sad_operacional|sub1|Add3~23_combout\ & 
-- ((!\sad_operacional|soma8Bits1|result[6]~13\) # (!\sad_operacional|sub0|Add3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub1|Add3~23_combout\,
	datab => \sad_operacional|sub0|Add3~23_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits1|result[6]~13\,
	combout => \sad_operacional|soma8Bits1|result[7]~14_combout\,
	cout => \sad_operacional|soma8Bits1|result[7]~15\);

-- Location: LCCOMB_X25_Y22_N30
\sad_operacional|sub2|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~21_combout\ = \sad_operacional|sub2|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub2|Add3~19\,
	combout => \sad_operacional|sub2|Add3~21_combout\);

-- Location: LCCOMB_X24_Y22_N30
\sad_operacional|sub2|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add1~14_combout\ = \sad_operacional|sub2|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub2|Add1~13\,
	combout => \sad_operacional|sub2|Add1~14_combout\);

-- Location: LCCOMB_X25_Y20_N2
\sad_operacional|sub2|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub2|Add3~23_combout\ = (\sad_operacional|sub2|LessThan0~14_combout\ & ((\sad_operacional|sub2|Add1~14_combout\))) # (!\sad_operacional|sub2|LessThan0~14_combout\ & (\sad_operacional|sub2|Add3~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|sub2|LessThan0~14_combout\,
	datac => \sad_operacional|sub2|Add3~21_combout\,
	datad => \sad_operacional|sub2|Add1~14_combout\,
	combout => \sad_operacional|sub2|Add3~23_combout\);

-- Location: LCCOMB_X28_Y20_N26
\sad_operacional|sub3|Add3~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~21_combout\ = \sad_operacional|sub3|Add3~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub3|Add3~19\,
	combout => \sad_operacional|sub3|Add3~21_combout\);

-- Location: LCCOMB_X29_Y20_N14
\sad_operacional|sub3|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add1~14_combout\ = \sad_operacional|sub3|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|sub3|Add1~13\,
	combout => \sad_operacional|sub3|Add1~14_combout\);

-- Location: LCCOMB_X24_Y20_N8
\sad_operacional|sub3|Add3~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|sub3|Add3~23_combout\ = (\sad_operacional|sub3|LessThan0~14_combout\ & ((\sad_operacional|sub3|Add1~14_combout\))) # (!\sad_operacional|sub3|LessThan0~14_combout\ & (\sad_operacional|sub3|Add3~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub3|Add3~21_combout\,
	datab => \sad_operacional|sub3|Add1~14_combout\,
	datad => \sad_operacional|sub3|LessThan0~14_combout\,
	combout => \sad_operacional|sub3|Add3~23_combout\);

-- Location: LCCOMB_X24_Y20_N24
\sad_operacional|soma8Bits2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~14_combout\ = (\sad_operacional|sub2|Add3~23_combout\ & ((\sad_operacional|sub3|Add3~23_combout\ & (\sad_operacional|soma8Bits2|Add0~13\ & VCC)) # (!\sad_operacional|sub3|Add3~23_combout\ & 
-- (!\sad_operacional|soma8Bits2|Add0~13\)))) # (!\sad_operacional|sub2|Add3~23_combout\ & ((\sad_operacional|sub3|Add3~23_combout\ & (!\sad_operacional|soma8Bits2|Add0~13\)) # (!\sad_operacional|sub3|Add3~23_combout\ & 
-- ((\sad_operacional|soma8Bits2|Add0~13\) # (GND)))))
-- \sad_operacional|soma8Bits2|Add0~15\ = CARRY((\sad_operacional|sub2|Add3~23_combout\ & (!\sad_operacional|sub3|Add3~23_combout\ & !\sad_operacional|soma8Bits2|Add0~13\)) # (!\sad_operacional|sub2|Add3~23_combout\ & ((!\sad_operacional|soma8Bits2|Add0~13\) 
-- # (!\sad_operacional|sub3|Add3~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|sub2|Add3~23_combout\,
	datab => \sad_operacional|sub3|Add3~23_combout\,
	datad => VCC,
	cin => \sad_operacional|soma8Bits2|Add0~13\,
	combout => \sad_operacional|soma8Bits2|Add0~14_combout\,
	cout => \sad_operacional|soma8Bits2|Add0~15\);

-- Location: LCCOMB_X25_Y20_N18
\sad_operacional|soma9Bits|result[7]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[7]~14_combout\ = (\sad_operacional|soma8Bits1|result[7]~14_combout\ & ((\sad_operacional|soma8Bits2|Add0~14_combout\ & (\sad_operacional|soma9Bits|result[6]~13\ & VCC)) # (!\sad_operacional|soma8Bits2|Add0~14_combout\ & 
-- (!\sad_operacional|soma9Bits|result[6]~13\)))) # (!\sad_operacional|soma8Bits1|result[7]~14_combout\ & ((\sad_operacional|soma8Bits2|Add0~14_combout\ & (!\sad_operacional|soma9Bits|result[6]~13\)) # (!\sad_operacional|soma8Bits2|Add0~14_combout\ & 
-- ((\sad_operacional|soma9Bits|result[6]~13\) # (GND)))))
-- \sad_operacional|soma9Bits|result[7]~15\ = CARRY((\sad_operacional|soma8Bits1|result[7]~14_combout\ & (!\sad_operacional|soma8Bits2|Add0~14_combout\ & !\sad_operacional|soma9Bits|result[6]~13\)) # (!\sad_operacional|soma8Bits1|result[7]~14_combout\ & 
-- ((!\sad_operacional|soma9Bits|result[6]~13\) # (!\sad_operacional|soma8Bits2|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits1|result[7]~14_combout\,
	datab => \sad_operacional|soma8Bits2|Add0~14_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[6]~13\,
	combout => \sad_operacional|soma9Bits|result[7]~14_combout\,
	cout => \sad_operacional|soma9Bits|result[7]~15\);

-- Location: LCCOMB_X26_Y20_N16
\sad_operacional|soma|Q[7]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[7]~28_combout\ = (\sad_operacional|soma|Q\(7) & ((\sad_operacional|soma9Bits|result[7]~14_combout\ & (\sad_operacional|soma|Q[6]~27\ & VCC)) # (!\sad_operacional|soma9Bits|result[7]~14_combout\ & 
-- (!\sad_operacional|soma|Q[6]~27\)))) # (!\sad_operacional|soma|Q\(7) & ((\sad_operacional|soma9Bits|result[7]~14_combout\ & (!\sad_operacional|soma|Q[6]~27\)) # (!\sad_operacional|soma9Bits|result[7]~14_combout\ & ((\sad_operacional|soma|Q[6]~27\) # 
-- (GND)))))
-- \sad_operacional|soma|Q[7]~29\ = CARRY((\sad_operacional|soma|Q\(7) & (!\sad_operacional|soma9Bits|result[7]~14_combout\ & !\sad_operacional|soma|Q[6]~27\)) # (!\sad_operacional|soma|Q\(7) & ((!\sad_operacional|soma|Q[6]~27\) # 
-- (!\sad_operacional|soma9Bits|result[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(7),
	datab => \sad_operacional|soma9Bits|result[7]~14_combout\,
	datad => VCC,
	cin => \sad_operacional|soma|Q[6]~27\,
	combout => \sad_operacional|soma|Q[7]~28_combout\,
	cout => \sad_operacional|soma|Q[7]~29\);

-- Location: FF_X26_Y20_N17
\sad_operacional|soma|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[7]~28_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(7));

-- Location: LCCOMB_X26_Y20_N30
\sad_operacional|SAD_reg|Q[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[7]~feeder_combout\ = \sad_operacional|soma|Q\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(7),
	combout => \sad_operacional|SAD_reg|Q[7]~feeder_combout\);

-- Location: FF_X26_Y20_N31
\sad_operacional|SAD_reg|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(7));

-- Location: LCCOMB_X24_Y20_N26
\sad_operacional|soma8Bits2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits2|Add0~16_combout\ = !\sad_operacional|soma8Bits2|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|soma8Bits2|Add0~15\,
	combout => \sad_operacional|soma8Bits2|Add0~16_combout\);

-- Location: LCCOMB_X23_Y20_N24
\sad_operacional|soma8Bits1|result[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma8Bits1|result[8]~16_combout\ = !\sad_operacional|soma8Bits1|result[7]~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|soma8Bits1|result[7]~15\,
	combout => \sad_operacional|soma8Bits1|result[8]~16_combout\);

-- Location: LCCOMB_X25_Y20_N20
\sad_operacional|soma9Bits|result[8]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[8]~16_combout\ = ((\sad_operacional|soma8Bits2|Add0~16_combout\ $ (\sad_operacional|soma8Bits1|result[8]~16_combout\ $ (!\sad_operacional|soma9Bits|result[7]~15\)))) # (GND)
-- \sad_operacional|soma9Bits|result[8]~17\ = CARRY((\sad_operacional|soma8Bits2|Add0~16_combout\ & ((\sad_operacional|soma8Bits1|result[8]~16_combout\) # (!\sad_operacional|soma9Bits|result[7]~15\))) # (!\sad_operacional|soma8Bits2|Add0~16_combout\ & 
-- (\sad_operacional|soma8Bits1|result[8]~16_combout\ & !\sad_operacional|soma9Bits|result[7]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma8Bits2|Add0~16_combout\,
	datab => \sad_operacional|soma8Bits1|result[8]~16_combout\,
	datad => VCC,
	cin => \sad_operacional|soma9Bits|result[7]~15\,
	combout => \sad_operacional|soma9Bits|result[8]~16_combout\,
	cout => \sad_operacional|soma9Bits|result[8]~17\);

-- Location: LCCOMB_X26_Y20_N18
\sad_operacional|soma|Q[8]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[8]~30_combout\ = ((\sad_operacional|soma|Q\(8) $ (\sad_operacional|soma9Bits|result[8]~16_combout\ $ (!\sad_operacional|soma|Q[7]~29\)))) # (GND)
-- \sad_operacional|soma|Q[8]~31\ = CARRY((\sad_operacional|soma|Q\(8) & ((\sad_operacional|soma9Bits|result[8]~16_combout\) # (!\sad_operacional|soma|Q[7]~29\))) # (!\sad_operacional|soma|Q\(8) & (\sad_operacional|soma9Bits|result[8]~16_combout\ & 
-- !\sad_operacional|soma|Q[7]~29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(8),
	datab => \sad_operacional|soma9Bits|result[8]~16_combout\,
	datad => VCC,
	cin => \sad_operacional|soma|Q[7]~29\,
	combout => \sad_operacional|soma|Q[8]~30_combout\,
	cout => \sad_operacional|soma|Q[8]~31\);

-- Location: FF_X26_Y20_N19
\sad_operacional|soma|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[8]~30_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(8));

-- Location: LCCOMB_X26_Y18_N30
\sad_operacional|SAD_reg|Q[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[8]~feeder_combout\ = \sad_operacional|soma|Q\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(8),
	combout => \sad_operacional|SAD_reg|Q[8]~feeder_combout\);

-- Location: FF_X26_Y18_N31
\sad_operacional|SAD_reg|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(8));

-- Location: LCCOMB_X25_Y20_N22
\sad_operacional|soma9Bits|result[9]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma9Bits|result[9]~18_combout\ = \sad_operacional|soma9Bits|result[8]~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \sad_operacional|soma9Bits|result[8]~17\,
	combout => \sad_operacional|soma9Bits|result[9]~18_combout\);

-- Location: LCCOMB_X26_Y20_N20
\sad_operacional|soma|Q[9]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[9]~32_combout\ = (\sad_operacional|soma|Q\(9) & ((\sad_operacional|soma9Bits|result[9]~18_combout\ & (\sad_operacional|soma|Q[8]~31\ & VCC)) # (!\sad_operacional|soma9Bits|result[9]~18_combout\ & 
-- (!\sad_operacional|soma|Q[8]~31\)))) # (!\sad_operacional|soma|Q\(9) & ((\sad_operacional|soma9Bits|result[9]~18_combout\ & (!\sad_operacional|soma|Q[8]~31\)) # (!\sad_operacional|soma9Bits|result[9]~18_combout\ & ((\sad_operacional|soma|Q[8]~31\) # 
-- (GND)))))
-- \sad_operacional|soma|Q[9]~33\ = CARRY((\sad_operacional|soma|Q\(9) & (!\sad_operacional|soma9Bits|result[9]~18_combout\ & !\sad_operacional|soma|Q[8]~31\)) # (!\sad_operacional|soma|Q\(9) & ((!\sad_operacional|soma|Q[8]~31\) # 
-- (!\sad_operacional|soma9Bits|result[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(9),
	datab => \sad_operacional|soma9Bits|result[9]~18_combout\,
	datad => VCC,
	cin => \sad_operacional|soma|Q[8]~31\,
	combout => \sad_operacional|soma|Q[9]~32_combout\,
	cout => \sad_operacional|soma|Q[9]~33\);

-- Location: FF_X26_Y20_N21
\sad_operacional|soma|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[9]~32_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(9));

-- Location: FF_X25_Y20_N25
\sad_operacional|SAD_reg|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(9));

-- Location: LCCOMB_X26_Y20_N22
\sad_operacional|soma|Q[10]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[10]~34_combout\ = (\sad_operacional|soma|Q\(10) & (\sad_operacional|soma|Q[9]~33\ $ (GND))) # (!\sad_operacional|soma|Q\(10) & (!\sad_operacional|soma|Q[9]~33\ & VCC))
-- \sad_operacional|soma|Q[10]~35\ = CARRY((\sad_operacional|soma|Q\(10) & !\sad_operacional|soma|Q[9]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(10),
	datad => VCC,
	cin => \sad_operacional|soma|Q[9]~33\,
	combout => \sad_operacional|soma|Q[10]~34_combout\,
	cout => \sad_operacional|soma|Q[10]~35\);

-- Location: FF_X26_Y20_N23
\sad_operacional|soma|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[10]~34_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(10));

-- Location: LCCOMB_X26_Y18_N8
\sad_operacional|SAD_reg|Q[10]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[10]~feeder_combout\ = \sad_operacional|soma|Q\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(10),
	combout => \sad_operacional|SAD_reg|Q[10]~feeder_combout\);

-- Location: FF_X26_Y18_N9
\sad_operacional|SAD_reg|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(10));

-- Location: LCCOMB_X26_Y20_N24
\sad_operacional|soma|Q[11]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[11]~36_combout\ = (\sad_operacional|soma|Q\(11) & (!\sad_operacional|soma|Q[10]~35\)) # (!\sad_operacional|soma|Q\(11) & ((\sad_operacional|soma|Q[10]~35\) # (GND)))
-- \sad_operacional|soma|Q[11]~37\ = CARRY((!\sad_operacional|soma|Q[10]~35\) # (!\sad_operacional|soma|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \sad_operacional|soma|Q\(11),
	datad => VCC,
	cin => \sad_operacional|soma|Q[10]~35\,
	combout => \sad_operacional|soma|Q[11]~36_combout\,
	cout => \sad_operacional|soma|Q[11]~37\);

-- Location: FF_X26_Y20_N25
\sad_operacional|soma|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[11]~36_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(11));

-- Location: FF_X24_Y20_N9
\sad_operacional|SAD_reg|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(11));

-- Location: LCCOMB_X26_Y20_N26
\sad_operacional|soma|Q[12]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[12]~38_combout\ = (\sad_operacional|soma|Q\(12) & (\sad_operacional|soma|Q[11]~37\ $ (GND))) # (!\sad_operacional|soma|Q\(12) & (!\sad_operacional|soma|Q[11]~37\ & VCC))
-- \sad_operacional|soma|Q[12]~39\ = CARRY((\sad_operacional|soma|Q\(12) & !\sad_operacional|soma|Q[11]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sad_operacional|soma|Q\(12),
	datad => VCC,
	cin => \sad_operacional|soma|Q[11]~37\,
	combout => \sad_operacional|soma|Q[12]~38_combout\,
	cout => \sad_operacional|soma|Q[12]~39\);

-- Location: FF_X26_Y20_N27
\sad_operacional|soma|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[12]~38_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(12));

-- Location: FF_X29_Y20_N29
\sad_operacional|SAD_reg|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \sad_operacional|soma|Q\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(12));

-- Location: LCCOMB_X26_Y20_N28
\sad_operacional|soma|Q[13]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|soma|Q[13]~40_combout\ = \sad_operacional|soma|Q[12]~39\ $ (\sad_operacional|soma|Q\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(13),
	cin => \sad_operacional|soma|Q[12]~39\,
	combout => \sad_operacional|soma|Q[13]~40_combout\);

-- Location: FF_X26_Y20_N29
\sad_operacional|soma|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|soma|Q[13]~40_combout\,
	sclr => \sad_control|zi~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|soma|Q\(13));

-- Location: LCCOMB_X25_Y20_N30
\sad_operacional|SAD_reg|Q[13]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \sad_operacional|SAD_reg|Q[13]~feeder_combout\ = \sad_operacional|soma|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \sad_operacional|soma|Q\(13),
	combout => \sad_operacional|SAD_reg|Q[13]~feeder_combout\);

-- Location: FF_X25_Y20_N31
\sad_operacional|SAD_reg|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sad_operacional|SAD_reg|Q[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sad_operacional|SAD_reg|Q\(13));

ww_pronto <= \pronto~output_o\;

ww_fim(0) <= \fim[0]~output_o\;

ww_fim(1) <= \fim[1]~output_o\;

ww_fim(2) <= \fim[2]~output_o\;

ww_fim(3) <= \fim[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_result(8) <= \result[8]~output_o\;

ww_result(9) <= \result[9]~output_o\;

ww_result(10) <= \result[10]~output_o\;

ww_result(11) <= \result[11]~output_o\;

ww_result(12) <= \result[12]~output_o\;

ww_result(13) <= \result[13]~output_o\;
END structure;


