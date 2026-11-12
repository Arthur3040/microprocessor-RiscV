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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/11/2026 17:55:34"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	processador IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	estado : BUFFER std_logic_vector(1 DOWNTO 0);
	pc_out : BUFFER std_logic_vector(15 DOWNTO 0);
	instrucao : BUFFER std_logic_vector(15 DOWNTO 0);
	ula_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r0_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r1_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r2_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r3_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r4_out : BUFFER std_logic_vector(15 DOWNTO 0);
	r5_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END processador;

-- Design Ports Information
-- estado[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- estado[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[2]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[3]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[5]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[7]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[8]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[10]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[11]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[12]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[13]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[14]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pc_out[15]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[0]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[4]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[7]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[9]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[10]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[11]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[12]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[13]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[14]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- instrucao[15]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[0]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[2]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[3]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[4]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[6]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[7]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[10]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[11]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[12]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[13]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[14]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ula_out[15]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[4]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[5]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[6]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[7]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[8]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[9]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[10]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[11]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[13]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[14]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r0_out[15]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[0]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[1]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[3]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[6]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[10]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[12]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[13]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[14]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r1_out[15]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[0]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[1]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[3]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[4]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[5]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[6]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[7]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[8]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[9]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[10]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[11]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[12]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[13]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[14]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r2_out[15]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[0]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[3]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[6]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[8]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[9]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[11]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[12]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[13]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[14]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r3_out[15]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[0]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[1]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[2]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[3]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[4]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[5]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[8]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[10]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[11]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[12]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[13]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[14]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r4_out[15]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[0]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[1]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[3]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[4]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[5]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[6]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[9]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[10]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[11]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[12]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[13]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[14]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- r5_out[15]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF processador IS
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
SIGNAL ww_rst : std_logic;
SIGNAL ww_estado : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_pc_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_instrucao : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_ula_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r0_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r1_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r2_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r3_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r4_out : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_r5_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u_uc|Equal5~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \u_uc|u_maq|estado_s~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \u_uc|u_maq|estado_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_uc|pc_en~1_combout\ : std_logic;
SIGNAL \u_rom|Mux9~0_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \u_rom|Mux10~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|Mux12~0_combout\ : std_logic;
SIGNAL \u_rom|Mux13~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \s_pc_prox[4]~4_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \s_pc_prox[5]~5_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \s_pc_prox[6]~6_combout\ : std_logic;
SIGNAL \u_rom|Mux0~0_combout\ : std_logic;
SIGNAL \u_rom|Mux11~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \s_pc_prox[2]~2_combout\ : std_logic;
SIGNAL \u_pc|s_pc_at[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \s_pc_prox[3]~3_combout\ : std_logic;
SIGNAL \u_pc|s_pc_at[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|Mux3~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|Mux2~0_combout\ : std_logic;
SIGNAL \u_rom|Mux0~1_combout\ : std_logic;
SIGNAL \u_uc|Equal2~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \s_pc_prox[1]~1_combout\ : std_logic;
SIGNAL \u_pc|s_pc_at[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|Mux1~0_combout\ : std_logic;
SIGNAL \u_uc|Equal6~0_combout\ : std_logic;
SIGNAL \u_rom|Mux8~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|dado_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|dado_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_ula|flag_c~0_combout\ : std_logic;
SIGNAL \u_uc|Equal10~0_combout\ : std_logic;
SIGNAL \u_ula|saida[0]~19_combout\ : std_logic;
SIGNAL \u_rom|Mux7~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[1]~0_combout\ : std_logic;
SIGNAL \u_rom|Mux5~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|Mux6~0_combout\ : std_logic;
SIGNAL \u_rom|Mux4~0_combout\ : std_logic;
SIGNAL \u_rom|dado_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_uc|wr_en~0_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~3_combout\ : std_logic;
SIGNAL \u_uc|Equal8~0_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~5_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~0_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~1_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~4_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[13]~32_combout\ : std_logic;
SIGNAL \u_banco_reg|Equal0~2_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[13]~44_combout\ : std_logic;
SIGNAL \u_rom|dado_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \s_reg_r1[0]~0_combout\ : std_logic;
SIGNAL \s_reg_r1[2]~2_combout\ : std_logic;
SIGNAL \s_reg_r1[1]~1_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[15]~2_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[15]~1_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[12]~26_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[12]~27_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[11]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[11]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[11]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|registro[11]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[11]~24_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[11]~25_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[10]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[10]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[10]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[10]~22_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[10]~23_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[9]~27_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[9]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[9]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[9]~26_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[4]~13_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[1]~12_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[9]~28_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[8]~24_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[8]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[8]~23_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[8]~25_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[7]~21_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[7]~20_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[7]~22_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[6]~18_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[6]~17_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[6]~19_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[5]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[5]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[5]~12_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[5]~13_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[4]~11_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[4]~9_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[4]~10_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[4]~10_combout\ : std_logic;
SIGNAL \u_ula|saida[4]~30_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[4]~35_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[3]~7_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[3]~8_combout\ : std_logic;
SIGNAL \u_ula|saida[3]~6_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|registro[2]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG2|registro[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[2]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[2]~6_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[2]~7_combout\ : std_logic;
SIGNAL \u_ula|saida[2]~4_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[1]~feeder_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[1]~3_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[1]~4_combout\ : std_logic;
SIGNAL \u_ula|saida[1]~2_combout\ : std_logic;
SIGNAL \u_banco_reg|REG2|registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[0]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[0]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[0]~0_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[0]~3_combout\ : std_logic;
SIGNAL \u_ula|Add1~66_cout\ : std_logic;
SIGNAL \u_ula|Add1~1_sumout\ : std_logic;
SIGNAL \u_ula|saida[0]~0_combout\ : std_logic;
SIGNAL \u_ula|Add0~1_sumout\ : std_logic;
SIGNAL \u_ula|saida[0]~1_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[0]~0_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[0]~1_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[0]~2_combout\ : std_logic;
SIGNAL \u_ula|Add1~2\ : std_logic;
SIGNAL \u_ula|Add1~5_sumout\ : std_logic;
SIGNAL \u_ula|Add0~2\ : std_logic;
SIGNAL \u_ula|Add0~5_sumout\ : std_logic;
SIGNAL \u_ula|saida[1]~3_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[1]~1_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[1]~4_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[1]~5_combout\ : std_logic;
SIGNAL \u_ula|Add0~6\ : std_logic;
SIGNAL \u_ula|Add0~9_sumout\ : std_logic;
SIGNAL \u_ula|Add1~6\ : std_logic;
SIGNAL \u_ula|Add1~9_sumout\ : std_logic;
SIGNAL \u_ula|saida[2]~5_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[2]~2_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[2]~5_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[2]~6_combout\ : std_logic;
SIGNAL \u_ula|Add1~10\ : std_logic;
SIGNAL \u_ula|Add1~13_sumout\ : std_logic;
SIGNAL \u_ula|Add0~10\ : std_logic;
SIGNAL \u_ula|Add0~13_sumout\ : std_logic;
SIGNAL \u_ula|saida[3]~7_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[3]~3_combout\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[3]~8_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[3]~9_combout\ : std_logic;
SIGNAL \u_ula|Add1~14\ : std_logic;
SIGNAL \u_ula|Add1~17_sumout\ : std_logic;
SIGNAL \u_ula|Add0~14\ : std_logic;
SIGNAL \u_ula|Add0~17_sumout\ : std_logic;
SIGNAL \u_ula|saida[4]~8_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[4]~4_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[4]~11_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[4]~34_combout\ : std_logic;
SIGNAL \u_ula|Add1~18\ : std_logic;
SIGNAL \u_ula|Add1~21_sumout\ : std_logic;
SIGNAL \u_ula|Add0~18\ : std_logic;
SIGNAL \u_ula|Add0~21_sumout\ : std_logic;
SIGNAL \u_ula|saida[5]~20_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[5]~5_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[5]~15_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[5]~14_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[5]~16_combout\ : std_logic;
SIGNAL \u_ula|Add0~22\ : std_logic;
SIGNAL \u_ula|Add0~25_sumout\ : std_logic;
SIGNAL \u_ula|saida[6]~21_combout\ : std_logic;
SIGNAL \u_ula|Add1~22\ : std_logic;
SIGNAL \u_ula|Add1~25_sumout\ : std_logic;
SIGNAL \u_mux_write|data_out[6]~6_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[6]~14_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[6]~15_combout\ : std_logic;
SIGNAL \u_ula|Add1~26\ : std_logic;
SIGNAL \u_ula|Add1~29_sumout\ : std_logic;
SIGNAL \u_ula|Add0~26\ : std_logic;
SIGNAL \u_ula|Add0~29_sumout\ : std_logic;
SIGNAL \u_ula|saida[7]~22_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[7]~7_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[7]~16_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[7]~17_combout\ : std_logic;
SIGNAL \u_ula|Add0~30\ : std_logic;
SIGNAL \u_ula|Add0~33_sumout\ : std_logic;
SIGNAL \u_ula|saida[8]~23_combout\ : std_logic;
SIGNAL \u_ula|Add1~30\ : std_logic;
SIGNAL \u_ula|Add1~33_sumout\ : std_logic;
SIGNAL \u_mux_write|data_out[8]~8_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[8]~18_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[8]~19_combout\ : std_logic;
SIGNAL \u_ula|Add0~34\ : std_logic;
SIGNAL \u_ula|Add0~37_sumout\ : std_logic;
SIGNAL \u_ula|saida[9]~24_combout\ : std_logic;
SIGNAL \u_ula|Add1~34\ : std_logic;
SIGNAL \u_ula|Add1~37_sumout\ : std_logic;
SIGNAL \u_mux_write|data_out[9]~9_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[9]~20_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[9]~21_combout\ : std_logic;
SIGNAL \u_ula|Add1~38\ : std_logic;
SIGNAL \u_ula|Add1~41_sumout\ : std_logic;
SIGNAL \u_ula|Add0~38\ : std_logic;
SIGNAL \u_ula|Add0~41_sumout\ : std_logic;
SIGNAL \u_ula|saida[10]~25_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[10]~10_combout\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[10]~29_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[10]~56_combout\ : std_logic;
SIGNAL \u_ula|Add1~42\ : std_logic;
SIGNAL \u_ula|Add1~45_sumout\ : std_logic;
SIGNAL \u_ula|Add0~42\ : std_logic;
SIGNAL \u_ula|Add0~45_sumout\ : std_logic;
SIGNAL \u_ula|saida[11]~26_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[11]~11_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[11]~30_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[11]~52_combout\ : std_logic;
SIGNAL \u_ula|Add1~46\ : std_logic;
SIGNAL \u_ula|Add1~49_sumout\ : std_logic;
SIGNAL \u_ula|Add0~46\ : std_logic;
SIGNAL \u_ula|Add0~49_sumout\ : std_logic;
SIGNAL \u_ula|saida[12]~27_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[12]~12_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|registro[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[12]~31_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[12]~48_combout\ : std_logic;
SIGNAL \u_ula|Add0~50\ : std_logic;
SIGNAL \u_ula|Add0~53_sumout\ : std_logic;
SIGNAL \u_ula|saida[13]~28_combout\ : std_logic;
SIGNAL \u_ula|Add1~50\ : std_logic;
SIGNAL \u_ula|Add1~53_sumout\ : std_logic;
SIGNAL \u_mux_write|data_out[13]~13_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[13]~28_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[13]~29_combout\ : std_logic;
SIGNAL \u_ula|saida[13]~17_combout\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[14]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[14]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[14]~feeder_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[14]~33_combout\ : std_logic;
SIGNAL \u_banco_reg|REG2|registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[14]~40_combout\ : std_logic;
SIGNAL \u_ula|Add1~54\ : std_logic;
SIGNAL \u_ula|Add1~57_sumout\ : std_logic;
SIGNAL \u_ula|Add0~54\ : std_logic;
SIGNAL \u_ula|Add0~57_sumout\ : std_logic;
SIGNAL \u_ula|saida[14]~29_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[14]~14_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|data_r1[14]~30_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[14]~31_combout\ : std_logic;
SIGNAL \u_ula|saida[14]~18_combout\ : std_logic;
SIGNAL \u_banco_reg|REG3|registro[15]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG1|registro[15]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[15]~feeder_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[15]~32_combout\ : std_logic;
SIGNAL \u_banco_reg|data_r1[15]~33_combout\ : std_logic;
SIGNAL \u_ula|Add1~58\ : std_logic;
SIGNAL \u_ula|Add1~61_sumout\ : std_logic;
SIGNAL \u_ula|Add0~58\ : std_logic;
SIGNAL \u_ula|Add0~61_sumout\ : std_logic;
SIGNAL \u_ula|flag_n~1_combout\ : std_logic;
SIGNAL \u_mux_write|data_out[15]~15_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[15]~34_combout\ : std_logic;
SIGNAL \u_mux_ula_b|data_out[15]~36_combout\ : std_logic;
SIGNAL \u_ula|flag_n~0_combout\ : std_logic;
SIGNAL \u_ula|saida[11]~15_combout\ : std_logic;
SIGNAL \u_ula|saida[5]~9_combout\ : std_logic;
SIGNAL \u_ula|Equal4~1_combout\ : std_logic;
SIGNAL \u_ula|saida[6]~10_combout\ : std_logic;
SIGNAL \u_ula|Equal4~2_combout\ : std_logic;
SIGNAL \u_ula|saida[12]~16_combout\ : std_logic;
SIGNAL \u_ula|saida[8]~12_combout\ : std_logic;
SIGNAL \u_ula|saida[7]~11_combout\ : std_logic;
SIGNAL \u_ula|saida[9]~13_combout\ : std_logic;
SIGNAL \u_ula|saida[10]~14_combout\ : std_logic;
SIGNAL \u_ula|Equal4~0_combout\ : std_logic;
SIGNAL \u_ula|Equal4~3_combout\ : std_logic;
SIGNAL \u_uc|wr_flags~0_combout\ : std_logic;
SIGNAL \u_uc|reg_flag_z~q\ : std_logic;
SIGNAL \u_ula|Add0~62\ : std_logic;
SIGNAL \u_ula|Add0~65_sumout\ : std_logic;
SIGNAL \u_ula|Add1~62\ : std_logic;
SIGNAL \u_ula|Add1~69_sumout\ : std_logic;
SIGNAL \u_ula|flag_c~1_combout\ : std_logic;
SIGNAL \u_uc|reg_flag_c~q\ : std_logic;
SIGNAL \u_uc|pc_en~0_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \s_pc_prox[0]~0_combout\ : std_logic;
SIGNAL \u_pc|s_pc_at[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \s_pc_prox[7]~7_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \s_pc_prox[8]~8_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \s_pc_prox[9]~9_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~41_sumout\ : std_logic;
SIGNAL \s_pc_prox[10]~10_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~45_sumout\ : std_logic;
SIGNAL \s_pc_prox[11]~11_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~49_sumout\ : std_logic;
SIGNAL \s_pc_prox[12]~12_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add1~50\ : std_logic;
SIGNAL \Add1~53_sumout\ : std_logic;
SIGNAL \s_pc_prox[13]~13_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add1~54\ : std_logic;
SIGNAL \Add1~57_sumout\ : std_logic;
SIGNAL \s_pc_prox[14]~14_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~61_sumout\ : std_logic;
SIGNAL \s_pc_prox[15]~15_combout\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|registro[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_pc|s_pc_at\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG1|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uc|u_maq|estado_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_banco_reg|REG4|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_rom|dado_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG2|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG0|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG3|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG5|registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG5|ALT_INV_registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|ALT_INV_registro[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG5|ALT_INV_registro[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|ALT_INV_registro[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|ALT_INV_registro[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[9]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|ALT_INV_registro[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG5|ALT_INV_registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[6]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|ALT_INV_registro[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[5]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG5|ALT_INV_registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG0|ALT_INV_registro[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|ALT_INV_registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|ALT_INV_registro[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|ALT_INV_registro[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG1|ALT_INV_registro[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|ALT_INV_registro[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG4|ALT_INV_registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG3|ALT_INV_registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_banco_reg|REG2|ALT_INV_registro[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[4]~30_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Equal4~2_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Equal4~1_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[15]~15_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_flag_n~1_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[14]~14_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[14]~29_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[13]~28_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[12]~27_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[11]~11_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[11]~26_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[10]~10_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[10]~25_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[9]~9_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[9]~24_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[8]~8_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[8]~23_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[7]~22_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[6]~21_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[5]~5_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[5]~20_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[0]~19_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[4]~34_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[4]~35_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[2]~2_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[1]~1_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_wr_en~0_combout\ : std_logic;
SIGNAL \u_mux_write|ALT_INV_data_out[0]~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \u_rom|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_pc_en~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_reg_flag_z~q\ : std_logic;
SIGNAL \u_uc|ALT_INV_reg_flag_c~q\ : std_logic;
SIGNAL \u_ula|ALT_INV_flag_n~0_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[15]~33_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[15]~32_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[15]~34_combout\ : std_logic;
SIGNAL \u_banco_reg|REG5|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG1|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG4|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG0|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG2|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_banco_reg|REG3|ALT_INV_registro\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_ula|ALT_INV_saida[14]~18_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[14]~31_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[14]~30_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[14]~33_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[13]~17_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[13]~29_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[13]~28_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[13]~32_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[12]~16_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[12]~27_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[12]~26_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[12]~31_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[11]~15_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[11]~25_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[11]~24_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[11]~30_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[10]~14_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[10]~23_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[10]~22_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[10]~29_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[9]~13_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[9]~21_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[9]~20_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[9]~28_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[9]~27_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[9]~26_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[8]~12_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[8]~19_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[8]~18_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[8]~25_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[8]~24_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[8]~23_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[7]~11_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[7]~17_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[7]~16_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[7]~22_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[7]~21_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[7]~20_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[6]~10_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[6]~15_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[6]~14_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[6]~19_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[6]~18_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[6]~17_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[5]~9_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[5]~13_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[5]~12_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[5]~16_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[5]~15_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[5]~14_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[4]~11_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[4]~10_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[4]~11_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[4]~10_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[4]~9_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[3]~7_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[3]~6_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[3]~8_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[3]~7_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[3]~9_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[3]~8_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[2]~5_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[2]~4_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[2]~6_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[2]~5_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[2]~7_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[2]~6_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[1]~3_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[1]~2_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[1]~4_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[1]~3_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[1]~5_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[1]~4_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[0]~1_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_saida[0]~0_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[0]~2_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[0]~1_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[0]~3_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[15]~2_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[15]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s_reg_r1[2]~2_combout\ : std_logic;
SIGNAL \u_banco_reg|ALT_INV_data_r1[0]~0_combout\ : std_logic;
SIGNAL \ALT_INV_s_reg_r1[1]~1_combout\ : std_logic;
SIGNAL \ALT_INV_s_reg_r1[0]~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \u_uc|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_flag_c~0_combout\ : std_logic;
SIGNAL \u_rom|ALT_INV_dado_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_pc|ALT_INV_s_pc_at\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_uc|u_maq|ALT_INV_estado_s\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_mux_ula_b|ALT_INV_data_out[10]~56_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[11]~52_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[12]~48_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[13]~44_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[14]~40_combout\ : std_logic;
SIGNAL \u_mux_ula_b|ALT_INV_data_out[15]~36_combout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~69_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~65_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~61_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~57_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~53_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~49_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~45_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~41_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~41_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \u_ula|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
estado <= ww_estado;
pc_out <= ww_pc_out;
instrucao <= ww_instrucao;
ula_out <= ww_ula_out;
r0_out <= ww_r0_out;
r1_out <= ww_r1_out;
r2_out <= ww_r2_out;
r3_out <= ww_r3_out;
r4_out <= ww_r4_out;
r5_out <= ww_r5_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\u_banco_reg|REG5|ALT_INV_registro[14]~DUPLICATE_q\ <= NOT \u_banco_reg|REG5|registro[14]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[14]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[14]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[14]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[14]~DUPLICATE_q\;
\u_banco_reg|REG2|ALT_INV_registro[14]~DUPLICATE_q\ <= NOT \u_banco_reg|REG2|registro[14]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[13]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[13]~DUPLICATE_q\;
\u_banco_reg|REG5|ALT_INV_registro[12]~DUPLICATE_q\ <= NOT \u_banco_reg|REG5|registro[12]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[11]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[11]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[11]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[11]~DUPLICATE_q\;
\u_banco_reg|REG0|ALT_INV_registro[11]~DUPLICATE_q\ <= NOT \u_banco_reg|REG0|registro[11]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[10]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[10]~DUPLICATE_q\;
\u_banco_reg|REG3|ALT_INV_registro[10]~DUPLICATE_q\ <= NOT \u_banco_reg|REG3|registro[10]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[9]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[9]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[9]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[9]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[8]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[8]~DUPLICATE_q\;
\u_banco_reg|REG0|ALT_INV_registro[7]~DUPLICATE_q\ <= NOT \u_banco_reg|REG0|registro[7]~DUPLICATE_q\;
\u_banco_reg|REG5|ALT_INV_registro[6]~DUPLICATE_q\ <= NOT \u_banco_reg|REG5|registro[6]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[6]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[6]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[6]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[6]~DUPLICATE_q\;
\u_banco_reg|REG3|ALT_INV_registro[5]~DUPLICATE_q\ <= NOT \u_banco_reg|REG3|registro[5]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[5]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[5]~DUPLICATE_q\;
\u_banco_reg|REG5|ALT_INV_registro[4]~DUPLICATE_q\ <= NOT \u_banco_reg|REG5|registro[4]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[4]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[4]~DUPLICATE_q\;
\u_banco_reg|REG0|ALT_INV_registro[4]~DUPLICATE_q\ <= NOT \u_banco_reg|REG0|registro[4]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[3]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[3]~DUPLICATE_q\;
\u_banco_reg|REG3|ALT_INV_registro[3]~DUPLICATE_q\ <= NOT \u_banco_reg|REG3|registro[3]~DUPLICATE_q\;
\u_banco_reg|REG2|ALT_INV_registro[3]~DUPLICATE_q\ <= NOT \u_banco_reg|REG2|registro[3]~DUPLICATE_q\;
\u_banco_reg|REG2|ALT_INV_registro[2]~DUPLICATE_q\ <= NOT \u_banco_reg|REG2|registro[2]~DUPLICATE_q\;
\u_banco_reg|REG1|ALT_INV_registro[2]~DUPLICATE_q\ <= NOT \u_banco_reg|REG1|registro[2]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[1]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[1]~DUPLICATE_q\;
\u_banco_reg|REG3|ALT_INV_registro[1]~DUPLICATE_q\ <= NOT \u_banco_reg|REG3|registro[1]~DUPLICATE_q\;
\u_banco_reg|REG4|ALT_INV_registro[0]~DUPLICATE_q\ <= NOT \u_banco_reg|REG4|registro[0]~DUPLICATE_q\;
\u_banco_reg|REG3|ALT_INV_registro[0]~DUPLICATE_q\ <= NOT \u_banco_reg|REG3|registro[0]~DUPLICATE_q\;
\u_banco_reg|REG2|ALT_INV_registro[0]~DUPLICATE_q\ <= NOT \u_banco_reg|REG2|registro[0]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\ <= NOT \u_rom|dado_out[14]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\ <= NOT \u_rom|dado_out[13]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\ <= NOT \u_rom|dado_out[12]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\ <= NOT \u_rom|dado_out[11]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\ <= NOT \u_rom|dado_out[10]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\ <= NOT \u_rom|dado_out[8]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\ <= NOT \u_rom|dado_out[7]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\ <= NOT \u_rom|dado_out[4]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\ <= NOT \u_rom|dado_out[3]~DUPLICATE_q\;
\u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\ <= NOT \u_rom|dado_out[2]~DUPLICATE_q\;
\u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\ <= NOT \u_pc|s_pc_at[3]~DUPLICATE_q\;
\u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\ <= NOT \u_pc|s_pc_at[2]~DUPLICATE_q\;
\u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\ <= NOT \u_pc|s_pc_at[1]~DUPLICATE_q\;
\u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\ <= NOT \u_pc|s_pc_at[0]~DUPLICATE_q\;
\u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\ <= NOT \u_uc|u_maq|estado_s[1]~DUPLICATE_q\;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\u_ula|ALT_INV_saida[4]~30_combout\ <= NOT \u_ula|saida[4]~30_combout\;
\u_ula|ALT_INV_Equal4~2_combout\ <= NOT \u_ula|Equal4~2_combout\;
\u_ula|ALT_INV_Equal4~1_combout\ <= NOT \u_ula|Equal4~1_combout\;
\u_ula|ALT_INV_Equal4~0_combout\ <= NOT \u_ula|Equal4~0_combout\;
\u_mux_write|ALT_INV_data_out[15]~15_combout\ <= NOT \u_mux_write|data_out[15]~15_combout\;
\u_ula|ALT_INV_flag_n~1_combout\ <= NOT \u_ula|flag_n~1_combout\;
\u_mux_write|ALT_INV_data_out[14]~14_combout\ <= NOT \u_mux_write|data_out[14]~14_combout\;
\u_ula|ALT_INV_saida[14]~29_combout\ <= NOT \u_ula|saida[14]~29_combout\;
\u_ula|ALT_INV_saida[13]~28_combout\ <= NOT \u_ula|saida[13]~28_combout\;
\u_ula|ALT_INV_saida[12]~27_combout\ <= NOT \u_ula|saida[12]~27_combout\;
\u_mux_write|ALT_INV_data_out[11]~11_combout\ <= NOT \u_mux_write|data_out[11]~11_combout\;
\u_ula|ALT_INV_saida[11]~26_combout\ <= NOT \u_ula|saida[11]~26_combout\;
\u_mux_write|ALT_INV_data_out[10]~10_combout\ <= NOT \u_mux_write|data_out[10]~10_combout\;
\u_ula|ALT_INV_saida[10]~25_combout\ <= NOT \u_ula|saida[10]~25_combout\;
\u_mux_write|ALT_INV_data_out[9]~9_combout\ <= NOT \u_mux_write|data_out[9]~9_combout\;
\u_ula|ALT_INV_saida[9]~24_combout\ <= NOT \u_ula|saida[9]~24_combout\;
\u_mux_write|ALT_INV_data_out[8]~8_combout\ <= NOT \u_mux_write|data_out[8]~8_combout\;
\u_ula|ALT_INV_saida[8]~23_combout\ <= NOT \u_ula|saida[8]~23_combout\;
\u_ula|ALT_INV_saida[7]~22_combout\ <= NOT \u_ula|saida[7]~22_combout\;
\u_ula|ALT_INV_saida[6]~21_combout\ <= NOT \u_ula|saida[6]~21_combout\;
\u_mux_write|ALT_INV_data_out[5]~5_combout\ <= NOT \u_mux_write|data_out[5]~5_combout\;
\u_ula|ALT_INV_saida[5]~20_combout\ <= NOT \u_ula|saida[5]~20_combout\;
\u_ula|ALT_INV_saida[0]~19_combout\ <= NOT \u_ula|saida[0]~19_combout\;
\u_banco_reg|ALT_INV_data_r1[4]~34_combout\ <= NOT \u_banco_reg|data_r1[4]~34_combout\;
\u_mux_ula_b|ALT_INV_data_out[4]~35_combout\ <= NOT \u_mux_ula_b|data_out[4]~35_combout\;
\u_mux_write|ALT_INV_data_out[2]~2_combout\ <= NOT \u_mux_write|data_out[2]~2_combout\;
\u_mux_write|ALT_INV_data_out[1]~1_combout\ <= NOT \u_mux_write|data_out[1]~1_combout\;
\u_uc|ALT_INV_wr_en~0_combout\ <= NOT \u_uc|wr_en~0_combout\;
\u_mux_write|ALT_INV_data_out[0]~0_combout\ <= NOT \u_mux_write|data_out[0]~0_combout\;
\u_uc|ALT_INV_Equal6~0_combout\ <= NOT \u_uc|Equal6~0_combout\;
\u_rom|ALT_INV_Mux0~0_combout\ <= NOT \u_rom|Mux0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\u_uc|ALT_INV_Equal2~0_combout\ <= NOT \u_uc|Equal2~0_combout\;
\u_uc|ALT_INV_pc_en~0_combout\ <= NOT \u_uc|pc_en~0_combout\;
\u_uc|ALT_INV_reg_flag_z~q\ <= NOT \u_uc|reg_flag_z~q\;
\u_uc|ALT_INV_reg_flag_c~q\ <= NOT \u_uc|reg_flag_c~q\;
\u_ula|ALT_INV_flag_n~0_combout\ <= NOT \u_ula|flag_n~0_combout\;
\u_banco_reg|ALT_INV_data_r1[15]~33_combout\ <= NOT \u_banco_reg|data_r1[15]~33_combout\;
\u_banco_reg|ALT_INV_data_r1[15]~32_combout\ <= NOT \u_banco_reg|data_r1[15]~32_combout\;
\u_mux_ula_b|ALT_INV_data_out[15]~34_combout\ <= NOT \u_mux_ula_b|data_out[15]~34_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG5|registro\(15);
\u_banco_reg|REG1|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG1|registro\(15);
\u_banco_reg|REG4|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG4|registro\(15);
\u_banco_reg|REG0|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG0|registro\(15);
\u_banco_reg|REG2|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG2|registro\(15);
\u_banco_reg|REG3|ALT_INV_registro\(15) <= NOT \u_banco_reg|REG3|registro\(15);
\u_ula|ALT_INV_saida[14]~18_combout\ <= NOT \u_ula|saida[14]~18_combout\;
\u_banco_reg|ALT_INV_data_r1[14]~31_combout\ <= NOT \u_banco_reg|data_r1[14]~31_combout\;
\u_banco_reg|ALT_INV_data_r1[14]~30_combout\ <= NOT \u_banco_reg|data_r1[14]~30_combout\;
\u_mux_ula_b|ALT_INV_data_out[14]~33_combout\ <= NOT \u_mux_ula_b|data_out[14]~33_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG5|registro\(14);
\u_banco_reg|REG1|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG1|registro\(14);
\u_banco_reg|REG4|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG4|registro\(14);
\u_banco_reg|REG0|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG0|registro\(14);
\u_banco_reg|REG2|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG2|registro\(14);
\u_banco_reg|REG3|ALT_INV_registro\(14) <= NOT \u_banco_reg|REG3|registro\(14);
\u_ula|ALT_INV_saida[13]~17_combout\ <= NOT \u_ula|saida[13]~17_combout\;
\u_banco_reg|ALT_INV_data_r1[13]~29_combout\ <= NOT \u_banco_reg|data_r1[13]~29_combout\;
\u_banco_reg|ALT_INV_data_r1[13]~28_combout\ <= NOT \u_banco_reg|data_r1[13]~28_combout\;
\u_mux_ula_b|ALT_INV_data_out[13]~32_combout\ <= NOT \u_mux_ula_b|data_out[13]~32_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG5|registro\(13);
\u_banco_reg|REG1|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG1|registro\(13);
\u_banco_reg|REG4|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG4|registro\(13);
\u_banco_reg|REG0|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG0|registro\(13);
\u_banco_reg|REG2|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG2|registro\(13);
\u_banco_reg|REG3|ALT_INV_registro\(13) <= NOT \u_banco_reg|REG3|registro\(13);
\u_ula|ALT_INV_saida[12]~16_combout\ <= NOT \u_ula|saida[12]~16_combout\;
\u_banco_reg|ALT_INV_data_r1[12]~27_combout\ <= NOT \u_banco_reg|data_r1[12]~27_combout\;
\u_banco_reg|ALT_INV_data_r1[12]~26_combout\ <= NOT \u_banco_reg|data_r1[12]~26_combout\;
\u_mux_ula_b|ALT_INV_data_out[12]~31_combout\ <= NOT \u_mux_ula_b|data_out[12]~31_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG5|registro\(12);
\u_banco_reg|REG1|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG1|registro\(12);
\u_banco_reg|REG4|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG4|registro\(12);
\u_banco_reg|REG0|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG0|registro\(12);
\u_banco_reg|REG2|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG2|registro\(12);
\u_banco_reg|REG3|ALT_INV_registro\(12) <= NOT \u_banco_reg|REG3|registro\(12);
\u_ula|ALT_INV_saida[11]~15_combout\ <= NOT \u_ula|saida[11]~15_combout\;
\u_banco_reg|ALT_INV_data_r1[11]~25_combout\ <= NOT \u_banco_reg|data_r1[11]~25_combout\;
\u_banco_reg|ALT_INV_data_r1[11]~24_combout\ <= NOT \u_banco_reg|data_r1[11]~24_combout\;
\u_mux_ula_b|ALT_INV_data_out[11]~30_combout\ <= NOT \u_mux_ula_b|data_out[11]~30_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(11) <= NOT \u_banco_reg|REG5|registro\(11);
\u_banco_reg|REG1|ALT_INV_registro\(11) <= NOT \u_banco_reg|REG1|registro\(11);
\u_banco_reg|REG0|ALT_INV_registro\(11) <= NOT \u_banco_reg|REG0|registro\(11);
\u_banco_reg|REG2|ALT_INV_registro\(11) <= NOT \u_banco_reg|REG2|registro\(11);
\u_banco_reg|REG3|ALT_INV_registro\(11) <= NOT \u_banco_reg|REG3|registro\(11);
\u_ula|ALT_INV_saida[10]~14_combout\ <= NOT \u_ula|saida[10]~14_combout\;
\u_banco_reg|ALT_INV_data_r1[10]~23_combout\ <= NOT \u_banco_reg|data_r1[10]~23_combout\;
\u_banco_reg|ALT_INV_data_r1[10]~22_combout\ <= NOT \u_banco_reg|data_r1[10]~22_combout\;
\u_mux_ula_b|ALT_INV_data_out[10]~29_combout\ <= NOT \u_mux_ula_b|data_out[10]~29_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG5|registro\(10);
\u_banco_reg|REG1|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG1|registro\(10);
\u_banco_reg|REG4|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG4|registro\(10);
\u_banco_reg|REG0|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG0|registro\(10);
\u_banco_reg|REG2|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG2|registro\(10);
\u_banco_reg|REG3|ALT_INV_registro\(10) <= NOT \u_banco_reg|REG3|registro\(10);
\u_ula|ALT_INV_saida[9]~13_combout\ <= NOT \u_ula|saida[9]~13_combout\;
\u_banco_reg|ALT_INV_data_r1[9]~21_combout\ <= NOT \u_banco_reg|data_r1[9]~21_combout\;
\u_banco_reg|ALT_INV_data_r1[9]~20_combout\ <= NOT \u_banco_reg|data_r1[9]~20_combout\;
\u_mux_ula_b|ALT_INV_data_out[9]~28_combout\ <= NOT \u_mux_ula_b|data_out[9]~28_combout\;
\u_mux_ula_b|ALT_INV_data_out[9]~27_combout\ <= NOT \u_mux_ula_b|data_out[9]~27_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG3|registro\(9);
\u_mux_ula_b|ALT_INV_data_out[9]~26_combout\ <= NOT \u_mux_ula_b|data_out[9]~26_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG5|registro\(9);
\u_banco_reg|REG1|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG1|registro\(9);
\u_banco_reg|REG4|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG4|registro\(9);
\u_banco_reg|REG0|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG0|registro\(9);
\u_banco_reg|REG2|ALT_INV_registro\(9) <= NOT \u_banco_reg|REG2|registro\(9);
\u_ula|ALT_INV_saida[8]~12_combout\ <= NOT \u_ula|saida[8]~12_combout\;
\u_banco_reg|ALT_INV_data_r1[8]~19_combout\ <= NOT \u_banco_reg|data_r1[8]~19_combout\;
\u_banco_reg|ALT_INV_data_r1[8]~18_combout\ <= NOT \u_banco_reg|data_r1[8]~18_combout\;
\u_mux_ula_b|ALT_INV_data_out[8]~25_combout\ <= NOT \u_mux_ula_b|data_out[8]~25_combout\;
\u_mux_ula_b|ALT_INV_data_out[8]~24_combout\ <= NOT \u_mux_ula_b|data_out[8]~24_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG3|registro\(8);
\u_mux_ula_b|ALT_INV_data_out[8]~23_combout\ <= NOT \u_mux_ula_b|data_out[8]~23_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG5|registro\(8);
\u_banco_reg|REG1|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG1|registro\(8);
\u_banco_reg|REG4|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG4|registro\(8);
\u_banco_reg|REG0|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG0|registro\(8);
\u_banco_reg|REG2|ALT_INV_registro\(8) <= NOT \u_banco_reg|REG2|registro\(8);
\u_ula|ALT_INV_saida[7]~11_combout\ <= NOT \u_ula|saida[7]~11_combout\;
\u_banco_reg|ALT_INV_data_r1[7]~17_combout\ <= NOT \u_banco_reg|data_r1[7]~17_combout\;
\u_banco_reg|ALT_INV_data_r1[7]~16_combout\ <= NOT \u_banco_reg|data_r1[7]~16_combout\;
\u_mux_ula_b|ALT_INV_data_out[7]~22_combout\ <= NOT \u_mux_ula_b|data_out[7]~22_combout\;
\u_mux_ula_b|ALT_INV_data_out[7]~21_combout\ <= NOT \u_mux_ula_b|data_out[7]~21_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(7) <= NOT \u_banco_reg|REG3|registro\(7);
\u_mux_ula_b|ALT_INV_data_out[7]~20_combout\ <= NOT \u_mux_ula_b|data_out[7]~20_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(7) <= NOT \u_banco_reg|REG5|registro\(7);
\u_banco_reg|REG1|ALT_INV_registro\(7) <= NOT \u_banco_reg|REG1|registro\(7);
\u_banco_reg|REG4|ALT_INV_registro\(7) <= NOT \u_banco_reg|REG4|registro\(7);
\u_banco_reg|REG2|ALT_INV_registro\(7) <= NOT \u_banco_reg|REG2|registro\(7);
\u_ula|ALT_INV_saida[6]~10_combout\ <= NOT \u_ula|saida[6]~10_combout\;
\u_banco_reg|ALT_INV_data_r1[6]~15_combout\ <= NOT \u_banco_reg|data_r1[6]~15_combout\;
\u_banco_reg|ALT_INV_data_r1[6]~14_combout\ <= NOT \u_banco_reg|data_r1[6]~14_combout\;
\u_mux_ula_b|ALT_INV_data_out[6]~19_combout\ <= NOT \u_mux_ula_b|data_out[6]~19_combout\;
\u_mux_ula_b|ALT_INV_data_out[6]~18_combout\ <= NOT \u_mux_ula_b|data_out[6]~18_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(6) <= NOT \u_banco_reg|REG3|registro\(6);
\u_mux_ula_b|ALT_INV_data_out[6]~17_combout\ <= NOT \u_mux_ula_b|data_out[6]~17_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(6) <= NOT \u_banco_reg|REG5|registro\(6);
\u_banco_reg|REG1|ALT_INV_registro\(6) <= NOT \u_banco_reg|REG1|registro\(6);
\u_banco_reg|REG0|ALT_INV_registro\(6) <= NOT \u_banco_reg|REG0|registro\(6);
\u_banco_reg|REG2|ALT_INV_registro\(6) <= NOT \u_banco_reg|REG2|registro\(6);
\u_ula|ALT_INV_saida[5]~9_combout\ <= NOT \u_ula|saida[5]~9_combout\;
\u_banco_reg|ALT_INV_data_r1[5]~13_combout\ <= NOT \u_banco_reg|data_r1[5]~13_combout\;
\u_banco_reg|ALT_INV_data_r1[5]~12_combout\ <= NOT \u_banco_reg|data_r1[5]~12_combout\;
\u_mux_ula_b|ALT_INV_data_out[5]~16_combout\ <= NOT \u_mux_ula_b|data_out[5]~16_combout\;
\u_mux_ula_b|ALT_INV_data_out[5]~15_combout\ <= NOT \u_mux_ula_b|data_out[5]~15_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG3|registro\(5);
\u_mux_ula_b|ALT_INV_data_out[5]~14_combout\ <= NOT \u_mux_ula_b|data_out[5]~14_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG5|registro\(5);
\u_banco_reg|REG1|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG1|registro\(5);
\u_banco_reg|REG4|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG4|registro\(5);
\u_banco_reg|REG0|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG0|registro\(5);
\u_banco_reg|REG2|ALT_INV_registro\(5) <= NOT \u_banco_reg|REG2|registro\(5);
\u_mux_ula_b|ALT_INV_data_out[4]~13_combout\ <= NOT \u_mux_ula_b|data_out[4]~13_combout\;
\u_mux_ula_b|ALT_INV_data_out[1]~12_combout\ <= NOT \u_mux_ula_b|data_out[1]~12_combout\;
\u_ula|ALT_INV_saida[4]~8_combout\ <= NOT \u_ula|saida[4]~8_combout\;
\u_banco_reg|ALT_INV_data_r1[4]~11_combout\ <= NOT \u_banco_reg|data_r1[4]~11_combout\;
\u_banco_reg|ALT_INV_data_r1[4]~10_combout\ <= NOT \u_banco_reg|data_r1[4]~10_combout\;
\u_mux_ula_b|ALT_INV_data_out[4]~11_combout\ <= NOT \u_mux_ula_b|data_out[4]~11_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG3|registro\(4);
\u_mux_ula_b|ALT_INV_data_out[4]~10_combout\ <= NOT \u_mux_ula_b|data_out[4]~10_combout\;
\u_mux_ula_b|ALT_INV_data_out[4]~9_combout\ <= NOT \u_mux_ula_b|data_out[4]~9_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG5|registro\(4);
\u_banco_reg|REG1|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG1|registro\(4);
\u_banco_reg|REG4|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG4|registro\(4);
\u_banco_reg|REG0|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG0|registro\(4);
\u_banco_reg|REG2|ALT_INV_registro\(4) <= NOT \u_banco_reg|REG2|registro\(4);
\u_ula|ALT_INV_saida[3]~7_combout\ <= NOT \u_ula|saida[3]~7_combout\;
\u_ula|ALT_INV_saida[3]~6_combout\ <= NOT \u_ula|saida[3]~6_combout\;
\u_mux_ula_b|ALT_INV_data_out[3]~8_combout\ <= NOT \u_mux_ula_b|data_out[3]~8_combout\;
\u_mux_ula_b|ALT_INV_data_out[3]~7_combout\ <= NOT \u_mux_ula_b|data_out[3]~7_combout\;
\u_banco_reg|ALT_INV_data_r1[3]~9_combout\ <= NOT \u_banco_reg|data_r1[3]~9_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(3) <= NOT \u_banco_reg|REG5|registro\(3);
\u_banco_reg|ALT_INV_data_r1[3]~8_combout\ <= NOT \u_banco_reg|data_r1[3]~8_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(3) <= NOT \u_banco_reg|REG3|registro\(3);
\u_banco_reg|REG2|ALT_INV_registro\(3) <= NOT \u_banco_reg|REG2|registro\(3);
\u_banco_reg|REG1|ALT_INV_registro\(3) <= NOT \u_banco_reg|REG1|registro\(3);
\u_banco_reg|REG0|ALT_INV_registro\(3) <= NOT \u_banco_reg|REG0|registro\(3);
\u_ula|ALT_INV_saida[2]~5_combout\ <= NOT \u_ula|saida[2]~5_combout\;
\u_ula|ALT_INV_saida[2]~4_combout\ <= NOT \u_ula|saida[2]~4_combout\;
\u_mux_ula_b|ALT_INV_data_out[2]~6_combout\ <= NOT \u_mux_ula_b|data_out[2]~6_combout\;
\u_mux_ula_b|ALT_INV_data_out[2]~5_combout\ <= NOT \u_mux_ula_b|data_out[2]~5_combout\;
\u_banco_reg|ALT_INV_data_r1[2]~7_combout\ <= NOT \u_banco_reg|data_r1[2]~7_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(2) <= NOT \u_banco_reg|REG5|registro\(2);
\u_banco_reg|REG4|ALT_INV_registro\(2) <= NOT \u_banco_reg|REG4|registro\(2);
\u_banco_reg|ALT_INV_data_r1[2]~6_combout\ <= NOT \u_banco_reg|data_r1[2]~6_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(2) <= NOT \u_banco_reg|REG3|registro\(2);
\u_banco_reg|REG2|ALT_INV_registro\(2) <= NOT \u_banco_reg|REG2|registro\(2);
\u_banco_reg|REG0|ALT_INV_registro\(2) <= NOT \u_banco_reg|REG0|registro\(2);
\u_ula|ALT_INV_saida[1]~3_combout\ <= NOT \u_ula|saida[1]~3_combout\;
\u_ula|ALT_INV_saida[1]~2_combout\ <= NOT \u_ula|saida[1]~2_combout\;
\u_mux_ula_b|ALT_INV_data_out[1]~4_combout\ <= NOT \u_mux_ula_b|data_out[1]~4_combout\;
\u_mux_ula_b|ALT_INV_data_out[1]~3_combout\ <= NOT \u_mux_ula_b|data_out[1]~3_combout\;
\u_banco_reg|ALT_INV_data_r1[1]~5_combout\ <= NOT \u_banco_reg|data_r1[1]~5_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(1) <= NOT \u_banco_reg|REG5|registro\(1);
\u_banco_reg|ALT_INV_data_r1[1]~4_combout\ <= NOT \u_banco_reg|data_r1[1]~4_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(1) <= NOT \u_banco_reg|REG3|registro\(1);
\u_banco_reg|REG2|ALT_INV_registro\(1) <= NOT \u_banco_reg|REG2|registro\(1);
\u_banco_reg|REG1|ALT_INV_registro\(1) <= NOT \u_banco_reg|REG1|registro\(1);
\u_banco_reg|REG0|ALT_INV_registro\(1) <= NOT \u_banco_reg|REG0|registro\(1);
\u_ula|ALT_INV_saida[0]~1_combout\ <= NOT \u_ula|saida[0]~1_combout\;
\u_ula|ALT_INV_saida[0]~0_combout\ <= NOT \u_ula|saida[0]~0_combout\;
\u_mux_ula_b|ALT_INV_data_out[0]~2_combout\ <= NOT \u_mux_ula_b|data_out[0]~2_combout\;
\u_mux_ula_b|ALT_INV_data_out[0]~1_combout\ <= NOT \u_mux_ula_b|data_out[0]~1_combout\;
\u_mux_ula_b|ALT_INV_data_out[1]~0_combout\ <= NOT \u_mux_ula_b|data_out[1]~0_combout\;
\u_banco_reg|ALT_INV_data_r1[0]~3_combout\ <= NOT \u_banco_reg|data_r1[0]~3_combout\;
\u_banco_reg|REG5|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG5|registro\(0);
\u_banco_reg|REG4|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG4|registro\(0);
\u_banco_reg|ALT_INV_data_r1[15]~2_combout\ <= NOT \u_banco_reg|data_r1[15]~2_combout\;
\u_banco_reg|ALT_INV_data_r1[15]~1_combout\ <= NOT \u_banco_reg|data_r1[15]~1_combout\;
\ALT_INV_s_reg_r1[2]~2_combout\ <= NOT \s_reg_r1[2]~2_combout\;
\u_banco_reg|ALT_INV_data_r1[0]~0_combout\ <= NOT \u_banco_reg|data_r1[0]~0_combout\;
\ALT_INV_s_reg_r1[1]~1_combout\ <= NOT \s_reg_r1[1]~1_combout\;
\ALT_INV_s_reg_r1[0]~0_combout\ <= NOT \s_reg_r1[0]~0_combout\;
\u_banco_reg|REG3|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG3|registro\(0);
\u_banco_reg|REG2|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG2|registro\(0);
\u_banco_reg|REG1|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG1|registro\(0);
\u_banco_reg|REG0|ALT_INV_registro\(0) <= NOT \u_banco_reg|REG0|registro\(0);
\u_uc|ALT_INV_Equal8~0_combout\ <= NOT \u_uc|Equal8~0_combout\;
\u_uc|ALT_INV_Equal10~0_combout\ <= NOT \u_uc|Equal10~0_combout\;
\u_ula|ALT_INV_flag_c~0_combout\ <= NOT \u_ula|flag_c~0_combout\;
\u_rom|ALT_INV_dado_out\(15) <= NOT \u_rom|dado_out\(15);
\u_rom|ALT_INV_dado_out\(14) <= NOT \u_rom|dado_out\(14);
\u_rom|ALT_INV_dado_out\(13) <= NOT \u_rom|dado_out\(13);
\u_rom|ALT_INV_dado_out\(12) <= NOT \u_rom|dado_out\(12);
\u_rom|ALT_INV_dado_out\(11) <= NOT \u_rom|dado_out\(11);
\u_rom|ALT_INV_dado_out\(10) <= NOT \u_rom|dado_out\(10);
\u_rom|ALT_INV_dado_out\(9) <= NOT \u_rom|dado_out\(9);
\u_rom|ALT_INV_dado_out\(8) <= NOT \u_rom|dado_out\(8);
\u_rom|ALT_INV_dado_out\(7) <= NOT \u_rom|dado_out\(7);
\u_rom|ALT_INV_dado_out\(4) <= NOT \u_rom|dado_out\(4);
\u_rom|ALT_INV_dado_out\(3) <= NOT \u_rom|dado_out\(3);
\u_rom|ALT_INV_dado_out\(2) <= NOT \u_rom|dado_out\(2);
\u_rom|ALT_INV_dado_out\(1) <= NOT \u_rom|dado_out\(1);
\u_rom|ALT_INV_dado_out\(0) <= NOT \u_rom|dado_out\(0);
\u_pc|ALT_INV_s_pc_at\(7) <= NOT \u_pc|s_pc_at\(7);
\u_pc|ALT_INV_s_pc_at\(6) <= NOT \u_pc|s_pc_at\(6);
\u_pc|ALT_INV_s_pc_at\(5) <= NOT \u_pc|s_pc_at\(5);
\u_pc|ALT_INV_s_pc_at\(4) <= NOT \u_pc|s_pc_at\(4);
\u_pc|ALT_INV_s_pc_at\(3) <= NOT \u_pc|s_pc_at\(3);
\u_pc|ALT_INV_s_pc_at\(2) <= NOT \u_pc|s_pc_at\(2);
\u_pc|ALT_INV_s_pc_at\(1) <= NOT \u_pc|s_pc_at\(1);
\u_pc|ALT_INV_s_pc_at\(0) <= NOT \u_pc|s_pc_at\(0);
\u_uc|u_maq|ALT_INV_estado_s\(1) <= NOT \u_uc|u_maq|estado_s\(1);
\u_uc|u_maq|ALT_INV_estado_s\(0) <= NOT \u_uc|u_maq|estado_s\(0);
\u_mux_ula_b|ALT_INV_data_out[10]~56_combout\ <= NOT \u_mux_ula_b|data_out[10]~56_combout\;
\u_mux_ula_b|ALT_INV_data_out[11]~52_combout\ <= NOT \u_mux_ula_b|data_out[11]~52_combout\;
\u_mux_ula_b|ALT_INV_data_out[12]~48_combout\ <= NOT \u_mux_ula_b|data_out[12]~48_combout\;
\u_mux_ula_b|ALT_INV_data_out[13]~44_combout\ <= NOT \u_mux_ula_b|data_out[13]~44_combout\;
\u_mux_ula_b|ALT_INV_data_out[14]~40_combout\ <= NOT \u_mux_ula_b|data_out[14]~40_combout\;
\u_mux_ula_b|ALT_INV_data_out[15]~36_combout\ <= NOT \u_mux_ula_b|data_out[15]~36_combout\;
\u_ula|ALT_INV_Add1~69_sumout\ <= NOT \u_ula|Add1~69_sumout\;
\u_ula|ALT_INV_Add0~65_sumout\ <= NOT \u_ula|Add0~65_sumout\;
\ALT_INV_Add1~61_sumout\ <= NOT \Add1~61_sumout\;
\ALT_INV_Add0~61_sumout\ <= NOT \Add0~61_sumout\;
\ALT_INV_Add1~57_sumout\ <= NOT \Add1~57_sumout\;
\ALT_INV_Add0~57_sumout\ <= NOT \Add0~57_sumout\;
\ALT_INV_Add1~53_sumout\ <= NOT \Add1~53_sumout\;
\ALT_INV_Add0~53_sumout\ <= NOT \Add0~53_sumout\;
\ALT_INV_Add1~49_sumout\ <= NOT \Add1~49_sumout\;
\ALT_INV_Add0~49_sumout\ <= NOT \Add0~49_sumout\;
\ALT_INV_Add1~45_sumout\ <= NOT \Add1~45_sumout\;
\ALT_INV_Add0~45_sumout\ <= NOT \Add0~45_sumout\;
\ALT_INV_Add1~41_sumout\ <= NOT \Add1~41_sumout\;
\ALT_INV_Add0~41_sumout\ <= NOT \Add0~41_sumout\;
\ALT_INV_Add1~37_sumout\ <= NOT \Add1~37_sumout\;
\ALT_INV_Add0~37_sumout\ <= NOT \Add0~37_sumout\;
\ALT_INV_Add1~33_sumout\ <= NOT \Add1~33_sumout\;
\ALT_INV_Add0~33_sumout\ <= NOT \Add0~33_sumout\;
\ALT_INV_Add1~29_sumout\ <= NOT \Add1~29_sumout\;
\ALT_INV_Add0~29_sumout\ <= NOT \Add0~29_sumout\;
\ALT_INV_Add1~25_sumout\ <= NOT \Add1~25_sumout\;
\ALT_INV_Add0~25_sumout\ <= NOT \Add0~25_sumout\;
\ALT_INV_Add1~21_sumout\ <= NOT \Add1~21_sumout\;
\ALT_INV_Add0~21_sumout\ <= NOT \Add0~21_sumout\;
\ALT_INV_Add1~17_sumout\ <= NOT \Add1~17_sumout\;
\ALT_INV_Add0~17_sumout\ <= NOT \Add0~17_sumout\;
\ALT_INV_Add1~13_sumout\ <= NOT \Add1~13_sumout\;
\ALT_INV_Add0~13_sumout\ <= NOT \Add0~13_sumout\;
\ALT_INV_Add1~9_sumout\ <= NOT \Add1~9_sumout\;
\ALT_INV_Add0~9_sumout\ <= NOT \Add0~9_sumout\;
\ALT_INV_Add1~5_sumout\ <= NOT \Add1~5_sumout\;
\ALT_INV_Add0~5_sumout\ <= NOT \Add0~5_sumout\;
\ALT_INV_Add1~1_sumout\ <= NOT \Add1~1_sumout\;
\ALT_INV_Add0~1_sumout\ <= NOT \Add0~1_sumout\;
\u_ula|ALT_INV_Add1~61_sumout\ <= NOT \u_ula|Add1~61_sumout\;
\u_ula|ALT_INV_Add0~61_sumout\ <= NOT \u_ula|Add0~61_sumout\;
\u_ula|ALT_INV_Add1~57_sumout\ <= NOT \u_ula|Add1~57_sumout\;
\u_ula|ALT_INV_Add0~57_sumout\ <= NOT \u_ula|Add0~57_sumout\;
\u_ula|ALT_INV_Add1~53_sumout\ <= NOT \u_ula|Add1~53_sumout\;
\u_ula|ALT_INV_Add0~53_sumout\ <= NOT \u_ula|Add0~53_sumout\;
\u_ula|ALT_INV_Add1~49_sumout\ <= NOT \u_ula|Add1~49_sumout\;
\u_ula|ALT_INV_Add0~49_sumout\ <= NOT \u_ula|Add0~49_sumout\;
\u_ula|ALT_INV_Add1~45_sumout\ <= NOT \u_ula|Add1~45_sumout\;
\u_ula|ALT_INV_Add0~45_sumout\ <= NOT \u_ula|Add0~45_sumout\;
\u_ula|ALT_INV_Add1~41_sumout\ <= NOT \u_ula|Add1~41_sumout\;
\u_ula|ALT_INV_Add0~41_sumout\ <= NOT \u_ula|Add0~41_sumout\;
\u_ula|ALT_INV_Add1~37_sumout\ <= NOT \u_ula|Add1~37_sumout\;
\u_ula|ALT_INV_Add0~37_sumout\ <= NOT \u_ula|Add0~37_sumout\;
\u_ula|ALT_INV_Add1~33_sumout\ <= NOT \u_ula|Add1~33_sumout\;
\u_ula|ALT_INV_Add0~33_sumout\ <= NOT \u_ula|Add0~33_sumout\;
\u_ula|ALT_INV_Add1~29_sumout\ <= NOT \u_ula|Add1~29_sumout\;
\u_ula|ALT_INV_Add0~29_sumout\ <= NOT \u_ula|Add0~29_sumout\;
\u_ula|ALT_INV_Add1~25_sumout\ <= NOT \u_ula|Add1~25_sumout\;
\u_ula|ALT_INV_Add0~25_sumout\ <= NOT \u_ula|Add0~25_sumout\;
\u_ula|ALT_INV_Add1~21_sumout\ <= NOT \u_ula|Add1~21_sumout\;
\u_ula|ALT_INV_Add0~21_sumout\ <= NOT \u_ula|Add0~21_sumout\;
\u_ula|ALT_INV_Add1~17_sumout\ <= NOT \u_ula|Add1~17_sumout\;
\u_ula|ALT_INV_Add0~17_sumout\ <= NOT \u_ula|Add0~17_sumout\;
\u_ula|ALT_INV_Add1~13_sumout\ <= NOT \u_ula|Add1~13_sumout\;
\u_ula|ALT_INV_Add0~13_sumout\ <= NOT \u_ula|Add0~13_sumout\;
\u_ula|ALT_INV_Add1~9_sumout\ <= NOT \u_ula|Add1~9_sumout\;
\u_ula|ALT_INV_Add0~9_sumout\ <= NOT \u_ula|Add0~9_sumout\;
\u_ula|ALT_INV_Add1~5_sumout\ <= NOT \u_ula|Add1~5_sumout\;
\u_ula|ALT_INV_Add0~5_sumout\ <= NOT \u_ula|Add0~5_sumout\;
\u_ula|ALT_INV_Add1~1_sumout\ <= NOT \u_ula|Add1~1_sumout\;
\u_ula|ALT_INV_Add0~1_sumout\ <= NOT \u_ula|Add0~1_sumout\;
\u_pc|ALT_INV_s_pc_at\(15) <= NOT \u_pc|s_pc_at\(15);
\u_pc|ALT_INV_s_pc_at\(14) <= NOT \u_pc|s_pc_at\(14);
\u_pc|ALT_INV_s_pc_at\(13) <= NOT \u_pc|s_pc_at\(13);
\u_pc|ALT_INV_s_pc_at\(12) <= NOT \u_pc|s_pc_at\(12);
\u_pc|ALT_INV_s_pc_at\(11) <= NOT \u_pc|s_pc_at\(11);
\u_pc|ALT_INV_s_pc_at\(10) <= NOT \u_pc|s_pc_at\(10);
\u_pc|ALT_INV_s_pc_at\(9) <= NOT \u_pc|s_pc_at\(9);
\u_pc|ALT_INV_s_pc_at\(8) <= NOT \u_pc|s_pc_at\(8);

-- Location: IOOBUF_X60_Y0_N2
\estado[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uc|u_maq|estado_s\(0),
	devoe => ww_devoe,
	o => ww_estado(0));

-- Location: IOOBUF_X56_Y0_N53
\estado[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_uc|u_maq|estado_s\(1),
	devoe => ww_devoe,
	o => ww_estado(1));

-- Location: IOOBUF_X38_Y0_N53
\pc_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(0));

-- Location: IOOBUF_X40_Y0_N2
\pc_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(1));

-- Location: IOOBUF_X50_Y0_N59
\pc_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(2));

-- Location: IOOBUF_X50_Y0_N76
\pc_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_pc_out(3));

-- Location: IOOBUF_X40_Y81_N2
\pc_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(4),
	devoe => ww_devoe,
	o => ww_pc_out(4));

-- Location: IOOBUF_X38_Y81_N19
\pc_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(5),
	devoe => ww_devoe,
	o => ww_pc_out(5));

-- Location: IOOBUF_X40_Y81_N19
\pc_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(6),
	devoe => ww_devoe,
	o => ww_pc_out(6));

-- Location: IOOBUF_X89_Y37_N39
\pc_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(7),
	devoe => ww_devoe,
	o => ww_pc_out(7));

-- Location: IOOBUF_X50_Y81_N93
\pc_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(8),
	devoe => ww_devoe,
	o => ww_pc_out(8));

-- Location: IOOBUF_X50_Y0_N93
\pc_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(9),
	devoe => ww_devoe,
	o => ww_pc_out(9));

-- Location: IOOBUF_X40_Y81_N36
\pc_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(10),
	devoe => ww_devoe,
	o => ww_pc_out(10));

-- Location: IOOBUF_X56_Y0_N36
\pc_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(11),
	devoe => ww_devoe,
	o => ww_pc_out(11));

-- Location: IOOBUF_X89_Y6_N56
\pc_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(12),
	devoe => ww_devoe,
	o => ww_pc_out(12));

-- Location: IOOBUF_X40_Y81_N53
\pc_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(13),
	devoe => ww_devoe,
	o => ww_pc_out(13));

-- Location: IOOBUF_X89_Y8_N22
\pc_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(14),
	devoe => ww_devoe,
	o => ww_pc_out(14));

-- Location: IOOBUF_X89_Y35_N96
\pc_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_pc|s_pc_at\(15),
	devoe => ww_devoe,
	o => ww_pc_out(15));

-- Location: IOOBUF_X40_Y0_N53
\instrucao[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(0),
	devoe => ww_devoe,
	o => ww_instrucao(0));

-- Location: IOOBUF_X38_Y0_N36
\instrucao[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(1),
	devoe => ww_devoe,
	o => ww_instrucao(1));

-- Location: IOOBUF_X38_Y0_N19
\instrucao[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(2));

-- Location: IOOBUF_X40_Y0_N36
\instrucao[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(3));

-- Location: IOOBUF_X72_Y0_N53
\instrucao[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(4),
	devoe => ww_devoe,
	o => ww_instrucao(4));

-- Location: IOOBUF_X70_Y0_N2
\instrucao[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(4),
	devoe => ww_devoe,
	o => ww_instrucao(5));

-- Location: IOOBUF_X72_Y0_N36
\instrucao[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(4),
	devoe => ww_devoe,
	o => ww_instrucao(6));

-- Location: IOOBUF_X38_Y0_N2
\instrucao[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(7));

-- Location: IOOBUF_X36_Y0_N53
\instrucao[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(8));

-- Location: IOOBUF_X28_Y0_N53
\instrucao[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(9),
	devoe => ww_devoe,
	o => ww_instrucao(9));

-- Location: IOOBUF_X26_Y0_N42
\instrucao[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(10));

-- Location: IOOBUF_X26_Y0_N76
\instrucao[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(11));

-- Location: IOOBUF_X58_Y0_N93
\instrucao[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_instrucao(12));

-- Location: IOOBUF_X34_Y0_N76
\instrucao[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(13),
	devoe => ww_devoe,
	o => ww_instrucao(13));

-- Location: IOOBUF_X62_Y0_N2
\instrucao[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(14),
	devoe => ww_devoe,
	o => ww_instrucao(14));

-- Location: IOOBUF_X32_Y0_N36
\instrucao[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_rom|dado_out\(15),
	devoe => ww_devoe,
	o => ww_instrucao(15));

-- Location: IOOBUF_X60_Y0_N19
\ula_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[0]~1_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(0));

-- Location: IOOBUF_X50_Y0_N42
\ula_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[1]~3_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(1));

-- Location: IOOBUF_X89_Y4_N96
\ula_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[2]~5_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(2));

-- Location: IOOBUF_X70_Y0_N53
\ula_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[3]~7_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(3));

-- Location: IOOBUF_X36_Y0_N36
\ula_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[4]~8_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(4));

-- Location: IOOBUF_X50_Y81_N42
\ula_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[5]~9_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(5));

-- Location: IOOBUF_X36_Y81_N36
\ula_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[6]~10_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(6));

-- Location: IOOBUF_X64_Y0_N53
\ula_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[7]~11_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(7));

-- Location: IOOBUF_X68_Y0_N2
\ula_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[8]~12_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(8));

-- Location: IOOBUF_X58_Y0_N42
\ula_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[9]~13_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(9));

-- Location: IOOBUF_X36_Y81_N2
\ula_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[10]~14_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(10));

-- Location: IOOBUF_X38_Y81_N2
\ula_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[11]~15_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(11));

-- Location: IOOBUF_X89_Y9_N56
\ula_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[12]~16_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(12));

-- Location: IOOBUF_X4_Y0_N53
\ula_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[13]~17_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(13));

-- Location: IOOBUF_X89_Y9_N5
\ula_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|saida[14]~18_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(14));

-- Location: IOOBUF_X56_Y0_N2
\ula_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_ula|flag_n~0_combout\,
	devoe => ww_devoe,
	o => ww_ula_out(15));

-- Location: IOOBUF_X30_Y0_N2
\r0_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(0),
	devoe => ww_devoe,
	o => ww_r0_out(0));

-- Location: IOOBUF_X34_Y0_N42
\r0_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r0_out(1));

-- Location: IOOBUF_X68_Y0_N19
\r0_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r0_out(2));

-- Location: IOOBUF_X32_Y0_N19
\r0_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(3),
	devoe => ww_devoe,
	o => ww_r0_out(3));

-- Location: IOOBUF_X30_Y0_N36
\r0_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r0_out(4));

-- Location: IOOBUF_X8_Y0_N2
\r0_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(5),
	devoe => ww_devoe,
	o => ww_r0_out(5));

-- Location: IOOBUF_X89_Y8_N56
\r0_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(6),
	devoe => ww_devoe,
	o => ww_r0_out(6));

-- Location: IOOBUF_X28_Y0_N36
\r0_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(7),
	devoe => ww_devoe,
	o => ww_r0_out(7));

-- Location: IOOBUF_X30_Y0_N53
\r0_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(8),
	devoe => ww_devoe,
	o => ww_r0_out(8));

-- Location: IOOBUF_X58_Y0_N59
\r0_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(9),
	devoe => ww_devoe,
	o => ww_r0_out(9));

-- Location: IOOBUF_X70_Y0_N36
\r0_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r0_out(10));

-- Location: IOOBUF_X32_Y0_N53
\r0_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r0_out(11));

-- Location: IOOBUF_X38_Y81_N36
\r0_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(12),
	devoe => ww_devoe,
	o => ww_r0_out(12));

-- Location: IOOBUF_X58_Y0_N76
\r0_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(13),
	devoe => ww_devoe,
	o => ww_r0_out(13));

-- Location: IOOBUF_X4_Y0_N36
\r0_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(14),
	devoe => ww_devoe,
	o => ww_r0_out(14));

-- Location: IOOBUF_X6_Y0_N2
\r0_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG0|registro\(15),
	devoe => ww_devoe,
	o => ww_r0_out(15));

-- Location: IOOBUF_X89_Y4_N79
\r1_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(0),
	devoe => ww_devoe,
	o => ww_r1_out(0));

-- Location: IOOBUF_X89_Y4_N62
\r1_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(1),
	devoe => ww_devoe,
	o => ww_r1_out(1));

-- Location: IOOBUF_X52_Y0_N53
\r1_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(2),
	devoe => ww_devoe,
	o => ww_r1_out(2));

-- Location: IOOBUF_X34_Y0_N59
\r1_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(3),
	devoe => ww_devoe,
	o => ww_r1_out(3));

-- Location: IOOBUF_X26_Y0_N93
\r1_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(4),
	devoe => ww_devoe,
	o => ww_r1_out(4));

-- Location: IOOBUF_X60_Y0_N36
\r1_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(5),
	devoe => ww_devoe,
	o => ww_r1_out(5));

-- Location: IOOBUF_X64_Y0_N19
\r1_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r1_out(6));

-- Location: IOOBUF_X72_Y0_N19
\r1_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(7),
	devoe => ww_devoe,
	o => ww_r1_out(7));

-- Location: IOOBUF_X32_Y0_N2
\r1_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(8),
	devoe => ww_devoe,
	o => ww_r1_out(8));

-- Location: IOOBUF_X68_Y0_N53
\r1_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro[9]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r1_out(9));

-- Location: IOOBUF_X62_Y0_N19
\r1_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(10),
	devoe => ww_devoe,
	o => ww_r1_out(10));

-- Location: IOOBUF_X32_Y81_N19
\r1_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro[11]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r1_out(11));

-- Location: IOOBUF_X89_Y8_N39
\r1_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(12),
	devoe => ww_devoe,
	o => ww_r1_out(12));

-- Location: IOOBUF_X2_Y0_N42
\r1_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(13),
	devoe => ww_devoe,
	o => ww_r1_out(13));

-- Location: IOOBUF_X36_Y81_N19
\r1_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r1_out(14));

-- Location: IOOBUF_X66_Y0_N93
\r1_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG1|registro\(15),
	devoe => ww_devoe,
	o => ww_r1_out(15));

-- Location: IOOBUF_X54_Y0_N2
\r2_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(0),
	devoe => ww_devoe,
	o => ww_r2_out(0));

-- Location: IOOBUF_X36_Y0_N19
\r2_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(1),
	devoe => ww_devoe,
	o => ww_r2_out(1));

-- Location: IOOBUF_X2_Y0_N76
\r2_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r2_out(2));

-- Location: IOOBUF_X54_Y0_N53
\r2_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r2_out(3));

-- Location: IOOBUF_X26_Y81_N93
\r2_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(4),
	devoe => ww_devoe,
	o => ww_r2_out(4));

-- Location: IOOBUF_X4_Y0_N19
\r2_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(5),
	devoe => ww_devoe,
	o => ww_r2_out(5));

-- Location: IOOBUF_X64_Y0_N2
\r2_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(6),
	devoe => ww_devoe,
	o => ww_r2_out(6));

-- Location: IOOBUF_X28_Y81_N19
\r2_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(7),
	devoe => ww_devoe,
	o => ww_r2_out(7));

-- Location: IOOBUF_X28_Y81_N2
\r2_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(8),
	devoe => ww_devoe,
	o => ww_r2_out(8));

-- Location: IOOBUF_X89_Y9_N22
\r2_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(9),
	devoe => ww_devoe,
	o => ww_r2_out(9));

-- Location: IOOBUF_X89_Y6_N5
\r2_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(10),
	devoe => ww_devoe,
	o => ww_r2_out(10));

-- Location: IOOBUF_X89_Y37_N22
\r2_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(11),
	devoe => ww_devoe,
	o => ww_r2_out(11));

-- Location: IOOBUF_X89_Y6_N22
\r2_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(12),
	devoe => ww_devoe,
	o => ww_r2_out(12));

-- Location: IOOBUF_X89_Y9_N39
\r2_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(13),
	devoe => ww_devoe,
	o => ww_r2_out(13));

-- Location: IOOBUF_X89_Y8_N5
\r2_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r2_out(14));

-- Location: IOOBUF_X89_Y35_N45
\r2_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG2|registro\(15),
	devoe => ww_devoe,
	o => ww_r2_out(15));

-- Location: IOOBUF_X70_Y0_N19
\r3_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r3_out(0));

-- Location: IOOBUF_X36_Y0_N2
\r3_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(1),
	devoe => ww_devoe,
	o => ww_r3_out(1));

-- Location: IOOBUF_X34_Y0_N93
\r3_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(2),
	devoe => ww_devoe,
	o => ww_r3_out(2));

-- Location: IOOBUF_X52_Y0_N2
\r3_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(3),
	devoe => ww_devoe,
	o => ww_r3_out(3));

-- Location: IOOBUF_X8_Y0_N36
\r3_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(4),
	devoe => ww_devoe,
	o => ww_r3_out(4));

-- Location: IOOBUF_X8_Y0_N19
\r3_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r3_out(5));

-- Location: IOOBUF_X66_Y0_N76
\r3_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(6),
	devoe => ww_devoe,
	o => ww_r3_out(6));

-- Location: IOOBUF_X28_Y0_N2
\r3_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(7),
	devoe => ww_devoe,
	o => ww_r3_out(7));

-- Location: IOOBUF_X89_Y36_N56
\r3_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(8),
	devoe => ww_devoe,
	o => ww_r3_out(8));

-- Location: IOOBUF_X89_Y36_N39
\r3_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(9),
	devoe => ww_devoe,
	o => ww_r3_out(9));

-- Location: IOOBUF_X30_Y81_N53
\r3_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r3_out(10));

-- Location: IOOBUF_X28_Y81_N53
\r3_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(11),
	devoe => ww_devoe,
	o => ww_r3_out(11));

-- Location: IOOBUF_X89_Y6_N39
\r3_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(12),
	devoe => ww_devoe,
	o => ww_r3_out(12));

-- Location: IOOBUF_X66_Y0_N59
\r3_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(13),
	devoe => ww_devoe,
	o => ww_r3_out(13));

-- Location: IOOBUF_X38_Y81_N53
\r3_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(14),
	devoe => ww_devoe,
	o => ww_r3_out(14));

-- Location: IOOBUF_X34_Y81_N59
\r3_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG3|registro\(15),
	devoe => ww_devoe,
	o => ww_r3_out(15));

-- Location: IOOBUF_X89_Y36_N22
\r4_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(0),
	devoe => ww_devoe,
	o => ww_r4_out(0));

-- Location: IOOBUF_X52_Y0_N19
\r4_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(1),
	devoe => ww_devoe,
	o => ww_r4_out(1));

-- Location: IOOBUF_X66_Y0_N42
\r4_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(2),
	devoe => ww_devoe,
	o => ww_r4_out(2));

-- Location: IOOBUF_X89_Y4_N45
\r4_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(3),
	devoe => ww_devoe,
	o => ww_r4_out(3));

-- Location: IOOBUF_X6_Y0_N19
\r4_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(4),
	devoe => ww_devoe,
	o => ww_r4_out(4));

-- Location: IOOBUF_X56_Y0_N19
\r4_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(5),
	devoe => ww_devoe,
	o => ww_r4_out(5));

-- Location: IOOBUF_X28_Y81_N36
\r4_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(6),
	devoe => ww_devoe,
	o => ww_r4_out(6));

-- Location: IOOBUF_X30_Y0_N19
\r4_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(7),
	devoe => ww_devoe,
	o => ww_r4_out(7));

-- Location: IOOBUF_X28_Y0_N19
\r4_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r4_out(8));

-- Location: IOOBUF_X60_Y0_N53
\r4_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(9),
	devoe => ww_devoe,
	o => ww_r4_out(9));

-- Location: IOOBUF_X62_Y0_N36
\r4_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro[10]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r4_out(10));

-- Location: IOOBUF_X6_Y0_N53
\r4_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(11),
	devoe => ww_devoe,
	o => ww_r4_out(11));

-- Location: IOOBUF_X36_Y81_N53
\r4_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(12),
	devoe => ww_devoe,
	o => ww_r4_out(12));

-- Location: IOOBUF_X89_Y35_N79
\r4_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro[13]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r4_out(13));

-- Location: IOOBUF_X30_Y81_N2
\r4_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r4_out(14));

-- Location: IOOBUF_X34_Y81_N76
\r4_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG4|registro\(15),
	devoe => ww_devoe,
	o => ww_r4_out(15));

-- Location: IOOBUF_X72_Y0_N2
\r5_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(0),
	devoe => ww_devoe,
	o => ww_r5_out(0));

-- Location: IOOBUF_X54_Y0_N19
\r5_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(1),
	devoe => ww_devoe,
	o => ww_r5_out(1));

-- Location: IOOBUF_X62_Y0_N53
\r5_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(2),
	devoe => ww_devoe,
	o => ww_r5_out(2));

-- Location: IOOBUF_X54_Y0_N36
\r5_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(3),
	devoe => ww_devoe,
	o => ww_r5_out(3));

-- Location: IOOBUF_X2_Y0_N93
\r5_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(4),
	devoe => ww_devoe,
	o => ww_r5_out(4));

-- Location: IOOBUF_X64_Y0_N36
\r5_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(5),
	devoe => ww_devoe,
	o => ww_r5_out(5));

-- Location: IOOBUF_X34_Y81_N42
\r5_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r5_out(6));

-- Location: IOOBUF_X6_Y0_N36
\r5_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(7),
	devoe => ww_devoe,
	o => ww_r5_out(7));

-- Location: IOOBUF_X26_Y0_N59
\r5_out[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(8),
	devoe => ww_devoe,
	o => ww_r5_out(8));

-- Location: IOOBUF_X26_Y81_N76
\r5_out[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(9),
	devoe => ww_devoe,
	o => ww_r5_out(9));

-- Location: IOOBUF_X68_Y0_N36
\r5_out[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(10),
	devoe => ww_devoe,
	o => ww_r5_out(10));

-- Location: IOOBUF_X8_Y0_N53
\r5_out[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(11),
	devoe => ww_devoe,
	o => ww_r5_out(11));

-- Location: IOOBUF_X52_Y0_N36
\r5_out[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro[12]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r5_out(12));

-- Location: IOOBUF_X4_Y0_N2
\r5_out[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(13),
	devoe => ww_devoe,
	o => ww_r5_out(13));

-- Location: IOOBUF_X30_Y81_N36
\r5_out[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro[14]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_r5_out(14));

-- Location: IOOBUF_X34_Y81_N93
\r5_out[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u_banco_reg|REG5|registro\(15),
	devoe => ww_devoe,
	o => ww_r5_out(15));

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X37_Y4_N21
\u_uc|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|Equal5~0_combout\ = ( \u_uc|u_maq|estado_s\(0) & ( !\u_uc|u_maq|estado_s\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_uc|u_maq|ALT_INV_estado_s\(1),
	dataf => \u_uc|u_maq|ALT_INV_estado_s\(0),
	combout => \u_uc|Equal5~0_combout\);

-- Location: IOIBUF_X40_Y0_N18
\rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X37_Y4_N22
\u_uc|u_maq|estado_s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_uc|Equal5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uc|u_maq|estado_s\(1));

-- Location: MLABCELL_X39_Y4_N12
\u_uc|u_maq|estado_s~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|u_maq|estado_s~0_combout\ = ( !\u_uc|u_maq|estado_s\(0) & ( !\u_uc|u_maq|estado_s\(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_uc|u_maq|ALT_INV_estado_s\(0),
	dataf => \u_uc|u_maq|ALT_INV_estado_s\(1),
	combout => \u_uc|u_maq|estado_s~0_combout\);

-- Location: FF_X37_Y4_N28
\u_uc|u_maq|estado_s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_uc|u_maq|estado_s~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uc|u_maq|estado_s\(0));

-- Location: LABCELL_X42_Y6_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( \u_pc|s_pc_at[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( \u_pc|s_pc_at[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X42_Y6_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( \u_pc|s_pc_at[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( \u_pc|s_pc_at[1]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: LABCELL_X42_Y6_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( \u_pc|s_pc_at[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( \u_pc|s_pc_at[2]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X37_Y4_N23
\u_uc|u_maq|estado_s[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_uc|Equal5~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uc|u_maq|estado_s[1]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N30
\u_uc|pc_en~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|pc_en~1_combout\ = ( \u_uc|Equal2~0_combout\ & ( !\u_uc|u_maq|estado_s\(0) ) ) # ( !\u_uc|Equal2~0_combout\ & ( (!\u_uc|u_maq|estado_s\(0) & ((!\u_uc|u_maq|estado_s[1]~DUPLICATE_q\) # (\u_uc|pc_en~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_pc_en~0_combout\,
	datab => \u_uc|u_maq|ALT_INV_estado_s\(0),
	datad => \u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_Equal2~0_combout\,
	combout => \u_uc|pc_en~1_combout\);

-- Location: FF_X39_Y6_N23
\u_pc|s_pc_at[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(0));

-- Location: LABCELL_X35_Y6_N0
\u_rom|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux9~0_combout\ = ( \u_rom|Mux0~0_combout\ & ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_pc|s_pc_at[3]~DUPLICATE_q\ & !\u_pc|s_pc_at\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at\(0),
	datae => \u_rom|ALT_INV_Mux0~0_combout\,
	dataf => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	combout => \u_rom|Mux9~0_combout\);

-- Location: FF_X35_Y6_N1
\u_rom|dado_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux9~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(4));

-- Location: LABCELL_X42_Y6_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( \u_pc|s_pc_at[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( \u_pc|s_pc_at[3]~DUPLICATE_q\ ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: LABCELL_X42_Y6_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( \u_pc|s_pc_at\(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( \u_pc|s_pc_at\(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X39_Y6_N17
\u_pc|s_pc_at[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(3));

-- Location: FF_X39_Y6_N20
\u_pc|s_pc_at[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(2));

-- Location: MLABCELL_X39_Y6_N42
\u_rom|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux10~0_combout\ = ( \u_pc|s_pc_at[1]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at\(3) & (\u_pc|s_pc_at\(2) & \u_pc|s_pc_at\(0))) # (\u_pc|s_pc_at\(3) & (!\u_pc|s_pc_at\(2) & !\u_pc|s_pc_at\(0))))) ) ) # ( 
-- !\u_pc|s_pc_at[1]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (\u_pc|s_pc_at\(3) & (!\u_pc|s_pc_at\(2) & !\u_pc|s_pc_at\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000001000001000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at\(3),
	datac => \u_pc|ALT_INV_s_pc_at\(2),
	datad => \u_pc|ALT_INV_s_pc_at\(0),
	dataf => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	combout => \u_rom|Mux10~0_combout\);

-- Location: FF_X39_Y6_N43
\u_rom|dado_out[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux10~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[3]~DUPLICATE_q\);

-- Location: FF_X39_Y6_N8
\u_pc|s_pc_at[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(1));

-- Location: LABCELL_X35_Y6_N54
\u_rom|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux12~0_combout\ = ( \u_pc|s_pc_at\(0) & ( (\u_rom|Mux0~0_combout\ & (\u_pc|s_pc_at\(1) & !\u_pc|s_pc_at[3]~DUPLICATE_q\)) ) ) # ( !\u_pc|s_pc_at\(0) & ( (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at[3]~DUPLICATE_q\ & ((!\u_pc|s_pc_at\(1)))) # 
-- (\u_pc|s_pc_at[3]~DUPLICATE_q\ & (!\u_pc|s_pc_at[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001000100010100000100010000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at\(1),
	datad => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at\(0),
	combout => \u_rom|Mux12~0_combout\);

-- Location: FF_X35_Y6_N55
\u_rom|dado_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux12~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(1));

-- Location: MLABCELL_X39_Y6_N27
\u_rom|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux13~0_combout\ = ( \u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at\(1) & (!\u_pc|s_pc_at\(3) & \u_pc|s_pc_at\(0)))) ) ) # ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at\(1) & 
-- ((!\u_pc|s_pc_at\(3)) # (!\u_pc|s_pc_at\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000000010001000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at\(1),
	datac => \u_pc|ALT_INV_s_pc_at\(3),
	datad => \u_pc|ALT_INV_s_pc_at\(0),
	dataf => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	combout => \u_rom|Mux13~0_combout\);

-- Location: FF_X39_Y6_N28
\u_rom|dado_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux13~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(0));

-- Location: LABCELL_X40_Y6_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( \Add0~1_sumout\ ) + ( \u_rom|dado_out\(0) ) + ( !VCC ))
-- \Add1~2\ = CARRY(( \Add0~1_sumout\ ) + ( \u_rom|dado_out\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(0),
	datad => \ALT_INV_Add0~1_sumout\,
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X40_Y6_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( \Add0~5_sumout\ ) + ( \u_rom|dado_out\(1) ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( \Add0~5_sumout\ ) + ( \u_rom|dado_out\(1) ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \ALT_INV_Add0~5_sumout\,
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X40_Y6_N6
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( \Add0~9_sumout\ ) + ( \u_rom|dado_out[2]~DUPLICATE_q\ ) + ( \Add1~6\ ))
-- \Add1~10\ = CARRY(( \Add0~9_sumout\ ) + ( \u_rom|dado_out[2]~DUPLICATE_q\ ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\,
	datad => \ALT_INV_Add0~9_sumout\,
	cin => \Add1~6\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: LABCELL_X40_Y6_N9
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( \u_rom|dado_out[3]~DUPLICATE_q\ ) + ( \Add0~13_sumout\ ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( \u_rom|dado_out[3]~DUPLICATE_q\ ) + ( \Add0~13_sumout\ ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\,
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: LABCELL_X40_Y6_N12
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( \Add0~17_sumout\ ) + ( \u_rom|dado_out\(4) ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( \Add0~17_sumout\ ) + ( \u_rom|dado_out\(4) ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(4),
	datad => \ALT_INV_Add0~17_sumout\,
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: MLABCELL_X39_Y6_N30
\s_pc_prox[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[4]~4_combout\ = ( \Add1~17_sumout\ & ( (!\Equal1~0_combout\ & (((\Add0~17_sumout\) # (\Equal0~0_combout\)))) # (\Equal1~0_combout\ & (\u_rom|dado_out\(4))) ) ) # ( !\Add1~17_sumout\ & ( (!\Equal1~0_combout\ & (((!\Equal0~0_combout\ & 
-- \Add0~17_sumout\)))) # (\Equal1~0_combout\ & (\u_rom|dado_out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011000101010100111111010101010011111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(4),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~17_sumout\,
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Add1~17_sumout\,
	combout => \s_pc_prox[4]~4_combout\);

-- Location: FF_X39_Y6_N31
\u_pc|s_pc_at[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(4));

-- Location: LABCELL_X42_Y6_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( \u_pc|s_pc_at\(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( \u_pc|s_pc_at\(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: LABCELL_X40_Y6_N15
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( \u_rom|dado_out\(4) ) + ( \Add0~21_sumout\ ) + ( \Add1~18\ ))
-- \Add1~22\ = CARRY(( \u_rom|dado_out\(4) ) + ( \Add0~21_sumout\ ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(4),
	datac => \ALT_INV_Add0~21_sumout\,
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\,
	cout => \Add1~22\);

-- Location: MLABCELL_X39_Y6_N33
\s_pc_prox[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[5]~5_combout\ = ( \Add1~21_sumout\ & ( (!\Equal1~0_combout\ & (((\Add0~21_sumout\) # (\Equal0~0_combout\)))) # (\Equal1~0_combout\ & (\u_rom|dado_out\(4))) ) ) # ( !\Add1~21_sumout\ & ( (!\Equal1~0_combout\ & (((!\Equal0~0_combout\ & 
-- \Add0~21_sumout\)))) # (\Equal1~0_combout\ & (\u_rom|dado_out\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111000101000001011100010100110101111101010011010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(4),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Add0~21_sumout\,
	dataf => \ALT_INV_Add1~21_sumout\,
	combout => \s_pc_prox[5]~5_combout\);

-- Location: FF_X39_Y6_N35
\u_pc|s_pc_at[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(5));

-- Location: LABCELL_X42_Y6_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( \u_pc|s_pc_at\(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( \u_pc|s_pc_at\(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: LABCELL_X40_Y6_N18
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( \Add0~25_sumout\ ) + ( \u_rom|dado_out\(4) ) + ( \Add1~22\ ))
-- \Add1~26\ = CARRY(( \Add0~25_sumout\ ) + ( \u_rom|dado_out\(4) ) + ( \Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(4),
	datad => \ALT_INV_Add0~25_sumout\,
	cin => \Add1~22\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: MLABCELL_X39_Y6_N12
\s_pc_prox[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[6]~6_combout\ = ( \u_rom|dado_out\(4) & ( ((!\Equal0~0_combout\ & (\Add0~25_sumout\)) # (\Equal0~0_combout\ & ((\Add1~25_sumout\)))) # (\Equal1~0_combout\) ) ) # ( !\u_rom|dado_out\(4) & ( (!\Equal1~0_combout\ & ((!\Equal0~0_combout\ & 
-- (\Add0~25_sumout\)) # (\Equal0~0_combout\ & ((\Add1~25_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~25_sumout\,
	datad => \ALT_INV_Add1~25_sumout\,
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \s_pc_prox[6]~6_combout\);

-- Location: FF_X39_Y6_N13
\u_pc|s_pc_at[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(6));

-- Location: MLABCELL_X39_Y6_N24
\u_rom|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux0~0_combout\ = ( !\u_pc|s_pc_at\(6) & ( (!\u_pc|s_pc_at\(5) & !\u_pc|s_pc_at\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(5),
	datad => \u_pc|ALT_INV_s_pc_at\(4),
	dataf => \u_pc|ALT_INV_s_pc_at\(6),
	combout => \u_rom|Mux0~0_combout\);

-- Location: MLABCELL_X39_Y6_N45
\u_rom|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux11~0_combout\ = ( \u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at\(3) & (!\u_pc|s_pc_at\(1) & \u_pc|s_pc_at\(0)))) ) ) # ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (\u_pc|s_pc_at\(3) & 
-- !\u_pc|s_pc_at\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at\(3),
	datac => \u_pc|ALT_INV_s_pc_at\(1),
	datad => \u_pc|ALT_INV_s_pc_at\(0),
	dataf => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	combout => \u_rom|Mux11~0_combout\);

-- Location: FF_X39_Y6_N46
\u_rom|dado_out[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux11~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[2]~DUPLICATE_q\);

-- Location: FF_X39_Y6_N47
\u_rom|dado_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux11~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(2));

-- Location: MLABCELL_X39_Y6_N18
\s_pc_prox[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[2]~2_combout\ = ( \u_rom|dado_out\(2) & ( ((!\Equal0~0_combout\ & (\Add0~9_sumout\)) # (\Equal0~0_combout\ & ((\Add1~9_sumout\)))) # (\Equal1~0_combout\) ) ) # ( !\u_rom|dado_out\(2) & ( (!\Equal1~0_combout\ & ((!\Equal0~0_combout\ & 
-- (\Add0~9_sumout\)) # (\Equal0~0_combout\ & ((\Add1~9_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~9_sumout\,
	datad => \ALT_INV_Add1~9_sumout\,
	dataf => \u_rom|ALT_INV_dado_out\(2),
	combout => \s_pc_prox[2]~2_combout\);

-- Location: FF_X39_Y6_N19
\u_pc|s_pc_at[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at[2]~DUPLICATE_q\);

-- Location: FF_X39_Y6_N44
\u_rom|dado_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux10~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(3));

-- Location: MLABCELL_X39_Y6_N15
\s_pc_prox[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[3]~3_combout\ = ( \u_rom|dado_out\(3) & ( ((!\Equal0~0_combout\ & (\Add0~13_sumout\)) # (\Equal0~0_combout\ & ((\Add1~13_sumout\)))) # (\Equal1~0_combout\) ) ) # ( !\u_rom|dado_out\(3) & ( (!\Equal1~0_combout\ & ((!\Equal0~0_combout\ & 
-- (\Add0~13_sumout\)) # (\Equal0~0_combout\ & ((\Add1~13_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~13_sumout\,
	datad => \ALT_INV_Add1~13_sumout\,
	dataf => \u_rom|ALT_INV_dado_out\(3),
	combout => \s_pc_prox[3]~3_combout\);

-- Location: FF_X39_Y6_N16
\u_pc|s_pc_at[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at[3]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N6
\u_rom|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux3~0_combout\ = ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( \u_pc|s_pc_at[1]~DUPLICATE_q\ & ( (\u_pc|s_pc_at[0]~DUPLICATE_q\ & (!\u_pc|s_pc_at[3]~DUPLICATE_q\ & \u_rom|Mux0~0_combout\)) ) ) ) # ( \u_pc|s_pc_at[2]~DUPLICATE_q\ & ( 
-- !\u_pc|s_pc_at[1]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at[3]~DUPLICATE_q\ & \u_rom|Mux0~0_combout\) ) ) ) # ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( !\u_pc|s_pc_at[1]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at[0]~DUPLICATE_q\) # 
-- (!\u_pc|s_pc_at[3]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111000001110000011000000110000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	datab => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_Mux0~0_combout\,
	datae => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	combout => \u_rom|Mux3~0_combout\);

-- Location: FF_X34_Y6_N7
\u_rom|dado_out[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux3~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[12]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N15
\u_rom|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux2~0_combout\ = ( \u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at[2]~DUPLICATE_q\ & (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at[0]~DUPLICATE_q\ $ (!\u_pc|s_pc_at[1]~DUPLICATE_q\)))) ) ) # ( !\u_pc|s_pc_at[3]~DUPLICATE_q\ & ( 
-- (\u_pc|s_pc_at[0]~DUPLICATE_q\ & (\u_pc|s_pc_at[1]~DUPLICATE_q\ & (!\u_pc|s_pc_at[2]~DUPLICATE_q\ & \u_rom|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000011000000000000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	datab => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_Mux0~0_combout\,
	dataf => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	combout => \u_rom|Mux2~0_combout\);

-- Location: FF_X34_Y6_N16
\u_rom|dado_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux2~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(13));

-- Location: MLABCELL_X34_Y6_N21
\u_rom|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux0~1_combout\ = ( !\u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (\u_pc|s_pc_at[1]~DUPLICATE_q\ & (\u_pc|s_pc_at[2]~DUPLICATE_q\ & \u_pc|s_pc_at[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	datad => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	combout => \u_rom|Mux0~1_combout\);

-- Location: FF_X34_Y6_N23
\u_rom|dado_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux0~1_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(15));

-- Location: LABCELL_X37_Y4_N51
\u_uc|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|Equal2~0_combout\ = ( \u_rom|dado_out\(13) & ( !\u_rom|dado_out\(15) & ( (\u_rom|dado_out\(14) & !\u_rom|dado_out[12]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(14),
	datac => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out\(13),
	dataf => \u_rom|ALT_INV_dado_out\(15),
	combout => \u_uc|Equal2~0_combout\);

-- Location: LABCELL_X37_Y4_N6
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \u_uc|u_maq|estado_s[1]~DUPLICATE_q\ & ( (!\u_uc|u_maq|estado_s\(0) & \u_uc|Equal2~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_uc|u_maq|ALT_INV_estado_s\(0),
	datac => \u_uc|ALT_INV_Equal2~0_combout\,
	datae => \u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\,
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X39_Y6_N6
\s_pc_prox[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[1]~1_combout\ = ( \Add1~5_sumout\ & ( (!\Equal1~0_combout\ & (((\Equal0~0_combout\)) # (\Add0~5_sumout\))) # (\Equal1~0_combout\ & (((\u_rom|dado_out\(1))))) ) ) # ( !\Add1~5_sumout\ & ( (!\Equal1~0_combout\ & (\Add0~5_sumout\ & 
-- (!\Equal0~0_combout\))) # (\Equal1~0_combout\ & (((\u_rom|dado_out\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101110111000011110111011100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~5_sumout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \ALT_INV_Equal1~0_combout\,
	dataf => \ALT_INV_Add1~5_sumout\,
	combout => \s_pc_prox[1]~1_combout\);

-- Location: FF_X39_Y6_N7
\u_pc|s_pc_at[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N54
\u_rom|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux1~0_combout\ = ( \u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at[2]~DUPLICATE_q\ & (!\u_pc|s_pc_at[0]~DUPLICATE_q\ $ (!\u_pc|s_pc_at[1]~DUPLICATE_q\)))) ) ) # ( !\u_pc|s_pc_at[3]~DUPLICATE_q\ & ( 
-- (\u_pc|s_pc_at[1]~DUPLICATE_q\ & (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at[0]~DUPLICATE_q\) # (!\u_pc|s_pc_at[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000110000000000000011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	datab => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_Mux0~0_combout\,
	datad => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	combout => \u_rom|Mux1~0_combout\);

-- Location: FF_X34_Y6_N55
\u_rom|dado_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux1~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(14));

-- Location: LABCELL_X37_Y4_N36
\u_uc|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|Equal6~0_combout\ = ( !\u_rom|dado_out\(13) & ( (!\u_rom|dado_out\(14) & (\u_rom|dado_out[12]~DUPLICATE_q\ & !\u_rom|dado_out\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000000000000000000100010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(14),
	datab => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(15),
	datae => \u_rom|ALT_INV_dado_out\(13),
	combout => \u_uc|Equal6~0_combout\);

-- Location: MLABCELL_X34_Y6_N57
\u_rom|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux8~0_combout\ = ( \u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at[0]~DUPLICATE_q\ & (!\u_pc|s_pc_at[2]~DUPLICATE_q\ & \u_rom|Mux0~0_combout\)) ) ) # ( !\u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at[0]~DUPLICATE_q\ & 
-- (\u_pc|s_pc_at[1]~DUPLICATE_q\ & (!\u_pc|s_pc_at[2]~DUPLICATE_q\ & \u_rom|Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	datab => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_Mux0~0_combout\,
	dataf => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	combout => \u_rom|Mux8~0_combout\);

-- Location: FF_X34_Y6_N59
\u_rom|dado_out[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux8~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[7]~DUPLICATE_q\);

-- Location: FF_X34_Y6_N17
\u_rom|dado_out[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux2~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[13]~DUPLICATE_q\);

-- Location: FF_X34_Y6_N56
\u_rom|dado_out[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux1~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[14]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y6_N12
\u_ula|flag_c~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|flag_c~0_combout\ = ( \u_rom|dado_out[14]~DUPLICATE_q\ & ( !\u_rom|dado_out\(15) & ( !\u_rom|dado_out[13]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(15),
	combout => \u_ula|flag_c~0_combout\);

-- Location: LABCELL_X37_Y4_N18
\u_uc|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|Equal10~0_combout\ = ( !\u_rom|dado_out\(15) & ( (\u_rom|dado_out\(14) & (\u_rom|dado_out[12]~DUPLICATE_q\ & !\u_rom|dado_out\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000000000100010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(14),
	datab => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(13),
	dataf => \u_rom|ALT_INV_dado_out\(15),
	combout => \u_uc|Equal10~0_combout\);

-- Location: LABCELL_X36_Y6_N27
\u_ula|saida[0]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[0]~19_combout\ = ( !\u_uc|Equal10~0_combout\ & ( \u_ula|flag_c~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	dataf => \u_uc|ALT_INV_Equal10~0_combout\,
	combout => \u_ula|saida[0]~19_combout\);

-- Location: FF_X34_Y6_N8
\u_rom|dado_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux3~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(12));

-- Location: LABCELL_X35_Y6_N57
\u_rom|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux7~0_combout\ = ( !\u_pc|s_pc_at\(0) & ( (\u_rom|Mux0~0_combout\ & (\u_pc|s_pc_at[2]~DUPLICATE_q\ & (\u_pc|s_pc_at\(1) & !\u_pc|s_pc_at[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_Mux0~0_combout\,
	datab => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	datac => \u_pc|ALT_INV_s_pc_at\(1),
	datad => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at\(0),
	combout => \u_rom|Mux7~0_combout\);

-- Location: FF_X35_Y6_N59
\u_rom|dado_out[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux7~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N36
\u_mux_ula_b|data_out[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[1]~0_combout\ = ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_rom|dado_out[13]~DUPLICATE_q\ & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & (((!\u_rom|dado_out\(12)) # (\u_rom|dado_out\(15))) # (\u_rom|dado_out[14]~DUPLICATE_q\))) ) ) ) # ( 
-- \u_rom|dado_out[8]~DUPLICATE_q\ & ( !\u_rom|dado_out[13]~DUPLICATE_q\ & ( \u_rom|dado_out[7]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out\(12),
	datac => \u_rom|ALT_INV_dado_out\(15),
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[1]~0_combout\);

-- Location: MLABCELL_X34_Y6_N12
\u_rom|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux5~0_combout\ = ( !\u_pc|s_pc_at[3]~DUPLICATE_q\ & ( (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at[0]~DUPLICATE_q\ & ((\u_pc|s_pc_at[2]~DUPLICATE_q\))) # (\u_pc|s_pc_at[0]~DUPLICATE_q\ & (!\u_pc|s_pc_at[1]~DUPLICATE_q\ & 
-- !\u_pc|s_pc_at[2]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001010000001000000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at[0]~DUPLICATE_q\,
	datab => \u_pc|ALT_INV_s_pc_at[1]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_Mux0~0_combout\,
	datad => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	combout => \u_rom|Mux5~0_combout\);

-- Location: FF_X34_Y6_N13
\u_rom|dado_out[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux5~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[10]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y6_N30
\u_rom|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux6~0_combout\ = ( \u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at\(0) & (\u_rom|Mux0~0_combout\ & !\u_pc|s_pc_at[3]~DUPLICATE_q\)) ) ) # ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at\(0) & (\u_rom|Mux0~0_combout\ & ((!\u_pc|s_pc_at\(1)) 
-- # (!\u_pc|s_pc_at[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100000001000100010000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at\(0),
	datab => \u_rom|ALT_INV_Mux0~0_combout\,
	datac => \u_pc|ALT_INV_s_pc_at\(1),
	datad => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	dataf => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	combout => \u_rom|Mux6~0_combout\);

-- Location: FF_X34_Y6_N41
\u_rom|dado_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_rom|Mux6~0_combout\,
	sload => VCC,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(9));

-- Location: LABCELL_X35_Y6_N33
\u_rom|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_rom|Mux4~0_combout\ = ( \u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (\u_pc|s_pc_at\(0) & (\u_rom|Mux0~0_combout\ & (!\u_pc|s_pc_at[3]~DUPLICATE_q\ & !\u_pc|s_pc_at\(1)))) ) ) # ( !\u_pc|s_pc_at[2]~DUPLICATE_q\ & ( (!\u_pc|s_pc_at\(0) & (\u_rom|Mux0~0_combout\ & 
-- (\u_pc|s_pc_at[3]~DUPLICATE_q\ & !\u_pc|s_pc_at\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_pc|ALT_INV_s_pc_at\(0),
	datab => \u_rom|ALT_INV_Mux0~0_combout\,
	datac => \u_pc|ALT_INV_s_pc_at[3]~DUPLICATE_q\,
	datad => \u_pc|ALT_INV_s_pc_at\(1),
	dataf => \u_pc|ALT_INV_s_pc_at[2]~DUPLICATE_q\,
	combout => \u_rom|Mux4~0_combout\);

-- Location: FF_X35_Y6_N34
\u_rom|dado_out[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux4~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[11]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y4_N57
\u_uc|wr_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|wr_en~0_combout\ = ( \u_rom|dado_out\(13) & ( !\u_rom|dado_out\(15) & ( (!\u_rom|dado_out\(14) & (\u_uc|u_maq|estado_s\(0) & !\u_uc|u_maq|estado_s[1]~DUPLICATE_q\)) ) ) ) # ( !\u_rom|dado_out\(13) & ( !\u_rom|dado_out\(15) & ( 
-- (\u_uc|u_maq|estado_s\(0) & (!\u_uc|u_maq|estado_s[1]~DUPLICATE_q\ & ((\u_rom|dado_out[12]~DUPLICATE_q\) # (\u_rom|dado_out\(14))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000000000010100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(14),
	datab => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datac => \u_uc|u_maq|ALT_INV_estado_s\(0),
	datad => \u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out\(13),
	dataf => \u_rom|ALT_INV_dado_out\(15),
	combout => \u_uc|wr_en~0_combout\);

-- Location: LABCELL_X33_Y6_N24
\u_banco_reg|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~3_combout\ = ( !\u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (\u_rom|dado_out[10]~DUPLICATE_q\ & \u_rom|dado_out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(9),
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~3_combout\);

-- Location: FF_X34_Y5_N20
\u_banco_reg|REG3|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(13));

-- Location: MLABCELL_X34_Y6_N24
\u_uc|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|Equal8~0_combout\ = ( \u_rom|dado_out[13]~DUPLICATE_q\ & ( (\u_rom|dado_out\(12) & (!\u_rom|dado_out\(15) & !\u_rom|dado_out[14]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(12),
	datac => \u_rom|ALT_INV_dado_out\(15),
	datad => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	combout => \u_uc|Equal8~0_combout\);

-- Location: FF_X35_Y6_N58
\u_rom|dado_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux7~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(8));

-- Location: LABCELL_X33_Y6_N3
\u_banco_reg|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~5_combout\ = ( \u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (\u_rom|dado_out\(9) & !\u_rom|dado_out[10]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(9),
	datad => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~5_combout\);

-- Location: FF_X34_Y5_N5
\u_banco_reg|REG5|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(13));

-- Location: LABCELL_X33_Y6_N21
\u_banco_reg|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~0_combout\ = ( !\u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (!\u_rom|dado_out\(9) & !\u_rom|dado_out[10]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(9),
	datad => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~0_combout\);

-- Location: FF_X36_Y5_N49
\u_banco_reg|REG0|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(13));

-- Location: LABCELL_X33_Y6_N48
\u_banco_reg|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~1_combout\ = ( !\u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (!\u_rom|dado_out[10]~DUPLICATE_q\ & \u_rom|dado_out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(9),
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~1_combout\);

-- Location: FF_X34_Y7_N40
\u_banco_reg|REG1|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(13));

-- Location: LABCELL_X33_Y6_N6
\u_banco_reg|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~4_combout\ = ( \u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (!\u_rom|dado_out[10]~DUPLICATE_q\ & !\u_rom|dado_out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(9),
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~4_combout\);

-- Location: FF_X35_Y7_N19
\u_banco_reg|REG4|registro[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[13]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N24
\u_mux_ula_b|data_out[13]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[13]~32_combout\ = ( \u_banco_reg|REG4|registro[13]~DUPLICATE_q\ & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8) & ((\u_banco_reg|REG1|registro\(13)))) # (\u_rom|dado_out\(8) & (\u_banco_reg|REG5|registro\(13))) ) ) ) # ( 
-- !\u_banco_reg|REG4|registro[13]~DUPLICATE_q\ & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8) & ((\u_banco_reg|REG1|registro\(13)))) # (\u_rom|dado_out\(8) & (\u_banco_reg|REG5|registro\(13))) ) ) ) # ( \u_banco_reg|REG4|registro[13]~DUPLICATE_q\ & ( 
-- !\u_rom|dado_out\(4) & ( (\u_banco_reg|REG0|registro\(13)) # (\u_rom|dado_out\(8)) ) ) ) # ( !\u_banco_reg|REG4|registro[13]~DUPLICATE_q\ & ( !\u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8) & \u_banco_reg|REG0|registro\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010111110101111100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(8),
	datab => \u_banco_reg|REG5|ALT_INV_registro\(13),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(13),
	datad => \u_banco_reg|REG1|ALT_INV_registro\(13),
	datae => \u_banco_reg|REG4|ALT_INV_registro[13]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[13]~32_combout\);

-- Location: LABCELL_X33_Y6_N54
\u_banco_reg|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|Equal0~2_combout\ = ( !\u_rom|dado_out[11]~DUPLICATE_q\ & ( \u_uc|wr_en~0_combout\ & ( (\u_rom|dado_out[10]~DUPLICATE_q\ & !\u_rom|dado_out\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[10]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(9),
	datae => \u_rom|ALT_INV_dado_out[11]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_wr_en~0_combout\,
	combout => \u_banco_reg|Equal0~2_combout\);

-- Location: FF_X34_Y7_N19
\u_banco_reg|REG2|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(13));

-- Location: LABCELL_X36_Y7_N18
\u_mux_ula_b|data_out[13]~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[13]~44_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_mux_ula_b|data_out[13]~32_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- (\u_banco_reg|REG2|registro\(13)))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- ((\u_mux_ula_b|data_out[13]~32_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(13)))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001010101000001000101010110001100010101011000110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(13),
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_mux_ula_b|ALT_INV_data_out[13]~32_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro\(13),
	combout => \u_mux_ula_b|data_out[13]~44_combout\);

-- Location: FF_X34_Y6_N58
\u_rom|dado_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux8~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(7));

-- Location: FF_X35_Y6_N2
\u_rom|dado_out[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux9~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N33
\s_reg_r1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_reg_r1[0]~0_combout\ = ( \u_rom|dado_out[4]~DUPLICATE_q\ & ( \u_rom|dado_out\(9) ) ) # ( !\u_rom|dado_out[4]~DUPLICATE_q\ & ( \u_rom|dado_out\(9) & ( (!\u_rom|dado_out[14]~DUPLICATE_q\) # ((!\u_rom|dado_out\(12)) # ((\u_rom|dado_out\(15)) # 
-- (\u_rom|dado_out[13]~DUPLICATE_q\))) ) ) ) # ( \u_rom|dado_out[4]~DUPLICATE_q\ & ( !\u_rom|dado_out\(9) & ( (\u_rom|dado_out[14]~DUPLICATE_q\ & (\u_rom|dado_out\(12) & (!\u_rom|dado_out[13]~DUPLICATE_q\ & !\u_rom|dado_out\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000011101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out\(12),
	datac => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(15),
	datae => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(9),
	combout => \s_reg_r1[0]~0_combout\);

-- Location: FF_X35_Y6_N35
\u_rom|dado_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux4~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(11));

-- Location: MLABCELL_X34_Y6_N0
\s_reg_r1[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_reg_r1[2]~2_combout\ = ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_rom|dado_out\(11) ) ) # ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_rom|dado_out\(11) & ( (((!\u_rom|dado_out[14]~DUPLICATE_q\) # (!\u_rom|dado_out\(12))) # 
-- (\u_rom|dado_out[13]~DUPLICATE_q\)) # (\u_rom|dado_out\(15)) ) ) ) # ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( !\u_rom|dado_out\(11) & ( (!\u_rom|dado_out\(15) & (!\u_rom|dado_out[13]~DUPLICATE_q\ & (\u_rom|dado_out[14]~DUPLICATE_q\ & \u_rom|dado_out\(12)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100011111111111101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(15),
	datab => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(12),
	datae => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(11),
	combout => \s_reg_r1[2]~2_combout\);

-- Location: FF_X34_Y6_N14
\u_rom|dado_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_rom|Mux5~0_combout\,
	ena => \u_uc|u_maq|estado_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_rom|dado_out\(10));

-- Location: MLABCELL_X34_Y6_N30
\s_reg_r1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_reg_r1[1]~1_combout\ = ( \u_rom|dado_out[7]~DUPLICATE_q\ & ( \u_rom|dado_out\(10) ) ) # ( !\u_rom|dado_out[7]~DUPLICATE_q\ & ( \u_rom|dado_out\(10) & ( (!\u_rom|dado_out[14]~DUPLICATE_q\) # ((!\u_rom|dado_out\(12)) # ((\u_rom|dado_out[13]~DUPLICATE_q\) 
-- # (\u_rom|dado_out\(15)))) ) ) ) # ( \u_rom|dado_out[7]~DUPLICATE_q\ & ( !\u_rom|dado_out\(10) & ( (\u_rom|dado_out[14]~DUPLICATE_q\ & (\u_rom|dado_out\(12) & (!\u_rom|dado_out\(15) & !\u_rom|dado_out[13]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000011101111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[14]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out\(12),
	datac => \u_rom|ALT_INV_dado_out\(15),
	datad => \u_rom|ALT_INV_dado_out[13]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(10),
	combout => \s_reg_r1[1]~1_combout\);

-- Location: MLABCELL_X34_Y6_N18
\u_banco_reg|data_r1[15]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[15]~2_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \s_reg_r1[2]~2_combout\ ) ) # ( !\s_reg_r1[1]~1_combout\ & ( (!\s_reg_r1[0]~0_combout\ & \s_reg_r1[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_reg_r1[0]~0_combout\,
	datad => \ALT_INV_s_reg_r1[2]~2_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[15]~2_combout\);

-- Location: MLABCELL_X34_Y6_N45
\u_banco_reg|data_r1[15]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[15]~1_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[2]~2_combout\ ) ) # ( !\s_reg_r1[0]~0_combout\ & ( (\s_reg_r1[1]~1_combout\ & \s_reg_r1[2]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_s_reg_r1[1]~1_combout\,
	datad => \ALT_INV_s_reg_r1[2]~2_combout\,
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[15]~1_combout\);

-- Location: FF_X36_Y6_N11
\u_banco_reg|REG5|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(12));

-- Location: FF_X37_Y6_N44
\u_banco_reg|REG4|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(12));

-- Location: FF_X37_Y6_N53
\u_banco_reg|REG0|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(12));

-- Location: FF_X36_Y5_N38
\u_banco_reg|REG1|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(12));

-- Location: FF_X36_Y6_N13
\u_banco_reg|REG2|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(12));

-- Location: LABCELL_X37_Y6_N30
\u_banco_reg|data_r1[12]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[12]~26_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro\(12) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(12) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(12) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(12),
	datab => \u_banco_reg|REG3|ALT_INV_registro\(12),
	datac => \u_banco_reg|REG1|ALT_INV_registro\(12),
	datad => \u_banco_reg|REG2|ALT_INV_registro\(12),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[12]~26_combout\);

-- Location: LABCELL_X36_Y6_N21
\u_banco_reg|data_r1[12]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[12]~27_combout\ = ( \u_banco_reg|data_r1[12]~26_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(12))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(12))))) ) ) # ( !\u_banco_reg|data_r1[12]~26_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG5|registro\(12)))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(12))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG5|ALT_INV_registro\(12),
	datad => \u_banco_reg|REG4|ALT_INV_registro\(12),
	dataf => \u_banco_reg|ALT_INV_data_r1[12]~26_combout\,
	combout => \u_banco_reg|data_r1[12]~27_combout\);

-- Location: FF_X34_Y5_N2
\u_banco_reg|REG5|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[11]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(11));

-- Location: LABCELL_X35_Y3_N57
\u_banco_reg|REG4|registro[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG4|registro[11]~feeder_combout\ = ( \u_mux_write|data_out[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[11]~11_combout\,
	combout => \u_banco_reg|REG4|registro[11]~feeder_combout\);

-- Location: FF_X35_Y3_N59
\u_banco_reg|REG4|registro[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[11]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y3_N6
\u_banco_reg|REG1|registro[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[11]~feeder_combout\ = ( \u_mux_write|data_out[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[11]~11_combout\,
	combout => \u_banco_reg|REG1|registro[11]~feeder_combout\);

-- Location: FF_X34_Y3_N7
\u_banco_reg|REG1|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(11));

-- Location: MLABCELL_X34_Y3_N24
\u_banco_reg|REG0|registro[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[11]~feeder_combout\ = ( \u_mux_write|data_out[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[11]~11_combout\,
	combout => \u_banco_reg|REG0|registro[11]~feeder_combout\);

-- Location: FF_X34_Y3_N25
\u_banco_reg|REG0|registro[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[11]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y3_N51
\u_banco_reg|REG2|registro[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG2|registro[11]~feeder_combout\ = ( \u_mux_write|data_out[11]~11_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[11]~11_combout\,
	combout => \u_banco_reg|REG2|registro[11]~feeder_combout\);

-- Location: FF_X35_Y3_N52
\u_banco_reg|REG2|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG2|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(11));

-- Location: LABCELL_X35_Y3_N36
\u_banco_reg|data_r1[11]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[11]~24_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro\(11) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(11) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(11) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro[11]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(11),
	datab => \u_banco_reg|REG0|ALT_INV_registro[11]~DUPLICATE_q\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(11),
	datad => \u_banco_reg|REG2|ALT_INV_registro\(11),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[11]~24_combout\);

-- Location: LABCELL_X35_Y3_N6
\u_banco_reg|data_r1[11]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[11]~25_combout\ = ( !\u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|REG4|registro[11]~DUPLICATE_q\ ) ) ) # ( \u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & 
-- ( \u_banco_reg|REG5|registro\(11) ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|data_r1[11]~24_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG5|ALT_INV_registro\(11),
	datab => \u_banco_reg|REG4|ALT_INV_registro[11]~DUPLICATE_q\,
	datac => \u_banco_reg|ALT_INV_data_r1[11]~24_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	combout => \u_banco_reg|data_r1[11]~25_combout\);

-- Location: FF_X36_Y6_N1
\u_banco_reg|REG5|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[10]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(10));

-- Location: LABCELL_X37_Y6_N27
\u_banco_reg|REG4|registro[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG4|registro[10]~feeder_combout\ = ( \u_mux_write|data_out[10]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[10]~10_combout\,
	combout => \u_banco_reg|REG4|registro[10]~feeder_combout\);

-- Location: FF_X37_Y6_N28
\u_banco_reg|REG4|registro[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[10]~DUPLICATE_q\);

-- Location: FF_X35_Y6_N29
\u_banco_reg|REG3|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[10]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(10));

-- Location: LABCELL_X33_Y6_N36
\u_banco_reg|REG1|registro[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[10]~feeder_combout\ = ( \u_mux_write|data_out[10]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[10]~10_combout\,
	combout => \u_banco_reg|REG1|registro[10]~feeder_combout\);

-- Location: FF_X33_Y6_N37
\u_banco_reg|REG1|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(10));

-- Location: FF_X36_Y6_N29
\u_banco_reg|REG2|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[10]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(10));

-- Location: LABCELL_X37_Y6_N6
\u_banco_reg|REG0|registro[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[10]~feeder_combout\ = ( \u_mux_write|data_out[10]~10_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[10]~10_combout\,
	combout => \u_banco_reg|REG0|registro[10]~feeder_combout\);

-- Location: FF_X37_Y6_N8
\u_banco_reg|REG0|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(10));

-- Location: LABCELL_X35_Y6_N24
\u_banco_reg|data_r1[10]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[10]~22_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro\(10) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(10) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(10) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(10),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(10),
	datac => \u_banco_reg|REG2|ALT_INV_registro\(10),
	datad => \u_banco_reg|REG0|ALT_INV_registro\(10),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[10]~22_combout\);

-- Location: LABCELL_X35_Y6_N39
\u_banco_reg|data_r1[10]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[10]~23_combout\ = ( \u_banco_reg|REG4|registro[10]~DUPLICATE_q\ & ( \u_banco_reg|data_r1[10]~22_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(10) & !\u_banco_reg|data_r1[15]~2_combout\)) ) ) ) # ( 
-- !\u_banco_reg|REG4|registro[10]~DUPLICATE_q\ & ( \u_banco_reg|data_r1[10]~22_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # (\u_banco_reg|REG5|registro\(10)))) ) ) ) # ( 
-- \u_banco_reg|REG4|registro[10]~DUPLICATE_q\ & ( !\u_banco_reg|data_r1[10]~22_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|REG5|registro\(10) & \u_banco_reg|data_r1[15]~1_combout\)) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- ((!\u_banco_reg|data_r1[15]~1_combout\))) ) ) ) # ( !\u_banco_reg|REG4|registro[10]~DUPLICATE_q\ & ( !\u_banco_reg|data_r1[10]~22_combout\ & ( (\u_banco_reg|REG5|registro\(10) & (!\u_banco_reg|data_r1[15]~2_combout\ & \u_banco_reg|data_r1[15]~1_combout\)) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100001100110100010011001100010001001111111101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG5|ALT_INV_registro\(10),
	datab => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datae => \u_banco_reg|REG4|ALT_INV_registro[10]~DUPLICATE_q\,
	dataf => \u_banco_reg|ALT_INV_data_r1[10]~22_combout\,
	combout => \u_banco_reg|data_r1[10]~23_combout\);

-- Location: FF_X34_Y5_N38
\u_banco_reg|REG3|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(9));

-- Location: MLABCELL_X34_Y7_N42
\u_mux_ula_b|data_out[9]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[9]~27_combout\ = ( \u_rom|dado_out\(8) & ( \u_uc|Equal8~0_combout\ & ( \u_rom|dado_out[7]~DUPLICATE_q\ ) ) ) # ( !\u_rom|dado_out\(8) & ( \u_uc|Equal8~0_combout\ & ( \u_rom|dado_out[7]~DUPLICATE_q\ ) ) ) # ( !\u_rom|dado_out\(8) & ( 
-- !\u_uc|Equal8~0_combout\ & ( (\u_banco_reg|REG3|registro\(9) & (\u_rom|dado_out[4]~DUPLICATE_q\ & \u_rom|dado_out[7]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(9),
	datac => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out\(8),
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	combout => \u_mux_ula_b|data_out[9]~27_combout\);

-- Location: MLABCELL_X34_Y7_N9
\u_banco_reg|REG1|registro[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[9]~feeder_combout\ = ( \u_mux_write|data_out[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[9]~9_combout\,
	combout => \u_banco_reg|REG1|registro[9]~feeder_combout\);

-- Location: FF_X34_Y7_N11
\u_banco_reg|REG1|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(9));

-- Location: LABCELL_X33_Y6_N30
\u_banco_reg|REG4|registro[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG4|registro[9]~feeder_combout\ = ( \u_mux_write|data_out[9]~9_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[9]~9_combout\,
	combout => \u_banco_reg|REG4|registro[9]~feeder_combout\);

-- Location: FF_X33_Y6_N31
\u_banco_reg|REG4|registro[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[9]~DUPLICATE_q\);

-- Location: FF_X34_Y6_N5
\u_banco_reg|REG0|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(9));

-- Location: MLABCELL_X34_Y7_N27
\u_mux_ula_b|data_out[9]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[9]~26_combout\ = ( \u_banco_reg|REG4|registro[9]~DUPLICATE_q\ & ( \u_banco_reg|REG0|registro\(9) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\) # ((!\u_rom|dado_out\(8) & (\u_banco_reg|REG1|registro\(9))) # (\u_rom|dado_out\(8) & 
-- ((\u_banco_reg|REG5|registro\(9))))) ) ) ) # ( !\u_banco_reg|REG4|registro[9]~DUPLICATE_q\ & ( \u_banco_reg|REG0|registro\(9) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\ & (((!\u_rom|dado_out\(8))))) # (\u_rom|dado_out[4]~DUPLICATE_q\ & ((!\u_rom|dado_out\(8) & 
-- (\u_banco_reg|REG1|registro\(9))) # (\u_rom|dado_out\(8) & ((\u_banco_reg|REG5|registro\(9)))))) ) ) ) # ( \u_banco_reg|REG4|registro[9]~DUPLICATE_q\ & ( !\u_banco_reg|REG0|registro\(9) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\ & (((\u_rom|dado_out\(8))))) # 
-- (\u_rom|dado_out[4]~DUPLICATE_q\ & ((!\u_rom|dado_out\(8) & (\u_banco_reg|REG1|registro\(9))) # (\u_rom|dado_out\(8) & ((\u_banco_reg|REG5|registro\(9)))))) ) ) ) # ( !\u_banco_reg|REG4|registro[9]~DUPLICATE_q\ & ( !\u_banco_reg|REG0|registro\(9) & ( 
-- (\u_rom|dado_out[4]~DUPLICATE_q\ & ((!\u_rom|dado_out\(8) & (\u_banco_reg|REG1|registro\(9))) # (\u_rom|dado_out\(8) & ((\u_banco_reg|REG5|registro\(9)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100011010111110111011000001011011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datab => \u_banco_reg|REG1|ALT_INV_registro\(9),
	datac => \u_banco_reg|REG5|ALT_INV_registro\(9),
	datad => \u_rom|ALT_INV_dado_out\(8),
	datae => \u_banco_reg|REG4|ALT_INV_registro[9]~DUPLICATE_q\,
	dataf => \u_banco_reg|REG0|ALT_INV_registro\(9),
	combout => \u_mux_ula_b|data_out[9]~26_combout\);

-- Location: FF_X33_Y5_N13
\u_banco_reg|REG2|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(9));

-- Location: MLABCELL_X34_Y6_N27
\u_mux_ula_b|data_out[4]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[4]~13_combout\ = ( !\u_uc|Equal8~0_combout\ & ( (!\u_rom|dado_out\(7)) # ((!\u_rom|dado_out[8]~DUPLICATE_q\ & !\u_rom|dado_out[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010101010111110101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(7),
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	combout => \u_mux_ula_b|data_out[4]~13_combout\);

-- Location: LABCELL_X33_Y5_N57
\u_mux_ula_b|data_out[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[1]~12_combout\ = ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\) # (\u_rom|dado_out[4]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100001111111111110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	combout => \u_mux_ula_b|data_out[1]~12_combout\);

-- Location: MLABCELL_X34_Y7_N12
\u_mux_ula_b|data_out[9]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[9]~28_combout\ = ( \u_mux_ula_b|data_out[4]~13_combout\ & ( \u_mux_ula_b|data_out[1]~12_combout\ & ( (\u_mux_ula_b|data_out[9]~26_combout\) # (\u_mux_ula_b|data_out[9]~27_combout\) ) ) ) # ( !\u_mux_ula_b|data_out[4]~13_combout\ & ( 
-- \u_mux_ula_b|data_out[1]~12_combout\ & ( \u_mux_ula_b|data_out[9]~27_combout\ ) ) ) # ( \u_mux_ula_b|data_out[4]~13_combout\ & ( !\u_mux_ula_b|data_out[1]~12_combout\ & ( (\u_banco_reg|REG2|registro\(9)) # (\u_mux_ula_b|data_out[9]~27_combout\) ) ) ) # ( 
-- !\u_mux_ula_b|data_out[4]~13_combout\ & ( !\u_mux_ula_b|data_out[1]~12_combout\ & ( \u_mux_ula_b|data_out[9]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100111111111100110011001100110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_mux_ula_b|ALT_INV_data_out[9]~27_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[9]~26_combout\,
	datad => \u_banco_reg|REG2|ALT_INV_registro\(9),
	datae => \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\,
	combout => \u_mux_ula_b|data_out[9]~28_combout\);

-- Location: FF_X33_Y5_N8
\u_banco_reg|REG2|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(8));

-- Location: FF_X34_Y5_N41
\u_banco_reg|REG3|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(8));

-- Location: LABCELL_X33_Y5_N45
\u_mux_ula_b|data_out[8]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[8]~24_combout\ = ( \u_banco_reg|REG3|registro\(8) & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & (((!\u_rom|dado_out[8]~DUPLICATE_q\ & \u_rom|dado_out[4]~DUPLICATE_q\)) # (\u_uc|Equal8~0_combout\))) ) ) # ( !\u_banco_reg|REG3|registro\(8) & 
-- ( (\u_uc|Equal8~0_combout\ & \u_rom|dado_out[7]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001011110000000000101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datac => \u_uc|ALT_INV_Equal8~0_combout\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_banco_reg|REG3|ALT_INV_registro\(8),
	combout => \u_mux_ula_b|data_out[8]~24_combout\);

-- Location: FF_X34_Y4_N50
\u_banco_reg|REG1|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(8));

-- Location: MLABCELL_X34_Y4_N12
\u_banco_reg|REG0|registro[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[8]~feeder_combout\ = ( \u_mux_write|data_out[8]~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[8]~8_combout\,
	combout => \u_banco_reg|REG0|registro[8]~feeder_combout\);

-- Location: FF_X34_Y4_N14
\u_banco_reg|REG0|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[8]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(8));

-- Location: FF_X34_Y5_N59
\u_banco_reg|REG5|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(8));

-- Location: FF_X33_Y5_N49
\u_banco_reg|REG4|registro[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y4_N24
\u_mux_ula_b|data_out[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[8]~23_combout\ = ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG4|registro[8]~DUPLICATE_q\ & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG1|registro\(8))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG5|registro\(8)))) 
-- ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_banco_reg|REG4|registro[8]~DUPLICATE_q\ & ( (\u_rom|dado_out[8]~DUPLICATE_q\) # (\u_banco_reg|REG0|registro\(8)) ) ) ) # ( \u_rom|dado_out\(4) & ( !\u_banco_reg|REG4|registro[8]~DUPLICATE_q\ & ( 
-- (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG1|registro\(8))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG5|registro\(8)))) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_banco_reg|REG4|registro[8]~DUPLICATE_q\ & ( 
-- (\u_banco_reg|REG0|registro\(8) & !\u_rom|dado_out[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000010100000101111100111111001111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(8),
	datab => \u_banco_reg|REG0|ALT_INV_registro\(8),
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(8),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_banco_reg|REG4|ALT_INV_registro[8]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[8]~23_combout\);

-- Location: LABCELL_X33_Y5_N24
\u_mux_ula_b|data_out[8]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[8]~25_combout\ = ( \u_mux_ula_b|data_out[8]~23_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & ((\u_banco_reg|REG2|registro\(8)) # (\u_mux_ula_b|data_out[1]~12_combout\)))) # (\u_mux_ula_b|data_out[8]~24_combout\) ) ) # ( 
-- !\u_mux_ula_b|data_out[8]~23_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & (!\u_mux_ula_b|data_out[1]~12_combout\ & \u_banco_reg|REG2|registro\(8)))) # (\u_mux_ula_b|data_out[8]~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\,
	datac => \u_banco_reg|REG2|ALT_INV_registro\(8),
	datad => \u_mux_ula_b|ALT_INV_data_out[8]~24_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[8]~23_combout\,
	combout => \u_mux_ula_b|data_out[8]~25_combout\);

-- Location: FF_X34_Y5_N44
\u_banco_reg|REG3|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(7));

-- Location: LABCELL_X33_Y5_N39
\u_mux_ula_b|data_out[7]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[7]~21_combout\ = ( \u_uc|Equal8~0_combout\ & ( \u_rom|dado_out[7]~DUPLICATE_q\ ) ) # ( !\u_uc|Equal8~0_combout\ & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_rom|dado_out[4]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(7) & 
-- \u_rom|dado_out[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(7),
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	combout => \u_mux_ula_b|data_out[7]~21_combout\);

-- Location: FF_X33_Y5_N2
\u_banco_reg|REG2|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(7));

-- Location: FF_X34_Y4_N19
\u_banco_reg|REG1|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(7));

-- Location: FF_X34_Y5_N56
\u_banco_reg|REG5|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(7));

-- Location: FF_X34_Y4_N29
\u_banco_reg|REG0|registro[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[7]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y4_N21
\u_mux_ula_b|data_out[7]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[7]~20_combout\ = ( \u_banco_reg|REG0|registro[7]~DUPLICATE_q\ & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG1|registro\(7))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG5|registro\(7)))) 
-- ) ) ) # ( !\u_banco_reg|REG0|registro[7]~DUPLICATE_q\ & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG1|registro\(7))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG5|registro\(7)))) ) ) ) # ( 
-- \u_banco_reg|REG0|registro[7]~DUPLICATE_q\ & ( !\u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\) # (\u_banco_reg|REG4|registro\(7)) ) ) ) # ( !\u_banco_reg|REG0|registro[7]~DUPLICATE_q\ & ( !\u_rom|dado_out\(4) & ( 
-- (\u_banco_reg|REG4|registro\(7) & \u_rom|dado_out[8]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro\(7),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(7),
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(7),
	datae => \u_banco_reg|REG0|ALT_INV_registro[7]~DUPLICATE_q\,
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[7]~20_combout\);

-- Location: LABCELL_X33_Y5_N33
\u_mux_ula_b|data_out[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[7]~22_combout\ = ( \u_mux_ula_b|data_out[7]~20_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & ((\u_banco_reg|REG2|registro\(7)) # (\u_mux_ula_b|data_out[1]~12_combout\)))) # (\u_mux_ula_b|data_out[7]~21_combout\) ) ) # ( 
-- !\u_mux_ula_b|data_out[7]~20_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & (!\u_mux_ula_b|data_out[1]~12_combout\ & \u_banco_reg|REG2|registro\(7)))) # (\u_mux_ula_b|data_out[7]~21_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111100011111010111110001111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[7]~21_combout\,
	datad => \u_banco_reg|REG2|ALT_INV_registro\(7),
	dataf => \u_mux_ula_b|ALT_INV_data_out[7]~20_combout\,
	combout => \u_mux_ula_b|data_out[7]~22_combout\);

-- Location: FF_X36_Y6_N34
\u_banco_reg|REG2|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(6));

-- Location: FF_X35_Y6_N38
\u_banco_reg|REG3|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(6));

-- Location: MLABCELL_X34_Y6_N42
\u_mux_ula_b|data_out[6]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[6]~18_combout\ = ( \u_uc|Equal8~0_combout\ & ( \u_rom|dado_out[4]~DUPLICATE_q\ ) ) # ( !\u_uc|Equal8~0_combout\ & ( (\u_rom|dado_out[4]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(6) & (\u_rom|dado_out\(7) & 
-- !\u_rom|dado_out[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datab => \u_banco_reg|REG3|ALT_INV_registro\(6),
	datac => \u_rom|ALT_INV_dado_out\(7),
	datad => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	combout => \u_mux_ula_b|data_out[6]~18_combout\);

-- Location: FF_X35_Y7_N59
\u_banco_reg|REG4|registro[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[6]~DUPLICATE_q\);

-- Location: FF_X35_Y7_N28
\u_banco_reg|REG5|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(6));

-- Location: FF_X34_Y4_N37
\u_banco_reg|REG0|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(6));

-- Location: FF_X34_Y4_N56
\u_banco_reg|REG1|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(6));

-- Location: MLABCELL_X34_Y4_N57
\u_mux_ula_b|data_out[6]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[6]~17_combout\ = ( \u_banco_reg|REG1|registro\(6) & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\) # (\u_banco_reg|REG5|registro\(6)) ) ) ) # ( !\u_banco_reg|REG1|registro\(6) & ( \u_rom|dado_out\(4) & ( 
-- (\u_banco_reg|REG5|registro\(6) & \u_rom|dado_out[8]~DUPLICATE_q\) ) ) ) # ( \u_banco_reg|REG1|registro\(6) & ( !\u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG0|registro\(6)))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & 
-- (\u_banco_reg|REG4|registro[6]~DUPLICATE_q\)) ) ) ) # ( !\u_banco_reg|REG1|registro\(6) & ( !\u_rom|dado_out\(4) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG0|registro\(6)))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & 
-- (\u_banco_reg|REG4|registro[6]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro[6]~DUPLICATE_q\,
	datab => \u_banco_reg|REG5|ALT_INV_registro\(6),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(6),
	datad => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datae => \u_banco_reg|REG1|ALT_INV_registro\(6),
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[6]~17_combout\);

-- Location: LABCELL_X33_Y5_N27
\u_mux_ula_b|data_out[6]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[6]~19_combout\ = ( \u_mux_ula_b|data_out[6]~17_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & ((\u_banco_reg|REG2|registro\(6)) # (\u_mux_ula_b|data_out[1]~12_combout\)))) # (\u_mux_ula_b|data_out[6]~18_combout\) ) ) # ( 
-- !\u_mux_ula_b|data_out[6]~17_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & (!\u_mux_ula_b|data_out[1]~12_combout\ & \u_banco_reg|REG2|registro\(6)))) # (\u_mux_ula_b|data_out[6]~18_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\,
	datac => \u_banco_reg|REG2|ALT_INV_registro\(6),
	datad => \u_mux_ula_b|ALT_INV_data_out[6]~18_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[6]~17_combout\,
	combout => \u_mux_ula_b|data_out[6]~19_combout\);

-- Location: FF_X36_Y6_N58
\u_banco_reg|REG5|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(5));

-- Location: FF_X35_Y4_N47
\u_banco_reg|REG4|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(5));

-- Location: MLABCELL_X34_Y4_N9
\u_banco_reg|REG1|registro[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[5]~feeder_combout\ = ( \u_mux_write|data_out[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[5]~5_combout\,
	combout => \u_banco_reg|REG1|registro[5]~feeder_combout\);

-- Location: FF_X34_Y4_N10
\u_banco_reg|REG1|registro[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[5]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y4_N0
\u_banco_reg|REG0|registro[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[5]~feeder_combout\ = ( \u_mux_write|data_out[5]~5_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[5]~5_combout\,
	combout => \u_banco_reg|REG0|registro[5]~feeder_combout\);

-- Location: FF_X34_Y4_N2
\u_banco_reg|REG0|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(5));

-- Location: FF_X35_Y6_N52
\u_banco_reg|REG3|registro[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro[5]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y6_N30
\u_banco_reg|data_r1[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[5]~12_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro[5]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(5) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro[5]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(5) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(5),
	datab => \u_banco_reg|REG1|ALT_INV_registro[5]~DUPLICATE_q\,
	datac => \u_banco_reg|REG0|ALT_INV_registro\(5),
	datad => \u_banco_reg|REG3|ALT_INV_registro[5]~DUPLICATE_q\,
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[5]~12_combout\);

-- Location: LABCELL_X36_Y6_N18
\u_banco_reg|data_r1[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[5]~13_combout\ = ( \u_banco_reg|data_r1[5]~12_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(5))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(5))))) ) ) # ( !\u_banco_reg|data_r1[5]~12_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG5|registro\(5)))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(5))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG5|ALT_INV_registro\(5),
	datad => \u_banco_reg|REG4|ALT_INV_registro\(5),
	dataf => \u_banco_reg|ALT_INV_data_r1[5]~12_combout\,
	combout => \u_banco_reg|data_r1[5]~13_combout\);

-- Location: FF_X34_Y5_N14
\u_banco_reg|REG3|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(4));

-- Location: LABCELL_X33_Y5_N42
\u_mux_ula_b|data_out[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[4]~11_combout\ = ( \u_banco_reg|REG3|registro\(4) & ( (\u_rom|dado_out[4]~DUPLICATE_q\ & (((!\u_rom|dado_out[8]~DUPLICATE_q\ & \u_rom|dado_out[7]~DUPLICATE_q\)) # (\u_uc|Equal8~0_combout\))) ) ) # ( !\u_banco_reg|REG3|registro\(4) & 
-- ( (\u_rom|dado_out[4]~DUPLICATE_q\ & \u_uc|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000010001100110000001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	dataf => \u_banco_reg|REG3|ALT_INV_registro\(4),
	combout => \u_mux_ula_b|data_out[4]~11_combout\);

-- Location: FF_X33_Y5_N20
\u_banco_reg|REG2|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(4));

-- Location: FF_X33_Y5_N56
\u_banco_reg|REG4|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(4));

-- Location: FF_X34_Y4_N47
\u_banco_reg|REG1|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(4));

-- Location: FF_X34_Y4_N17
\u_banco_reg|REG0|registro[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[4]~DUPLICATE_q\);

-- Location: FF_X34_Y5_N29
\u_banco_reg|REG5|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(4));

-- Location: MLABCELL_X34_Y4_N51
\u_mux_ula_b|data_out[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[4]~9_combout\ = ( \u_rom|dado_out\(4) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG5|registro\(4) ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG4|registro\(4) ) ) ) # ( 
-- \u_rom|dado_out\(4) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG1|registro\(4) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG0|registro[4]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro\(4),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(4),
	datac => \u_banco_reg|REG0|ALT_INV_registro[4]~DUPLICATE_q\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(4),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[4]~9_combout\);

-- Location: MLABCELL_X34_Y4_N33
\u_mux_ula_b|data_out[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[4]~10_combout\ = ( !\u_uc|Equal8~0_combout\ & ( \u_mux_ula_b|data_out[4]~9_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\) # ((\u_banco_reg|REG2|registro\(4) & (!\u_rom|dado_out[8]~DUPLICATE_q\ & !\u_rom|dado_out\(4)))) ) ) ) # ( 
-- !\u_uc|Equal8~0_combout\ & ( !\u_mux_ula_b|data_out[4]~9_combout\ & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG2|registro\(4) & (!\u_rom|dado_out[8]~DUPLICATE_q\ & !\u_rom|dado_out\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000010111010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datab => \u_banco_reg|REG2|ALT_INV_registro\(4),
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(4),
	datae => \u_uc|ALT_INV_Equal8~0_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[4]~9_combout\,
	combout => \u_mux_ula_b|data_out[4]~10_combout\);

-- Location: FF_X34_Y4_N16
\u_banco_reg|REG0|registro[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(4));

-- Location: FF_X34_Y4_N46
\u_banco_reg|REG1|registro[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[4]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y5_N21
\u_banco_reg|data_r1[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[4]~10_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG3|registro\(4) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG1|registro[4]~DUPLICATE_q\ ) ) ) # ( 
-- \s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG2|registro\(4) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG0|registro\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(4),
	datab => \u_banco_reg|REG3|ALT_INV_registro\(4),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(4),
	datad => \u_banco_reg|REG1|ALT_INV_registro[4]~DUPLICATE_q\,
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[4]~10_combout\);

-- Location: LABCELL_X33_Y5_N51
\u_ula|saida[4]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[4]~30_combout\ = ( \u_banco_reg|data_r1[4]~10_combout\ & ( (!\u_banco_reg|data_r1[4]~11_combout\ & (!\u_mux_ula_b|data_out[4]~11_combout\ & (!\u_mux_ula_b|data_out[4]~10_combout\ & \s_reg_r1[2]~2_combout\))) ) ) # ( 
-- !\u_banco_reg|data_r1[4]~10_combout\ & ( (!\u_banco_reg|data_r1[4]~11_combout\ & (!\u_mux_ula_b|data_out[4]~11_combout\ & !\u_mux_ula_b|data_out[4]~10_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000001000000010000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[4]~11_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[4]~11_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[4]~10_combout\,
	datad => \ALT_INV_s_reg_r1[2]~2_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[4]~10_combout\,
	combout => \u_ula|saida[4]~30_combout\);

-- Location: LABCELL_X35_Y5_N57
\u_mux_ula_b|data_out[4]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[4]~35_combout\ = ( \u_mux_ula_b|data_out[4]~11_combout\ & ( \u_mux_ula_b|data_out[4]~10_combout\ ) ) # ( !\u_mux_ula_b|data_out[4]~11_combout\ & ( \u_mux_ula_b|data_out[4]~10_combout\ ) ) # ( \u_mux_ula_b|data_out[4]~11_combout\ & ( 
-- !\u_mux_ula_b|data_out[4]~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u_mux_ula_b|ALT_INV_data_out[4]~11_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[4]~10_combout\,
	combout => \u_mux_ula_b|data_out[4]~35_combout\);

-- Location: FF_X35_Y4_N20
\u_banco_reg|REG2|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(3));

-- Location: FF_X34_Y4_N31
\u_banco_reg|REG0|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(3));

-- Location: FF_X37_Y4_N10
\u_banco_reg|REG5|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(3));

-- Location: FF_X36_Y4_N50
\u_banco_reg|REG1|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(3));

-- Location: LABCELL_X35_Y4_N6
\u_mux_ula_b|data_out[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[3]~7_combout\ = ( \u_rom|dado_out\(8) & ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG5|registro\(3) ) ) ) # ( !\u_rom|dado_out\(8) & ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG1|registro\(3) ) ) ) # ( \u_rom|dado_out\(8) & ( 
-- !\u_rom|dado_out\(4) & ( \u_banco_reg|REG4|registro[3]~DUPLICATE_q\ ) ) ) # ( !\u_rom|dado_out\(8) & ( !\u_rom|dado_out\(4) & ( \u_banco_reg|REG0|registro\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(3),
	datab => \u_banco_reg|REG4|ALT_INV_registro[3]~DUPLICATE_q\,
	datac => \u_banco_reg|REG5|ALT_INV_registro\(3),
	datad => \u_banco_reg|REG1|ALT_INV_registro\(3),
	datae => \u_rom|ALT_INV_dado_out\(8),
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[3]~7_combout\);

-- Location: FF_X36_Y4_N31
\u_banco_reg|REG3|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(3));

-- Location: LABCELL_X35_Y4_N21
\u_mux_ula_b|data_out[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[3]~8_combout\ = ( \u_banco_reg|REG3|registro\(3) & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\ & (((\u_mux_ula_b|data_out[3]~7_combout\)))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- (((\u_rom|dado_out\(4))) # (\u_banco_reg|REG2|registro\(3)))) ) ) ) # ( !\u_banco_reg|REG3|registro\(3) & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\ & (((\u_mux_ula_b|data_out[3]~7_combout\)))) # 
-- (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG2|registro\(3) & ((!\u_rom|dado_out\(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100001100000111010011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(3),
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_mux_ula_b|ALT_INV_data_out[3]~7_combout\,
	datad => \u_rom|ALT_INV_dado_out\(4),
	datae => \u_banco_reg|REG3|ALT_INV_registro\(3),
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	combout => \u_mux_ula_b|data_out[3]~8_combout\);

-- Location: LABCELL_X36_Y4_N57
\u_ula|saida[3]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[3]~6_combout\ = ( \u_banco_reg|data_r1[3]~9_combout\ & ( \u_uc|Equal10~0_combout\ ) ) # ( !\u_banco_reg|data_r1[3]~9_combout\ & ( (\u_uc|Equal10~0_combout\ & ((!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[3]~8_combout\))) # 
-- (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[3]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\,
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_uc|ALT_INV_Equal10~0_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[3]~8_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[3]~9_combout\,
	combout => \u_ula|saida[3]~6_combout\);

-- Location: LABCELL_X37_Y4_N0
\u_banco_reg|REG5|registro[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG5|registro[2]~feeder_combout\ = ( \u_mux_write|data_out[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[2]~2_combout\,
	combout => \u_banco_reg|REG5|registro[2]~feeder_combout\);

-- Location: FF_X37_Y4_N1
\u_banco_reg|REG5|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG5|registro[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(2));

-- Location: FF_X35_Y4_N38
\u_banco_reg|REG4|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(2));

-- Location: FF_X36_Y4_N10
\u_banco_reg|REG3|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(2));

-- Location: FF_X35_Y4_N49
\u_banco_reg|REG2|registro[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro[2]~DUPLICATE_q\);

-- Location: FF_X37_Y4_N56
\u_banco_reg|REG0|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(2));

-- Location: LABCELL_X36_Y4_N18
\u_banco_reg|REG1|registro[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[2]~feeder_combout\ = ( \u_mux_write|data_out[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[2]~2_combout\,
	combout => \u_banco_reg|REG1|registro[2]~feeder_combout\);

-- Location: FF_X36_Y4_N20
\u_banco_reg|REG1|registro[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[2]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N39
\u_banco_reg|data_r1[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[2]~6_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG3|registro\(2) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG1|registro[2]~DUPLICATE_q\ ) ) ) # ( 
-- \s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG2|registro[2]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG0|registro\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(2),
	datab => \u_banco_reg|REG2|ALT_INV_registro[2]~DUPLICATE_q\,
	datac => \u_banco_reg|REG0|ALT_INV_registro\(2),
	datad => \u_banco_reg|REG1|ALT_INV_registro[2]~DUPLICATE_q\,
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[2]~6_combout\);

-- Location: LABCELL_X35_Y4_N54
\u_banco_reg|data_r1[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[2]~7_combout\ = ( \u_banco_reg|data_r1[2]~6_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(2))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(2))))) ) ) # ( !\u_banco_reg|data_r1[2]~6_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG5|registro\(2)))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG4|registro\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000000100100011010001010110011101000101011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG5|ALT_INV_registro\(2),
	datad => \u_banco_reg|REG4|ALT_INV_registro\(2),
	dataf => \u_banco_reg|ALT_INV_data_r1[2]~6_combout\,
	combout => \u_banco_reg|data_r1[2]~7_combout\);

-- Location: LABCELL_X36_Y4_N27
\u_ula|saida[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[2]~4_combout\ = ( \u_banco_reg|data_r1[2]~7_combout\ & ( \u_uc|Equal10~0_combout\ ) ) # ( !\u_banco_reg|data_r1[2]~7_combout\ & ( (\u_uc|Equal10~0_combout\ & ((!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[2]~6_combout\))) # 
-- (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101000000110000010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(2),
	datab => \u_mux_ula_b|ALT_INV_data_out[2]~6_combout\,
	datac => \u_uc|ALT_INV_Equal10~0_combout\,
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[2]~7_combout\,
	combout => \u_ula|saida[2]~4_combout\);

-- Location: FF_X36_Y4_N37
\u_banco_reg|REG3|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(1));

-- Location: FF_X36_Y4_N47
\u_banco_reg|REG1|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(1));

-- Location: LABCELL_X37_Y4_N42
\u_banco_reg|REG0|registro[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[1]~feeder_combout\ = ( \u_mux_write|data_out[1]~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[1]~1_combout\,
	combout => \u_banco_reg|REG0|registro[1]~feeder_combout\);

-- Location: FF_X37_Y4_N44
\u_banco_reg|REG0|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(1));

-- Location: FF_X37_Y4_N40
\u_banco_reg|REG5|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(1));

-- Location: LABCELL_X35_Y4_N42
\u_mux_ula_b|data_out[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[1]~3_combout\ = ( \u_rom|dado_out\(8) & ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG5|registro\(1) ) ) ) # ( !\u_rom|dado_out\(8) & ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG1|registro\(1) ) ) ) # ( \u_rom|dado_out\(8) & ( 
-- !\u_rom|dado_out\(4) & ( \u_banco_reg|REG4|registro[1]~DUPLICATE_q\ ) ) ) # ( !\u_rom|dado_out\(8) & ( !\u_rom|dado_out\(4) & ( \u_banco_reg|REG0|registro\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(1),
	datab => \u_banco_reg|REG4|ALT_INV_registro[1]~DUPLICATE_q\,
	datac => \u_banco_reg|REG0|ALT_INV_registro\(1),
	datad => \u_banco_reg|REG5|ALT_INV_registro\(1),
	datae => \u_rom|ALT_INV_dado_out\(8),
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[1]~3_combout\);

-- Location: FF_X35_Y4_N13
\u_banco_reg|REG2|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(1));

-- Location: LABCELL_X35_Y4_N15
\u_mux_ula_b|data_out[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[1]~4_combout\ = ( \u_rom|dado_out\(4) & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_mux_ula_b|data_out[1]~3_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(1))) ) 
-- ) ) # ( !\u_rom|dado_out\(4) & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_mux_ula_b|data_out[1]~3_combout\)) # (\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_banco_reg|REG2|registro\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000111010001110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(1),
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_mux_ula_b|ALT_INV_data_out[1]~3_combout\,
	datad => \u_banco_reg|REG2|ALT_INV_registro\(1),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	combout => \u_mux_ula_b|data_out[1]~4_combout\);

-- Location: LABCELL_X36_Y4_N12
\u_ula|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[1]~2_combout\ = ( \u_banco_reg|data_r1[1]~5_combout\ & ( \u_uc|Equal10~0_combout\ ) ) # ( !\u_banco_reg|data_r1[1]~5_combout\ & ( (\u_uc|Equal10~0_combout\ & ((!\u_uc|Equal8~0_combout\ & (\u_mux_ula_b|data_out[1]~4_combout\)) # 
-- (\u_uc|Equal8~0_combout\ & ((\u_rom|dado_out\(1)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[1]~4_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[1]~5_combout\,
	combout => \u_ula|saida[1]~2_combout\);

-- Location: FF_X35_Y4_N25
\u_banco_reg|REG4|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(0));

-- Location: FF_X37_Y4_N16
\u_banco_reg|REG5|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(0));

-- Location: FF_X35_Y4_N2
\u_banco_reg|REG2|registro[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro[0]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y4_N3
\u_banco_reg|REG0|registro[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[0]~feeder_combout\ = ( \u_mux_write|data_out[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[0]~0_combout\,
	combout => \u_banco_reg|REG0|registro[0]~feeder_combout\);

-- Location: FF_X34_Y4_N4
\u_banco_reg|REG0|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(0));

-- Location: FF_X35_Y6_N19
\u_banco_reg|REG3|registro[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro[0]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N21
\u_banco_reg|REG1|registro[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[0]~feeder_combout\ = ( \u_mux_write|data_out[0]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[0]~0_combout\,
	combout => \u_banco_reg|REG1|registro[0]~feeder_combout\);

-- Location: FF_X36_Y4_N23
\u_banco_reg|REG1|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[0]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(0));

-- Location: LABCELL_X35_Y4_N3
\u_banco_reg|data_r1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[0]~0_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro[0]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro[0]~DUPLICATE_q\ ) ) ) # 
-- ( \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(0) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro[0]~DUPLICATE_q\,
	datab => \u_banco_reg|REG0|ALT_INV_registro\(0),
	datac => \u_banco_reg|REG3|ALT_INV_registro[0]~DUPLICATE_q\,
	datad => \u_banco_reg|REG1|ALT_INV_registro\(0),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[0]~0_combout\);

-- Location: LABCELL_X35_Y6_N9
\u_banco_reg|data_r1[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[0]~3_combout\ = ( \u_banco_reg|data_r1[0]~0_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (((!\u_banco_reg|data_r1[15]~1_combout\) # (\u_banco_reg|REG5|registro\(0))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (\u_banco_reg|REG4|registro\(0) & ((!\u_banco_reg|data_r1[15]~1_combout\)))) ) ) # ( !\u_banco_reg|data_r1[0]~0_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (((\u_banco_reg|REG5|registro\(0) & \u_banco_reg|data_r1[15]~1_combout\)))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|REG4|registro\(0) & ((!\u_banco_reg|data_r1[15]~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110000000001010011000011110101001100001111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro\(0),
	datab => \u_banco_reg|REG5|ALT_INV_registro\(0),
	datac => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[0]~3_combout\);

-- Location: LABCELL_X36_Y5_N6
\u_ula|Add1~66\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~66_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \u_ula|Add1~66_cout\);

-- Location: LABCELL_X36_Y5_N9
\u_ula|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~1_sumout\ = SUM(( \u_banco_reg|data_r1[0]~3_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[0]~2_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out\(0))) ) + ( \u_ula|Add1~66_cout\ ))
-- \u_ula|Add1~2\ = CARRY(( \u_banco_reg|data_r1[0]~3_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[0]~2_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out\(0))) ) + ( \u_ula|Add1~66_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal8~0_combout\,
	datab => \u_rom|ALT_INV_dado_out\(0),
	datac => \u_mux_ula_b|ALT_INV_data_out[0]~2_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[0]~3_combout\,
	cin => \u_ula|Add1~66_cout\,
	sumout => \u_ula|Add1~1_sumout\,
	cout => \u_ula|Add1~2\);

-- Location: LABCELL_X36_Y6_N54
\u_ula|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[0]~0_combout\ = ( \u_mux_ula_b|data_out[0]~2_combout\ & ( \u_banco_reg|data_r1[0]~3_combout\ & ( \u_uc|Equal10~0_combout\ ) ) ) # ( !\u_mux_ula_b|data_out[0]~2_combout\ & ( \u_banco_reg|data_r1[0]~3_combout\ & ( \u_uc|Equal10~0_combout\ ) ) ) 
-- # ( \u_mux_ula_b|data_out[0]~2_combout\ & ( !\u_banco_reg|data_r1[0]~3_combout\ & ( (\u_uc|Equal10~0_combout\ & ((!\u_uc|Equal8~0_combout\) # (\u_rom|dado_out\(0)))) ) ) ) # ( !\u_mux_ula_b|data_out[0]~2_combout\ & ( !\u_banco_reg|data_r1[0]~3_combout\ & 
-- ( (\u_rom|dado_out\(0) & (\u_uc|Equal8~0_combout\ & \u_uc|Equal10~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000001111001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(0),
	datac => \u_uc|ALT_INV_Equal8~0_combout\,
	datad => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_mux_ula_b|ALT_INV_data_out[0]~2_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[0]~3_combout\,
	combout => \u_ula|saida[0]~0_combout\);

-- Location: LABCELL_X35_Y5_N0
\u_ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~1_sumout\ = SUM(( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[0]~2_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(0))) ) + ( \u_banco_reg|data_r1[0]~3_combout\ ) + ( !VCC ))
-- \u_ula|Add0~2\ = CARRY(( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[0]~2_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(0))) ) + ( \u_banco_reg|data_r1[0]~3_combout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(0),
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[0]~3_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[0]~2_combout\,
	cin => GND,
	sumout => \u_ula|Add0~1_sumout\,
	cout => \u_ula|Add0~2\);

-- Location: LABCELL_X37_Y5_N0
\u_ula|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[0]~1_combout\ = ( \u_ula|Add0~1_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (((!\u_uc|Equal10~0_combout\ & \u_ula|Add1~1_sumout\)) # (\u_ula|saida[0]~0_combout\)) ) ) # ( !\u_ula|Add0~1_sumout\ & ( ((\u_ula|flag_c~0_combout\ & 
-- (!\u_uc|Equal10~0_combout\ & \u_ula|Add1~1_sumout\))) # (\u_ula|saida[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111110101110111111111010111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_Add1~1_sumout\,
	datad => \u_ula|ALT_INV_saida[0]~0_combout\,
	dataf => \u_ula|ALT_INV_Add0~1_sumout\,
	combout => \u_ula|saida[0]~1_combout\);

-- Location: LABCELL_X36_Y4_N24
\u_mux_write|data_out[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[0]~0_combout\ = ( \u_ula|saida[0]~1_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out\(0)) ) ) # ( !\u_ula|saida[0]~1_combout\ & ( (\u_rom|dado_out\(0) & \u_uc|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(0),
	datad => \u_uc|ALT_INV_Equal6~0_combout\,
	dataf => \u_ula|ALT_INV_saida[0]~1_combout\,
	combout => \u_mux_write|data_out[0]~0_combout\);

-- Location: FF_X35_Y6_N20
\u_banco_reg|REG3|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(0));

-- Location: FF_X35_Y4_N1
\u_banco_reg|REG2|registro[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(0));

-- Location: FF_X35_Y4_N26
\u_banco_reg|REG4|registro[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[0]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y4_N27
\u_mux_ula_b|data_out[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[0]~1_combout\ = ( \u_rom|dado_out\(4) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG5|registro\(0) ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG4|registro[0]~DUPLICATE_q\ ) ) ) # ( 
-- \u_rom|dado_out\(4) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG1|registro\(0) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( \u_banco_reg|REG0|registro\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro[0]~DUPLICATE_q\,
	datab => \u_banco_reg|REG5|ALT_INV_registro\(0),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(0),
	datad => \u_banco_reg|REG1|ALT_INV_registro\(0),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[0]~1_combout\);

-- Location: LABCELL_X35_Y6_N21
\u_mux_ula_b|data_out[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[0]~2_combout\ = ( \u_rom|dado_out[4]~DUPLICATE_q\ & ( \u_mux_ula_b|data_out[0]~1_combout\ & ( (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7)) # (\u_banco_reg|REG3|registro\(0)))) ) ) ) # ( 
-- !\u_rom|dado_out[4]~DUPLICATE_q\ & ( \u_mux_ula_b|data_out[0]~1_combout\ & ( (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7)) # (\u_banco_reg|REG2|registro\(0)))) ) ) ) # ( \u_rom|dado_out[4]~DUPLICATE_q\ & ( 
-- !\u_mux_ula_b|data_out[0]~1_combout\ & ( (\u_banco_reg|REG3|registro\(0) & (\u_rom|dado_out\(7) & !\u_mux_ula_b|data_out[1]~0_combout\)) ) ) ) # ( !\u_rom|dado_out[4]~DUPLICATE_q\ & ( !\u_mux_ula_b|data_out[0]~1_combout\ & ( (\u_rom|dado_out\(7) & 
-- (\u_banco_reg|REG2|registro\(0) & !\u_mux_ula_b|data_out[1]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000100010000000011001111000000001101110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(0),
	datab => \u_rom|ALT_INV_dado_out\(7),
	datac => \u_banco_reg|REG2|ALT_INV_registro\(0),
	datad => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datae => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[0]~1_combout\,
	combout => \u_mux_ula_b|data_out[0]~2_combout\);

-- Location: LABCELL_X36_Y5_N12
\u_ula|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~5_sumout\ = SUM(( \u_banco_reg|data_r1[1]~5_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[1]~4_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out\(1))) ) + ( \u_ula|Add1~2\ ))
-- \u_ula|Add1~6\ = CARRY(( \u_banco_reg|data_r1[1]~5_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[1]~4_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out\(1))) ) + ( \u_ula|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001011010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \u_banco_reg|ALT_INV_data_r1[1]~5_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~4_combout\,
	cin => \u_ula|Add1~2\,
	sumout => \u_ula|Add1~5_sumout\,
	cout => \u_ula|Add1~6\);

-- Location: LABCELL_X35_Y5_N3
\u_ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~5_sumout\ = SUM(( \u_banco_reg|data_r1[1]~5_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[1]~4_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(1))) ) + ( \u_ula|Add0~2\ ))
-- \u_ula|Add0~6\ = CARRY(( \u_banco_reg|data_r1[1]~5_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[1]~4_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(1))) ) + ( \u_ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \u_banco_reg|ALT_INV_data_r1[1]~5_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~4_combout\,
	cin => \u_ula|Add0~2\,
	sumout => \u_ula|Add0~5_sumout\,
	cout => \u_ula|Add0~6\);

-- Location: LABCELL_X36_Y4_N42
\u_ula|saida[1]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[1]~3_combout\ = ( \u_ula|Add1~5_sumout\ & ( \u_ula|Add0~5_sumout\ & ( (!\u_uc|Equal10~0_combout\) # ((!\u_ula|flag_c~0_combout\) # (\u_ula|saida[1]~2_combout\)) ) ) ) # ( !\u_ula|Add1~5_sumout\ & ( \u_ula|Add0~5_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # (\u_ula|saida[1]~2_combout\) ) ) ) # ( \u_ula|Add1~5_sumout\ & ( !\u_ula|Add0~5_sumout\ & ( ((!\u_uc|Equal10~0_combout\ & \u_ula|flag_c~0_combout\)) # (\u_ula|saida[1]~2_combout\) ) ) ) # ( !\u_ula|Add1~5_sumout\ & ( 
-- !\u_ula|Add0~5_sumout\ & ( \u_ula|saida[1]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011111100111111111111000011111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_saida[1]~2_combout\,
	datad => \u_ula|ALT_INV_flag_c~0_combout\,
	datae => \u_ula|ALT_INV_Add1~5_sumout\,
	dataf => \u_ula|ALT_INV_Add0~5_sumout\,
	combout => \u_ula|saida[1]~3_combout\);

-- Location: LABCELL_X36_Y4_N0
\u_mux_write|data_out[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[1]~1_combout\ = ( \u_ula|saida[1]~3_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out\(1)) ) ) # ( !\u_ula|saida[1]~3_combout\ & ( (\u_rom|dado_out\(1) & \u_uc|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(1),
	datad => \u_uc|ALT_INV_Equal6~0_combout\,
	dataf => \u_ula|ALT_INV_saida[1]~3_combout\,
	combout => \u_mux_write|data_out[1]~1_combout\);

-- Location: FF_X35_Y4_N41
\u_banco_reg|REG4|registro[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[1]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N38
\u_banco_reg|REG3|registro[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro[1]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N51
\u_banco_reg|data_r1[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[1]~4_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG3|registro[1]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG1|registro\(1) ) ) ) # ( 
-- \s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG2|registro\(1) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG0|registro\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(1),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(1),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(1),
	datad => \u_banco_reg|REG3|ALT_INV_registro[1]~DUPLICATE_q\,
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[1]~4_combout\);

-- Location: LABCELL_X35_Y4_N33
\u_banco_reg|data_r1[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[1]~5_combout\ = ( \u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[1]~4_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & \u_banco_reg|REG5|registro\(1)) ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( 
-- \u_banco_reg|data_r1[1]~4_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\) # (\u_banco_reg|REG4|registro[1]~DUPLICATE_q\) ) ) ) # ( \u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[1]~4_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & 
-- \u_banco_reg|REG5|registro\(1)) ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[1]~4_combout\ & ( (\u_banco_reg|REG4|registro[1]~DUPLICATE_q\ & \u_banco_reg|data_r1[15]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000001111000011110011111100110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_banco_reg|REG4|ALT_INV_registro[1]~DUPLICATE_q\,
	datac => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(1),
	datae => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[1]~4_combout\,
	combout => \u_banco_reg|data_r1[1]~5_combout\);

-- Location: LABCELL_X35_Y5_N6
\u_ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~9_sumout\ = SUM(( \u_banco_reg|data_r1[2]~7_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & (\u_mux_ula_b|data_out[2]~6_combout\)) # (\u_uc|Equal8~0_combout\ & ((\u_rom|dado_out[2]~DUPLICATE_q\))) ) + ( \u_ula|Add0~6\ ))
-- \u_ula|Add0~10\ = CARRY(( \u_banco_reg|data_r1[2]~7_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & (\u_mux_ula_b|data_out[2]~6_combout\)) # (\u_uc|Equal8~0_combout\ & ((\u_rom|dado_out[2]~DUPLICATE_q\))) ) + ( \u_ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110001011100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[2]~6_combout\,
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\,
	datad => \u_banco_reg|ALT_INV_data_r1[2]~7_combout\,
	cin => \u_ula|Add0~6\,
	sumout => \u_ula|Add0~9_sumout\,
	cout => \u_ula|Add0~10\);

-- Location: LABCELL_X36_Y5_N15
\u_ula|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~9_sumout\ = SUM(( \u_banco_reg|data_r1[2]~7_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[2]~6_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out[2]~DUPLICATE_q\)) ) + ( \u_ula|Add1~6\ ))
-- \u_ula|Add1~10\ = CARRY(( \u_banco_reg|data_r1[2]~7_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[2]~6_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out[2]~DUPLICATE_q\)) ) + ( \u_ula|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000110110001101100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal8~0_combout\,
	datab => \u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\,
	datac => \u_mux_ula_b|ALT_INV_data_out[2]~6_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[2]~7_combout\,
	cin => \u_ula|Add1~6\,
	sumout => \u_ula|Add1~9_sumout\,
	cout => \u_ula|Add1~10\);

-- Location: LABCELL_X36_Y4_N6
\u_ula|saida[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[2]~5_combout\ = ( \u_ula|Add1~9_sumout\ & ( ((!\u_ula|flag_c~0_combout\ & ((\u_ula|Add0~9_sumout\))) # (\u_ula|flag_c~0_combout\ & (!\u_uc|Equal10~0_combout\))) # (\u_ula|saida[2]~4_combout\) ) ) # ( !\u_ula|Add1~9_sumout\ & ( 
-- ((!\u_ula|flag_c~0_combout\ & \u_ula|Add0~9_sumout\)) # (\u_ula|saida[2]~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111010011111110111100001111101011110100111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_saida[2]~4_combout\,
	datad => \u_ula|ALT_INV_Add0~9_sumout\,
	datae => \u_ula|ALT_INV_Add1~9_sumout\,
	combout => \u_ula|saida[2]~5_combout\);

-- Location: LABCELL_X36_Y4_N15
\u_mux_write|data_out[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[2]~2_combout\ = ( \u_ula|saida[2]~5_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[2]~DUPLICATE_q\) ) ) # ( !\u_ula|saida[2]~5_combout\ & ( (\u_rom|dado_out[2]~DUPLICATE_q\ & \u_uc|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out[2]~DUPLICATE_q\,
	datad => \u_uc|ALT_INV_Equal6~0_combout\,
	dataf => \u_ula|ALT_INV_saida[2]~5_combout\,
	combout => \u_mux_write|data_out[2]~2_combout\);

-- Location: FF_X35_Y4_N50
\u_banco_reg|REG2|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(2));

-- Location: LABCELL_X35_Y4_N36
\u_mux_ula_b|data_out[2]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[2]~5_combout\ = ( \u_banco_reg|REG4|registro\(2) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( (!\u_rom|dado_out\(4)) # (\u_banco_reg|REG5|registro\(2)) ) ) ) # ( !\u_banco_reg|REG4|registro\(2) & ( \u_rom|dado_out[8]~DUPLICATE_q\ & ( 
-- (\u_rom|dado_out\(4) & \u_banco_reg|REG5|registro\(2)) ) ) ) # ( \u_banco_reg|REG4|registro\(2) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( (!\u_rom|dado_out\(4) & (\u_banco_reg|REG0|registro\(2))) # (\u_rom|dado_out\(4) & 
-- ((\u_banco_reg|REG1|registro[2]~DUPLICATE_q\))) ) ) ) # ( !\u_banco_reg|REG4|registro\(2) & ( !\u_rom|dado_out[8]~DUPLICATE_q\ & ( (!\u_rom|dado_out\(4) & (\u_banco_reg|REG0|registro\(2))) # (\u_rom|dado_out\(4) & 
-- ((\u_banco_reg|REG1|registro[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(2),
	datab => \u_banco_reg|REG1|ALT_INV_registro[2]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(4),
	datad => \u_banco_reg|REG5|ALT_INV_registro\(2),
	datae => \u_banco_reg|REG4|ALT_INV_registro\(2),
	dataf => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[2]~5_combout\);

-- Location: LABCELL_X35_Y4_N51
\u_mux_ula_b|data_out[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[2]~6_combout\ = ( \u_mux_ula_b|data_out[2]~5_combout\ & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (!\u_rom|dado_out[7]~DUPLICATE_q\) # ((!\u_rom|dado_out\(4) & (\u_banco_reg|REG2|registro\(2))) # (\u_rom|dado_out\(4) & 
-- ((\u_banco_reg|REG3|registro\(2))))) ) ) ) # ( !\u_mux_ula_b|data_out[2]~5_combout\ & ( !\u_mux_ula_b|data_out[1]~0_combout\ & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & ((!\u_rom|dado_out\(4) & (\u_banco_reg|REG2|registro\(2))) # (\u_rom|dado_out\(4) & 
-- ((\u_banco_reg|REG3|registro\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000011111101011111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(2),
	datab => \u_banco_reg|REG3|ALT_INV_registro\(2),
	datac => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(4),
	datae => \u_mux_ula_b|ALT_INV_data_out[2]~5_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	combout => \u_mux_ula_b|data_out[2]~6_combout\);

-- Location: LABCELL_X36_Y5_N18
\u_ula|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~13_sumout\ = SUM(( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[3]~8_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out[3]~DUPLICATE_q\)) ) + ( \u_banco_reg|data_r1[3]~9_combout\ ) + ( \u_ula|Add1~10\ ))
-- \u_ula|Add1~14\ = CARRY(( (!\u_uc|Equal8~0_combout\ & ((!\u_mux_ula_b|data_out[3]~8_combout\))) # (\u_uc|Equal8~0_combout\ & (!\u_rom|dado_out[3]~DUPLICATE_q\)) ) + ( \u_banco_reg|data_r1[3]~9_combout\ ) + ( \u_ula|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001110111001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal8~0_combout\,
	datab => \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\,
	datac => \u_banco_reg|ALT_INV_data_r1[3]~9_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[3]~8_combout\,
	cin => \u_ula|Add1~10\,
	sumout => \u_ula|Add1~13_sumout\,
	cout => \u_ula|Add1~14\);

-- Location: LABCELL_X35_Y5_N9
\u_ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~13_sumout\ = SUM(( \u_banco_reg|data_r1[3]~9_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[3]~8_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[3]~DUPLICATE_q\)) ) + ( \u_ula|Add0~10\ ))
-- \u_ula|Add0~14\ = CARRY(( \u_banco_reg|data_r1[3]~9_combout\ ) + ( (!\u_uc|Equal8~0_combout\ & ((\u_mux_ula_b|data_out[3]~8_combout\))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[3]~DUPLICATE_q\)) ) + ( \u_ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111000011000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\,
	datad => \u_banco_reg|ALT_INV_data_r1[3]~9_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[3]~8_combout\,
	cin => \u_ula|Add0~10\,
	sumout => \u_ula|Add0~13_sumout\,
	cout => \u_ula|Add0~14\);

-- Location: LABCELL_X36_Y4_N3
\u_ula|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[3]~7_combout\ = ( \u_ula|Add0~13_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (((!\u_uc|Equal10~0_combout\ & \u_ula|Add1~13_sumout\)) # (\u_ula|saida[3]~6_combout\)) ) ) # ( !\u_ula|Add0~13_sumout\ & ( ((\u_ula|flag_c~0_combout\ & 
-- (!\u_uc|Equal10~0_combout\ & \u_ula|Add1~13_sumout\))) # (\u_ula|saida[3]~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101001111000011110100111110101111111011111010111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_saida[3]~6_combout\,
	datad => \u_ula|ALT_INV_Add1~13_sumout\,
	dataf => \u_ula|ALT_INV_Add0~13_sumout\,
	combout => \u_ula|saida[3]~7_combout\);

-- Location: LABCELL_X36_Y4_N54
\u_mux_write|data_out[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[3]~3_combout\ = ( \u_ula|saida[3]~7_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[3]~DUPLICATE_q\) ) ) # ( !\u_ula|saida[3]~7_combout\ & ( (\u_rom|dado_out[3]~DUPLICATE_q\ & \u_uc|Equal6~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010111111111010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[3]~DUPLICATE_q\,
	datad => \u_uc|ALT_INV_Equal6~0_combout\,
	dataf => \u_ula|ALT_INV_saida[3]~7_combout\,
	combout => \u_mux_write|data_out[3]~3_combout\);

-- Location: FF_X35_Y4_N32
\u_banco_reg|REG4|registro[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[3]~DUPLICATE_q\);

-- Location: FF_X35_Y4_N19
\u_banco_reg|REG2|registro[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro[3]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N32
\u_banco_reg|REG3|registro[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro[3]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y4_N33
\u_banco_reg|data_r1[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[3]~8_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro[3]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro[3]~DUPLICATE_q\ ) ) ) # 
-- ( \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(3) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111010101010101010100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(3),
	datab => \u_banco_reg|REG2|ALT_INV_registro[3]~DUPLICATE_q\,
	datac => \u_banco_reg|REG3|ALT_INV_registro[3]~DUPLICATE_q\,
	datad => \u_banco_reg|REG0|ALT_INV_registro\(3),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[3]~8_combout\);

-- Location: LABCELL_X35_Y4_N57
\u_banco_reg|data_r1[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[3]~9_combout\ = ( \u_banco_reg|data_r1[3]~8_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(3))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro[3]~DUPLICATE_q\))) ) ) # ( !\u_banco_reg|data_r1[3]~8_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG5|registro\(3))))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG4|ALT_INV_registro[3]~DUPLICATE_q\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(3),
	dataf => \u_banco_reg|ALT_INV_data_r1[3]~8_combout\,
	combout => \u_banco_reg|data_r1[3]~9_combout\);

-- Location: LABCELL_X36_Y5_N21
\u_ula|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~17_sumout\ = SUM(( !\u_mux_ula_b|data_out[4]~35_combout\ ) + ( \u_banco_reg|data_r1[4]~34_combout\ ) + ( \u_ula|Add1~14\ ))
-- \u_ula|Add1~18\ = CARRY(( !\u_mux_ula_b|data_out[4]~35_combout\ ) + ( \u_banco_reg|data_r1[4]~34_combout\ ) + ( \u_ula|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[4]~34_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[4]~35_combout\,
	cin => \u_ula|Add1~14\,
	sumout => \u_ula|Add1~17_sumout\,
	cout => \u_ula|Add1~18\);

-- Location: LABCELL_X35_Y5_N12
\u_ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~17_sumout\ = SUM(( \u_mux_ula_b|data_out[4]~35_combout\ ) + ( \u_banco_reg|data_r1[4]~34_combout\ ) + ( \u_ula|Add0~14\ ))
-- \u_ula|Add0~18\ = CARRY(( \u_mux_ula_b|data_out[4]~35_combout\ ) + ( \u_banco_reg|data_r1[4]~34_combout\ ) + ( \u_ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[4]~34_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[4]~35_combout\,
	cin => \u_ula|Add0~14\,
	sumout => \u_ula|Add0~17_sumout\,
	cout => \u_ula|Add0~18\);

-- Location: LABCELL_X37_Y5_N3
\u_ula|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[4]~8_combout\ = ( \u_ula|Add0~17_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\ & ((\u_ula|Add1~17_sumout\))) # (\u_uc|Equal10~0_combout\ & (!\u_ula|saida[4]~30_combout\))) ) ) # ( !\u_ula|Add0~17_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\ & ((\u_ula|Add1~17_sumout\))) # (\u_uc|Equal10~0_combout\ & (!\u_ula|saida[4]~30_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010100000100000101010010111010111111101011101011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_saida[4]~30_combout\,
	datad => \u_ula|ALT_INV_Add1~17_sumout\,
	dataf => \u_ula|ALT_INV_Add0~17_sumout\,
	combout => \u_ula|saida[4]~8_combout\);

-- Location: MLABCELL_X34_Y5_N45
\u_mux_write|data_out[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[4]~4_combout\ = ( \u_ula|saida[4]~8_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out\(4)) ) ) # ( !\u_ula|saida[4]~8_combout\ & ( (\u_uc|Equal6~0_combout\ & \u_rom|dado_out\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_ula|ALT_INV_saida[4]~8_combout\,
	combout => \u_mux_write|data_out[4]~4_combout\);

-- Location: FF_X34_Y5_N28
\u_banco_reg|REG5|registro[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[4]~4_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro[4]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y5_N54
\u_banco_reg|data_r1[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[4]~11_combout\ = ( \s_reg_r1[0]~0_combout\ & ( (\u_banco_reg|REG5|registro[4]~DUPLICATE_q\ & (\s_reg_r1[2]~2_combout\ & !\s_reg_r1[1]~1_combout\)) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( (\s_reg_r1[2]~2_combout\ & 
-- (!\s_reg_r1[1]~1_combout\ & \u_banco_reg|REG4|registro\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG5|ALT_INV_registro[4]~DUPLICATE_q\,
	datab => \ALT_INV_s_reg_r1[2]~2_combout\,
	datac => \ALT_INV_s_reg_r1[1]~1_combout\,
	datad => \u_banco_reg|REG4|ALT_INV_registro\(4),
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[4]~11_combout\);

-- Location: LABCELL_X33_Y5_N15
\u_banco_reg|data_r1[4]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[4]~34_combout\ = ( \u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|data_r1[4]~11_combout\ ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[15]~2_combout\ & ( 
-- \u_banco_reg|data_r1[4]~11_combout\ ) ) ) # ( \u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|data_r1[4]~11_combout\ ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( 
-- (\u_banco_reg|data_r1[4]~10_combout\) # (\u_banco_reg|data_r1[4]~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[4]~11_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[4]~10_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	combout => \u_banco_reg|data_r1[4]~34_combout\);

-- Location: LABCELL_X36_Y5_N24
\u_ula|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~21_sumout\ = SUM(( \u_banco_reg|data_r1[5]~13_combout\ ) + ( !\u_mux_ula_b|data_out[5]~16_combout\ ) + ( \u_ula|Add1~18\ ))
-- \u_ula|Add1~22\ = CARRY(( \u_banco_reg|data_r1[5]~13_combout\ ) + ( !\u_mux_ula_b|data_out[5]~16_combout\ ) + ( \u_ula|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[5]~16_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[5]~13_combout\,
	cin => \u_ula|Add1~18\,
	sumout => \u_ula|Add1~21_sumout\,
	cout => \u_ula|Add1~22\);

-- Location: LABCELL_X35_Y5_N15
\u_ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~21_sumout\ = SUM(( \u_banco_reg|data_r1[5]~13_combout\ ) + ( \u_mux_ula_b|data_out[5]~16_combout\ ) + ( \u_ula|Add0~18\ ))
-- \u_ula|Add0~22\ = CARRY(( \u_banco_reg|data_r1[5]~13_combout\ ) + ( \u_mux_ula_b|data_out[5]~16_combout\ ) + ( \u_ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[5]~16_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[5]~13_combout\,
	cin => \u_ula|Add0~18\,
	sumout => \u_ula|Add0~21_sumout\,
	cout => \u_ula|Add0~22\);

-- Location: LABCELL_X35_Y6_N48
\u_ula|saida[5]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[5]~20_combout\ = ( \u_mux_ula_b|data_out[5]~16_combout\ & ( \u_ula|Add0~21_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_mux_ula_b|data_out[5]~16_combout\ & ( \u_ula|Add0~21_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & \u_banco_reg|data_r1[5]~13_combout\)) ) ) ) # ( \u_mux_ula_b|data_out[5]~16_combout\ & ( !\u_ula|Add0~21_sumout\ & ( (\u_uc|Equal10~0_combout\ & \u_ula|flag_c~0_combout\) ) ) ) # ( 
-- !\u_mux_ula_b|data_out[5]~16_combout\ & ( !\u_ula|Add0~21_sumout\ & ( (\u_uc|Equal10~0_combout\ & (\u_banco_reg|data_r1[5]~13_combout\ & \u_ula|flag_c~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000101010111111111000001011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[5]~13_combout\,
	datad => \u_ula|ALT_INV_flag_c~0_combout\,
	datae => \u_mux_ula_b|ALT_INV_data_out[5]~16_combout\,
	dataf => \u_ula|ALT_INV_Add0~21_sumout\,
	combout => \u_ula|saida[5]~20_combout\);

-- Location: LABCELL_X35_Y6_N42
\u_mux_write|data_out[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[5]~5_combout\ = ( \u_ula|saida[5]~20_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[4]~DUPLICATE_q\) ) ) # ( !\u_ula|saida[5]~20_combout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[0]~19_combout\ & 
-- ((\u_ula|Add1~21_sumout\)))) # (\u_uc|Equal6~0_combout\ & (((\u_rom|dado_out[4]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_ula|ALT_INV_saida[0]~19_combout\,
	datac => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datad => \u_ula|ALT_INV_Add1~21_sumout\,
	dataf => \u_ula|ALT_INV_saida[5]~20_combout\,
	combout => \u_mux_write|data_out[5]~5_combout\);

-- Location: FF_X36_Y6_N53
\u_banco_reg|REG2|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(5));

-- Location: FF_X35_Y6_N53
\u_banco_reg|REG3|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[5]~5_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(5));

-- Location: LABCELL_X33_Y5_N36
\u_mux_ula_b|data_out[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[5]~15_combout\ = ( \u_banco_reg|REG3|registro\(5) & ( (\u_rom|dado_out[4]~DUPLICATE_q\ & (((!\u_rom|dado_out[8]~DUPLICATE_q\ & \u_rom|dado_out[7]~DUPLICATE_q\)) # (\u_uc|Equal8~0_combout\))) ) ) # ( !\u_banco_reg|REG3|registro\(5) & 
-- ( (\u_rom|dado_out[4]~DUPLICATE_q\ & \u_uc|Equal8~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000010001100110000001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datab => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	dataf => \u_banco_reg|REG3|ALT_INV_registro\(5),
	combout => \u_mux_ula_b|data_out[5]~15_combout\);

-- Location: FF_X34_Y4_N11
\u_banco_reg|REG1|registro[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[5]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(5));

-- Location: MLABCELL_X34_Y4_N39
\u_mux_ula_b|data_out[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[5]~14_combout\ = ( \u_banco_reg|REG5|registro\(5) & ( \u_banco_reg|REG4|registro\(5) & ( ((!\u_rom|dado_out\(4) & ((\u_banco_reg|REG0|registro\(5)))) # (\u_rom|dado_out\(4) & (\u_banco_reg|REG1|registro\(5)))) # 
-- (\u_rom|dado_out[8]~DUPLICATE_q\) ) ) ) # ( !\u_banco_reg|REG5|registro\(5) & ( \u_banco_reg|REG4|registro\(5) & ( (!\u_rom|dado_out\(4) & (((\u_banco_reg|REG0|registro\(5)) # (\u_rom|dado_out[8]~DUPLICATE_q\)))) # (\u_rom|dado_out\(4) & 
-- (\u_banco_reg|REG1|registro\(5) & (!\u_rom|dado_out[8]~DUPLICATE_q\))) ) ) ) # ( \u_banco_reg|REG5|registro\(5) & ( !\u_banco_reg|REG4|registro\(5) & ( (!\u_rom|dado_out\(4) & (((!\u_rom|dado_out[8]~DUPLICATE_q\ & \u_banco_reg|REG0|registro\(5))))) # 
-- (\u_rom|dado_out\(4) & (((\u_rom|dado_out[8]~DUPLICATE_q\)) # (\u_banco_reg|REG1|registro\(5)))) ) ) ) # ( !\u_banco_reg|REG5|registro\(5) & ( !\u_banco_reg|REG4|registro\(5) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & ((!\u_rom|dado_out\(4) & 
-- ((\u_banco_reg|REG0|registro\(5)))) # (\u_rom|dado_out\(4) & (\u_banco_reg|REG1|registro\(5))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000101011011010100011010101110100001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(4),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(5),
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_banco_reg|REG0|ALT_INV_registro\(5),
	datae => \u_banco_reg|REG5|ALT_INV_registro\(5),
	dataf => \u_banco_reg|REG4|ALT_INV_registro\(5),
	combout => \u_mux_ula_b|data_out[5]~14_combout\);

-- Location: LABCELL_X33_Y5_N30
\u_mux_ula_b|data_out[5]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[5]~16_combout\ = ( \u_mux_ula_b|data_out[5]~14_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & ((\u_banco_reg|REG2|registro\(5)) # (\u_mux_ula_b|data_out[1]~12_combout\)))) # (\u_mux_ula_b|data_out[5]~15_combout\) ) ) # ( 
-- !\u_mux_ula_b|data_out[5]~14_combout\ & ( ((\u_mux_ula_b|data_out[4]~13_combout\ & (!\u_mux_ula_b|data_out[1]~12_combout\ & \u_banco_reg|REG2|registro\(5)))) # (\u_mux_ula_b|data_out[5]~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010011111111000001001111111100010101111111110001010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[4]~13_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~12_combout\,
	datac => \u_banco_reg|REG2|ALT_INV_registro\(5),
	datad => \u_mux_ula_b|ALT_INV_data_out[5]~15_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[5]~14_combout\,
	combout => \u_mux_ula_b|data_out[5]~16_combout\);

-- Location: LABCELL_X35_Y5_N18
\u_ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~25_sumout\ = SUM(( \u_banco_reg|data_r1[6]~15_combout\ ) + ( \u_mux_ula_b|data_out[6]~19_combout\ ) + ( \u_ula|Add0~22\ ))
-- \u_ula|Add0~26\ = CARRY(( \u_banco_reg|data_r1[6]~15_combout\ ) + ( \u_mux_ula_b|data_out[6]~19_combout\ ) + ( \u_ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[6]~19_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[6]~15_combout\,
	cin => \u_ula|Add0~22\,
	sumout => \u_ula|Add0~25_sumout\,
	cout => \u_ula|Add0~26\);

-- Location: LABCELL_X35_Y6_N15
\u_ula|saida[6]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[6]~21_combout\ = ( \u_uc|Equal10~0_combout\ & ( \u_ula|Add0~25_sumout\ & ( ((!\u_ula|flag_c~0_combout\) # (\u_banco_reg|data_r1[6]~15_combout\)) # (\u_mux_ula_b|data_out[6]~19_combout\) ) ) ) # ( !\u_uc|Equal10~0_combout\ & ( 
-- \u_ula|Add0~25_sumout\ & ( !\u_ula|flag_c~0_combout\ ) ) ) # ( \u_uc|Equal10~0_combout\ & ( !\u_ula|Add0~25_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((\u_banco_reg|data_r1[6]~15_combout\) # (\u_mux_ula_b|data_out[6]~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000111111110000111100001111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[6]~19_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[6]~15_combout\,
	datae => \u_uc|ALT_INV_Equal10~0_combout\,
	dataf => \u_ula|ALT_INV_Add0~25_sumout\,
	combout => \u_ula|saida[6]~21_combout\);

-- Location: LABCELL_X36_Y5_N27
\u_ula|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~25_sumout\ = SUM(( !\u_mux_ula_b|data_out[6]~19_combout\ ) + ( \u_banco_reg|data_r1[6]~15_combout\ ) + ( \u_ula|Add1~22\ ))
-- \u_ula|Add1~26\ = CARRY(( !\u_mux_ula_b|data_out[6]~19_combout\ ) + ( \u_banco_reg|data_r1[6]~15_combout\ ) + ( \u_ula|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[6]~15_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[6]~19_combout\,
	cin => \u_ula|Add1~22\,
	sumout => \u_ula|Add1~25_sumout\,
	cout => \u_ula|Add1~26\);

-- Location: LABCELL_X35_Y6_N45
\u_mux_write|data_out[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[6]~6_combout\ = ( \u_ula|Add1~25_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (((\u_ula|saida[6]~21_combout\)) # (\u_ula|saida[0]~19_combout\))) # (\u_uc|Equal6~0_combout\ & (((\u_rom|dado_out[4]~DUPLICATE_q\)))) ) ) # ( 
-- !\u_ula|Add1~25_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[6]~21_combout\)) # (\u_uc|Equal6~0_combout\ & ((\u_rom|dado_out[4]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_ula|ALT_INV_saida[0]~19_combout\,
	datac => \u_ula|ALT_INV_saida[6]~21_combout\,
	datad => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	dataf => \u_ula|ALT_INV_Add1~25_sumout\,
	combout => \u_mux_write|data_out[6]~6_combout\);

-- Location: FF_X35_Y7_N29
\u_banco_reg|REG5|registro[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro[6]~DUPLICATE_q\);

-- Location: FF_X34_Y4_N55
\u_banco_reg|REG1|registro[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[6]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y7_N54
\u_banco_reg|data_r1[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[6]~14_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro\(6) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(6) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro[6]~DUPLICATE_q\ ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(6) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG2|ALT_INV_registro\(6),
	datab => \u_banco_reg|REG0|ALT_INV_registro\(6),
	datac => \u_banco_reg|REG1|ALT_INV_registro[6]~DUPLICATE_q\,
	datad => \u_banco_reg|REG3|ALT_INV_registro\(6),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[6]~14_combout\);

-- Location: LABCELL_X35_Y7_N24
\u_banco_reg|data_r1[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[6]~15_combout\ = ( !\u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|REG5|registro[6]~DUPLICATE_q\ ) ) ) # ( \u_banco_reg|data_r1[15]~2_combout\ & ( !\u_banco_reg|data_r1[15]~1_combout\ & ( 
-- \u_banco_reg|REG4|registro[6]~DUPLICATE_q\ ) ) ) # ( !\u_banco_reg|data_r1[15]~2_combout\ & ( !\u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[6]~14_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG5|ALT_INV_registro[6]~DUPLICATE_q\,
	datab => \u_banco_reg|REG4|ALT_INV_registro[6]~DUPLICATE_q\,
	datac => \u_banco_reg|ALT_INV_data_r1[6]~14_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	combout => \u_banco_reg|data_r1[6]~15_combout\);

-- Location: LABCELL_X36_Y5_N30
\u_ula|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~29_sumout\ = SUM(( \u_banco_reg|data_r1[7]~17_combout\ ) + ( !\u_mux_ula_b|data_out[7]~22_combout\ ) + ( \u_ula|Add1~26\ ))
-- \u_ula|Add1~30\ = CARRY(( \u_banco_reg|data_r1[7]~17_combout\ ) + ( !\u_mux_ula_b|data_out[7]~22_combout\ ) + ( \u_ula|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[7]~22_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[7]~17_combout\,
	cin => \u_ula|Add1~26\,
	sumout => \u_ula|Add1~29_sumout\,
	cout => \u_ula|Add1~30\);

-- Location: LABCELL_X35_Y5_N21
\u_ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~29_sumout\ = SUM(( \u_mux_ula_b|data_out[7]~22_combout\ ) + ( \u_banco_reg|data_r1[7]~17_combout\ ) + ( \u_ula|Add0~26\ ))
-- \u_ula|Add0~30\ = CARRY(( \u_mux_ula_b|data_out[7]~22_combout\ ) + ( \u_banco_reg|data_r1[7]~17_combout\ ) + ( \u_ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[7]~17_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[7]~22_combout\,
	cin => \u_ula|Add0~26\,
	sumout => \u_ula|Add0~29_sumout\,
	cout => \u_ula|Add0~30\);

-- Location: MLABCELL_X34_Y5_N6
\u_ula|saida[7]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[7]~22_combout\ = ( \u_ula|Add0~29_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[7]~17_combout\) # (\u_mux_ula_b|data_out[7]~22_combout\)))) ) ) # ( !\u_ula|Add0~29_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[7]~17_combout\) # (\u_mux_ula_b|data_out[7]~22_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000110101011101110111010101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[7]~22_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[7]~17_combout\,
	dataf => \u_ula|ALT_INV_Add0~29_sumout\,
	combout => \u_ula|saida[7]~22_combout\);

-- Location: MLABCELL_X34_Y5_N42
\u_mux_write|data_out[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[7]~7_combout\ = ( \u_ula|saida[7]~22_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) # ( !\u_ula|saida[7]~22_combout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[0]~19_combout\ & 
-- (\u_ula|Add1~29_sumout\))) # (\u_uc|Equal6~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010111000000100101011110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_ula|ALT_INV_saida[0]~19_combout\,
	datac => \u_ula|ALT_INV_Add1~29_sumout\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_ula|ALT_INV_saida[7]~22_combout\,
	combout => \u_mux_write|data_out[7]~7_combout\);

-- Location: FF_X35_Y4_N11
\u_banco_reg|REG4|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(7));

-- Location: LABCELL_X33_Y5_N3
\u_banco_reg|data_r1[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[7]~16_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(7) & ( (!\s_reg_r1[0]~0_combout\ & ((\u_banco_reg|REG2|registro\(7)))) # (\s_reg_r1[0]~0_combout\ & (\u_banco_reg|REG3|registro\(7))) ) ) ) # ( 
-- !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(7) & ( (\s_reg_r1[0]~0_combout\) # (\u_banco_reg|REG0|registro[7]~DUPLICATE_q\) ) ) ) # ( \s_reg_r1[1]~1_combout\ & ( !\u_banco_reg|REG1|registro\(7) & ( (!\s_reg_r1[0]~0_combout\ & 
-- ((\u_banco_reg|REG2|registro\(7)))) # (\s_reg_r1[0]~0_combout\ & (\u_banco_reg|REG3|registro\(7))) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\u_banco_reg|REG1|registro\(7) & ( (\u_banco_reg|REG0|registro[7]~DUPLICATE_q\ & !\s_reg_r1[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000111111001101011111010111110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro[7]~DUPLICATE_q\,
	datab => \u_banco_reg|REG3|ALT_INV_registro\(7),
	datac => \ALT_INV_s_reg_r1[0]~0_combout\,
	datad => \u_banco_reg|REG2|ALT_INV_registro\(7),
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \u_banco_reg|REG1|ALT_INV_registro\(7),
	combout => \u_banco_reg|data_r1[7]~16_combout\);

-- Location: MLABCELL_X34_Y5_N54
\u_banco_reg|data_r1[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[7]~17_combout\ = ( \u_banco_reg|data_r1[7]~16_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(7))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro\(7)))) ) ) # ( !\u_banco_reg|data_r1[7]~16_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG5|registro\(7))))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG4|ALT_INV_registro\(7),
	datad => \u_banco_reg|REG5|ALT_INV_registro\(7),
	dataf => \u_banco_reg|ALT_INV_data_r1[7]~16_combout\,
	combout => \u_banco_reg|data_r1[7]~17_combout\);

-- Location: LABCELL_X35_Y5_N24
\u_ula|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~33_sumout\ = SUM(( \u_mux_ula_b|data_out[8]~25_combout\ ) + ( \u_banco_reg|data_r1[8]~19_combout\ ) + ( \u_ula|Add0~30\ ))
-- \u_ula|Add0~34\ = CARRY(( \u_mux_ula_b|data_out[8]~25_combout\ ) + ( \u_banco_reg|data_r1[8]~19_combout\ ) + ( \u_ula|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[8]~19_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[8]~25_combout\,
	cin => \u_ula|Add0~30\,
	sumout => \u_ula|Add0~33_sumout\,
	cout => \u_ula|Add0~34\);

-- Location: MLABCELL_X34_Y5_N9
\u_ula|saida[8]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[8]~23_combout\ = ( \u_ula|Add0~33_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[8]~25_combout\) # (\u_banco_reg|data_r1[8]~19_combout\)))) ) ) # ( !\u_ula|Add0~33_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[8]~25_combout\) # (\u_banco_reg|data_r1[8]~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000110101011101110111010101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[8]~19_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[8]~25_combout\,
	dataf => \u_ula|ALT_INV_Add0~33_sumout\,
	combout => \u_ula|saida[8]~23_combout\);

-- Location: LABCELL_X36_Y5_N33
\u_ula|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~33_sumout\ = SUM(( !\u_mux_ula_b|data_out[8]~25_combout\ ) + ( \u_banco_reg|data_r1[8]~19_combout\ ) + ( \u_ula|Add1~30\ ))
-- \u_ula|Add1~34\ = CARRY(( !\u_mux_ula_b|data_out[8]~25_combout\ ) + ( \u_banco_reg|data_r1[8]~19_combout\ ) + ( \u_ula|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[8]~19_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[8]~25_combout\,
	cin => \u_ula|Add1~30\,
	sumout => \u_ula|Add1~33_sumout\,
	cout => \u_ula|Add1~34\);

-- Location: MLABCELL_X34_Y5_N39
\u_mux_write|data_out[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[8]~8_combout\ = ( \u_ula|Add1~33_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (((\u_ula|saida[8]~23_combout\)) # (\u_ula|saida[0]~19_combout\))) # (\u_uc|Equal6~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) ) # ( 
-- !\u_ula|Add1~33_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[8]~23_combout\)) # (\u_uc|Equal6~0_combout\ & ((\u_rom|dado_out[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_ula|ALT_INV_saida[0]~19_combout\,
	datac => \u_ula|ALT_INV_saida[8]~23_combout\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_ula|ALT_INV_Add1~33_sumout\,
	combout => \u_mux_write|data_out[8]~8_combout\);

-- Location: FF_X33_Y5_N50
\u_banco_reg|REG4|registro[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(8));

-- Location: LABCELL_X33_Y5_N9
\u_banco_reg|data_r1[8]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[8]~18_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG3|registro\(8) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( \s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG1|registro\(8) ) ) ) # ( 
-- \s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG2|registro\(8) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\s_reg_r1[0]~0_combout\ & ( \u_banco_reg|REG0|registro\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(8),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(8),
	datac => \u_banco_reg|REG2|ALT_INV_registro\(8),
	datad => \u_banco_reg|REG3|ALT_INV_registro\(8),
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \ALT_INV_s_reg_r1[0]~0_combout\,
	combout => \u_banco_reg|data_r1[8]~18_combout\);

-- Location: MLABCELL_X34_Y5_N57
\u_banco_reg|data_r1[8]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[8]~19_combout\ = ( \u_banco_reg|data_r1[8]~18_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(8))))) # (\u_banco_reg|data_r1[15]~2_combout\ & 
-- (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro\(8)))) ) ) # ( !\u_banco_reg|data_r1[8]~18_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|REG5|registro\(8))))) # 
-- (\u_banco_reg|data_r1[15]~2_combout\ & (!\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG4|registro\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000001000010011010001100101011101000110010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datac => \u_banco_reg|REG4|ALT_INV_registro\(8),
	datad => \u_banco_reg|REG5|ALT_INV_registro\(8),
	dataf => \u_banco_reg|ALT_INV_data_r1[8]~18_combout\,
	combout => \u_banco_reg|data_r1[8]~19_combout\);

-- Location: LABCELL_X35_Y5_N27
\u_ula|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~37_sumout\ = SUM(( \u_mux_ula_b|data_out[9]~28_combout\ ) + ( \u_banco_reg|data_r1[9]~21_combout\ ) + ( \u_ula|Add0~34\ ))
-- \u_ula|Add0~38\ = CARRY(( \u_mux_ula_b|data_out[9]~28_combout\ ) + ( \u_banco_reg|data_r1[9]~21_combout\ ) + ( \u_ula|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[9]~21_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[9]~28_combout\,
	cin => \u_ula|Add0~34\,
	sumout => \u_ula|Add0~37_sumout\,
	cout => \u_ula|Add0~38\);

-- Location: MLABCELL_X34_Y5_N48
\u_ula|saida[9]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[9]~24_combout\ = ( \u_banco_reg|data_r1[9]~21_combout\ & ( (!\u_ula|flag_c~0_combout\ & ((\u_ula|Add0~37_sumout\))) # (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\)) ) ) # ( !\u_banco_reg|data_r1[9]~21_combout\ & ( 
-- (!\u_ula|flag_c~0_combout\ & (((\u_ula|Add0~37_sumout\)))) # (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & (\u_mux_ula_b|data_out[9]~28_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100010001101110110001000110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[9]~28_combout\,
	datad => \u_ula|ALT_INV_Add0~37_sumout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[9]~21_combout\,
	combout => \u_ula|saida[9]~24_combout\);

-- Location: LABCELL_X36_Y5_N36
\u_ula|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~37_sumout\ = SUM(( !\u_mux_ula_b|data_out[9]~28_combout\ ) + ( \u_banco_reg|data_r1[9]~21_combout\ ) + ( \u_ula|Add1~34\ ))
-- \u_ula|Add1~38\ = CARRY(( !\u_mux_ula_b|data_out[9]~28_combout\ ) + ( \u_banco_reg|data_r1[9]~21_combout\ ) + ( \u_ula|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[9]~21_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[9]~28_combout\,
	cin => \u_ula|Add1~34\,
	sumout => \u_ula|Add1~37_sumout\,
	cout => \u_ula|Add1~38\);

-- Location: MLABCELL_X34_Y5_N36
\u_mux_write|data_out[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[9]~9_combout\ = ( \u_ula|Add1~37_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (((\u_ula|saida[9]~24_combout\)) # (\u_ula|saida[0]~19_combout\))) # (\u_uc|Equal6~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) ) # ( 
-- !\u_ula|Add1~37_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[9]~24_combout\)) # (\u_uc|Equal6~0_combout\ & ((\u_rom|dado_out[7]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_ula|ALT_INV_saida[0]~19_combout\,
	datac => \u_ula|ALT_INV_saida[9]~24_combout\,
	datad => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	dataf => \u_ula|ALT_INV_Add1~37_sumout\,
	combout => \u_mux_write|data_out[9]~9_combout\);

-- Location: FF_X34_Y5_N35
\u_banco_reg|REG5|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(9));

-- Location: FF_X33_Y6_N32
\u_banco_reg|REG4|registro[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(9));

-- Location: FF_X34_Y7_N10
\u_banco_reg|REG1|registro[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[9]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[9]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y6_N51
\u_banco_reg|data_r1[9]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[9]~20_combout\ = ( \u_banco_reg|REG0|registro\(9) & ( \s_reg_r1[1]~1_combout\ & ( (!\s_reg_r1[0]~0_combout\ & ((\u_banco_reg|REG2|registro\(9)))) # (\s_reg_r1[0]~0_combout\ & (\u_banco_reg|REG3|registro\(9))) ) ) ) # ( 
-- !\u_banco_reg|REG0|registro\(9) & ( \s_reg_r1[1]~1_combout\ & ( (!\s_reg_r1[0]~0_combout\ & ((\u_banco_reg|REG2|registro\(9)))) # (\s_reg_r1[0]~0_combout\ & (\u_banco_reg|REG3|registro\(9))) ) ) ) # ( \u_banco_reg|REG0|registro\(9) & ( 
-- !\s_reg_r1[1]~1_combout\ & ( (!\s_reg_r1[0]~0_combout\) # (\u_banco_reg|REG1|registro[9]~DUPLICATE_q\) ) ) ) # ( !\u_banco_reg|REG0|registro\(9) & ( !\s_reg_r1[1]~1_combout\ & ( (\u_banco_reg|REG1|registro[9]~DUPLICATE_q\ & \s_reg_r1[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(9),
	datab => \u_banco_reg|REG2|ALT_INV_registro\(9),
	datac => \u_banco_reg|REG1|ALT_INV_registro[9]~DUPLICATE_q\,
	datad => \ALT_INV_s_reg_r1[0]~0_combout\,
	datae => \u_banco_reg|REG0|ALT_INV_registro\(9),
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[9]~20_combout\);

-- Location: MLABCELL_X34_Y5_N15
\u_banco_reg|data_r1[9]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[9]~21_combout\ = ( \u_banco_reg|data_r1[9]~20_combout\ & ( \u_banco_reg|data_r1[15]~2_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\ & \u_banco_reg|REG4|registro\(9)) ) ) ) # ( !\u_banco_reg|data_r1[9]~20_combout\ & ( 
-- \u_banco_reg|data_r1[15]~2_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\ & \u_banco_reg|REG4|registro\(9)) ) ) ) # ( \u_banco_reg|data_r1[9]~20_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\) # 
-- (\u_banco_reg|REG5|registro\(9)) ) ) ) # ( !\u_banco_reg|data_r1[9]~20_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( (\u_banco_reg|REG5|registro\(9) & \u_banco_reg|data_r1[15]~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101111101011111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG5|ALT_INV_registro\(9),
	datac => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datad => \u_banco_reg|REG4|ALT_INV_registro\(9),
	datae => \u_banco_reg|ALT_INV_data_r1[9]~20_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	combout => \u_banco_reg|data_r1[9]~21_combout\);

-- Location: LABCELL_X36_Y5_N39
\u_ula|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~41_sumout\ = SUM(( \u_banco_reg|data_r1[10]~23_combout\ ) + ( !\u_mux_ula_b|data_out[10]~56_combout\ ) + ( \u_ula|Add1~38\ ))
-- \u_ula|Add1~42\ = CARRY(( \u_banco_reg|data_r1[10]~23_combout\ ) + ( !\u_mux_ula_b|data_out[10]~56_combout\ ) + ( \u_ula|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[10]~56_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[10]~23_combout\,
	cin => \u_ula|Add1~38\,
	sumout => \u_ula|Add1~41_sumout\,
	cout => \u_ula|Add1~42\);

-- Location: LABCELL_X35_Y5_N30
\u_ula|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~41_sumout\ = SUM(( \u_mux_ula_b|data_out[10]~56_combout\ ) + ( \u_banco_reg|data_r1[10]~23_combout\ ) + ( \u_ula|Add0~38\ ))
-- \u_ula|Add0~42\ = CARRY(( \u_mux_ula_b|data_out[10]~56_combout\ ) + ( \u_banco_reg|data_r1[10]~23_combout\ ) + ( \u_ula|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[10]~56_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[10]~23_combout\,
	cin => \u_ula|Add0~38\,
	sumout => \u_ula|Add0~41_sumout\,
	cout => \u_ula|Add0~42\);

-- Location: LABCELL_X36_Y6_N42
\u_ula|saida[10]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[10]~25_combout\ = ( \u_mux_ula_b|data_out[10]~56_combout\ & ( \u_ula|Add0~41_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_mux_ula_b|data_out[10]~56_combout\ & ( \u_ula|Add0~41_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & \u_banco_reg|data_r1[10]~23_combout\)) ) ) ) # ( \u_mux_ula_b|data_out[10]~56_combout\ & ( !\u_ula|Add0~41_sumout\ & ( (\u_ula|flag_c~0_combout\ & \u_uc|Equal10~0_combout\) ) ) ) # ( 
-- !\u_mux_ula_b|data_out[10]~56_combout\ & ( !\u_ula|Add0~41_sumout\ & ( (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & \u_banco_reg|data_r1[10]~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100010001000110101011101010111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[10]~23_combout\,
	datae => \u_mux_ula_b|ALT_INV_data_out[10]~56_combout\,
	dataf => \u_ula|ALT_INV_Add0~41_sumout\,
	combout => \u_ula|saida[10]~25_combout\);

-- Location: LABCELL_X36_Y6_N3
\u_mux_write|data_out[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[10]~10_combout\ = ( \u_ula|Add1~41_sumout\ & ( \u_ula|saida[10]~25_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out\(7)) ) ) ) # ( !\u_ula|Add1~41_sumout\ & ( \u_ula|saida[10]~25_combout\ & ( (!\u_uc|Equal6~0_combout\) # 
-- (\u_rom|dado_out\(7)) ) ) ) # ( \u_ula|Add1~41_sumout\ & ( !\u_ula|saida[10]~25_combout\ & ( (!\u_uc|Equal6~0_combout\ & ((\u_ula|saida[0]~19_combout\))) # (\u_uc|Equal6~0_combout\ & (\u_rom|dado_out\(7))) ) ) ) # ( !\u_ula|Add1~41_sumout\ & ( 
-- !\u_ula|saida[10]~25_combout\ & ( (\u_uc|Equal6~0_combout\ & \u_rom|dado_out\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001011010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datac => \u_rom|ALT_INV_dado_out\(7),
	datad => \u_ula|ALT_INV_saida[0]~19_combout\,
	datae => \u_ula|ALT_INV_Add1~41_sumout\,
	dataf => \u_ula|ALT_INV_saida[10]~25_combout\,
	combout => \u_mux_write|data_out[10]~10_combout\);

-- Location: FF_X35_Y6_N28
\u_banco_reg|REG3|registro[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[10]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro[10]~DUPLICATE_q\);

-- Location: FF_X37_Y6_N29
\u_banco_reg|REG4|registro[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(10));

-- Location: LABCELL_X37_Y6_N54
\u_mux_ula_b|data_out[10]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[10]~29_combout\ = ( \u_rom|dado_out\(4) & ( \u_rom|dado_out\(8) & ( \u_banco_reg|REG5|registro\(10) ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_rom|dado_out\(8) & ( \u_banco_reg|REG4|registro\(10) ) ) ) # ( \u_rom|dado_out\(4) & ( 
-- !\u_rom|dado_out\(8) & ( \u_banco_reg|REG1|registro\(10) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_rom|dado_out\(8) & ( \u_banco_reg|REG0|registro\(10) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro\(10),
	datab => \u_banco_reg|REG0|ALT_INV_registro\(10),
	datac => \u_banco_reg|REG1|ALT_INV_registro\(10),
	datad => \u_banco_reg|REG5|ALT_INV_registro\(10),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_rom|ALT_INV_dado_out\(8),
	combout => \u_mux_ula_b|data_out[10]~29_combout\);

-- Location: LABCELL_X36_Y6_N36
\u_mux_ula_b|data_out[10]~56\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[10]~56_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7) & ((\u_mux_ula_b|data_out[10]~29_combout\))) # (\u_rom|dado_out\(7) & 
-- (\u_banco_reg|REG2|registro\(10)))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out\(7))))) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7) & 
-- ((\u_mux_ula_b|data_out[10]~29_combout\))) # (\u_rom|dado_out\(7) & (\u_banco_reg|REG3|registro[10]~DUPLICATE_q\))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001010001010000000101000101000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datab => \u_rom|ALT_INV_dado_out\(7),
	datac => \u_banco_reg|REG3|ALT_INV_registro[10]~DUPLICATE_q\,
	datad => \u_mux_ula_b|ALT_INV_data_out[10]~29_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro\(10),
	combout => \u_mux_ula_b|data_out[10]~56_combout\);

-- Location: LABCELL_X36_Y5_N42
\u_ula|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~45_sumout\ = SUM(( \u_banco_reg|data_r1[11]~25_combout\ ) + ( !\u_mux_ula_b|data_out[11]~52_combout\ ) + ( \u_ula|Add1~42\ ))
-- \u_ula|Add1~46\ = CARRY(( \u_banco_reg|data_r1[11]~25_combout\ ) + ( !\u_mux_ula_b|data_out[11]~52_combout\ ) + ( \u_ula|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[11]~52_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[11]~25_combout\,
	cin => \u_ula|Add1~42\,
	sumout => \u_ula|Add1~45_sumout\,
	cout => \u_ula|Add1~46\);

-- Location: LABCELL_X35_Y5_N33
\u_ula|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~45_sumout\ = SUM(( \u_banco_reg|data_r1[11]~25_combout\ ) + ( \u_mux_ula_b|data_out[11]~52_combout\ ) + ( \u_ula|Add0~42\ ))
-- \u_ula|Add0~46\ = CARRY(( \u_banco_reg|data_r1[11]~25_combout\ ) + ( \u_mux_ula_b|data_out[11]~52_combout\ ) + ( \u_ula|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_mux_ula_b|ALT_INV_data_out[11]~52_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[11]~25_combout\,
	cin => \u_ula|Add0~42\,
	sumout => \u_ula|Add0~45_sumout\,
	cout => \u_ula|Add0~46\);

-- Location: MLABCELL_X34_Y5_N30
\u_ula|saida[11]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[11]~26_combout\ = ( \u_banco_reg|data_r1[11]~25_combout\ & ( \u_ula|Add0~45_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_banco_reg|data_r1[11]~25_combout\ & ( \u_ula|Add0~45_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & \u_mux_ula_b|data_out[11]~52_combout\)) ) ) ) # ( \u_banco_reg|data_r1[11]~25_combout\ & ( !\u_ula|Add0~45_sumout\ & ( (\u_ula|flag_c~0_combout\ & \u_uc|Equal10~0_combout\) ) ) ) # ( 
-- !\u_banco_reg|data_r1[11]~25_combout\ & ( !\u_ula|Add0~45_sumout\ & ( (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & \u_mux_ula_b|data_out[11]~52_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100010001000110101011101010111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[11]~52_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[11]~25_combout\,
	dataf => \u_ula|ALT_INV_Add0~45_sumout\,
	combout => \u_ula|saida[11]~26_combout\);

-- Location: MLABCELL_X34_Y5_N0
\u_mux_write|data_out[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[11]~11_combout\ = ( \u_ula|saida[11]~26_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) # ( !\u_ula|saida[11]~26_combout\ & ( (!\u_uc|Equal6~0_combout\ & (((\u_ula|saida[0]~19_combout\ & 
-- \u_ula|Add1~45_sumout\)))) # (\u_uc|Equal6~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011011000100010001101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_ula|ALT_INV_saida[0]~19_combout\,
	datad => \u_ula|ALT_INV_Add1~45_sumout\,
	dataf => \u_ula|ALT_INV_saida[11]~26_combout\,
	combout => \u_mux_write|data_out[11]~11_combout\);

-- Location: FF_X34_Y5_N47
\u_banco_reg|REG3|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[11]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(11));

-- Location: FF_X34_Y3_N26
\u_banco_reg|REG0|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(11));

-- Location: FF_X34_Y3_N8
\u_banco_reg|REG1|registro[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[11]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y3_N0
\u_mux_ula_b|data_out[11]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[11]~30_combout\ = ( \u_rom|dado_out\(4) & ( \u_banco_reg|REG5|registro\(11) & ( (\u_banco_reg|REG1|registro[11]~DUPLICATE_q\) # (\u_rom|dado_out[8]~DUPLICATE_q\) ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_banco_reg|REG5|registro\(11) & ( 
-- (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG0|registro\(11))) # (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG4|registro[11]~DUPLICATE_q\))) ) ) ) # ( \u_rom|dado_out\(4) & ( !\u_banco_reg|REG5|registro\(11) & ( 
-- (!\u_rom|dado_out[8]~DUPLICATE_q\ & \u_banco_reg|REG1|registro[11]~DUPLICATE_q\) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_banco_reg|REG5|registro\(11) & ( (!\u_rom|dado_out[8]~DUPLICATE_q\ & (\u_banco_reg|REG0|registro\(11))) # 
-- (\u_rom|dado_out[8]~DUPLICATE_q\ & ((\u_banco_reg|REG4|registro[11]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011000000001111000001010011010100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(11),
	datab => \u_banco_reg|REG4|ALT_INV_registro[11]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out[8]~DUPLICATE_q\,
	datad => \u_banco_reg|REG1|ALT_INV_registro[11]~DUPLICATE_q\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_banco_reg|REG5|ALT_INV_registro\(11),
	combout => \u_mux_ula_b|data_out[11]~30_combout\);

-- Location: MLABCELL_X34_Y5_N18
\u_mux_ula_b|data_out[11]~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[11]~52_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_mux_ula_b|data_out[11]~30_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- (\u_banco_reg|REG2|registro\(11)))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- ((\u_mux_ula_b|data_out[11]~30_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(11)))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000001000110011000000100011001110001010001100111000101000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(11),
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_mux_ula_b|ALT_INV_data_out[11]~30_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro\(11),
	combout => \u_mux_ula_b|data_out[11]~52_combout\);

-- Location: LABCELL_X36_Y5_N45
\u_ula|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~49_sumout\ = SUM(( \u_banco_reg|data_r1[12]~27_combout\ ) + ( !\u_mux_ula_b|data_out[12]~48_combout\ ) + ( \u_ula|Add1~46\ ))
-- \u_ula|Add1~50\ = CARRY(( \u_banco_reg|data_r1[12]~27_combout\ ) + ( !\u_mux_ula_b|data_out[12]~48_combout\ ) + ( \u_ula|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[12]~48_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[12]~27_combout\,
	cin => \u_ula|Add1~46\,
	sumout => \u_ula|Add1~49_sumout\,
	cout => \u_ula|Add1~50\);

-- Location: LABCELL_X35_Y5_N36
\u_ula|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~49_sumout\ = SUM(( \u_mux_ula_b|data_out[12]~48_combout\ ) + ( \u_banco_reg|data_r1[12]~27_combout\ ) + ( \u_ula|Add0~46\ ))
-- \u_ula|Add0~50\ = CARRY(( \u_mux_ula_b|data_out[12]~48_combout\ ) + ( \u_banco_reg|data_r1[12]~27_combout\ ) + ( \u_ula|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[12]~48_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[12]~27_combout\,
	cin => \u_ula|Add0~46\,
	sumout => \u_ula|Add0~49_sumout\,
	cout => \u_ula|Add0~50\);

-- Location: LABCELL_X36_Y6_N24
\u_ula|saida[12]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[12]~27_combout\ = ( \u_ula|Add0~49_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[12]~48_combout\) # (\u_banco_reg|data_r1[12]~27_combout\)))) ) ) # ( !\u_ula|Add0~49_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[12]~48_combout\) # (\u_banco_reg|data_r1[12]~27_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000110101011101110111010101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[12]~27_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[12]~48_combout\,
	dataf => \u_ula|ALT_INV_Add0~49_sumout\,
	combout => \u_ula|saida[12]~27_combout\);

-- Location: LABCELL_X36_Y6_N6
\u_mux_write|data_out[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[12]~12_combout\ = ( \u_ula|Add1~49_sumout\ & ( \u_ula|saida[12]~27_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out\(7)) ) ) ) # ( !\u_ula|Add1~49_sumout\ & ( \u_ula|saida[12]~27_combout\ & ( (!\u_uc|Equal6~0_combout\) # 
-- (\u_rom|dado_out\(7)) ) ) ) # ( \u_ula|Add1~49_sumout\ & ( !\u_ula|saida[12]~27_combout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[0]~19_combout\)) # (\u_uc|Equal6~0_combout\ & ((\u_rom|dado_out\(7)))) ) ) ) # ( !\u_ula|Add1~49_sumout\ & ( 
-- !\u_ula|saida[12]~27_combout\ & ( (\u_rom|dado_out\(7) & \u_uc|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[0]~19_combout\,
	datab => \u_rom|ALT_INV_dado_out\(7),
	datac => \u_uc|ALT_INV_Equal6~0_combout\,
	datae => \u_ula|ALT_INV_Add1~49_sumout\,
	dataf => \u_ula|ALT_INV_saida[12]~27_combout\,
	combout => \u_mux_write|data_out[12]~12_combout\);

-- Location: FF_X35_Y6_N7
\u_banco_reg|REG3|registro[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(12));

-- Location: FF_X36_Y6_N10
\u_banco_reg|REG5|registro[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro[12]~DUPLICATE_q\);

-- Location: LABCELL_X37_Y6_N39
\u_mux_ula_b|data_out[12]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[12]~31_combout\ = ( \u_rom|dado_out\(4) & ( \u_rom|dado_out\(8) & ( \u_banco_reg|REG5|registro[12]~DUPLICATE_q\ ) ) ) # ( !\u_rom|dado_out\(4) & ( \u_rom|dado_out\(8) & ( \u_banco_reg|REG4|registro\(12) ) ) ) # ( \u_rom|dado_out\(4) 
-- & ( !\u_rom|dado_out\(8) & ( \u_banco_reg|REG1|registro\(12) ) ) ) # ( !\u_rom|dado_out\(4) & ( !\u_rom|dado_out\(8) & ( \u_banco_reg|REG0|registro\(12) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG0|ALT_INV_registro\(12),
	datab => \u_banco_reg|REG5|ALT_INV_registro[12]~DUPLICATE_q\,
	datac => \u_banco_reg|REG4|ALT_INV_registro\(12),
	datad => \u_banco_reg|REG1|ALT_INV_registro\(12),
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_rom|ALT_INV_dado_out\(8),
	combout => \u_mux_ula_b|data_out[12]~31_combout\);

-- Location: LABCELL_X37_Y6_N12
\u_mux_ula_b|data_out[12]~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[12]~48_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7) & ((\u_mux_ula_b|data_out[12]~31_combout\))) # (\u_rom|dado_out\(7) & 
-- (\u_banco_reg|REG2|registro\(12)))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(7))) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out\(7) & 
-- ((\u_mux_ula_b|data_out[12]~31_combout\))) # (\u_rom|dado_out\(7) & (\u_banco_reg|REG3|registro\(12)))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0001010100010001000101010001000110011101000100011001110100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(7),
	datab => \u_uc|ALT_INV_Equal8~0_combout\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(12),
	datad => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_mux_ula_b|ALT_INV_data_out[12]~31_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro\(12),
	combout => \u_mux_ula_b|data_out[12]~48_combout\);

-- Location: LABCELL_X35_Y5_N39
\u_ula|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~53_sumout\ = SUM(( \u_mux_ula_b|data_out[13]~44_combout\ ) + ( \u_banco_reg|data_r1[13]~29_combout\ ) + ( \u_ula|Add0~50\ ))
-- \u_ula|Add0~54\ = CARRY(( \u_mux_ula_b|data_out[13]~44_combout\ ) + ( \u_banco_reg|data_r1[13]~29_combout\ ) + ( \u_ula|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[13]~29_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[13]~44_combout\,
	cin => \u_ula|Add0~50\,
	sumout => \u_ula|Add0~53_sumout\,
	cout => \u_ula|Add0~54\);

-- Location: MLABCELL_X34_Y5_N51
\u_ula|saida[13]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[13]~28_combout\ = ( \u_ula|Add0~53_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[13]~44_combout\) # (\u_banco_reg|data_r1[13]~29_combout\)))) ) ) # ( !\u_ula|Add0~53_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[13]~44_combout\) # (\u_banco_reg|data_r1[13]~29_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001000000010001000110101011101110111010101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[13]~29_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[13]~44_combout\,
	dataf => \u_ula|ALT_INV_Add0~53_sumout\,
	combout => \u_ula|saida[13]~28_combout\);

-- Location: LABCELL_X36_Y5_N48
\u_ula|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~53_sumout\ = SUM(( !\u_mux_ula_b|data_out[13]~44_combout\ ) + ( \u_banco_reg|data_r1[13]~29_combout\ ) + ( \u_ula|Add1~50\ ))
-- \u_ula|Add1~54\ = CARRY(( !\u_mux_ula_b|data_out[13]~44_combout\ ) + ( \u_banco_reg|data_r1[13]~29_combout\ ) + ( \u_ula|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_mux_ula_b|ALT_INV_data_out[13]~44_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[13]~29_combout\,
	cin => \u_ula|Add1~50\,
	sumout => \u_ula|Add1~53_sumout\,
	cout => \u_ula|Add1~54\);

-- Location: MLABCELL_X34_Y5_N3
\u_mux_write|data_out[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[13]~13_combout\ = ( \u_ula|Add1~53_sumout\ & ( (!\u_uc|Equal6~0_combout\ & (((\u_ula|saida[13]~28_combout\) # (\u_ula|saida[0]~19_combout\)))) # (\u_uc|Equal6~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) ) # ( 
-- !\u_ula|Add1~53_sumout\ & ( (!\u_uc|Equal6~0_combout\ & ((\u_ula|saida[13]~28_combout\))) # (\u_uc|Equal6~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100011011101110110001101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal6~0_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_ula|ALT_INV_saida[0]~19_combout\,
	datad => \u_ula|ALT_INV_saida[13]~28_combout\,
	dataf => \u_ula|ALT_INV_Add1~53_sumout\,
	combout => \u_mux_write|data_out[13]~13_combout\);

-- Location: FF_X35_Y7_N20
\u_banco_reg|REG4|registro[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(13));

-- Location: LABCELL_X35_Y7_N6
\u_banco_reg|data_r1[13]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[13]~28_combout\ = ( \s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG3|registro\(13) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG2|registro\(13) ) ) ) # ( 
-- \s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG1|registro\(13) ) ) ) # ( !\s_reg_r1[0]~0_combout\ & ( !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(13) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(13),
	datab => \u_banco_reg|REG3|ALT_INV_registro\(13),
	datac => \u_banco_reg|REG0|ALT_INV_registro\(13),
	datad => \u_banco_reg|REG2|ALT_INV_registro\(13),
	datae => \ALT_INV_s_reg_r1[0]~0_combout\,
	dataf => \ALT_INV_s_reg_r1[1]~1_combout\,
	combout => \u_banco_reg|data_r1[13]~28_combout\);

-- Location: LABCELL_X35_Y7_N21
\u_banco_reg|data_r1[13]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[13]~29_combout\ = ( \u_banco_reg|data_r1[15]~1_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & \u_banco_reg|REG5|registro\(13)) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & 
-- ((\u_banco_reg|data_r1[13]~28_combout\))) # (\u_banco_reg|data_r1[15]~2_combout\ & (\u_banco_reg|REG4|registro\(13))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101000000001111000000110101001101010000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG4|ALT_INV_registro\(13),
	datab => \u_banco_reg|ALT_INV_data_r1[13]~28_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datad => \u_banco_reg|REG5|ALT_INV_registro\(13),
	datae => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	combout => \u_banco_reg|data_r1[13]~29_combout\);

-- Location: MLABCELL_X39_Y5_N3
\u_ula|saida[13]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[13]~17_combout\ = ( \u_ula|Add0~53_sumout\ & ( \u_ula|Add1~53_sumout\ & ( (((!\u_ula|flag_c~0_combout\) # (!\u_uc|Equal10~0_combout\)) # (\u_mux_ula_b|data_out[13]~44_combout\)) # (\u_banco_reg|data_r1[13]~29_combout\) ) ) ) # ( 
-- !\u_ula|Add0~53_sumout\ & ( \u_ula|Add1~53_sumout\ & ( (\u_ula|flag_c~0_combout\ & (((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[13]~44_combout\)) # (\u_banco_reg|data_r1[13]~29_combout\))) ) ) ) # ( \u_ula|Add0~53_sumout\ & ( 
-- !\u_ula|Add1~53_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[13]~44_combout\) # (\u_banco_reg|data_r1[13]~29_combout\)))) ) ) ) # ( !\u_ula|Add0~53_sumout\ & ( !\u_ula|Add1~53_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[13]~44_combout\) # (\u_banco_reg|data_r1[13]~29_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111111100001111011100001111000001111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[13]~29_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[13]~44_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_ula|ALT_INV_Add0~53_sumout\,
	dataf => \u_ula|ALT_INV_Add1~53_sumout\,
	combout => \u_ula|saida[13]~17_combout\);

-- Location: LABCELL_X36_Y7_N30
\u_banco_reg|REG3|registro[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG3|registro[14]~feeder_combout\ = ( \u_mux_write|data_out[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[14]~14_combout\,
	combout => \u_banco_reg|REG3|registro[14]~feeder_combout\);

-- Location: FF_X36_Y7_N31
\u_banco_reg|REG3|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG3|registro[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(14));

-- Location: MLABCELL_X34_Y7_N3
\u_banco_reg|REG1|registro[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[14]~feeder_combout\ = ( \u_mux_write|data_out[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[14]~14_combout\,
	combout => \u_banco_reg|REG1|registro[14]~feeder_combout\);

-- Location: FF_X34_Y7_N4
\u_banco_reg|REG1|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(14));

-- Location: FF_X35_Y7_N4
\u_banco_reg|REG5|registro[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro[14]~DUPLICATE_q\);

-- Location: FF_X35_Y7_N46
\u_banco_reg|REG4|registro[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro[14]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N3
\u_banco_reg|REG0|registro[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[14]~feeder_combout\ = ( \u_mux_write|data_out[14]~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[14]~14_combout\,
	combout => \u_banco_reg|REG0|registro[14]~feeder_combout\);

-- Location: FF_X36_Y7_N5
\u_banco_reg|REG0|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(14));

-- Location: LABCELL_X36_Y7_N42
\u_mux_ula_b|data_out[14]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[14]~33_combout\ = ( \u_banco_reg|REG0|registro\(14) & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8) & (\u_banco_reg|REG1|registro\(14))) # (\u_rom|dado_out\(8) & ((\u_banco_reg|REG5|registro[14]~DUPLICATE_q\))) ) ) ) # ( 
-- !\u_banco_reg|REG0|registro\(14) & ( \u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8) & (\u_banco_reg|REG1|registro\(14))) # (\u_rom|dado_out\(8) & ((\u_banco_reg|REG5|registro[14]~DUPLICATE_q\))) ) ) ) # ( \u_banco_reg|REG0|registro\(14) & ( 
-- !\u_rom|dado_out\(4) & ( (!\u_rom|dado_out\(8)) # (\u_banco_reg|REG4|registro[14]~DUPLICATE_q\) ) ) ) # ( !\u_banco_reg|REG0|registro\(14) & ( !\u_rom|dado_out\(4) & ( (\u_banco_reg|REG4|registro[14]~DUPLICATE_q\ & \u_rom|dado_out\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111101010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro\(14),
	datab => \u_banco_reg|REG5|ALT_INV_registro[14]~DUPLICATE_q\,
	datac => \u_banco_reg|REG4|ALT_INV_registro[14]~DUPLICATE_q\,
	datad => \u_rom|ALT_INV_dado_out\(8),
	datae => \u_banco_reg|REG0|ALT_INV_registro\(14),
	dataf => \u_rom|ALT_INV_dado_out\(4),
	combout => \u_mux_ula_b|data_out[14]~33_combout\);

-- Location: FF_X34_Y7_N31
\u_banco_reg|REG2|registro[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro[14]~DUPLICATE_q\);

-- Location: LABCELL_X36_Y7_N36
\u_mux_ula_b|data_out[14]~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[14]~40_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_mux_ula_b|data_out[14]~33_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- (\u_banco_reg|REG2|registro[14]~DUPLICATE_q\))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- ((\u_mux_ula_b|data_out[14]~33_combout\))) # (\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_banco_reg|REG3|registro\(14)))))) # (\u_uc|Equal8~0_combout\ & (\u_rom|dado_out[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000010001010101000001000101010110001100010101011000110001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datab => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(14),
	datad => \u_uc|ALT_INV_Equal8~0_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_mux_ula_b|ALT_INV_data_out[14]~33_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro[14]~DUPLICATE_q\,
	combout => \u_mux_ula_b|data_out[14]~40_combout\);

-- Location: LABCELL_X36_Y5_N51
\u_ula|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~57_sumout\ = SUM(( !\u_mux_ula_b|data_out[14]~40_combout\ ) + ( \u_banco_reg|data_r1[14]~31_combout\ ) + ( \u_ula|Add1~54\ ))
-- \u_ula|Add1~58\ = CARRY(( !\u_mux_ula_b|data_out[14]~40_combout\ ) + ( \u_banco_reg|data_r1[14]~31_combout\ ) + ( \u_ula|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[14]~31_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[14]~40_combout\,
	cin => \u_ula|Add1~54\,
	sumout => \u_ula|Add1~57_sumout\,
	cout => \u_ula|Add1~58\);

-- Location: LABCELL_X35_Y5_N42
\u_ula|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~57_sumout\ = SUM(( \u_mux_ula_b|data_out[14]~40_combout\ ) + ( \u_banco_reg|data_r1[14]~31_combout\ ) + ( \u_ula|Add0~54\ ))
-- \u_ula|Add0~58\ = CARRY(( \u_mux_ula_b|data_out[14]~40_combout\ ) + ( \u_banco_reg|data_r1[14]~31_combout\ ) + ( \u_ula|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[14]~31_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[14]~40_combout\,
	cin => \u_ula|Add0~54\,
	sumout => \u_ula|Add0~57_sumout\,
	cout => \u_ula|Add0~58\);

-- Location: LABCELL_X35_Y7_N33
\u_ula|saida[14]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[14]~29_combout\ = ( \u_mux_ula_b|data_out[14]~40_combout\ & ( \u_ula|Add0~57_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_mux_ula_b|data_out[14]~40_combout\ & ( \u_ula|Add0~57_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # ((\u_banco_reg|data_r1[14]~31_combout\ & \u_uc|Equal10~0_combout\)) ) ) ) # ( \u_mux_ula_b|data_out[14]~40_combout\ & ( !\u_ula|Add0~57_sumout\ & ( (\u_ula|flag_c~0_combout\ & \u_uc|Equal10~0_combout\) ) ) ) # ( 
-- !\u_mux_ula_b|data_out[14]~40_combout\ & ( !\u_ula|Add0~57_sumout\ & ( (\u_ula|flag_c~0_combout\ & (\u_banco_reg|data_r1[14]~31_combout\ & \u_uc|Equal10~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000001010000010110101011101010111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_banco_reg|ALT_INV_data_r1[14]~31_combout\,
	datac => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_mux_ula_b|ALT_INV_data_out[14]~40_combout\,
	dataf => \u_ula|ALT_INV_Add0~57_sumout\,
	combout => \u_ula|saida[14]~29_combout\);

-- Location: LABCELL_X35_Y7_N0
\u_mux_write|data_out[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[14]~14_combout\ = ( \u_ula|Add1~57_sumout\ & ( \u_ula|saida[14]~29_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) ) # ( !\u_ula|Add1~57_sumout\ & ( \u_ula|saida[14]~29_combout\ & ( 
-- (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) ) # ( \u_ula|Add1~57_sumout\ & ( !\u_ula|saida[14]~29_combout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[0]~19_combout\)) # (\u_uc|Equal6~0_combout\ & 
-- ((\u_rom|dado_out[7]~DUPLICATE_q\))) ) ) ) # ( !\u_ula|Add1~57_sumout\ & ( !\u_ula|saida[14]~29_combout\ & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & \u_uc|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[0]~19_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_uc|ALT_INV_Equal6~0_combout\,
	datae => \u_ula|ALT_INV_Add1~57_sumout\,
	dataf => \u_ula|ALT_INV_saida[14]~29_combout\,
	combout => \u_mux_write|data_out[14]~14_combout\);

-- Location: FF_X35_Y7_N47
\u_banco_reg|REG4|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(14));

-- Location: FF_X35_Y7_N5
\u_banco_reg|REG5|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(14));

-- Location: FF_X34_Y7_N5
\u_banco_reg|REG1|registro[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[14]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro[14]~DUPLICATE_q\);

-- Location: FF_X34_Y7_N32
\u_banco_reg|REG2|registro[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(14));

-- Location: MLABCELL_X34_Y7_N33
\u_banco_reg|data_r1[14]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[14]~30_combout\ = ( \s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(14) & ( (!\s_reg_r1[0]~0_combout\ & (\u_banco_reg|REG2|registro\(14))) # (\s_reg_r1[0]~0_combout\ & ((\u_banco_reg|REG3|registro\(14)))) ) ) ) # ( 
-- !\s_reg_r1[1]~1_combout\ & ( \u_banco_reg|REG0|registro\(14) & ( (!\s_reg_r1[0]~0_combout\) # (\u_banco_reg|REG1|registro[14]~DUPLICATE_q\) ) ) ) # ( \s_reg_r1[1]~1_combout\ & ( !\u_banco_reg|REG0|registro\(14) & ( (!\s_reg_r1[0]~0_combout\ & 
-- (\u_banco_reg|REG2|registro\(14))) # (\s_reg_r1[0]~0_combout\ & ((\u_banco_reg|REG3|registro\(14)))) ) ) ) # ( !\s_reg_r1[1]~1_combout\ & ( !\u_banco_reg|REG0|registro\(14) & ( (\u_banco_reg|REG1|registro[14]~DUPLICATE_q\ & \s_reg_r1[0]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000011000011111111011101110111010000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG1|ALT_INV_registro[14]~DUPLICATE_q\,
	datab => \ALT_INV_s_reg_r1[0]~0_combout\,
	datac => \u_banco_reg|REG2|ALT_INV_registro\(14),
	datad => \u_banco_reg|REG3|ALT_INV_registro\(14),
	datae => \ALT_INV_s_reg_r1[1]~1_combout\,
	dataf => \u_banco_reg|REG0|ALT_INV_registro\(14),
	combout => \u_banco_reg|data_r1[14]~30_combout\);

-- Location: LABCELL_X35_Y7_N42
\u_banco_reg|data_r1[14]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[14]~31_combout\ = ( !\u_banco_reg|data_r1[15]~1_combout\ & ( \u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|REG4|registro\(14) ) ) ) # ( \u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( 
-- \u_banco_reg|REG5|registro\(14) ) ) ) # ( !\u_banco_reg|data_r1[15]~1_combout\ & ( !\u_banco_reg|data_r1[15]~2_combout\ & ( \u_banco_reg|data_r1[14]~30_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_banco_reg|REG4|ALT_INV_registro\(14),
	datac => \u_banco_reg|REG5|ALT_INV_registro\(14),
	datad => \u_banco_reg|ALT_INV_data_r1[14]~30_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	combout => \u_banco_reg|data_r1[14]~31_combout\);

-- Location: MLABCELL_X39_Y5_N42
\u_ula|saida[14]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[14]~18_combout\ = ( \u_ula|Add0~57_sumout\ & ( \u_ula|Add1~57_sumout\ & ( ((!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[14]~40_combout\))) # (\u_banco_reg|data_r1[14]~31_combout\) ) ) ) # ( 
-- !\u_ula|Add0~57_sumout\ & ( \u_ula|Add1~57_sumout\ & ( (\u_ula|flag_c~0_combout\ & (((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[14]~40_combout\)) # (\u_banco_reg|data_r1[14]~31_combout\))) ) ) ) # ( \u_ula|Add0~57_sumout\ & ( 
-- !\u_ula|Add1~57_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[14]~40_combout\) # (\u_banco_reg|data_r1[14]~31_combout\)))) ) ) ) # ( !\u_ula|Add0~57_sumout\ & ( !\u_ula|Add1~57_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[14]~40_combout\) # (\u_banco_reg|data_r1[14]~31_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011110011011100111100110001001100111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[14]~31_combout\,
	datab => \u_ula|ALT_INV_flag_c~0_combout\,
	datac => \u_uc|ALT_INV_Equal10~0_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[14]~40_combout\,
	datae => \u_ula|ALT_INV_Add0~57_sumout\,
	dataf => \u_ula|ALT_INV_Add1~57_sumout\,
	combout => \u_ula|saida[14]~18_combout\);

-- Location: FF_X35_Y7_N38
\u_banco_reg|REG4|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[15]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(15));

-- Location: LABCELL_X36_Y7_N12
\u_banco_reg|REG3|registro[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG3|registro[15]~feeder_combout\ = ( \u_mux_write|data_out[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[15]~15_combout\,
	combout => \u_banco_reg|REG3|registro[15]~feeder_combout\);

-- Location: FF_X36_Y7_N13
\u_banco_reg|REG3|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG3|registro[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG3|registro\(15));

-- Location: MLABCELL_X34_Y7_N6
\u_banco_reg|REG1|registro[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG1|registro[15]~feeder_combout\ = ( \u_mux_write|data_out[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[15]~15_combout\,
	combout => \u_banco_reg|REG1|registro[15]~feeder_combout\);

-- Location: FF_X34_Y7_N8
\u_banco_reg|REG1|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(15));

-- Location: FF_X34_Y7_N56
\u_banco_reg|REG2|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[15]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG2|registro\(15));

-- Location: LABCELL_X36_Y7_N57
\u_banco_reg|REG0|registro[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|REG0|registro[15]~feeder_combout\ = ( \u_mux_write|data_out[15]~15_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u_mux_write|ALT_INV_data_out[15]~15_combout\,
	combout => \u_banco_reg|REG0|registro[15]~feeder_combout\);

-- Location: FF_X36_Y7_N58
\u_banco_reg|REG0|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[15]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(15));

-- Location: MLABCELL_X34_Y7_N54
\u_banco_reg|data_r1[15]~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[15]~32_combout\ = ( \u_banco_reg|REG2|registro\(15) & ( \u_banco_reg|REG0|registro\(15) & ( (!\s_reg_r1[0]~0_combout\) # ((!\s_reg_r1[1]~1_combout\ & ((\u_banco_reg|REG1|registro\(15)))) # (\s_reg_r1[1]~1_combout\ & 
-- (\u_banco_reg|REG3|registro\(15)))) ) ) ) # ( !\u_banco_reg|REG2|registro\(15) & ( \u_banco_reg|REG0|registro\(15) & ( (!\s_reg_r1[1]~1_combout\ & (((!\s_reg_r1[0]~0_combout\) # (\u_banco_reg|REG1|registro\(15))))) # (\s_reg_r1[1]~1_combout\ & 
-- (\u_banco_reg|REG3|registro\(15) & ((\s_reg_r1[0]~0_combout\)))) ) ) ) # ( \u_banco_reg|REG2|registro\(15) & ( !\u_banco_reg|REG0|registro\(15) & ( (!\s_reg_r1[1]~1_combout\ & (((\u_banco_reg|REG1|registro\(15) & \s_reg_r1[0]~0_combout\)))) # 
-- (\s_reg_r1[1]~1_combout\ & (((!\s_reg_r1[0]~0_combout\)) # (\u_banco_reg|REG3|registro\(15)))) ) ) ) # ( !\u_banco_reg|REG2|registro\(15) & ( !\u_banco_reg|REG0|registro\(15) & ( (\s_reg_r1[0]~0_combout\ & ((!\s_reg_r1[1]~1_combout\ & 
-- ((\u_banco_reg|REG1|registro\(15)))) # (\s_reg_r1[1]~1_combout\ & (\u_banco_reg|REG3|registro\(15))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110101000011110011010111110000001101011111111100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|REG3|ALT_INV_registro\(15),
	datab => \u_banco_reg|REG1|ALT_INV_registro\(15),
	datac => \ALT_INV_s_reg_r1[1]~1_combout\,
	datad => \ALT_INV_s_reg_r1[0]~0_combout\,
	datae => \u_banco_reg|REG2|ALT_INV_registro\(15),
	dataf => \u_banco_reg|REG0|ALT_INV_registro\(15),
	combout => \u_banco_reg|data_r1[15]~32_combout\);

-- Location: LABCELL_X35_Y7_N36
\u_banco_reg|data_r1[15]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_banco_reg|data_r1[15]~33_combout\ = ( \u_banco_reg|REG4|registro\(15) & ( \u_banco_reg|data_r1[15]~32_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\) # ((\u_banco_reg|REG5|registro\(15) & !\u_banco_reg|data_r1[15]~2_combout\)) ) ) ) # ( 
-- !\u_banco_reg|REG4|registro\(15) & ( \u_banco_reg|data_r1[15]~32_combout\ & ( (!\u_banco_reg|data_r1[15]~2_combout\ & ((!\u_banco_reg|data_r1[15]~1_combout\) # (\u_banco_reg|REG5|registro\(15)))) ) ) ) # ( \u_banco_reg|REG4|registro\(15) & ( 
-- !\u_banco_reg|data_r1[15]~32_combout\ & ( (!\u_banco_reg|data_r1[15]~1_combout\ & ((\u_banco_reg|data_r1[15]~2_combout\))) # (\u_banco_reg|data_r1[15]~1_combout\ & (\u_banco_reg|REG5|registro\(15) & !\u_banco_reg|data_r1[15]~2_combout\)) ) ) ) # ( 
-- !\u_banco_reg|REG4|registro\(15) & ( !\u_banco_reg|data_r1[15]~32_combout\ & ( (\u_banco_reg|REG5|registro\(15) & (\u_banco_reg|data_r1[15]~1_combout\ & !\u_banco_reg|data_r1[15]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000111111000011110011000000001111001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_banco_reg|REG5|ALT_INV_registro\(15),
	datac => \u_banco_reg|ALT_INV_data_r1[15]~1_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[15]~2_combout\,
	datae => \u_banco_reg|REG4|ALT_INV_registro\(15),
	dataf => \u_banco_reg|ALT_INV_data_r1[15]~32_combout\,
	combout => \u_banco_reg|data_r1[15]~33_combout\);

-- Location: LABCELL_X36_Y5_N54
\u_ula|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~61_sumout\ = SUM(( !\u_mux_ula_b|data_out[15]~36_combout\ ) + ( \u_banco_reg|data_r1[15]~33_combout\ ) + ( \u_ula|Add1~58\ ))
-- \u_ula|Add1~62\ = CARRY(( !\u_mux_ula_b|data_out[15]~36_combout\ ) + ( \u_banco_reg|data_r1[15]~33_combout\ ) + ( \u_ula|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_banco_reg|ALT_INV_data_r1[15]~33_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[15]~36_combout\,
	cin => \u_ula|Add1~58\,
	sumout => \u_ula|Add1~61_sumout\,
	cout => \u_ula|Add1~62\);

-- Location: LABCELL_X35_Y5_N45
\u_ula|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~61_sumout\ = SUM(( \u_banco_reg|data_r1[15]~33_combout\ ) + ( \u_mux_ula_b|data_out[15]~36_combout\ ) + ( \u_ula|Add0~58\ ))
-- \u_ula|Add0~62\ = CARRY(( \u_banco_reg|data_r1[15]~33_combout\ ) + ( \u_mux_ula_b|data_out[15]~36_combout\ ) + ( \u_ula|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[15]~33_combout\,
	dataf => \u_mux_ula_b|ALT_INV_data_out[15]~36_combout\,
	cin => \u_ula|Add0~58\,
	sumout => \u_ula|Add0~61_sumout\,
	cout => \u_ula|Add0~62\);

-- Location: LABCELL_X35_Y7_N12
\u_ula|flag_n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|flag_n~1_combout\ = ( \u_banco_reg|data_r1[15]~33_combout\ & ( \u_ula|Add0~61_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_banco_reg|data_r1[15]~33_combout\ & ( \u_ula|Add0~61_sumout\ & ( 
-- (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & \u_mux_ula_b|data_out[15]~36_combout\)) ) ) ) # ( \u_banco_reg|data_r1[15]~33_combout\ & ( !\u_ula|Add0~61_sumout\ & ( (\u_uc|Equal10~0_combout\ & \u_ula|flag_c~0_combout\) ) ) ) # ( 
-- !\u_banco_reg|data_r1[15]~33_combout\ & ( !\u_ula|Add0~61_sumout\ & ( (\u_uc|Equal10~0_combout\ & (\u_ula|flag_c~0_combout\ & \u_mux_ula_b|data_out[15]~36_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110000001111110000111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[15]~36_combout\,
	datae => \u_banco_reg|ALT_INV_data_r1[15]~33_combout\,
	dataf => \u_ula|ALT_INV_Add0~61_sumout\,
	combout => \u_ula|flag_n~1_combout\);

-- Location: LABCELL_X35_Y7_N48
\u_mux_write|data_out[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_write|data_out[15]~15_combout\ = ( \u_ula|Add1~61_sumout\ & ( \u_ula|flag_n~1_combout\ & ( (!\u_uc|Equal6~0_combout\) # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) ) # ( !\u_ula|Add1~61_sumout\ & ( \u_ula|flag_n~1_combout\ & ( (!\u_uc|Equal6~0_combout\) 
-- # (\u_rom|dado_out[7]~DUPLICATE_q\) ) ) ) # ( \u_ula|Add1~61_sumout\ & ( !\u_ula|flag_n~1_combout\ & ( (!\u_uc|Equal6~0_combout\ & (\u_ula|saida[0]~19_combout\)) # (\u_uc|Equal6~0_combout\ & ((\u_rom|dado_out[7]~DUPLICATE_q\))) ) ) ) # ( 
-- !\u_ula|Add1~61_sumout\ & ( !\u_ula|flag_n~1_combout\ & ( (\u_rom|dado_out[7]~DUPLICATE_q\ & \u_uc|Equal6~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011010100110101001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[0]~19_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_uc|ALT_INV_Equal6~0_combout\,
	datae => \u_ula|ALT_INV_Add1~61_sumout\,
	dataf => \u_ula|ALT_INV_flag_n~1_combout\,
	combout => \u_mux_write|data_out[15]~15_combout\);

-- Location: FF_X35_Y7_N50
\u_banco_reg|REG5|registro[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_mux_write|data_out[15]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG5|registro\(15));

-- Location: MLABCELL_X34_Y7_N21
\u_mux_ula_b|data_out[15]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[15]~34_combout\ = ( \u_rom|dado_out\(8) & ( \u_banco_reg|REG1|registro\(15) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\ & ((\u_banco_reg|REG4|registro\(15)))) # (\u_rom|dado_out[4]~DUPLICATE_q\ & (\u_banco_reg|REG5|registro\(15))) ) ) ) # 
-- ( !\u_rom|dado_out\(8) & ( \u_banco_reg|REG1|registro\(15) & ( (\u_banco_reg|REG0|registro\(15)) # (\u_rom|dado_out[4]~DUPLICATE_q\) ) ) ) # ( \u_rom|dado_out\(8) & ( !\u_banco_reg|REG1|registro\(15) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\ & 
-- ((\u_banco_reg|REG4|registro\(15)))) # (\u_rom|dado_out[4]~DUPLICATE_q\ & (\u_banco_reg|REG5|registro\(15))) ) ) ) # ( !\u_rom|dado_out\(8) & ( !\u_banco_reg|REG1|registro\(15) & ( (!\u_rom|dado_out[4]~DUPLICATE_q\ & \u_banco_reg|REG0|registro\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000110110001101101010101111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[4]~DUPLICATE_q\,
	datab => \u_banco_reg|REG5|ALT_INV_registro\(15),
	datac => \u_banco_reg|REG4|ALT_INV_registro\(15),
	datad => \u_banco_reg|REG0|ALT_INV_registro\(15),
	datae => \u_rom|ALT_INV_dado_out\(8),
	dataf => \u_banco_reg|REG1|ALT_INV_registro\(15),
	combout => \u_mux_ula_b|data_out[15]~34_combout\);

-- Location: MLABCELL_X34_Y7_N48
\u_mux_ula_b|data_out[15]~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_mux_ula_b|data_out[15]~36_combout\ = ( !\u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & (\u_mux_ula_b|data_out[15]~34_combout\)) # (\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- ((\u_banco_reg|REG2|registro\(15))))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) ) # ( \u_rom|dado_out\(4) & ( (!\u_uc|Equal8~0_combout\ & (!\u_mux_ula_b|data_out[1]~0_combout\ & ((!\u_rom|dado_out[7]~DUPLICATE_q\ & 
-- (\u_mux_ula_b|data_out[15]~34_combout\)) # (\u_rom|dado_out[7]~DUPLICATE_q\ & ((\u_banco_reg|REG3|registro\(15))))))) # (\u_uc|Equal8~0_combout\ & (((\u_rom|dado_out[7]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0100011100000000010001110000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_mux_ula_b|ALT_INV_data_out[15]~34_combout\,
	datab => \u_rom|ALT_INV_dado_out[7]~DUPLICATE_q\,
	datac => \u_banco_reg|REG3|ALT_INV_registro\(15),
	datad => \u_mux_ula_b|ALT_INV_data_out[1]~0_combout\,
	datae => \u_rom|ALT_INV_dado_out\(4),
	dataf => \u_uc|ALT_INV_Equal8~0_combout\,
	datag => \u_banco_reg|REG2|ALT_INV_registro\(15),
	combout => \u_mux_ula_b|data_out[15]~36_combout\);

-- Location: MLABCELL_X39_Y5_N48
\u_ula|flag_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|flag_n~0_combout\ = ( \u_ula|Add0~61_sumout\ & ( \u_ula|Add1~61_sumout\ & ( (!\u_uc|Equal10~0_combout\) # (((!\u_ula|flag_c~0_combout\) # (\u_banco_reg|data_r1[15]~33_combout\)) # (\u_mux_ula_b|data_out[15]~36_combout\)) ) ) ) # ( 
-- !\u_ula|Add0~61_sumout\ & ( \u_ula|Add1~61_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\) # ((\u_banco_reg|data_r1[15]~33_combout\) # (\u_mux_ula_b|data_out[15]~36_combout\)))) ) ) ) # ( \u_ula|Add0~61_sumout\ & ( 
-- !\u_ula|Add1~61_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[15]~33_combout\) # (\u_mux_ula_b|data_out[15]~36_combout\)))) ) ) ) # ( !\u_ula|Add0~61_sumout\ & ( !\u_ula|Add1~61_sumout\ & ( 
-- (\u_uc|Equal10~0_combout\ & (\u_ula|flag_c~0_combout\ & ((\u_banco_reg|data_r1[15]~33_combout\) # (\u_mux_ula_b|data_out[15]~36_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010101111111110001010100000000101111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal10~0_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[15]~36_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[15]~33_combout\,
	datad => \u_ula|ALT_INV_flag_c~0_combout\,
	datae => \u_ula|ALT_INV_Add0~61_sumout\,
	dataf => \u_ula|ALT_INV_Add1~61_sumout\,
	combout => \u_ula|flag_n~0_combout\);

-- Location: LABCELL_X37_Y5_N18
\u_ula|saida[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[11]~15_combout\ = ( \u_ula|Add1~45_sumout\ & ( \u_ula|Add0~45_sumout\ & ( (((!\u_ula|flag_c~0_combout\) # (!\u_uc|Equal10~0_combout\)) # (\u_mux_ula_b|data_out[11]~52_combout\)) # (\u_banco_reg|data_r1[11]~25_combout\) ) ) ) # ( 
-- !\u_ula|Add1~45_sumout\ & ( \u_ula|Add0~45_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[11]~52_combout\) # (\u_banco_reg|data_r1[11]~25_combout\)))) ) ) ) # ( \u_ula|Add1~45_sumout\ & ( 
-- !\u_ula|Add0~45_sumout\ & ( (\u_ula|flag_c~0_combout\ & (((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[11]~52_combout\)) # (\u_banco_reg|data_r1[11]~25_combout\))) ) ) ) # ( !\u_ula|Add1~45_sumout\ & ( !\u_ula|Add0~45_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[11]~52_combout\) # (\u_banco_reg|data_r1[11]~25_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000111000011110000011111110000111101111111111111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[11]~25_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[11]~52_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_ula|ALT_INV_Add1~45_sumout\,
	dataf => \u_ula|ALT_INV_Add0~45_sumout\,
	combout => \u_ula|saida[11]~15_combout\);

-- Location: LABCELL_X37_Y5_N12
\u_ula|saida[5]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[5]~9_combout\ = ( \u_ula|Add0~21_sumout\ & ( \u_ula|Add1~21_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\) # ((\u_banco_reg|data_r1[5]~13_combout\) # (\u_mux_ula_b|data_out[5]~16_combout\))) ) ) ) # ( 
-- !\u_ula|Add0~21_sumout\ & ( \u_ula|Add1~21_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\) # ((\u_banco_reg|data_r1[5]~13_combout\) # (\u_mux_ula_b|data_out[5]~16_combout\)))) ) ) ) # ( \u_ula|Add0~21_sumout\ & ( 
-- !\u_ula|Add1~21_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[5]~13_combout\) # (\u_mux_ula_b|data_out[5]~16_combout\)))) ) ) ) # ( !\u_ula|Add0~21_sumout\ & ( !\u_ula|Add1~21_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[5]~13_combout\) # (\u_mux_ula_b|data_out[5]~16_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001101010111011101101000101010101011110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_mux_ula_b|ALT_INV_data_out[5]~16_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[5]~13_combout\,
	datae => \u_ula|ALT_INV_Add0~21_sumout\,
	dataf => \u_ula|ALT_INV_Add1~21_sumout\,
	combout => \u_ula|saida[5]~9_combout\);

-- Location: LABCELL_X37_Y5_N54
\u_ula|Equal4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Equal4~1_combout\ = ( !\u_ula|saida[0]~1_combout\ & ( \u_ula|Add0~17_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\ & ((!\u_ula|Add1~17_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_ula|saida[4]~30_combout\)))) ) ) ) # ( 
-- !\u_ula|saida[0]~1_combout\ & ( !\u_ula|Add0~17_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\ & ((!\u_ula|Add1~17_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_ula|saida[4]~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101010111011000000000000000001010000000100010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_ula|ALT_INV_saida[4]~30_combout\,
	datac => \u_ula|ALT_INV_Add1~17_sumout\,
	datad => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_ula|ALT_INV_saida[0]~1_combout\,
	dataf => \u_ula|ALT_INV_Add0~17_sumout\,
	combout => \u_ula|Equal4~1_combout\);

-- Location: LABCELL_X37_Y5_N6
\u_ula|saida[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[6]~10_combout\ = ( \u_ula|Add0~25_sumout\ & ( \u_banco_reg|data_r1[6]~15_combout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\) # (\u_ula|Add1~25_sumout\)) ) ) ) # ( !\u_ula|Add0~25_sumout\ & ( 
-- \u_banco_reg|data_r1[6]~15_combout\ & ( (\u_ula|flag_c~0_combout\ & ((\u_uc|Equal10~0_combout\) # (\u_ula|Add1~25_sumout\))) ) ) ) # ( \u_ula|Add0~25_sumout\ & ( !\u_banco_reg|data_r1[6]~15_combout\ & ( (!\u_ula|flag_c~0_combout\) # 
-- ((!\u_uc|Equal10~0_combout\ & ((\u_ula|Add1~25_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_mux_ula_b|data_out[6]~19_combout\))) ) ) ) # ( !\u_ula|Add0~25_sumout\ & ( !\u_banco_reg|data_r1[6]~15_combout\ & ( (\u_ula|flag_c~0_combout\ & 
-- ((!\u_uc|Equal10~0_combout\ & ((\u_ula|Add1~25_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_mux_ula_b|data_out[6]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001101011111011101100000101010101011010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[6]~19_combout\,
	datac => \u_ula|ALT_INV_Add1~25_sumout\,
	datad => \u_uc|ALT_INV_Equal10~0_combout\,
	datae => \u_ula|ALT_INV_Add0~25_sumout\,
	dataf => \u_banco_reg|ALT_INV_data_r1[6]~15_combout\,
	combout => \u_ula|saida[6]~10_combout\);

-- Location: LABCELL_X37_Y5_N30
\u_ula|Equal4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Equal4~2_combout\ = ( !\u_ula|saida[2]~5_combout\ & ( !\u_ula|saida[1]~3_combout\ & ( (!\u_ula|saida[11]~15_combout\ & (!\u_ula|saida[5]~9_combout\ & (\u_ula|Equal4~1_combout\ & !\u_ula|saida[6]~10_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[11]~15_combout\,
	datab => \u_ula|ALT_INV_saida[5]~9_combout\,
	datac => \u_ula|ALT_INV_Equal4~1_combout\,
	datad => \u_ula|ALT_INV_saida[6]~10_combout\,
	datae => \u_ula|ALT_INV_saida[2]~5_combout\,
	dataf => \u_ula|ALT_INV_saida[1]~3_combout\,
	combout => \u_ula|Equal4~2_combout\);

-- Location: LABCELL_X36_Y6_N15
\u_ula|saida[12]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[12]~16_combout\ = ( \u_ula|Add0~49_sumout\ & ( \u_ula|Add1~49_sumout\ & ( ((!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[12]~48_combout\))) # (\u_banco_reg|data_r1[12]~27_combout\) ) ) ) # ( 
-- !\u_ula|Add0~49_sumout\ & ( \u_ula|Add1~49_sumout\ & ( (\u_ula|flag_c~0_combout\ & (((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[12]~48_combout\)) # (\u_banco_reg|data_r1[12]~27_combout\))) ) ) ) # ( \u_ula|Add0~49_sumout\ & ( 
-- !\u_ula|Add1~49_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[12]~48_combout\) # (\u_banco_reg|data_r1[12]~27_combout\)))) ) ) ) # ( !\u_ula|Add0~49_sumout\ & ( !\u_ula|Add1~49_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[12]~48_combout\) # (\u_banco_reg|data_r1[12]~27_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011110011011100111100110001001100111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[12]~27_combout\,
	datab => \u_ula|ALT_INV_flag_c~0_combout\,
	datac => \u_uc|ALT_INV_Equal10~0_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[12]~48_combout\,
	datae => \u_ula|ALT_INV_Add0~49_sumout\,
	dataf => \u_ula|ALT_INV_Add1~49_sumout\,
	combout => \u_ula|saida[12]~16_combout\);

-- Location: LABCELL_X37_Y5_N48
\u_ula|saida[8]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[8]~12_combout\ = ( \u_mux_ula_b|data_out[8]~25_combout\ & ( \u_ula|Add0~33_sumout\ & ( ((!\u_ula|flag_c~0_combout\) # (\u_ula|Add1~33_sumout\)) # (\u_uc|Equal10~0_combout\) ) ) ) # ( !\u_mux_ula_b|data_out[8]~25_combout\ & ( 
-- \u_ula|Add0~33_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\ & ((\u_ula|Add1~33_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_banco_reg|data_r1[8]~19_combout\))) ) ) ) # ( \u_mux_ula_b|data_out[8]~25_combout\ & ( 
-- !\u_ula|Add0~33_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((\u_ula|Add1~33_sumout\) # (\u_uc|Equal10~0_combout\))) ) ) ) # ( !\u_mux_ula_b|data_out[8]~25_combout\ & ( !\u_ula|Add0~33_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\ & 
-- ((\u_ula|Add1~33_sumout\))) # (\u_uc|Equal10~0_combout\ & (\u_banco_reg|data_r1[8]~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000110000111111110001111111011111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[8]~19_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_ula|ALT_INV_Add1~33_sumout\,
	datae => \u_mux_ula_b|ALT_INV_data_out[8]~25_combout\,
	dataf => \u_ula|ALT_INV_Add0~33_sumout\,
	combout => \u_ula|saida[8]~12_combout\);

-- Location: MLABCELL_X34_Y5_N24
\u_ula|saida[7]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[7]~11_combout\ = ( \u_ula|Add0~29_sumout\ & ( \u_ula|Add1~29_sumout\ & ( ((!\u_uc|Equal10~0_combout\) # ((!\u_ula|flag_c~0_combout\) # (\u_mux_ula_b|data_out[7]~22_combout\))) # (\u_banco_reg|data_r1[7]~17_combout\) ) ) ) # ( 
-- !\u_ula|Add0~29_sumout\ & ( \u_ula|Add1~29_sumout\ & ( (\u_ula|flag_c~0_combout\ & (((!\u_uc|Equal10~0_combout\) # (\u_mux_ula_b|data_out[7]~22_combout\)) # (\u_banco_reg|data_r1[7]~17_combout\))) ) ) ) # ( \u_ula|Add0~29_sumout\ & ( 
-- !\u_ula|Add1~29_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[7]~22_combout\) # (\u_banco_reg|data_r1[7]~17_combout\)))) ) ) ) # ( !\u_ula|Add0~29_sumout\ & ( !\u_ula|Add1~29_sumout\ & ( 
-- (\u_uc|Equal10~0_combout\ & (\u_ula|flag_c~0_combout\ & ((\u_mux_ula_b|data_out[7]~22_combout\) # (\u_banco_reg|data_r1[7]~17_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000011111100011111001100001101000011111111110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_banco_reg|ALT_INV_data_r1[7]~17_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[7]~22_combout\,
	datae => \u_ula|ALT_INV_Add0~29_sumout\,
	dataf => \u_ula|ALT_INV_Add1~29_sumout\,
	combout => \u_ula|saida[7]~11_combout\);

-- Location: LABCELL_X37_Y5_N36
\u_ula|saida[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[9]~13_combout\ = ( \u_ula|Add0~37_sumout\ & ( \u_ula|Add1~37_sumout\ & ( (!\u_uc|Equal10~0_combout\) # (((!\u_ula|flag_c~0_combout\) # (\u_banco_reg|data_r1[9]~21_combout\)) # (\u_mux_ula_b|data_out[9]~28_combout\)) ) ) ) # ( 
-- !\u_ula|Add0~37_sumout\ & ( \u_ula|Add1~37_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\) # ((\u_banco_reg|data_r1[9]~21_combout\) # (\u_mux_ula_b|data_out[9]~28_combout\)))) ) ) ) # ( \u_ula|Add0~37_sumout\ & ( 
-- !\u_ula|Add1~37_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_banco_reg|data_r1[9]~21_combout\) # (\u_mux_ula_b|data_out[9]~28_combout\)))) ) ) ) # ( !\u_ula|Add0~37_sumout\ & ( !\u_ula|Add1~37_sumout\ & ( 
-- (\u_uc|Equal10~0_combout\ & (\u_ula|flag_c~0_combout\ & ((\u_banco_reg|data_r1[9]~21_combout\) # (\u_mux_ula_b|data_out[9]~28_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000101111100011111010100001011000011111111101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_Equal10~0_combout\,
	datab => \u_mux_ula_b|ALT_INV_data_out[9]~28_combout\,
	datac => \u_ula|ALT_INV_flag_c~0_combout\,
	datad => \u_banco_reg|ALT_INV_data_r1[9]~21_combout\,
	datae => \u_ula|ALT_INV_Add0~37_sumout\,
	dataf => \u_ula|ALT_INV_Add1~37_sumout\,
	combout => \u_ula|saida[9]~13_combout\);

-- Location: LABCELL_X36_Y6_N48
\u_ula|saida[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|saida[10]~14_combout\ = ( \u_ula|Add0~41_sumout\ & ( \u_ula|Add1~41_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((!\u_uc|Equal10~0_combout\) # ((\u_mux_ula_b|data_out[10]~56_combout\) # (\u_banco_reg|data_r1[10]~23_combout\))) ) ) ) # ( 
-- !\u_ula|Add0~41_sumout\ & ( \u_ula|Add1~41_sumout\ & ( (\u_ula|flag_c~0_combout\ & ((!\u_uc|Equal10~0_combout\) # ((\u_mux_ula_b|data_out[10]~56_combout\) # (\u_banco_reg|data_r1[10]~23_combout\)))) ) ) ) # ( \u_ula|Add0~41_sumout\ & ( 
-- !\u_ula|Add1~41_sumout\ & ( (!\u_ula|flag_c~0_combout\) # ((\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[10]~56_combout\) # (\u_banco_reg|data_r1[10]~23_combout\)))) ) ) ) # ( !\u_ula|Add0~41_sumout\ & ( !\u_ula|Add1~41_sumout\ & ( 
-- (\u_ula|flag_c~0_combout\ & (\u_uc|Equal10~0_combout\ & ((\u_mux_ula_b|data_out[10]~56_combout\) # (\u_banco_reg|data_r1[10]~23_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010001101010111011101101000101010101011110111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_flag_c~0_combout\,
	datab => \u_uc|ALT_INV_Equal10~0_combout\,
	datac => \u_banco_reg|ALT_INV_data_r1[10]~23_combout\,
	datad => \u_mux_ula_b|ALT_INV_data_out[10]~56_combout\,
	datae => \u_ula|ALT_INV_Add0~41_sumout\,
	dataf => \u_ula|ALT_INV_Add1~41_sumout\,
	combout => \u_ula|saida[10]~14_combout\);

-- Location: LABCELL_X37_Y5_N24
\u_ula|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Equal4~0_combout\ = ( !\u_ula|saida[9]~13_combout\ & ( !\u_ula|saida[10]~14_combout\ & ( (!\u_ula|saida[3]~7_combout\ & (!\u_ula|saida[8]~12_combout\ & !\u_ula|saida[7]~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[3]~7_combout\,
	datac => \u_ula|ALT_INV_saida[8]~12_combout\,
	datad => \u_ula|ALT_INV_saida[7]~11_combout\,
	datae => \u_ula|ALT_INV_saida[9]~13_combout\,
	dataf => \u_ula|ALT_INV_saida[10]~14_combout\,
	combout => \u_ula|Equal4~0_combout\);

-- Location: LABCELL_X37_Y5_N42
\u_ula|Equal4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Equal4~3_combout\ = ( !\u_ula|saida[12]~16_combout\ & ( \u_ula|Equal4~0_combout\ & ( (!\u_ula|saida[13]~17_combout\ & (!\u_ula|saida[14]~18_combout\ & (!\u_ula|flag_n~0_combout\ & \u_ula|Equal4~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_ula|ALT_INV_saida[13]~17_combout\,
	datab => \u_ula|ALT_INV_saida[14]~18_combout\,
	datac => \u_ula|ALT_INV_flag_n~0_combout\,
	datad => \u_ula|ALT_INV_Equal4~2_combout\,
	datae => \u_ula|ALT_INV_saida[12]~16_combout\,
	dataf => \u_ula|ALT_INV_Equal4~0_combout\,
	combout => \u_ula|Equal4~3_combout\);

-- Location: LABCELL_X37_Y4_N12
\u_uc|wr_flags~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|wr_flags~0_combout\ = ( \u_rom|dado_out\(13) & ( !\u_rom|dado_out\(15) & ( (\u_uc|u_maq|estado_s\(0) & (!\u_rom|dado_out\(14) & !\u_uc|u_maq|estado_s\(1))) ) ) ) # ( !\u_rom|dado_out\(13) & ( !\u_rom|dado_out\(15) & ( 
-- (!\u_rom|dado_out[12]~DUPLICATE_q\ & (\u_uc|u_maq|estado_s\(0) & (\u_rom|dado_out\(14) & !\u_uc|u_maq|estado_s\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datab => \u_uc|u_maq|ALT_INV_estado_s\(0),
	datac => \u_rom|ALT_INV_dado_out\(14),
	datad => \u_uc|u_maq|ALT_INV_estado_s\(1),
	datae => \u_rom|ALT_INV_dado_out\(13),
	dataf => \u_rom|ALT_INV_dado_out\(15),
	combout => \u_uc|wr_flags~0_combout\);

-- Location: FF_X37_Y5_N43
\u_uc|reg_flag_z\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_ula|Equal4~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|wr_flags~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uc|reg_flag_z~q\);

-- Location: LABCELL_X35_Y5_N48
\u_ula|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add0~65_sumout\ = SUM(( GND ) + ( GND ) + ( \u_ula|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u_ula|Add0~62\,
	sumout => \u_ula|Add0~65_sumout\);

-- Location: LABCELL_X36_Y5_N57
\u_ula|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|Add1~69_sumout\ = SUM(( VCC ) + ( GND ) + ( \u_ula|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \u_ula|Add1~62\,
	sumout => \u_ula|Add1~69_sumout\);

-- Location: MLABCELL_X39_Y5_N33
\u_ula|flag_c~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_ula|flag_c~1_combout\ = ( \u_ula|Add0~65_sumout\ & ( \u_ula|Add1~69_sumout\ & ( (!\u_ula|flag_c~0_combout\) # (!\u_rom|dado_out[12]~DUPLICATE_q\) ) ) ) # ( !\u_ula|Add0~65_sumout\ & ( \u_ula|Add1~69_sumout\ & ( (\u_ula|flag_c~0_combout\ & 
-- !\u_rom|dado_out[12]~DUPLICATE_q\) ) ) ) # ( \u_ula|Add0~65_sumout\ & ( !\u_ula|Add1~69_sumout\ & ( !\u_ula|flag_c~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110000001100001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_ula|ALT_INV_flag_c~0_combout\,
	datac => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datae => \u_ula|ALT_INV_Add0~65_sumout\,
	dataf => \u_ula|ALT_INV_Add1~69_sumout\,
	combout => \u_ula|flag_c~1_combout\);

-- Location: FF_X39_Y5_N34
\u_uc|reg_flag_c\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_ula|flag_c~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|wr_flags~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_uc|reg_flag_c~q\);

-- Location: LABCELL_X37_Y4_N24
\u_uc|pc_en~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u_uc|pc_en~0_combout\ = ( \u_rom|dado_out\(13) & ( \u_uc|reg_flag_c~q\ & ( (\u_rom|dado_out\(14) & (\u_rom|dado_out[12]~DUPLICATE_q\ & (!\u_rom|dado_out\(15) & !\u_uc|reg_flag_z~q\))) ) ) ) # ( !\u_rom|dado_out\(13) & ( \u_uc|reg_flag_c~q\ & ( 
-- (!\u_rom|dado_out\(14) & (!\u_rom|dado_out[12]~DUPLICATE_q\ & \u_rom|dado_out\(15))) ) ) ) # ( \u_rom|dado_out\(13) & ( !\u_uc|reg_flag_c~q\ & ( (\u_rom|dado_out\(14) & (\u_rom|dado_out[12]~DUPLICATE_q\ & (!\u_rom|dado_out\(15) & !\u_uc|reg_flag_z~q\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000001000000010000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_rom|ALT_INV_dado_out\(14),
	datab => \u_rom|ALT_INV_dado_out[12]~DUPLICATE_q\,
	datac => \u_rom|ALT_INV_dado_out\(15),
	datad => \u_uc|ALT_INV_reg_flag_z~q\,
	datae => \u_rom|ALT_INV_dado_out\(13),
	dataf => \u_uc|ALT_INV_reg_flag_c~q\,
	combout => \u_uc|pc_en~0_combout\);

-- Location: LABCELL_X37_Y4_N33
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !\u_uc|Equal2~0_combout\ & ( (\u_uc|pc_en~0_combout\ & (!\u_uc|u_maq|estado_s\(0) & \u_uc|u_maq|estado_s[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u_uc|ALT_INV_pc_en~0_combout\,
	datab => \u_uc|u_maq|ALT_INV_estado_s\(0),
	datad => \u_uc|u_maq|ALT_INV_estado_s[1]~DUPLICATE_q\,
	dataf => \u_uc|ALT_INV_Equal2~0_combout\,
	combout => \Equal1~0_combout\);

-- Location: MLABCELL_X39_Y6_N21
\s_pc_prox[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[0]~0_combout\ = ( \u_rom|dado_out\(0) & ( ((!\Equal0~0_combout\ & (\Add0~1_sumout\)) # (\Equal0~0_combout\ & ((\Add1~1_sumout\)))) # (\Equal1~0_combout\) ) ) # ( !\u_rom|dado_out\(0) & ( (!\Equal1~0_combout\ & ((!\Equal0~0_combout\ & 
-- (\Add0~1_sumout\)) # (\Equal0~0_combout\ & ((\Add1~1_sumout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~1_sumout\,
	datad => \ALT_INV_Add1~1_sumout\,
	dataf => \u_rom|ALT_INV_dado_out\(0),
	combout => \s_pc_prox[0]~0_combout\);

-- Location: FF_X39_Y6_N22
\u_pc|s_pc_at[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at[0]~DUPLICATE_q\);

-- Location: LABCELL_X42_Y6_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( \u_pc|s_pc_at\(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( \u_pc|s_pc_at\(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: LABCELL_X40_Y6_N21
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( \Add0~29_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( \Add0~29_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(7),
	datad => \ALT_INV_Add0~29_sumout\,
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: LABCELL_X40_Y6_N54
\s_pc_prox[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[7]~7_combout\ = ( \Add1~29_sumout\ & ( (!\Equal1~0_combout\ & (((\Add0~29_sumout\)) # (\Equal0~0_combout\))) # (\Equal1~0_combout\ & (((\u_rom|dado_out\(7))))) ) ) # ( !\Add1~29_sumout\ & ( (!\Equal1~0_combout\ & (!\Equal0~0_combout\ & 
-- ((\Add0~29_sumout\)))) # (\Equal1~0_combout\ & (((\u_rom|dado_out\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110100011000000111010001101010011111100110101001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datab => \u_rom|ALT_INV_dado_out\(7),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \ALT_INV_Add0~29_sumout\,
	dataf => \ALT_INV_Add1~29_sumout\,
	combout => \s_pc_prox[7]~7_combout\);

-- Location: FF_X40_Y6_N55
\u_pc|s_pc_at[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(7));

-- Location: LABCELL_X42_Y6_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( \u_pc|s_pc_at\(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( \u_pc|s_pc_at\(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: LABCELL_X40_Y6_N24
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( \Add0~33_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( \Add0~33_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(7),
	datad => \ALT_INV_Add0~33_sumout\,
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: LABCELL_X40_Y6_N51
\s_pc_prox[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[8]~8_combout\ = ( \Add1~33_sumout\ & ( (\Add0~33_sumout\) # (\Equal0~0_combout\) ) ) # ( !\Add1~33_sumout\ & ( (!\Equal0~0_combout\ & \Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_Add0~33_sumout\,
	dataf => \ALT_INV_Add1~33_sumout\,
	combout => \s_pc_prox[8]~8_combout\);

-- Location: FF_X40_Y6_N52
\u_pc|s_pc_at[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[8]~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(8));

-- Location: LABCELL_X42_Y6_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( \u_pc|s_pc_at\(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( \u_pc|s_pc_at\(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: LABCELL_X40_Y6_N27
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( \u_rom|dado_out\(7) ) + ( \Add0~37_sumout\ ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( \u_rom|dado_out\(7) ) + ( \Add0~37_sumout\ ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(7),
	datac => \ALT_INV_Add0~37_sumout\,
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: MLABCELL_X39_Y6_N48
\s_pc_prox[9]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[9]~9_combout\ = ( \Add1~37_sumout\ & ( \Add0~37_sumout\ ) ) # ( !\Add1~37_sumout\ & ( \Add0~37_sumout\ & ( !\Equal0~0_combout\ ) ) ) # ( \Add1~37_sumout\ & ( !\Add0~37_sumout\ & ( \Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001111001100110011001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Add1~37_sumout\,
	dataf => \ALT_INV_Add0~37_sumout\,
	combout => \s_pc_prox[9]~9_combout\);

-- Location: FF_X39_Y6_N49
\u_pc|s_pc_at[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[9]~9_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(9));

-- Location: LABCELL_X42_Y6_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( \u_pc|s_pc_at\(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( \u_pc|s_pc_at\(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: LABCELL_X40_Y6_N30
\Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~41_sumout\ = SUM(( \u_rom|dado_out\(7) ) + ( \Add0~41_sumout\ ) + ( \Add1~38\ ))
-- \Add1~42\ = CARRY(( \u_rom|dado_out\(7) ) + ( \Add0~41_sumout\ ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~41_sumout\,
	datad => \u_rom|ALT_INV_dado_out\(7),
	cin => \Add1~38\,
	sumout => \Add1~41_sumout\,
	cout => \Add1~42\);

-- Location: LABCELL_X40_Y6_N57
\s_pc_prox[10]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[10]~10_combout\ = ( \Add0~41_sumout\ & ( (!\Equal0~0_combout\) # (\Add1~41_sumout\) ) ) # ( !\Add0~41_sumout\ & ( (\Equal0~0_combout\ & \Add1~41_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add1~41_sumout\,
	dataf => \ALT_INV_Add0~41_sumout\,
	combout => \s_pc_prox[10]~10_combout\);

-- Location: FF_X40_Y6_N58
\u_pc|s_pc_at[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[10]~10_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(10));

-- Location: LABCELL_X42_Y6_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( \u_pc|s_pc_at\(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( \u_pc|s_pc_at\(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: LABCELL_X40_Y6_N33
\Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~45_sumout\ = SUM(( \Add0~45_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~42\ ))
-- \Add1~46\ = CARRY(( \Add0~45_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_rom|ALT_INV_dado_out\(7),
	datad => \ALT_INV_Add0~45_sumout\,
	cin => \Add1~42\,
	sumout => \Add1~45_sumout\,
	cout => \Add1~46\);

-- Location: MLABCELL_X39_Y6_N9
\s_pc_prox[11]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[11]~11_combout\ = ( \Add1~45_sumout\ & ( (\Add0~45_sumout\) # (\Equal0~0_combout\) ) ) # ( !\Add1~45_sumout\ & ( (!\Equal0~0_combout\ & \Add0~45_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add0~45_sumout\,
	dataf => \ALT_INV_Add1~45_sumout\,
	combout => \s_pc_prox[11]~11_combout\);

-- Location: FF_X39_Y6_N10
\u_pc|s_pc_at[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[11]~11_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(11));

-- Location: LABCELL_X42_Y6_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( \u_pc|s_pc_at\(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( \u_pc|s_pc_at\(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: LABCELL_X40_Y6_N36
\Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~49_sumout\ = SUM(( \Add0~49_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~46\ ))
-- \Add1~50\ = CARRY(( \Add0~49_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(7),
	datad => \ALT_INV_Add0~49_sumout\,
	cin => \Add1~46\,
	sumout => \Add1~49_sumout\,
	cout => \Add1~50\);

-- Location: LABCELL_X40_Y6_N48
\s_pc_prox[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[12]~12_combout\ = (!\Equal0~0_combout\ & ((\Add0~49_sumout\))) # (\Equal0~0_combout\ & (\Add1~49_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Add1~49_sumout\,
	datad => \ALT_INV_Add0~49_sumout\,
	combout => \s_pc_prox[12]~12_combout\);

-- Location: FF_X40_Y6_N49
\u_pc|s_pc_at[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[12]~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(12));

-- Location: LABCELL_X42_Y6_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( \u_pc|s_pc_at\(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( \u_pc|s_pc_at\(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u_pc|ALT_INV_s_pc_at\(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: LABCELL_X40_Y6_N39
\Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~53_sumout\ = SUM(( \Add0~53_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~50\ ))
-- \Add1~54\ = CARRY(( \Add0~53_sumout\ ) + ( \u_rom|dado_out\(7) ) + ( \Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u_rom|ALT_INV_dado_out\(7),
	datad => \ALT_INV_Add0~53_sumout\,
	cin => \Add1~50\,
	sumout => \Add1~53_sumout\,
	cout => \Add1~54\);

-- Location: MLABCELL_X39_Y6_N3
\s_pc_prox[13]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[13]~13_combout\ = ( \Add0~53_sumout\ & ( \Add1~53_sumout\ ) ) # ( !\Add0~53_sumout\ & ( \Add1~53_sumout\ & ( \Equal0~0_combout\ ) ) ) # ( \Add0~53_sumout\ & ( !\Add1~53_sumout\ & ( !\Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Add0~53_sumout\,
	dataf => \ALT_INV_Add1~53_sumout\,
	combout => \s_pc_prox[13]~13_combout\);

-- Location: FF_X39_Y6_N4
\u_pc|s_pc_at[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[13]~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(13));

-- Location: LABCELL_X42_Y6_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( \u_pc|s_pc_at\(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( \u_pc|s_pc_at\(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: LABCELL_X40_Y6_N42
\Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~57_sumout\ = SUM(( \u_rom|dado_out\(7) ) + ( \Add0~57_sumout\ ) + ( \Add1~54\ ))
-- \Add1~58\ = CARRY(( \u_rom|dado_out\(7) ) + ( \Add0~57_sumout\ ) + ( \Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~57_sumout\,
	datad => \u_rom|ALT_INV_dado_out\(7),
	cin => \Add1~54\,
	sumout => \Add1~57_sumout\,
	cout => \Add1~58\);

-- Location: MLABCELL_X39_Y6_N57
\s_pc_prox[14]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[14]~14_combout\ = ( \Add1~57_sumout\ & ( \Equal0~0_combout\ ) ) # ( \Add1~57_sumout\ & ( !\Equal0~0_combout\ & ( \Add0~57_sumout\ ) ) ) # ( !\Add1~57_sumout\ & ( !\Equal0~0_combout\ & ( \Add0~57_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add0~57_sumout\,
	datae => \ALT_INV_Add1~57_sumout\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \s_pc_prox[14]~14_combout\);

-- Location: FF_X39_Y6_N58
\u_pc|s_pc_at[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[14]~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(14));

-- Location: LABCELL_X42_Y6_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( \u_pc|s_pc_at\(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u_pc|ALT_INV_s_pc_at\(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: LABCELL_X40_Y6_N45
\Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~61_sumout\ = SUM(( \u_rom|dado_out\(7) ) + ( \Add0~61_sumout\ ) + ( \Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add0~61_sumout\,
	datac => \u_rom|ALT_INV_dado_out\(7),
	cin => \Add1~58\,
	sumout => \Add1~61_sumout\);

-- Location: MLABCELL_X39_Y6_N36
\s_pc_prox[15]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \s_pc_prox[15]~15_combout\ = ( \Add0~61_sumout\ & ( \Add1~61_sumout\ ) ) # ( !\Add0~61_sumout\ & ( \Add1~61_sumout\ & ( \Equal0~0_combout\ ) ) ) # ( \Add0~61_sumout\ & ( !\Add1~61_sumout\ & ( !\Equal0~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000110011001100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_Add0~61_sumout\,
	dataf => \ALT_INV_Add1~61_sumout\,
	combout => \s_pc_prox[15]~15_combout\);

-- Location: FF_X39_Y6_N37
\u_pc|s_pc_at[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \s_pc_prox[15]~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sclr => \Equal1~0_combout\,
	ena => \u_uc|pc_en~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_pc|s_pc_at\(15));

-- Location: FF_X37_Y4_N43
\u_banco_reg|REG0|registro[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[1]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[1]~DUPLICATE_q\);

-- Location: FF_X37_Y4_N55
\u_banco_reg|REG0|registro[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[2]~2_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[2]~DUPLICATE_q\);

-- Location: FF_X34_Y4_N28
\u_banco_reg|REG0|registro[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[7]~7_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro\(7));

-- Location: FF_X37_Y6_N7
\u_banco_reg|REG0|registro[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG0|registro[10]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG0|registro[10]~DUPLICATE_q\);

-- Location: FF_X36_Y4_N19
\u_banco_reg|REG1|registro[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG1|registro[2]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG1|registro\(2));

-- Location: FF_X35_Y4_N40
\u_banco_reg|REG4|registro[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[1]~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(1));

-- Location: FF_X35_Y4_N31
\u_banco_reg|REG4|registro[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[3]~3_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(3));

-- Location: FF_X35_Y7_N58
\u_banco_reg|REG4|registro[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \u_mux_write|data_out[6]~6_combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(6));

-- Location: FF_X35_Y3_N58
\u_banco_reg|REG4|registro[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \u_banco_reg|REG4|registro[11]~feeder_combout\,
	clrn => \ALT_INV_rst~input_o\,
	ena => \u_banco_reg|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_banco_reg|REG4|registro\(11));

-- Location: MLABCELL_X82_Y5_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


