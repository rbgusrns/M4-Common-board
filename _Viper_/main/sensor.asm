;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Fri Oct 25 23:31:49 2024                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_right_step+0,32
	.field  	10,32			; _right_step[0] @ 0
	.field  	9,32			; _right_step[1] @ 32
	.field  	5,32			; _right_step[2] @ 64
	.field  	6,32			; _right_step[3] @ 96
IR_1:	.set	8

	.sect	".cinit"
	.align	1
	.field  	-IR_2,16
	.field  	_sen_arr+0,32
	.field  	4,16			; _sen_arr[0] @ 0
	.field  	5,16			; _sen_arr[1] @ 16
	.field  	6,16			; _sen_arr[2] @ 32
	.field  	7,16			; _sen_arr[3] @ 48
	.field  	8,16			; _sen_arr[4] @ 64
	.field  	9,16			; _sen_arr[5] @ 80
	.field  	10,16			; _sen_arr[6] @ 96
	.field  	11,16			; _sen_arr[7] @ 112
IR_2:	.set	8

	.sect	".cinit"
	.align	1
	.field  	-IR_3,16
	.field  	_left_step+0,32
	.field  	36864,32			; _left_step[0] @ 0
	.field  	40960,32			; _left_step[1] @ 32
	.field  	24576,32			; _left_step[2] @ 64
	.field  	20480,32			; _left_step[3] @ 96
IR_3:	.set	8

	.sect	".cinit"
	.align	1
	.field  	-IR_4,16
	.field  	_adc_arr+0,32
	.field  	0,16			; _adc_arr[0] @ 0
	.field  	4369,16			; _adc_arr[1] @ 16
	.field  	8738,16			; _adc_arr[2] @ 32
	.field  	13107,16			; _adc_arr[3] @ 48
	.field  	17476,16			; _adc_arr[4] @ 64
	.field  	21845,16			; _adc_arr[5] @ 80
	.field  	26214,16			; _adc_arr[6] @ 96
	.field  	30583,16			; _adc_arr[7] @ 112
	.field  	34952,16			; _adc_arr[8] @ 128
	.field  	39321,16			; _adc_arr[9] @ 144
	.field  	43690,16			; _adc_arr[10] @ 160
	.field  	48059,16			; _adc_arr[11] @ 176
	.field  	52428,16			; _adc_arr[12] @ 192
	.field  	56797,16			; _adc_arr[13] @ 208
	.field  	61166,16			; _adc_arr[14] @ 224
	.field  	65535,16			; _adc_arr[15] @ 240
IR_4:	.set	16

	.sect	".cinit"
	.align	1
	.field  	-IR_5,16
	.field  	_state_table+0,32
	.field  	61440,16			; _state_table[0] @ 0
	.field  	61440,16			; _state_table[1] @ 16
	.field  	61440,16			; _state_table[2] @ 32
	.field  	61440,16			; _state_table[3] @ 48
	.field  	30720,16			; _state_table[4] @ 64
	.field  	15360,16			; _state_table[5] @ 80
	.field  	7680,16			; _state_table[6] @ 96
	.field  	3840,16			; _state_table[7] @ 112
	.field  	1920,16			; _state_table[8] @ 128
	.field  	960,16			; _state_table[9] @ 144
	.field  	480,16			; _state_table[10] @ 160
	.field  	240,16			; _state_table[11] @ 176
	.field  	120,16			; _state_table[12] @ 192
	.field  	60,16			; _state_table[13] @ 208
	.field  	30,16			; _state_table[14] @ 224
	.field  	15,16			; _state_table[15] @ 240
	.field  	15,16			; _state_table[16] @ 256
	.field  	15,16			; _state_table[17] @ 272
	.field  	15,16			; _state_table[18] @ 288
IR_5:	.set	19


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("L_Motor_ON"), DW_AT_symbol_name("_L_Motor_ON")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$96)
	.dwendtag DW$1


DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("move_to_end"), DW_AT_symbol_name("_move_to_end")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$99)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$99)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$3


DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("Motor_CalBaseMotionValue"), DW_AT_symbol_name("_Motor_CalBaseMotionValue")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$96)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("R_Motor_ON"), DW_AT_symbol_name("_R_Motor_ON")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$96)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$11


DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("second_info"), DW_AT_symbol_name("_second_info")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
	.dwendtag DW$14


DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$16


DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("read_mark_cnt_rom"), DW_AT_symbol_name("_read_mark_cnt_rom")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)

DW$19	.dwtag  DW_TAG_subprogram, DW_AT_name("maxmin_write_rom"), DW_AT_symbol_name("_maxmin_write_rom")
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("read_line_info_rom"), DW_AT_symbol_name("_read_line_info_rom")
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("g_Flag"), DW_AT_symbol_name("_g_Flag")
	.dwattr DW$21, DW_AT_type(*DW$T$198)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("g_u16turn_dist"), DW_AT_symbol_name("_g_u16turn_dist")
	.dwattr DW$22, DW_AT_type(*DW$T$22)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("g_u16pos_cnt"), DW_AT_symbol_name("_g_u16pos_cnt")
	.dwattr DW$23, DW_AT_type(*DW$T$22)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("U16_turnmark_cnt"), DW_AT_symbol_name("_U16_turnmark_cnt")
	.dwattr DW$24, DW_AT_type(*DW$T$125)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$25, DW_AT_type(*DW$T$10)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$26, DW_AT_type(*DW$T$10)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("g_fp32time"), DW_AT_symbol_name("_g_fp32time")
	.dwattr DW$27, DW_AT_type(*DW$T$148)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("g_i32_Time_index"), DW_AT_symbol_name("_g_i32_Time_index")
	.dwattr DW$28, DW_AT_type(*DW$T$25)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("g_q17_handle_acc"), DW_AT_symbol_name("_g_q17_handle_acc")
	.dwattr DW$29, DW_AT_type(*DW$T$19)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("adc_R"), DW_AT_symbol_name("_adc_R")
	.dwattr DW$30, DW_AT_type(*DW$T$12)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("adc_L"), DW_AT_symbol_name("_adc_L")
	.dwattr DW$31, DW_AT_type(*DW$T$12)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("g_q17_handle_dec"), DW_AT_symbol_name("_g_q17_handle_dec")
	.dwattr DW$32, DW_AT_type(*DW$T$19)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("g_q15cross_dist"), DW_AT_symbol_name("_g_q15cross_dist")
	.dwattr DW$33, DW_AT_type(*DW$T$23)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_L_index"), DW_AT_symbol_name("_g_u32_L_index")
	.dwattr DW$34, DW_AT_type(*DW$T$144)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
DW$35	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_R_index"), DW_AT_symbol_name("_g_u32_R_index")
	.dwattr DW$35, DW_AT_type(*DW$T$144)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)
DW$36	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_isr_cnt"), DW_AT_symbol_name("_g_int32_isr_cnt")
	.dwattr DW$36, DW_AT_type(*DW$T$21)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("g_int32total_cnt"), DW_AT_symbol_name("_g_int32total_cnt")
	.dwattr DW$37, DW_AT_type(*DW$T$144)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_copmare_cnt"), DW_AT_symbol_name("_g_int32_copmare_cnt")
	.dwattr DW$38, DW_AT_type(*DW$T$144)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_sen_cnt"), DW_AT_symbol_name("_g_int32_sen_cnt")
	.dwattr DW$39, DW_AT_type(*DW$T$144)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_END_ACC_targetval"), DW_AT_symbol_name("_g_u32_END_ACC_targetval")
	.dwattr DW$40, DW_AT_type(*DW$T$144)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_lineout_cnt"), DW_AT_symbol_name("_g_int32_lineout_cnt")
	.dwattr DW$41, DW_AT_type(*DW$T$144)
	.dwattr DW$41, DW_AT_declaration(0x01)
	.dwattr DW$41, DW_AT_external(0x01)

DW$42	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ17div"), DW_AT_symbol_name("__IQ17div")
	.dwattr DW$42, DW_AT_type(*DW$T$12)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$42

DW$45	.dwtag  DW_TAG_variable, DW_AT_name("g_shift"), DW_AT_symbol_name("_g_shift")
	.dwattr DW$45, DW_AT_type(*DW$T$196)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)

DW$46	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQmpy"), DW_AT_symbol_name("___IQmpy")
	.dwattr DW$46, DW_AT_type(*DW$T$12)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$48	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$46


DW$50	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ17toF"), DW_AT_symbol_name("__IQ17toF")
	.dwattr DW$50, DW_AT_type(*DW$T$16)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$50


DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$52, DW_AT_type(*DW$T$12)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$54	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$55	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$52


DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ7div"), DW_AT_symbol_name("__IQ7div")
	.dwattr DW$56, DW_AT_type(*DW$T$12)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$56


DW$59	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$59, DW_AT_type(*DW$T$3)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$61	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$62	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
	.dwendtag DW$59

	.global	_right_step
_right_step:	.usect	".ebss",8,1,1
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("right_step"), DW_AT_symbol_name("_right_step")
	.dwattr DW$63, DW_AT_location[DW_OP_addr _right_step]
	.dwattr DW$63, DW_AT_type(*DW$T$134)
	.dwattr DW$63, DW_AT_external(0x01)
	.global	_sen_arr
_sen_arr:	.usect	".ebss",8,1,0
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("sen_arr"), DW_AT_symbol_name("_sen_arr")
	.dwattr DW$64, DW_AT_location[DW_OP_addr _sen_arr]
	.dwattr DW$64, DW_AT_type(*DW$T$126)
	.dwattr DW$64, DW_AT_external(0x01)
	.global	_left_step
_left_step:	.usect	".ebss",8,1,1
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("left_step"), DW_AT_symbol_name("_left_step")
	.dwattr DW$65, DW_AT_location[DW_OP_addr _left_step]
	.dwattr DW$65, DW_AT_type(*DW$T$134)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$66, DW_AT_type(*DW$T$186)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("g_pos"), DW_AT_symbol_name("_g_pos")
	.dwattr DW$67, DW_AT_type(*DW$T$119)
	.dwattr DW$67, DW_AT_declaration(0x01)
	.dwattr DW$67, DW_AT_external(0x01)
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("g_lmark"), DW_AT_symbol_name("_g_lmark")
	.dwattr DW$68, DW_AT_type(*DW$T$113)
	.dwattr DW$68, DW_AT_declaration(0x01)
	.dwattr DW$68, DW_AT_external(0x01)
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("g_rmark"), DW_AT_symbol_name("_g_rmark")
	.dwattr DW$69, DW_AT_type(*DW$T$113)
	.dwattr DW$69, DW_AT_declaration(0x01)
	.dwattr DW$69, DW_AT_external(0x01)
	.global	_adc_arr
_adc_arr:	.usect	".ebss",16,1,0
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("adc_arr"), DW_AT_symbol_name("_adc_arr")
	.dwattr DW$70, DW_AT_location[DW_OP_addr _adc_arr]
	.dwattr DW$70, DW_AT_type(*DW$T$127)
	.dwattr DW$70, DW_AT_external(0x01)
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("AdcMirror"), DW_AT_symbol_name("_AdcMirror")
	.dwattr DW$71, DW_AT_type(*DW$T$183)
	.dwattr DW$71, DW_AT_declaration(0x01)
	.dwattr DW$71, DW_AT_external(0x01)
	.global	_state_table
_state_table:	.usect	".ebss",19,1,0
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("state_table"), DW_AT_symbol_name("_state_table")
	.dwattr DW$72, DW_AT_location[DW_OP_addr _state_table]
	.dwattr DW$72, DW_AT_type(*DW$T$128)
	.dwattr DW$72, DW_AT_external(0x01)
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("PieCtrlRegs"), DW_AT_symbol_name("_PieCtrlRegs")
	.dwattr DW$73, DW_AT_type(*DW$T$190)
	.dwattr DW$73, DW_AT_declaration(0x01)
	.dwattr DW$73, DW_AT_external(0x01)
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("AdcRegs"), DW_AT_symbol_name("_AdcRegs")
	.dwattr DW$74, DW_AT_type(*DW$T$181)
	.dwattr DW$74, DW_AT_declaration(0x01)
	.dwattr DW$74, DW_AT_external(0x01)
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$75, DW_AT_type(*DW$T$171)
	.dwattr DW$75, DW_AT_declaration(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("RMotor"), DW_AT_symbol_name("_RMotor")
	.dwattr DW$76, DW_AT_type(*DW$T$95)
	.dwattr DW$76, DW_AT_declaration(0x01)
	.dwattr DW$76, DW_AT_external(0x01)
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("LMotor"), DW_AT_symbol_name("_LMotor")
	.dwattr DW$77, DW_AT_type(*DW$T$95)
	.dwattr DW$77, DW_AT_declaration(0x01)
	.dwattr DW$77, DW_AT_external(0x01)
DW$78	.dwtag  DW_TAG_variable, DW_AT_name("g_sen"), DW_AT_symbol_name("_g_sen")
	.dwattr DW$78, DW_AT_type(*DW$T$193)
	.dwattr DW$78, DW_AT_declaration(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
DW$79	.dwtag  DW_TAG_variable, DW_AT_name("search_info"), DW_AT_symbol_name("_search_info")
	.dwattr DW$79, DW_AT_type(*DW$T$150)
	.dwattr DW$79, DW_AT_declaration(0x01)
	.dwattr DW$79, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI45210 C:\Users\rbgus\AppData\Local\Temp\TI4524 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI4522 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI4526 --object_file sensor.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_line_info

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("line_info"), DW_AT_symbol_name("_line_info")
	.dwattr DW$80, DW_AT_low_pc(_line_info)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("sensor.c")
	.dwattr DW$80, DW_AT_begin_line(0x276)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",631,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _line_info                    FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_line_info:
;*** 633	-----------------------    K$9 = &search_info[0];
;*** 633	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32L_dist = LMotor.iq15GoneDist>>15;
;*** 634	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32R_dist = RMotor.iq15GoneDist>>15;
;*** 635	-----------------------    K$9 = K$9;
;*** 635	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32dist = (K$9[(long)U16_turnmark_cnt]).int32L_dist+(K$9[(long)U16_turnmark_cnt]).int32R_dist>>1;
;*** 637	-----------------------    if ( p_mark ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _p_mark
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p_mark"), DW_AT_symbol_name("_p_mark")
	.dwattr DW$81, DW_AT_type(*DW$T$114)
	.dwattr DW$81, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to S$1
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("S$1"), DW_AT_symbol_name("S$1")
	.dwattr DW$82, DW_AT_type(*DW$T$12)
	.dwattr DW$82, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to _p_mark
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("p_mark"), DW_AT_symbol_name("_p_mark")
	.dwattr DW$83, DW_AT_type(*DW$T$153)
	.dwattr DW$83, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to K$9
DW$84	.dwtag  DW_TAG_variable, DW_AT_name("K$9"), DW_AT_symbol_name("K$9")
	.dwattr DW$84, DW_AT_type(*DW$T$152)
	.dwattr DW$84, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to K$9
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("K$9"), DW_AT_symbol_name("K$9")
	.dwattr DW$85, DW_AT_type(*DW$T$152)
	.dwattr DW$85, DW_AT_location[DW_OP_reg14]
	.dwpsn	"sensor.c",633,2
        MOVL      XAR5,#_search_info    ; |633| 
        MOVW      DP,#_U16_turnmark_cnt
        MOVL      XAR6,XAR5             ; |633| 
        MOV       T,#26                 ; |633| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |633| 
        MOVW      DP,#_LMotor+28
        ADDL      XAR6,ACC
        SETC      SXM
        MOVL      ACC,@_LMotor+28       ; |633| 
        SFR       ACC,15                ; |633| 
        MOVL      *+XAR6[4],ACC         ; |633| 
	.dwpsn	"sensor.c",634,2
        MOVL      XAR6,XAR5             ; |634| 
        MOVW      DP,#_U16_turnmark_cnt
        MOV       T,#26                 ; |634| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |634| 
        ADDL      XAR6,ACC
        MOVW      DP,#_RMotor+28
        MOVL      ACC,@_RMotor+28       ; |634| 
        SFR       ACC,15                ; |634| 
        MOVL      *+XAR6[6],ACC         ; |634| 
	.dwpsn	"sensor.c",635,2
        MOVL      XAR6,XAR5             ; |635| 
        MOVW      DP,#_U16_turnmark_cnt
        MOV       T,#26                 ; |635| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |635| 
        ADDL      XAR6,ACC
        MOVL      XAR7,*+XAR6[6]        ; |635| 
        MOVL      XAR6,XAR5             ; |635| 
        MOV       T,#26                 ; |635| 
        MPYXU     P,T,@_U16_turnmark_cnt ; |635| 
        MOVL      ACC,P                 ; |635| 
        ADDL      XAR6,ACC
        MOVL      ACC,XAR7              ; |635| 
        ADDL      ACC,*+XAR6[4]         ; |635| 
        SFR       ACC,1                 ; |635| 
        MOV       T,#26                 ; |635| 
        MOVL      XAR6,XAR5             ; |635| 
        MOVL      XAR7,ACC              ; |635| 
        MPYXU     P,T,@_U16_turnmark_cnt ; |635| 
        MOVL      ACC,P                 ; |635| 
        ADDL      XAR6,ACC
        MOVL      *+XAR6[0],XAR7        ; |635| 
	.dwpsn	"sensor.c",637,2
        MOVL      ACC,XAR4
        BF        L1,NEQ                ; |637| 
        ; branchcc occurs ; |637| 
;*** 637	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32turn_way = 8L;
	.dwpsn	"sensor.c",637,23
        MOVL      XAR6,XAR5             ; |637| 
        MOV       T,#26                 ; |637| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |637| 
        ADDL      XAR6,ACC
        MOVB      ACC,#8
        MOVL      *+XAR6[2],ACC         ; |637| 
L1:    
;***	-----------------------g3:
;*** 639	-----------------------    ++U16_turnmark_cnt;
;*** 641	-----------------------    (p_mark == &g_lmark) ? (S$1 = 16L) : (S$1 = 256L);
	.dwpsn	"sensor.c",639,2
        INC       @_U16_turnmark_cnt    ; |639| 
	.dwpsn	"sensor.c",641,2
        MOVL      XAR6,#_g_lmark        ; |641| 
        MOVL      ACC,XAR6              ; |641| 
        CMPL      ACC,XAR4              ; |641| 
        BF        L2,NEQ                ; |641| 
        ; branchcc occurs ; |641| 
        MOVB      XAR4,#16
        BF        L3,UNC                ; |641| 
        ; branch occurs ; |641| 
L2:    
        MOVL      XAR4,#256             ; |641| 
L3:    
;*** 641	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32turn_way = S$1;
;*** 643	-----------------------    if ( !U16_turnmark_cnt ) goto g6;
        MOVL      XAR6,XAR5             ; |641| 
        MOV       T,#26                 ; |641| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |641| 
        ADDL      XAR6,ACC
        MOVL      *+XAR6[2],XAR4        ; |641| 
	.dwpsn	"sensor.c",643,2
        MOV       AL,@_U16_turnmark_cnt ; |643| 
        BF        L4,EQ                 ; |643| 
        ; branchcc occurs ; |643| 
;*** 643	-----------------------    if ( (K$9[(long)U16_turnmark_cnt]).int32turn_way != (K$9[(long)(U16_turnmark_cnt-1u)]).int32turn_way ) goto g6;
        MOV       AL,@_U16_turnmark_cnt ; |643| 
        MOVL      XAR4,XAR5             ; |643| 
        MOV       T,#26                 ; |643| 
        ADDB      AL,#-1
        MPYXU     ACC,T,AL              ; |643| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[2]        ; |643| 
        MOVL      XAR4,XAR5             ; |643| 
        MOV       T,#26                 ; |643| 
        MPYXU     P,T,@_U16_turnmark_cnt ; |643| 
        MOVL      ACC,P                 ; |643| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |643| 
        CMPL      ACC,*+XAR4[2]         ; |643| 
        BF        L4,NEQ                ; |643| 
        ; branchcc occurs ; |643| 
;*** 644	-----------------------    (K$9[(long)U16_turnmark_cnt]).int32turn_way = 1L;
	.dwpsn	"sensor.c",644,3
        MOV       T,#26                 ; |644| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |644| 
        ADDL      XAR5,ACC
        MOVB      ACC,#1
        MOVL      *+XAR5[2],ACC         ; |644| 
L4:    
;***	-----------------------g6:
;*** 646	-----------------------    LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0L;
;*** 647	-----------------------    LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0L;
;*** 647	-----------------------    return;
	.dwpsn	"sensor.c",646,2
        MOVB      ACC,#0
        MOVW      DP,#_RMotor+34
        MOVL      @_RMotor+34,ACC       ; |646| 
        MOVW      DP,#_LMotor+34
        MOVL      @_LMotor+34,ACC       ; |646| 
	.dwpsn	"sensor.c",647,2
        MOVW      DP,#_RMotor+28
        MOVL      @_RMotor+28,ACC       ; |647| 
        MOVW      DP,#_LMotor+28
        MOVL      @_LMotor+28,ACC       ; |647| 
	.dwpsn	"sensor.c",648,1
        LRETR
        ; return occurs
	.dwattr DW$80, DW_AT_end_file("sensor.c")
	.dwattr DW$80, DW_AT_end_line(0x288)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$80

	.sect	".text"
	.global	_start_end_check

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("start_end_check"), DW_AT_symbol_name("_start_end_check")
	.dwattr DW$86, DW_AT_low_pc(_start_end_check)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("sensor.c")
	.dwattr DW$86, DW_AT_begin_line(0x1f9)
	.dwattr DW$86, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",506,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _start_end_check              FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_start_end_check:
;*** 507	-----------------------    if ( *&g_Flag&0x4000u ) goto g5;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
;* AR4   assigned to C$2
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$87, DW_AT_type(*DW$T$170)
	.dwattr DW$87, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",507,2
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#14          ; |507| 
        BF        L6,TC                 ; |507| 
        ; branchcc occurs ; |507| 
;*** 509	-----------------------    if ( !(*&g_Flag&0x1000u) ) goto g4;
	.dwpsn	"sensor.c",509,3
        TBIT      @_g_Flag,#12          ; |509| 
        BF        L5,NTC                ; |509| 
        ; branchcc occurs ; |509| 
;*** 510	-----------------------    (search_info[0]).int32turn_way = 1L;
	.dwpsn	"sensor.c",510,3
        MOVB      ACC,#1
        MOVW      DP,#_search_info+2
        MOVL      @_search_info+2,ACC   ; |510| 
L5:    
;***	-----------------------g4:
;*** 511	-----------------------    *&g_Flag |= 0x4000u;
;*** 512	-----------------------    g_i32_Time_index = 0L;
;*** 513	-----------------------    U16_turnmark_cnt = 0u;
;*** 514	-----------------------    C$2 = &GpioDataRegs;
;*** 514	-----------------------    ((volatile unsigned *)C$2)[10];
;*** 514	-----------------------    *(&GpioDataRegs+10L) = *(&GpioDataRegs+10L)|2u;
;*** 514	-----------------------    *(&GpioDataRegs+3L) = *((volatile struct _GPADAT_BITS *)C$2+3L)|0x8000u;
;*** 515	-----------------------    goto g11;
	.dwpsn	"sensor.c",511,3
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x4000      ; |511| 
	.dwpsn	"sensor.c",512,9
        MOVB      ACC,#0
        MOVW      DP,#_g_i32_Time_index
        MOVL      @_g_i32_Time_index,ACC ; |512| 
	.dwpsn	"sensor.c",513,9
        MOVW      DP,#_U16_turnmark_cnt
        MOV       @_U16_turnmark_cnt,#0 ; |513| 
	.dwpsn	"sensor.c",514,3
        MOVB      XAR0,#10              ; |514| 
        MOVL      XAR4,#_GpioDataRegs   ; |514| 
        MOVW      DP,#_GpioDataRegs+10
        MOV       AL,*+XAR4[AR0]        ; |514| 
        OR        @_GpioDataRegs+10,#0x0002 ; |514| 
        MOV       AL,*+XAR4[3]          ; |514| 
        OR        AL,#0x8000            ; |514| 
        MOV       @_GpioDataRegs+3,AL   ; |514| 
	.dwpsn	"sensor.c",515,2
        BF        L9,UNC                ; |515| 
        ; branch occurs ; |515| 
L6:    
;***	-----------------------g5:
;*** 519	-----------------------    if ( U16_turnmark_cnt < 140u ) goto g11;
	.dwpsn	"sensor.c",519,3
        MOVW      DP,#_U16_turnmark_cnt
        MOV       AL,@_U16_turnmark_cnt ; |519| 
        CMPB      AL,#140               ; |519| 
        BF        L9,LO                 ; |519| 
        ; branchcc occurs ; |519| 
;*** 521	-----------------------    *&g_Flag &= 0xfffdu;
;*** 523	-----------------------    if ( *&g_Flag&0x1000u ) goto g9;
	.dwpsn	"sensor.c",521,3
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffd      ; |521| 
	.dwpsn	"sensor.c",523,3
        TBIT      @_g_Flag,#12          ; |523| 
        BF        L7,TC                 ; |523| 
        ; branchcc occurs ; |523| 
;*** 529	-----------------------    if ( !(*&g_Flag&0x2000u) ) goto g10;
	.dwpsn	"sensor.c",529,8
        TBIT      @_g_Flag,#13          ; |529| 
        BF        L8,NTC                ; |529| 
        ; branchcc occurs ; |529| 
;*** 531	-----------------------    VFDPrintf("2nd  END");
;*** 532	-----------------------    move_to_end(26214400L, 0L, (long)g_u32_END_ACC_targetval);
;*** 533	-----------------------    LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0L;
;*** 534	-----------------------    VFDPrintf("T:%3.2lf", g_fp32time);
;*** 534	-----------------------    goto g10;
	.dwpsn	"sensor.c",531,13
        MOVL      XAR4,#FSL1            ; |531| 
        MOVL      *-SP[2],XAR4          ; |531| 
        LCR       #_VFDPrintf           ; |531| 
        ; call occurs [#_VFDPrintf] ; |531| 
	.dwpsn	"sensor.c",532,4
        MOVB      ACC,#0
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVL      *-SP[2],ACC           ; |532| 
        MOVL      ACC,@_g_u32_END_ACC_targetval ; |532| 
        MOVL      *-SP[4],ACC           ; |532| 
        MOV       ACC,#800 << 15
        LCR       #_move_to_end         ; |532| 
        ; call occurs [#_move_to_end] ; |532| 
	.dwpsn	"sensor.c",533,4
        MOVW      DP,#_RMotor+28
        MOVB      ACC,#0
        MOVL      @_RMotor+28,ACC       ; |533| 
        MOVW      DP,#_LMotor+28
        MOVL      @_LMotor+28,ACC       ; |533| 
	.dwpsn	"sensor.c",534,13
        MOVW      DP,#_g_fp32time
        MOVL      XAR4,#FSL2            ; |534| 
        MOVL      ACC,@_g_fp32time      ; |534| 
        MOVL      *-SP[2],XAR4          ; |534| 
        MOVL      *-SP[4],ACC           ; |534| 
        LCR       #_VFDPrintf           ; |534| 
        ; call occurs [#_VFDPrintf] ; |534| 
        BF        L8,UNC                ; |534| 
        ; branch occurs ; |534| 
L7:    
;***	-----------------------g9:
;*** 525	-----------------------    move_to_end(26214400L, 0L, (long)g_u32_END_ACC_targetval);
;*** 526	-----------------------    VFDPrintf(" END_ON ");
;*** 527	-----------------------    VFDPrintf("T:%3.2lf", g_fp32time);
	.dwpsn	"sensor.c",525,13
        MOVB      ACC,#0
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVL      *-SP[2],ACC           ; |525| 
        MOVL      ACC,@_g_u32_END_ACC_targetval ; |525| 
        MOVL      *-SP[4],ACC           ; |525| 
        MOV       ACC,#800 << 15
        LCR       #_move_to_end         ; |525| 
        ; call occurs [#_move_to_end] ; |525| 
	.dwpsn	"sensor.c",526,4
        MOVL      XAR4,#FSL3            ; |526| 
        MOVL      *-SP[2],XAR4          ; |526| 
        LCR       #_VFDPrintf           ; |526| 
        ; call occurs [#_VFDPrintf] ; |526| 
	.dwpsn	"sensor.c",527,4
        MOVL      XAR4,#FSL2            ; |527| 
        MOVW      DP,#_g_fp32time
        MOVL      *-SP[2],XAR4          ; |527| 
        MOVL      ACC,@_g_fp32time      ; |527| 
        MOVL      *-SP[4],ACC           ; |527| 
        LCR       #_VFDPrintf           ; |527| 
        ; call occurs [#_VFDPrintf] ; |527| 
L8:    
;***	-----------------------g10:
;*** 537	-----------------------    LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0L;
;*** 538	-----------------------    *&g_Flag |= 0x40u;
;***	-----------------------g11:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",537,3
        MOVB      ACC,#0
        MOVW      DP,#_RMotor+34
        MOVL      @_RMotor+34,ACC       ; |537| 
        MOVW      DP,#_LMotor+34
        MOVL      @_LMotor+34,ACC       ; |537| 
	.dwpsn	"sensor.c",538,3
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0040      ; |538| 
L9:    
	.dwpsn	"sensor.c",542,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("sensor.c")
	.dwattr DW$86, DW_AT_end_line(0x21e)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$86

	.sect	".text"
	.global	_turn_decide

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_decide"), DW_AT_symbol_name("_turn_decide")
	.dwattr DW$88, DW_AT_low_pc(_turn_decide)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("sensor.c")
	.dwattr DW$88, DW_AT_begin_line(0x38b)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",908,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _turn_decide                  FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_turn_decide:
;*** 913	-----------------------    if ( (*pmark).u16single_flag == 1u ) goto g17;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _pmark
DW$89	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pmark"), DW_AT_symbol_name("_pmark")
	.dwattr DW$89, DW_AT_type(*DW$T$114)
	.dwattr DW$89, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to _premark
DW$90	.dwtag  DW_TAG_formal_parameter, DW_AT_name("premark"), DW_AT_symbol_name("_premark")
	.dwattr DW$90, DW_AT_type(*DW$T$114)
	.dwattr DW$90, DW_AT_location[DW_OP_reg14]
;* AR6   assigned to C$3
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$91, DW_AT_type(*DW$T$158)
	.dwattr DW$91, DW_AT_location[DW_OP_reg16]
;* AR5   assigned to C$4
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$92, DW_AT_type(*DW$T$158)
	.dwattr DW$92, DW_AT_location[DW_OP_reg14]
;* AL    assigned to C$7
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("C$7"), DW_AT_symbol_name("C$7")
	.dwattr DW$93, DW_AT_type(*DW$T$11)
	.dwattr DW$93, DW_AT_location[DW_OP_reg0]
;* AR5   assigned to _premark
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("premark"), DW_AT_symbol_name("_premark")
	.dwattr DW$94, DW_AT_type(*DW$T$153)
	.dwattr DW$94, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to _pmark
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("pmark"), DW_AT_symbol_name("_pmark")
	.dwattr DW$95, DW_AT_type(*DW$T$153)
	.dwattr DW$95, DW_AT_location[DW_OP_reg12]
;* AR6   assigned to K$17
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("K$17"), DW_AT_symbol_name("K$17")
	.dwattr DW$96, DW_AT_type(*DW$T$114)
	.dwattr DW$96, DW_AT_location[DW_OP_reg16]
;* AR5   assigned to K$16
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("K$16"), DW_AT_symbol_name("K$16")
	.dwattr DW$97, DW_AT_type(*DW$T$114)
	.dwattr DW$97, DW_AT_location[DW_OP_reg14]
	.dwpsn	"sensor.c",913,2
        MOVB      XAR0,#11              ; |913| 
        MOV       AL,*+XAR4[AR0]        ; |913| 
        CMPB      AL,#1                 ; |913| 
        BF        L16,EQ                ; |913| 
        ; branchcc occurs ; |913| 
;*** 607	-----------------------    C$7 = g_shift.u16sen_enable;  // [26]
;*** 607	-----------------------    if ( C$7&0xfu ) goto g6;  // [26]
	.dwpsn	"sensor.c",607,2
        MOVW      DP,#_g_shift
        MOV       AL,@_g_shift          ; |607| 
        AND       AH,AL,#0x000f         ; |607| 
        BF        L11,NEQ               ; |607| 
        ; branchcc occurs ; |607| 
;*** 613	-----------------------    if ( C$7&0xf000u ) goto g5;  // [26]
	.dwpsn	"sensor.c",613,7
        AND       AL,AL,#0xf000         ; |613| 
        BF        L10,NEQ               ; |613| 
        ; branchcc occurs ; |613| 
;*** 622	-----------------------    K$16 = &g_lmark;  // [26]
;*** 622	-----------------------    (*K$16).u16mark_enable = 0xf000u;  // [26]
;*** 623	-----------------------    K$17 = &g_rmark;  // [26]
;*** 623	-----------------------    (*K$17).u16mark_enable = 15u;  // [26]
;*** 623	-----------------------    goto g7;  // [26]
	.dwpsn	"sensor.c",622,3
        MOVB      XAR0,#9               ; |622| 
        MOVL      XAR5,#_g_lmark        ; |622| 
        MOV       *+XAR5[AR0],#61440    ; |622| 
	.dwpsn	"sensor.c",623,3
        MOVL      XAR6,#_g_rmark        ; |623| 
        MOV       *+XAR6[AR0],#15       ; |623| 
        BF        L12,UNC               ; |623| 
        ; branch occurs ; |623| 
L10:    
;***	-----------------------g5:
;*** 615	-----------------------    K$16 = &g_lmark;  // [26]
;*** 615	-----------------------    C$6 = g_shift.u16sen_state;  // [26]
;*** 615	-----------------------    (*K$16).u16mark_enable = 0xf000u<<C$6;  // [26]
;*** 616	-----------------------    K$17 = &g_rmark;  // [26]
;*** 616	-----------------------    (*K$17).u16mark_enable = 15>>C$6;  // [26]
;*** 617	-----------------------    goto g7;  // [26]
	.dwpsn	"sensor.c",615,3
        MOV       AL,#61440             ; |615| 
        MOV       T,@_g_shift+1         ; |615| 
        MOVB      XAR0,#9               ; |615| 
        MOVL      XAR5,#_g_lmark        ; |615| 
        LSL       AL,T                  ; |615| 
        MOV       *+XAR5[AR0],AL        ; |615| 
	.dwpsn	"sensor.c",616,3
        MOVB      AL,#15                ; |616| 
        MOVL      XAR6,#_g_rmark        ; |616| 
        LSR       AL,T                  ; |616| 
        MOV       *+XAR6[AR0],AL        ; |616| 
	.dwpsn	"sensor.c",617,2
        BF        L12,UNC               ; |617| 
        ; branch occurs ; |617| 
L11:    
;***	-----------------------g6:
;*** 609	-----------------------    K$16 = &g_lmark;  // [26]
;*** 609	-----------------------    C$5 = g_shift.u16sen_state;  // [26]
;*** 609	-----------------------    (*K$16).u16mark_enable = 0xf000u>>C$5;  // [26]
;*** 610	-----------------------    K$17 = &g_rmark;  // [26]
;*** 610	-----------------------    (*K$17).u16mark_enable = 15>>C$5;  // [26]
	.dwpsn	"sensor.c",609,3
        MOV       AL,#61440             ; |609| 
        MOV       T,@_g_shift+1         ; |609| 
        MOVB      XAR0,#9               ; |609| 
        MOVL      XAR5,#_g_lmark        ; |609| 
        LSR       AL,T                  ; |609| 
        MOV       *+XAR5[AR0],AL        ; |609| 
	.dwpsn	"sensor.c",610,3
        MOVB      AL,#15                ; |610| 
        MOVL      XAR6,#_g_rmark        ; |610| 
        LSR       AL,T                  ; |610| 
        MOV       *+XAR6[AR0],AL        ; |610| 
L12:    
;***	-----------------------g7:
;*** 611	-----------------------    if ( !((*pmark).u16mark_enable&g_pos.u16state) ) goto g16;  // [26]
	.dwpsn	"sensor.c",611,2
        MOVW      DP,#_g_pos+9
        MOV       AL,@_g_pos+9          ; |611| 
        AND       AL,*+XAR4[AR0]        ; |611| 
        BF        L15,EQ                ; |611| 
        ; branchcc occurs ; |611| 
;*** 984	-----------------------    if ( !(*pmark).u16turn_flag ) goto g15;
	.dwpsn	"sensor.c",984,3
        MOVB      XAR0,#10              ; |984| 
        MOV       AL,*+XAR4[AR0]        ; |984| 
        BF        L14,EQ                ; |984| 
        ; branchcc occurs ; |984| 
;*** 994	-----------------------    if ( (*pmark).iq17turnmark_dist <= (*pmark).iq17limit_dist ) goto g34;
	.dwpsn	"sensor.c",994,8
        MOVL      ACC,*+XAR4[4]         ; |994| 
        CMPL      ACC,*+XAR4[0]         ; |994| 
        BF        L22,GEQ               ; |994| 
        ; branchcc occurs ; |994| 
;*** 996	-----------------------    (*pmark).u16single_flag = 1u;
;*** 997	-----------------------    (*pmark).iq17limit_dist = (*pmark).iq17turnmark_dist+((long)g_u16turn_dist<<17);
;*** 999	-----------------------    if ( *&g_Flag&0x8u ) goto g34;
	.dwpsn	"sensor.c",996,4
        MOVB      XAR0,#11              ; |996| 
        MOV       *+XAR4[AR0],#1        ; |996| 
	.dwpsn	"sensor.c",997,4
        MOVW      DP,#_g_u16turn_dist
        MOV       T,#17                 ; |997| 
        MOVU      ACC,@_g_u16turn_dist
        LSLL      ACC,T                 ; |997| 
        ADDL      ACC,*+XAR4[0]         ; |997| 
        MOVL      *+XAR4[4],ACC         ; |997| 
	.dwpsn	"sensor.c",999,4
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#3           ; |999| 
        BF        L22,TC                ; |999| 
        ; branchcc occurs ; |999| 
;** 1001	-----------------------    if ( pmark == K$16 ) goto g14;
	.dwpsn	"sensor.c",1001,5
        MOVL      ACC,XAR5
        CMPL      ACC,XAR4              ; |1001| 
        BF        L13,EQ                ; |1001| 
        ; branchcc occurs ; |1001| 
;** 1006	-----------------------    if ( pmark != K$17 ) goto g34;
	.dwpsn	"sensor.c",1006,22
        MOVL      ACC,XAR6
        CMPL      ACC,XAR4              ; |1006| 
        BF        L22,NEQ               ; |1006| 
        ; branchcc occurs ; |1006| 
;** 1008	-----------------------    *(&GpioDataRegs+3L) |= 0x200u;
;** 1008	-----------------------    goto g34;
	.dwpsn	"sensor.c",1008,6
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x0200 ; |1008| 
        BF        L22,UNC               ; |1008| 
        ; branch occurs ; |1008| 
L13:    
;***	-----------------------g14:
;** 1003	-----------------------    *(&GpioDataRegs+3L) |= 0x800u;
;** 1005	-----------------------    goto g34;
	.dwpsn	"sensor.c",1003,6
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x0800 ; |1003| 
	.dwpsn	"sensor.c",1005,5
        BF        L22,UNC               ; |1005| 
        ; branch occurs ; |1005| 
L14:    
;***	-----------------------g15:
;*** 987	-----------------------    RMotor.iq17Turnmark_Check_Dist = 0L;
;*** 988	-----------------------    LMotor.iq17Turnmark_Check_Dist = 0L;
;*** 989	-----------------------    (*pmark).iq17turnmark_dist = 0L;
;*** 991	-----------------------    (*pmark).iq17limit_dist = (*pmark).iq17turnmark_dist+393216L;
;*** 992	-----------------------    (*pmark).u16turn_flag = 1u;
;*** 993	-----------------------    goto g34;
	.dwpsn	"sensor.c",987,4
        MOVB      ACC,#0
        MOVW      DP,#_RMotor+26
        MOVL      @_RMotor+26,ACC       ; |987| 
	.dwpsn	"sensor.c",988,4
        MOVW      DP,#_LMotor+26
        MOVL      @_LMotor+26,ACC       ; |988| 
	.dwpsn	"sensor.c",989,4
        MOVL      *+XAR4[0],ACC         ; |989| 
	.dwpsn	"sensor.c",991,4
        MOVL      XAR5,#393216          ; |991| 
        MOVL      ACC,XAR5              ; |991| 
        ADDL      ACC,*+XAR4[0]         ; |991| 
        MOVL      *+XAR4[4],ACC         ; |991| 
	.dwpsn	"sensor.c",992,4
        MOV       *+XAR4[AR0],#1        ; |992| 
	.dwpsn	"sensor.c",993,3
        BF        L22,UNC               ; |993| 
        ; branch occurs ; |993| 
L15:    
;***	-----------------------g16:
;** 1016	-----------------------    (*pmark).iq17turnmark_dist = 0L;
;** 1017	-----------------------    (*pmark).u16turn_flag = 0u;
;** 1017	-----------------------    goto g34;
	.dwpsn	"sensor.c",1016,3
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |1016| 
	.dwpsn	"sensor.c",1017,3
        MOVB      XAR0,#10              ; |1017| 
        MOV       *+XAR4[AR0],#0        ; |1017| 
        BF        L22,UNC               ; |1017| 
        ; branch occurs ; |1017| 
L16:    
;***	-----------------------g17:
;*** 917	-----------------------    if ( (*pmark).iq17turnmark_dist > (*pmark).iq17limit_dist ) goto g20;
	.dwpsn	"sensor.c",917,3
        MOVL      ACC,*+XAR4[4]         ; |917| 
        CMPL      ACC,*+XAR4[0]         ; |917| 
        BF        L17,LT                ; |917| 
        ; branchcc occurs ; |917| 
;*** 972	-----------------------    if ( !(*premark).u16single_flag ) goto g34;
	.dwpsn	"sensor.c",972,8
        MOV       AL,*+XAR5[AR0]        ; |972| 
        BF        L22,EQ                ; |972| 
        ; branchcc occurs ; |972| 
;*** 973	-----------------------    (*pmark).u16cross_flag = 1u;
;*** 973	-----------------------    goto g34;
	.dwpsn	"sensor.c",973,4
        MOVB      XAR0,#12              ; |973| 
        MOV       *+XAR4[AR0],#1        ; |973| 
        BF        L22,UNC               ; |973| 
        ; branch occurs ; |973| 
L17:    
;***	-----------------------g20:
;*** 920	-----------------------    if ( pmark == &g_lmark ) goto g23;
	.dwpsn	"sensor.c",920,4
        MOVL      XAR6,#_g_lmark        ; |920| 
        MOVL      ACC,XAR6              ; |920| 
        CMPL      ACC,XAR4              ; |920| 
        BF        L18,EQ                ; |920| 
        ; branchcc occurs ; |920| 
;*** 930	-----------------------    if ( pmark != &g_rmark ) goto g24;
	.dwpsn	"sensor.c",930,9
        MOVL      XAR5,#_g_rmark        ; |930| 
        MOVL      ACC,XAR5              ; |930| 
        CMPL      ACC,XAR4              ; |930| 
        BF        L19,NEQ               ; |930| 
        ; branchcc occurs ; |930| 
;*** 933	-----------------------    C$4 = &GpioDataRegs;
;*** 933	-----------------------    ((volatile unsigned *)C$4)[5] |= 0x200u;
;*** 934	-----------------------    *((volatile struct _GPBDAT_BITS *)C$4+12L);
;*** 934	-----------------------    *(&GpioDataRegs+12L) = *(&GpioDataRegs+12L)|2u;
;*** 934	-----------------------    *(&GpioDataRegs+5L) = *(&GpioDataRegs+5L)|0x8000u;
;*** 934	-----------------------    goto g24;
	.dwpsn	"sensor.c",933,5
        MOVL      XAR5,#_GpioDataRegs   ; |933| 
        OR        *+XAR5[5],#0x0200     ; |933| 
	.dwpsn	"sensor.c",934,5
        MOVB      XAR0,#12              ; |934| 
        MOVW      DP,#_GpioDataRegs+12
        MOV       AL,*+XAR5[AR0]        ; |934| 
        OR        @_GpioDataRegs+12,#0x0002 ; |934| 
        OR        @_GpioDataRegs+5,#0x8000 ; |934| 
        BF        L19,UNC               ; |934| 
        ; branch occurs ; |934| 
L18:    
;***	-----------------------g23:
;*** 922	-----------------------    C$3 = &GpioDataRegs;
;*** 922	-----------------------    ((volatile unsigned *)C$3)[5] |= 0x800u;
;*** 923	-----------------------    *((volatile struct _GPBDAT_BITS *)C$3+12L);
;*** 923	-----------------------    *(&GpioDataRegs+12L) = *(&GpioDataRegs+12L)|2u;
;*** 923	-----------------------    *(&GpioDataRegs+5L) = *(&GpioDataRegs+5L)|0x8000u;
;*** 926	-----------------------    if ( (*premark).u16single_flag == 1u ) goto g34;
	.dwpsn	"sensor.c",922,5
        MOVL      XAR6,#_GpioDataRegs   ; |922| 
        OR        *+XAR6[5],#0x0800     ; |922| 
	.dwpsn	"sensor.c",923,5
        MOVB      XAR0,#12              ; |923| 
        MOVW      DP,#_GpioDataRegs+12
        MOV       AL,*+XAR6[AR0]        ; |923| 
        OR        @_GpioDataRegs+12,#0x0002 ; |923| 
        OR        @_GpioDataRegs+5,#0x8000 ; |923| 
	.dwpsn	"sensor.c",926,5
        MOVB      XAR0,#11              ; |926| 
        MOV       AL,*+XAR5[AR0]        ; |926| 
        CMPB      AL,#1                 ; |926| 
        BF        L22,EQ                ; |926| 
        ; branchcc occurs ; |926| 
L19:    
;***	-----------------------g24:
;*** 940	-----------------------    (*pmark).u16single_flag = 0u;
;*** 941	-----------------------    (*pmark).u16turn_flag = 0u;
;*** 942	-----------------------    (*pmark).iq17turnmark_dist = 0L;
;*** 944	-----------------------    if ( (*pmark).u16cross_flag ) goto g31;
	.dwpsn	"sensor.c",940,4
        MOVB      XAR0,#11              ; |940| 
        MOV       *+XAR4[AR0],#0        ; |940| 
	.dwpsn	"sensor.c",941,4
        MOVB      XAR0,#10              ; |941| 
        MOV       *+XAR4[AR0],#0        ; |941| 
	.dwpsn	"sensor.c",942,4
        MOVB      ACC,#0
        MOVL      *+XAR4[0],ACC         ; |942| 
	.dwpsn	"sensor.c",944,4
        MOVB      XAR0,#12              ; |944| 
        MOV       AL,*+XAR4[AR0]        ; |944| 
        BF        L21,NEQ               ; |944| 
        ; branchcc occurs ; |944| 
;*** 960	-----------------------    if ( !(*&g_Flag&2u) ) goto g34;
	.dwpsn	"sensor.c",960,5
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#1           ; |960| 
        BF        L22,NTC               ; |960| 
        ; branchcc occurs ; |960| 
;*** 960	-----------------------    if ( *&g_Flag&0x8u ) goto g34;
        TBIT      @_g_Flag,#3           ; |960| 
        BF        L22,TC                ; |960| 
        ; branchcc occurs ; |960| 
;*** 964	-----------------------    if ( *&g_Flag&0x1000u ) goto g30;
	.dwpsn	"sensor.c",964,5
        TBIT      @_g_Flag,#12          ; |964| 
        BF        L20,TC                ; |964| 
        ; branchcc occurs ; |964| 
;*** 968	-----------------------    if ( !(*&g_Flag&0x2000u) ) goto g34;
	.dwpsn	"sensor.c",968,22
        TBIT      @_g_Flag,#13          ; |968| 
        BF        L22,NTC               ; |968| 
        ; branchcc occurs ; |968| 
;*** 969	-----------------------    second_info(&search_info);
;*** 969	-----------------------    goto g34;
	.dwpsn	"sensor.c",969,6
        MOVL      XAR4,#_search_info    ; |969| 
        LCR       #_second_info         ; |969| 
        ; call occurs [#_second_info] ; |969| 
        BF        L22,UNC               ; |969| 
        ; branch occurs ; |969| 
L20:    
;***	-----------------------g30:
;*** 966	-----------------------    line_info(pmark);
;*** 967	-----------------------    goto g34;
	.dwpsn	"sensor.c",966,21
        LCR       #_line_info           ; |966| 
        ; call occurs [#_line_info] ; |966| 
	.dwpsn	"sensor.c",967,5
        BF        L22,UNC               ; |967| 
        ; branch occurs ; |967| 
L21:    
;***	-----------------------g31:
;*** 946	-----------------------    (*pmark).u16cross_flag = 0u;
;*** 948	-----------------------    if ( pmark != &g_rmark ) goto g34;
	.dwpsn	"sensor.c",946,5
        MOV       *+XAR4[AR0],#0        ; |946| 
	.dwpsn	"sensor.c",948,5
        MOVL      XAR5,#_g_rmark        ; |948| 
        MOVL      ACC,XAR5              ; |948| 
        CMPL      ACC,XAR4              ; |948| 
        BF        L22,NEQ               ; |948| 
        ; branchcc occurs ; |948| 
;*** 951	-----------------------    if ( *&g_Flag&0x8u ) goto g34;
	.dwpsn	"sensor.c",951,6
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#3           ; |951| 
        BF        L22,TC                ; |951| 
        ; branchcc occurs ; |951| 
;*** 954	-----------------------    start_end_check();
;***	-----------------------g34:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",954,6
        LCR       #_start_end_check     ; |954| 
        ; call occurs [#_start_end_check] ; |954| 
L22:    
	.dwpsn	"sensor.c",1020,1
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("sensor.c")
	.dwattr DW$88, DW_AT_end_line(0x3fc)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$88

	.sect	".text"
	.global	_sensor_check_127

DW$98	.dwtag  DW_TAG_subprogram, DW_AT_name("sensor_check_127"), DW_AT_symbol_name("_sensor_check_127")
	.dwattr DW$98, DW_AT_low_pc(_sensor_check_127)
	.dwattr DW$98, DW_AT_high_pc(0x00)
	.dwattr DW$98, DW_AT_begin_file("sensor.c")
	.dwattr DW$98, DW_AT_begin_line(0x1dc)
	.dwattr DW$98, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",477,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _sensor_check_127             FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_sensor_check_127:
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$1 = &g_sen[0];
;***	-----------------------g2:
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
;* AR3   assigned to K$1
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("K$1"), DW_AT_symbol_name("K$1")
	.dwattr DW$99, DW_AT_type(*DW$T$195)
	.dwattr DW$99, DW_AT_location[DW_OP_reg10]
        MOVL      XAR3,#_g_sen
L23:    
DW$L$_sensor_check_127$2$B:
;***	-----------------------g3:
;*** 480	-----------------------    if ( (K$1[g_int32_copmare_cnt]).iq17_4095_value > (K$1[g_int32_copmare_cnt]).iq17_4095_max_value ) goto g7;
	.dwpsn	"sensor.c",480,3
        MOVB      ACC,#14
        MOVL      XAR4,XAR3             ; |480| 
        MOVW      DP,#_g_int32_copmare_cnt
        MOVL      XT,ACC                ; |480| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |480| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[4]        ; |480| 
        MOVB      ACC,#14
        MOVL      XAR4,XAR3             ; |480| 
        MOVL      XT,ACC                ; |480| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |480| 
        MOVL      ACC,P                 ; |480| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |480| 
        CMPL      ACC,*+XAR4[0]         ; |480| 
        BF        L25,LT                ; |480| 
        ; branchcc occurs ; |480| 
DW$L$_sensor_check_127$2$E:
DW$L$_sensor_check_127$3$B:
;*** 483	-----------------------    if ( (K$1[g_int32_copmare_cnt]).iq17_4095_value < (K$1[g_int32_copmare_cnt]).iq17_4095_min_value ) goto g6;
	.dwpsn	"sensor.c",483,8
        MOVL      XAR4,XAR3             ; |483| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |483| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |483| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[2]        ; |483| 
        MOVB      ACC,#14
        MOVL      XAR4,XAR3             ; |483| 
        MOVL      XT,ACC                ; |483| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |483| 
        MOVL      ACC,P                 ; |483| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |483| 
        CMPL      ACC,*+XAR4[0]         ; |483| 
        BF        L24,GT                ; |483| 
        ; branchcc occurs ; |483| 
DW$L$_sensor_check_127$3$E:
DW$L$_sensor_check_127$4$B:
;*** 488	-----------------------    (K$1[g_int32_copmare_cnt]).iq17_127_value = __IQmpy(_IQ17div((K$1[g_int32_copmare_cnt]).iq17_4095_value-(K$1[g_int32_copmare_cnt]).iq17_4095_min_value, (K$1[g_int32_copmare_cnt]).iq17_4095_max_value-(K$1[g_int32_copmare_cnt]).iq17_4095_min_value), 16646144L, 17);
;*** 488	-----------------------    goto g8;
	.dwpsn	"sensor.c",488,4
        MOVB      ACC,#14
        MOVL      XAR4,XAR3             ; |488| 
        MOVL      XT,ACC                ; |488| 
        MOVL      XAR5,XAR3             ; |488| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |488| 
        ADDL      XAR4,ACC
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |488| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |488| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[4]         ; |488| 
        SUBL      ACC,*+XAR4[2]         ; |488| 
        MOVL      *-SP[2],ACC           ; |488| 
        MOVL      XAR4,XAR3             ; |488| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |488| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |488| 
        ADDL      XAR4,ACC
        MOVL      XAR5,XAR3             ; |488| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |488| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |488| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[0]         ; |488| 
        SUBL      ACC,*+XAR4[2]         ; |488| 
        LCR       #__IQ17div            ; |488| 
        ; call occurs [#__IQ17div] ; |488| 
        MOVL      XT,ACC                ; |488| 
        MOV       AH,#254
        MOV       AL,#0
        IMPYL     P,XT,ACC              ; |488| 
        QMPYL     ACC,XT,ACC            ; |488| 
        LSL64     ACC:P,#15             ; |488| 
        MOVL      XAR6,ACC              ; |488| 
        MOVB      ACC,#14
        MOVW      DP,#_g_int32_copmare_cnt
        MOVL      XAR4,XAR3             ; |488| 
        MOVL      XT,ACC                ; |488| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |488| 
        MOVL      ACC,P                 ; |488| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[6],XAR6        ; |488| 
        BF        L26,UNC               ; |488| 
        ; branch occurs ; |488| 
DW$L$_sensor_check_127$4$E:
L24:    
DW$L$_sensor_check_127$5$B:
;***	-----------------------g6:
;*** 484	-----------------------    (K$1[g_int32_copmare_cnt]).iq17_127_value = 0L;
;*** 484	-----------------------    goto g8;
	.dwpsn	"sensor.c",484,4
        MOVL      XAR4,XAR3             ; |484| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |484| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |484| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        MOVL      *+XAR4[6],ACC         ; |484| 
        BF        L26,UNC               ; |484| 
        ; branch occurs ; |484| 
DW$L$_sensor_check_127$5$E:
L25:    
DW$L$_sensor_check_127$6$B:
;***	-----------------------g7:
;*** 481	-----------------------    (K$1[g_int32_copmare_cnt]).iq17_127_value = 16646144L;
	.dwpsn	"sensor.c",481,4
        MOVL      XAR4,XAR3             ; |481| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |481| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |481| 
        ADDL      XAR4,ACC
        MOV       PH,#254
        MOV       PL,#0
        MOVL      *+XAR4[6],P           ; |481| 
DW$L$_sensor_check_127$6$E:
L26:    
DW$L$_sensor_check_127$7$B:
;***	-----------------------g8:
;*** 493	-----------------------    ++g_int32_copmare_cnt;
;*** 495	-----------------------    if ( g_int32_copmare_cnt < 16uL ) goto g10;
	.dwpsn	"sensor.c",493,3
        MOVB      ACC,#1
        ADDL      @_g_int32_copmare_cnt,ACC ; |493| 
	.dwpsn	"sensor.c",495,3
        MOVB      ACC,#16
        CMPL      ACC,@_g_int32_copmare_cnt ; |495| 
        BF        L27,HI                ; |495| 
        ; branchcc occurs ; |495| 
DW$L$_sensor_check_127$7$E:
DW$L$_sensor_check_127$8$B:
;*** 496	-----------------------    g_int32_copmare_cnt = 0uL;
	.dwpsn	"sensor.c",496,4
        MOVB      ACC,#0
        MOVL      @_g_int32_copmare_cnt,ACC ; |496| 
DW$L$_sensor_check_127$8$E:
L27:    
DW$L$_sensor_check_127$9$B:
;***	-----------------------g10:
;*** 498	-----------------------    ++g_int32_sen_cnt;
;*** 500	-----------------------    if ( g_int32_sen_cnt != 8uL ) goto g3;
	.dwpsn	"sensor.c",498,3
        MOVB      ACC,#1
        MOVW      DP,#_g_int32_sen_cnt
        ADDL      @_g_int32_sen_cnt,ACC ; |498| 
	.dwpsn	"sensor.c",500,3
        MOVB      ACC,#8
        CMPL      ACC,@_g_int32_sen_cnt ; |500| 
        BF        L23,NEQ               ; |500| 
        ; branchcc occurs ; |500| 
DW$L$_sensor_check_127$9$E:
DW$L$_sensor_check_127$10$B:
;*** 501	-----------------------    g_int32_sen_cnt = 0uL;
;*** 501	-----------------------    goto g2;
	.dwpsn	"sensor.c",501,4
        MOVB      ACC,#0
        MOVL      @_g_int32_sen_cnt,ACC ; |501| 
        BF        L23,UNC               ; |501| 
        ; branch occurs ; |501| 
DW$L$_sensor_check_127$10$E:
	.dwcfa	0x1d, -4
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11

DW$100	.dwtag  DW_TAG_loop
	.dwattr DW$100, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L23:1:1729866709")
	.dwattr DW$100, DW_AT_begin_file("sensor.c")
	.dwattr DW$100, DW_AT_begin_line(0x1de)
	.dwattr DW$100, DW_AT_end_line(0x1f6)
DW$101	.dwtag  DW_TAG_loop_range
	.dwattr DW$101, DW_AT_low_pc(DW$L$_sensor_check_127$2$B)
	.dwattr DW$101, DW_AT_high_pc(DW$L$_sensor_check_127$2$E)
DW$102	.dwtag  DW_TAG_loop_range
	.dwattr DW$102, DW_AT_low_pc(DW$L$_sensor_check_127$3$B)
	.dwattr DW$102, DW_AT_high_pc(DW$L$_sensor_check_127$3$E)
DW$103	.dwtag  DW_TAG_loop_range
	.dwattr DW$103, DW_AT_low_pc(DW$L$_sensor_check_127$4$B)
	.dwattr DW$103, DW_AT_high_pc(DW$L$_sensor_check_127$4$E)
DW$104	.dwtag  DW_TAG_loop_range
	.dwattr DW$104, DW_AT_low_pc(DW$L$_sensor_check_127$5$B)
	.dwattr DW$104, DW_AT_high_pc(DW$L$_sensor_check_127$5$E)
DW$105	.dwtag  DW_TAG_loop_range
	.dwattr DW$105, DW_AT_low_pc(DW$L$_sensor_check_127$6$B)
	.dwattr DW$105, DW_AT_high_pc(DW$L$_sensor_check_127$6$E)
DW$106	.dwtag  DW_TAG_loop_range
	.dwattr DW$106, DW_AT_low_pc(DW$L$_sensor_check_127$7$B)
	.dwattr DW$106, DW_AT_high_pc(DW$L$_sensor_check_127$7$E)
DW$107	.dwtag  DW_TAG_loop_range
	.dwattr DW$107, DW_AT_low_pc(DW$L$_sensor_check_127$8$B)
	.dwattr DW$107, DW_AT_high_pc(DW$L$_sensor_check_127$8$E)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_sensor_check_127$10$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_sensor_check_127$10$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_sensor_check_127$9$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_sensor_check_127$9$E)
	.dwendtag DW$100

	.dwattr DW$98, DW_AT_end_file("sensor.c")
	.dwattr DW$98, DW_AT_end_line(0x1f7)
	.dwattr DW$98, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$98

	.sect	".text"
	.global	_sen_vari_init

DW$110	.dwtag  DW_TAG_subprogram, DW_AT_name("sen_vari_init"), DW_AT_symbol_name("_sen_vari_init")
	.dwattr DW$110, DW_AT_low_pc(_sen_vari_init)
	.dwattr DW$110, DW_AT_high_pc(0x00)
	.dwattr DW$110, DW_AT_begin_file("sensor.c")
	.dwattr DW$110, DW_AT_begin_line(0x2ab)
	.dwattr DW$110, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",685,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _sen_vari_init                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_sen_vari_init:
;*** 688	-----------------------    C$2 = &g_sen;
;*** 688	-----------------------    memset(C$2, 0, 224uL);
;*** 689	-----------------------    memset(&g_pos, 0, 12uL);
;*** 690	-----------------------    memset(&g_rmark, 0, 14uL);
;*** 691	-----------------------    memset(&g_lmark, 0, 14uL);
;***  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$12 = (volatile struct _sensor_variable *)C$2;
;***  	-----------------------    L$1 = 15;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
;* AR4   assigned to C$1
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$111, DW_AT_type(*DW$T$143)
	.dwattr DW$111, DW_AT_location[DW_OP_reg12]
;* AR3   assigned to C$2
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$112, DW_AT_type(*DW$T$3)
	.dwattr DW$112, DW_AT_location[DW_OP_reg10]
;* AR6   assigned to L$1
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("L$1"), DW_AT_symbol_name("L$1")
	.dwattr DW$113, DW_AT_type(*DW$T$10)
	.dwattr DW$113, DW_AT_location[DW_OP_reg16]
;* AR4   assigned to U$12
DW$114	.dwtag  DW_TAG_variable, DW_AT_name("U$12"), DW_AT_symbol_name("U$12")
	.dwattr DW$114, DW_AT_type(*DW$T$195)
	.dwattr DW$114, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",688,2
        MOVL      XAR3,#_g_sen          ; |688| 
        MOVL      XAR4,XAR3             ; |688| 
        MOVB      ACC,#224
        MOVB      XAR5,#0
        LCR       #_memset              ; |688| 
        ; call occurs [#_memset] ; |688| 
	.dwpsn	"sensor.c",689,2
        MOVB      XAR5,#0
        MOVL      XAR4,#_g_pos          ; |689| 
        MOVB      ACC,#12
        LCR       #_memset              ; |689| 
        ; call occurs [#_memset] ; |689| 
	.dwpsn	"sensor.c",690,2
        MOVB      XAR5,#0
        MOVL      XAR4,#_g_rmark        ; |690| 
        MOVB      ACC,#14
        LCR       #_memset              ; |690| 
        ; call occurs [#_memset] ; |690| 
	.dwpsn	"sensor.c",691,2
        MOVB      XAR5,#0
        MOVL      XAR4,#_g_lmark        ; |691| 
        MOVB      ACC,#14
        LCR       #_memset              ; |691| 
        ; call occurs [#_memset] ; |691| 
        MOVL      XAR4,XAR3
        MOVB      XAR6,#15
        MOVB      XAR5,#14              ; |694| 
        MOV       PH,#8190
        MOV       PL,#0
L28:    
DW$L$_sen_vari_init$2$B:
;***	-----------------------g2:
;*** 695	-----------------------    (*U$12).iq17_4095_min_value = 536739840L;
;*** 694	-----------------------    U$12 += 14;
;*** 694	-----------------------    if ( (--L$1) != (-1) ) goto g2;
	.dwpsn	"sensor.c",695,2
        MOVL      *+XAR4[2],P           ; |695| 
	.dwpsn	"sensor.c",694,61
        MOVL      ACC,XAR4              ; |694| 
        ADDU      ACC,AR5               ; |694| 
        MOVL      XAR4,ACC              ; |694| 
	.dwpsn	"sensor.c",694,31
        BANZ      L28,AR6--             ; |694| 
        ; branchcc occurs ; |694| 
DW$L$_sen_vari_init$2$E:
;*** 700	-----------------------    C$1 = &((volatile long *)g_sen)[0];
;*** 700	-----------------------    C$1[111] = 2048000L;
;*** 700	-----------------------    (*(volatile struct _sensor_variable *)C$1).u16active_arr = 0x8000u;
;*** 700	-----------------------    (*(volatile struct _sensor_variable *)C$1).u16passive_arr = 32767u;
;*** 701	-----------------------    C$1[104] = 1664000L;
;*** 701	-----------------------    *((volatile unsigned *)C$1+24L) = 16384u;
;*** 701	-----------------------    *((volatile unsigned *)C$1+25L) = 0xbfffu;
;*** 702	-----------------------    C$1[97] = 1408000L;
;*** 702	-----------------------    *((volatile unsigned *)C$1+38L) = 8192u;
;*** 702	-----------------------    *((volatile unsigned *)C$1+39L) = 0xdfffu;
;*** 703	-----------------------    C$1[90] = 1139200L;
;*** 703	-----------------------    *((volatile unsigned *)C$1+52L) = 4096u;
;*** 703	-----------------------    *((volatile unsigned *)C$1+53L) = 0xefffu;
;*** 705	-----------------------    C$1[83] = 896000L;
;*** 705	-----------------------    *((volatile unsigned *)C$1+66L) = 2048u;
;*** 705	-----------------------    *((volatile unsigned *)C$1+67L) = 0xf7ffu;
;*** 706	-----------------------    C$1[76] = 512000L;
;*** 706	-----------------------    *((volatile unsigned *)C$1+80L) = 1024u;
;*** 706	-----------------------    *((volatile unsigned *)C$1+81L) = 0xfbffu;
;*** 707	-----------------------    C$1[69] = 320000L;
;*** 707	-----------------------    *((volatile unsigned *)C$1+94L) = 512u;
;*** 707	-----------------------    *((volatile unsigned *)C$1+95L) = 0xfdffu;
;*** 708	-----------------------    C$1[62] = 64000L;
;*** 708	-----------------------    *((volatile unsigned *)C$1+108L) = 256u;
;*** 708	-----------------------    *((volatile unsigned *)C$1+109L) = 0xfeffu;
;*** 710	-----------------------    C$1[55] = (-64000L);
;*** 710	-----------------------    *((volatile unsigned *)C$1+122L) = 128u;
;*** 710	-----------------------    *((volatile unsigned *)C$1+123L) = 0xff7fu;
;*** 711	-----------------------    C$1[48] = (-320000L);
;*** 711	-----------------------    *((volatile unsigned *)C$1+136L) = 64u;
;*** 711	-----------------------    *((volatile unsigned *)C$1+137L) = 0xffbfu;
;*** 712	-----------------------    C$1[41] = (-512000L);
;*** 712	-----------------------    *((volatile unsigned *)C$1+150L) = 32u;
;*** 712	-----------------------    *((volatile unsigned *)C$1+151L) = 0xffdfu;
;*** 713	-----------------------    C$1[34] = (-896000L);
;*** 713	-----------------------    *((volatile unsigned *)C$1+164L) = 16u;
;*** 713	-----------------------    *((volatile unsigned *)C$1+165L) = 0xffefu;
;*** 715	-----------------------    C$1[27] = (-1139200L);
;*** 715	-----------------------    *((volatile unsigned *)C$1+178L) = 8u;
;*** 715	-----------------------    *((volatile unsigned *)C$1+179L) = 0xfff7u;
;*** 716	-----------------------    C$1[20] = (-1408000L);
;*** 716	-----------------------    *((volatile unsigned *)C$1+192L) = 4u;
;*** 716	-----------------------    *((volatile unsigned *)C$1+193L) = 0xfffbu;
;*** 717	-----------------------    C$1[13] = (-1664000L);
;*** 717	-----------------------    *((volatile unsigned *)C$1+206L) = 2u;
;*** 717	-----------------------    *((volatile unsigned *)C$1+207L) = 0xfffdu;
;*** 718	-----------------------    (*(volatile struct _sensor_variable *)C$1).iq7weight = (-2048000L);
;*** 718	-----------------------    *((volatile unsigned *)C$1+220L) = 1u;
;*** 718	-----------------------    *((volatile unsigned *)C$1+221L) = 0xfffeu;
;*** 718	-----------------------    return;
	.dwpsn	"sensor.c",700,3
        MOVL      XAR5,#2048000         ; |700| 
        MOVB      XAR0,#222             ; |700| 
        MOVL      XAR4,#_g_sen          ; |700| 
        MOVL      *+XAR4[AR0],XAR5      ; |700| 
	.dwpsn	"sensor.c",700,41
        MOVB      XAR0,#10              ; |700| 
        MOV       *+XAR4[AR0],#32768    ; |700| 
	.dwpsn	"sensor.c",700,78
        MOVB      XAR0,#11              ; |700| 
        MOV       *+XAR4[AR0],#32767    ; |700| 
	.dwpsn	"sensor.c",701,3
        MOVB      XAR0,#208             ; |701| 
        MOVL      XAR5,#1664000         ; |701| 
        MOVL      *+XAR4[AR0],XAR5      ; |701| 
	.dwpsn	"sensor.c",701,41
        MOVB      XAR0,#24              ; |701| 
        MOV       *+XAR4[AR0],#16384    ; |701| 
	.dwpsn	"sensor.c",701,78
        MOVB      XAR0,#25              ; |701| 
        MOV       *+XAR4[AR0],#49151    ; |701| 
	.dwpsn	"sensor.c",702,3
        MOVB      XAR0,#194             ; |702| 
        MOVL      XAR5,#1408000         ; |702| 
        MOVL      *+XAR4[AR0],XAR5      ; |702| 
	.dwpsn	"sensor.c",702,41
        MOVB      XAR0,#38              ; |702| 
        MOV       *+XAR4[AR0],#8192     ; |702| 
	.dwpsn	"sensor.c",702,78
        MOVB      XAR0,#39              ; |702| 
        MOV       *+XAR4[AR0],#57343    ; |702| 
	.dwpsn	"sensor.c",703,3
        MOVB      XAR0,#180             ; |703| 
        MOVL      XAR5,#1139200         ; |703| 
        MOVL      *+XAR4[AR0],XAR5      ; |703| 
	.dwpsn	"sensor.c",703,41
        MOVB      XAR0,#52              ; |703| 
        MOV       *+XAR4[AR0],#4096     ; |703| 
	.dwpsn	"sensor.c",703,78
        MOVB      XAR0,#53              ; |703| 
        MOV       *+XAR4[AR0],#61439    ; |703| 
	.dwpsn	"sensor.c",705,3
        MOVB      XAR0,#166             ; |705| 
        MOVL      XAR5,#896000          ; |705| 
        MOVL      *+XAR4[AR0],XAR5      ; |705| 
	.dwpsn	"sensor.c",705,41
        MOVB      XAR0,#66              ; |705| 
        MOV       *+XAR4[AR0],#2048     ; |705| 
	.dwpsn	"sensor.c",705,78
        MOVB      XAR0,#67              ; |705| 
        MOV       *+XAR4[AR0],#63487    ; |705| 
	.dwpsn	"sensor.c",706,3
        MOVB      XAR0,#152             ; |706| 
        MOVL      XAR5,#512000          ; |706| 
        MOVL      *+XAR4[AR0],XAR5      ; |706| 
	.dwpsn	"sensor.c",706,41
        MOVB      XAR0,#80              ; |706| 
        MOV       *+XAR4[AR0],#1024     ; |706| 
	.dwpsn	"sensor.c",706,78
        MOVB      XAR0,#81              ; |706| 
        MOV       *+XAR4[AR0],#64511    ; |706| 
	.dwpsn	"sensor.c",707,3
        MOVB      XAR0,#138             ; |707| 
        MOVL      XAR5,#320000          ; |707| 
        MOVL      *+XAR4[AR0],XAR5      ; |707| 
	.dwpsn	"sensor.c",707,40
        MOVB      XAR0,#94              ; |707| 
        MOV       *+XAR4[AR0],#512      ; |707| 
	.dwpsn	"sensor.c",707,76
        MOVB      XAR0,#95              ; |707| 
        MOV       *+XAR4[AR0],#65023    ; |707| 
	.dwpsn	"sensor.c",708,3
        MOVB      XAR0,#124             ; |708| 
        MOVL      XAR5,#64000           ; |708| 
        MOVL      *+XAR4[AR0],XAR5      ; |708| 
	.dwpsn	"sensor.c",708,39
        MOVB      XAR0,#108             ; |708| 
        MOV       *+XAR4[AR0],#256      ; |708| 
	.dwpsn	"sensor.c",708,75
        MOVB      XAR0,#109             ; |708| 
        MOV       *+XAR4[AR0],#65279    ; |708| 
	.dwpsn	"sensor.c",710,3
        SETC      SXM
        MOV       ACC,#-125 << 9
        MOVB      XAR0,#110             ; |710| 
        MOVL      *+XAR4[AR0],ACC       ; |710| 
	.dwpsn	"sensor.c",710,41
        MOVB      XAR0,#122             ; |710| 
        MOV       *+XAR4[AR0],#128      ; |710| 
	.dwpsn	"sensor.c",710,77
        MOVB      XAR0,#123             ; |710| 
        MOV       *+XAR4[AR0],#65407    ; |710| 
	.dwpsn	"sensor.c",711,3
        MOVB      XAR0,#96              ; |711| 
        MOV       ACC,#-625 << 9
        MOVL      *+XAR4[AR0],ACC       ; |711| 
	.dwpsn	"sensor.c",711,41
        MOVB      XAR0,#136             ; |711| 
        MOV       *+XAR4[AR0],#64       ; |711| 
	.dwpsn	"sensor.c",711,77
        MOVB      XAR0,#137             ; |711| 
        MOV       *+XAR4[AR0],#65471    ; |711| 
	.dwpsn	"sensor.c",712,3
        MOVB      XAR0,#82              ; |712| 
        MOV       ACC,#-125 << 12
        MOVL      *+XAR4[AR0],ACC       ; |712| 
	.dwpsn	"sensor.c",712,41
        MOVB      XAR0,#150             ; |712| 
        MOV       *+XAR4[AR0],#32       ; |712| 
	.dwpsn	"sensor.c",712,78
        MOVB      XAR0,#151             ; |712| 
        MOV       *+XAR4[AR0],#65503    ; |712| 
	.dwpsn	"sensor.c",713,3
        MOVB      XAR0,#68              ; |713| 
        MOV       ACC,#-875 << 10
        MOVL      *+XAR4[AR0],ACC       ; |713| 
	.dwpsn	"sensor.c",713,41
        MOVB      XAR0,#164             ; |713| 
        MOV       *+XAR4[AR0],#16       ; |713| 
	.dwpsn	"sensor.c",713,78
        MOVB      XAR0,#165             ; |713| 
        MOV       *+XAR4[AR0],#65519    ; |713| 
	.dwpsn	"sensor.c",715,3
        MOVB      XAR0,#54              ; |715| 
        MOV       ACC,#-2225 << 9
        MOVL      *+XAR4[AR0],ACC       ; |715| 
	.dwpsn	"sensor.c",715,41
        MOVB      XAR0,#178             ; |715| 
        MOV       *+XAR4[AR0],#8        ; |715| 
	.dwpsn	"sensor.c",715,78
        MOVB      XAR0,#179             ; |715| 
        MOV       *+XAR4[AR0],#65527    ; |715| 
	.dwpsn	"sensor.c",716,3
        MOVB      XAR0,#40              ; |716| 
        MOV       ACC,#-1375 << 10
        MOVL      *+XAR4[AR0],ACC       ; |716| 
	.dwpsn	"sensor.c",716,41
        MOVB      XAR0,#192             ; |716| 
        MOV       *+XAR4[AR0],#4        ; |716| 
	.dwpsn	"sensor.c",716,78
        MOVB      XAR0,#193             ; |716| 
        MOV       *+XAR4[AR0],#65531    ; |716| 
	.dwpsn	"sensor.c",717,3
        MOVB      XAR0,#26              ; |717| 
        MOV       ACC,#-1625 << 10
        MOVL      *+XAR4[AR0],ACC       ; |717| 
	.dwpsn	"sensor.c",717,41
        MOVB      XAR0,#206             ; |717| 
        MOV       *+XAR4[AR0],#2        ; |717| 
	.dwpsn	"sensor.c",717,78
        MOVB      XAR0,#207             ; |717| 
        MOV       *+XAR4[AR0],#65533    ; |717| 
	.dwpsn	"sensor.c",718,3
        MOVB      XAR0,#12              ; |718| 
        MOV       ACC,#-125 << 14
        MOVL      *+XAR4[AR0],ACC       ; |718| 
	.dwpsn	"sensor.c",718,41
        MOVB      XAR0,#220             ; |718| 
        MOV       *+XAR4[AR0],#1        ; |718| 
	.dwpsn	"sensor.c",718,78
        MOVB      XAR0,#221             ; |718| 
        MOV       *+XAR4[AR0],#65534    ; |718| 
	.dwpsn	"sensor.c",724,1
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs

DW$115	.dwtag  DW_TAG_loop
	.dwattr DW$115, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L28:1:1729866709")
	.dwattr DW$115, DW_AT_begin_file("sensor.c")
	.dwattr DW$115, DW_AT_begin_line(0x2b6)
	.dwattr DW$115, DW_AT_end_line(0x2b7)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_sen_vari_init$2$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_sen_vari_init$2$E)
	.dwendtag DW$115

	.dwattr DW$110, DW_AT_end_file("sensor.c")
	.dwattr DW$110, DW_AT_end_line(0x2d4)
	.dwattr DW$110, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$110

	.sect	".text"

DW$117	.dwtag  DW_TAG_subprogram, DW_AT_name("cross_check"), DW_AT_symbol_name("_cross_check$0")
	.dwattr DW$117, DW_AT_low_pc(_cross_check$0)
	.dwattr DW$117, DW_AT_high_pc(0x00)
	.dwattr DW$117, DW_AT_begin_file("sensor.c")
	.dwattr DW$117, DW_AT_begin_line(0x220)
	.dwattr DW$117, DW_AT_begin_column(0x0e)
	.dwpsn	"sensor.c",545,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _cross_check                  FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  4 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_cross_check$0:
;*** 546	-----------------------    state = 0u;
;*** 547	-----------------------    condition1 = 0u;
;*** 548	-----------------------    condition2 = 0u;
;*** 549	-----------------------    condition3 = 0u;
;*** 551	-----------------------    C$5 = g_shift.u16sen_enable;
;*** 551	-----------------------    if ( C$5&0xfu ) goto g5;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#4
	.dwcfa	0x1d, -8
;* PL    assigned to C$2
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$118, DW_AT_type(*DW$T$12)
	.dwattr DW$118, DW_AT_location[DW_OP_reg2]
;* AR4   assigned to C$3
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$119, DW_AT_type(*DW$T$158)
	.dwattr DW$119, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$120	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$120, DW_AT_type(*DW$T$133)
	.dwattr DW$120, DW_AT_location[DW_OP_reg12]
;* AL    assigned to C$5
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$121, DW_AT_type(*DW$T$11)
	.dwattr DW$121, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to K$52
DW$122	.dwtag  DW_TAG_variable, DW_AT_name("K$52"), DW_AT_symbol_name("K$52")
	.dwattr DW$122, DW_AT_type(*DW$T$152)
	.dwattr DW$122, DW_AT_location[DW_OP_reg12]
DW$123	.dwtag  DW_TAG_variable, DW_AT_name("state"), DW_AT_symbol_name("_state")
	.dwattr DW$123, DW_AT_type(*DW$T$125)
	.dwattr DW$123, DW_AT_location[DW_OP_breg20 -1]
DW$124	.dwtag  DW_TAG_variable, DW_AT_name("condition1"), DW_AT_symbol_name("_condition1")
	.dwattr DW$124, DW_AT_type(*DW$T$125)
	.dwattr DW$124, DW_AT_location[DW_OP_breg20 -2]
DW$125	.dwtag  DW_TAG_variable, DW_AT_name("condition2"), DW_AT_symbol_name("_condition2")
	.dwattr DW$125, DW_AT_type(*DW$T$125)
	.dwattr DW$125, DW_AT_location[DW_OP_breg20 -3]
DW$126	.dwtag  DW_TAG_variable, DW_AT_name("condition3"), DW_AT_symbol_name("_condition3")
	.dwattr DW$126, DW_AT_type(*DW$T$125)
	.dwattr DW$126, DW_AT_location[DW_OP_breg20 -4]
	.dwpsn	"sensor.c",546,19
        MOV       *-SP[1],#0            ; |546| 
	.dwpsn	"sensor.c",547,19
        MOV       *-SP[2],#0            ; |547| 
	.dwpsn	"sensor.c",548,19
        MOV       *-SP[3],#0            ; |548| 
	.dwpsn	"sensor.c",549,19
        MOV       *-SP[4],#0            ; |549| 
	.dwpsn	"sensor.c",551,3
        MOVW      DP,#_g_shift
        MOV       AL,@_g_shift          ; |551| 
        AND       AH,AL,#0x000f         ; |551| 
        BF        L30,NEQ               ; |551| 
        ; branchcc occurs ; |551| 
;*** 554	-----------------------    if ( C$5&0xf000u ) goto g4;
	.dwpsn	"sensor.c",554,8
        AND       AL,AL,#0xf000         ; |554| 
        BF        L29,NEQ               ; |554| 
        ; branchcc occurs ; |554| 
;*** 557	-----------------------    state = 9u;
;*** 557	-----------------------    goto g6;
	.dwpsn	"sensor.c",557,4
        MOV       *-SP[1],#9            ; |557| 
        BF        L31,UNC               ; |557| 
        ; branch occurs ; |557| 
L29:    
;***	-----------------------g4:
;*** 555	-----------------------    state = 9u-g_shift.u16sen_state;
;*** 555	-----------------------    goto g6;
	.dwpsn	"sensor.c",555,4
        MOVB      AL,#9                 ; |555| 
        SUB       AL,@_g_shift+1        ; |555| 
        MOV       *-SP[1],AL            ; |555| 
        BF        L31,UNC               ; |555| 
        ; branch occurs ; |555| 
L30:    
;***	-----------------------g5:
;*** 552	-----------------------    state = g_shift.u16sen_state+9u;
	.dwpsn	"sensor.c",552,4
        MOV       AL,@_g_shift+1        ; |552| 
        ADDB      AL,#9                 ; |552| 
        MOV       *-SP[1],AL            ; |552| 
L31:    
;***	-----------------------g6:
;*** 559	-----------------------    C$4 = &state_table[0];
;*** 559	-----------------------    condition1 = (g_pos.u16state&C$4[state]) == C$4[state];
	.dwpsn	"sensor.c",559,3
        MOVZ      AR0,*-SP[1]           ; |559| 
        MOVZ      AR1,*-SP[1]           ; |559| 
        MOVL      XAR4,#_state_table    ; |559| 
        MOVB      AH,#0
        MOVW      DP,#_g_pos+9
        MOV       AL,*+XAR4[AR1]        ; |559| 
        AND       AL,@_g_pos+9          ; |559| 
        CMP       AL,*+XAR4[AR0]        ; |559| 
        BF        L32,NEQ               ; |559| 
        ; branchcc occurs ; |559| 
        MOVB      AH,#1                 ; |559| 
L32:    
;*** 560	-----------------------    condition2 = (g_pos.u16state&C$4[state-1]) == C$4[state-1];
        MOV       *-SP[2],AH            ; |559| 
	.dwpsn	"sensor.c",560,3
        MOV       AL,*-SP[1]            ; |560| 
        ADDB      AL,#-1
        MOVZ      AR0,AL                ; |560| 
        MOV       AL,*-SP[1]            ; |560| 
        ADDB      AL,#-1
        MOVZ      AR1,AL                ; |560| 
        MOVB      AH,#0
        MOV       AL,*+XAR4[AR1]        ; |560| 
        AND       AL,@_g_pos+9          ; |560| 
        CMP       AL,*+XAR4[AR0]        ; |560| 
        BF        L33,NEQ               ; |560| 
        ; branchcc occurs ; |560| 
        MOVB      AH,#1                 ; |560| 
L33:    
;*** 561	-----------------------    condition3 = (g_pos.u16state&C$4[state+1]) == C$4[state+1];
        MOV       *-SP[3],AH            ; |560| 
	.dwpsn	"sensor.c",561,3
        MOV       AL,*-SP[1]            ; |561| 
        ADDB      AL,#1                 ; |561| 
        MOVZ      AR0,AL                ; |561| 
        MOV       AL,*-SP[1]            ; |561| 
        ADDB      AL,#1                 ; |561| 
        MOVZ      AR1,AL                ; |561| 
        MOVB      AH,#0
        MOV       AL,*+XAR4[AR1]        ; |561| 
        AND       AL,@_g_pos+9          ; |561| 
        CMP       AL,*+XAR4[AR0]        ; |561| 
        BF        L34,NEQ               ; |561| 
        ; branchcc occurs ; |561| 
        MOVB      AH,#1                 ; |561| 
L34:    
;*** 562	-----------------------    if ( condition1 ) goto g18;
        MOV       *-SP[4],AH            ; |561| 
	.dwpsn	"sensor.c",562,3
        MOV       AL,*-SP[2]            ; |562| 
        BF        L38,NEQ               ; |562| 
        ; branchcc occurs ; |562| 
;*** 562	-----------------------    if ( condition2 ) goto g18;
        MOV       AL,*-SP[3]            ; |562| 
        BF        L38,NEQ               ; |562| 
        ; branchcc occurs ; |562| 
;*** 562	-----------------------    if ( condition3 ) goto g18;
        MOV       AL,*-SP[4]            ; |562| 
        BF        L38,NEQ               ; |562| 
        ; branchcc occurs ; |562| 
;*** 572	-----------------------    if ( !(*&g_Flag&0x8u) ) goto g17;
	.dwpsn	"sensor.c",572,8
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#3           ; |572| 
        BF        L37,NTC               ; |572| 
        ; branchcc occurs ; |572| 
;*** 574	-----------------------    C$3 = &GpioDataRegs;
;*** 574	-----------------------    ((volatile unsigned *)C$3)[3] |= 0x800u;
;*** 575	-----------------------    *(&GpioDataRegs+3L) |= 0x200u;
;*** 576	-----------------------    if ( !(*&g_Flag&0x2000u) ) goto g12;
	.dwpsn	"sensor.c",574,4
        MOVL      XAR4,#_GpioDataRegs   ; |574| 
        OR        *+XAR4[3],#0x0800     ; |574| 
	.dwpsn	"sensor.c",575,4
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x0200 ; |575| 
	.dwpsn	"sensor.c",576,4
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#13          ; |576| 
        BF        L35,NTC               ; |576| 
        ; branchcc occurs ; |576| 
;*** 576	-----------------------    *((volatile struct _GPBDAT_BITS *)C$3+10L);
;*** 576	-----------------------    *(&GpioDataRegs+10L) = *(&GpioDataRegs+10L)|2u;
;*** 576	-----------------------    *(&GpioDataRegs+3L) = *(&GpioDataRegs+3L)|0x8000u;
	.dwpsn	"sensor.c",576,27
        MOVB      XAR0,#10              ; |576| 
        MOVW      DP,#_GpioDataRegs+10
        MOV       AL,*+XAR4[AR0]        ; |576| 
        OR        @_GpioDataRegs+10,#0x0002 ; |576| 
        OR        @_GpioDataRegs+3,#0x8000 ; |576| 
L35:    
;***	-----------------------g12:
;*** 578	-----------------------    g_q15cross_dist = C$2 = __IQmpy(RMotor.iq15Cross_Check_Dist+LMotor.iq15Cross_Check_Dist, 16384L, 15);
;*** 579	-----------------------    if ( C$2 <= 4587520L ) goto g20;
	.dwpsn	"sensor.c",578,4
        MOVW      DP,#_LMotor+30
        MOVL      ACC,@_LMotor+30       ; |578| 
        MOVL      XAR4,#16384           ; |578| 
        MOVW      DP,#_RMotor+30
        ADDL      ACC,@_RMotor+30       ; |578| 
        MOVL      XT,ACC                ; |578| 
        IMPYL     P,XT,XAR4             ; |578| 
        MOVL      XT,ACC                ; |578| 
        MOVW      DP,#_g_q15cross_dist
        QMPYL     ACC,XT,XAR4           ; |578| 
        ASR64     ACC:P,#15             ; |578| 
        MOVL      @_g_q15cross_dist,P   ; |578| 
	.dwpsn	"sensor.c",579,4
        MOV       AL,#0
        MOV       AH,#70
        CMPL      ACC,P                 ; |579| 
        BF        L39,GEQ               ; |579| 
        ; branchcc occurs ; |579| 
;*** 581	-----------------------    *(&GpioDataRegs+5L) |= 0x800u;
;*** 582	-----------------------    *(&GpioDataRegs+5L) |= 0x200u;
;*** 583	-----------------------    K$52 = &search_info[0];
;*** 583	-----------------------    if ( (K$52[(long)U16_turnmark_cnt]).int32cross_check_dist ) goto g16;
	.dwpsn	"sensor.c",581,5
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0800 ; |581| 
	.dwpsn	"sensor.c",582,5
        OR        @_GpioDataRegs+5,#0x0200 ; |582| 
	.dwpsn	"sensor.c",583,5
        MOVL      XAR4,#_search_info    ; |583| 
        MOVL      XAR5,XAR4             ; |583| 
        MOV       T,#26                 ; |583| 
        MOVW      DP,#_U16_turnmark_cnt
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |583| 
        ADDL      XAR5,ACC
        MOVB      XAR0,#8               ; |583| 
        MOVL      ACC,*+XAR5[AR0]       ; |583| 
        BF        L36,NEQ               ; |583| 
        ; branchcc occurs ; |583| 
;*** 583	-----------------------    if ( !(*&g_Flag&0x1000u) ) goto g16;
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#12          ; |583| 
        BF        L36,NTC               ; |583| 
        ; branchcc occurs ; |583| 
;*** 584	-----------------------    (K$52[(long)U16_turnmark_cnt]).int32cross_check_dist = (__IQmpy(RMotor.iq15GoneDist+LMotor.iq15GoneDist, 16384L, 15)>>15)-140L;
	.dwpsn	"sensor.c",584,6
        MOVW      DP,#_LMotor+28
        MOVL      ACC,@_LMotor+28       ; |584| 
        MOVL      XAR5,#16384           ; |584| 
        MOVW      DP,#_RMotor+28
        SETC      SXM
        ADDL      ACC,@_RMotor+28       ; |584| 
        MOVL      XT,ACC                ; |584| 
        IMPYL     P,XT,XAR5             ; |584| 
        MOVL      XT,ACC                ; |584| 
        QMPYL     ACC,XT,XAR5           ; |584| 
        ASR64     ACC:P,#15             ; |584| 
        MOVL      ACC,P                 ; |584| 
        MOVW      DP,#_U16_turnmark_cnt
        SFR       ACC,15                ; |584| 
        SUBB      ACC,#140              ; |584| 
        MOV       T,#26                 ; |584| 
        MOVL      P,ACC                 ; |584| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |584| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[AR0],P         ; |584| 
L36:    
;***	-----------------------g16:
;*** 586	-----------------------    *&g_Flag &= 0xfff7u;
;*** 587	-----------------------    g_rmark.u16turn_flag = 0u;
;*** 587	-----------------------    g_lmark.u16turn_flag = 0u;
;*** 588	-----------------------    g_rmark.iq17turnmark_dist = 0L;
;*** 588	-----------------------    g_lmark.iq17turnmark_dist = 0L;
;*** 589	-----------------------    LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = 0L;
;*** 590	-----------------------    g_q15cross_dist = 0L;
;*** 590	-----------------------    goto g20;
	.dwpsn	"sensor.c",586,5
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfff7      ; |586| 
	.dwpsn	"sensor.c",587,5
        MOVW      DP,#_g_rmark+10
        MOV       @_g_rmark+10,#0       ; |587| 
        MOVW      DP,#_g_lmark+10
        MOV       @_g_lmark+10,#0       ; |587| 
	.dwpsn	"sensor.c",588,5
        MOVB      ACC,#0
        MOVW      DP,#_g_rmark
        MOVL      @_g_rmark,ACC         ; |588| 
        MOVW      DP,#_g_lmark
        MOVL      @_g_lmark,ACC         ; |588| 
	.dwpsn	"sensor.c",589,5
        MOVW      DP,#_RMotor+30
        MOVL      @_RMotor+30,ACC       ; |589| 
        MOVW      DP,#_LMotor+30
        MOVL      @_LMotor+30,ACC       ; |589| 
	.dwpsn	"sensor.c",590,5
        MOVW      DP,#_g_q15cross_dist
        MOVL      @_g_q15cross_dist,ACC ; |590| 
        BF        L39,UNC               ; |590| 
        ; branch occurs ; |590| 
L37:    
;***	-----------------------g17:
;*** 597	-----------------------    LMotor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = 0L;
;*** 598	-----------------------    g_q15cross_dist = 0L;
;*** 598	-----------------------    goto g20;
	.dwpsn	"sensor.c",597,4
        MOVB      ACC,#0
        MOVW      DP,#_RMotor+30
        MOVL      @_RMotor+30,ACC       ; |597| 
        MOVW      DP,#_LMotor+30
        MOVL      @_LMotor+30,ACC       ; |597| 
	.dwpsn	"sensor.c",598,4
        MOVW      DP,#_g_q15cross_dist
        MOVL      @_g_q15cross_dist,ACC ; |598| 
        BF        L39,UNC               ; |598| 
        ; branch occurs ; |598| 
L38:    
;***	-----------------------g18:
;*** 564	-----------------------    if ( *&g_Flag&0x8u ) goto g20;
	.dwpsn	"sensor.c",564,4
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#3           ; |564| 
        BF        L39,TC                ; |564| 
        ; branchcc occurs ; |564| 
;*** 566	-----------------------    *&g_Flag |= 0x8u;
;***	-----------------------g20:
;*** 600	-----------------------    return;
	.dwpsn	"sensor.c",566,5
        OR        @_g_Flag,#0x0008      ; |566| 
	.dwpsn	"sensor.c",600,3
L39:    
	.dwpsn	"sensor.c",601,2
        SUBB      SP,#4
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$117, DW_AT_end_file("sensor.c")
	.dwattr DW$117, DW_AT_end_line(0x259)
	.dwattr DW$117, DW_AT_end_column(0x02)
	.dwendentry
	.dwendtag DW$117

	.sect	".text"

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("position_enable"), DW_AT_symbol_name("_position_enable$0")
	.dwattr DW$127, DW_AT_low_pc(_position_enable$0)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("sensor.c")
	.dwattr DW$127, DW_AT_begin_line(0x2fd)
	.dwattr DW$127, DW_AT_begin_column(0x0d)
	.dwpsn	"sensor.c",766,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _position_enable              FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_position_enable$0:
;*** 768	-----------------------    C$5 = &g_sen[0];
;*** 768	-----------------------    if ( g_pos.iq7temp_pos < (*C$5).iq7weight ) goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _ppos
DW$128	.dwtag  DW_TAG_formal_parameter, DW_AT_name("ppos"), DW_AT_symbol_name("_ppos")
	.dwattr DW$128, DW_AT_type(*DW$T$120)
	.dwattr DW$128, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$1
DW$129	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$129, DW_AT_type(*DW$T$143)
	.dwattr DW$129, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$130	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$130, DW_AT_type(*DW$T$143)
	.dwattr DW$130, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$131	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$131, DW_AT_type(*DW$T$143)
	.dwattr DW$131, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$132, DW_AT_type(*DW$T$143)
	.dwattr DW$132, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$5
DW$133	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$133, DW_AT_type(*DW$T$195)
	.dwattr DW$133, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",768,2
        MOVB      XAR0,#12              ; |768| 
        MOVL      XAR4,#_g_sen          ; |768| 
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]       ; |768| 
        CMPL      ACC,@_g_pos+6         ; |768| 
        BF        L40,GT                ; |768| 
        ; branchcc occurs ; |768| 
;*** 774	-----------------------    if ( g_pos.iq7temp_pos <= *((volatile long *)C$5+222L) ) goto g7;
	.dwpsn	"sensor.c",774,10
        MOVB      XAR0,#222             ; |774| 
        MOVL      ACC,*+XAR4[AR0]       ; |774| 
        CMPL      ACC,@_g_pos+6         ; |774| 
        BF        L41,GEQ               ; |774| 
        ; branchcc occurs ; |774| 
;*** 776	-----------------------    g_u16pos_cnt = 12u;
;*** 778	-----------------------    if ( g_pos.iq7temp_pos < *((volatile long *)C$5+26L) ) goto g12;
	.dwpsn	"sensor.c",776,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#12    ; |776| 
	.dwpsn	"sensor.c",778,9
        MOVB      XAR0,#26              ; |778| 
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]       ; |778| 
        CMPL      ACC,@_g_pos+6         ; |778| 
        BF        L43,GT                ; |778| 
        ; branchcc occurs ; |778| 
;***  	-----------------------    if ( g_pos.iq7temp_pos > *((volatile long *)C$5+208L) ) goto g9;
        MOVB      XAR0,#208
        MOVL      ACC,*+XAR4[AR0]
        CMPL      ACC,@_g_pos+6
        BF        L42,LT
        ; branchcc occurs
;***  	-----------------------    g_shift.u16sen_enable = 15u;
;***  	-----------------------    g_shift.u16sen_state = 8u;
;***  	-----------------------    if ( g_pos.iq7temp_pos >= *((volatile long *)C$5+40L) ) goto g14;
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15
        MOVB      XAR0,#40
        MOV       @_g_shift+1,#8
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]
        CMPL      ACC,@_g_pos+6
        BF        L45,LEQ
        ; branchcc occurs
;***  	-----------------------    goto g39;
        BF        L58,UNC
        ; branch occurs
L40:    
;***	-----------------------g6:
;*** 770	-----------------------    g_u16pos_cnt = 0u;
;*** 771	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 772	-----------------------    g_shift.u16sen_state = 8u;
	.dwpsn	"sensor.c",770,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#0     ; |770| 
	.dwpsn	"sensor.c",771,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |771| 
	.dwpsn	"sensor.c",772,9
        MOV       @_g_shift+1,#8        ; |772| 
L41:    
;***	-----------------------g7:
;*** 781	-----------------------    C$4 = &((volatile long *)g_sen)[0];
;*** 781	-----------------------    if ( g_pos.iq7temp_pos < C$4[13] ) goto g12;
	.dwpsn	"sensor.c",781,5
        MOVB      XAR0,#26              ; |781| 
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]       ; |781| 
        CMPL      ACC,@_g_pos+6         ; |781| 
        BF        L43,GT                ; |781| 
        ; branchcc occurs ; |781| 
;*** 787	-----------------------    if ( g_pos.iq7temp_pos <= C$4[104] ) goto g13;
	.dwpsn	"sensor.c",787,7
        MOVB      XAR0,#208             ; |787| 
        MOVL      ACC,*+XAR4[AR0]       ; |787| 
        CMPL      ACC,@_g_pos+6         ; |787| 
        BF        L44,GEQ               ; |787| 
        ; branchcc occurs ; |787| 
L42:    
;***	-----------------------g9:
;*** 789	-----------------------    g_u16pos_cnt = 12u;
;*** 791	-----------------------    C$3 = &((volatile long *)g_sen)[0];
;*** 791	-----------------------    if ( g_pos.iq7temp_pos < C$3[20] ) goto g39;
	.dwpsn	"sensor.c",789,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#12    ; |789| 
	.dwpsn	"sensor.c",791,9
        MOVB      XAR0,#40              ; |791| 
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]       ; |791| 
        CMPL      ACC,@_g_pos+6         ; |791| 
        BF        L58,GT                ; |791| 
        ; branchcc occurs ; |791| 
;***  	-----------------------    if ( g_pos.iq7temp_pos > C$3[97] ) goto g38;
        MOVB      XAR0,#194
        MOVL      ACC,*+XAR4[AR0]
        CMPL      ACC,@_g_pos+6
        BF        L57,LT
        ; branchcc occurs
;***  	-----------------------    g_shift.u16sen_enable = 15u;
;***  	-----------------------    g_shift.u16sen_state = 7u;
;***  	-----------------------    if ( g_pos.iq7temp_pos >= C$3[27] ) goto g16;
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15
        MOVB      XAR0,#54
        MOV       @_g_shift+1,#7
        MOVW      DP,#_g_pos+6
        MOVL      ACC,*+XAR4[AR0]
        CMPL      ACC,@_g_pos+6
        BF        L46,LEQ
        ; branchcc occurs
;***  	-----------------------    goto g37;
        BF        L56,UNC
        ; branch occurs
L43:    
;***	-----------------------g12:
;*** 783	-----------------------    g_u16pos_cnt = 0u;
;*** 784	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 785	-----------------------    g_shift.u16sen_state = 7u;
	.dwpsn	"sensor.c",783,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#0     ; |783| 
	.dwpsn	"sensor.c",784,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |784| 
	.dwpsn	"sensor.c",785,9
        MOV       @_g_shift+1,#7        ; |785| 
L44:    
;***	-----------------------g13:
;*** 794	-----------------------    if ( g_pos.iq7temp_pos < ((volatile long *)g_sen)[20] ) goto g39;
	.dwpsn	"sensor.c",794,5
        MOVW      DP,#_g_sen+40
        MOVL      ACC,@_g_sen+40        ; |794| 
        MOVW      DP,#_g_pos+6
        CMPL      ACC,@_g_pos+6         ; |794| 
        BF        L58,GT                ; |794| 
        ; branchcc occurs ; |794| 
L45:    
;***	-----------------------g14:
;*** 801	-----------------------    C$2 = &((volatile long *)g_sen)[0];
;*** 801	-----------------------    if ( g_pos.iq7temp_pos > C$2[97] ) goto g38;
	.dwpsn	"sensor.c",801,7
        MOVB      XAR0,#194             ; |801| 
        MOVL      ACC,*+XAR4[AR0]       ; |801| 
        CMPL      ACC,@_g_pos+6         ; |801| 
        BF        L57,LT                ; |801| 
        ; branchcc occurs ; |801| 
;*** 807	-----------------------    if ( g_pos.iq7temp_pos < C$2[27] ) goto g37;
	.dwpsn	"sensor.c",807,7
        MOVB      XAR0,#54              ; |807| 
        MOVL      ACC,*+XAR4[AR0]       ; |807| 
        CMPL      ACC,@_g_pos+6         ; |807| 
        BF        L56,GT                ; |807| 
        ; branchcc occurs ; |807| 
L46:    
;***	-----------------------g16:
;*** 813	-----------------------    C$1 = &((volatile long *)g_sen)[0];
;*** 813	-----------------------    if ( g_pos.iq7temp_pos > C$1[90] ) goto g36;
	.dwpsn	"sensor.c",813,7
        MOVB      XAR0,#180             ; |813| 
        MOVL      ACC,*+XAR4[AR0]       ; |813| 
        CMPL      ACC,@_g_pos+6         ; |813| 
        BF        L55,LT                ; |813| 
        ; branchcc occurs ; |813| 
;*** 819	-----------------------    if ( g_pos.iq7temp_pos < C$1[34] ) goto g35;
	.dwpsn	"sensor.c",819,7
        MOVB      XAR0,#68              ; |819| 
        MOVL      ACC,*+XAR4[AR0]       ; |819| 
        CMPL      ACC,@_g_pos+6         ; |819| 
        BF        L54,GT                ; |819| 
        ; branchcc occurs ; |819| 
;*** 825	-----------------------    if ( g_pos.iq7temp_pos > C$1[83] ) goto g34;
	.dwpsn	"sensor.c",825,7
        MOVB      XAR0,#166             ; |825| 
        MOVL      ACC,*+XAR4[AR0]       ; |825| 
        CMPL      ACC,@_g_pos+6         ; |825| 
        BF        L53,LT                ; |825| 
        ; branchcc occurs ; |825| 
;*** 831	-----------------------    if ( g_pos.iq7temp_pos < C$1[41] ) goto g33;
	.dwpsn	"sensor.c",831,10
        MOVB      XAR0,#82              ; |831| 
        MOVL      ACC,*+XAR4[AR0]       ; |831| 
        CMPL      ACC,@_g_pos+6         ; |831| 
        BF        L52,GT                ; |831| 
        ; branchcc occurs ; |831| 
;*** 837	-----------------------    if ( g_pos.iq7temp_pos > C$1[76] ) goto g32;
	.dwpsn	"sensor.c",837,10
        MOVB      XAR0,#152             ; |837| 
        MOVL      ACC,*+XAR4[AR0]       ; |837| 
        CMPL      ACC,@_g_pos+6         ; |837| 
        BF        L51,LT                ; |837| 
        ; branchcc occurs ; |837| 
;*** 843	-----------------------    if ( g_pos.iq7temp_pos < C$1[48] ) goto g31;
	.dwpsn	"sensor.c",843,10
        MOVB      XAR0,#96              ; |843| 
        MOVL      ACC,*+XAR4[AR0]       ; |843| 
        CMPL      ACC,@_g_pos+6         ; |843| 
        BF        L50,GT                ; |843| 
        ; branchcc occurs ; |843| 
;*** 849	-----------------------    if ( g_pos.iq7temp_pos > C$1[69] ) goto g30;
	.dwpsn	"sensor.c",849,10
        MOVB      XAR0,#138             ; |849| 
        MOVL      ACC,*+XAR4[AR0]       ; |849| 
        CMPL      ACC,@_g_pos+6         ; |849| 
        BF        L49,LT                ; |849| 
        ; branchcc occurs ; |849| 
;*** 855	-----------------------    if ( g_pos.iq7temp_pos <= C$1[55] ) goto g29;
	.dwpsn	"sensor.c",855,10
        MOVB      XAR0,#110             ; |855| 
        MOVL      ACC,*+XAR4[AR0]       ; |855| 
        CMPL      ACC,@_g_pos+6         ; |855| 
        BF        L48,GEQ               ; |855| 
        ; branchcc occurs ; |855| 
;*** 861	-----------------------    if ( g_pos.iq7temp_pos >= C$1[62] ) goto g28;
	.dwpsn	"sensor.c",861,10
        MOVB      XAR0,#124             ; |861| 
        MOVL      ACC,*+XAR4[AR0]       ; |861| 
        CMPL      ACC,@_g_pos+6         ; |861| 
        BF        L47,LEQ               ; |861| 
        ; branchcc occurs ; |861| 
;*** 868	-----------------------    if ( g_pos.iq7temp_pos >= ((volatile long *)g_sen)[62] ) goto g40;
	.dwpsn	"sensor.c",868,7
        MOVW      DP,#_g_sen+124
        MOVL      ACC,@_g_sen+124       ; |868| 
        MOVW      DP,#_g_pos+6
        CMPL      ACC,@_g_pos+6         ; |868| 
        BF        L59,LEQ               ; |868| 
        ; branchcc occurs ; |868| 
;*** 868	-----------------------    if ( g_pos.iq7temp_pos <= ((volatile long *)g_sen)[55] ) goto g40;
        MOVW      DP,#_g_sen+110
        MOVL      ACC,@_g_sen+110       ; |868| 
        MOVW      DP,#_g_pos+6
        CMPL      ACC,@_g_pos+6         ; |868| 
        BF        L59,GEQ               ; |868| 
        ; branchcc occurs ; |868| 
;*** 870	-----------------------    g_u16pos_cnt = 6u;
;*** 871	-----------------------    g_shift.u16sen_enable = 0u;
;*** 872	-----------------------    g_shift.u16sen_state = 0u;
;*** 872	-----------------------    goto g40;
	.dwpsn	"sensor.c",870,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#6     ; |870| 
	.dwpsn	"sensor.c",871,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#0          ; |871| 
	.dwpsn	"sensor.c",872,9
        MOV       @_g_shift+1,#0        ; |872| 
        BF        L59,UNC               ; |872| 
        ; branch occurs ; |872| 
L47:    
;***	-----------------------g28:
;*** 863	-----------------------    g_u16pos_cnt = 7u;
;*** 864	-----------------------    g_shift.u16sen_enable = 15u;
;*** 865	-----------------------    g_shift.u16sen_state = 1u;
;*** 866	-----------------------    goto g40;
	.dwpsn	"sensor.c",863,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#7     ; |863| 
	.dwpsn	"sensor.c",864,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |864| 
	.dwpsn	"sensor.c",865,9
        MOV       @_g_shift+1,#1        ; |865| 
	.dwpsn	"sensor.c",866,2
        BF        L59,UNC               ; |866| 
        ; branch occurs ; |866| 
L48:    
;***	-----------------------g29:
;*** 857	-----------------------    g_u16pos_cnt = 5u;
;*** 858	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 859	-----------------------    g_shift.u16sen_state = 1u;
;*** 860	-----------------------    goto g40;
	.dwpsn	"sensor.c",857,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#5     ; |857| 
	.dwpsn	"sensor.c",858,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |858| 
	.dwpsn	"sensor.c",859,9
        MOV       @_g_shift+1,#1        ; |859| 
	.dwpsn	"sensor.c",860,2
        BF        L59,UNC               ; |860| 
        ; branch occurs ; |860| 
L49:    
;***	-----------------------g30:
;*** 851	-----------------------    g_u16pos_cnt = 8u;
;*** 852	-----------------------    g_shift.u16sen_enable = 15u;
;*** 853	-----------------------    g_shift.u16sen_state = 2u;
;*** 854	-----------------------    goto g40;
	.dwpsn	"sensor.c",851,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#8     ; |851| 
	.dwpsn	"sensor.c",852,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |852| 
	.dwpsn	"sensor.c",853,9
        MOV       @_g_shift+1,#2        ; |853| 
	.dwpsn	"sensor.c",854,2
        BF        L59,UNC               ; |854| 
        ; branch occurs ; |854| 
L50:    
;***	-----------------------g31:
;*** 845	-----------------------    g_u16pos_cnt = 4u;
;*** 846	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 847	-----------------------    g_shift.u16sen_state = 2u;
;*** 848	-----------------------    goto g40;
	.dwpsn	"sensor.c",845,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#4     ; |845| 
	.dwpsn	"sensor.c",846,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |846| 
	.dwpsn	"sensor.c",847,9
        MOV       @_g_shift+1,#2        ; |847| 
	.dwpsn	"sensor.c",848,2
        BF        L59,UNC               ; |848| 
        ; branch occurs ; |848| 
L51:    
;***	-----------------------g32:
;*** 839	-----------------------    g_u16pos_cnt = 9u;
;*** 840	-----------------------    g_shift.u16sen_enable = 15u;
;*** 841	-----------------------    g_shift.u16sen_state = 3u;
;*** 842	-----------------------    goto g40;
	.dwpsn	"sensor.c",839,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#9     ; |839| 
	.dwpsn	"sensor.c",840,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |840| 
	.dwpsn	"sensor.c",841,9
        MOV       @_g_shift+1,#3        ; |841| 
	.dwpsn	"sensor.c",842,2
        BF        L59,UNC               ; |842| 
        ; branch occurs ; |842| 
L52:    
;***	-----------------------g33:
;*** 833	-----------------------    g_u16pos_cnt = 3u;
;*** 834	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 835	-----------------------    g_shift.u16sen_state = 3u;
;*** 836	-----------------------    goto g40;
	.dwpsn	"sensor.c",833,3
        MOVB      AL,#3                 ; |833| 
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,AL     ; |833| 
	.dwpsn	"sensor.c",834,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |834| 
	.dwpsn	"sensor.c",835,9
        MOV       @_g_shift+1,AL        ; |835| 
	.dwpsn	"sensor.c",836,2
        BF        L59,UNC               ; |836| 
        ; branch occurs ; |836| 
L53:    
;***	-----------------------g34:
;*** 827	-----------------------    g_u16pos_cnt = 10u;
;*** 828	-----------------------    g_shift.u16sen_enable = 15u;
;*** 829	-----------------------    g_shift.u16sen_state = 4u;
;*** 830	-----------------------    goto g40;
	.dwpsn	"sensor.c",827,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#10    ; |827| 
	.dwpsn	"sensor.c",828,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |828| 
	.dwpsn	"sensor.c",829,9
        MOV       @_g_shift+1,#4        ; |829| 
	.dwpsn	"sensor.c",830,2
        BF        L59,UNC               ; |830| 
        ; branch occurs ; |830| 
L54:    
;***	-----------------------g35:
;*** 821	-----------------------    g_u16pos_cnt = 2u;
;*** 822	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 823	-----------------------    g_shift.u16sen_state = 4u;
;*** 824	-----------------------    goto g40;
	.dwpsn	"sensor.c",821,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#2     ; |821| 
	.dwpsn	"sensor.c",822,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |822| 
	.dwpsn	"sensor.c",823,9
        MOV       @_g_shift+1,#4        ; |823| 
	.dwpsn	"sensor.c",824,2
        BF        L59,UNC               ; |824| 
        ; branch occurs ; |824| 
L55:    
;***	-----------------------g36:
;*** 815	-----------------------    g_u16pos_cnt = 11u;
;*** 816	-----------------------    g_shift.u16sen_enable = 15u;
;*** 817	-----------------------    g_shift.u16sen_state = 5u;
;*** 818	-----------------------    goto g40;
	.dwpsn	"sensor.c",815,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#11    ; |815| 
	.dwpsn	"sensor.c",816,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |816| 
	.dwpsn	"sensor.c",817,9
        MOV       @_g_shift+1,#5        ; |817| 
	.dwpsn	"sensor.c",818,2
        BF        L59,UNC               ; |818| 
        ; branch occurs ; |818| 
L56:    
;***	-----------------------g37:
;*** 809	-----------------------    g_u16pos_cnt = 1u;
;*** 810	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 811	-----------------------    g_shift.u16sen_state = 5u;
;*** 812	-----------------------    goto g40;
	.dwpsn	"sensor.c",809,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#1     ; |809| 
	.dwpsn	"sensor.c",810,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |810| 
	.dwpsn	"sensor.c",811,9
        MOV       @_g_shift+1,#5        ; |811| 
	.dwpsn	"sensor.c",812,2
        BF        L59,UNC               ; |812| 
        ; branch occurs ; |812| 
L57:    
;***	-----------------------g38:
;*** 803	-----------------------    g_u16pos_cnt = 12u;
;*** 804	-----------------------    g_shift.u16sen_enable = 15u;
;*** 805	-----------------------    g_shift.u16sen_state = 6u;
;*** 806	-----------------------    goto g40;
	.dwpsn	"sensor.c",803,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#12    ; |803| 
	.dwpsn	"sensor.c",804,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#15         ; |804| 
	.dwpsn	"sensor.c",805,9
        MOV       @_g_shift+1,#6        ; |805| 
	.dwpsn	"sensor.c",806,2
        BF        L59,UNC               ; |806| 
        ; branch occurs ; |806| 
L58:    
;***	-----------------------g39:
;*** 796	-----------------------    g_u16pos_cnt = 0u;
;*** 797	-----------------------    g_shift.u16sen_enable = 0xf000u;
;*** 798	-----------------------    g_shift.u16sen_state = 6u;
;***	-----------------------g40:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",796,3
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#0     ; |796| 
	.dwpsn	"sensor.c",797,9
        MOVW      DP,#_g_shift
        MOV       @_g_shift,#61440      ; |797| 
	.dwpsn	"sensor.c",798,9
        MOV       @_g_shift+1,#6        ; |798| 
L59:    
	.dwpsn	"sensor.c",877,1
        LRETR
        ; return occurs
	.dwattr DW$127, DW_AT_end_file("sensor.c")
	.dwattr DW$127, DW_AT_end_line(0x36d)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$127

	.sect	".text"
	.global	_make_position

DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("make_position"), DW_AT_symbol_name("_make_position")
	.dwattr DW$134, DW_AT_low_pc(_make_position)
	.dwattr DW$134, DW_AT_high_pc(0x00)
	.dwattr DW$134, DW_AT_begin_file("sensor.c")
	.dwattr DW$134, DW_AT_begin_line(0x2d6)
	.dwattr DW$134, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",727,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _make_position                FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_make_position:
;*** 728	-----------------------    K$1 = &g_pos;
;*** 728	-----------------------    (*K$1).iq17sum = 0L;
;*** 729	-----------------------    (*K$1).iq7sum_of_sec = 0L;
;*** 731	-----------------------    K$6 = &g_sen[0];
;*** 731	-----------------------    (*K$1).iq17sum += (K$6[(long)g_u16pos_cnt]).iq17_127_value;
;*** 732	-----------------------    (*K$1).iq17sum += (K$6[(long)(g_u16pos_cnt+1u)]).iq17_127_value;
;*** 733	-----------------------    (*K$1).iq17sum += (K$6[(long)(g_u16pos_cnt+2u)]).iq17_127_value;
;*** 734	-----------------------    (*K$1).iq17sum += (K$6[(long)(g_u16pos_cnt+3u)]).iq17_127_value;
;*** 736	-----------------------    (*K$1).iq7sum = g_pos.iq17sum>>10;
;*** 738	-----------------------    if ( (*K$1).iq17sum == 0L ) goto g7;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
;* AR7   assigned to C$1
DW$135	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$135, DW_AT_type(*DW$T$195)
	.dwattr DW$135, DW_AT_location[DW_OP_reg18]
;* AR4   assigned to C$2
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$136, DW_AT_type(*DW$T$195)
	.dwattr DW$136, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$137, DW_AT_type(*DW$T$195)
	.dwattr DW$137, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$138	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$138, DW_AT_type(*DW$T$195)
	.dwattr DW$138, DW_AT_location[DW_OP_reg12]
;* AR7   assigned to K$6
DW$139	.dwtag  DW_TAG_variable, DW_AT_name("K$6"), DW_AT_symbol_name("K$6")
	.dwattr DW$139, DW_AT_type(*DW$T$195)
	.dwattr DW$139, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to K$1
DW$140	.dwtag  DW_TAG_variable, DW_AT_name("K$1"), DW_AT_symbol_name("K$1")
	.dwattr DW$140, DW_AT_type(*DW$T$120)
	.dwattr DW$140, DW_AT_location[DW_OP_reg16]
;* AR1   assigned to K$1
DW$141	.dwtag  DW_TAG_variable, DW_AT_name("K$1"), DW_AT_symbol_name("K$1")
	.dwattr DW$141, DW_AT_type(*DW$T$120)
	.dwattr DW$141, DW_AT_location[DW_OP_reg6]
;* AR4   assigned to K$1
DW$142	.dwtag  DW_TAG_variable, DW_AT_name("K$1"), DW_AT_symbol_name("K$1")
	.dwattr DW$142, DW_AT_type(*DW$T$120)
	.dwattr DW$142, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",728,2
        MOVB      ACC,#0
        MOVL      XAR6,#_g_pos          ; |728| 
        MOVL      *+XAR6[0],ACC         ; |728| 
	.dwpsn	"sensor.c",729,2
        MOVL      *+XAR6[4],ACC         ; |729| 
	.dwpsn	"sensor.c",731,2
        MOVL      XAR7,#_g_sen          ; |731| 
        MOVL      XAR4,XAR7             ; |731| 
        MOVW      DP,#_g_u16pos_cnt
        MOV       T,#14                 ; |731| 
        MPYXU     ACC,T,@_g_u16pos_cnt  ; |731| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |731| 
        ADDL      *+XAR6[0],ACC         ; |731| 
	.dwpsn	"sensor.c",732,2
        MOV       AL,@_g_u16pos_cnt     ; |732| 
        MOVL      XAR4,XAR7             ; |732| 
        MOV       T,#14                 ; |732| 
        ADDB      AL,#1                 ; |732| 
        MPYXU     ACC,T,AL              ; |732| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |732| 
        ADDL      *+XAR6[0],ACC         ; |732| 
	.dwpsn	"sensor.c",733,2
        MOV       AL,@_g_u16pos_cnt     ; |733| 
        MOVL      XAR4,XAR7             ; |733| 
        MOV       T,#14                 ; |733| 
        ADDB      AL,#2                 ; |733| 
        MPYXU     ACC,T,AL              ; |733| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |733| 
        ADDL      *+XAR6[0],ACC         ; |733| 
	.dwpsn	"sensor.c",734,2
        MOV       AL,@_g_u16pos_cnt     ; |734| 
        MOVL      XAR4,XAR7             ; |734| 
        MOV       T,#14                 ; |734| 
        ADDB      AL,#3                 ; |734| 
        MPYXU     ACC,T,AL              ; |734| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |734| 
        ADDL      *+XAR6[0],ACC         ; |734| 
	.dwpsn	"sensor.c",736,2
        MOVW      DP,#_g_pos
        SETC      SXM
        MOVL      ACC,@_g_pos           ; |736| 
        SFR       ACC,10                ; |736| 
        MOVL      *+XAR6[2],ACC         ; |736| 
	.dwpsn	"sensor.c",738,2
        MOVL      ACC,*+XAR6[0]         ; |738| 
        BF        L62,EQ                ; |738| 
        ; branchcc occurs ; |738| 
;*** 740	-----------------------    cross_check();
;*** 742	-----------------------    C$4 = &K$6[(long)g_u16pos_cnt];
;*** 742	-----------------------    (*K$1).iq7sum_of_sec += __IQxmpy((*C$4).iq7weight, (*C$4).iq17_127_value, 15);
;*** 743	-----------------------    C$3 = &K$6[(long)(g_u16pos_cnt+1u)];
;*** 743	-----------------------    (*K$1).iq7sum_of_sec += __IQxmpy((*C$3).iq7weight, (*C$3).iq17_127_value, 15);
;*** 744	-----------------------    C$2 = &K$6[(long)(g_u16pos_cnt+2u)];
;*** 744	-----------------------    (*K$1).iq7sum_of_sec += __IQxmpy((*C$2).iq7weight, (*C$2).iq17_127_value, 15);
;*** 745	-----------------------    C$1 = &K$6[(long)(g_u16pos_cnt+3u)];
;*** 745	-----------------------    (*K$1).iq7sum_of_sec += __IQxmpy((*C$1).iq7weight, (*C$1).iq17_127_value, 15);
;*** 747	-----------------------    K$1 = K$1;
;*** 747	-----------------------    (*K$1).iq7temp_pos = _IQ7div(g_pos.iq7sum_of_sec, g_pos.iq7sum);
;*** 749	-----------------------    if ( (*K$1).iq7temp_pos >= 2048000L ) goto g5;
	.dwpsn	"sensor.c",740,3
        LCR       #_cross_check$0       ; |740| 
        ; call occurs [#_cross_check$0] ; |740| 
	.dwpsn	"sensor.c",742,3
        MOV       T,#14                 ; |742| 
        MOVW      DP,#_g_u16pos_cnt
        MOVL      ACC,XAR7              ; |742| 
        MPYXU     P,T,@_g_u16pos_cnt    ; |742| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |742| 
        MOVB      XAR0,#12              ; |742| 
        MOVL      XT,*+XAR4[AR0]        ; |742| 
        IMPYL     P,XT,*+XAR4[6]        ; |742| 
        QMPYL     ACC,XT,*+XAR4[6]      ; |742| 
        LSL64     ACC:P,#15             ; |742| 
        ADDL      *+XAR6[4],ACC         ; |742| 
	.dwpsn	"sensor.c",743,3
        MOV       AL,@_g_u16pos_cnt     ; |743| 
        MOV       T,#14                 ; |743| 
        ADDB      AL,#1                 ; |743| 
        MPYXU     P,T,AL                ; |743| 
        MOVL      ACC,XAR7              ; |743| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |743| 
        MOVL      XT,*+XAR4[AR0]        ; |743| 
        IMPYL     P,XT,*+XAR4[6]        ; |743| 
        QMPYL     ACC,XT,*+XAR4[6]      ; |743| 
        LSL64     ACC:P,#15             ; |743| 
        ADDL      *+XAR6[4],ACC         ; |743| 
	.dwpsn	"sensor.c",744,3
        MOV       AL,@_g_u16pos_cnt     ; |744| 
        MOV       T,#14                 ; |744| 
        ADDB      AL,#2                 ; |744| 
        MPYXU     P,T,AL                ; |744| 
        MOVL      ACC,XAR7              ; |744| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |744| 
        MOVL      XT,*+XAR4[AR0]        ; |744| 
        IMPYL     P,XT,*+XAR4[6]        ; |744| 
        QMPYL     ACC,XT,*+XAR4[6]      ; |744| 
        LSL64     ACC:P,#15             ; |744| 
        ADDL      *+XAR6[4],ACC         ; |744| 
	.dwpsn	"sensor.c",745,3
        MOV       AL,@_g_u16pos_cnt     ; |745| 
        MOV       T,#14                 ; |745| 
        ADDB      AL,#3                 ; |745| 
        MPYXU     P,T,AL                ; |745| 
        MOVL      ACC,XAR7              ; |745| 
        ADDL      ACC,P
        MOVL      XAR7,ACC              ; |745| 
        MOVL      XT,*+XAR7[AR0]        ; |745| 
        IMPYL     P,XT,*+XAR7[6]        ; |745| 
        QMPYL     ACC,XT,*+XAR7[6]      ; |745| 
        LSL64     ACC:P,#15             ; |745| 
        ADDL      *+XAR6[4],ACC         ; |745| 
	.dwpsn	"sensor.c",747,3
        MOVW      DP,#_g_pos+2
        MOVL      ACC,@_g_pos+2         ; |747| 
        MOVL      *-SP[2],ACC           ; |747| 
        MOVL      XAR1,XAR6             ; |747| 
        MOVL      ACC,@_g_pos+4         ; |747| 
        LCR       #__IQ7div             ; |747| 
        ; call occurs [#__IQ7div] ; |747| 
        MOVL      *+XAR1[6],ACC         ; |747| 
	.dwpsn	"sensor.c",749,3
        MOVL      XAR4,#2048000         ; |749| 
        MOVL      ACC,XAR4              ; |749| 
        CMPL      ACC,*+XAR1[6]         ; |749| 
        BF        L60,LEQ               ; |749| 
        ; branchcc occurs ; |749| 
;*** 752	-----------------------    if ( (*K$1).iq7temp_pos > (-2048000L) ) goto g6;
	.dwpsn	"sensor.c",752,8
        SETC      SXM
        MOV       ACC,#-125 << 14
        CMPL      ACC,*+XAR1[6]         ; |752| 
        BF        L61,LT                ; |752| 
        ; branchcc occurs ; |752| 
;*** 753	-----------------------    (*K$1).iq7temp_pos = (-2048000L);
;*** 753	-----------------------    goto g6;
	.dwpsn	"sensor.c",753,4
        MOV       PH,#65504
        MOV       PL,#49152
        MOVL      *+XAR1[6],P           ; |753| 
        BF        L61,UNC               ; |753| 
        ; branch occurs ; |753| 
L60:    
;***	-----------------------g5:
;*** 750	-----------------------    g_pos.iq7temp_pos = 2048000L;
	.dwpsn	"sensor.c",750,4
        MOVW      DP,#_g_pos+6
        MOVL      @_g_pos+6,XAR4        ; |750| 
L61:    
;***	-----------------------g6:
;*** 757	-----------------------    K$1 = &g_pos;
;*** 757	-----------------------    (*K$1).iq10temp_position = g_pos.iq7temp_pos<<3;
;*** 759	-----------------------    position_enable(K$1);
;***	-----------------------g7:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",757,3
        MOVW      DP,#_g_pos+6
        MOVL      ACC,@_g_pos+6         ; |757| 
        LSL       ACC,3                 ; |757| 
        MOVB      XAR0,#10              ; |757| 
        MOVL      XAR4,#_g_pos          ; |757| 
        MOVL      *+XAR4[AR0],ACC       ; |757| 
	.dwpsn	"sensor.c",759,3
        LCR       #_position_enable$0   ; |759| 
        ; call occurs [#_position_enable$0] ; |759| 
L62:    
	.dwpsn	"sensor.c",763,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$134, DW_AT_end_file("sensor.c")
	.dwattr DW$134, DW_AT_end_line(0x2fb)
	.dwattr DW$134, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$134

	.sect	".text"
	.global	_line_out_func

DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("line_out_func"), DW_AT_symbol_name("_line_out_func")
	.dwattr DW$143, DW_AT_low_pc(_line_out_func)
	.dwattr DW$143, DW_AT_high_pc(0x00)
	.dwattr DW$143, DW_AT_begin_file("sensor.c")
	.dwattr DW$143, DW_AT_begin_line(0x1b5)
	.dwattr DW$143, DW_AT_begin_column(0x05)
	.dwpsn	"sensor.c",438,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _line_out_func                FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_line_out_func:
;*** 439	-----------------------    if ( g_pos.iq17sum == 0L ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"sensor.c",439,2
        MOVW      DP,#_g_pos
        MOVL      ACC,@_g_pos           ; |439| 
        BF        L63,EQ                ; |439| 
        ; branchcc occurs ; |439| 
;*** 467	-----------------------    g_int32_lineout_cnt = 0uL;
;*** 467	-----------------------    return 0;
	.dwpsn	"sensor.c",467,3
        MOVB      ACC,#0
        MOVW      DP,#_g_int32_lineout_cnt
        MOVL      @_g_int32_lineout_cnt,ACC ; |467| 
        MOVB      AL,#0
        BF        L66,UNC               ; |467| 
        ; branch occurs ; |467| 
L63:    
;***	-----------------------g3:
;*** 441	-----------------------    ++g_int32_lineout_cnt;
;*** 442	-----------------------    if ( g_int32_lineout_cnt >= 1000uL ) goto g5;
	.dwpsn	"sensor.c",441,3
        MOVB      ACC,#1
        MOVW      DP,#_g_int32_lineout_cnt
        ADDL      @_g_int32_lineout_cnt,ACC ; |441| 
	.dwpsn	"sensor.c",442,9
        MOV       ACC,#1000             ; |442| 
        CMPL      ACC,@_g_int32_lineout_cnt ; |442| 
        BF        L64,LOS               ; |442| 
        ; branchcc occurs ; |442| 
;*** 442	-----------------------    return 0;
	.dwpsn	"sensor.c",442,42
        MOVB      AL,#0
        BF        L66,UNC               ; |442| 
        ; branch occurs ; |442| 
L64:    
;***	-----------------------g5:
;*** 444	-----------------------    g_int32_lineout_cnt = 0uL;
;*** 448	-----------------------    *&g_Flag &= 0xfffdu;
;*** 450	-----------------------    LMotor.iqTargetV = RMotor.iqTargetV = 0L;
;*** 451	-----------------------    LMotor.iqTargetA = RMotor.iqTargetA = 1048576000L;
;*** 453	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 455	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0ff0uL;
;*** 457	-----------------------    VFDPrintf("Line Out");
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
	.dwpsn	"sensor.c",444,3
        MOVB      ACC,#0
        MOVL      @_g_int32_lineout_cnt,ACC ; |444| 
	.dwpsn	"sensor.c",448,3
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffd      ; |448| 
	.dwpsn	"sensor.c",450,3
        MOVW      DP,#_RMotor+6
        MOVL      @_RMotor+6,ACC        ; |450| 
        MOVW      DP,#_LMotor+6
        MOVL      @_LMotor+6,ACC        ; |450| 
	.dwpsn	"sensor.c",451,3
        MOVW      DP,#_RMotor
        MOV       ACC,#32000 << 15
        MOVL      @_RMotor,ACC          ; |451| 
        MOVW      DP,#_LMotor
        MOVL      @_LMotor,ACC          ; |451| 
	.dwpsn	"sensor.c",453,9
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |453| 
	.dwpsn	"sensor.c",455,3
        MOVW      DP,#_GpioDataRegs
        AND       @_GpioDataRegs,#4080  ; |455| 
	.dwpsn	"sensor.c",457,3
        MOVL      XAR4,#FSL4            ; |457| 
        MOVL      *-SP[2],XAR4          ; |457| 
        LCR       #_VFDPrintf           ; |457| 
        ; call occurs [#_VFDPrintf] ; |457| 
L65:    
DW$L$_line_out_func$6$B:
;***	-----------------------g6:
;*** 459	-----------------------    goto g6;
	.dwpsn	"sensor.c",459,15
        BF        L65,UNC               ; |459| 
        ; branch occurs ; |459| 
DW$L$_line_out_func$6$E:
L66:    
	.dwpsn	"sensor.c",473,1
        SUBB      SP,#2                 ; |459| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$144	.dwtag  DW_TAG_loop
	.dwattr DW$144, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L65:1:1729866709")
	.dwattr DW$144, DW_AT_begin_file("sensor.c")
	.dwattr DW$144, DW_AT_begin_line(0x1cb)
	.dwattr DW$144, DW_AT_end_line(0x1ce)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_line_out_func$6$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_line_out_func$6$E)
	.dwendtag DW$144

	.dwattr DW$143, DW_AT_end_file("sensor.c")
	.dwattr DW$143, DW_AT_end_line(0x1d9)
	.dwattr DW$143, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$143

	.sect	".text"
	.global	_Sensor_Value

DW$146	.dwtag  DW_TAG_subprogram, DW_AT_name("Sensor_Value"), DW_AT_symbol_name("_Sensor_Value")
	.dwattr DW$146, DW_AT_low_pc(_Sensor_Value)
	.dwattr DW$146, DW_AT_high_pc(0x00)
	.dwattr DW$146, DW_AT_begin_file("sensor.c")
	.dwattr DW$146, DW_AT_begin_line(0x142)
	.dwattr DW$146, DW_AT_begin_column(0x10)
	.dwattr DW$146, DW_AT_TI_interrupt(0x01)
	.dwpsn	"sensor.c",323,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Sensor_Value                 FR SIZE:   6           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_Sensor_Value:
;*** 324	-----------------------    PieCtrlRegs.PIEACK.all = 1u;
;*** 325	-----------------------    GpioDataRegs.GPASET.all = 1L<<sen_arr[g_int32_sen_cnt];
;*** 327	-----------------------    C$1 = &adc_arr[0];
;*** 327	-----------------------    AdcRegs.ADCCHSELSEQ1.all = C$1[g_int32_sen_cnt];
;*** 328	-----------------------    AdcRegs.ADCCHSELSEQ2.all = C$1[g_int32_sen_cnt+8];
;*** 329	-----------------------    AdcRegs.ADCCHSELSEQ3.all = C$1[g_int32_sen_cnt];
;*** 330	-----------------------    AdcRegs.ADCCHSELSEQ4.all = C$1[g_int32_sen_cnt+8];
;*** 332	-----------------------    *(&AdcRegs+1L) |= 0x2000u;
;*** 332	-----------------------    return;
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        PUSH      AR1H:AR0H
	.dwcfa	0x80, 5, 2
	.dwcfa	0x80, 7, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR4
	.dwcfa	0x80, 12, 4
	.dwcfa	0x80, 13, 5
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR5
	.dwcfa	0x80, 14, 6
	.dwcfa	0x80, 15, 7
	.dwcfa	0x1d, -8
        CLRC      PAGE0,OVM
        CLRC      AMODE
;* AR4   assigned to C$1
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$147, DW_AT_type(*DW$T$133)
	.dwattr DW$147, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",324,2
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |324| 
	.dwpsn	"sensor.c",325,2
        MOVL      XAR4,#_sen_arr        ; |325| 
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |325| 
        ADDL      ACC,@_g_int32_sen_cnt ; |325| 
        MOVL      XAR4,ACC              ; |325| 
        MOVB      ACC,#1
        MOV       T,*+XAR4[0]           ; |325| 
        MOVW      DP,#_GpioDataRegs+2
        LSLL      ACC,T                 ; |325| 
        MOVL      @_GpioDataRegs+2,ACC  ; |325| 
	.dwpsn	"sensor.c",327,2
        MOVL      XAR4,#_adc_arr        ; |327| 
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |327| 
        ADDL      ACC,@_g_int32_sen_cnt ; |327| 
        MOVL      XAR5,ACC              ; |327| 
        MOVW      DP,#_AdcRegs+3
        MOV       AL,*+XAR5[0]          ; |327| 
        MOV       @_AdcRegs+3,AL        ; |327| 
	.dwpsn	"sensor.c",328,2
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |328| 
        ADDL      ACC,@_g_int32_sen_cnt ; |328| 
        MOVL      XAR5,ACC              ; |328| 
        MOVB      XAR0,#8               ; |328| 
        MOVW      DP,#_AdcRegs+4
        MOV       AL,*+XAR5[AR0]        ; |328| 
        MOV       @_AdcRegs+4,AL        ; |328| 
	.dwpsn	"sensor.c",329,2
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |329| 
        ADDL      ACC,@_g_int32_sen_cnt ; |329| 
        MOVL      XAR5,ACC              ; |329| 
        MOVW      DP,#_AdcRegs+5
        MOV       AL,*+XAR5[0]          ; |329| 
        MOV       @_AdcRegs+5,AL        ; |329| 
	.dwpsn	"sensor.c",330,2
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |330| 
        ADDL      ACC,@_g_int32_sen_cnt ; |330| 
        MOVL      XAR4,ACC              ; |330| 
        MOVW      DP,#_AdcRegs+6
        MOV       AL,*+XAR4[AR0]        ; |330| 
        MOV       @_AdcRegs+6,AL        ; |330| 
	.dwpsn	"sensor.c",332,2
        OR        @_AdcRegs+1,#0x2000   ; |332| 
	.dwpsn	"sensor.c",333,1
	.dwcfa	0x1d, -8
        MOVL      XAR5,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 14
        MOVL      XAR4,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 12
        POP       AR1H:AR0H
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 5
	.dwcfa	0xc0, 7
        NASP
        IRET
        ; return occurs
	.dwattr DW$146, DW_AT_end_file("sensor.c")
	.dwattr DW$146, DW_AT_end_line(0x14d)
	.dwattr DW$146, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$146

	.sect	".text"
	.global	_Handle

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("Handle"), DW_AT_symbol_name("_Handle")
	.dwattr DW$148, DW_AT_low_pc(_Handle)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("sensor.c")
	.dwattr DW$148, DW_AT_begin_line(0x36f)
	.dwattr DW$148, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",880,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Handle                       FR SIZE:   0           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_Handle:
;*** 881	-----------------------    if ( g_pos.iq10temp_position > 0L ) goto g5;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR6   assigned to v$3
DW$149	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$149, DW_AT_type(*DW$T$12)
	.dwattr DW$149, DW_AT_location[DW_OP_reg16]
;* AL    assigned to v$2
DW$150	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$150, DW_AT_type(*DW$T$12)
	.dwattr DW$150, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to v$1
DW$151	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$151, DW_AT_type(*DW$T$12)
	.dwattr DW$151, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",881,2
        MOVW      DP,#_g_pos+10
        MOVL      ACC,@_g_pos+10        ; |881| 
        BF        L69,GT                ; |881| 
        ; branchcc occurs ; |881| 
;*** 891	-----------------------    if ( g_pos.iq10temp_position < 0L ) goto g4;
	.dwpsn	"sensor.c",891,7
        MOVL      ACC,@_g_pos+10        ; |891| 
        BF        L67,LT                ; |891| 
        ; branchcc occurs ; |891| 
;*** 902	-----------------------    RMotor.iqHandle = 131072L;
;*** 903	-----------------------    LMotor.iqHandle = 131072L;
;*** 903	-----------------------    goto g6;
	.dwpsn	"sensor.c",902,3
        MOVL      XAR4,#131072          ; |902| 
        MOVW      DP,#_RMotor+12
        MOVL      @_RMotor+12,XAR4      ; |902| 
	.dwpsn	"sensor.c",903,3
        MOVW      DP,#_LMotor+12
        MOVL      @_LMotor+12,XAR4      ; |903| 
        BF        L71,UNC               ; |903| 
        ; branch occurs ; |903| 
L67:    
;***	-----------------------g4:
;*** 893	-----------------------    LMotor.iqHandle = v$1 = 131072L-__IQmpy(g_pos.iq10temp_position<<7, g_q17_handle_dec, 17);
;*** 894	-----------------------    v$3 = __IQmpy(g_pos.iq10temp_position<<7, g_q17_handle_acc, 17)+131072L;
;*** 896	-----------------------    RMotor.iqHandle = (v$1 <= 0L) ? 0L : v$3;
	.dwpsn	"sensor.c",893,3
        MOVL      ACC,@_g_pos+10        ; |893| 
        MOVW      DP,#_g_q17_handle_dec
        LSL       ACC,7                 ; |893| 
        MOVL      XAR4,#131072          ; |893| 
        MOVL      XT,ACC                ; |893| 
        IMPYL     P,XT,@_g_q17_handle_dec ; |893| 
        MOVL      XT,ACC                ; |893| 
        QMPYL     ACC,XT,@_g_q17_handle_dec ; |893| 
        LSL64     ACC:P,#15             ; |893| 
        SUBL      XAR4,ACC
        MOVW      DP,#_LMotor+12
        MOVL      @_LMotor+12,XAR4      ; |893| 
	.dwpsn	"sensor.c",894,3
        MOVW      DP,#_g_pos+10
        MOVL      ACC,@_g_pos+10        ; |894| 
        LSL       ACC,7                 ; |894| 
        MOVW      DP,#_g_q17_handle_acc
        MOVL      XT,ACC                ; |894| 
        IMPYL     P,XT,@_g_q17_handle_acc ; |894| 
        MOVL      XT,ACC                ; |894| 
        QMPYL     ACC,XT,@_g_q17_handle_acc ; |894| 
        LSL64     ACC:P,#15             ; |894| 
        ADD       ACC,#4 << 15          ; |894| 
        MOVL      XAR6,ACC              ; |894| 
	.dwpsn	"sensor.c",896,3
        MOVL      ACC,XAR4
        BF        L68,GT                ; |896| 
        ; branchcc occurs ; |896| 
        MOVB      XAR6,#0
L68:    
;*** 897	-----------------------    goto g6;
        MOVW      DP,#_RMotor+12
        MOVL      @_RMotor+12,XAR6      ; |896| 
	.dwpsn	"sensor.c",897,4
        BF        L71,UNC               ; |897| 
        ; branch occurs ; |897| 
L69:    
;***	-----------------------g5:
;*** 883	-----------------------    v$4 = 131072L-__IQmpy(g_pos.iq10temp_position<<7, g_q17_handle_acc, 17);
;*** 884	-----------------------    RMotor.iqHandle = v$2 = __IQmpy(g_pos.iq10temp_position<<7, g_q17_handle_dec, 17)+131072L;
;*** 886	-----------------------    LMotor.iqHandle = (v$2 <= 0L) ? 0L : v$4;
	.dwpsn	"sensor.c",883,3
        MOVL      ACC,@_g_pos+10        ; |883| 
        MOVW      DP,#_g_q17_handle_acc
        LSL       ACC,7                 ; |883| 
        MOVL      XAR4,#131072          ; |883| 
        MOVL      XT,ACC                ; |883| 
        IMPYL     P,XT,@_g_q17_handle_acc ; |883| 
        MOVL      XT,ACC                ; |883| 
        QMPYL     ACC,XT,@_g_q17_handle_acc ; |883| 
        LSL64     ACC:P,#15             ; |883| 
        SUBL      XAR4,ACC
	.dwpsn	"sensor.c",884,3
        MOVW      DP,#_g_pos+10
        MOVL      ACC,@_g_pos+10        ; |884| 
        LSL       ACC,7                 ; |884| 
        MOVW      DP,#_g_q17_handle_dec
        MOVL      XT,ACC                ; |884| 
        IMPYL     P,XT,@_g_q17_handle_dec ; |884| 
        MOVL      XT,ACC                ; |884| 
        QMPYL     ACC,XT,@_g_q17_handle_dec ; |884| 
        LSL64     ACC:P,#15             ; |884| 
        ADD       ACC,#4 << 15          ; |884| 
        MOVW      DP,#_RMotor+12
        MOVL      @_RMotor+12,ACC       ; |884| 
	.dwpsn	"sensor.c",886,3
        BF        L70,GT                ; |886| 
        ; branchcc occurs ; |886| 
        MOVB      XAR4,#0
L70:    
;***	-----------------------g6:
;***  	-----------------------    return;
        MOVW      DP,#_LMotor+12
        MOVL      @_LMotor+12,XAR4      ; |886| 
L71:    
	.dwpsn	"sensor.c",905,1
        LRETR
        ; return occurs
	.dwattr DW$148, DW_AT_end_file("sensor.c")
	.dwattr DW$148, DW_AT_end_line(0x389)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$148

	.sect	".text"
	.global	_F_TURNMARK

DW$152	.dwtag  DW_TAG_subprogram, DW_AT_name("F_TURNMARK"), DW_AT_symbol_name("_F_TURNMARK")
	.dwattr DW$152, DW_AT_low_pc(_F_TURNMARK)
	.dwattr DW$152, DW_AT_high_pc(0x00)
	.dwattr DW$152, DW_AT_begin_file("sensor.c")
	.dwattr DW$152, DW_AT_begin_line(0x28d)
	.dwattr DW$152, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",654,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_TURNMARK                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_TURNMARK:
;*** 655	-----------------------    read_mark_cnt_rom();
;*** 656	-----------------------    read_line_info_rom();
;*** 657	-----------------------    cnt = 0;
;*** 658	-----------------------    VFDPrintf("MARK:%ld", g_int32total_cnt);
;*** 660	-----------------------    DSP28x_usDelay(0x1312cfeuL);
;*** 661	-----------------------    VFDPrintf("        ");
;*** 663	-----------------------    if ( !(*(&GpioDataRegs+1)&0x10u) ) goto g10;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#6
	.dwcfa	0x1d, -10
;* AR3   assigned to K$19
DW$153	.dwtag  DW_TAG_variable, DW_AT_name("K$19"), DW_AT_symbol_name("K$19")
	.dwattr DW$153, DW_AT_type(*DW$T$152)
	.dwattr DW$153, DW_AT_location[DW_OP_reg10]
;* AR4   assigned to K$5
DW$154	.dwtag  DW_TAG_variable, DW_AT_name("K$5"), DW_AT_symbol_name("K$5")
	.dwattr DW$154, DW_AT_type(*DW$T$133)
	.dwattr DW$154, DW_AT_location[DW_OP_reg12]
	.dwpsn	"sensor.c",655,2
        LCR       #_read_mark_cnt_rom   ; |655| 
        ; call occurs [#_read_mark_cnt_rom] ; |655| 
	.dwpsn	"sensor.c",656,2
        LCR       #_read_line_info_rom  ; |656| 
        ; call occurs [#_read_line_info_rom] ; |656| 
	.dwpsn	"sensor.c",657,2
        MOVW      DP,#_cnt
        MOV       @_cnt,#0              ; |657| 
	.dwpsn	"sensor.c",658,2
        MOVW      DP,#_g_int32total_cnt
        MOVL      XAR4,#FSL5            ; |658| 
        MOVL      ACC,@_g_int32total_cnt ; |658| 
        MOVL      *-SP[2],XAR4          ; |658| 
        MOVL      *-SP[4],ACC           ; |658| 
        LCR       #_VFDPrintf           ; |658| 
        ; call occurs [#_VFDPrintf] ; |658| 
	.dwpsn	"sensor.c",660,2
        MOV       AL,#11518
        MOV       AH,#305
        LCR       #_DSP28x_usDelay      ; |660| 
        ; call occurs [#_DSP28x_usDelay] ; |660| 
	.dwpsn	"sensor.c",661,2
        MOVL      XAR4,#FSL6            ; |661| 
        MOVL      *-SP[2],XAR4          ; |661| 
        LCR       #_VFDPrintf           ; |661| 
        ; call occurs [#_VFDPrintf] ; |661| 
	.dwpsn	"sensor.c",663,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |663| 
        BF        L76,NTC               ; |663| 
        ; branchcc occurs ; |663| 
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$19 = &search_info[0];
        MOVL      XAR3,#_search_info
L72:    
DW$L$_F_TURNMARK$3$B:
;***	-----------------------g3:
;*** 666	-----------------------    DSP28x_usDelay(2699998uL);
;*** 668	-----------------------    K$5 = &GpioDataRegs+1L;
;*** 668	-----------------------    if ( !(*K$5&0x20u) ) goto g8;
	.dwpsn	"sensor.c",666,3
        MOV       AL,#13022
        MOV       AH,#41
        LCR       #_DSP28x_usDelay      ; |666| 
        ; call occurs [#_DSP28x_usDelay] ; |666| 
	.dwpsn	"sensor.c",668,3
        MOVL      XAR4,#_GpioDataRegs+1 ; |668| 
        TBIT      *+XAR4[0],#5          ; |668| 
        BF        L74,NTC               ; |668| 
        ; branchcc occurs ; |668| 
DW$L$_F_TURNMARK$3$E:
DW$L$_F_TURNMARK$4$B:
;*** 670	-----------------------    if ( !(*K$5&0x100u) ) goto g7;
	.dwpsn	"sensor.c",670,8
        TBIT      *+XAR4[0],#8          ; |670| 
        BF        L73,NTC               ; |670| 
        ; branchcc occurs ; |670| 
DW$L$_F_TURNMARK$4$E:
DW$L$_F_TURNMARK$5$B:
;*** 672	-----------------------    if ( *K$5&0x4000u ) goto g9;
	.dwpsn	"sensor.c",672,8
        TBIT      *+XAR4[0],#14         ; |672| 
        BF        L75,TC                ; |672| 
        ; branchcc occurs ; |672| 
DW$L$_F_TURNMARK$5$E:
DW$L$_F_TURNMARK$6$B:
;*** 672	-----------------------    cnt += 10;
;*** 672	-----------------------    goto g9;
	.dwpsn	"sensor.c",672,18
        MOVW      DP,#_cnt
        ADD       @_cnt,#10             ; |672| 
        BF        L75,UNC               ; |672| 
        ; branch occurs ; |672| 
DW$L$_F_TURNMARK$6$E:
L73:    
DW$L$_F_TURNMARK$7$B:
;***	-----------------------g7:
;*** 670	-----------------------    --cnt;
;*** 670	-----------------------    goto g9;
	.dwpsn	"sensor.c",670,18
        MOVW      DP,#_cnt
        DEC       @_cnt                 ; |670| 
        BF        L75,UNC               ; |670| 
        ; branch occurs ; |670| 
DW$L$_F_TURNMARK$7$E:
L74:    
DW$L$_F_TURNMARK$8$B:
;***	-----------------------g8:
;*** 668	-----------------------    ++cnt;
	.dwpsn	"sensor.c",668,13
        MOVW      DP,#_cnt
        INC       @_cnt                 ; |668| 
DW$L$_F_TURNMARK$8$E:
L75:    
DW$L$_F_TURNMARK$9$B:
;***	-----------------------g9:
;*** 674	-----------------------    VFDPrintf("T%d:%3lu", cnt, (K$19[(long)cnt]).int32turn_way);
;*** 674	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g3;
;***	-----------------------g10:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",674,3
        MOVL      XAR4,#FSL7            ; |674| 
        MOVW      DP,#_cnt
        MOVL      *-SP[2],XAR4          ; |674| 
        MOV       AL,@_cnt              ; |674| 
        MOVL      XAR4,XAR3             ; |674| 
        MOV       T,@_cnt               ; |674| 
        MOV       *-SP[3],AL            ; |674| 
        MPYB      ACC,T,#26             ; |674| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[2]         ; |674| 
        MOVL      *-SP[6],ACC           ; |674| 
        LCR       #_VFDPrintf           ; |674| 
        ; call occurs [#_VFDPrintf] ; |674| 
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |674| 
        BF        L72,TC                ; |674| 
        ; branchcc occurs ; |674| 
DW$L$_F_TURNMARK$9$E:
L76:    
	.dwpsn	"sensor.c",679,1
        SUBB      SP,#6
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs

DW$155	.dwtag  DW_TAG_loop
	.dwattr DW$155, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L72:1:1729866709")
	.dwattr DW$155, DW_AT_begin_file("sensor.c")
	.dwattr DW$155, DW_AT_begin_line(0x297)
	.dwattr DW$155, DW_AT_end_line(0x2a4)
DW$156	.dwtag  DW_TAG_loop_range
	.dwattr DW$156, DW_AT_low_pc(DW$L$_F_TURNMARK$3$B)
	.dwattr DW$156, DW_AT_high_pc(DW$L$_F_TURNMARK$3$E)
DW$157	.dwtag  DW_TAG_loop_range
	.dwattr DW$157, DW_AT_low_pc(DW$L$_F_TURNMARK$4$B)
	.dwattr DW$157, DW_AT_high_pc(DW$L$_F_TURNMARK$4$E)
DW$158	.dwtag  DW_TAG_loop_range
	.dwattr DW$158, DW_AT_low_pc(DW$L$_F_TURNMARK$5$B)
	.dwattr DW$158, DW_AT_high_pc(DW$L$_F_TURNMARK$5$E)
DW$159	.dwtag  DW_TAG_loop_range
	.dwattr DW$159, DW_AT_low_pc(DW$L$_F_TURNMARK$6$B)
	.dwattr DW$159, DW_AT_high_pc(DW$L$_F_TURNMARK$6$E)
DW$160	.dwtag  DW_TAG_loop_range
	.dwattr DW$160, DW_AT_low_pc(DW$L$_F_TURNMARK$7$B)
	.dwattr DW$160, DW_AT_high_pc(DW$L$_F_TURNMARK$7$E)
DW$161	.dwtag  DW_TAG_loop_range
	.dwattr DW$161, DW_AT_low_pc(DW$L$_F_TURNMARK$8$B)
	.dwattr DW$161, DW_AT_high_pc(DW$L$_F_TURNMARK$8$E)
DW$162	.dwtag  DW_TAG_loop_range
	.dwattr DW$162, DW_AT_low_pc(DW$L$_F_TURNMARK$9$B)
	.dwattr DW$162, DW_AT_high_pc(DW$L$_F_TURNMARK$9$E)
	.dwendtag DW$155

	.dwattr DW$152, DW_AT_end_file("sensor.c")
	.dwattr DW$152, DW_AT_end_line(0x2a7)
	.dwattr DW$152, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$152

	.sect	".text"
	.global	_F_POSCHECK

DW$163	.dwtag  DW_TAG_subprogram, DW_AT_name("F_POSCHECK"), DW_AT_symbol_name("_F_POSCHECK")
	.dwattr DW$163, DW_AT_low_pc(_F_POSCHECK)
	.dwattr DW$163, DW_AT_high_pc(0x00)
	.dwattr DW$163, DW_AT_begin_file("sensor.c")
	.dwattr DW$163, DW_AT_begin_line(0x45)
	.dwattr DW$163, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",70,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_POSCHECK                   FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            4 Parameter,  0 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_POSCHECK:
;*** 71	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 72	-----------------------    VFDPrintf("POSCHECK");
;*** 73	-----------------------    DSP28x_usDelay(9999998uL);
;*** 74	-----------------------    g_u16pos_cnt = 6u;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 76	-----------------------    goto g12;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR2
	.dwcfa	0x80, 9, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 4
	.dwcfa	0x1d, -6
        ADDB      SP,#4
	.dwcfa	0x1d, -10
;* AR4   assigned to C$2
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$164, DW_AT_type(*DW$T$158)
	.dwattr DW$164, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$165, DW_AT_type(*DW$T$158)
	.dwattr DW$165, DW_AT_location[DW_OP_reg12]
;* AR5   assigned to C$4
DW$166	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$166, DW_AT_type(*DW$T$195)
	.dwattr DW$166, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to C$5
DW$167	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$167, DW_AT_type(*DW$T$195)
	.dwattr DW$167, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to C$6
DW$168	.dwtag  DW_TAG_variable, DW_AT_name("C$6"), DW_AT_symbol_name("C$6")
	.dwattr DW$168, DW_AT_type(*DW$T$195)
	.dwattr DW$168, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to C$7
DW$169	.dwtag  DW_TAG_variable, DW_AT_name("C$7"), DW_AT_symbol_name("C$7")
	.dwattr DW$169, DW_AT_type(*DW$T$195)
	.dwattr DW$169, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to K$18
DW$170	.dwtag  DW_TAG_variable, DW_AT_name("K$18"), DW_AT_symbol_name("K$18")
	.dwattr DW$170, DW_AT_type(*DW$T$195)
	.dwattr DW$170, DW_AT_location[DW_OP_reg12]
;* AR0   assigned to U$17
DW$171	.dwtag  DW_TAG_variable, DW_AT_name("U$17"), DW_AT_symbol_name("U$17")
	.dwattr DW$171, DW_AT_type(*DW$T$12)
	.dwattr DW$171, DW_AT_location[DW_OP_reg4]
;* AR7   assigned to U$22
DW$172	.dwtag  DW_TAG_variable, DW_AT_name("U$22"), DW_AT_symbol_name("U$22")
	.dwattr DW$172, DW_AT_type(*DW$T$12)
	.dwattr DW$172, DW_AT_location[DW_OP_reg18]
;* AR2   assigned to U$27
DW$173	.dwtag  DW_TAG_variable, DW_AT_name("U$27"), DW_AT_symbol_name("U$27")
	.dwattr DW$173, DW_AT_type(*DW$T$12)
	.dwattr DW$173, DW_AT_location[DW_OP_reg8]
;* AR3   assigned to U$32
DW$174	.dwtag  DW_TAG_variable, DW_AT_name("U$32"), DW_AT_symbol_name("U$32")
	.dwattr DW$174, DW_AT_type(*DW$T$12)
	.dwattr DW$174, DW_AT_location[DW_OP_reg10]
;* AL    assigned to P$1
DW$175	.dwtag  DW_TAG_variable, DW_AT_name("P$1"), DW_AT_symbol_name("P$1")
	.dwattr DW$175, DW_AT_type(*DW$T$10)
	.dwattr DW$175, DW_AT_location[DW_OP_reg0]
;* AR6   assigned to K$14
DW$176	.dwtag  DW_TAG_variable, DW_AT_name("K$14"), DW_AT_symbol_name("K$14")
	.dwattr DW$176, DW_AT_type(*DW$T$120)
	.dwattr DW$176, DW_AT_location[DW_OP_reg16]
;* AR3   assigned to K$14
DW$177	.dwtag  DW_TAG_variable, DW_AT_name("K$14"), DW_AT_symbol_name("K$14")
	.dwattr DW$177, DW_AT_type(*DW$T$120)
	.dwattr DW$177, DW_AT_location[DW_OP_reg10]
;* AR3   assigned to K$14
DW$178	.dwtag  DW_TAG_variable, DW_AT_name("K$14"), DW_AT_symbol_name("K$14")
	.dwattr DW$178, DW_AT_type(*DW$T$120)
	.dwattr DW$178, DW_AT_location[DW_OP_reg10]
	.dwpsn	"sensor.c",71,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |71| 
	.dwpsn	"sensor.c",72,2
        MOVL      XAR4,#FSL8            ; |72| 
        MOVL      *-SP[2],XAR4          ; |72| 
        LCR       #_VFDPrintf           ; |72| 
        ; call occurs [#_VFDPrintf] ; |72| 
	.dwpsn	"sensor.c",73,2
        MOV       AL,#38526
        MOV       AH,#152
        LCR       #_DSP28x_usDelay      ; |73| 
        ; call occurs [#_DSP28x_usDelay] ; |73| 
	.dwpsn	"sensor.c",74,2
        MOVW      DP,#_g_u16pos_cnt
        MOV       @_g_u16pos_cnt,#6     ; |74| 
	.dwpsn	"sensor.c",76,2
        BF        L83,UNC               ; |76| 
        ; branch occurs ; |76| 
L77:    
DW$L$_F_POSCHECK$2$B:
;***	-----------------------g2:
;*** 78	-----------------------    K$14 = &g_pos;
;*** 78	-----------------------    (*K$14).iq17sum = 0L;
;*** 79	-----------------------    (*K$14).iq7sum_of_sec = 0L;
;*** 81	-----------------------    U$17 = (long)g_u16pos_cnt*14L;
;*** 81	-----------------------    K$18 = &g_sen[0];
;*** 81	-----------------------    (*K$14).iq17sum += (*(U$17+K$18)).iq17_127_value;
;*** 82	-----------------------    U$22 = (long)(g_u16pos_cnt+1u)*14L;
;*** 82	-----------------------    (*K$14).iq17sum += (*(U$22+K$18)).iq17_127_value;
;*** 83	-----------------------    U$27 = (long)(g_u16pos_cnt+2u)*14L;
;*** 83	-----------------------    (*K$14).iq17sum += (*(U$27+K$18)).iq17_127_value;
;*** 84	-----------------------    U$32 = (long)(g_u16pos_cnt+3u)*14L;
;*** 84	-----------------------    (*K$14).iq17sum += (*(U$32+K$18)).iq17_127_value;
;*** 86	-----------------------    (*K$14).iq7sum = g_pos.iq17sum>>10;
;*** 89	-----------------------    if ( (*K$14).iq17sum == 0L ) goto g12;
	.dwpsn	"sensor.c",78,3
        MOVB      ACC,#0
        MOVL      XAR6,#_g_pos          ; |78| 
        MOVL      *+XAR6[0],ACC         ; |78| 
	.dwpsn	"sensor.c",79,3
        MOVL      *+XAR6[4],ACC         ; |79| 
	.dwpsn	"sensor.c",81,3
        MOVL      XAR4,#_g_sen          ; |81| 
        MOVL      XAR5,XAR4             ; |81| 
        MOVW      DP,#_g_u16pos_cnt
        MOV       T,#14                 ; |81| 
        MPYXU     ACC,T,@_g_u16pos_cnt  ; |81| 
        ADDL      XAR5,ACC
        MOVL      XAR0,ACC              ; |81| 
        MOVL      ACC,*+XAR5[6]         ; |81| 
        ADDL      *+XAR6[0],ACC         ; |81| 
	.dwpsn	"sensor.c",82,3
        MOV       AL,@_g_u16pos_cnt     ; |82| 
        MOVL      XAR5,XAR4             ; |82| 
        MOV       T,#14                 ; |82| 
        ADDB      AL,#1                 ; |82| 
        MPYXU     ACC,T,AL              ; |82| 
        ADDL      XAR5,ACC
        MOVL      XAR7,ACC              ; |82| 
        MOVL      ACC,*+XAR5[6]         ; |82| 
        ADDL      *+XAR6[0],ACC         ; |82| 
	.dwpsn	"sensor.c",83,3
        MOV       AL,@_g_u16pos_cnt     ; |83| 
        MOV       T,#14                 ; |83| 
        MOVL      XAR5,XAR4             ; |83| 
        ADDB      AL,#2                 ; |83| 
        MPYXU     P,T,AL                ; |83| 
        MOVL      ACC,P                 ; |83| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[6]         ; |83| 
        ADDL      *+XAR6[0],ACC         ; |83| 
        MOVL      XAR2,P                ; |83| 
	.dwpsn	"sensor.c",84,3
        MOV       AL,@_g_u16pos_cnt     ; |84| 
        MOV       T,#14                 ; |84| 
        MOVL      XAR5,XAR4             ; |84| 
        ADDB      AL,#3                 ; |84| 
        MPYXU     P,T,AL                ; |84| 
        MOVL      ACC,P                 ; |84| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[6]         ; |84| 
        ADDL      *+XAR6[0],ACC         ; |84| 
        MOVL      XAR3,P                ; |84| 
	.dwpsn	"sensor.c",86,3
        MOVW      DP,#_g_pos
        SETC      SXM
        MOVL      ACC,@_g_pos           ; |86| 
        SFR       ACC,10                ; |86| 
        MOVL      *+XAR6[2],ACC         ; |86| 
	.dwpsn	"sensor.c",89,3
        MOVL      ACC,*+XAR6[0]         ; |89| 
        BF        L83,EQ                ; |89| 
        ; branchcc occurs ; |89| 
DW$L$_F_POSCHECK$2$E:
DW$L$_F_POSCHECK$3$B:
;*** 92	-----------------------    C$7 = U$17+K$18;
;*** 92	-----------------------    (*K$14).iq7sum_of_sec += __IQxmpy((*C$7).iq7weight, (*C$7).iq17_127_value, 15);
;*** 93	-----------------------    C$6 = U$22+K$18;
;*** 93	-----------------------    (*K$14).iq7sum_of_sec += __IQxmpy((*C$6).iq7weight, (*C$6).iq17_127_value, 15);
;*** 94	-----------------------    C$5 = U$27+K$18;
;*** 94	-----------------------    (*K$14).iq7sum_of_sec += __IQxmpy((*C$5).iq7weight, (*C$5).iq17_127_value, 15);
;*** 95	-----------------------    C$4 = U$32+K$18;
;*** 95	-----------------------    (*K$14).iq7sum_of_sec += __IQxmpy((*C$4).iq7weight, (*C$4).iq17_127_value, 15);
;*** 97	-----------------------    K$14 = &g_pos;
;*** 97	-----------------------    (*K$14).iq7temp_pos = _IQ7div(g_pos.iq7sum_of_sec, g_pos.iq7sum);
;*** 99	-----------------------    if ( P$1 = (*K$14).iq7temp_pos >= 2048000L ) goto g6;
	.dwpsn	"sensor.c",92,3
        MOVL      ACC,XAR4              ; |92| 
        ADDL      ACC,XAR0
        MOVL      XAR5,ACC              ; |92| 
        MOVB      XAR0,#12              ; |92| 
        MOVL      XT,*+XAR5[AR0]        ; |92| 
        IMPYL     P,XT,*+XAR5[6]        ; |92| 
        QMPYL     ACC,XT,*+XAR5[6]      ; |92| 
        LSL64     ACC:P,#15             ; |92| 
        ADDL      *+XAR6[4],ACC         ; |92| 
	.dwpsn	"sensor.c",93,3
        MOVL      ACC,XAR4              ; |93| 
        ADDL      ACC,XAR7
        MOVL      XAR5,ACC              ; |93| 
        MOVL      XT,*+XAR5[AR0]        ; |93| 
        IMPYL     P,XT,*+XAR5[6]        ; |93| 
        QMPYL     ACC,XT,*+XAR5[6]      ; |93| 
        LSL64     ACC:P,#15             ; |93| 
        ADDL      *+XAR6[4],ACC         ; |93| 
	.dwpsn	"sensor.c",94,3
        MOVL      ACC,XAR4              ; |94| 
        ADDL      ACC,XAR2
        MOVL      XAR5,ACC              ; |94| 
        MOVL      XT,*+XAR5[AR0]        ; |94| 
        IMPYL     P,XT,*+XAR5[6]        ; |94| 
        QMPYL     ACC,XT,*+XAR5[6]      ; |94| 
        LSL64     ACC:P,#15             ; |94| 
        ADDL      *+XAR6[4],ACC         ; |94| 
	.dwpsn	"sensor.c",95,3
        MOVL      ACC,XAR4              ; |95| 
        ADDL      ACC,XAR3
        MOVL      XAR5,ACC              ; |95| 
        MOVL      XT,*+XAR5[AR0]        ; |95| 
        IMPYL     P,XT,*+XAR5[6]        ; |95| 
        QMPYL     ACC,XT,*+XAR5[6]      ; |95| 
        LSL64     ACC:P,#15             ; |95| 
        ADDL      *+XAR6[4],ACC         ; |95| 
	.dwpsn	"sensor.c",97,3
        MOVL      ACC,@_g_pos+2         ; |97| 
        MOVL      *-SP[2],ACC           ; |97| 
        MOVL      ACC,@_g_pos+4         ; |97| 
        LCR       #__IQ7div             ; |97| 
        ; call occurs [#__IQ7div] ; |97| 
        MOVL      XAR3,#_g_pos          ; |97| 
        MOVL      *+XAR3[6],ACC         ; |97| 
	.dwpsn	"sensor.c",99,3
        MOVL      XAR4,#2048000         ; |99| 
        MOVL      ACC,XAR4              ; |99| 
        CMPL      ACC,*+XAR3[6]         ; |99| 
        MOVB      XAR5,#0
        BF        L78,GT                ; |99| 
        ; branchcc occurs ; |99| 
DW$L$_F_POSCHECK$3$E:
DW$L$_F_POSCHECK$4$B:
        MOVB      XAR5,#1               ; |99| 
DW$L$_F_POSCHECK$4$E:
L78:    
DW$L$_F_POSCHECK$5$B:
        MOV       AL,AR5                ; |99| 
        BF        L79,NEQ               ; |99| 
        ; branchcc occurs ; |99| 
DW$L$_F_POSCHECK$5$E:
DW$L$_F_POSCHECK$6$B:
;*** 102	-----------------------    if ( (*K$14).iq7temp_pos > (-2048000L) ) goto g7;
	.dwpsn	"sensor.c",102,8
        SETC      SXM
        MOV       ACC,#-125 << 14
        CMPL      ACC,*+XAR3[6]         ; |102| 
        BF        L80,LT                ; |102| 
        ; branchcc occurs ; |102| 
DW$L$_F_POSCHECK$6$E:
DW$L$_F_POSCHECK$7$B:
;*** 103	-----------------------    (*K$14).iq7temp_pos = (-2048000L);
;*** 103	-----------------------    goto g7;
	.dwpsn	"sensor.c",103,4
        MOV       PH,#65504
        MOV       PL,#49152
        MOVL      *+XAR3[6],P           ; |103| 
        BF        L80,UNC               ; |103| 
        ; branch occurs ; |103| 
DW$L$_F_POSCHECK$7$E:
L79:    
DW$L$_F_POSCHECK$8$B:
;***	-----------------------g6:
;*** 100	-----------------------    g_pos.iq7temp_pos = 2048000L;
	.dwpsn	"sensor.c",100,4
        MOVW      DP,#_g_pos+6
        MOVL      @_g_pos+6,XAR4        ; |100| 
DW$L$_F_POSCHECK$8$E:
L80:    
DW$L$_F_POSCHECK$9$B:
;***	-----------------------g7:
;*** 107	-----------------------    K$14 = &g_pos;
;*** 107	-----------------------    (*K$14).iq10temp_position = g_pos.iq7temp_pos<<3;
;*** 109	-----------------------    position_enable(K$14);
;*** 112	-----------------------    VFDPrintf("P:%6ld", (*K$14).iq10temp_position>>10);
;*** 114	-----------------------    if ( (*K$14).iq10temp_position >= 16384000L ) goto g11;
	.dwpsn	"sensor.c",107,3
        MOVW      DP,#_g_pos+6
        MOVB      XAR0,#10              ; |107| 
        MOVL      ACC,@_g_pos+6         ; |107| 
        LSL       ACC,3                 ; |107| 
        MOVL      *+XAR3[AR0],ACC       ; |107| 
	.dwpsn	"sensor.c",109,4
        LCR       #_position_enable$0   ; |109| 
        ; call occurs [#_position_enable$0] ; |109| 
	.dwpsn	"sensor.c",112,4
        MOVL      XAR4,#FSL9            ; |112| 
        MOVB      XAR0,#10              ; |112| 
        MOVL      *-SP[2],XAR4          ; |112| 
        SETC      SXM
        MOVL      ACC,*+XAR3[AR0]       ; |112| 
        SFR       ACC,10                ; |112| 
        MOVL      *-SP[4],ACC           ; |112| 
        LCR       #_VFDPrintf           ; |112| 
        ; call occurs [#_VFDPrintf] ; |112| 
	.dwpsn	"sensor.c",114,4
        MOV       AL,#0
        MOVB      XAR0,#10              ; |114| 
        MOV       AH,#250
        CMPL      ACC,*+XAR3[AR0]       ; |114| 
        BF        L82,LEQ               ; |114| 
        ; branchcc occurs ; |114| 
DW$L$_F_POSCHECK$9$E:
DW$L$_F_POSCHECK$10$B:
;*** 120	-----------------------    if ( (*K$14).iq10temp_position <= (-16384000L) ) goto g10;
	.dwpsn	"sensor.c",120,9
        SETC      SXM
        MOV       ACC,#-500 << 15
        CMPL      ACC,*+XAR3[AR0]       ; |120| 
        BF        L81,GEQ               ; |120| 
        ; branchcc occurs ; |120| 
DW$L$_F_POSCHECK$10$E:
DW$L$_F_POSCHECK$11$B:
;*** 127	-----------------------    *(&GpioDataRegs+5L) |= 0x800u;
;*** 128	-----------------------    *(&GpioDataRegs+5L) |= 0x200u;
;*** 128	-----------------------    goto g12;
	.dwpsn	"sensor.c",127,5
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0800 ; |127| 
	.dwpsn	"sensor.c",128,5
        OR        @_GpioDataRegs+5,#0x0200 ; |128| 
        BF        L83,UNC               ; |128| 
        ; branch occurs ; |128| 
DW$L$_F_POSCHECK$11$E:
L81:    
DW$L$_F_POSCHECK$12$B:
;***	-----------------------g10:
;*** 122	-----------------------    C$3 = &GpioDataRegs;
;*** 122	-----------------------    ((volatile unsigned *)C$3)[3] |= 0x200u;
;*** 123	-----------------------    ((volatile unsigned *)C$3)[5] |= 0x800u;
;*** 124	-----------------------    goto g12;
	.dwpsn	"sensor.c",122,5
        MOVL      XAR4,#_GpioDataRegs   ; |122| 
        OR        *+XAR4[3],#0x0200     ; |122| 
	.dwpsn	"sensor.c",123,5
        OR        *+XAR4[5],#0x0800     ; |123| 
	.dwpsn	"sensor.c",124,4
        BF        L83,UNC               ; |124| 
        ; branch occurs ; |124| 
DW$L$_F_POSCHECK$12$E:
L82:    
DW$L$_F_POSCHECK$13$B:
;***	-----------------------g11:
;*** 116	-----------------------    C$2 = &GpioDataRegs;
;*** 116	-----------------------    ((volatile unsigned *)C$2)[3] |= 0x800u;
;*** 117	-----------------------    ((volatile unsigned *)C$2)[5] |= 0x200u;
	.dwpsn	"sensor.c",116,5
        MOVL      XAR4,#_GpioDataRegs   ; |116| 
        OR        *+XAR4[3],#0x0800     ; |116| 
	.dwpsn	"sensor.c",117,5
        OR        *+XAR4[5],#0x0200     ; |117| 
DW$L$_F_POSCHECK$13$E:
L83:    
DW$L$_F_POSCHECK$14$B:
;***	-----------------------g12:
;*** 76	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"sensor.c",76,8
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |76| 
        BF        L77,TC                ; |76| 
        ; branchcc occurs ; |76| 
DW$L$_F_POSCHECK$14$E:
;*** 134	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 135	-----------------------    a = 4;
;*** 135	-----------------------    return;
	.dwpsn	"sensor.c",134,2
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |134| 
	.dwpsn	"sensor.c",135,2
        MOVW      DP,#_a
        MOV       @_a,#4                ; |135| 
	.dwpsn	"sensor.c",137,1
        SUBB      SP,#4
	.dwcfa	0x1d, -6
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 11
        MOVL      XAR2,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 9
        LRETR
        ; return occurs

DW$179	.dwtag  DW_TAG_loop
	.dwattr DW$179, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L83:1:1729866709")
	.dwattr DW$179, DW_AT_begin_file("sensor.c")
	.dwattr DW$179, DW_AT_begin_line(0x4c)
	.dwattr DW$179, DW_AT_end_line(0x80)
DW$180	.dwtag  DW_TAG_loop_range
	.dwattr DW$180, DW_AT_low_pc(DW$L$_F_POSCHECK$14$B)
	.dwattr DW$180, DW_AT_high_pc(DW$L$_F_POSCHECK$14$E)
DW$181	.dwtag  DW_TAG_loop_range
	.dwattr DW$181, DW_AT_low_pc(DW$L$_F_POSCHECK$3$B)
	.dwattr DW$181, DW_AT_high_pc(DW$L$_F_POSCHECK$3$E)
DW$182	.dwtag  DW_TAG_loop_range
	.dwattr DW$182, DW_AT_low_pc(DW$L$_F_POSCHECK$4$B)
	.dwattr DW$182, DW_AT_high_pc(DW$L$_F_POSCHECK$4$E)
DW$183	.dwtag  DW_TAG_loop_range
	.dwattr DW$183, DW_AT_low_pc(DW$L$_F_POSCHECK$5$B)
	.dwattr DW$183, DW_AT_high_pc(DW$L$_F_POSCHECK$5$E)
DW$184	.dwtag  DW_TAG_loop_range
	.dwattr DW$184, DW_AT_low_pc(DW$L$_F_POSCHECK$6$B)
	.dwattr DW$184, DW_AT_high_pc(DW$L$_F_POSCHECK$6$E)
DW$185	.dwtag  DW_TAG_loop_range
	.dwattr DW$185, DW_AT_low_pc(DW$L$_F_POSCHECK$7$B)
	.dwattr DW$185, DW_AT_high_pc(DW$L$_F_POSCHECK$7$E)
DW$186	.dwtag  DW_TAG_loop_range
	.dwattr DW$186, DW_AT_low_pc(DW$L$_F_POSCHECK$8$B)
	.dwattr DW$186, DW_AT_high_pc(DW$L$_F_POSCHECK$8$E)
DW$187	.dwtag  DW_TAG_loop_range
	.dwattr DW$187, DW_AT_low_pc(DW$L$_F_POSCHECK$9$B)
	.dwattr DW$187, DW_AT_high_pc(DW$L$_F_POSCHECK$9$E)
DW$188	.dwtag  DW_TAG_loop_range
	.dwattr DW$188, DW_AT_low_pc(DW$L$_F_POSCHECK$10$B)
	.dwattr DW$188, DW_AT_high_pc(DW$L$_F_POSCHECK$10$E)
DW$189	.dwtag  DW_TAG_loop_range
	.dwattr DW$189, DW_AT_low_pc(DW$L$_F_POSCHECK$13$B)
	.dwattr DW$189, DW_AT_high_pc(DW$L$_F_POSCHECK$13$E)
DW$190	.dwtag  DW_TAG_loop_range
	.dwattr DW$190, DW_AT_low_pc(DW$L$_F_POSCHECK$12$B)
	.dwattr DW$190, DW_AT_high_pc(DW$L$_F_POSCHECK$12$E)
DW$191	.dwtag  DW_TAG_loop_range
	.dwattr DW$191, DW_AT_low_pc(DW$L$_F_POSCHECK$11$B)
	.dwattr DW$191, DW_AT_high_pc(DW$L$_F_POSCHECK$11$E)
DW$192	.dwtag  DW_TAG_loop_range
	.dwattr DW$192, DW_AT_low_pc(DW$L$_F_POSCHECK$2$B)
	.dwattr DW$192, DW_AT_high_pc(DW$L$_F_POSCHECK$2$E)
	.dwendtag DW$179

	.dwattr DW$163, DW_AT_end_file("sensor.c")
	.dwattr DW$163, DW_AT_end_line(0x89)
	.dwattr DW$163, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$163

	.sect	".text"
	.global	_F_Max_min

DW$193	.dwtag  DW_TAG_subprogram, DW_AT_name("F_Max_min"), DW_AT_symbol_name("_F_Max_min")
	.dwattr DW$193, DW_AT_low_pc(_F_Max_min)
	.dwattr DW$193, DW_AT_high_pc(0x00)
	.dwattr DW$193, DW_AT_begin_file("sensor.c")
	.dwattr DW$193, DW_AT_begin_line(0xbe)
	.dwattr DW$193, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",191,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_Max_min                    FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_Max_min:
;*** 194	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 196	-----------------------    VFDPrintf("LOADING_");
;*** 197	-----------------------    DSP28x_usDelay(9999998uL);
;***  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    K$11 = &g_sen[0];
;***  	-----------------------    U$12 = K$11;
;***  	-----------------------    L$1 = 15;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
;* AR3   assigned to K$11
DW$194	.dwtag  DW_TAG_variable, DW_AT_name("K$11"), DW_AT_symbol_name("K$11")
	.dwattr DW$194, DW_AT_type(*DW$T$195)
	.dwattr DW$194, DW_AT_location[DW_OP_reg10]
;* AR6   assigned to L$1
DW$195	.dwtag  DW_TAG_variable, DW_AT_name("L$1"), DW_AT_symbol_name("L$1")
	.dwattr DW$195, DW_AT_type(*DW$T$10)
	.dwattr DW$195, DW_AT_location[DW_OP_reg16]
;* AL    assigned to U$12
DW$196	.dwtag  DW_TAG_variable, DW_AT_name("U$12"), DW_AT_symbol_name("U$12")
	.dwattr DW$196, DW_AT_type(*DW$T$195)
	.dwattr DW$196, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to U$12
DW$197	.dwtag  DW_TAG_variable, DW_AT_name("U$12"), DW_AT_symbol_name("U$12")
	.dwattr DW$197, DW_AT_type(*DW$T$195)
	.dwattr DW$197, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to U$12
DW$198	.dwtag  DW_TAG_variable, DW_AT_name("U$12"), DW_AT_symbol_name("U$12")
	.dwattr DW$198, DW_AT_type(*DW$T$195)
	.dwattr DW$198, DW_AT_location[DW_OP_reg12]
;* AR6   assigned to _sen_value_setting
DW$199	.dwtag  DW_TAG_variable, DW_AT_name("sen_value_setting"), DW_AT_symbol_name("_sen_value_setting")
	.dwattr DW$199, DW_AT_type(*DW$T$60)
	.dwattr DW$199, DW_AT_location[DW_OP_reg16]
;* AR6   assigned to _sen_value_setting
DW$200	.dwtag  DW_TAG_variable, DW_AT_name("sen_value_setting"), DW_AT_symbol_name("_sen_value_setting")
	.dwattr DW$200, DW_AT_type(*DW$T$60)
	.dwattr DW$200, DW_AT_location[DW_OP_reg16]
	.dwpsn	"sensor.c",194,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |194| 
	.dwpsn	"sensor.c",196,3
        MOVL      XAR4,#FSL10           ; |196| 
        MOVL      *-SP[2],XAR4          ; |196| 
        LCR       #_VFDPrintf           ; |196| 
        ; call occurs [#_VFDPrintf] ; |196| 
	.dwpsn	"sensor.c",197,3
        MOV       AL,#38526
        MOV       AH,#152
        LCR       #_DSP28x_usDelay      ; |197| 
        ; call occurs [#_DSP28x_usDelay] ; |197| 
        MOVB      XAR5,#14              ; |199| 
        MOVB      XAR7,#0
        MOVL      XAR3,#_g_sen
        MOVB      XAR6,#15
        MOVL      ACC,XAR3
L84:    
DW$L$_F_Max_min$2$B:
;***	-----------------------g2:
;*** 201	-----------------------    (*U$12).iq17_4095_max_value = 0L;
;*** 202	-----------------------    (*U$12).iq17_4095_min_value = 0L;
;*** 199	-----------------------    U$12 += 14;
;*** 199	-----------------------    if ( (--L$1) != (-1) ) goto g2;
	.dwpsn	"sensor.c",201,4
        MOVL      XAR4,ACC              ; |201| 
        MOVL      *+XAR4[4],XAR7        ; |201| 
	.dwpsn	"sensor.c",202,4
        MOVL      XAR4,ACC              ; |202| 
        MOVL      *+XAR4[2],XAR7        ; |202| 
	.dwpsn	"sensor.c",199,62
        ADDU      ACC,AR5               ; |199| 
	.dwpsn	"sensor.c",199,32
        BANZ      L84,AR6--             ; |199| 
        ; branchcc occurs ; |199| 
DW$L$_F_Max_min$2$E:
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 205	-----------------------    goto g12;
	.dwpsn	"sensor.c",205,3
        BF        L91,UNC               ; |205| 
        ; branch occurs ; |205| 
L85:    
DW$L$_F_Max_min$4$B:
;***	-----------------------g4:
;*** 223	-----------------------    VFDPrintf("Set_MIN_");
;***  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$12 = K$11;
;*** 225	-----------------------    sen_value_setting = 0;
	.dwpsn	"sensor.c",223,5
        MOVL      XAR4,#FSL11           ; |223| 
        MOVL      *-SP[2],XAR4          ; |223| 
        LCR       #_VFDPrintf           ; |223| 
        ; call occurs [#_VFDPrintf] ; |223| 
        MOVL      XAR4,XAR3
	.dwpsn	"sensor.c",225,10
        MOVB      XAR5,#14              ; |225| 
        MOVB      XAR6,#0
DW$L$_F_Max_min$4$E:
L86:    
DW$L$_F_Max_min$5$B:
;***	-----------------------g5:
;*** 228	-----------------------    if ( (*U$12).iq17_4095_min_value >= (*U$12).iq17_4095_value ) goto g7;
	.dwpsn	"sensor.c",228,6
        MOVL      ACC,*+XAR4[0]         ; |228| 
        CMPL      ACC,*+XAR4[2]         ; |228| 
        BF        L87,LEQ               ; |228| 
        ; branchcc occurs ; |228| 
DW$L$_F_Max_min$5$E:
DW$L$_F_Max_min$6$B:
;*** 230	-----------------------    (*U$12).iq17_4095_min_value = (*U$12).iq17_4095_value;
	.dwpsn	"sensor.c",230,6
        MOVL      ACC,*+XAR4[0]         ; |230| 
        MOVL      *+XAR4[2],ACC         ; |230| 
DW$L$_F_Max_min$6$E:
L87:    
DW$L$_F_Max_min$7$B:
;***	-----------------------g7:
;*** 225	-----------------------    U$12 += 14;
;*** 225	-----------------------    if ( (++sen_value_setting) < 16 ) goto g5;
	.dwpsn	"sensor.c",225,64
        MOVL      ACC,XAR4              ; |225| 
        ADDU      ACC,AR5               ; |225| 
        MOVL      XAR4,ACC              ; |225| 
        MOV       AL,AR6
        ADDB      AL,#1                 ; |225| 
        CMPB      AL,#16                ; |225| 
        MOVZ      AR6,AL                ; |225| 
        BF        L86,LT                ; |225| 
        ; branchcc occurs ; |225| 
DW$L$_F_Max_min$7$E:
DW$L$_F_Max_min$8$B:
;*** 225	-----------------------    goto g14;
        BF        L92,UNC               ; |225| 
        ; branch occurs ; |225| 
DW$L$_F_Max_min$8$E:
L88:    
DW$L$_F_Max_min$9$B:
;***	-----------------------g8:
;*** 207	-----------------------    VFDPrintf("Set_MAX_");
;***  	-----------------------    #pragma MUST_ITERATE(16, 16, 16)
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$12 = K$11;
;*** 209	-----------------------    sen_value_setting = 0;
	.dwpsn	"sensor.c",207,4
        MOVL      XAR4,#FSL12           ; |207| 
        MOVL      *-SP[2],XAR4          ; |207| 
        LCR       #_VFDPrintf           ; |207| 
        ; call occurs [#_VFDPrintf] ; |207| 
        MOVL      XAR4,XAR3
	.dwpsn	"sensor.c",209,9
        MOVB      XAR5,#14              ; |209| 
        MOVB      XAR6,#0
DW$L$_F_Max_min$9$E:
L89:    
DW$L$_F_Max_min$10$B:
;***	-----------------------g9:
;*** 212	-----------------------    if ( (*U$12).iq17_4095_max_value >= (*U$12).iq17_4095_value ) goto g11;
	.dwpsn	"sensor.c",212,5
        MOVL      ACC,*+XAR4[0]         ; |212| 
        CMPL      ACC,*+XAR4[4]         ; |212| 
        BF        L90,LEQ               ; |212| 
        ; branchcc occurs ; |212| 
DW$L$_F_Max_min$10$E:
DW$L$_F_Max_min$11$B:
;*** 214	-----------------------    (*U$12).iq17_4095_max_value = (*U$12).iq17_4095_value;
	.dwpsn	"sensor.c",214,5
        MOVL      ACC,*+XAR4[0]         ; |214| 
        MOVL      *+XAR4[4],ACC         ; |214| 
DW$L$_F_Max_min$11$E:
L90:    
DW$L$_F_Max_min$12$B:
;***	-----------------------g11:
;*** 209	-----------------------    U$12 += 14;
;*** 209	-----------------------    if ( (++sen_value_setting) < 16 ) goto g9;
	.dwpsn	"sensor.c",209,63
        MOVL      ACC,XAR4              ; |209| 
        ADDU      ACC,AR5               ; |209| 
        MOVL      XAR4,ACC              ; |209| 
        MOV       AL,AR6
        ADDB      AL,#1                 ; |209| 
        CMPB      AL,#16                ; |209| 
        MOVZ      AR6,AL                ; |209| 
        BF        L89,LT                ; |209| 
        ; branchcc occurs ; |209| 
DW$L$_F_Max_min$12$E:
L91:    
DW$L$_F_Max_min$13$B:
;***	-----------------------g12:
;*** 217	-----------------------    if ( *(&GpioDataRegs+1)&0x20u ) goto g8;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
	.dwpsn	"sensor.c",217,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |217| 
        BF        L88,TC                ; |217| 
        ; branchcc occurs ; |217| 
DW$L$_F_Max_min$13$E:
L92:    
DW$L$_F_Max_min$14$B:
;***	-----------------------g14:
;*** 234	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g4;
	.dwpsn	"sensor.c",234,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |234| 
        BF        L85,TC                ; |234| 
        ; branchcc occurs ; |234| 
DW$L$_F_Max_min$14$E:
;*** 235	-----------------------    maxmin_write_rom();
;*** 237	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 239	-----------------------    DSP28x_usDelay(2499998uL);
;*** 239	-----------------------    return;
	.dwpsn	"sensor.c",235,3
        LCR       #_maxmin_write_rom    ; |235| 
        ; call occurs [#_maxmin_write_rom] ; |235| 
	.dwpsn	"sensor.c",237,3
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |237| 
	.dwpsn	"sensor.c",239,3
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |239| 
        ; call occurs [#_DSP28x_usDelay] ; |239| 
	.dwpsn	"sensor.c",243,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs

DW$201	.dwtag  DW_TAG_loop
	.dwattr DW$201, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L91:1:1729866709")
	.dwattr DW$201, DW_AT_begin_file("sensor.c")
	.dwattr DW$201, DW_AT_begin_line(0xcd)
	.dwattr DW$201, DW_AT_end_line(0xe1)
DW$202	.dwtag  DW_TAG_loop_range
	.dwattr DW$202, DW_AT_low_pc(DW$L$_F_Max_min$13$B)
	.dwattr DW$202, DW_AT_high_pc(DW$L$_F_Max_min$13$E)
DW$203	.dwtag  DW_TAG_loop_range
	.dwattr DW$203, DW_AT_low_pc(DW$L$_F_Max_min$9$B)
	.dwattr DW$203, DW_AT_high_pc(DW$L$_F_Max_min$9$E)

DW$204	.dwtag  DW_TAG_loop
	.dwattr DW$204, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L89:2:1729866709")
	.dwattr DW$204, DW_AT_begin_file("sensor.c")
	.dwattr DW$204, DW_AT_begin_line(0xd1)
	.dwattr DW$204, DW_AT_end_line(0xd7)
DW$205	.dwtag  DW_TAG_loop_range
	.dwattr DW$205, DW_AT_low_pc(DW$L$_F_Max_min$10$B)
	.dwattr DW$205, DW_AT_high_pc(DW$L$_F_Max_min$10$E)
DW$206	.dwtag  DW_TAG_loop_range
	.dwattr DW$206, DW_AT_low_pc(DW$L$_F_Max_min$11$B)
	.dwattr DW$206, DW_AT_high_pc(DW$L$_F_Max_min$11$E)
DW$207	.dwtag  DW_TAG_loop_range
	.dwattr DW$207, DW_AT_low_pc(DW$L$_F_Max_min$12$B)
	.dwattr DW$207, DW_AT_high_pc(DW$L$_F_Max_min$12$E)
	.dwendtag DW$204

	.dwendtag DW$201


DW$208	.dwtag  DW_TAG_loop
	.dwattr DW$208, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L92:1:1729866709")
	.dwattr DW$208, DW_AT_begin_file("sensor.c")
	.dwattr DW$208, DW_AT_begin_line(0xdb)
	.dwattr DW$208, DW_AT_end_line(0xea)
DW$209	.dwtag  DW_TAG_loop_range
	.dwattr DW$209, DW_AT_low_pc(DW$L$_F_Max_min$14$B)
	.dwattr DW$209, DW_AT_high_pc(DW$L$_F_Max_min$14$E)
DW$210	.dwtag  DW_TAG_loop_range
	.dwattr DW$210, DW_AT_low_pc(DW$L$_F_Max_min$4$B)
	.dwattr DW$210, DW_AT_high_pc(DW$L$_F_Max_min$4$E)
DW$211	.dwtag  DW_TAG_loop_range
	.dwattr DW$211, DW_AT_low_pc(DW$L$_F_Max_min$8$B)
	.dwattr DW$211, DW_AT_high_pc(DW$L$_F_Max_min$8$E)

DW$212	.dwtag  DW_TAG_loop
	.dwattr DW$212, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L86:2:1729866709")
	.dwattr DW$212, DW_AT_begin_file("sensor.c")
	.dwattr DW$212, DW_AT_begin_line(0xe1)
	.dwattr DW$212, DW_AT_end_line(0xe7)
DW$213	.dwtag  DW_TAG_loop_range
	.dwattr DW$213, DW_AT_low_pc(DW$L$_F_Max_min$5$B)
	.dwattr DW$213, DW_AT_high_pc(DW$L$_F_Max_min$5$E)
DW$214	.dwtag  DW_TAG_loop_range
	.dwattr DW$214, DW_AT_low_pc(DW$L$_F_Max_min$6$B)
	.dwattr DW$214, DW_AT_high_pc(DW$L$_F_Max_min$6$E)
DW$215	.dwtag  DW_TAG_loop_range
	.dwattr DW$215, DW_AT_low_pc(DW$L$_F_Max_min$7$B)
	.dwattr DW$215, DW_AT_high_pc(DW$L$_F_Max_min$7$E)
	.dwendtag DW$212

	.dwendtag DW$208


DW$216	.dwtag  DW_TAG_loop
	.dwattr DW$216, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L84:1:1729866709")
	.dwattr DW$216, DW_AT_begin_file("sensor.c")
	.dwattr DW$216, DW_AT_begin_line(0xc7)
	.dwattr DW$216, DW_AT_end_line(0xcb)
DW$217	.dwtag  DW_TAG_loop_range
	.dwattr DW$217, DW_AT_low_pc(DW$L$_F_Max_min$2$B)
	.dwattr DW$217, DW_AT_high_pc(DW$L$_F_Max_min$2$E)
	.dwendtag DW$216

	.dwattr DW$193, DW_AT_end_file("sensor.c")
	.dwattr DW$193, DW_AT_end_line(0xf3)
	.dwattr DW$193, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$193

	.sect	".text"
	.global	_F_4095

DW$218	.dwtag  DW_TAG_subprogram, DW_AT_name("F_4095"), DW_AT_symbol_name("_F_4095")
	.dwattr DW$218, DW_AT_low_pc(_F_4095)
	.dwattr DW$218, DW_AT_high_pc(0x00)
	.dwattr DW$218, DW_AT_begin_file("sensor.c")
	.dwattr DW$218, DW_AT_begin_line(0x8d)
	.dwattr DW$218, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",142,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_4095                       FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_4095:
;*** 143	-----------------------    a = 0;
;*** 144	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 146	-----------------------    VFDPrintf("        ");
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$23 = &g_sen[0];
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#6
	.dwcfa	0x1d, -10
;* AR3   assigned to K$23
DW$219	.dwtag  DW_TAG_variable, DW_AT_name("K$23"), DW_AT_symbol_name("K$23")
	.dwattr DW$219, DW_AT_type(*DW$T$195)
	.dwattr DW$219, DW_AT_location[DW_OP_reg10]
	.dwpsn	"sensor.c",143,2
        MOVW      DP,#_a
        MOV       @_a,#0                ; |143| 
	.dwpsn	"sensor.c",144,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |144| 
	.dwpsn	"sensor.c",146,2
        MOVL      XAR4,#FSL6            ; |146| 
        MOVL      *-SP[2],XAR4          ; |146| 
        LCR       #_VFDPrintf           ; |146| 
        ; call occurs [#_VFDPrintf] ; |146| 
        MOVL      XAR3,#_g_sen
L93:    
DW$L$_F_4095$2$B:
;***	-----------------------g2:
;*** 153	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"sensor.c",153,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |153| 
        BF        L94,NTC               ; |153| 
        ; branchcc occurs ; |153| 
DW$L$_F_4095$2$E:
DW$L$_F_4095$3$B:
;*** 160	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"sensor.c",160,8
        TBIT      @_GpioDataRegs+1,#8   ; |160| 
        BF        L95,TC                ; |160| 
        ; branchcc occurs ; |160| 
DW$L$_F_4095$3$E:
DW$L$_F_4095$4$B:
;*** 163	-----------------------    --a;
;*** 164	-----------------------    DSP28x_usDelay(1999998uL);
;*** 164	-----------------------    goto g6;
	.dwpsn	"sensor.c",163,4
        MOVW      DP,#_a
        DEC       @_a                   ; |163| 
	.dwpsn	"sensor.c",164,4
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |164| 
        ; call occurs [#_DSP28x_usDelay] ; |164| 
        BF        L95,UNC               ; |164| 
        ; branch occurs ; |164| 
DW$L$_F_4095$4$E:
L94:    
DW$L$_F_4095$5$B:
;***	-----------------------g5:
;*** 156	-----------------------    ++a;
;*** 157	-----------------------    DSP28x_usDelay(1999998uL);
	.dwpsn	"sensor.c",156,4
        MOVW      DP,#_a
        INC       @_a                   ; |156| 
	.dwpsn	"sensor.c",157,4
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |157| 
        ; call occurs [#_DSP28x_usDelay] ; |157| 
DW$L$_F_4095$5$E:
L95:    
DW$L$_F_4095$6$B:
;***	-----------------------g6:
;*** 167	-----------------------    if ( a < 0 ) goto g9;
	.dwpsn	"sensor.c",167,3
        MOVW      DP,#_a
        MOV       AL,@_a                ; |167| 
        BF        L96,LT                ; |167| 
        ; branchcc occurs ; |167| 
DW$L$_F_4095$6$E:
DW$L$_F_4095$7$B:
;*** 169	-----------------------    if ( a < 16 ) goto g10;
	.dwpsn	"sensor.c",169,8
        CMPB      AL,#16                ; |169| 
        BF        L97,LT                ; |169| 
        ; branchcc occurs ; |169| 
DW$L$_F_4095$7$E:
DW$L$_F_4095$8$B:
;*** 169	-----------------------    a = 0;
;*** 169	-----------------------    goto g10;
	.dwpsn	"sensor.c",169,18
        MOV       @_a,#0                ; |169| 
        BF        L97,UNC               ; |169| 
        ; branch occurs ; |169| 
DW$L$_F_4095$8$E:
L96:    
DW$L$_F_4095$9$B:
;***	-----------------------g9:
;*** 167	-----------------------    a = 15;
	.dwpsn	"sensor.c",167,12
        MOV       @_a,#15               ; |167| 
DW$L$_F_4095$9$E:
L97:    
DW$L$_F_4095$10$B:
;***	-----------------------g10:
;*** 173	-----------------------    VFDPrintf("S%d:%.0f", a, _IQ17toF((K$23[(long)a]).iq17_4095_value));
;*** 179	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"sensor.c",173,3
        MOVL      XAR4,XAR3             ; |173| 
        MOV       T,@_a                 ; |173| 
        MPYB      ACC,T,#14             ; |173| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[0]         ; |173| 
        LCR       #__IQ17toF            ; |173| 
        ; call occurs [#__IQ17toF] ; |173| 
        MOVW      DP,#_a
        MOVZ      AR6,@_a               ; |173| 
        MOVL      XAR4,#FSL13           ; |173| 
        MOVL      *-SP[2],XAR4          ; |173| 
        MOV       *-SP[3],AR6           ; |173| 
        MOVL      *-SP[6],ACC           ; |173| 
        LCR       #_VFDPrintf           ; |173| 
        ; call occurs [#_VFDPrintf] ; |173| 
	.dwpsn	"sensor.c",179,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |179| 
        BF        L93,TC                ; |179| 
        ; branchcc occurs ; |179| 
DW$L$_F_4095$10$E:
;*** 181	-----------------------    a = 2;
;*** 183	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 183	-----------------------    return;
	.dwpsn	"sensor.c",181,2
        MOVW      DP,#_a
        MOV       @_a,#2                ; |181| 
	.dwpsn	"sensor.c",183,2
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |183| 
	.dwpsn	"sensor.c",188,1
        SUBB      SP,#6
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs

DW$220	.dwtag  DW_TAG_loop
	.dwattr DW$220, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L93:1:1729866709")
	.dwattr DW$220, DW_AT_begin_file("sensor.c")
	.dwattr DW$220, DW_AT_begin_line(0x94)
	.dwattr DW$220, DW_AT_end_line(0xb3)
DW$221	.dwtag  DW_TAG_loop_range
	.dwattr DW$221, DW_AT_low_pc(DW$L$_F_4095$2$B)
	.dwattr DW$221, DW_AT_high_pc(DW$L$_F_4095$2$E)
DW$222	.dwtag  DW_TAG_loop_range
	.dwattr DW$222, DW_AT_low_pc(DW$L$_F_4095$3$B)
	.dwattr DW$222, DW_AT_high_pc(DW$L$_F_4095$3$E)
DW$223	.dwtag  DW_TAG_loop_range
	.dwattr DW$223, DW_AT_low_pc(DW$L$_F_4095$4$B)
	.dwattr DW$223, DW_AT_high_pc(DW$L$_F_4095$4$E)
DW$224	.dwtag  DW_TAG_loop_range
	.dwattr DW$224, DW_AT_low_pc(DW$L$_F_4095$5$B)
	.dwattr DW$224, DW_AT_high_pc(DW$L$_F_4095$5$E)
DW$225	.dwtag  DW_TAG_loop_range
	.dwattr DW$225, DW_AT_low_pc(DW$L$_F_4095$6$B)
	.dwattr DW$225, DW_AT_high_pc(DW$L$_F_4095$6$E)
DW$226	.dwtag  DW_TAG_loop_range
	.dwattr DW$226, DW_AT_low_pc(DW$L$_F_4095$7$B)
	.dwattr DW$226, DW_AT_high_pc(DW$L$_F_4095$7$E)
DW$227	.dwtag  DW_TAG_loop_range
	.dwattr DW$227, DW_AT_low_pc(DW$L$_F_4095$8$B)
	.dwattr DW$227, DW_AT_high_pc(DW$L$_F_4095$8$E)
DW$228	.dwtag  DW_TAG_loop_range
	.dwattr DW$228, DW_AT_low_pc(DW$L$_F_4095$9$B)
	.dwattr DW$228, DW_AT_high_pc(DW$L$_F_4095$9$E)
DW$229	.dwtag  DW_TAG_loop_range
	.dwattr DW$229, DW_AT_low_pc(DW$L$_F_4095$10$B)
	.dwattr DW$229, DW_AT_high_pc(DW$L$_F_4095$10$E)
	.dwendtag DW$220

	.dwattr DW$218, DW_AT_end_file("sensor.c")
	.dwattr DW$218, DW_AT_end_line(0xbc)
	.dwattr DW$218, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$218

	.sect	".text"
	.global	_F_127

DW$230	.dwtag  DW_TAG_subprogram, DW_AT_name("F_127"), DW_AT_symbol_name("_F_127")
	.dwattr DW$230, DW_AT_low_pc(_F_127)
	.dwattr DW$230, DW_AT_high_pc(0x00)
	.dwattr DW$230, DW_AT_begin_file("sensor.c")
	.dwattr DW$230, DW_AT_begin_line(0xf5)
	.dwattr DW$230, DW_AT_begin_column(0x06)
	.dwpsn	"sensor.c",246,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_127                        FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter,  0 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_127:
;*** 247	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 248	-----------------------    a = 0;
;*** 249	-----------------------    VFDPrintf("        ");
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$23 = &g_sen[0];
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#6
	.dwcfa	0x1d, -10
;* AR3   assigned to K$23
DW$231	.dwtag  DW_TAG_variable, DW_AT_name("K$23"), DW_AT_symbol_name("K$23")
	.dwattr DW$231, DW_AT_type(*DW$T$195)
	.dwattr DW$231, DW_AT_location[DW_OP_reg10]
	.dwpsn	"sensor.c",247,3
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |247| 
	.dwpsn	"sensor.c",248,3
        MOVW      DP,#_a
        MOV       @_a,#0                ; |248| 
	.dwpsn	"sensor.c",249,3
        MOVL      XAR4,#FSL6            ; |249| 
        MOVL      *-SP[2],XAR4          ; |249| 
        LCR       #_VFDPrintf           ; |249| 
        ; call occurs [#_VFDPrintf] ; |249| 
        MOVL      XAR3,#_g_sen
L98:    
DW$L$_F_127$2$B:
;***	-----------------------g2:
;*** 256	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"sensor.c",256,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |256| 
        BF        L99,NTC               ; |256| 
        ; branchcc occurs ; |256| 
DW$L$_F_127$2$E:
DW$L$_F_127$3$B:
;*** 263	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"sensor.c",263,8
        TBIT      @_GpioDataRegs+1,#8   ; |263| 
        BF        L100,TC               ; |263| 
        ; branchcc occurs ; |263| 
DW$L$_F_127$3$E:
DW$L$_F_127$4$B:
;*** 266	-----------------------    --a;
;*** 267	-----------------------    DSP28x_usDelay(1999998uL);
;*** 267	-----------------------    goto g6;
	.dwpsn	"sensor.c",266,4
        MOVW      DP,#_a
        DEC       @_a                   ; |266| 
	.dwpsn	"sensor.c",267,4
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |267| 
        ; call occurs [#_DSP28x_usDelay] ; |267| 
        BF        L100,UNC              ; |267| 
        ; branch occurs ; |267| 
DW$L$_F_127$4$E:
L99:    
DW$L$_F_127$5$B:
;***	-----------------------g5:
;*** 259	-----------------------    ++a;
;*** 260	-----------------------    DSP28x_usDelay(1999998uL);
	.dwpsn	"sensor.c",259,4
        MOVW      DP,#_a
        INC       @_a                   ; |259| 
	.dwpsn	"sensor.c",260,4
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |260| 
        ; call occurs [#_DSP28x_usDelay] ; |260| 
DW$L$_F_127$5$E:
L100:    
DW$L$_F_127$6$B:
;***	-----------------------g6:
;*** 270	-----------------------    if ( a < 0 ) goto g9;
	.dwpsn	"sensor.c",270,3
        MOVW      DP,#_a
        MOV       AL,@_a                ; |270| 
        BF        L101,LT               ; |270| 
        ; branchcc occurs ; |270| 
DW$L$_F_127$6$E:
DW$L$_F_127$7$B:
;*** 272	-----------------------    if ( a < 16 ) goto g10;
	.dwpsn	"sensor.c",272,8
        CMPB      AL,#16                ; |272| 
        BF        L102,LT               ; |272| 
        ; branchcc occurs ; |272| 
DW$L$_F_127$7$E:
DW$L$_F_127$8$B:
;*** 272	-----------------------    a = 0;
;*** 272	-----------------------    goto g10;
	.dwpsn	"sensor.c",272,18
        MOV       @_a,#0                ; |272| 
        BF        L102,UNC              ; |272| 
        ; branch occurs ; |272| 
DW$L$_F_127$8$E:
L101:    
DW$L$_F_127$9$B:
;***	-----------------------g9:
;*** 270	-----------------------    a = 15;
	.dwpsn	"sensor.c",270,12
        MOV       @_a,#15               ; |270| 
DW$L$_F_127$9$E:
L102:    
DW$L$_F_127$10$B:
;***	-----------------------g10:
;*** 275	-----------------------    VFDPrintf("S%d:%.0f", a, _IQ17toF((K$23[(long)a]).iq17_127_value));
;*** 281	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"sensor.c",275,3
        MOVL      XAR4,XAR3             ; |275| 
        MOV       T,@_a                 ; |275| 
        MPYB      ACC,T,#14             ; |275| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[6]         ; |275| 
        LCR       #__IQ17toF            ; |275| 
        ; call occurs [#__IQ17toF] ; |275| 
        MOVW      DP,#_a
        MOVZ      AR6,@_a               ; |275| 
        MOVL      XAR4,#FSL13           ; |275| 
        MOVL      *-SP[2],XAR4          ; |275| 
        MOV       *-SP[3],AR6           ; |275| 
        MOVL      *-SP[6],ACC           ; |275| 
        LCR       #_VFDPrintf           ; |275| 
        ; call occurs [#_VFDPrintf] ; |275| 
	.dwpsn	"sensor.c",281,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |281| 
        BF        L98,TC                ; |281| 
        ; branchcc occurs ; |281| 
DW$L$_F_127$10$E:
;*** 284	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 286	-----------------------    a = 3;
;*** 286	-----------------------    return;
	.dwpsn	"sensor.c",284,2
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |284| 
	.dwpsn	"sensor.c",286,2
        MOVW      DP,#_a
        MOV       @_a,#3                ; |286| 
	.dwpsn	"sensor.c",288,1
        SUBB      SP,#6
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs

DW$232	.dwtag  DW_TAG_loop
	.dwattr DW$232, DW_AT_name("C:\project\_Viper_\main\sensor.asm:L98:1:1729866709")
	.dwattr DW$232, DW_AT_begin_file("sensor.c")
	.dwattr DW$232, DW_AT_begin_line(0xfb)
	.dwattr DW$232, DW_AT_end_line(0x119)
DW$233	.dwtag  DW_TAG_loop_range
	.dwattr DW$233, DW_AT_low_pc(DW$L$_F_127$2$B)
	.dwattr DW$233, DW_AT_high_pc(DW$L$_F_127$2$E)
DW$234	.dwtag  DW_TAG_loop_range
	.dwattr DW$234, DW_AT_low_pc(DW$L$_F_127$3$B)
	.dwattr DW$234, DW_AT_high_pc(DW$L$_F_127$3$E)
DW$235	.dwtag  DW_TAG_loop_range
	.dwattr DW$235, DW_AT_low_pc(DW$L$_F_127$4$B)
	.dwattr DW$235, DW_AT_high_pc(DW$L$_F_127$4$E)
DW$236	.dwtag  DW_TAG_loop_range
	.dwattr DW$236, DW_AT_low_pc(DW$L$_F_127$5$B)
	.dwattr DW$236, DW_AT_high_pc(DW$L$_F_127$5$E)
DW$237	.dwtag  DW_TAG_loop_range
	.dwattr DW$237, DW_AT_low_pc(DW$L$_F_127$6$B)
	.dwattr DW$237, DW_AT_high_pc(DW$L$_F_127$6$E)
DW$238	.dwtag  DW_TAG_loop_range
	.dwattr DW$238, DW_AT_low_pc(DW$L$_F_127$7$B)
	.dwattr DW$238, DW_AT_high_pc(DW$L$_F_127$7$E)
DW$239	.dwtag  DW_TAG_loop_range
	.dwattr DW$239, DW_AT_low_pc(DW$L$_F_127$8$B)
	.dwattr DW$239, DW_AT_high_pc(DW$L$_F_127$8$E)
DW$240	.dwtag  DW_TAG_loop_range
	.dwattr DW$240, DW_AT_low_pc(DW$L$_F_127$9$B)
	.dwattr DW$240, DW_AT_high_pc(DW$L$_F_127$9$E)
DW$241	.dwtag  DW_TAG_loop_range
	.dwattr DW$241, DW_AT_low_pc(DW$L$_F_127$10$B)
	.dwattr DW$241, DW_AT_high_pc(DW$L$_F_127$10$E)
	.dwendtag DW$232

	.dwattr DW$230, DW_AT_end_file("sensor.c")
	.dwattr DW$230, DW_AT_end_line(0x120)
	.dwattr DW$230, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$230

	.sect	".text"
	.global	_ADC_TIMER_ISR

DW$242	.dwtag  DW_TAG_subprogram, DW_AT_name("ADC_TIMER_ISR"), DW_AT_symbol_name("_ADC_TIMER_ISR")
	.dwattr DW$242, DW_AT_low_pc(_ADC_TIMER_ISR)
	.dwattr DW$242, DW_AT_high_pc(0x00)
	.dwattr DW$242, DW_AT_begin_file("sensor.c")
	.dwattr DW$242, DW_AT_begin_line(0x14f)
	.dwattr DW$242, DW_AT_begin_column(0x10)
	.dwattr DW$242, DW_AT_TI_interrupt(0x01)
	.dwpsn	"sensor.c",336,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _ADC_TIMER_ISR                FR SIZE:  16           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  0 Auto, 14 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_ADC_TIMER_ISR:
;*** 341	-----------------------    PieCtrlRegs.PIEACK.all = 1u;
;*** 342	-----------------------    GpioDataRegs.GPACLEAR.all = 1L<<sen_arr[g_int32_sen_cnt];
;*** 344	-----------------------    adc_L = AdcMirror.ADCRESULT0;
;*** 345	-----------------------    adc_L += AdcMirror.ADCRESULT1;
;*** 346	-----------------------    adc_L += AdcMirror.ADCRESULT2;
;*** 347	-----------------------    adc_L += AdcMirror.ADCRESULT3;
;*** 349	-----------------------    adc_R = AdcMirror.ADCRESULT4;
;*** 350	-----------------------    adc_R += AdcMirror.ADCRESULT5;
;*** 351	-----------------------    adc_R += AdcMirror.ADCRESULT6;
;*** 352	-----------------------    adc_R += AdcMirror.ADCRESULT7;
;*** 354	-----------------------    adc_L += AdcMirror.ADCRESULT8;
;*** 355	-----------------------    adc_L += AdcMirror.ADCRESULT9;
;*** 356	-----------------------    adc_L += AdcMirror.ADCRESULT10;
;*** 357	-----------------------    adc_L += AdcMirror.ADCRESULT11;
;*** 359	-----------------------    adc_R += AdcMirror.ADCRESULT12;
;*** 360	-----------------------    adc_R += AdcMirror.ADCRESULT13;
;*** 361	-----------------------    adc_R += AdcMirror.ADCRESULT14;
;*** 362	-----------------------    adc_R += AdcMirror.ADCRESULT15;
;*** 364	-----------------------    C$3 = &AdcRegs;
;*** 364	-----------------------    ((volatile unsigned *)C$3)[1] |= 0x4000u;
;*** 365	-----------------------    *((volatile struct _ADCST_BITS *)C$3+25L) |= 0x10u;
;*** 368	-----------------------    K$16 = &g_sen[0];
;*** 368	-----------------------    (K$16[g_int32_sen_cnt]).iq17_4095_value = adc_L<<14;
;*** 369	-----------------------    (K$16[g_int32_sen_cnt+8uL]).iq17_4095_value = adc_R<<14;
;*** 371	-----------------------    K$16 = K$16;
;*** 371	-----------------------    if ( (K$16[g_int32_copmare_cnt]).iq17_4095_value > (K$16[g_int32_copmare_cnt]).iq17_4095_max_value ) goto g5;
        ASP
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        PUSH      AR1H:AR0H
	.dwcfa	0x80, 5, 2
	.dwcfa	0x80, 7, 3
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 10, 4
	.dwcfa	0x80, 11, 5
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR4
	.dwcfa	0x80, 12, 6
	.dwcfa	0x80, 13, 7
	.dwcfa	0x1d, -8
        MOVL      *SP++,XAR5
	.dwcfa	0x80, 14, 8
	.dwcfa	0x80, 15, 9
	.dwcfa	0x1d, -10
        MOVL      *SP++,XAR6
	.dwcfa	0x80, 16, 10
	.dwcfa	0x80, 17, 11
	.dwcfa	0x1d, -12
        MOVL      *SP++,XAR7
	.dwcfa	0x80, 18, 12
	.dwcfa	0x80, 19, 13
	.dwcfa	0x1d, -14
        MOVL      *SP++,XT
	.dwcfa	0x80, 21, 14
	.dwcfa	0x80, 22, 15
	.dwcfa	0x1d, -16
        ADDB      SP,#2
	.dwcfa	0x1d, -18
        SPM       0
        CLRC      PAGE0,OVM
        CLRC      AMODE
;* AR4   assigned to C$3
DW$243	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$243, DW_AT_type(*DW$T$174)
	.dwattr DW$243, DW_AT_location[DW_OP_reg12]
;* AR3   assigned to K$31
DW$244	.dwtag  DW_TAG_variable, DW_AT_name("K$31"), DW_AT_symbol_name("K$31")
	.dwattr DW$244, DW_AT_type(*DW$T$96)
	.dwattr DW$244, DW_AT_location[DW_OP_reg10]
;* AR3   assigned to K$43
DW$245	.dwtag  DW_TAG_variable, DW_AT_name("K$43"), DW_AT_symbol_name("K$43")
	.dwattr DW$245, DW_AT_type(*DW$T$96)
	.dwattr DW$245, DW_AT_location[DW_OP_reg10]
;* AL    assigned to T$1
DW$246	.dwtag  DW_TAG_variable, DW_AT_name("T$1"), DW_AT_symbol_name("T$1")
	.dwattr DW$246, DW_AT_type(*DW$T$13)
	.dwattr DW$246, DW_AT_location[DW_OP_reg0]
;* AL    assigned to T$2
DW$247	.dwtag  DW_TAG_variable, DW_AT_name("T$2"), DW_AT_symbol_name("T$2")
	.dwattr DW$247, DW_AT_type(*DW$T$13)
	.dwattr DW$247, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to K$16
DW$248	.dwtag  DW_TAG_variable, DW_AT_name("K$16"), DW_AT_symbol_name("K$16")
	.dwattr DW$248, DW_AT_type(*DW$T$195)
	.dwattr DW$248, DW_AT_location[DW_OP_reg12]
;* AR1   assigned to K$16
DW$249	.dwtag  DW_TAG_variable, DW_AT_name("K$16"), DW_AT_symbol_name("K$16")
	.dwattr DW$249, DW_AT_type(*DW$T$195)
	.dwattr DW$249, DW_AT_location[DW_OP_reg6]
	.dwpsn	"sensor.c",341,2
        MOVW      DP,#_PieCtrlRegs+1
        MOV       @_PieCtrlRegs+1,#1    ; |341| 
	.dwpsn	"sensor.c",342,2
        MOVL      XAR4,#_sen_arr        ; |342| 
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      ACC,XAR4              ; |342| 
        ADDL      ACC,@_g_int32_sen_cnt ; |342| 
        MOVL      XAR4,ACC              ; |342| 
        MOVB      ACC,#1
        MOV       T,*+XAR4[0]           ; |342| 
        MOVW      DP,#_GpioDataRegs+4
        LSLL      ACC,T                 ; |342| 
        MOVL      @_GpioDataRegs+4,ACC  ; |342| 
	.dwpsn	"sensor.c",344,2
        MOVW      DP,#_AdcMirror
        MOVU      ACC,@_AdcMirror
        MOVW      DP,#_adc_L
        MOVL      @_adc_L,ACC           ; |344| 
	.dwpsn	"sensor.c",345,2
        MOVW      DP,#_AdcMirror+1
        MOVU      ACC,@_AdcMirror+1
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |345| 
	.dwpsn	"sensor.c",346,2
        MOVW      DP,#_AdcMirror+2
        MOVU      ACC,@_AdcMirror+2
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |346| 
	.dwpsn	"sensor.c",347,2
        MOVW      DP,#_AdcMirror+3
        MOVU      ACC,@_AdcMirror+3
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |347| 
	.dwpsn	"sensor.c",349,2
        MOVW      DP,#_AdcMirror+4
        MOVU      ACC,@_AdcMirror+4
        MOVW      DP,#_adc_R
        MOVL      @_adc_R,ACC           ; |349| 
	.dwpsn	"sensor.c",350,2
        MOVW      DP,#_AdcMirror+5
        MOVU      ACC,@_AdcMirror+5
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |350| 
	.dwpsn	"sensor.c",351,2
        MOVW      DP,#_AdcMirror+6
        MOVU      ACC,@_AdcMirror+6
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |351| 
	.dwpsn	"sensor.c",352,2
        MOVW      DP,#_AdcMirror+7
        MOVU      ACC,@_AdcMirror+7
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |352| 
	.dwpsn	"sensor.c",354,2
        MOVW      DP,#_AdcMirror+8
        MOVU      ACC,@_AdcMirror+8
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |354| 
	.dwpsn	"sensor.c",355,2
        MOVW      DP,#_AdcMirror+9
        MOVU      ACC,@_AdcMirror+9
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |355| 
	.dwpsn	"sensor.c",356,2
        MOVW      DP,#_AdcMirror+10
        MOVU      ACC,@_AdcMirror+10
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |356| 
	.dwpsn	"sensor.c",357,2
        MOVW      DP,#_AdcMirror+11
        MOVU      ACC,@_AdcMirror+11
        MOVW      DP,#_adc_L
        ADDL      @_adc_L,ACC           ; |357| 
	.dwpsn	"sensor.c",359,2
        MOVW      DP,#_AdcMirror+12
        MOVU      ACC,@_AdcMirror+12
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |359| 
	.dwpsn	"sensor.c",360,2
        MOVW      DP,#_AdcMirror+13
        MOVU      ACC,@_AdcMirror+13
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |360| 
	.dwpsn	"sensor.c",361,2
        MOVW      DP,#_AdcMirror+14
        MOVU      ACC,@_AdcMirror+14
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |361| 
	.dwpsn	"sensor.c",362,2
        MOVW      DP,#_AdcMirror+15
        MOVU      ACC,@_AdcMirror+15
        MOVW      DP,#_adc_R
        ADDL      @_adc_R,ACC           ; |362| 
	.dwpsn	"sensor.c",364,2
        MOVL      XAR4,#_AdcRegs        ; |364| 
        OR        *+XAR4[1],#0x4000     ; |364| 
	.dwpsn	"sensor.c",365,2
        MOVB      ACC,#25
        ADDL      ACC,XAR4
        MOVL      XAR4,ACC              ; |365| 
        OR        *+XAR4[0],#0x0010     ; |365| 
	.dwpsn	"sensor.c",368,2
        MOVL      XAR4,#_g_sen          ; |368| 
        MOVB      ACC,#14
        MOVL      XAR5,XAR4             ; |368| 
        MOVW      DP,#_g_int32_sen_cnt
        MOVL      XT,ACC                ; |368| 
        IMPYL     ACC,XT,@_g_int32_sen_cnt ; |368| 
        ADDL      XAR5,ACC
        MOVW      DP,#_adc_L
        MOVL      ACC,@_adc_L           ; |368| 
        LSL       ACC,14                ; |368| 
        MOVL      *+XAR5[0],ACC         ; |368| 
	.dwpsn	"sensor.c",369,2
        MOVB      XAR6,#14
        MOVW      DP,#_g_int32_sen_cnt
        MOVB      ACC,#8
        MOVL      XAR5,XAR4             ; |369| 
        MOVL      XT,XAR6               ; |369| 
        ADDL      ACC,@_g_int32_sen_cnt ; |369| 
        IMPYL     ACC,XT,ACC            ; |369| 
        ADDL      XAR5,ACC
        MOVW      DP,#_adc_R
        MOVL      ACC,@_adc_R           ; |369| 
        LSL       ACC,14                ; |369| 
        MOVL      *+XAR5[0],ACC         ; |369| 
	.dwpsn	"sensor.c",371,2
        MOVB      ACC,#14
        MOVW      DP,#_g_int32_copmare_cnt
        MOVL      XT,ACC                ; |371| 
        MOVL      XAR1,XAR4             ; |371| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |371| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[4]        ; |371| 
        MOVB      ACC,#14
        MOVL      XAR4,XAR1             ; |371| 
        MOVL      XT,ACC                ; |371| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |371| 
        MOVL      ACC,P                 ; |371| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |371| 
        CMPL      ACC,*+XAR4[0]         ; |371| 
        BF        L104,LT               ; |371| 
        ; branchcc occurs ; |371| 
;*** 374	-----------------------    if ( (K$16[g_int32_copmare_cnt]).iq17_4095_value < (K$16[g_int32_copmare_cnt]).iq17_4095_min_value ) goto g4;
	.dwpsn	"sensor.c",374,7
        MOVL      XAR4,XAR1             ; |374| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |374| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |374| 
        ADDL      XAR4,ACC
        MOVL      XAR6,*+XAR4[2]        ; |374| 
        MOVB      ACC,#14
        MOVL      XAR4,XAR1             ; |374| 
        MOVL      XT,ACC                ; |374| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |374| 
        MOVL      ACC,P                 ; |374| 
        ADDL      XAR4,ACC
        MOVL      ACC,XAR6              ; |374| 
        CMPL      ACC,*+XAR4[0]         ; |374| 
        BF        L103,GT               ; |374| 
        ; branchcc occurs ; |374| 
;*** 378	-----------------------    (K$16[g_int32_copmare_cnt]).iq17_127_value = __IQmpy(_IQ17div((K$16[g_int32_copmare_cnt]).iq17_4095_value-(K$16[g_int32_copmare_cnt]).iq17_4095_min_value, (K$16[g_int32_copmare_cnt]).iq17_4095_max_value-(K$16[g_int32_copmare_cnt]).iq17_4095_min_value), 16646144L, 17);
;*** 378	-----------------------    goto g6;
	.dwpsn	"sensor.c",378,3
        MOVB      ACC,#14
        MOVL      XAR4,XAR1             ; |378| 
        MOVL      XT,ACC                ; |378| 
        MOVL      XAR5,XAR1             ; |378| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |378| 
        ADDL      XAR4,ACC
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |378| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |378| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[4]         ; |378| 
        SUBL      ACC,*+XAR4[2]         ; |378| 
        MOVL      *-SP[2],ACC           ; |378| 
        MOVL      XAR4,XAR1             ; |378| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |378| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |378| 
        ADDL      XAR4,ACC
        MOVL      XAR5,XAR1             ; |378| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |378| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |378| 
        ADDL      XAR5,ACC
        MOVL      ACC,*+XAR5[0]         ; |378| 
        SUBL      ACC,*+XAR4[2]         ; |378| 
        LCR       #__IQ17div            ; |378| 
        ; call occurs [#__IQ17div] ; |378| 
        MOVL      XT,ACC                ; |378| 
        MOV       AH,#254
        MOV       AL,#0
        IMPYL     P,XT,ACC              ; |378| 
        QMPYL     ACC,XT,ACC            ; |378| 
        LSL64     ACC:P,#15             ; |378| 
        MOVL      XAR6,ACC              ; |378| 
        MOVB      ACC,#14
        MOVW      DP,#_g_int32_copmare_cnt
        MOVL      XAR4,XAR1             ; |378| 
        MOVL      XT,ACC                ; |378| 
        IMPYL     P,XT,@_g_int32_copmare_cnt ; |378| 
        MOVL      ACC,P                 ; |378| 
        ADDL      XAR4,ACC
        MOVL      *+XAR4[6],XAR6        ; |378| 
        BF        L105,UNC              ; |378| 
        ; branch occurs ; |378| 
L103:    
;***	-----------------------g4:
;*** 375	-----------------------    (K$16[g_int32_copmare_cnt]).iq17_127_value = 0L;
;*** 375	-----------------------    goto g6;
	.dwpsn	"sensor.c",375,3
        MOVL      XAR4,XAR1             ; |375| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |375| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |375| 
        ADDL      XAR4,ACC
        MOVB      ACC,#0
        MOVL      *+XAR4[6],ACC         ; |375| 
        BF        L105,UNC              ; |375| 
        ; branch occurs ; |375| 
L104:    
;***	-----------------------g5:
;*** 372	-----------------------    (K$16[g_int32_copmare_cnt]).iq17_127_value = 16646144L;
	.dwpsn	"sensor.c",372,3
        MOVL      XAR4,XAR1             ; |372| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |372| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |372| 
        ADDL      XAR4,ACC
        MOV       PH,#254
        MOV       PL,#0
        MOVL      *+XAR4[6],P           ; |372| 
L105:    
;***	-----------------------g6:
;*** 382	-----------------------    if ( (K$16[g_int32_copmare_cnt]).iq17_127_value < 4587520L ) goto g9;
	.dwpsn	"sensor.c",382,2
        MOVL      XAR4,XAR1             ; |382| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |382| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |382| 
        ADDL      XAR4,ACC
        MOV       AL,#0
        MOV       AH,#70
        CMPL      ACC,*+XAR4[6]         ; |382| 
        BF        L106,GT               ; |382| 
        ; branchcc occurs ; |382| 
;*** 385	-----------------------    if ( (K$16[g_int32_copmare_cnt]).iq17_127_value < 4587520L ) goto g10;
	.dwpsn	"sensor.c",385,7
        MOVL      XAR4,XAR1             ; |385| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |385| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |385| 
        ADDL      XAR4,ACC
        MOV       AL,#0
        MOV       AH,#70
        CMPL      ACC,*+XAR4[6]         ; |385| 
        BF        L107,GT               ; |385| 
        ; branchcc occurs ; |385| 
;*** 386	-----------------------    (K$16[g_int32_copmare_cnt]).iq17_ON_OFF_value = 131072L;
;*** 386	-----------------------    goto g10;
	.dwpsn	"sensor.c",386,3
        MOVL      XAR5,XAR1             ; |386| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |386| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |386| 
        ADDL      XAR5,ACC
        MOVL      XAR4,#131072          ; |386| 
        MOVB      XAR0,#8               ; |386| 
        MOVL      *+XAR5[AR0],XAR4      ; |386| 
        BF        L107,UNC              ; |386| 
        ; branch occurs ; |386| 
L106:    
;***	-----------------------g9:
;*** 383	-----------------------    (K$16[g_int32_copmare_cnt]).iq17_ON_OFF_value = 0L;
	.dwpsn	"sensor.c",383,3
        MOVL      XAR4,XAR1             ; |383| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |383| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |383| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#8               ; |383| 
        MOVB      ACC,#0
        MOVL      *+XAR4[AR0],ACC       ; |383| 
L107:    
;***	-----------------------g10:
;*** 390	-----------------------    if ( (K$16[g_int32_copmare_cnt]).iq17_127_value > 7864320L ) goto g12;
	.dwpsn	"sensor.c",390,2
        MOVL      XAR4,XAR1             ; |390| 
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |390| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |390| 
        ADDL      XAR4,ACC
        MOV       AL,#0
        MOV       AH,#120
        CMPL      ACC,*+XAR4[6]         ; |390| 
        BF        L108,LT               ; |390| 
        ; branchcc occurs ; |390| 
;*** 396	-----------------------    g_pos.u16state &= (K$16[g_int32_copmare_cnt]).u16passive_arr;
;*** 396	-----------------------    goto g13;
	.dwpsn	"sensor.c",396,4
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |396| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |396| 
        ADDL      XAR1,ACC
        MOVB      XAR0,#11              ; |396| 
        MOVW      DP,#_g_pos+9
        MOV       AL,*+XAR1[AR0]        ; |396| 
        AND       @_g_pos+9,AL          ; |396| 
        BF        L109,UNC              ; |396| 
        ; branch occurs ; |396| 
L108:    
;***	-----------------------g12:
;*** 392	-----------------------    g_pos.u16state |= (K$16[g_int32_copmare_cnt]).u16active_arr;
;*** 393	-----------------------    *&g_Flag &= 0xffefu;
	.dwpsn	"sensor.c",392,10
        MOVB      ACC,#14
        MOVL      XT,ACC                ; |392| 
        IMPYL     ACC,XT,@_g_int32_copmare_cnt ; |392| 
        ADDL      XAR1,ACC
        MOVB      XAR0,#10              ; |392| 
        MOVW      DP,#_g_pos+9
        MOV       AL,*+XAR1[AR0]        ; |392| 
        OR        @_g_pos+9,AL          ; |392| 
	.dwpsn	"sensor.c",393,7
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xffef      ; |393| 
L109:    
;***	-----------------------g13:
;*** 398	-----------------------    ++g_int32_copmare_cnt;
;*** 400	-----------------------    if ( g_int32_copmare_cnt < 16uL ) goto g15;
	.dwpsn	"sensor.c",398,2
        MOVB      ACC,#1
        MOVW      DP,#_g_int32_copmare_cnt
        ADDL      @_g_int32_copmare_cnt,ACC ; |398| 
	.dwpsn	"sensor.c",400,2
        MOVB      ACC,#16
        CMPL      ACC,@_g_int32_copmare_cnt ; |400| 
        BF        L110,HI               ; |400| 
        ; branchcc occurs ; |400| 
;*** 401	-----------------------    g_int32_copmare_cnt = 0uL;
	.dwpsn	"sensor.c",401,3
        MOVB      ACC,#0
        MOVL      @_g_int32_copmare_cnt,ACC ; |401| 
L110:    
;***	-----------------------g15:
;*** 403	-----------------------    ++g_int32_sen_cnt;
;*** 405	-----------------------    if ( g_int32_sen_cnt != 8uL ) goto g17;
	.dwpsn	"sensor.c",403,2
        MOVB      ACC,#1
        MOVW      DP,#_g_int32_sen_cnt
        ADDL      @_g_int32_sen_cnt,ACC ; |403| 
	.dwpsn	"sensor.c",405,2
        MOVB      ACC,#8
        CMPL      ACC,@_g_int32_sen_cnt ; |405| 
        BF        L111,NEQ              ; |405| 
        ; branchcc occurs ; |405| 
;*** 407	-----------------------    g_int32_sen_cnt = 0uL;
	.dwpsn	"sensor.c",407,3
        MOVB      ACC,#0
        MOVL      @_g_int32_sen_cnt,ACC ; |407| 
L111:    
;***	-----------------------g17:
;*** 410	-----------------------    if ( !(*&g_Flag&1u) ) goto g22;
	.dwpsn	"sensor.c",410,2
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#0           ; |410| 
        BF        L113,NTC              ; |410| 
        ; branchcc occurs ; |410| 
;*** 413	-----------------------    ++g_int32_isr_cnt;
;*** 414	-----------------------    ++g_i32_Time_index;
;*** 416	-----------------------    K$31 = &LMotor;
;*** 416	-----------------------    T$1 = ++(*K$31).u32_Period_Cnt;
;*** 416	-----------------------    if ( T$1 < (*K$31).u32_Period ) goto g20;
	.dwpsn	"sensor.c",413,3
        MOVB      ACC,#1
        MOVW      DP,#_g_int32_isr_cnt
        ADDL      @_g_int32_isr_cnt,ACC ; |413| 
	.dwpsn	"sensor.c",414,9
        MOVW      DP,#_g_i32_Time_index
        ADDL      @_g_i32_Time_index,ACC ; |414| 
	.dwpsn	"sensor.c",416,3
        MOVL      XAR3,#_LMotor         ; |416| 
        MOVB      ACC,#20
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |416| 
        MOVB      ACC,#1
        MOVB      XAR0,#22              ; |416| 
        ADDL      ACC,*+XAR4[0]         ; |416| 
        MOVL      *+XAR4[0],ACC         ; |416| 
        CMPL      ACC,*+XAR3[AR0]       ; |416| 
        BF        L112,LO               ; |416| 
        ; branchcc occurs ; |416| 
;*** 418	-----------------------    Motor_CalBaseMotionValue(K$31);
;*** 419	-----------------------    ++g_u32_L_index;
;*** 420	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0fffuL|(unsigned long)left_step[(g_u32_L_index&3uL)];
;*** 421	-----------------------    L_Motor_ON(K$31);
	.dwpsn	"sensor.c",418,4
        MOVL      XAR4,XAR3             ; |418| 
        LCR       #_Motor_CalBaseMotionValue ; |418| 
        ; call occurs [#_Motor_CalBaseMotionValue] ; |418| 
	.dwpsn	"sensor.c",419,4
        MOVW      DP,#_g_u32_L_index
        MOVB      ACC,#1
        ADDL      @_g_u32_L_index,ACC   ; |419| 
	.dwpsn	"sensor.c",420,4
        MOVL      ACC,@_g_u32_L_index   ; |420| 
        ANDB      AL,#0x03              ; |420| 
        MOVB      AH,#0
        MOVL      XAR4,#_left_step      ; |420| 
        LSL       ACC,1                 ; |420| 
        ADDL      XAR4,ACC
        MOVW      DP,#_GpioDataRegs
        MOVL      ACC,@_GpioDataRegs    ; |420| 
        AND       AL,#4095              ; |420| 
        OR        AL,*+XAR4[0]          ; |420| 
        OR        AH,*+XAR4[1]          ; |420| 
        MOVL      @_GpioDataRegs,ACC    ; |420| 
	.dwpsn	"sensor.c",421,4
        MOVL      XAR4,XAR3             ; |421| 
        LCR       #_L_Motor_ON          ; |421| 
        ; call occurs [#_L_Motor_ON] ; |421| 
L112:    
;***	-----------------------g20:
;*** 425	-----------------------    K$43 = &RMotor;
;*** 425	-----------------------    T$2 = ++(*K$43).u32_Period_Cnt;
;*** 425	-----------------------    if ( T$2 < (*K$43).u32_Period ) goto g23;
	.dwpsn	"sensor.c",425,3
        MOVL      XAR3,#_RMotor         ; |425| 
        MOVB      ACC,#20
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |425| 
        MOVB      XAR0,#22              ; |425| 
        MOVB      ACC,#1
        ADDL      ACC,*+XAR4[0]         ; |425| 
        MOVL      *+XAR4[0],ACC         ; |425| 
        CMPL      ACC,*+XAR3[AR0]       ; |425| 
        BF        L114,LO               ; |425| 
        ; branchcc occurs ; |425| 
;*** 427	-----------------------    Motor_CalBaseMotionValue(K$43);
;*** 428	-----------------------    ++g_u32_R_index;
;*** 429	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xfffffff0uL|(unsigned long)right_step[(g_u32_R_index&3uL)];
;*** 430	-----------------------    R_Motor_ON(K$43);
;*** 430	-----------------------    goto g23;
	.dwpsn	"sensor.c",427,4
        MOVL      XAR4,XAR3             ; |427| 
        LCR       #_Motor_CalBaseMotionValue ; |427| 
        ; call occurs [#_Motor_CalBaseMotionValue] ; |427| 
	.dwpsn	"sensor.c",428,4
        MOVW      DP,#_g_u32_R_index
        MOVB      ACC,#1
        ADDL      @_g_u32_R_index,ACC   ; |428| 
	.dwpsn	"sensor.c",429,4
        MOVL      ACC,@_g_u32_R_index   ; |429| 
        ANDB      AL,#0x03              ; |429| 
        MOVB      AH,#0
        MOVL      XAR4,#_right_step     ; |429| 
        LSL       ACC,1                 ; |429| 
        ADDL      XAR4,ACC
        MOVW      DP,#_GpioDataRegs
        MOVL      ACC,@_GpioDataRegs    ; |429| 
        AND       AL,#65520             ; |429| 
        OR        AL,*+XAR4[0]          ; |429| 
        OR        AH,*+XAR4[1]          ; |429| 
        MOVL      @_GpioDataRegs,ACC    ; |429| 
	.dwpsn	"sensor.c",430,4
        MOVL      XAR4,XAR3             ; |430| 
        LCR       #_R_Motor_ON          ; |430| 
        ; call occurs [#_R_Motor_ON] ; |430| 
        BF        L114,UNC              ; |430| 
        ; branch occurs ; |430| 
L113:    
;***	-----------------------g22:
;*** 433	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0ff0uL;
;***	-----------------------g23:
;***  	-----------------------    return;
	.dwpsn	"sensor.c",433,7
        MOVW      DP,#_GpioDataRegs
        AND       @_GpioDataRegs,#4080  ; |433| 
L114:    
	.dwpsn	"sensor.c",435,1
        SUBB      SP,#2
	.dwcfa	0x1d, -16
        MOVL      XT,*--SP
	.dwcfa	0x1d, -14
	.dwcfa	0xc0, 22
	.dwcfa	0xc0, 21
        MOVL      XAR7,*--SP
	.dwcfa	0x1d, -12
	.dwcfa	0xc0, 18
        MOVL      XAR6,*--SP
	.dwcfa	0x1d, -10
	.dwcfa	0xc0, 16
        MOVL      XAR5,*--SP
	.dwcfa	0x1d, -8
	.dwcfa	0xc0, 14
        MOVL      XAR4,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 12
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 10
        POP       AR1H:AR0H
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 5
	.dwcfa	0xc0, 7
        NASP
        IRET
        ; return occurs
	.dwattr DW$242, DW_AT_end_file("sensor.c")
	.dwattr DW$242, DW_AT_end_line(0x1b3)
	.dwattr DW$242, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$242

;* Inlined function references:
;* [ 26] mark_enable_shift
;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"2nd  END",0
	.align	2
FSL2:	.string	"T:%3.2lf",0
	.align	2
FSL3:	.string	" END_ON ",0
	.align	2
FSL4:	.string	"Line Out",0
	.align	2
FSL5:	.string	"MARK:%ld",0
	.align	2
FSL6:	.string	"        ",0
	.align	2
FSL7:	.string	"T%d:%3lu",0
	.align	2
FSL8:	.string	"POSCHECK",0
	.align	2
FSL9:	.string	"P:%6ld",0
	.align	2
FSL10:	.string	"LOADING_",0
	.align	2
FSL11:	.string	"Set_MIN_",0
	.align	2
FSL12:	.string	"Set_MAX_",0
	.align	2
FSL13:	.string	"S%d:%.0f",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_L_Motor_ON
	.global	_move_to_end
	.global	_Motor_CalBaseMotionValue
	.global	_R_Motor_ON
	.global	_VFDPrintf
	.global	_second_info
	.global	_DSP28x_usDelay
	.global	_read_mark_cnt_rom
	.global	_maxmin_write_rom
	.global	_read_line_info_rom
	.global	_g_Flag
	.global	_g_u16turn_dist
	.global	_g_u16pos_cnt
	.global	_U16_turnmark_cnt
	.global	_a
	.global	_cnt
	.global	_g_fp32time
	.global	_g_i32_Time_index
	.global	_g_q17_handle_acc
	.global	_adc_R
	.global	_adc_L
	.global	_g_q17_handle_dec
	.global	_g_q15cross_dist
	.global	_g_u32_L_index
	.global	_g_u32_R_index
	.global	_g_int32_isr_cnt
	.global	_g_int32total_cnt
	.global	_g_int32_copmare_cnt
	.global	_g_int32_sen_cnt
	.global	_g_u32_END_ACC_targetval
	.global	_g_int32_lineout_cnt
	.global	__IQ17div
	.global	_g_shift
	.global	__IQ17toF
	.global	__IQ7div
	.global	_memset
	.global	_CpuTimer0Regs
	.global	_g_pos
	.global	_g_lmark
	.global	_g_rmark
	.global	_AdcMirror
	.global	_PieCtrlRegs
	.global	_AdcRegs
	.global	_GpioDataRegs
	.global	_RMotor
	.global	_LMotor
	.global	_g_sen
	.global	_search_info

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$89	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
DW$250	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$251	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$252	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$88)
	.dwendtag DW$T$89


DW$T$93	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$93, DW_AT_language(DW_LANG_C)
DW$253	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$92)
DW$254	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$93


DW$T$97	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$97, DW_AT_language(DW_LANG_C)
DW$255	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$96)
	.dwendtag DW$T$97


DW$T$101	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$101, DW_AT_language(DW_LANG_C)
DW$256	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$99)
DW$257	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$99)
DW$258	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$100)
	.dwendtag DW$T$101


DW$T$103	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$103, DW_AT_language(DW_LANG_C)

DW$T$107	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$107, DW_AT_language(DW_LANG_C)
DW$259	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$106)
	.dwendtag DW$T$107


DW$T$109	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$260	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$109


DW$T$111	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$111, DW_AT_language(DW_LANG_C)

DW$T$115	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$115, DW_AT_language(DW_LANG_C)
DW$261	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
DW$262	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
	.dwendtag DW$T$115


DW$T$116	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$116, DW_AT_language(DW_LANG_C)
DW$263	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$114)
	.dwendtag DW$T$116


DW$T$121	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$121, DW_AT_language(DW_LANG_C)
DW$264	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$120)
	.dwendtag DW$T$121

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$60	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)

DW$T$124	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$124, DW_AT_language(DW_LANG_C)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$265	.dwtag  DW_TAG_far_type
	.dwattr DW$265, DW_AT_type(*DW$T$22)
DW$T$125	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$125, DW_AT_type(*DW$265)

DW$T$126	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$125)
	.dwattr DW$T$126, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$126, DW_AT_byte_size(0x08)
DW$266	.dwtag  DW_TAG_subrange_type
	.dwattr DW$266, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$126


DW$T$127	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$125)
	.dwattr DW$T$127, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$127, DW_AT_byte_size(0x10)
DW$267	.dwtag  DW_TAG_subrange_type
	.dwattr DW$267, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$127


DW$T$128	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$125)
	.dwattr DW$T$128, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$128, DW_AT_byte_size(0x13)
DW$268	.dwtag  DW_TAG_subrange_type
	.dwattr DW$268, DW_AT_upper_bound(0x12)
	.dwendtag DW$T$128

DW$T$133	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$129)
	.dwattr DW$T$133, DW_AT_address_class(0x16)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$269	.dwtag  DW_TAG_far_type
	.dwattr DW$269, DW_AT_type(*DW$T$19)
DW$T$99	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$99, DW_AT_type(*DW$269)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$270	.dwtag  DW_TAG_far_type
	.dwattr DW$270, DW_AT_type(*DW$T$25)
DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$100, DW_AT_type(*DW$270)

DW$T$134	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$100)
	.dwattr DW$T$134, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$134, DW_AT_byte_size(0x08)
DW$271	.dwtag  DW_TAG_subrange_type
	.dwattr DW$271, DW_AT_upper_bound(0x03)
	.dwendtag DW$T$134


DW$T$135	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$25)
	.dwattr DW$T$135, DW_AT_language(DW_LANG_C)

DW$T$136	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$136, DW_AT_language(DW_LANG_C)
DW$272	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$273	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$274	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$136


DW$T$137	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$137, DW_AT_language(DW_LANG_C)
DW$275	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$276	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$137

DW$T$143	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$141)
	.dwattr DW$T$143, DW_AT_address_class(0x16)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$277	.dwtag  DW_TAG_far_type
	.dwattr DW$277, DW_AT_type(*DW$T$21)
DW$T$144	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$144, DW_AT_type(*DW$277)
DW$T$88	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$88, DW_AT_language(DW_LANG_C)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$146	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$146, DW_AT_language(DW_LANG_C)
DW$278	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$146

DW$T$148	.dwtag  DW_TAG_typedef, DW_AT_name("float32"), DW_AT_type(*DW$T$16)
	.dwattr DW$T$148, DW_AT_language(DW_LANG_C)
DW$T$95	.dwtag  DW_TAG_typedef, DW_AT_name("MOTORCTRL"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$95, DW_AT_language(DW_LANG_C)
DW$T$96	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$95)
	.dwattr DW$T$96, DW_AT_address_class(0x16)
DW$T$106	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$105)
	.dwattr DW$T$106, DW_AT_address_class(0x16)

DW$T$150	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$105)
	.dwattr DW$T$150, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$150, DW_AT_byte_size(0x1a00)
DW$279	.dwtag  DW_TAG_subrange_type
	.dwattr DW$279, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$150

DW$T$152	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$152, DW_AT_address_class(0x16)
DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("turnmark_t"), DW_AT_type(*DW$T$112)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$114	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$113)
	.dwattr DW$T$114, DW_AT_address_class(0x16)
DW$280	.dwtag  DW_TAG_far_type
	.dwattr DW$280, DW_AT_type(*DW$T$114)
DW$T$153	.dwtag  DW_TAG_const_type
	.dwattr DW$T$153, DW_AT_type(*DW$280)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("position_t"), DW_AT_type(*DW$T$118)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$120	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$119)
	.dwattr DW$T$120, DW_AT_address_class(0x16)
DW$T$158	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$157)
	.dwattr DW$T$158, DW_AT_address_class(0x16)
DW$T$170	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$169)
	.dwattr DW$T$170, DW_AT_address_class(0x16)
DW$281	.dwtag  DW_TAG_far_type
	.dwattr DW$281, DW_AT_type(*DW$T$37)
DW$T$171	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$171, DW_AT_type(*DW$281)
DW$T$174	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$173)
	.dwattr DW$T$174, DW_AT_address_class(0x16)
DW$282	.dwtag  DW_TAG_far_type
	.dwattr DW$282, DW_AT_type(*DW$T$63)
DW$T$181	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$181, DW_AT_type(*DW$282)
DW$283	.dwtag  DW_TAG_far_type
	.dwattr DW$283, DW_AT_type(*DW$T$64)
DW$T$183	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$183, DW_AT_type(*DW$283)
DW$284	.dwtag  DW_TAG_far_type
	.dwattr DW$284, DW_AT_type(*DW$T$75)
DW$T$186	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$186, DW_AT_type(*DW$284)
DW$285	.dwtag  DW_TAG_far_type
	.dwattr DW$285, DW_AT_type(*DW$T$84)
DW$T$190	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$190, DW_AT_type(*DW$285)

DW$T$193	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$192)
	.dwattr DW$T$193, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$193, DW_AT_byte_size(0xe0)
DW$286	.dwtag  DW_TAG_subrange_type
	.dwattr DW$286, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$193

DW$T$195	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$191)
	.dwattr DW$T$195, DW_AT_address_class(0x16)
DW$T$196	.dwtag  DW_TAG_typedef, DW_AT_name("sen_enable_str"), DW_AT_type(*DW$T$86)
	.dwattr DW$T$196, DW_AT_language(DW_LANG_C)
DW$T$198	.dwtag  DW_TAG_typedef, DW_AT_name("bit_field_flag_t"), DW_AT_type(*DW$T$197)
	.dwattr DW$T$198, DW_AT_language(DW_LANG_C)
DW$T$92	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$91)
	.dwattr DW$T$92, DW_AT_address_class(0x16)
DW$287	.dwtag  DW_TAG_far_type
	.dwattr DW$287, DW_AT_type(*DW$T$11)
DW$T$129	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$129, DW_AT_type(*DW$287)
DW$288	.dwtag  DW_TAG_far_type
	.dwattr DW$288, DW_AT_type(*DW$T$12)
DW$T$141	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$141, DW_AT_type(*DW$288)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x2e)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$289, DW_AT_name("iqTargetA"), DW_AT_symbol_name("_iqTargetA")
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$290, DW_AT_name("iqDist"), DW_AT_symbol_name("_iqDist")
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$291, DW_AT_name("iqVelo"), DW_AT_symbol_name("_iqVelo")
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$292, DW_AT_name("iqTargetV"), DW_AT_symbol_name("_iqTargetV")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$293, DW_AT_name("iqNextV"), DW_AT_symbol_name("_iqNextV")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$294, DW_AT_name("iqAmpyS"), DW_AT_symbol_name("_iqAmpyS")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$295, DW_AT_name("iqHandle"), DW_AT_symbol_name("_iqHandle")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$296, DW_AT_name("iqTotalDis"), DW_AT_symbol_name("_iqTotalDis")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$297, DW_AT_name("iq24TargetA_1"), DW_AT_symbol_name("_iq24TargetA_1")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$298, DW_AT_name("iq24TimeValue"), DW_AT_symbol_name("_iq24TimeValue")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$299, DW_AT_name("u32_Period_Cnt"), DW_AT_symbol_name("_u32_Period_Cnt")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$300, DW_AT_name("u32_Period"), DW_AT_symbol_name("_u32_Period")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$301, DW_AT_name("u16_pPeriod"), DW_AT_symbol_name("_u16_pPeriod")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$302, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$303, DW_AT_name("iq15GoneDist"), DW_AT_symbol_name("_iq15GoneDist")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$304, DW_AT_name("iq15Cross_Check_Dist"), DW_AT_symbol_name("_iq15Cross_Check_Dist")
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$305, DW_AT_name("iq17Start_Check_Dist"), DW_AT_symbol_name("_iq17Start_Check_Dist")
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$306, DW_AT_name("iq17distance_sum"), DW_AT_symbol_name("_iq17distance_sum")
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$307, DW_AT_name("iq17decel_distance"), DW_AT_symbol_name("_iq17decel_distance")
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$308, DW_AT_name("iq17err_distance"), DW_AT_symbol_name("_iq17err_distance")
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$309, DW_AT_name("iq17user_distance"), DW_AT_symbol_name("_iq17user_distance")
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$310, DW_AT_name("iq17decel_vel"), DW_AT_symbol_name("_iq17decel_vel")
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$311, DW_AT_name("u16decel_flag"), DW_AT_symbol_name("_u16decel_flag")
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("first_race_info")
	.dwattr DW$T$27, DW_AT_byte_size(0x1a)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$312, DW_AT_name("int32dist"), DW_AT_symbol_name("_int32dist")
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$313, DW_AT_name("int32turn_way"), DW_AT_symbol_name("_int32turn_way")
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$314, DW_AT_name("int32L_dist"), DW_AT_symbol_name("_int32L_dist")
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$315, DW_AT_name("int32R_dist"), DW_AT_symbol_name("_int32R_dist")
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$316, DW_AT_name("int32cross_check_dist"), DW_AT_symbol_name("_int32cross_check_dist")
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$317, DW_AT_name("int32turn_dir"), DW_AT_symbol_name("_int32turn_dir")
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$318, DW_AT_name("int32turn_cnt"), DW_AT_symbol_name("_int32turn_cnt")
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$319, DW_AT_name("int32accel"), DW_AT_symbol_name("_int32accel")
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$320, DW_AT_name("iq7in_vel"), DW_AT_symbol_name("_iq7in_vel")
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$321, DW_AT_name("iq7vel"), DW_AT_symbol_name("_iq7vel")
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$322, DW_AT_name("iq7out_vel"), DW_AT_symbol_name("_iq7out_vel")
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$323, DW_AT_name("iq7dec_dist"), DW_AT_symbol_name("_iq7dec_dist")
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$324, DW_AT_name("iq7m_dist"), DW_AT_symbol_name("_iq7m_dist")
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27

DW$T$105	.dwtag  DW_TAG_typedef, DW_AT_name("race_info"), DW_AT_type(*DW$T$27)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
DW$325	.dwtag  DW_TAG_far_type
	.dwattr DW$325, DW_AT_type(*DW$T$28)
DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$112, DW_AT_type(*DW$325)
DW$326	.dwtag  DW_TAG_far_type
	.dwattr DW$326, DW_AT_type(*DW$T$31)
DW$T$118	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$118, DW_AT_type(*DW$326)
DW$327	.dwtag  DW_TAG_far_type
	.dwattr DW$327, DW_AT_type(*DW$T$32)
DW$T$157	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$157, DW_AT_type(*DW$327)
DW$328	.dwtag  DW_TAG_far_type
	.dwattr DW$328, DW_AT_type(*DW$T$34)
DW$T$169	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$169, DW_AT_type(*DW$328)

DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$37, DW_AT_byte_size(0x20)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$329, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$330, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$331, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$332, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$333, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$334, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$335, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$336, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$337, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37

DW$338	.dwtag  DW_TAG_far_type
	.dwattr DW$338, DW_AT_type(*DW$T$40)
DW$T$173	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$173, DW_AT_type(*DW$338)

DW$T$63	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$63, DW_AT_name("ADC_REGS")
	.dwattr DW$T$63, DW_AT_byte_size(0x1e)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$339, DW_AT_name("ADCTRL1"), DW_AT_symbol_name("_ADCTRL1")
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$340, DW_AT_name("ADCTRL2"), DW_AT_symbol_name("_ADCTRL2")
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$43)
	.dwattr DW$341, DW_AT_name("ADCMAXCONV"), DW_AT_symbol_name("_ADCMAXCONV")
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$342, DW_AT_name("ADCCHSELSEQ1"), DW_AT_symbol_name("_ADCCHSELSEQ1")
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$343, DW_AT_name("ADCCHSELSEQ2"), DW_AT_symbol_name("_ADCCHSELSEQ2")
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$49)
	.dwattr DW$344, DW_AT_name("ADCCHSELSEQ3"), DW_AT_symbol_name("_ADCCHSELSEQ3")
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$51)
	.dwattr DW$345, DW_AT_name("ADCCHSELSEQ4"), DW_AT_symbol_name("_ADCCHSELSEQ4")
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$53)
	.dwattr DW$346, DW_AT_name("ADCASEQSR"), DW_AT_symbol_name("_ADCASEQSR")
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$347, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$348, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$349, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$350, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$351, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$352, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$353, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$354, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$355, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$356, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$357, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$358, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$359, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$360, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$361, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$362, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$55)
	.dwattr DW$363, DW_AT_name("ADCTRL3"), DW_AT_symbol_name("_ADCTRL3")
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$57)
	.dwattr DW$364, DW_AT_name("ADCST"), DW_AT_symbol_name("_ADCST")
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$365, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$366, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x1b]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$59)
	.dwattr DW$367, DW_AT_name("ADCREFSEL"), DW_AT_symbol_name("_ADCREFSEL")
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
DW$368	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$62)
	.dwattr DW$368, DW_AT_name("ADCOFFTRIM"), DW_AT_symbol_name("_ADCOFFTRIM")
	.dwattr DW$368, DW_AT_data_member_location[DW_OP_plus_uconst 0x1d]
	.dwattr DW$368, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$63


DW$T$64	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$64, DW_AT_name("ADC_RESULT_MIRROR_REGS")
	.dwattr DW$T$64, DW_AT_byte_size(0x10)
DW$369	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$369, DW_AT_name("ADCRESULT0"), DW_AT_symbol_name("_ADCRESULT0")
	.dwattr DW$369, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$369, DW_AT_accessibility(DW_ACCESS_public)
DW$370	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$370, DW_AT_name("ADCRESULT1"), DW_AT_symbol_name("_ADCRESULT1")
	.dwattr DW$370, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$370, DW_AT_accessibility(DW_ACCESS_public)
DW$371	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$371, DW_AT_name("ADCRESULT2"), DW_AT_symbol_name("_ADCRESULT2")
	.dwattr DW$371, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$371, DW_AT_accessibility(DW_ACCESS_public)
DW$372	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$372, DW_AT_name("ADCRESULT3"), DW_AT_symbol_name("_ADCRESULT3")
	.dwattr DW$372, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$372, DW_AT_accessibility(DW_ACCESS_public)
DW$373	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$373, DW_AT_name("ADCRESULT4"), DW_AT_symbol_name("_ADCRESULT4")
	.dwattr DW$373, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$373, DW_AT_accessibility(DW_ACCESS_public)
DW$374	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$374, DW_AT_name("ADCRESULT5"), DW_AT_symbol_name("_ADCRESULT5")
	.dwattr DW$374, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$374, DW_AT_accessibility(DW_ACCESS_public)
DW$375	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$375, DW_AT_name("ADCRESULT6"), DW_AT_symbol_name("_ADCRESULT6")
	.dwattr DW$375, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$375, DW_AT_accessibility(DW_ACCESS_public)
DW$376	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$376, DW_AT_name("ADCRESULT7"), DW_AT_symbol_name("_ADCRESULT7")
	.dwattr DW$376, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$376, DW_AT_accessibility(DW_ACCESS_public)
DW$377	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$377, DW_AT_name("ADCRESULT8"), DW_AT_symbol_name("_ADCRESULT8")
	.dwattr DW$377, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$377, DW_AT_accessibility(DW_ACCESS_public)
DW$378	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$378, DW_AT_name("ADCRESULT9"), DW_AT_symbol_name("_ADCRESULT9")
	.dwattr DW$378, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$378, DW_AT_accessibility(DW_ACCESS_public)
DW$379	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$379, DW_AT_name("ADCRESULT10"), DW_AT_symbol_name("_ADCRESULT10")
	.dwattr DW$379, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$379, DW_AT_accessibility(DW_ACCESS_public)
DW$380	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$380, DW_AT_name("ADCRESULT11"), DW_AT_symbol_name("_ADCRESULT11")
	.dwattr DW$380, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$380, DW_AT_accessibility(DW_ACCESS_public)
DW$381	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$381, DW_AT_name("ADCRESULT12"), DW_AT_symbol_name("_ADCRESULT12")
	.dwattr DW$381, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$381, DW_AT_accessibility(DW_ACCESS_public)
DW$382	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$382, DW_AT_name("ADCRESULT13"), DW_AT_symbol_name("_ADCRESULT13")
	.dwattr DW$382, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$382, DW_AT_accessibility(DW_ACCESS_public)
DW$383	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$383, DW_AT_name("ADCRESULT14"), DW_AT_symbol_name("_ADCRESULT14")
	.dwattr DW$383, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$383, DW_AT_accessibility(DW_ACCESS_public)
DW$384	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$384, DW_AT_name("ADCRESULT15"), DW_AT_symbol_name("_ADCRESULT15")
	.dwattr DW$384, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$384, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$64


DW$T$75	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$75, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$75, DW_AT_byte_size(0x08)
DW$385	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$66)
	.dwattr DW$385, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$385, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$385, DW_AT_accessibility(DW_ACCESS_public)
DW$386	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$68)
	.dwattr DW$386, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$386, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$386, DW_AT_accessibility(DW_ACCESS_public)
DW$387	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$70)
	.dwattr DW$387, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$387, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$387, DW_AT_accessibility(DW_ACCESS_public)
DW$388	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$388, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$388, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$388, DW_AT_accessibility(DW_ACCESS_public)
DW$389	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$72)
	.dwattr DW$389, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$389, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$389, DW_AT_accessibility(DW_ACCESS_public)
DW$390	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$74)
	.dwattr DW$390, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$390, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$390, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$75


DW$T$84	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$84, DW_AT_name("PIE_CTRL_REGS")
	.dwattr DW$T$84, DW_AT_byte_size(0x1a)
DW$391	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$77)
	.dwattr DW$391, DW_AT_name("PIECTRL"), DW_AT_symbol_name("_PIECTRL")
	.dwattr DW$391, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$391, DW_AT_accessibility(DW_ACCESS_public)
DW$392	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$79)
	.dwattr DW$392, DW_AT_name("PIEACK"), DW_AT_symbol_name("_PIEACK")
	.dwattr DW$392, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$392, DW_AT_accessibility(DW_ACCESS_public)
DW$393	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$393, DW_AT_name("PIEIER1"), DW_AT_symbol_name("_PIEIER1")
	.dwattr DW$393, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$393, DW_AT_accessibility(DW_ACCESS_public)
DW$394	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$394, DW_AT_name("PIEIFR1"), DW_AT_symbol_name("_PIEIFR1")
	.dwattr DW$394, DW_AT_data_member_location[DW_OP_plus_uconst 0x3]
	.dwattr DW$394, DW_AT_accessibility(DW_ACCESS_public)
DW$395	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$395, DW_AT_name("PIEIER2"), DW_AT_symbol_name("_PIEIER2")
	.dwattr DW$395, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$395, DW_AT_accessibility(DW_ACCESS_public)
DW$396	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$396, DW_AT_name("PIEIFR2"), DW_AT_symbol_name("_PIEIFR2")
	.dwattr DW$396, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$396, DW_AT_accessibility(DW_ACCESS_public)
DW$397	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$397, DW_AT_name("PIEIER3"), DW_AT_symbol_name("_PIEIER3")
	.dwattr DW$397, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$397, DW_AT_accessibility(DW_ACCESS_public)
DW$398	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$398, DW_AT_name("PIEIFR3"), DW_AT_symbol_name("_PIEIFR3")
	.dwattr DW$398, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$398, DW_AT_accessibility(DW_ACCESS_public)
DW$399	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$399, DW_AT_name("PIEIER4"), DW_AT_symbol_name("_PIEIER4")
	.dwattr DW$399, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$399, DW_AT_accessibility(DW_ACCESS_public)
DW$400	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$400, DW_AT_name("PIEIFR4"), DW_AT_symbol_name("_PIEIFR4")
	.dwattr DW$400, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$400, DW_AT_accessibility(DW_ACCESS_public)
DW$401	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$401, DW_AT_name("PIEIER5"), DW_AT_symbol_name("_PIEIER5")
	.dwattr DW$401, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$401, DW_AT_accessibility(DW_ACCESS_public)
DW$402	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$402, DW_AT_name("PIEIFR5"), DW_AT_symbol_name("_PIEIFR5")
	.dwattr DW$402, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$402, DW_AT_accessibility(DW_ACCESS_public)
DW$403	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$403, DW_AT_name("PIEIER6"), DW_AT_symbol_name("_PIEIER6")
	.dwattr DW$403, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$403, DW_AT_accessibility(DW_ACCESS_public)
DW$404	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$404, DW_AT_name("PIEIFR6"), DW_AT_symbol_name("_PIEIFR6")
	.dwattr DW$404, DW_AT_data_member_location[DW_OP_plus_uconst 0xd]
	.dwattr DW$404, DW_AT_accessibility(DW_ACCESS_public)
DW$405	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$405, DW_AT_name("PIEIER7"), DW_AT_symbol_name("_PIEIER7")
	.dwattr DW$405, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$405, DW_AT_accessibility(DW_ACCESS_public)
DW$406	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$406, DW_AT_name("PIEIFR7"), DW_AT_symbol_name("_PIEIFR7")
	.dwattr DW$406, DW_AT_data_member_location[DW_OP_plus_uconst 0xf]
	.dwattr DW$406, DW_AT_accessibility(DW_ACCESS_public)
DW$407	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$407, DW_AT_name("PIEIER8"), DW_AT_symbol_name("_PIEIER8")
	.dwattr DW$407, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$407, DW_AT_accessibility(DW_ACCESS_public)
DW$408	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$408, DW_AT_name("PIEIFR8"), DW_AT_symbol_name("_PIEIFR8")
	.dwattr DW$408, DW_AT_data_member_location[DW_OP_plus_uconst 0x11]
	.dwattr DW$408, DW_AT_accessibility(DW_ACCESS_public)
DW$409	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$409, DW_AT_name("PIEIER9"), DW_AT_symbol_name("_PIEIER9")
	.dwattr DW$409, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$409, DW_AT_accessibility(DW_ACCESS_public)
DW$410	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$410, DW_AT_name("PIEIFR9"), DW_AT_symbol_name("_PIEIFR9")
	.dwattr DW$410, DW_AT_data_member_location[DW_OP_plus_uconst 0x13]
	.dwattr DW$410, DW_AT_accessibility(DW_ACCESS_public)
DW$411	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$411, DW_AT_name("PIEIER10"), DW_AT_symbol_name("_PIEIER10")
	.dwattr DW$411, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$411, DW_AT_accessibility(DW_ACCESS_public)
DW$412	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$412, DW_AT_name("PIEIFR10"), DW_AT_symbol_name("_PIEIFR10")
	.dwattr DW$412, DW_AT_data_member_location[DW_OP_plus_uconst 0x15]
	.dwattr DW$412, DW_AT_accessibility(DW_ACCESS_public)
DW$413	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$413, DW_AT_name("PIEIER11"), DW_AT_symbol_name("_PIEIER11")
	.dwattr DW$413, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$413, DW_AT_accessibility(DW_ACCESS_public)
DW$414	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$414, DW_AT_name("PIEIFR11"), DW_AT_symbol_name("_PIEIFR11")
	.dwattr DW$414, DW_AT_data_member_location[DW_OP_plus_uconst 0x17]
	.dwattr DW$414, DW_AT_accessibility(DW_ACCESS_public)
DW$415	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$81)
	.dwattr DW$415, DW_AT_name("PIEIER12"), DW_AT_symbol_name("_PIEIER12")
	.dwattr DW$415, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$415, DW_AT_accessibility(DW_ACCESS_public)
DW$416	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$83)
	.dwattr DW$416, DW_AT_name("PIEIFR12"), DW_AT_symbol_name("_PIEIFR12")
	.dwattr DW$416, DW_AT_data_member_location[DW_OP_plus_uconst 0x19]
	.dwattr DW$416, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$84

DW$417	.dwtag  DW_TAG_far_type
	.dwattr DW$417, DW_AT_type(*DW$T$85)
DW$T$191	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$191, DW_AT_type(*DW$417)
DW$T$192	.dwtag  DW_TAG_typedef, DW_AT_name("sen_t"), DW_AT_type(*DW$T$191)
	.dwattr DW$T$192, DW_AT_language(DW_LANG_C)

DW$T$86	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$86, DW_AT_name("shift_str")
	.dwattr DW$T$86, DW_AT_byte_size(0x02)
DW$418	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$418, DW_AT_name("u16sen_enable"), DW_AT_symbol_name("_u16sen_enable")
	.dwattr DW$418, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$418, DW_AT_accessibility(DW_ACCESS_public)
DW$419	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$419, DW_AT_name("u16sen_state"), DW_AT_symbol_name("_u16sen_state")
	.dwattr DW$419, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$419, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$86

DW$420	.dwtag  DW_TAG_far_type
	.dwattr DW$420, DW_AT_type(*DW$T$87)
DW$T$197	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$197, DW_AT_type(*DW$420)
DW$T$91	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$91, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$91, DW_AT_byte_size(0x01)

DW$T$36	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$36, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$36, DW_AT_byte_size(0x10)
DW$421	.dwtag  DW_TAG_subrange_type
	.dwattr DW$421, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$36

DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_byte_size(0x0e)
DW$422	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$422, DW_AT_name("iq17turnmark_dist"), DW_AT_symbol_name("_iq17turnmark_dist")
	.dwattr DW$422, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$422, DW_AT_accessibility(DW_ACCESS_public)
DW$423	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$423, DW_AT_name("iq17check_dist"), DW_AT_symbol_name("_iq17check_dist")
	.dwattr DW$423, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$423, DW_AT_accessibility(DW_ACCESS_public)
DW$424	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$424, DW_AT_name("iq17limit_dist"), DW_AT_symbol_name("_iq17limit_dist")
	.dwattr DW$424, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$424, DW_AT_accessibility(DW_ACCESS_public)
DW$425	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$425, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$425, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$425, DW_AT_accessibility(DW_ACCESS_public)
DW$426	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$426, DW_AT_name("u16State"), DW_AT_symbol_name("_u16State")
	.dwattr DW$426, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$426, DW_AT_accessibility(DW_ACCESS_public)
DW$427	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$427, DW_AT_name("u16mark_enable"), DW_AT_symbol_name("_u16mark_enable")
	.dwattr DW$427, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$427, DW_AT_accessibility(DW_ACCESS_public)
DW$428	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$428, DW_AT_name("u16turn_flag"), DW_AT_symbol_name("_u16turn_flag")
	.dwattr DW$428, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$428, DW_AT_accessibility(DW_ACCESS_public)
DW$429	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$429, DW_AT_name("u16single_flag"), DW_AT_symbol_name("_u16single_flag")
	.dwattr DW$429, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$429, DW_AT_accessibility(DW_ACCESS_public)
DW$430	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$430, DW_AT_name("u16cross_flag"), DW_AT_symbol_name("_u16cross_flag")
	.dwattr DW$430, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$430, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("position")
	.dwattr DW$T$31, DW_AT_byte_size(0x0c)
DW$431	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$431, DW_AT_name("iq17sum"), DW_AT_symbol_name("_iq17sum")
	.dwattr DW$431, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$431, DW_AT_accessibility(DW_ACCESS_public)
DW$432	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$432, DW_AT_name("iq7sum"), DW_AT_symbol_name("_iq7sum")
	.dwattr DW$432, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$432, DW_AT_accessibility(DW_ACCESS_public)
DW$433	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$433, DW_AT_name("iq7sum_of_sec"), DW_AT_symbol_name("_iq7sum_of_sec")
	.dwattr DW$433, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$433, DW_AT_accessibility(DW_ACCESS_public)
DW$434	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$434, DW_AT_name("iq7temp_pos"), DW_AT_symbol_name("_iq7temp_pos")
	.dwattr DW$434, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$434, DW_AT_accessibility(DW_ACCESS_public)
DW$435	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$435, DW_AT_name("u16enable"), DW_AT_symbol_name("_u16enable")
	.dwattr DW$435, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$435, DW_AT_accessibility(DW_ACCESS_public)
DW$436	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$436, DW_AT_name("u16state"), DW_AT_symbol_name("_u16state")
	.dwattr DW$436, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$436, DW_AT_accessibility(DW_ACCESS_public)
DW$437	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$437, DW_AT_name("iq10temp_position"), DW_AT_symbol_name("_iq10temp_position")
	.dwattr DW$437, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$437, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$438	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$438, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$438, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$438, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$438, DW_AT_accessibility(DW_ACCESS_public)
DW$439	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$439, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$439, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$439, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$439, DW_AT_accessibility(DW_ACCESS_public)
DW$440	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$440, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$440, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$440, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$440, DW_AT_accessibility(DW_ACCESS_public)
DW$441	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$441, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$441, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$441, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$441, DW_AT_accessibility(DW_ACCESS_public)
DW$442	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$442, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$442, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$442, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$442, DW_AT_accessibility(DW_ACCESS_public)
DW$443	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$443, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$443, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$443, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$443, DW_AT_accessibility(DW_ACCESS_public)
DW$444	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$444, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$444, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$444, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$444, DW_AT_accessibility(DW_ACCESS_public)
DW$445	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$445, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$445, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$445, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$445, DW_AT_accessibility(DW_ACCESS_public)
DW$446	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$446, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$446, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$446, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$446, DW_AT_accessibility(DW_ACCESS_public)
DW$447	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$447, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$447, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$447, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$447, DW_AT_accessibility(DW_ACCESS_public)
DW$448	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$448, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$448, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$448, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$448, DW_AT_accessibility(DW_ACCESS_public)
DW$449	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$449, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$449, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$449, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$449, DW_AT_accessibility(DW_ACCESS_public)
DW$450	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$450, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$450, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$450, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$450, DW_AT_accessibility(DW_ACCESS_public)
DW$451	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$451, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$451, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$451, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$451, DW_AT_accessibility(DW_ACCESS_public)
DW$452	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$452, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$452, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$452, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$452, DW_AT_accessibility(DW_ACCESS_public)
DW$453	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$453, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$453, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$453, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$453, DW_AT_accessibility(DW_ACCESS_public)
DW$454	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$454, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$454, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$454, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$454, DW_AT_accessibility(DW_ACCESS_public)
DW$455	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$455, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$455, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$455, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$455, DW_AT_accessibility(DW_ACCESS_public)
DW$456	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$456, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$456, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$456, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$456, DW_AT_accessibility(DW_ACCESS_public)
DW$457	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$457, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$457, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$457, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$457, DW_AT_accessibility(DW_ACCESS_public)
DW$458	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$458, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$458, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$458, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$458, DW_AT_accessibility(DW_ACCESS_public)
DW$459	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$459, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$459, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$459, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$459, DW_AT_accessibility(DW_ACCESS_public)
DW$460	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$460, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$460, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$460, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$460, DW_AT_accessibility(DW_ACCESS_public)
DW$461	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$461, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$461, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$461, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$461, DW_AT_accessibility(DW_ACCESS_public)
DW$462	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$462, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$462, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$462, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$462, DW_AT_accessibility(DW_ACCESS_public)
DW$463	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$463, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$463, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$463, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$463, DW_AT_accessibility(DW_ACCESS_public)
DW$464	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$464, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$464, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$464, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$464, DW_AT_accessibility(DW_ACCESS_public)
DW$465	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$465, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$465, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$465, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$465, DW_AT_accessibility(DW_ACCESS_public)
DW$466	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$466, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$466, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$466, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$466, DW_AT_accessibility(DW_ACCESS_public)
DW$467	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$467, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$467, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$467, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$467, DW_AT_accessibility(DW_ACCESS_public)
DW$468	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$468, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$468, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$468, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$468, DW_AT_accessibility(DW_ACCESS_public)
DW$469	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$469, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$469, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$469, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$469, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$470	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$470, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$470, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$470, DW_AT_accessibility(DW_ACCESS_public)
DW$471	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$471, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$471, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$471, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$34, DW_AT_byte_size(0x02)
DW$472	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$472, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$472, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$472, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$472, DW_AT_accessibility(DW_ACCESS_public)
DW$473	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$473, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$473, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$473, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$473, DW_AT_accessibility(DW_ACCESS_public)
DW$474	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$474, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$474, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$474, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$474, DW_AT_accessibility(DW_ACCESS_public)
DW$475	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$475, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$475, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$475, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$475, DW_AT_accessibility(DW_ACCESS_public)
DW$476	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$476, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$476, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$476, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$476, DW_AT_accessibility(DW_ACCESS_public)
DW$477	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$477, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$477, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$477, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$477, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$35, DW_AT_byte_size(0x02)
DW$478	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$478, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$478, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$478, DW_AT_accessibility(DW_ACCESS_public)
DW$479	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$479, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$479, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$479, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("ADCTRL1_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$480	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$480, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$480, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$480, DW_AT_accessibility(DW_ACCESS_public)
DW$481	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$481, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$481, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$481, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("ADCTRL2_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$482	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$482, DW_AT_name("EPWM_SOCB_SEQ2"), DW_AT_symbol_name("_EPWM_SOCB_SEQ2")
	.dwattr DW$482, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$482, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$482, DW_AT_accessibility(DW_ACCESS_public)
DW$483	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$483, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$483, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$483, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$483, DW_AT_accessibility(DW_ACCESS_public)
DW$484	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$484, DW_AT_name("INT_MOD_SEQ2"), DW_AT_symbol_name("_INT_MOD_SEQ2")
	.dwattr DW$484, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$484, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$484, DW_AT_accessibility(DW_ACCESS_public)
DW$485	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$485, DW_AT_name("INT_ENA_SEQ2"), DW_AT_symbol_name("_INT_ENA_SEQ2")
	.dwattr DW$485, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$485, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$485, DW_AT_accessibility(DW_ACCESS_public)
DW$486	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$486, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$486, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$486, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$486, DW_AT_accessibility(DW_ACCESS_public)
DW$487	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$487, DW_AT_name("SOC_SEQ2"), DW_AT_symbol_name("_SOC_SEQ2")
	.dwattr DW$487, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$487, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$487, DW_AT_accessibility(DW_ACCESS_public)
DW$488	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$488, DW_AT_name("RST_SEQ2"), DW_AT_symbol_name("_RST_SEQ2")
	.dwattr DW$488, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$488, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$488, DW_AT_accessibility(DW_ACCESS_public)
DW$489	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$489, DW_AT_name("EXT_SOC_SEQ1"), DW_AT_symbol_name("_EXT_SOC_SEQ1")
	.dwattr DW$489, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$489, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$489, DW_AT_accessibility(DW_ACCESS_public)
DW$490	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$490, DW_AT_name("EPWM_SOCA_SEQ1"), DW_AT_symbol_name("_EPWM_SOCA_SEQ1")
	.dwattr DW$490, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$490, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$490, DW_AT_accessibility(DW_ACCESS_public)
DW$491	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$491, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$491, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$491, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$491, DW_AT_accessibility(DW_ACCESS_public)
DW$492	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$492, DW_AT_name("INT_MOD_SEQ1"), DW_AT_symbol_name("_INT_MOD_SEQ1")
	.dwattr DW$492, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$492, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$492, DW_AT_accessibility(DW_ACCESS_public)
DW$493	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$493, DW_AT_name("INT_ENA_SEQ1"), DW_AT_symbol_name("_INT_ENA_SEQ1")
	.dwattr DW$493, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$493, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$493, DW_AT_accessibility(DW_ACCESS_public)
DW$494	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$494, DW_AT_name("rsvd4"), DW_AT_symbol_name("_rsvd4")
	.dwattr DW$494, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$494, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$494, DW_AT_accessibility(DW_ACCESS_public)
DW$495	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$495, DW_AT_name("SOC_SEQ1"), DW_AT_symbol_name("_SOC_SEQ1")
	.dwattr DW$495, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$495, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$495, DW_AT_accessibility(DW_ACCESS_public)
DW$496	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$496, DW_AT_name("RST_SEQ1"), DW_AT_symbol_name("_RST_SEQ1")
	.dwattr DW$496, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$496, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$496, DW_AT_accessibility(DW_ACCESS_public)
DW$497	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$497, DW_AT_name("EPWM_SOCB_SEQ"), DW_AT_symbol_name("_EPWM_SOCB_SEQ")
	.dwattr DW$497, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$497, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$497, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("ADCTRL2_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$498	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$498, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$498, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$498, DW_AT_accessibility(DW_ACCESS_public)
DW$499	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$499, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$499, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$499, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_union_type
	.dwattr DW$T$43, DW_AT_name("ADCMAXCONV_REG")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$500	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$500, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$500, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$500, DW_AT_accessibility(DW_ACCESS_public)
DW$501	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$42)
	.dwattr DW$501, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$501, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$501, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$45	.dwtag  DW_TAG_union_type
	.dwattr DW$T$45, DW_AT_name("ADCCHSELSEQ1_REG")
	.dwattr DW$T$45, DW_AT_byte_size(0x01)
DW$502	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$502, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$502, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$502, DW_AT_accessibility(DW_ACCESS_public)
DW$503	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$503, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$503, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$503, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$45


DW$T$47	.dwtag  DW_TAG_union_type
	.dwattr DW$T$47, DW_AT_name("ADCCHSELSEQ2_REG")
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$504	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$504, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$504, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$504, DW_AT_accessibility(DW_ACCESS_public)
DW$505	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$46)
	.dwattr DW$505, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$505, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$505, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$47


DW$T$49	.dwtag  DW_TAG_union_type
	.dwattr DW$T$49, DW_AT_name("ADCCHSELSEQ3_REG")
	.dwattr DW$T$49, DW_AT_byte_size(0x01)
DW$506	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$506, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$506, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$506, DW_AT_accessibility(DW_ACCESS_public)
DW$507	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$507, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$507, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$507, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_union_type
	.dwattr DW$T$51, DW_AT_name("ADCCHSELSEQ4_REG")
	.dwattr DW$T$51, DW_AT_byte_size(0x01)
DW$508	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$508, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$508, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$508, DW_AT_accessibility(DW_ACCESS_public)
DW$509	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$50)
	.dwattr DW$509, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$509, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$509, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$51


DW$T$53	.dwtag  DW_TAG_union_type
	.dwattr DW$T$53, DW_AT_name("ADCASEQSR_REG")
	.dwattr DW$T$53, DW_AT_byte_size(0x01)
DW$510	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$510, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$510, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$510, DW_AT_accessibility(DW_ACCESS_public)
DW$511	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$52)
	.dwattr DW$511, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$511, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$511, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_union_type
	.dwattr DW$T$55, DW_AT_name("ADCTRL3_REG")
	.dwattr DW$T$55, DW_AT_byte_size(0x01)
DW$512	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$512, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$512, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$512, DW_AT_accessibility(DW_ACCESS_public)
DW$513	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$54)
	.dwattr DW$513, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$513, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$513, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$55


DW$T$57	.dwtag  DW_TAG_union_type
	.dwattr DW$T$57, DW_AT_name("ADCST_REG")
	.dwattr DW$T$57, DW_AT_byte_size(0x01)
DW$514	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$514, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$514, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$514, DW_AT_accessibility(DW_ACCESS_public)
DW$515	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$56)
	.dwattr DW$515, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$515, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$515, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_union_type
	.dwattr DW$T$59, DW_AT_name("ADCREFSEL_REG")
	.dwattr DW$T$59, DW_AT_byte_size(0x01)
DW$516	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$516, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$516, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$516, DW_AT_accessibility(DW_ACCESS_public)
DW$517	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$58)
	.dwattr DW$517, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$517, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$517, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$59


DW$T$62	.dwtag  DW_TAG_union_type
	.dwattr DW$T$62, DW_AT_name("ADCOFFTRIM_REG")
	.dwattr DW$T$62, DW_AT_byte_size(0x01)
DW$518	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$518, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$518, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$518, DW_AT_accessibility(DW_ACCESS_public)
DW$519	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$61)
	.dwattr DW$519, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$519, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$519, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$62


DW$T$66	.dwtag  DW_TAG_union_type
	.dwattr DW$T$66, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$66, DW_AT_byte_size(0x02)
DW$520	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$520, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$520, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$520, DW_AT_accessibility(DW_ACCESS_public)
DW$521	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$65)
	.dwattr DW$521, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$521, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$521, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_union_type
	.dwattr DW$T$68, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$68, DW_AT_byte_size(0x02)
DW$522	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$522, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$522, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$522, DW_AT_accessibility(DW_ACCESS_public)
DW$523	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$67)
	.dwattr DW$523, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$523, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$523, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_union_type
	.dwattr DW$T$70, DW_AT_name("TCR_REG")
	.dwattr DW$T$70, DW_AT_byte_size(0x01)
DW$524	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$524, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$524, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$524, DW_AT_accessibility(DW_ACCESS_public)
DW$525	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$69)
	.dwattr DW$525, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$525, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$525, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$70


DW$T$72	.dwtag  DW_TAG_union_type
	.dwattr DW$T$72, DW_AT_name("TPR_REG")
	.dwattr DW$T$72, DW_AT_byte_size(0x01)
DW$526	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$526, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$526, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$526, DW_AT_accessibility(DW_ACCESS_public)
DW$527	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$71)
	.dwattr DW$527, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$527, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$527, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$72


DW$T$74	.dwtag  DW_TAG_union_type
	.dwattr DW$T$74, DW_AT_name("TPRH_REG")
	.dwattr DW$T$74, DW_AT_byte_size(0x01)
DW$528	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$528, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$528, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$528, DW_AT_accessibility(DW_ACCESS_public)
DW$529	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$73)
	.dwattr DW$529, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$529, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$529, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$74


DW$T$77	.dwtag  DW_TAG_union_type
	.dwattr DW$T$77, DW_AT_name("PIECTRL_REG")
	.dwattr DW$T$77, DW_AT_byte_size(0x01)
DW$530	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$530, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$530, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$530, DW_AT_accessibility(DW_ACCESS_public)
DW$531	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$76)
	.dwattr DW$531, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$531, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$531, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$77


DW$T$79	.dwtag  DW_TAG_union_type
	.dwattr DW$T$79, DW_AT_name("PIEACK_REG")
	.dwattr DW$T$79, DW_AT_byte_size(0x01)
DW$532	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$532, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$532, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$532, DW_AT_accessibility(DW_ACCESS_public)
DW$533	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$78)
	.dwattr DW$533, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$533, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$533, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$79


DW$T$81	.dwtag  DW_TAG_union_type
	.dwattr DW$T$81, DW_AT_name("PIEIER_REG")
	.dwattr DW$T$81, DW_AT_byte_size(0x01)
DW$534	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$534, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$534, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$534, DW_AT_accessibility(DW_ACCESS_public)
DW$535	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$80)
	.dwattr DW$535, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$535, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$535, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$81


DW$T$83	.dwtag  DW_TAG_union_type
	.dwattr DW$T$83, DW_AT_name("PIEIFR_REG")
	.dwattr DW$T$83, DW_AT_byte_size(0x01)
DW$536	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$536, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$536, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$536, DW_AT_accessibility(DW_ACCESS_public)
DW$537	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$82)
	.dwattr DW$537, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$537, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$537, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$83


DW$T$85	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$85, DW_AT_name("sensor_variable")
	.dwattr DW$T$85, DW_AT_byte_size(0x0e)
DW$538	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$538, DW_AT_name("iq17_4095_value"), DW_AT_symbol_name("_iq17_4095_value")
	.dwattr DW$538, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$538, DW_AT_accessibility(DW_ACCESS_public)
DW$539	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$539, DW_AT_name("iq17_4095_min_value"), DW_AT_symbol_name("_iq17_4095_min_value")
	.dwattr DW$539, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$539, DW_AT_accessibility(DW_ACCESS_public)
DW$540	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$540, DW_AT_name("iq17_4095_max_value"), DW_AT_symbol_name("_iq17_4095_max_value")
	.dwattr DW$540, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$540, DW_AT_accessibility(DW_ACCESS_public)
DW$541	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$541, DW_AT_name("iq17_127_value"), DW_AT_symbol_name("_iq17_127_value")
	.dwattr DW$541, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$541, DW_AT_accessibility(DW_ACCESS_public)
DW$542	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$542, DW_AT_name("iq17_ON_OFF_value"), DW_AT_symbol_name("_iq17_ON_OFF_value")
	.dwattr DW$542, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$542, DW_AT_accessibility(DW_ACCESS_public)
DW$543	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$543, DW_AT_name("u16active_arr"), DW_AT_symbol_name("_u16active_arr")
	.dwattr DW$543, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$543, DW_AT_accessibility(DW_ACCESS_public)
DW$544	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$544, DW_AT_name("u16passive_arr"), DW_AT_symbol_name("_u16passive_arr")
	.dwattr DW$544, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$544, DW_AT_accessibility(DW_ACCESS_public)
DW$545	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$545, DW_AT_name("iq7weight"), DW_AT_symbol_name("_iq7weight")
	.dwattr DW$545, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$545, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$85


DW$T$87	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$87, DW_AT_name("bit_field_flag")
	.dwattr DW$T$87, DW_AT_byte_size(0x01)
DW$546	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$546, DW_AT_name("motor"), DW_AT_symbol_name("_motor")
	.dwattr DW$546, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$546, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$546, DW_AT_accessibility(DW_ACCESS_public)
DW$547	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$547, DW_AT_name("move_state"), DW_AT_symbol_name("_move_state")
	.dwattr DW$547, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$547, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$547, DW_AT_accessibility(DW_ACCESS_public)
DW$548	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$548, DW_AT_name("start_flag"), DW_AT_symbol_name("_start_flag")
	.dwattr DW$548, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$548, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$548, DW_AT_accessibility(DW_ACCESS_public)
DW$549	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$549, DW_AT_name("cross_flag"), DW_AT_symbol_name("_cross_flag")
	.dwattr DW$549, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$549, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$549, DW_AT_accessibility(DW_ACCESS_public)
DW$550	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$550, DW_AT_name("lineout_flag"), DW_AT_symbol_name("_lineout_flag")
	.dwattr DW$550, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$550, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$550, DW_AT_accessibility(DW_ACCESS_public)
DW$551	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$551, DW_AT_name("end_flag"), DW_AT_symbol_name("_end_flag")
	.dwattr DW$551, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$551, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$551, DW_AT_accessibility(DW_ACCESS_public)
DW$552	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$552, DW_AT_name("stop_check"), DW_AT_symbol_name("_stop_check")
	.dwattr DW$552, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$552, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$552, DW_AT_accessibility(DW_ACCESS_public)
DW$553	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$553, DW_AT_name("Rturnmark_flag"), DW_AT_symbol_name("_Rturnmark_flag")
	.dwattr DW$553, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$553, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$553, DW_AT_accessibility(DW_ACCESS_public)
DW$554	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$554, DW_AT_name("Lturnmark_flag"), DW_AT_symbol_name("_Lturnmark_flag")
	.dwattr DW$554, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$554, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$554, DW_AT_accessibility(DW_ACCESS_public)
DW$555	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$555, DW_AT_name("speed_up"), DW_AT_symbol_name("_speed_up")
	.dwattr DW$555, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$555, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$555, DW_AT_accessibility(DW_ACCESS_public)
DW$556	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$556, DW_AT_name("speed_up_start"), DW_AT_symbol_name("_speed_up_start")
	.dwattr DW$556, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$556, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$556, DW_AT_accessibility(DW_ACCESS_public)
DW$557	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$557, DW_AT_name("straight_run"), DW_AT_symbol_name("_straight_run")
	.dwattr DW$557, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$557, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$557, DW_AT_accessibility(DW_ACCESS_public)
DW$558	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$558, DW_AT_name("first_race"), DW_AT_symbol_name("_first_race")
	.dwattr DW$558, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$558, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$558, DW_AT_accessibility(DW_ACCESS_public)
DW$559	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$559, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$559, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$559, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$559, DW_AT_accessibility(DW_ACCESS_public)
DW$560	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$560, DW_AT_name("race_start"), DW_AT_symbol_name("_race_start")
	.dwattr DW$560, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$560, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$560, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$87

DW$T$29	.dwtag  DW_TAG_typedef, DW_AT_name("_iq"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$T$30	.dwtag  DW_TAG_typedef, DW_AT_name("_iq10"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)

DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("ADCTRL1_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$561	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$561, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$561, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$561, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$561, DW_AT_accessibility(DW_ACCESS_public)
DW$562	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$562, DW_AT_name("SEQ_CASC"), DW_AT_symbol_name("_SEQ_CASC")
	.dwattr DW$562, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$562, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$562, DW_AT_accessibility(DW_ACCESS_public)
DW$563	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$563, DW_AT_name("SEQ_OVRD"), DW_AT_symbol_name("_SEQ_OVRD")
	.dwattr DW$563, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$563, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$563, DW_AT_accessibility(DW_ACCESS_public)
DW$564	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$564, DW_AT_name("CONT_RUN"), DW_AT_symbol_name("_CONT_RUN")
	.dwattr DW$564, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$564, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$564, DW_AT_accessibility(DW_ACCESS_public)
DW$565	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$565, DW_AT_name("CPS"), DW_AT_symbol_name("_CPS")
	.dwattr DW$565, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$565, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$565, DW_AT_accessibility(DW_ACCESS_public)
DW$566	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$566, DW_AT_name("ACQ_PS"), DW_AT_symbol_name("_ACQ_PS")
	.dwattr DW$566, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$566, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$566, DW_AT_accessibility(DW_ACCESS_public)
DW$567	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$567, DW_AT_name("SUSMOD"), DW_AT_symbol_name("_SUSMOD")
	.dwattr DW$567, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$567, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$567, DW_AT_accessibility(DW_ACCESS_public)
DW$568	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$568, DW_AT_name("RESET"), DW_AT_symbol_name("_RESET")
	.dwattr DW$568, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$568, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$568, DW_AT_accessibility(DW_ACCESS_public)
DW$569	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$569, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$569, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$569, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$569, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("ADCMAXCONV_BITS")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$570	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$570, DW_AT_name("MAX_CONV1"), DW_AT_symbol_name("_MAX_CONV1")
	.dwattr DW$570, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$570, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$570, DW_AT_accessibility(DW_ACCESS_public)
DW$571	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$571, DW_AT_name("MAX_CONV2"), DW_AT_symbol_name("_MAX_CONV2")
	.dwattr DW$571, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$571, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$571, DW_AT_accessibility(DW_ACCESS_public)
DW$572	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$572, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$572, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x09)
	.dwattr DW$572, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$572, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$44, DW_AT_name("ADCCHSELSEQ1_BITS")
	.dwattr DW$T$44, DW_AT_byte_size(0x01)
DW$573	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$573, DW_AT_name("CONV00"), DW_AT_symbol_name("_CONV00")
	.dwattr DW$573, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$573, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$573, DW_AT_accessibility(DW_ACCESS_public)
DW$574	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$574, DW_AT_name("CONV01"), DW_AT_symbol_name("_CONV01")
	.dwattr DW$574, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$574, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$574, DW_AT_accessibility(DW_ACCESS_public)
DW$575	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$575, DW_AT_name("CONV02"), DW_AT_symbol_name("_CONV02")
	.dwattr DW$575, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$575, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$575, DW_AT_accessibility(DW_ACCESS_public)
DW$576	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$576, DW_AT_name("CONV03"), DW_AT_symbol_name("_CONV03")
	.dwattr DW$576, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$576, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$576, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$44


DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("ADCCHSELSEQ2_BITS")
	.dwattr DW$T$46, DW_AT_byte_size(0x01)
DW$577	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$577, DW_AT_name("CONV04"), DW_AT_symbol_name("_CONV04")
	.dwattr DW$577, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$577, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$577, DW_AT_accessibility(DW_ACCESS_public)
DW$578	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$578, DW_AT_name("CONV05"), DW_AT_symbol_name("_CONV05")
	.dwattr DW$578, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$578, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$578, DW_AT_accessibility(DW_ACCESS_public)
DW$579	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$579, DW_AT_name("CONV06"), DW_AT_symbol_name("_CONV06")
	.dwattr DW$579, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$579, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$579, DW_AT_accessibility(DW_ACCESS_public)
DW$580	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$580, DW_AT_name("CONV07"), DW_AT_symbol_name("_CONV07")
	.dwattr DW$580, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$580, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$580, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$48	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$48, DW_AT_name("ADCCHSELSEQ3_BITS")
	.dwattr DW$T$48, DW_AT_byte_size(0x01)
DW$581	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$581, DW_AT_name("CONV08"), DW_AT_symbol_name("_CONV08")
	.dwattr DW$581, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$581, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$581, DW_AT_accessibility(DW_ACCESS_public)
DW$582	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$582, DW_AT_name("CONV09"), DW_AT_symbol_name("_CONV09")
	.dwattr DW$582, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$582, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$582, DW_AT_accessibility(DW_ACCESS_public)
DW$583	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$583, DW_AT_name("CONV10"), DW_AT_symbol_name("_CONV10")
	.dwattr DW$583, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$583, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$583, DW_AT_accessibility(DW_ACCESS_public)
DW$584	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$584, DW_AT_name("CONV11"), DW_AT_symbol_name("_CONV11")
	.dwattr DW$584, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$584, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$584, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$48


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("ADCCHSELSEQ4_BITS")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$585	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$585, DW_AT_name("CONV12"), DW_AT_symbol_name("_CONV12")
	.dwattr DW$585, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$585, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$585, DW_AT_accessibility(DW_ACCESS_public)
DW$586	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$586, DW_AT_name("CONV13"), DW_AT_symbol_name("_CONV13")
	.dwattr DW$586, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x04)
	.dwattr DW$586, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$586, DW_AT_accessibility(DW_ACCESS_public)
DW$587	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$587, DW_AT_name("CONV14"), DW_AT_symbol_name("_CONV14")
	.dwattr DW$587, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$587, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$587, DW_AT_accessibility(DW_ACCESS_public)
DW$588	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$588, DW_AT_name("CONV15"), DW_AT_symbol_name("_CONV15")
	.dwattr DW$588, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$588, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$588, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50


DW$T$52	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$52, DW_AT_name("ADCASEQSR_BITS")
	.dwattr DW$T$52, DW_AT_byte_size(0x01)
DW$589	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$589, DW_AT_name("SEQ1_STATE"), DW_AT_symbol_name("_SEQ1_STATE")
	.dwattr DW$589, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$589, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$589, DW_AT_accessibility(DW_ACCESS_public)
DW$590	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$590, DW_AT_name("SEQ2_STATE"), DW_AT_symbol_name("_SEQ2_STATE")
	.dwattr DW$590, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x03)
	.dwattr DW$590, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$590, DW_AT_accessibility(DW_ACCESS_public)
DW$591	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$591, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$591, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$591, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$591, DW_AT_accessibility(DW_ACCESS_public)
DW$592	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$592, DW_AT_name("SEQ_CNTR"), DW_AT_symbol_name("_SEQ_CNTR")
	.dwattr DW$592, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x04)
	.dwattr DW$592, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$592, DW_AT_accessibility(DW_ACCESS_public)
DW$593	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$593, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$593, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$593, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$593, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$52


DW$T$54	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$54, DW_AT_name("ADCTRL3_BITS")
	.dwattr DW$T$54, DW_AT_byte_size(0x01)
DW$594	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$594, DW_AT_name("SMODE_SEL"), DW_AT_symbol_name("_SMODE_SEL")
	.dwattr DW$594, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$594, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$594, DW_AT_accessibility(DW_ACCESS_public)
DW$595	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$595, DW_AT_name("ADCCLKPS"), DW_AT_symbol_name("_ADCCLKPS")
	.dwattr DW$595, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x04)
	.dwattr DW$595, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$595, DW_AT_accessibility(DW_ACCESS_public)
DW$596	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$596, DW_AT_name("ADCPWDN"), DW_AT_symbol_name("_ADCPWDN")
	.dwattr DW$596, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$596, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$596, DW_AT_accessibility(DW_ACCESS_public)
DW$597	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$597, DW_AT_name("ADCBGRFDN"), DW_AT_symbol_name("_ADCBGRFDN")
	.dwattr DW$597, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x02)
	.dwattr DW$597, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$597, DW_AT_accessibility(DW_ACCESS_public)
DW$598	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$598, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$598, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$598, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$598, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$54


DW$T$56	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$56, DW_AT_name("ADCST_BITS")
	.dwattr DW$T$56, DW_AT_byte_size(0x01)
DW$599	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$599, DW_AT_name("INT_SEQ1"), DW_AT_symbol_name("_INT_SEQ1")
	.dwattr DW$599, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$599, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$599, DW_AT_accessibility(DW_ACCESS_public)
DW$600	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$600, DW_AT_name("INT_SEQ2"), DW_AT_symbol_name("_INT_SEQ2")
	.dwattr DW$600, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$600, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$600, DW_AT_accessibility(DW_ACCESS_public)
DW$601	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$601, DW_AT_name("SEQ1_BSY"), DW_AT_symbol_name("_SEQ1_BSY")
	.dwattr DW$601, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$601, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$601, DW_AT_accessibility(DW_ACCESS_public)
DW$602	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$602, DW_AT_name("SEQ2_BSY"), DW_AT_symbol_name("_SEQ2_BSY")
	.dwattr DW$602, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$602, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$602, DW_AT_accessibility(DW_ACCESS_public)
DW$603	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$603, DW_AT_name("INT_SEQ1_CLR"), DW_AT_symbol_name("_INT_SEQ1_CLR")
	.dwattr DW$603, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$603, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$603, DW_AT_accessibility(DW_ACCESS_public)
DW$604	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$604, DW_AT_name("INT_SEQ2_CLR"), DW_AT_symbol_name("_INT_SEQ2_CLR")
	.dwattr DW$604, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$604, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$604, DW_AT_accessibility(DW_ACCESS_public)
DW$605	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$605, DW_AT_name("EOS_BUF1"), DW_AT_symbol_name("_EOS_BUF1")
	.dwattr DW$605, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$605, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$605, DW_AT_accessibility(DW_ACCESS_public)
DW$606	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$606, DW_AT_name("EOS_BUF2"), DW_AT_symbol_name("_EOS_BUF2")
	.dwattr DW$606, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$606, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$606, DW_AT_accessibility(DW_ACCESS_public)
DW$607	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$607, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$607, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$607, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$607, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$56


DW$T$58	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$58, DW_AT_name("ADCREFSEL_BITS")
	.dwattr DW$T$58, DW_AT_byte_size(0x01)
DW$608	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$608, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$608, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x0e)
	.dwattr DW$608, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$608, DW_AT_accessibility(DW_ACCESS_public)
DW$609	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$609, DW_AT_name("REF_SEL"), DW_AT_symbol_name("_REF_SEL")
	.dwattr DW$609, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x02)
	.dwattr DW$609, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$609, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$58


DW$T$61	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$61, DW_AT_name("ADCOFFTRIM_BITS")
	.dwattr DW$T$61, DW_AT_byte_size(0x01)
DW$610	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$60)
	.dwattr DW$610, DW_AT_name("OFFSET_TRIM"), DW_AT_symbol_name("_OFFSET_TRIM")
	.dwattr DW$610, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x09)
	.dwattr DW$610, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$610, DW_AT_accessibility(DW_ACCESS_public)
DW$611	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$611, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$611, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x07)
	.dwattr DW$611, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$611, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$61


DW$T$65	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$65, DW_AT_name("TIM_REG")
	.dwattr DW$T$65, DW_AT_byte_size(0x02)
DW$612	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$612, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$612, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$612, DW_AT_accessibility(DW_ACCESS_public)
DW$613	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$613, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$613, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$613, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$65


DW$T$67	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$67, DW_AT_name("PRD_REG")
	.dwattr DW$T$67, DW_AT_byte_size(0x02)
DW$614	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$614, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$614, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$614, DW_AT_accessibility(DW_ACCESS_public)
DW$615	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$615, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$615, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$615, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$67


DW$T$69	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$69, DW_AT_name("TCR_BITS")
	.dwattr DW$T$69, DW_AT_byte_size(0x01)
DW$616	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$616, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$616, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$616, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$616, DW_AT_accessibility(DW_ACCESS_public)
DW$617	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$617, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$617, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$617, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$617, DW_AT_accessibility(DW_ACCESS_public)
DW$618	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$618, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$618, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$618, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$618, DW_AT_accessibility(DW_ACCESS_public)
DW$619	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$619, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$619, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$619, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$619, DW_AT_accessibility(DW_ACCESS_public)
DW$620	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$620, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$620, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$620, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$620, DW_AT_accessibility(DW_ACCESS_public)
DW$621	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$621, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$621, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$621, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$621, DW_AT_accessibility(DW_ACCESS_public)
DW$622	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$622, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$622, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$622, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$622, DW_AT_accessibility(DW_ACCESS_public)
DW$623	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$623, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$623, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$623, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$623, DW_AT_accessibility(DW_ACCESS_public)
DW$624	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$624, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$624, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$624, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$624, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$69


DW$T$71	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$71, DW_AT_name("TPR_BITS")
	.dwattr DW$T$71, DW_AT_byte_size(0x01)
DW$625	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$625, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$625, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$625, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$625, DW_AT_accessibility(DW_ACCESS_public)
DW$626	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$626, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$626, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$626, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$626, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$73, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$73, DW_AT_byte_size(0x01)
DW$627	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$627, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$627, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$627, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$627, DW_AT_accessibility(DW_ACCESS_public)
DW$628	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$628, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$628, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$628, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$628, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$73


DW$T$76	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$76, DW_AT_name("PIECTRL_BITS")
	.dwattr DW$T$76, DW_AT_byte_size(0x01)
DW$629	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$629, DW_AT_name("ENPIE"), DW_AT_symbol_name("_ENPIE")
	.dwattr DW$629, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$629, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$629, DW_AT_accessibility(DW_ACCESS_public)
DW$630	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$630, DW_AT_name("PIEVECT"), DW_AT_symbol_name("_PIEVECT")
	.dwattr DW$630, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0f)
	.dwattr DW$630, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$630, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$76


DW$T$78	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$78, DW_AT_name("PIEACK_BITS")
	.dwattr DW$T$78, DW_AT_byte_size(0x01)
DW$631	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$631, DW_AT_name("ACK1"), DW_AT_symbol_name("_ACK1")
	.dwattr DW$631, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$631, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$631, DW_AT_accessibility(DW_ACCESS_public)
DW$632	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$632, DW_AT_name("ACK2"), DW_AT_symbol_name("_ACK2")
	.dwattr DW$632, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$632, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$632, DW_AT_accessibility(DW_ACCESS_public)
DW$633	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$633, DW_AT_name("ACK3"), DW_AT_symbol_name("_ACK3")
	.dwattr DW$633, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$633, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$633, DW_AT_accessibility(DW_ACCESS_public)
DW$634	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$634, DW_AT_name("ACK4"), DW_AT_symbol_name("_ACK4")
	.dwattr DW$634, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$634, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$634, DW_AT_accessibility(DW_ACCESS_public)
DW$635	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$635, DW_AT_name("ACK5"), DW_AT_symbol_name("_ACK5")
	.dwattr DW$635, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$635, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$635, DW_AT_accessibility(DW_ACCESS_public)
DW$636	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$636, DW_AT_name("ACK6"), DW_AT_symbol_name("_ACK6")
	.dwattr DW$636, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$636, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$636, DW_AT_accessibility(DW_ACCESS_public)
DW$637	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$637, DW_AT_name("ACK7"), DW_AT_symbol_name("_ACK7")
	.dwattr DW$637, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$637, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$637, DW_AT_accessibility(DW_ACCESS_public)
DW$638	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$638, DW_AT_name("ACK8"), DW_AT_symbol_name("_ACK8")
	.dwattr DW$638, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$638, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$638, DW_AT_accessibility(DW_ACCESS_public)
DW$639	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$639, DW_AT_name("ACK9"), DW_AT_symbol_name("_ACK9")
	.dwattr DW$639, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$639, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$639, DW_AT_accessibility(DW_ACCESS_public)
DW$640	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$640, DW_AT_name("ACK10"), DW_AT_symbol_name("_ACK10")
	.dwattr DW$640, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$640, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$640, DW_AT_accessibility(DW_ACCESS_public)
DW$641	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$641, DW_AT_name("ACK11"), DW_AT_symbol_name("_ACK11")
	.dwattr DW$641, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$641, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$641, DW_AT_accessibility(DW_ACCESS_public)
DW$642	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$642, DW_AT_name("ACK12"), DW_AT_symbol_name("_ACK12")
	.dwattr DW$642, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$642, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$642, DW_AT_accessibility(DW_ACCESS_public)
DW$643	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$643, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$643, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x04)
	.dwattr DW$643, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$643, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$78


DW$T$80	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$80, DW_AT_name("PIEIER_BITS")
	.dwattr DW$T$80, DW_AT_byte_size(0x01)
DW$644	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$644, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$644, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$644, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$644, DW_AT_accessibility(DW_ACCESS_public)
DW$645	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$645, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$645, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$645, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$645, DW_AT_accessibility(DW_ACCESS_public)
DW$646	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$646, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$646, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$646, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$646, DW_AT_accessibility(DW_ACCESS_public)
DW$647	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$647, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$647, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$647, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$647, DW_AT_accessibility(DW_ACCESS_public)
DW$648	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$648, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$648, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$648, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$648, DW_AT_accessibility(DW_ACCESS_public)
DW$649	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$649, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$649, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$649, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$649, DW_AT_accessibility(DW_ACCESS_public)
DW$650	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$650, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$650, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$650, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$650, DW_AT_accessibility(DW_ACCESS_public)
DW$651	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$651, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$651, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$651, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$651, DW_AT_accessibility(DW_ACCESS_public)
DW$652	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$652, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$652, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$652, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$652, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$80


DW$T$82	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$82, DW_AT_name("PIEIFR_BITS")
	.dwattr DW$T$82, DW_AT_byte_size(0x01)
DW$653	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$653, DW_AT_name("INTx1"), DW_AT_symbol_name("_INTx1")
	.dwattr DW$653, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$653, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$653, DW_AT_accessibility(DW_ACCESS_public)
DW$654	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$654, DW_AT_name("INTx2"), DW_AT_symbol_name("_INTx2")
	.dwattr DW$654, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$654, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$654, DW_AT_accessibility(DW_ACCESS_public)
DW$655	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$655, DW_AT_name("INTx3"), DW_AT_symbol_name("_INTx3")
	.dwattr DW$655, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$655, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$655, DW_AT_accessibility(DW_ACCESS_public)
DW$656	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$656, DW_AT_name("INTx4"), DW_AT_symbol_name("_INTx4")
	.dwattr DW$656, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$656, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$656, DW_AT_accessibility(DW_ACCESS_public)
DW$657	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$657, DW_AT_name("INTx5"), DW_AT_symbol_name("_INTx5")
	.dwattr DW$657, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$657, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$657, DW_AT_accessibility(DW_ACCESS_public)
DW$658	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$658, DW_AT_name("INTx6"), DW_AT_symbol_name("_INTx6")
	.dwattr DW$658, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$658, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$658, DW_AT_accessibility(DW_ACCESS_public)
DW$659	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$659, DW_AT_name("INTx7"), DW_AT_symbol_name("_INTx7")
	.dwattr DW$659, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$659, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$659, DW_AT_accessibility(DW_ACCESS_public)
DW$660	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$660, DW_AT_name("INTx8"), DW_AT_symbol_name("_INTx8")
	.dwattr DW$660, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$660, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$660, DW_AT_accessibility(DW_ACCESS_public)
DW$661	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$661, DW_AT_name("rsvd"), DW_AT_symbol_name("_rsvd")
	.dwattr DW$661, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$661, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$661, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$82


	.dwattr DW$242, DW_AT_external(0x01)
	.dwattr DW$230, DW_AT_external(0x01)
	.dwattr DW$218, DW_AT_external(0x01)
	.dwattr DW$193, DW_AT_external(0x01)
	.dwattr DW$163, DW_AT_external(0x01)
	.dwattr DW$152, DW_AT_external(0x01)
	.dwattr DW$148, DW_AT_external(0x01)
	.dwattr DW$146, DW_AT_external(0x01)
	.dwattr DW$117, DW_AT_type(*DW$T$25)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$143, DW_AT_external(0x01)
	.dwattr DW$143, DW_AT_type(*DW$T$10)
	.dwattr DW$134, DW_AT_external(0x01)
	.dwattr DW$110, DW_AT_external(0x01)
	.dwattr DW$98, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$CU, DW_AT_language(DW_LANG_C)

;***************************************************************
;* DWARF CIE ENTRIES                                           *
;***************************************************************

DW$CIE	.dwcie 1, 40
	.dwcfa	0x0c, 20, 0
	.dwcfa	0x07, 0
	.dwcfa	0x07, 1
	.dwcfa	0x07, 2
	.dwcfa	0x07, 3
	.dwcfa	0x07, 4
	.dwcfa	0x07, 5
	.dwcfa	0x08, 6
	.dwcfa	0x08, 7
	.dwcfa	0x08, 8
	.dwcfa	0x08, 9
	.dwcfa	0x08, 10
	.dwcfa	0x08, 11
	.dwcfa	0x07, 12
	.dwcfa	0x07, 13
	.dwcfa	0x07, 14
	.dwcfa	0x07, 15
	.dwcfa	0x07, 16
	.dwcfa	0x07, 17
	.dwcfa	0x07, 18
	.dwcfa	0x07, 19
	.dwcfa	0x07, 20
	.dwcfa	0x07, 21
	.dwcfa	0x07, 22
	.dwcfa	0x07, 23
	.dwcfa	0x07, 24
	.dwcfa	0x07, 25
	.dwcfa	0x07, 26
	.dwcfa	0x08, 27
	.dwcfa	0x07, 28
	.dwcfa	0x07, 29
	.dwcfa	0x07, 30
	.dwcfa	0x07, 31
	.dwcfa	0x07, 32
	.dwcfa	0x07, 33
	.dwcfa	0x07, 34
	.dwcfa	0x07, 35
	.dwcfa	0x07, 36
	.dwcfa	0x07, 37
	.dwcfa	0x07, 38
	.dwcfa	0x07, 39
	.dwcfa	0x07, 40

;***************************************************************
;* DWARF REGISTER MAP                                          *
;***************************************************************

DW$662	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$662, DW_AT_location[DW_OP_reg0]
DW$663	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$663, DW_AT_location[DW_OP_reg1]
DW$664	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$664, DW_AT_location[DW_OP_reg2]
DW$665	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$665, DW_AT_location[DW_OP_reg3]
DW$666	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$666, DW_AT_location[DW_OP_reg4]
DW$667	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$667, DW_AT_location[DW_OP_reg5]
DW$668	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$668, DW_AT_location[DW_OP_reg6]
DW$669	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$669, DW_AT_location[DW_OP_reg7]
DW$670	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$670, DW_AT_location[DW_OP_reg8]
DW$671	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$671, DW_AT_location[DW_OP_reg9]
DW$672	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$672, DW_AT_location[DW_OP_reg10]
DW$673	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$673, DW_AT_location[DW_OP_reg11]
DW$674	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$674, DW_AT_location[DW_OP_reg12]
DW$675	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$675, DW_AT_location[DW_OP_reg13]
DW$676	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$676, DW_AT_location[DW_OP_reg14]
DW$677	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$677, DW_AT_location[DW_OP_reg15]
DW$678	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$678, DW_AT_location[DW_OP_reg16]
DW$679	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$679, DW_AT_location[DW_OP_reg17]
DW$680	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$680, DW_AT_location[DW_OP_reg18]
DW$681	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$681, DW_AT_location[DW_OP_reg19]
DW$682	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$682, DW_AT_location[DW_OP_reg20]
DW$683	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$683, DW_AT_location[DW_OP_reg21]
DW$684	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$684, DW_AT_location[DW_OP_reg22]
DW$685	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$685, DW_AT_location[DW_OP_reg23]
DW$686	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$686, DW_AT_location[DW_OP_reg24]
DW$687	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$687, DW_AT_location[DW_OP_reg25]
DW$688	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$688, DW_AT_location[DW_OP_reg26]
DW$689	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$689, DW_AT_location[DW_OP_reg27]
DW$690	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$690, DW_AT_location[DW_OP_reg28]
DW$691	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$691, DW_AT_location[DW_OP_reg29]
DW$692	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$692, DW_AT_location[DW_OP_reg30]
DW$693	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$693, DW_AT_location[DW_OP_reg31]
DW$694	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$694, DW_AT_location[DW_OP_regx 0x20]
DW$695	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$695, DW_AT_location[DW_OP_regx 0x21]
DW$696	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$696, DW_AT_location[DW_OP_regx 0x22]
DW$697	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$697, DW_AT_location[DW_OP_regx 0x23]
DW$698	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$698, DW_AT_location[DW_OP_regx 0x24]
DW$699	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$699, DW_AT_location[DW_OP_regx 0x25]
DW$700	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$700, DW_AT_location[DW_OP_regx 0x26]
DW$701	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$701, DW_AT_location[DW_OP_regx 0x27]
DW$702	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$702, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

