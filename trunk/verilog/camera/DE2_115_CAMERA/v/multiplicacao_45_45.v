// megafunction wizard: %LPM_MULT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: lpm_mult 

// ============================================================
// File Name: multiplicacao_45_45.v
// Megafunction Name(s):
// 			lpm_mult
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 13.0.1 Build 232 06/12/2013 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2013 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module multiplicacao_45_45 (
	clock,
	dataa,
	datab,
	result);

	input	  clock;
	input	[45:0]  dataa;
	input	[45:0]  datab;
	output	[91:0]  result;

	wire [91:0] sub_wire0;
	wire [91:0] result = sub_wire0[91:0];

	lpm_mult	lpm_mult_component (
				.clock (clock),
				.dataa (dataa),
				.datab (datab),
				.result (sub_wire0),
				.aclr (1'b0),
				.clken (1'b1),
				.sum (1'b0));
	defparam
		lpm_mult_component.lpm_hint = "MAXIMIZE_SPEED=5",
		lpm_mult_component.lpm_pipeline = 1,
		lpm_mult_component.lpm_representation = "UNSIGNED",
		lpm_mult_component.lpm_type = "LPM_MULT",
		lpm_mult_component.lpm_widtha = 46,
		lpm_mult_component.lpm_widthb = 46,
		lpm_mult_component.lpm_widthp = 92;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: AutoSizeResult NUMERIC "1"
// Retrieval info: PRIVATE: B_isConstant NUMERIC "0"
// Retrieval info: PRIVATE: ConstantB NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone IV E"
// Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "1"
// Retrieval info: PRIVATE: Latency NUMERIC "1"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: SignedMult NUMERIC "0"
// Retrieval info: PRIVATE: USE_MULT NUMERIC "1"
// Retrieval info: PRIVATE: ValidConstant NUMERIC "0"
// Retrieval info: PRIVATE: WidthA NUMERIC "46"
// Retrieval info: PRIVATE: WidthB NUMERIC "46"
// Retrieval info: PRIVATE: WidthP NUMERIC "92"
// Retrieval info: PRIVATE: aclr NUMERIC "0"
// Retrieval info: PRIVATE: clken NUMERIC "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: PRIVATE: optimize NUMERIC "0"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_HINT STRING "MAXIMIZE_SPEED=5"
// Retrieval info: CONSTANT: LPM_PIPELINE NUMERIC "1"
// Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "UNSIGNED"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MULT"
// Retrieval info: CONSTANT: LPM_WIDTHA NUMERIC "46"
// Retrieval info: CONSTANT: LPM_WIDTHB NUMERIC "46"
// Retrieval info: CONSTANT: LPM_WIDTHP NUMERIC "92"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL "clock"
// Retrieval info: USED_PORT: dataa 0 0 46 0 INPUT NODEFVAL "dataa[45..0]"
// Retrieval info: USED_PORT: datab 0 0 46 0 INPUT NODEFVAL "datab[45..0]"
// Retrieval info: USED_PORT: result 0 0 92 0 OUTPUT NODEFVAL "result[91..0]"
// Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
// Retrieval info: CONNECT: @dataa 0 0 46 0 dataa 0 0 46 0
// Retrieval info: CONNECT: @datab 0 0 46 0 datab 0 0 46 0
// Retrieval info: CONNECT: result 0 0 92 0 @result 0 0 92 0
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL multiplicacao_45_45_bb.v FALSE
// Retrieval info: LIB_FILE: lpm
