;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Fri Oct 25 23:31:50 2024                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("make_position"), DW_AT_symbol_name("_make_position")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_decide"), DW_AT_symbol_name("_turn_decide")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$2


DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("move_to_move"), DW_AT_symbol_name("_move_to_move")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)
DW$6	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
	.dwendtag DW$5


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("read_line_info_rom"), DW_AT_symbol_name("_read_line_info_rom")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$14	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$12


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$15


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("Handle"), DW_AT_symbol_name("_Handle")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("U16_turnmark_cnt"), DW_AT_symbol_name("_U16_turnmark_cnt")
	.dwattr DW$18, DW_AT_type(*DW$T$83)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("g_Flag"), DW_AT_symbol_name("_g_Flag")
	.dwattr DW$19, DW_AT_type(*DW$T$119)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)

DW$20	.dwtag  DW_TAG_subprogram, DW_AT_name("Race_Init"), DW_AT_symbol_name("_Race_Init")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("race_stop_check"), DW_AT_symbol_name("_race_stop_check")
	.dwattr DW$21, DW_AT_type(*DW$T$10)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("line_out_func"), DW_AT_symbol_name("_line_out_func")
	.dwattr DW$22, DW_AT_type(*DW$T$10)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_END_VEL_targetval"), DW_AT_symbol_name("_g_u32_END_VEL_targetval")
	.dwattr DW$23, DW_AT_type(*DW$T$100)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_variable, DW_AT_name("g_int32turn_LARGE_VEL"), DW_AT_symbol_name("_g_int32turn_LARGE_VEL")
	.dwattr DW$24, DW_AT_type(*DW$T$22)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_variable, DW_AT_name("g_int32long_ACC"), DW_AT_symbol_name("_g_int32long_ACC")
	.dwattr DW$25, DW_AT_type(*DW$T$22)
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
DW$26	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_VEL_targetval"), DW_AT_symbol_name("_g_u32_VEL_targetval")
	.dwattr DW$26, DW_AT_type(*DW$T$100)
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_ACC_targetval"), DW_AT_symbol_name("_g_u32_ACC_targetval")
	.dwattr DW$27, DW_AT_type(*DW$T$100)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("g_int32turn_180_VEL"), DW_AT_symbol_name("_g_int32turn_180_VEL")
	.dwattr DW$28, DW_AT_type(*DW$T$22)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("g_int32turn_270_VEL"), DW_AT_symbol_name("_g_int32turn_270_VEL")
	.dwattr DW$29, DW_AT_type(*DW$T$22)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("g_int32turn_90_VEL"), DW_AT_symbol_name("_g_int32turn_90_VEL")
	.dwattr DW$30, DW_AT_type(*DW$T$22)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_isr_cnt"), DW_AT_symbol_name("_g_int32_isr_cnt")
	.dwattr DW$31, DW_AT_type(*DW$T$26)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("g_int32turn_45_VEL"), DW_AT_symbol_name("_g_int32turn_45_VEL")
	.dwattr DW$32, DW_AT_type(*DW$T$22)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("labs"), DW_AT_symbol_name("_labs")
	.dwattr DW$33, DW_AT_type(*DW$T$12)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$33

DW$35	.dwtag  DW_TAG_variable, DW_AT_name("g_int32speed_up_cnt"), DW_AT_symbol_name("_g_int32speed_up_cnt")
	.dwattr DW$35, DW_AT_type(*DW$T$22)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ7div"), DW_AT_symbol_name("__IQ7div")
	.dwattr DW$36, DW_AT_type(*DW$T$12)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$36


DW$39	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQmpy"), DW_AT_symbol_name("___IQmpy")
	.dwattr DW$39, DW_AT_type(*DW$T$12)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$39


DW$43	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ7sqrt"), DW_AT_symbol_name("__IQ7sqrt")
	.dwattr DW$43, DW_AT_type(*DW$T$12)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$43

DW$45	.dwtag  DW_TAG_variable, DW_AT_name("g_q17user_vel"), DW_AT_symbol_name("_g_q17user_vel")
	.dwattr DW$45, DW_AT_type(*DW$T$19)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("g_int32total_cnt"), DW_AT_symbol_name("_g_int32total_cnt")
	.dwattr DW$46, DW_AT_type(*DW$T$100)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("g_q15cross_dist"), DW_AT_symbol_name("_g_q15cross_dist")
	.dwattr DW$47, DW_AT_type(*DW$T$45)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("g_int32short_ACC"), DW_AT_symbol_name("_g_int32short_ACC")
	.dwattr DW$48, DW_AT_type(*DW$T$22)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
DW$49	.dwtag  DW_TAG_variable, DW_AT_name("g_int32mid_ACC"), DW_AT_symbol_name("_g_int32mid_ACC")
	.dwattr DW$49, DW_AT_type(*DW$T$22)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$50, DW_AT_type(*DW$T$116)
	.dwattr DW$50, DW_AT_declaration(0x01)
	.dwattr DW$50, DW_AT_external(0x01)
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("g_lmark"), DW_AT_symbol_name("_g_lmark")
	.dwattr DW$51, DW_AT_type(*DW$T$58)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
DW$52	.dwtag  DW_TAG_variable, DW_AT_name("g_rmark"), DW_AT_symbol_name("_g_rmark")
	.dwattr DW$52, DW_AT_type(*DW$T$58)
	.dwattr DW$52, DW_AT_declaration(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$53, DW_AT_type(*DW$T$112)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("LMotor"), DW_AT_symbol_name("_LMotor")
	.dwattr DW$54, DW_AT_type(*DW$T$121)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("RMotor"), DW_AT_symbol_name("_RMotor")
	.dwattr DW$55, DW_AT_type(*DW$T$121)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("search_info"), DW_AT_symbol_name("_search_info")
	.dwattr DW$56, DW_AT_type(*DW$T$104)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI64010 C:\Users\rbgus\AppData\Local\Temp\TI6404 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI6402 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI6406 --object_file fastrun.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_turn_info_compute

DW$57	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_info_compute"), DW_AT_symbol_name("_turn_info_compute")
	.dwattr DW$57, DW_AT_low_pc(_turn_info_compute)
	.dwattr DW$57, DW_AT_high_pc(0x00)
	.dwattr DW$57, DW_AT_begin_file("fastrun.c")
	.dwattr DW$57, DW_AT_begin_line(0x15d)
	.dwattr DW$57, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",350,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _turn_info_compute            FR SIZE:  14           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  8 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_turn_info_compute:
;*** 355	-----------------------    if ( mark_cnt == 0L ) goto g18;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR2
	.dwcfa	0x80, 9, 4
	.dwcfa	0x1d, -6
        ADDB      SP,#10
	.dwcfa	0x1d, -16
;* AR4   assigned to _pinfo
DW$58	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$58, DW_AT_type(*DW$T$67)
	.dwattr DW$58, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _mark_cnt
DW$59	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mark_cnt"), DW_AT_symbol_name("_mark_cnt")
	.dwattr DW$59, DW_AT_type(*DW$T$22)
	.dwattr DW$59, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to C$5
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$60, DW_AT_type(*DW$T$12)
	.dwattr DW$60, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to C$6
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("C$6"), DW_AT_symbol_name("C$6")
	.dwattr DW$61, DW_AT_type(*DW$T$12)
	.dwattr DW$61, DW_AT_location[DW_OP_reg16]
;* AR4   assigned to v$3
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$62, DW_AT_type(*DW$T$12)
	.dwattr DW$62, DW_AT_location[DW_OP_reg12]
;* AR7   assigned to _mark_cnt
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("mark_cnt"), DW_AT_symbol_name("_mark_cnt")
	.dwattr DW$63, DW_AT_type(*DW$T$86)
	.dwattr DW$63, DW_AT_location[DW_OP_reg18]
;* AR1   assigned to _pinfo
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$64, DW_AT_type(*DW$T$103)
	.dwattr DW$64, DW_AT_location[DW_OP_reg6]
;* AR4   assigned to S$4
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("S$4"), DW_AT_symbol_name("S$4")
	.dwattr DW$65, DW_AT_type(*DW$T$12)
	.dwattr DW$65, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to S$3
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("S$3"), DW_AT_symbol_name("S$3")
	.dwattr DW$66, DW_AT_type(*DW$T$12)
	.dwattr DW$66, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to S$2
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("S$2"), DW_AT_symbol_name("S$2")
	.dwattr DW$67, DW_AT_type(*DW$T$12)
	.dwattr DW$67, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to S$1
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("S$1"), DW_AT_symbol_name("S$1")
	.dwattr DW$68, DW_AT_type(*DW$T$12)
	.dwattr DW$68, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to K$60
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("K$60"), DW_AT_symbol_name("K$60")
	.dwattr DW$69, DW_AT_type(*DW$T$98)
	.dwattr DW$69, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to K$60
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("K$60"), DW_AT_symbol_name("K$60")
	.dwattr DW$70, DW_AT_type(*DW$T$98)
	.dwattr DW$70, DW_AT_location[DW_OP_reg12]
;* AR2   assigned to v$4
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$71, DW_AT_type(*DW$T$12)
	.dwattr DW$71, DW_AT_location[DW_OP_reg8]
;* AR2   assigned to v$4
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$72, DW_AT_type(*DW$T$12)
	.dwattr DW$72, DW_AT_location[DW_OP_reg8]
;* AL    assigned to _temp
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("temp"), DW_AT_symbol_name("_temp")
	.dwattr DW$73, DW_AT_type(*DW$T$22)
	.dwattr DW$73, DW_AT_location[DW_OP_reg0]
;* AL    assigned to _temp
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("temp"), DW_AT_symbol_name("_temp")
	.dwattr DW$74, DW_AT_type(*DW$T$22)
	.dwattr DW$74, DW_AT_location[DW_OP_reg0]
        MOVL      XAR7,ACC              ; |350| 
        MOVL      XAR1,XAR4             ; |350| 
	.dwpsn	"fastrun.c",355,2
        MOVL      ACC,XAR7
        BF        L17,EQ                ; |355| 
        ; branchcc occurs ; |355| 
;***  	-----------------------    v$3 = (*pinfo).int32turn_way;
;***  	-----------------------    if ( !((int)((long)~(unsigned)v$3&1L) || v$3&0x8L) ) goto g19;
        MOVL      XAR4,*+XAR1[2]
        MOV       AL,AR4
        NOT       AL
        MOVZ      AR6,AL
        MOVB      ACC,#1
        AND       ACC,AR6
        BF        L1,NEQ
        ; branchcc occurs
        MOVL      ACC,XAR4
        ANDB      AL,#0x08
        MOVB      AH,#0
        TEST      ACC
        BF        L18,EQ
        ; branchcc occurs
L1:    
;*** 393	-----------------------    if ( v$3&1L || v$3&0x8L ) goto g17;
	.dwpsn	"fastrun.c",393,7
        MOVL      ACC,XAR4              ; |393| 
        ANDB      AL,#0x01              ; |393| 
        BF        L16,NEQ               ; |393| 
        ; branchcc occurs ; |393| 
        MOVL      ACC,XAR4              ; |393| 
        ANDB      AL,#0x08              ; |393| 
        MOVB      AH,#0
        TEST      ACC                   ; |393| 
        BF        L16,NEQ               ; |393| 
        ; branchcc occurs ; |393| 
;*** 395	-----------------------    if ( (v$4 = (*pinfo).int32dist) <= 240L ) goto g16;
	.dwpsn	"fastrun.c",395,3
        MOVL      XAR2,*+XAR1[0]        ; |395| 
        MOVB      ACC,#240
        CMPL      ACC,XAR2              ; |395| 
        BF        L13,GEQ               ; |395| 
        ; branchcc occurs ; |395| 
;*** 400	-----------------------    if ( v$4 <= 450L ) goto g15;
	.dwpsn	"fastrun.c",400,8
        MOV       ACC,#450              ; |400| 
        CMPL      ACC,XAR2              ; |400| 
        BF        L10,GEQ               ; |400| 
        ; branchcc occurs ; |400| 
;*** 406	-----------------------    if ( v$4 <= 720L ) goto g14;
	.dwpsn	"fastrun.c",406,8
        MOV       ACC,#720              ; |406| 
        CMPL      ACC,XAR2              ; |406| 
        BF        L7,GEQ                ; |406| 
        ; branchcc occurs ; |406| 
;*** 412	-----------------------    if ( v$4 <= 1100L ) goto g13;
	.dwpsn	"fastrun.c",412,8
        MOV       ACC,#1100             ; |412| 
        CMPL      ACC,XAR2              ; |412| 
        BF        L6,GEQ                ; |412| 
        ; branchcc occurs ; |412| 
;*** 417	-----------------------    C$5 = (*pinfo).int32L_dist;
;*** 417	-----------------------    C$6 = (*pinfo).int32R_dist;
;*** 417	-----------------------    if ( __lmax(C$5, C$6)/__lmin(C$6, C$5) >= 2L ) goto g12;
	.dwpsn	"fastrun.c",417,4
        MOVL      XAR7,*+XAR1[4]        ; |417| 
        MOVL      XAR6,*+XAR1[6]        ; |417| 
        MOVL      ACC,XAR7              ; |417| 
        MINL      ACC,XAR6              ; |417| 
        MOVL      *-SP[2],ACC           ; |417| 
        MOVL      ACC,XAR6              ; |417| 
        MAXL      ACC,XAR7              ; |417| 
        FFC       XAR7,#L$$DIV          ; |417| 
        ; call occurs [#L$$DIV] ; |417| 
        MOVL      XAR6,ACC              ; |417| 
        MOVB      ACC,#2
        CMPL      ACC,XAR6              ; |417| 
        BF        L3,LEQ                ; |417| 
        ; branchcc occurs ; |417| 
;*** 419	-----------------------    (*pinfo).int32turn_dir = v$3|0x100L;
;*** 420	-----------------------    (*pinfo).int32turn_cnt = 0L;
;*** 422	-----------------------    temp = v$4-(__IQmpy(g_q17user_vel, (long)((long double)*((long * const)pinfo-14L)*1.31072e5L), 17)>>17);
;*** 427	-----------------------    K$60 = (long * const)pinfo-14L;
;*** 427	-----------------------    if ( temp > 0L ) goto g11;
	.dwpsn	"fastrun.c",419,5
        MOVL      ACC,XAR4              ; |419| 
        MOVB      XAR0,#10              ; |419| 
        OR        AL,#256               ; |419| 
        MOVL      *+XAR1[AR0],ACC       ; |419| 
	.dwpsn	"fastrun.c",420,5
        MOVB      XAR0,#12              ; |420| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |420| 
	.dwpsn	"fastrun.c",422,5
        MOVL      XAR4,XAR1             ; |422| 
        MOVZ      AR6,SP                ; |422| 
        SUBB      XAR4,#14              ; |422| 
        SUBB      XAR6,#10              ; |422| 
        MOVL      ACC,*+XAR4[0]         ; |422| 
        LCR       #L$$TOFD              ; |422| 
        ; call occurs [#L$$TOFD] ; |422| 
        MOVZ      AR4,SP                ; |422| 
        MOVZ      AR6,SP                ; |422| 
        MOVL      XAR5,#FL1             ; |422| 
        SUBB      XAR4,#10              ; |422| 
        SUBB      XAR6,#6               ; |422| 
        LCR       #FD$$MPY              ; |422| 
        ; call occurs [#FD$$MPY] ; |422| 
        MOVZ      AR4,SP                ; |422| 
        SUBB      XAR4,#6               ; |422| 
        LCR       #FD$$TOL              ; |422| 
        ; call occurs [#FD$$TOL] ; |422| 
        MOVW      DP,#_g_q17user_vel
        MOVL      XT,@_g_q17user_vel    ; |422| 
        IMPYL     P,XT,ACC              ; |422| 
        QMPYL     ACC,XT,ACC            ; |422| 
        MOV       T,#17                 ; |422| 
        LSL64     ACC:P,#15             ; |422| 
        ASRL      ACC,T                 ; |422| 
        MOVL      XAR6,ACC              ; |422| 
        MOVL      ACC,XAR2              ; |422| 
        SUBRL     XAR6,ACC              ; |422| 
        MOVL      ACC,XAR6              ; |422| 
	.dwpsn	"fastrun.c",427,7
        MOVL      XAR4,XAR1             ; |427| 
        SUBB      XAR4,#14              ; |427| 
        BF        L2,GT                 ; |427| 
        ; branchcc occurs ; |427| 
;*** 429	-----------------------    temp = v$4;
;*** 430	-----------------------    *K$60 = 0L;
	.dwpsn	"fastrun.c",429,8
        MOVL      ACC,XAR2
	.dwpsn	"fastrun.c",430,8
        MOVB      XAR6,#0
        MOVL      *+XAR4[0],XAR6        ; |430| 
L2:    
;***	-----------------------g11:
;*** 438	-----------------------    (*pinfo).int32dist = temp;
;*** 438	-----------------------    goto g25;
	.dwpsn	"fastrun.c",438,6
        MOVL      *+XAR1[0],ACC         ; |438| 
        BF        L21,UNC               ; |438| 
        ; branch occurs ; |438| 
L3:    
;***	-----------------------g12:
;*** 443	-----------------------    (*pinfo).int32turn_dir = v$3|0x80L;
;*** 445	-----------------------    ((*((long * const)pinfo+28L)&1L) != 0L) ? (S$1 = 800L) : (S$1 = 0L);
	.dwpsn	"fastrun.c",443,5
        MOVL      ACC,XAR4              ; |443| 
        MOVB      XAR0,#10              ; |443| 
        ORB       AL,#0x80              ; |443| 
        MOVL      *+XAR1[AR0],ACC       ; |443| 
	.dwpsn	"fastrun.c",445,5
        MOVB      XAR0,#28              ; |445| 
        MOVL      ACC,*+XAR1[AR0]       ; |445| 
        ANDB      AL,#0x01              ; |445| 
        MOVB      AH,#0
        TEST      ACC                   ; |445| 
        BF        L4,EQ                 ; |445| 
        ; branchcc occurs ; |445| 
        MOVL      XAR4,#800             ; |445| 
        BF        L5,UNC                ; |445| 
        ; branch occurs ; |445| 
L4:    
        MOVB      XAR4,#0
L5:    
;*** 445	-----------------------    (*pinfo).int32turn_cnt = S$1;
;*** 445	-----------------------    goto g25;
        MOVB      XAR0,#12              ; |445| 
        MOVL      *+XAR1[AR0],XAR4      ; |445| 
        BF        L21,UNC               ; |445| 
        ; branch occurs ; |445| 
L6:    
;***	-----------------------g13:
;*** 452	-----------------------    (*pinfo).int32turn_dir = v$3|0x80L;
;*** 453	-----------------------    (*pinfo).int32turn_cnt = 0L;
;*** 453	-----------------------    goto g25;
	.dwpsn	"fastrun.c",452,4
        MOVL      ACC,XAR4              ; |452| 
        MOVB      XAR0,#10              ; |452| 
        ORB       AL,#0x80              ; |452| 
        MOVL      *+XAR1[AR0],ACC       ; |452| 
	.dwpsn	"fastrun.c",453,4
        MOVB      ACC,#0
        MOVB      XAR0,#12              ; |453| 
        MOVL      *+XAR1[AR0],ACC       ; |453| 
        BF        L21,UNC               ; |453| 
        ; branch occurs ; |453| 
L7:    
;***	-----------------------g14:
;*** 408	-----------------------    (*pinfo).int32turn_dir = v$3|0x40L;
;*** 409	-----------------------    ((*((long * const)pinfo+28L)&1L) != 0L) ? (S$2 = 750L) : (S$2 = 0L);
	.dwpsn	"fastrun.c",408,4
        MOVL      ACC,XAR4              ; |408| 
        MOVB      XAR0,#10              ; |408| 
        ORB       AL,#0x40              ; |408| 
        MOVL      *+XAR1[AR0],ACC       ; |408| 
	.dwpsn	"fastrun.c",409,4
        MOVB      XAR0,#28              ; |409| 
        MOVL      ACC,*+XAR1[AR0]       ; |409| 
        ANDB      AL,#0x01              ; |409| 
        MOVB      AH,#0
        TEST      ACC                   ; |409| 
        BF        L8,EQ                 ; |409| 
        ; branchcc occurs ; |409| 
        MOVL      XAR4,#750             ; |409| 
        BF        L9,UNC                ; |409| 
        ; branch occurs ; |409| 
L8:    
        MOVB      XAR4,#0
L9:    
;*** 409	-----------------------    (*pinfo).int32turn_cnt = S$2;
;*** 411	-----------------------    goto g25;
        MOVB      XAR0,#12              ; |409| 
        MOVL      *+XAR1[AR0],XAR4      ; |409| 
	.dwpsn	"fastrun.c",411,3
        BF        L21,UNC               ; |411| 
        ; branch occurs ; |411| 
L10:    
;***	-----------------------g15:
;*** 402	-----------------------    (*pinfo).int32turn_dir = v$3|0x20L;
;*** 403	-----------------------    ((*((long * const)pinfo+28L)&1L) != 0L) ? (S$3 = 550L) : (S$3 = 0L);
	.dwpsn	"fastrun.c",402,4
        MOVL      ACC,XAR4              ; |402| 
        MOVB      XAR0,#10              ; |402| 
        ORB       AL,#0x20              ; |402| 
        MOVL      *+XAR1[AR0],ACC       ; |402| 
	.dwpsn	"fastrun.c",403,4
        MOVB      XAR0,#28              ; |403| 
        MOVL      ACC,*+XAR1[AR0]       ; |403| 
        ANDB      AL,#0x01              ; |403| 
        MOVB      AH,#0
        TEST      ACC                   ; |403| 
        BF        L11,EQ                ; |403| 
        ; branchcc occurs ; |403| 
        MOVL      XAR4,#550             ; |403| 
        BF        L12,UNC               ; |403| 
        ; branch occurs ; |403| 
L11:    
        MOVB      XAR4,#0
L12:    
;*** 403	-----------------------    (*pinfo).int32turn_cnt = S$3;
;*** 405	-----------------------    goto g25;
        MOVB      XAR0,#12              ; |403| 
        MOVL      *+XAR1[AR0],XAR4      ; |403| 
	.dwpsn	"fastrun.c",405,3
        BF        L21,UNC               ; |405| 
        ; branch occurs ; |405| 
L13:    
;***	-----------------------g16:
;*** 397	-----------------------    (*pinfo).int32turn_dir = v$3|0x10L;
;*** 398	-----------------------    ((*((long * const)pinfo+28L)&1L) != 0L) ? (S$4 = 300L) : (S$4 = 0L);
	.dwpsn	"fastrun.c",397,4
        MOVL      ACC,XAR4              ; |397| 
        MOVB      XAR0,#10              ; |397| 
        ORB       AL,#0x10              ; |397| 
        MOVL      *+XAR1[AR0],ACC       ; |397| 
	.dwpsn	"fastrun.c",398,4
        MOVB      XAR0,#28              ; |398| 
        MOVL      ACC,*+XAR1[AR0]       ; |398| 
        ANDB      AL,#0x01              ; |398| 
        MOVB      AH,#0
        TEST      ACC                   ; |398| 
        BF        L14,EQ                ; |398| 
        ; branchcc occurs ; |398| 
        MOVL      XAR4,#300             ; |398| 
        BF        L15,UNC               ; |398| 
        ; branch occurs ; |398| 
L14:    
        MOVB      XAR4,#0
L15:    
;*** 398	-----------------------    (*pinfo).int32turn_cnt = S$4;
;*** 399	-----------------------    goto g25;
        MOVB      XAR0,#12              ; |398| 
        MOVL      *+XAR1[AR0],XAR4      ; |398| 
	.dwpsn	"fastrun.c",399,3
        BF        L21,UNC               ; |399| 
        ; branch occurs ; |399| 
L16:    
;***	-----------------------g17:
;*** 458	-----------------------    (*pinfo).int32turn_dir = v$3;
;*** 458	-----------------------    goto g25;
	.dwpsn	"fastrun.c",458,3
        MOVB      XAR0,#10              ; |458| 
        MOVL      *+XAR1[AR0],XAR4      ; |458| 
        BF        L21,UNC               ; |458| 
        ; branch occurs ; |458| 
L17:    
;***	-----------------------g18:
;*** 355	-----------------------    (*pinfo).int32turn_way = 1L;
	.dwpsn	"fastrun.c",355,18
        MOVB      ACC,#1
        MOVL      *+XAR1[2],ACC         ; |355| 
L18:    
;***	-----------------------g19:
;*** 359	-----------------------    (*pinfo).int32turn_dir = 1L;
;*** 361	-----------------------    (*pinfo).int32turn_cnt = 0L;
;*** 363	-----------------------    if ( mark_cnt == 0L ) goto g25;
	.dwpsn	"fastrun.c",359,3
        MOVB      ACC,#1
        MOVB      XAR0,#10              ; |359| 
        MOVL      *+XAR1[AR0],ACC       ; |359| 
	.dwpsn	"fastrun.c",361,3
        MOVB      XAR0,#12              ; |361| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |361| 
	.dwpsn	"fastrun.c",363,3
        MOVL      ACC,XAR7
        BF        L21,EQ                ; |363| 
        ; branchcc occurs ; |363| 
;*** 365	-----------------------    if ( (v$4 = (*pinfo).int32dist) <= 400L ) goto g23;
	.dwpsn	"fastrun.c",365,4
        MOVL      XAR2,*+XAR1[0]        ; |365| 
        MOV       ACC,#400              ; |365| 
        CMPL      ACC,XAR2              ; |365| 
        BF        L19,GEQ               ; |365| 
        ; branchcc occurs ; |365| 
;*** 375	-----------------------    temp = v$4-(__IQmpy(g_q17user_vel, (long)((long double)*((long * const)pinfo-14L)*1.31072e5L), 17)>>17);
;*** 377	-----------------------    K$60 = (long * const)pinfo-14L;
;*** 377	-----------------------    if ( temp > 0L ) goto g24;
	.dwpsn	"fastrun.c",375,6
        MOVL      XAR4,XAR1             ; |375| 
        MOVZ      AR6,SP                ; |375| 
        SUBB      XAR4,#14              ; |375| 
        SUBB      XAR6,#10              ; |375| 
        MOVL      ACC,*+XAR4[0]         ; |375| 
        LCR       #L$$TOFD              ; |375| 
        ; call occurs [#L$$TOFD] ; |375| 
        MOVZ      AR4,SP                ; |375| 
        MOVZ      AR6,SP                ; |375| 
        MOVL      XAR5,#FL1             ; |375| 
        SUBB      XAR4,#10              ; |375| 
        SUBB      XAR6,#6               ; |375| 
        LCR       #FD$$MPY              ; |375| 
        ; call occurs [#FD$$MPY] ; |375| 
        MOVZ      AR4,SP                ; |375| 
        SUBB      XAR4,#6               ; |375| 
        LCR       #FD$$TOL              ; |375| 
        ; call occurs [#FD$$TOL] ; |375| 
        MOVW      DP,#_g_q17user_vel
        MOVL      XT,@_g_q17user_vel    ; |375| 
        IMPYL     P,XT,ACC              ; |375| 
        QMPYL     ACC,XT,ACC            ; |375| 
        MOV       T,#17                 ; |375| 
        LSL64     ACC:P,#15             ; |375| 
        ASRL      ACC,T                 ; |375| 
        MOVL      XAR6,ACC              ; |375| 
        MOVL      ACC,XAR2              ; |375| 
        SUBRL     XAR6,ACC              ; |375| 
        MOVL      ACC,XAR6              ; |375| 
	.dwpsn	"fastrun.c",377,5
        MOVL      XAR4,XAR1             ; |377| 
        SUBB      XAR4,#14              ; |377| 
        BF        L20,GT                ; |377| 
        ; branchcc occurs ; |377| 
;*** 379	-----------------------    temp = v$4;
;*** 380	-----------------------    *K$60 = 0L;
;*** 380	-----------------------    goto g24;
	.dwpsn	"fastrun.c",379,6
        MOVL      ACC,XAR2
	.dwpsn	"fastrun.c",380,6
        MOVB      XAR6,#0
        MOVL      *+XAR4[0],XAR6        ; |380| 
        BF        L20,UNC               ; |380| 
        ; branch occurs ; |380| 
L19:    
;***	-----------------------g23:
;*** 385	-----------------------    temp = v$4;
;*** 386	-----------------------    *((long * const)pinfo-14L) = 0L;
	.dwpsn	"fastrun.c",385,5
        MOVL      ACC,XAR2
	.dwpsn	"fastrun.c",386,5
        MOVL      XAR4,XAR1             ; |386| 
        MOVB      XAR6,#0
        SUBB      XAR4,#14              ; |386| 
        MOVL      *+XAR4[0],XAR6        ; |386| 
L20:    
;***	-----------------------g24:
;*** 389	-----------------------    (*pinfo).int32dist = temp;
;***	-----------------------g25:
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",389,4
        MOVL      *+XAR1[0],ACC         ; |389| 
L21:    
	.dwpsn	"fastrun.c",461,1
        SUBB      SP,#10
	.dwcfa	0x1d, -6
        MOVL      XAR2,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 9
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$57, DW_AT_end_file("fastrun.c")
	.dwattr DW$57, DW_AT_end_line(0x1cd)
	.dwattr DW$57, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$57

	.sect	".text"
	.global	_turn_info_func

DW$75	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_info_func"), DW_AT_symbol_name("_turn_info_func")
	.dwattr DW$75, DW_AT_low_pc(_turn_info_func)
	.dwattr DW$75, DW_AT_high_pc(0x00)
	.dwattr DW$75, DW_AT_begin_file("fastrun.c")
	.dwattr DW$75, DW_AT_begin_line(0x152)
	.dwattr DW$75, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",339,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _turn_info_func               FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  0 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_turn_info_func:
;*** 342	-----------------------    g_int32total_cnt;
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$5 = &search_info[0];
;*** 340	-----------------------    i = 0L;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 4
	.dwcfa	0x1d, -6
;* AR1   assigned to _i
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$76, DW_AT_type(*DW$T$22)
	.dwattr DW$76, DW_AT_location[DW_OP_reg6]
;* AR3   assigned to K$5
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("K$5"), DW_AT_symbol_name("K$5")
	.dwattr DW$77, DW_AT_type(*DW$T$106)
	.dwattr DW$77, DW_AT_location[DW_OP_reg10]
	.dwpsn	"fastrun.c",342,14
        MOVW      DP,#_g_int32total_cnt
        MOVL      ACC,@_g_int32total_cnt ; |342| 
        MOVL      XAR3,#_search_info
	.dwpsn	"fastrun.c",340,8
        MOVB      XAR1,#0
L22:    
DW$L$_turn_info_func$2$B:
;***	-----------------------g2:
;*** 344	-----------------------    turn_info_compute(i*26+K$5, i);
;*** 342	-----------------------    if ( (unsigned long)(++i) <= g_int32total_cnt ) goto g2;
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",344,3
        MOVB      ACC,#26
        MOVL      XT,ACC                ; |344| 
        IMPYL     P,XT,XAR1             ; |344| 
        MOVL      ACC,XAR3              ; |344| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |344| 
        MOVL      ACC,XAR1              ; |344| 
        LCR       #_turn_info_compute   ; |344| 
        ; call occurs [#_turn_info_compute] ; |344| 
	.dwpsn	"fastrun.c",342,14
        MOVL      ACC,XAR1
        MOVW      DP,#_g_int32total_cnt
        ADDB      ACC,#1                ; |342| 
        CMPL      ACC,@_g_int32total_cnt ; |342| 
        MOVL      XAR1,ACC              ; |342| 
        BF        L22,LOS               ; |342| 
        ; branchcc occurs ; |342| 
DW$L$_turn_info_func$2$E:
	.dwpsn	"fastrun.c",347,1
	.dwcfa	0x1d, -6
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 11
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs

DW$78	.dwtag  DW_TAG_loop
	.dwattr DW$78, DW_AT_name("C:\project\_Viper_\main\fastrun.asm:L22:1:1729866710")
	.dwattr DW$78, DW_AT_begin_file("fastrun.c")
	.dwattr DW$78, DW_AT_begin_line(0x156)
	.dwattr DW$78, DW_AT_end_line(0x159)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_turn_info_func$2$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_turn_info_func$2$E)
	.dwendtag DW$78

	.dwattr DW$75, DW_AT_end_file("fastrun.c")
	.dwattr DW$75, DW_AT_end_line(0x15b)
	.dwattr DW$75, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$75

	.sect	".text"
	.global	_speed_up_compute

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("speed_up_compute"), DW_AT_symbol_name("_speed_up_compute")
	.dwattr DW$80, DW_AT_low_pc(_speed_up_compute)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("fastrun.c")
	.dwattr DW$80, DW_AT_begin_line(0x1d1)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",466,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _speed_up_compute             FR SIZE:   0           *
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
_speed_up_compute:
;*** 469	-----------------------    if ( !(*&g_Flag&0x400u) ) goto g5;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _p_info
DW$81	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p_info"), DW_AT_symbol_name("_p_info")
	.dwattr DW$81, DW_AT_type(*DW$T$67)
	.dwattr DW$81, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$2
DW$82	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$82, DW_AT_type(*DW$T$111)
	.dwattr DW$82, DW_AT_location[DW_OP_reg12]
	.dwpsn	"fastrun.c",469,2
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#10          ; |469| 
        BF        L24,NTC               ; |469| 
        ; branchcc occurs ; |469| 
;*** 470	-----------------------    ++g_int32speed_up_cnt;
;*** 471	-----------------------    if ( g_int32speed_up_cnt > ((long *)p_info)[13*(long)U16_turnmark_cnt-7] ) goto g4;
	.dwpsn	"fastrun.c",470,2
        MOVB      ACC,#1
        MOVW      DP,#_g_int32speed_up_cnt
        ADDL      @_g_int32speed_up_cnt,ACC ; |470| 
	.dwpsn	"fastrun.c",471,2
        MOV       T,#26                 ; |471| 
        MOVW      DP,#_U16_turnmark_cnt
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |471| 
        ADDL      XAR4,ACC
        SUBB      XAR4,#14              ; |471| 
        MOVW      DP,#_g_int32speed_up_cnt
        MOVL      ACC,*+XAR4[0]         ; |471| 
        CMPL      ACC,@_g_int32speed_up_cnt ; |471| 
        BF        L23,LT                ; |471| 
        ; branchcc occurs ; |471| 
;*** 471	-----------------------    if ( U16_turnmark_cnt ) goto g5;
        MOVW      DP,#_U16_turnmark_cnt
        MOV       AL,@_U16_turnmark_cnt ; |471| 
        BF        L24,NEQ               ; |471| 
        ; branchcc occurs ; |471| 
L23:    
;***	-----------------------g4:
;*** 473	-----------------------    C$2 = &GpioDataRegs;
;*** 473	-----------------------    ((volatile unsigned *)C$2)[10];
;*** 473	-----------------------    *(&GpioDataRegs+10L) = *(&GpioDataRegs+10L)|2u;
;*** 473	-----------------------    *(&GpioDataRegs+3L) = *((volatile struct _GPADAT_BITS *)C$2+3L)|0x8000u;
;*** 474	-----------------------    *&g_Flag |= 0x200u;
;*** 475	-----------------------    *&g_Flag &= 0xfbffu;
;*** 476	-----------------------    g_int32speed_up_cnt = 0L;
;***	-----------------------g5:
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",473,3
        MOVB      XAR0,#10              ; |473| 
        MOVL      XAR4,#_GpioDataRegs   ; |473| 
        MOVW      DP,#_GpioDataRegs+10
        MOV       AL,*+XAR4[AR0]        ; |473| 
        OR        @_GpioDataRegs+10,#0x0002 ; |473| 
        MOV       AL,*+XAR4[3]          ; |473| 
        OR        AL,#0x8000            ; |473| 
        MOV       @_GpioDataRegs+3,AL   ; |473| 
	.dwpsn	"fastrun.c",474,3
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0200      ; |474| 
	.dwpsn	"fastrun.c",475,3
        AND       @_g_Flag,#0xfbff      ; |475| 
	.dwpsn	"fastrun.c",476,3
        MOVB      ACC,#0
        MOVW      DP,#_g_int32speed_up_cnt
        MOVL      @_g_int32speed_up_cnt,ACC ; |476| 
L24:    
	.dwpsn	"fastrun.c",478,1
        LRETR
        ; return occurs
	.dwattr DW$80, DW_AT_end_file("fastrun.c")
	.dwattr DW$80, DW_AT_end_line(0x1de)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$80

	.sect	".text"

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("default_turn_compute"), DW_AT_symbol_name("_default_turn_compute$0")
	.dwattr DW$83, DW_AT_low_pc(_default_turn_compute$0)
	.dwattr DW$83, DW_AT_high_pc(0x00)
	.dwattr DW$83, DW_AT_begin_file("fastrun.c")
	.dwattr DW$83, DW_AT_begin_line(0xe9)
	.dwattr DW$83, DW_AT_begin_column(0x0d)
	.dwpsn	"fastrun.c",234,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _default_turn_compute         FR SIZE:  36           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 34 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_default_turn_compute$0:
;*** 236	-----------------------    g_u32_VEL_targetval;
;*** 240	-----------------------    (*pinfo).int32accel = 3000L;
;*** 241	-----------------------    v$2 = (*pinfo).int32turn_dir;
;*** 241	-----------------------    if ( v$2&0x10L ) goto g9;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#34
	.dwcfa	0x1d, -38
;* AR4   assigned to _pinfo
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$84, DW_AT_type(*DW$T$67)
	.dwattr DW$84, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _mark
DW$85	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mark"), DW_AT_symbol_name("_mark")
	.dwattr DW$85, DW_AT_type(*DW$T$22)
	.dwattr DW$85, DW_AT_location[DW_OP_reg0]
;* PL    assigned to v$5
DW$86	.dwtag  DW_TAG_variable, DW_AT_name("v$5"), DW_AT_symbol_name("v$5")
	.dwattr DW$86, DW_AT_type(*DW$T$12)
	.dwattr DW$86, DW_AT_location[DW_OP_reg2]
;* AR7   assigned to v$4
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$87, DW_AT_type(*DW$T$12)
	.dwattr DW$87, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to v$3
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$88, DW_AT_type(*DW$T$12)
	.dwattr DW$88, DW_AT_location[DW_OP_reg18]
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$89, DW_AT_type(*DW$T$12)
	.dwattr DW$89, DW_AT_location[DW_OP_breg20 -34]
;* PL    assigned to v$1
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$90, DW_AT_type(*DW$T$12)
	.dwattr DW$90, DW_AT_location[DW_OP_reg2]
;* AR1   assigned to _pinfo
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$91, DW_AT_type(*DW$T$103)
	.dwattr DW$91, DW_AT_location[DW_OP_reg6]
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("S$4"), DW_AT_symbol_name("S$4")
	.dwattr DW$92, DW_AT_type(*DW$T$18)
	.dwattr DW$92, DW_AT_location[DW_OP_breg20 -4]
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("S$3"), DW_AT_symbol_name("S$3")
	.dwattr DW$93, DW_AT_type(*DW$T$18)
	.dwattr DW$93, DW_AT_location[DW_OP_breg20 -8]
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("S$2"), DW_AT_symbol_name("S$2")
	.dwattr DW$94, DW_AT_type(*DW$T$18)
	.dwattr DW$94, DW_AT_location[DW_OP_breg20 -12]
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("S$1"), DW_AT_symbol_name("S$1")
	.dwattr DW$95, DW_AT_type(*DW$T$18)
	.dwattr DW$95, DW_AT_location[DW_OP_breg20 -16]
;* AR5   assigned to K$68
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("K$68"), DW_AT_symbol_name("K$68")
	.dwattr DW$96, DW_AT_type(*DW$T$98)
	.dwattr DW$96, DW_AT_location[DW_OP_reg14]
;* AR7   assigned to U$55
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("U$55"), DW_AT_symbol_name("U$55")
	.dwattr DW$97, DW_AT_type(*DW$T$13)
	.dwattr DW$97, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to U$49
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("U$49"), DW_AT_symbol_name("U$49")
	.dwattr DW$98, DW_AT_type(*DW$T$13)
	.dwattr DW$98, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to U$43
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("U$43"), DW_AT_symbol_name("U$43")
	.dwattr DW$99, DW_AT_type(*DW$T$13)
	.dwattr DW$99, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to U$37
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("U$37"), DW_AT_symbol_name("U$37")
	.dwattr DW$100, DW_AT_type(*DW$T$13)
	.dwattr DW$100, DW_AT_location[DW_OP_reg18]
        MOVL      XAR1,XAR4             ; |234| 
	.dwpsn	"fastrun.c",236,2
        MOVW      DP,#_g_u32_VEL_targetval
        MOVL      ACC,@_g_u32_VEL_targetval ; |236| 
	.dwpsn	"fastrun.c",240,2
        MOVB      XAR0,#14              ; |240| 
        MOVL      XAR4,#3000            ; |240| 
        MOVL      *+XAR1[AR0],XAR4      ; |240| 
	.dwpsn	"fastrun.c",241,2
        MOVB      XAR0,#10              ; |241| 
        MOVL      ACC,*+XAR1[AR0]       ; |241| 
        MOVL      *-SP[34],ACC          ; |241| 
        ANDB      AL,#0x10              ; |241| 
        MOVB      AH,#0
        TEST      ACC                   ; |241| 
        BF        L36,NEQ               ; |241| 
        ; branchcc occurs ; |241| 
;*** 246	-----------------------    if ( v$2&0x20L ) goto g8;
	.dwpsn	"fastrun.c",246,7
        MOVL      ACC,*-SP[34]
        ANDB      AL,#0x20              ; |246| 
        MOVB      AH,#0
        TEST      ACC                   ; |246| 
        BF        L33,NEQ               ; |246| 
        ; branchcc occurs ; |246| 
;*** 251	-----------------------    if ( v$2&0x40L ) goto g7;
	.dwpsn	"fastrun.c",251,7
        MOVL      ACC,*-SP[34]
        ANDB      AL,#0x40              ; |251| 
        MOVB      AH,#0
        TEST      ACC                   ; |251| 
        BF        L30,NEQ               ; |251| 
        ; branchcc occurs ; |251| 
;*** 256	-----------------------    if ( v$2&0x80L ) goto g6;
	.dwpsn	"fastrun.c",256,7
        MOVL      ACC,*-SP[34]
        ANDB      AL,#0x80              ; |256| 
        MOVB      AH,#0
        TEST      ACC                   ; |256| 
        BF        L27,NEQ               ; |256| 
        ; branchcc occurs ; |256| 
;*** 261	-----------------------    ((v$2&0x100L) != 0L) ? (v$5 = v$1 = (long)((long double)g_int32turn_LARGE_VEL*128.0L)) : (v$5 = v$1 = (long)((long double)g_u32_VEL_targetval*128.0L));
	.dwpsn	"fastrun.c",261,7
        MOV       ACC,#256              ; |261| 
        AND       AL,*-SP[34]           ; |261| 
        AND       AH,*-SP[33]           ; |261| 
        TEST      ACC                   ; |261| 
        BF        L25,EQ                ; |261| 
        ; branchcc occurs ; |261| 
        MOVZ      AR6,SP                ; |261| 
        MOVW      DP,#_g_int32turn_LARGE_VEL
        MOVL      ACC,@_g_int32turn_LARGE_VEL ; |261| 
        SUBB      XAR6,#24              ; |261| 
        LCR       #L$$TOFD              ; |261| 
        ; call occurs [#L$$TOFD] ; |261| 
        MOVZ      AR4,SP                ; |261| 
        MOVZ      AR6,SP                ; |261| 
        MOVL      XAR5,#FL2             ; |261| 
        SUBB      XAR4,#24              ; |261| 
        SUBB      XAR6,#20              ; |261| 
        LCR       #FD$$MPY              ; |261| 
        ; call occurs [#FD$$MPY] ; |261| 
        MOVZ      AR4,SP                ; |261| 
        SUBB      XAR4,#20              ; |261| 
        LCR       #FD$$TOL              ; |261| 
        ; call occurs [#FD$$TOL] ; |261| 
        MOVL      P,ACC                 ; |261| 
        BF        L26,UNC               ; |261| 
        ; branch occurs ; |261| 
L25:    
        MOVZ      AR6,SP                ; |261| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |261| 
        SUBB      XAR6,#32              ; |261| 
        LCR       #UL$$TOFD             ; |261| 
        ; call occurs [#UL$$TOFD] ; |261| 
        MOVZ      AR4,SP                ; |261| 
        MOVZ      AR6,SP                ; |261| 
        MOVL      XAR5,#FL2             ; |261| 
        SUBB      XAR4,#32              ; |261| 
        SUBB      XAR6,#28              ; |261| 
        LCR       #FD$$MPY              ; |261| 
        ; call occurs [#FD$$MPY] ; |261| 
        MOVZ      AR4,SP                ; |261| 
        SUBB      XAR4,#28              ; |261| 
        LCR       #FD$$TOL              ; |261| 
        ; call occurs [#FD$$TOL] ; |261| 
        MOVL      P,ACC                 ; |261| 
L26:    
;*** 265	-----------------------    v$3 = v$4 = v$1;
;*** 266	-----------------------    goto g10;
	.dwpsn	"fastrun.c",265,3
        MOVL      XAR7,P                ; |265| 
	.dwpsn	"fastrun.c",266,2
        BF        L39,UNC               ; |266| 
        ; branch occurs ; |266| 
L27:    
;***	-----------------------g6:
;*** 258	-----------------------    U$37 = g_int32turn_270_VEL;
;*** 258	-----------------------    (g_u32_VEL_targetval > (unsigned long)g_int32turn_270_VEL) ? (S$1 = (long double)U$37) : (S$1 = (long double)g_u32_VEL_targetval);
	.dwpsn	"fastrun.c",258,3
        MOVW      DP,#_g_int32turn_270_VEL
        MOVL      XAR7,@_g_int32turn_270_VEL ; |258| 
        MOVL      ACC,@_g_int32turn_270_VEL ; |258| 
        MOVW      DP,#_g_u32_VEL_targetval
        CMPL      ACC,@_g_u32_VEL_targetval ; |258| 
        BF        L28,HIS               ; |258| 
        ; branchcc occurs ; |258| 
        MOVZ      AR6,SP                ; |258| 
        MOVL      ACC,XAR7              ; |258| 
        SUBB      XAR6,#16              ; |258| 
        LCR       #UL$$TOFD             ; |258| 
        ; call occurs [#UL$$TOFD] ; |258| 
        BF        L29,UNC               ; |258| 
        ; branch occurs ; |258| 
L28:    
        MOVZ      AR6,SP                ; |258| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |258| 
        SUBB      XAR6,#16              ; |258| 
        LCR       #UL$$TOFD             ; |258| 
        ; call occurs [#UL$$TOFD] ; |258| 
L29:    
;*** 258	-----------------------    v$5 = v$1 = (long)(S$1*128.0L);
;*** 259	-----------------------    v$3 = v$4 = v$1;
;*** 260	-----------------------    goto g10;
        MOVZ      AR4,SP                ; |258| 
        MOVZ      AR6,SP                ; |258| 
        MOVL      XAR5,#FL2             ; |258| 
        SUBB      XAR4,#16              ; |258| 
        SUBB      XAR6,#20              ; |258| 
        LCR       #FD$$MPY              ; |258| 
        ; call occurs [#FD$$MPY] ; |258| 
        MOVZ      AR4,SP                ; |258| 
        SUBB      XAR4,#20              ; |258| 
        LCR       #FD$$TOL              ; |258| 
        ; call occurs [#FD$$TOL] ; |258| 
        MOVL      P,ACC                 ; |258| 
	.dwpsn	"fastrun.c",259,3
        MOVL      XAR7,P                ; |259| 
	.dwpsn	"fastrun.c",260,2
        BF        L39,UNC               ; |260| 
        ; branch occurs ; |260| 
L30:    
;***	-----------------------g7:
;*** 253	-----------------------    U$43 = g_int32turn_180_VEL;
;*** 253	-----------------------    (g_u32_VEL_targetval > (unsigned long)g_int32turn_180_VEL) ? (S$2 = (long double)U$43) : (S$2 = (long double)g_u32_VEL_targetval);
	.dwpsn	"fastrun.c",253,3
        MOVW      DP,#_g_int32turn_180_VEL
        MOVL      XAR7,@_g_int32turn_180_VEL ; |253| 
        MOVL      ACC,@_g_int32turn_180_VEL ; |253| 
        MOVW      DP,#_g_u32_VEL_targetval
        CMPL      ACC,@_g_u32_VEL_targetval ; |253| 
        BF        L31,HIS               ; |253| 
        ; branchcc occurs ; |253| 
        MOVZ      AR6,SP                ; |253| 
        MOVL      ACC,XAR7              ; |253| 
        SUBB      XAR6,#12              ; |253| 
        LCR       #UL$$TOFD             ; |253| 
        ; call occurs [#UL$$TOFD] ; |253| 
        BF        L32,UNC               ; |253| 
        ; branch occurs ; |253| 
L31:    
        MOVZ      AR6,SP                ; |253| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |253| 
        SUBB      XAR6,#12              ; |253| 
        LCR       #UL$$TOFD             ; |253| 
        ; call occurs [#UL$$TOFD] ; |253| 
L32:    
;*** 253	-----------------------    v$5 = v$1 = (long)(S$2*128.0L);
;*** 254	-----------------------    v$3 = v$4 = v$1;
;*** 255	-----------------------    goto g10;
        MOVZ      AR4,SP                ; |253| 
        MOVZ      AR6,SP                ; |253| 
        MOVL      XAR5,#FL2             ; |253| 
        SUBB      XAR4,#12              ; |253| 
        SUBB      XAR6,#20              ; |253| 
        LCR       #FD$$MPY              ; |253| 
        ; call occurs [#FD$$MPY] ; |253| 
        MOVZ      AR4,SP                ; |253| 
        SUBB      XAR4,#20              ; |253| 
        LCR       #FD$$TOL              ; |253| 
        ; call occurs [#FD$$TOL] ; |253| 
        MOVL      P,ACC                 ; |253| 
	.dwpsn	"fastrun.c",254,3
        MOVL      XAR7,P                ; |254| 
	.dwpsn	"fastrun.c",255,2
        BF        L39,UNC               ; |255| 
        ; branch occurs ; |255| 
L33:    
;***	-----------------------g8:
;*** 248	-----------------------    U$49 = g_int32turn_90_VEL;
;*** 248	-----------------------    (g_u32_VEL_targetval > (unsigned long)g_int32turn_90_VEL) ? (S$3 = (long double)U$49) : (S$3 = (long double)g_u32_VEL_targetval);
	.dwpsn	"fastrun.c",248,3
        MOVW      DP,#_g_int32turn_90_VEL
        MOVL      XAR7,@_g_int32turn_90_VEL ; |248| 
        MOVL      ACC,@_g_int32turn_90_VEL ; |248| 
        MOVW      DP,#_g_u32_VEL_targetval
        CMPL      ACC,@_g_u32_VEL_targetval ; |248| 
        BF        L34,HIS               ; |248| 
        ; branchcc occurs ; |248| 
        MOVZ      AR6,SP                ; |248| 
        MOVL      ACC,XAR7              ; |248| 
        SUBB      XAR6,#8               ; |248| 
        LCR       #UL$$TOFD             ; |248| 
        ; call occurs [#UL$$TOFD] ; |248| 
        BF        L35,UNC               ; |248| 
        ; branch occurs ; |248| 
L34:    
        MOVZ      AR6,SP                ; |248| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |248| 
        SUBB      XAR6,#8               ; |248| 
        LCR       #UL$$TOFD             ; |248| 
        ; call occurs [#UL$$TOFD] ; |248| 
L35:    
;*** 248	-----------------------    v$5 = v$1 = (long)(S$3*128.0L);
;*** 249	-----------------------    v$3 = v$4 = v$1;
;*** 250	-----------------------    goto g10;
        MOVZ      AR4,SP                ; |248| 
        MOVZ      AR6,SP                ; |248| 
        MOVL      XAR5,#FL2             ; |248| 
        SUBB      XAR4,#8               ; |248| 
        SUBB      XAR6,#20              ; |248| 
        LCR       #FD$$MPY              ; |248| 
        ; call occurs [#FD$$MPY] ; |248| 
        MOVZ      AR4,SP                ; |248| 
        SUBB      XAR4,#20              ; |248| 
        LCR       #FD$$TOL              ; |248| 
        ; call occurs [#FD$$TOL] ; |248| 
        MOVL      P,ACC                 ; |248| 
	.dwpsn	"fastrun.c",249,3
        MOVL      XAR7,P                ; |249| 
	.dwpsn	"fastrun.c",250,2
        BF        L39,UNC               ; |250| 
        ; branch occurs ; |250| 
L36:    
;***	-----------------------g9:
;*** 243	-----------------------    U$55 = g_int32turn_45_VEL;
;*** 243	-----------------------    (g_u32_VEL_targetval > (unsigned long)g_int32turn_45_VEL) ? (S$4 = (long double)U$55) : (S$4 = (long double)g_u32_VEL_targetval);
	.dwpsn	"fastrun.c",243,3
        MOVW      DP,#_g_int32turn_45_VEL
        MOVL      XAR7,@_g_int32turn_45_VEL ; |243| 
        MOVL      ACC,@_g_int32turn_45_VEL ; |243| 
        MOVW      DP,#_g_u32_VEL_targetval
        CMPL      ACC,@_g_u32_VEL_targetval ; |243| 
        BF        L37,HIS               ; |243| 
        ; branchcc occurs ; |243| 
        MOVZ      AR6,SP                ; |243| 
        MOVL      ACC,XAR7              ; |243| 
        SUBB      XAR6,#4               ; |243| 
        LCR       #UL$$TOFD             ; |243| 
        ; call occurs [#UL$$TOFD] ; |243| 
        BF        L38,UNC               ; |243| 
        ; branch occurs ; |243| 
L37:    
        MOVZ      AR6,SP                ; |243| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |243| 
        SUBB      XAR6,#4               ; |243| 
        LCR       #UL$$TOFD             ; |243| 
        ; call occurs [#UL$$TOFD] ; |243| 
L38:    
;*** 243	-----------------------    v$5 = v$1 = (long)(S$4*128.0L);
;*** 244	-----------------------    v$3 = v$4 = v$1;
        MOVZ      AR4,SP                ; |243| 
        MOVZ      AR6,SP                ; |243| 
        MOVL      XAR5,#FL2             ; |243| 
        SUBB      XAR4,#4               ; |243| 
        SUBB      XAR6,#20              ; |243| 
        LCR       #FD$$MPY              ; |243| 
        ; call occurs [#FD$$MPY] ; |243| 
        MOVZ      AR4,SP                ; |243| 
        SUBB      XAR4,#20              ; |243| 
        LCR       #FD$$TOL              ; |243| 
        ; call occurs [#FD$$TOL] ; |243| 
        MOVL      P,ACC                 ; |243| 
	.dwpsn	"fastrun.c",244,3
        MOVL      XAR7,P                ; |244| 
L39:    
;***	-----------------------g10:
;*** 275	-----------------------    if ( v$2 < 64L || *((long * const)pinfo+36L) < 64L ) goto g14;
	.dwpsn	"fastrun.c",275,2
        MOVL      XAR6,*-SP[34]         ; |275| 
        MOVB      ACC,#64
        CMPL      ACC,XAR6              ; |275| 
        BF        L41,GT                ; |275| 
        ; branchcc occurs ; |275| 
        MOVB      XAR0,#36              ; |275| 
        CMPL      ACC,*+XAR1[AR0]       ; |275| 
        BF        L41,GT                ; |275| 
        ; branchcc occurs ; |275| 
;*** 277	-----------------------    (*pinfo).int32accel = 3000L;
;*** 278	-----------------------    if ( v$1 < 281600L ) goto g13;
	.dwpsn	"fastrun.c",277,3
        MOVL      XAR4,#3000            ; |277| 
        MOVB      XAR0,#14              ; |277| 
        MOVL      *+XAR1[AR0],XAR4      ; |277| 
	.dwpsn	"fastrun.c",278,3
        MOVL      XAR4,#281600          ; |278| 
        MOVL      ACC,XAR4              ; |278| 
        CMPL      ACC,P                 ; |278| 
        BF        L40,GT                ; |278| 
        ; branchcc occurs ; |278| 
;*** 279	-----------------------    v$5 = v$1 = 281600L;
	.dwpsn	"fastrun.c",279,4
        MOV       PH,#4
        MOV       PL,#19456
L40:    
;***	-----------------------g13:
;*** 281	-----------------------    v$3 = v$4 = v$1;
;***  	-----------------------    K$68 = (long * const)pinfo-16L;
;*** 282	-----------------------    goto g19;
	.dwpsn	"fastrun.c",281,3
        MOVL      XAR5,XAR1
        SUBB      XAR5,#16
        MOVL      XAR7,P                ; |281| 
	.dwpsn	"fastrun.c",282,2
        BF        L43,UNC               ; |282| 
        ; branch occurs ; |282| 
L41:    
;***	-----------------------g14:
;*** 283	-----------------------    K$68 = (long * const)pinfo-16L;
;*** 283	-----------------------    if ( *K$68 < 64L || v$2 < 64L ) goto g19;
	.dwpsn	"fastrun.c",283,7
        MOVL      XAR5,XAR1             ; |283| 
        SUBB      XAR5,#16              ; |283| 
        CMPL      ACC,*+XAR5[0]         ; |283| 
        BF        L43,GT                ; |283| 
        ; branchcc occurs ; |283| 
        MOVL      XAR6,*-SP[34]         ; |283| 
        CMPL      ACC,XAR6              ; |283| 
        BF        L43,GT                ; |283| 
        ; branchcc occurs ; |283| 
;*** 285	-----------------------    (*pinfo).int32accel = 3000L;
;*** 286	-----------------------    if ( v$1 < 281600L ) goto g17;
	.dwpsn	"fastrun.c",285,3
        MOVL      XAR4,#3000            ; |285| 
        MOVB      XAR0,#14              ; |285| 
        MOVL      *+XAR1[AR0],XAR4      ; |285| 
	.dwpsn	"fastrun.c",286,3
        MOVL      XAR4,#281600          ; |286| 
        MOVL      ACC,XAR4              ; |286| 
        CMPL      ACC,P                 ; |286| 
        BF        L42,GT                ; |286| 
        ; branchcc occurs ; |286| 
;*** 287	-----------------------    v$5 = v$1 = 281600L;
	.dwpsn	"fastrun.c",287,4
        MOV       PH,#4
        MOV       PL,#19456
L42:    
;***	-----------------------g17:
;*** 289	-----------------------    v$3 = v$4 = v$1;
;*** 289	-----------------------    if ( !(int)((long)((unsigned)*K$68^0xffffu)&1L) ) goto g20;
	.dwpsn	"fastrun.c",289,3
        MOVZ      AR6,*+XAR5[0]         ; |289| 
        XOR       AR6,#0xffff           ; |289| 
        MOVL      XAR7,P                ; |289| 
        MOVB      ACC,#1
        AND       ACC,AR6               ; |289| 
        BF        L44,EQ                ; |289| 
        ; branchcc occurs ; |289| 
;***  	-----------------------    (*pinfo).iq7vel = v$4;
;***  	-----------------------    (*pinfo).iq7out_vel = v$4;
;***  	-----------------------    (*pinfo).iq7in_vel = v$5;
;***  	-----------------------    goto g23;
        MOVB      XAR0,#18
        MOVL      *+XAR1[AR0],XAR7
        MOVB      XAR0,#20
        MOVL      *+XAR1[AR0],XAR7
        MOVB      XAR0,#16
        MOVL      *+XAR1[AR0],P
        BF        L48,UNC
        ; branch occurs
L43:    
;***	-----------------------g19:
;*** 292	-----------------------    if ( (*K$68&1L) == 0L ) goto g22;
	.dwpsn	"fastrun.c",292,2
        MOVL      ACC,*+XAR5[0]         ; |292| 
        ANDB      AL,#0x01              ; |292| 
        MOVB      AH,#0
        TEST      ACC                   ; |292| 
        BF        L47,EQ                ; |292| 
        ; branchcc occurs ; |292| 
L44:    
;***	-----------------------g20:
;*** 292	-----------------------    if ( v$2 < 32L || (int)((long)~(unsigned)*((long * const)pinfo+36L)&1L) ) goto g22;
        MOVL      XAR6,*-SP[34]         ; |292| 
        MOVB      ACC,#32
        CMPL      ACC,XAR6              ; |292| 
        BF        L47,GT                ; |292| 
        ; branchcc occurs ; |292| 
        MOVB      XAR0,#36              ; |292| 
        MOV       AL,*+XAR1[AR0]        ; |292| 
        NOT       AL                    ; |292| 
        MOVZ      AR6,AL                ; |292| 
        MOVB      ACC,#1
        AND       ACC,AR6               ; |292| 
        BF        L47,NEQ               ; |292| 
        ; branchcc occurs ; |292| 
;*** 294	-----------------------    (*pinfo).int32accel = 3000L;
;*** 295	-----------------------    (*pinfo).iq7in_vel = (v$1 >= 281600L) ? (v$1 = 281600L) : v$5;
	.dwpsn	"fastrun.c",294,3
        MOVL      XAR4,#3000            ; |294| 
        MOVB      XAR0,#14              ; |294| 
        MOVL      *+XAR1[AR0],XAR4      ; |294| 
	.dwpsn	"fastrun.c",295,3
        MOVL      XAR4,#281600          ; |295| 
        MOVL      ACC,XAR4              ; |295| 
        CMPL      ACC,P                 ; |295| 
        BF        L45,GT                ; |295| 
        ; branchcc occurs ; |295| 
        MOV       PH,#4
        MOV       PL,#19456
        MOVL      ACC,P                 ; |295| 
        BF        L46,UNC               ; |295| 
        ; branch occurs ; |295| 
L45:    
        MOVL      ACC,P                 ; |295| 
L46:    
;*** 296	-----------------------    (*pinfo).iq7vel = (*pinfo).iq7out_vel = v$1;
;*** 297	-----------------------    goto g23;
        MOVB      XAR0,#16              ; |295| 
        MOVL      *+XAR1[AR0],ACC       ; |295| 
	.dwpsn	"fastrun.c",296,4
        MOVB      XAR0,#20              ; |296| 
        MOVL      *+XAR1[AR0],P         ; |296| 
        MOVB      XAR0,#18              ; |296| 
        MOVL      *+XAR1[AR0],P         ; |296| 
	.dwpsn	"fastrun.c",297,3
        BF        L48,UNC               ; |297| 
        ; branch occurs ; |297| 
L47:    
;***	-----------------------g22:
;***  	-----------------------    (*pinfo).iq7vel = v$3;
;***  	-----------------------    (*pinfo).iq7out_vel = v$4;
;***  	-----------------------    (*pinfo).iq7in_vel = v$5;
;***	-----------------------g23:
;***  	-----------------------    return;
        MOVB      XAR0,#18
        MOVL      *+XAR1[AR0],XAR7
        MOVB      XAR0,#20
        MOVL      *+XAR1[AR0],XAR7
        MOVB      XAR0,#16
        MOVL      *+XAR1[AR0],P
L48:    
	.dwpsn	"fastrun.c",302,1
        SUBB      SP,#34
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$83, DW_AT_end_file("fastrun.c")
	.dwattr DW$83, DW_AT_end_line(0x12e)
	.dwattr DW$83, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$83

	.sect	".text"
	.global	_decel_dist_compute

DW$101	.dwtag  DW_TAG_subprogram, DW_AT_name("decel_dist_compute"), DW_AT_symbol_name("_decel_dist_compute")
	.dwattr DW$101, DW_AT_low_pc(_decel_dist_compute)
	.dwattr DW$101, DW_AT_high_pc(0x00)
	.dwattr DW$101, DW_AT_begin_file("fastrun.c")
	.dwattr DW$101, DW_AT_begin_line(0x145)
	.dwattr DW$101, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",326,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _decel_dist_compute           FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 14 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_decel_dist_compute:
;*** 326	-----------------------    cur_vel = cur_vel;
;*** 326	-----------------------    tar_vel = tar_vel;
;*** 326	-----------------------    acc = acc;
;*** 329	-----------------------    cur_vel = _IQ7div(cur_vel, 128000L);
;*** 330	-----------------------    tar_vel = _IQ7div(tar_vel, 128000L);
;*** 333	-----------------------    iq7acc = _IQ7div((long)((long double)acc*128.0L), 128000L);
;*** 334	-----------------------    *decel_dist = __IQmpy(_IQ7div(ABS(__IQmpy(cur_vel, cur_vel, 7)-__IQmpy(tar_vel, tar_vel, 7)), iq7acc*2L), 128000L, 7);
;*** 334	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#16
	.dwcfa	0x1d, -20
;* AL    assigned to _cur_vel
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$102, DW_AT_type(*DW$T$72)
	.dwattr DW$102, DW_AT_location[DW_OP_reg0]
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$103, DW_AT_type(*DW$T$72)
	.dwattr DW$103, DW_AT_location[DW_OP_breg20 -22]
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$104, DW_AT_type(*DW$T$52)
	.dwattr DW$104, DW_AT_location[DW_OP_breg20 -24]
;* AR4   assigned to _decel_dist
DW$105	.dwtag  DW_TAG_formal_parameter, DW_AT_name("decel_dist"), DW_AT_symbol_name("_decel_dist")
	.dwattr DW$105, DW_AT_type(*DW$T$73)
	.dwattr DW$105, DW_AT_location[DW_OP_reg12]
;* AR1   assigned to _decel_dist
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("decel_dist"), DW_AT_symbol_name("_decel_dist")
	.dwattr DW$106, DW_AT_type(*DW$T$87)
	.dwattr DW$106, DW_AT_location[DW_OP_reg6]
;* AL    assigned to _cur_vel
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$107, DW_AT_type(*DW$T$88)
	.dwattr DW$107, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to _tar_vel
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$108, DW_AT_type(*DW$T$88)
	.dwattr DW$108, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to _acc
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$109, DW_AT_type(*DW$T$86)
	.dwattr DW$109, DW_AT_location[DW_OP_reg16]
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$110, DW_AT_type(*DW$T$72)
	.dwattr DW$110, DW_AT_location[DW_OP_breg20 -4]
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$111, DW_AT_type(*DW$T$72)
	.dwattr DW$111, DW_AT_location[DW_OP_breg20 -6]
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$112, DW_AT_type(*DW$T$52)
	.dwattr DW$112, DW_AT_location[DW_OP_breg20 -8]
        MOVL      XAR6,*-SP[24]         ; |326| 
        MOVL      XAR7,*-SP[22]         ; |326| 
        MOVL      *-SP[4],ACC           ; |326| 
        MOVL      *-SP[6],XAR7          ; |326| 
        MOVL      *-SP[8],XAR6          ; |326| 
        MOVL      XAR1,XAR4             ; |326| 
	.dwpsn	"fastrun.c",329,2
        MOVL      XAR4,#128000          ; |329| 
        MOVL      *-SP[2],XAR4          ; |329| 
        MOVL      ACC,*-SP[4]           ; |329| 
        LCR       #__IQ7div             ; |329| 
        ; call occurs [#__IQ7div] ; |329| 
        MOVL      *-SP[4],ACC           ; |329| 
	.dwpsn	"fastrun.c",330,2
        MOVL      XAR4,#128000          ; |330| 
        MOVL      *-SP[2],XAR4          ; |330| 
        MOVL      ACC,*-SP[6]           ; |330| 
        LCR       #__IQ7div             ; |330| 
        ; call occurs [#__IQ7div] ; |330| 
        MOVL      *-SP[6],ACC           ; |330| 
	.dwpsn	"fastrun.c",333,2
        MOVZ      AR6,SP                ; |333| 
        MOVL      ACC,*-SP[8]           ; |333| 
        SUBB      XAR6,#16              ; |333| 
        LCR       #L$$TOFD              ; |333| 
        ; call occurs [#L$$TOFD] ; |333| 
        MOVZ      AR6,SP                ; |333| 
        MOVZ      AR4,SP                ; |333| 
        SUBB      XAR6,#12              ; |333| 
        MOVL      XAR5,#FL2             ; |333| 
        SUBB      XAR4,#16              ; |333| 
        LCR       #FD$$MPY              ; |333| 
        ; call occurs [#FD$$MPY] ; |333| 
        MOVZ      AR4,SP                ; |333| 
        SUBB      XAR4,#12              ; |333| 
        LCR       #FD$$TOL              ; |333| 
        ; call occurs [#FD$$TOL] ; |333| 
        MOVL      XAR4,#128000          ; |333| 
        MOVL      *-SP[2],XAR4          ; |333| 
        LCR       #__IQ7div             ; |333| 
        ; call occurs [#__IQ7div] ; |333| 
	.dwpsn	"fastrun.c",334,2
        LSL       ACC,1                 ; |334| 
        MOVL      *-SP[2],ACC           ; |334| 
        MOVL      ACC,*-SP[6]           ; |334| 
        MOVL      XT,*-SP[6]            ; |334| 
        IMPYL     P,XT,ACC              ; |334| 
        QMPYL     ACC,XT,ACC            ; |334| 
        ASR64     ACC:P,#7              ; |334| 
        MOVL      ACC,*-SP[4]           ; |334| 
        MOVL      XAR6,P                ; |334| 
        MOVL      XT,*-SP[4]            ; |334| 
        IMPYL     P,XT,ACC              ; |334| 
        QMPYL     ACC,XT,ACC            ; |334| 
        ASR64     ACC:P,#7              ; |334| 
        MOVL      ACC,P                 ; |334| 
        SUBL      ACC,XAR6
        ABS       ACC                   ; |334| 
        LCR       #__IQ7div             ; |334| 
        ; call occurs [#__IQ7div] ; |334| 
        MOVL      XAR4,#128000          ; |334| 
        MOVL      XT,ACC                ; |334| 
        QMPYL     ACC,XT,XAR4           ; |334| 
        IMPYL     P,XT,XAR4             ; |334| 
        ASR64     ACC:P,#7              ; |334| 
        MOVL      *+XAR1[0],P           ; |334| 
	.dwpsn	"fastrun.c",335,1
        SUBB      SP,#16
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$101, DW_AT_end_file("fastrun.c")
	.dwattr DW$101, DW_AT_end_line(0x14f)
	.dwattr DW$101, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$101

	.sect	".text"
	.global	_max_vel_compute

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("max_vel_compute"), DW_AT_symbol_name("_max_vel_compute")
	.dwattr DW$113, DW_AT_low_pc(_max_vel_compute)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("fastrun.c")
	.dwattr DW$113, DW_AT_begin_line(0x134)
	.dwattr DW$113, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",309,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _max_vel_compute              FR SIZE:  20           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter, 16 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_max_vel_compute:
;*** 309	-----------------------    dist = dist;
;*** 309	-----------------------    minus_dist = minus_dist;
;*** 309	-----------------------    cur_vel = cur_vel;
;*** 309	-----------------------    acc = acc;
;*** 312	-----------------------    dist -= minus_dist;
;*** 314	-----------------------    dist = _IQ7div(dist, 256000L);
;*** 315	-----------------------    cur_vel = _IQ7div(cur_vel, 128000L);
;*** 317	-----------------------    iq7acc = _IQ7div((long)((long double)acc*128.0L), 128000L);
;*** 319	-----------------------    *max_vel = __IQmpy(_IQ7sqrt(__IQmpy(cur_vel, cur_vel, 7)+__IQmpy(iq7acc*2L, dist, 7)), 128000L, 7);
;*** 321	-----------------------    if ( *max_vel > 576000L ) goto g4;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#18
	.dwcfa	0x1d, -22
;* AL    assigned to _dist
DW$114	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$114, DW_AT_type(*DW$T$72)
	.dwattr DW$114, DW_AT_location[DW_OP_reg0]
DW$115	.dwtag  DW_TAG_formal_parameter, DW_AT_name("minus_dist"), DW_AT_symbol_name("_minus_dist")
	.dwattr DW$115, DW_AT_type(*DW$T$72)
	.dwattr DW$115, DW_AT_location[DW_OP_breg20 -24]
DW$116	.dwtag  DW_TAG_formal_parameter, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$116, DW_AT_type(*DW$T$72)
	.dwattr DW$116, DW_AT_location[DW_OP_breg20 -26]
DW$117	.dwtag  DW_TAG_formal_parameter, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$117, DW_AT_type(*DW$T$52)
	.dwattr DW$117, DW_AT_location[DW_OP_breg20 -28]
;* AR4   assigned to _max_vel
DW$118	.dwtag  DW_TAG_formal_parameter, DW_AT_name("max_vel"), DW_AT_symbol_name("_max_vel")
	.dwattr DW$118, DW_AT_type(*DW$T$73)
	.dwattr DW$118, DW_AT_location[DW_OP_reg12]
;* AR7   assigned to _acc
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$119, DW_AT_type(*DW$T$86)
	.dwattr DW$119, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to _cur_vel
DW$120	.dwtag  DW_TAG_variable, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$120, DW_AT_type(*DW$T$88)
	.dwattr DW$120, DW_AT_location[DW_OP_reg16]
;* PL    assigned to _minus_dist
DW$121	.dwtag  DW_TAG_variable, DW_AT_name("minus_dist"), DW_AT_symbol_name("_minus_dist")
	.dwattr DW$121, DW_AT_type(*DW$T$88)
	.dwattr DW$121, DW_AT_location[DW_OP_reg2]
;* AL    assigned to _dist
DW$122	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$122, DW_AT_type(*DW$T$88)
	.dwattr DW$122, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to _iq7acc
DW$123	.dwtag  DW_TAG_variable, DW_AT_name("iq7acc"), DW_AT_symbol_name("_iq7acc")
	.dwattr DW$123, DW_AT_type(*DW$T$23)
	.dwattr DW$123, DW_AT_location[DW_OP_reg18]
;* AR1   assigned to _max_vel
DW$124	.dwtag  DW_TAG_variable, DW_AT_name("max_vel"), DW_AT_symbol_name("_max_vel")
	.dwattr DW$124, DW_AT_type(*DW$T$87)
	.dwattr DW$124, DW_AT_location[DW_OP_reg6]
DW$125	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$125, DW_AT_type(*DW$T$72)
	.dwattr DW$125, DW_AT_location[DW_OP_breg20 -4]
DW$126	.dwtag  DW_TAG_variable, DW_AT_name("minus_dist"), DW_AT_symbol_name("_minus_dist")
	.dwattr DW$126, DW_AT_type(*DW$T$72)
	.dwattr DW$126, DW_AT_location[DW_OP_breg20 -6]
DW$127	.dwtag  DW_TAG_variable, DW_AT_name("cur_vel"), DW_AT_symbol_name("_cur_vel")
	.dwattr DW$127, DW_AT_type(*DW$T$72)
	.dwattr DW$127, DW_AT_location[DW_OP_breg20 -8]
DW$128	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$128, DW_AT_type(*DW$T$52)
	.dwattr DW$128, DW_AT_location[DW_OP_breg20 -10]
        MOVL      XAR7,*-SP[28]         ; |309| 
        MOVL      XAR6,*-SP[26]         ; |309| 
        MOVL      P,*-SP[24]            ; |309| 
        MOVL      *-SP[4],ACC           ; |309| 
        MOVL      *-SP[6],P             ; |309| 
        MOVL      *-SP[8],XAR6          ; |309| 
        MOVL      *-SP[10],XAR7         ; |309| 
        MOVL      XAR1,XAR4             ; |309| 
	.dwpsn	"fastrun.c",312,2
        MOVL      ACC,*-SP[6]           ; |312| 
        SUBL      *-SP[4],ACC           ; |312| 
	.dwpsn	"fastrun.c",314,2
        MOVL      XAR4,#256000          ; |314| 
        MOVL      *-SP[2],XAR4          ; |314| 
        MOVL      ACC,*-SP[4]           ; |314| 
        LCR       #__IQ7div             ; |314| 
        ; call occurs [#__IQ7div] ; |314| 
        MOVL      *-SP[4],ACC           ; |314| 
	.dwpsn	"fastrun.c",315,2
        MOVL      XAR4,#128000          ; |315| 
        MOVL      *-SP[2],XAR4          ; |315| 
        MOVL      ACC,*-SP[8]           ; |315| 
        LCR       #__IQ7div             ; |315| 
        ; call occurs [#__IQ7div] ; |315| 
        MOVL      *-SP[8],ACC           ; |315| 
	.dwpsn	"fastrun.c",317,2
        MOVZ      AR6,SP                ; |317| 
        MOVL      ACC,*-SP[10]          ; |317| 
        SUBB      XAR6,#18              ; |317| 
        LCR       #L$$TOFD              ; |317| 
        ; call occurs [#L$$TOFD] ; |317| 
        MOVZ      AR6,SP                ; |317| 
        MOVZ      AR4,SP                ; |317| 
        SUBB      XAR6,#14              ; |317| 
        MOVL      XAR5,#FL2             ; |317| 
        SUBB      XAR4,#18              ; |317| 
        LCR       #FD$$MPY              ; |317| 
        ; call occurs [#FD$$MPY] ; |317| 
        MOVZ      AR4,SP                ; |317| 
        SUBB      XAR4,#14              ; |317| 
        LCR       #FD$$TOL              ; |317| 
        ; call occurs [#FD$$TOL] ; |317| 
        MOVL      XAR4,#128000          ; |317| 
        MOVL      *-SP[2],XAR4          ; |317| 
        LCR       #__IQ7div             ; |317| 
        ; call occurs [#__IQ7div] ; |317| 
        MOVL      XAR7,ACC              ; |317| 
	.dwpsn	"fastrun.c",319,2
        MOVL      ACC,*-SP[8]           ; |319| 
        MOVL      XT,*-SP[8]            ; |319| 
        IMPYL     P,XT,ACC              ; |319| 
        QMPYL     ACC,XT,ACC            ; |319| 
        ASR64     ACC:P,#7              ; |319| 
        MOVL      ACC,XAR7              ; |319| 
        MOVL      XAR4,*-SP[4]          ; |319| 
        LSL       ACC,1                 ; |319| 
        MOVL      XAR6,P                ; |319| 
        MOVL      XT,ACC                ; |319| 
        IMPYL     P,XT,XAR4             ; |319| 
        MOVL      XT,ACC                ; |319| 
        QMPYL     ACC,XT,XAR4           ; |319| 
        ASR64     ACC:P,#7              ; |319| 
        ADDUL     P,XAR6
        MOVL      ACC,P                 ; |319| 
        LCR       #__IQ7sqrt            ; |319| 
        ; call occurs [#__IQ7sqrt] ; |319| 
        MOVL      XAR4,#128000          ; |319| 
        MOVL      XT,ACC                ; |319| 
        QMPYL     ACC,XT,XAR4           ; |319| 
        IMPYL     P,XT,XAR4             ; |319| 
        ASR64     ACC:P,#7              ; |319| 
        MOVL      *+XAR1[0],P           ; |319| 
	.dwpsn	"fastrun.c",321,2
        MOVL      XAR4,#576000          ; |321| 
        MOVL      ACC,XAR4              ; |321| 
        CMPL      ACC,*+XAR1[0]         ; |321| 
        BF        L49,LT                ; |321| 
        ; branchcc occurs ; |321| 
;*** 322	-----------------------    if ( *max_vel >= (long)((long double)g_u32_VEL_targetval*128.0L) ) goto g5;
	.dwpsn	"fastrun.c",322,7
        MOVZ      AR6,SP                ; |322| 
        MOVW      DP,#_g_u32_VEL_targetval
        MOVL      ACC,@_g_u32_VEL_targetval ; |322| 
        SUBB      XAR6,#18              ; |322| 
        LCR       #UL$$TOFD             ; |322| 
        ; call occurs [#UL$$TOFD] ; |322| 
        MOVZ      AR4,SP                ; |322| 
        MOVZ      AR6,SP                ; |322| 
        MOVL      XAR5,#FL2             ; |322| 
        SUBB      XAR4,#18              ; |322| 
        SUBB      XAR6,#14              ; |322| 
        LCR       #FD$$MPY              ; |322| 
        ; call occurs [#FD$$MPY] ; |322| 
        MOVZ      AR4,SP                ; |322| 
        SUBB      XAR4,#14              ; |322| 
        LCR       #FD$$TOL              ; |322| 
        ; call occurs [#FD$$TOL] ; |322| 
        CMPL      ACC,*+XAR1[0]         ; |322| 
        BF        L50,LEQ               ; |322| 
        ; branchcc occurs ; |322| 
;*** 322	-----------------------    *max_vel = (long)((long double)g_u32_VEL_targetval*128.0L);
;*** 322	-----------------------    goto g5;
	.dwpsn	"fastrun.c",322,60
        MOVZ      AR6,SP                ; |322| 
        MOVW      DP,#_g_u32_VEL_targetval
        MOVL      ACC,@_g_u32_VEL_targetval ; |322| 
        SUBB      XAR6,#18              ; |322| 
        LCR       #UL$$TOFD             ; |322| 
        ; call occurs [#UL$$TOFD] ; |322| 
        MOVZ      AR4,SP                ; |322| 
        MOVZ      AR6,SP                ; |322| 
        MOVL      XAR5,#FL2             ; |322| 
        SUBB      XAR4,#18              ; |322| 
        SUBB      XAR6,#14              ; |322| 
        LCR       #FD$$MPY              ; |322| 
        ; call occurs [#FD$$MPY] ; |322| 
        MOVZ      AR4,SP                ; |322| 
        SUBB      XAR4,#14              ; |322| 
        LCR       #FD$$TOL              ; |322| 
        ; call occurs [#FD$$TOL] ; |322| 
        MOVL      *+XAR1[0],ACC         ; |322| 
        BF        L50,UNC               ; |322| 
        ; branch occurs ; |322| 
L49:    
;***	-----------------------g4:
;*** 321	-----------------------    *max_vel = 576000L;
;***	-----------------------g5:
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",321,54
        MOVL      *+XAR1[0],XAR4        ; |321| 
L50:    
	.dwpsn	"fastrun.c",324,1
        SUBB      SP,#18
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$113, DW_AT_end_file("fastrun.c")
	.dwattr DW$113, DW_AT_end_line(0x144)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$113

	.sect	".text"

DW$129	.dwtag  DW_TAG_subprogram, DW_AT_name("straight_compute"), DW_AT_symbol_name("_straight_compute$0")
	.dwattr DW$129, DW_AT_low_pc(_straight_compute$0)
	.dwattr DW$129, DW_AT_high_pc(0x00)
	.dwattr DW$129, DW_AT_begin_file("fastrun.c")
	.dwattr DW$129, DW_AT_begin_line(0x9e)
	.dwattr DW$129, DW_AT_begin_column(0x0d)
	.dwpsn	"fastrun.c",159,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _straight_compute             FR SIZE:  26           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            6 Parameter, 14 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_straight_compute$0:
;*** 161	-----------------------    big_vel = 0L;
;*** 162	-----------------------    small_vel = 0L;
;*** 165	-----------------------    (mark > 0L) ? (S$2 = *((long * const)pinfo-6L)) : (S$2 = 0L);
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR2
	.dwcfa	0x80, 9, 4
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 6
	.dwcfa	0x1d, -8
        ADDB      SP,#20
	.dwcfa	0x1d, -28
;* AR4   assigned to _pinfo
DW$130	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$130, DW_AT_type(*DW$T$67)
	.dwattr DW$130, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _mark
DW$131	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mark"), DW_AT_symbol_name("_mark")
	.dwattr DW$131, DW_AT_type(*DW$T$22)
	.dwattr DW$131, DW_AT_location[DW_OP_reg0]
;* AL    assigned to C$3
DW$132	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$132, DW_AT_type(*DW$T$12)
	.dwattr DW$132, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to C$4
DW$133	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$133, DW_AT_type(*DW$T$12)
	.dwattr DW$133, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to C$5
DW$134	.dwtag  DW_TAG_variable, DW_AT_name("C$5"), DW_AT_symbol_name("C$5")
	.dwattr DW$134, DW_AT_type(*DW$T$12)
	.dwattr DW$134, DW_AT_location[DW_OP_reg18]
;* AR4   assigned to S$1
DW$135	.dwtag  DW_TAG_variable, DW_AT_name("S$1"), DW_AT_symbol_name("S$1")
	.dwattr DW$135, DW_AT_type(*DW$T$12)
	.dwattr DW$135, DW_AT_location[DW_OP_reg12]
;* AL    assigned to S$2
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("S$2"), DW_AT_symbol_name("S$2")
	.dwattr DW$136, DW_AT_type(*DW$T$12)
	.dwattr DW$136, DW_AT_location[DW_OP_reg0]
;* AR1   assigned to _pinfo
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$137, DW_AT_type(*DW$T$103)
	.dwattr DW$137, DW_AT_location[DW_OP_reg6]
DW$138	.dwtag  DW_TAG_variable, DW_AT_name("mark"), DW_AT_symbol_name("_mark")
	.dwattr DW$138, DW_AT_type(*DW$T$86)
	.dwattr DW$138, DW_AT_location[DW_OP_breg20 -20]
;* AR6   assigned to v$1
DW$139	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$139, DW_AT_type(*DW$T$12)
	.dwattr DW$139, DW_AT_location[DW_OP_reg16]
;* AR2   assigned to v$2
DW$140	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$140, DW_AT_type(*DW$T$12)
	.dwattr DW$140, DW_AT_location[DW_OP_reg8]
;* AR3   assigned to v$3
DW$141	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$141, DW_AT_type(*DW$T$12)
	.dwattr DW$141, DW_AT_location[DW_OP_reg10]
;* AR4   assigned to v$4
DW$142	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$142, DW_AT_type(*DW$T$12)
	.dwattr DW$142, DW_AT_location[DW_OP_reg12]
;* AR2   assigned to v$5
DW$143	.dwtag  DW_TAG_variable, DW_AT_name("v$5"), DW_AT_symbol_name("v$5")
	.dwattr DW$143, DW_AT_type(*DW$T$12)
	.dwattr DW$143, DW_AT_location[DW_OP_reg8]
;* AR4   assigned to v$6
DW$144	.dwtag  DW_TAG_variable, DW_AT_name("v$6"), DW_AT_symbol_name("v$6")
	.dwattr DW$144, DW_AT_type(*DW$T$12)
	.dwattr DW$144, DW_AT_location[DW_OP_reg12]
;* AR6   assigned to v$7
DW$145	.dwtag  DW_TAG_variable, DW_AT_name("v$7"), DW_AT_symbol_name("v$7")
	.dwattr DW$145, DW_AT_type(*DW$T$12)
	.dwattr DW$145, DW_AT_location[DW_OP_reg16]
DW$146	.dwtag  DW_TAG_variable, DW_AT_name("big_vel"), DW_AT_symbol_name("_big_vel")
	.dwattr DW$146, DW_AT_type(*DW$T$72)
	.dwattr DW$146, DW_AT_location[DW_OP_breg20 -8]
DW$147	.dwtag  DW_TAG_variable, DW_AT_name("small_vel"), DW_AT_symbol_name("_small_vel")
	.dwattr DW$147, DW_AT_type(*DW$T$72)
	.dwattr DW$147, DW_AT_location[DW_OP_breg20 -10]
        MOVL      *-SP[20],ACC          ; |159| 
        MOVL      XAR1,XAR4             ; |159| 
	.dwpsn	"fastrun.c",161,16
        MOVB      ACC,#0
        MOVL      *-SP[8],ACC           ; |161| 
	.dwpsn	"fastrun.c",162,16
        MOVL      *-SP[10],ACC          ; |162| 
	.dwpsn	"fastrun.c",165,2
        MOVL      ACC,*-SP[20]
        BF        L51,LEQ               ; |165| 
        ; branchcc occurs ; |165| 
        MOVL      XAR4,XAR1             ; |165| 
        SUBB      XAR4,#6               ; |165| 
        MOVL      ACC,*+XAR4[0]         ; |165| 
        BF        L52,UNC               ; |165| 
        ; branch occurs ; |165| 
L51:    
        MOVB      ACC,#0
L52:    
;*** 165	-----------------------    (*pinfo).iq7in_vel = v$2 = S$2;
;*** 167	-----------------------    if ( (*pinfo).int32turn_dir&0x8L ) goto g5;
        MOVB      XAR0,#16              ; |165| 
        MOVL      *+XAR1[AR0],ACC       ; |165| 
        MOVL      XAR2,ACC              ; |165| 
	.dwpsn	"fastrun.c",167,2
        MOVB      XAR0,#10              ; |167| 
        MOVL      ACC,*+XAR1[AR0]       ; |167| 
        ANDB      AL,#0x08              ; |167| 
        MOVB      AH,#0
        TEST      ACC                   ; |167| 
        BF        L54,NEQ               ; |167| 
        ; branchcc occurs ; |167| 
;*** 169	-----------------------    turn_division_compute(pinfo+26L, mark+1L);
;*** 170	-----------------------    (*pinfo).iq7out_vel = v$1 = *((long * const)pinfo+42L);
;*** 173	-----------------------    if ( (C$5 = (*pinfo).int32dist) > 2000L ) goto g4;
	.dwpsn	"fastrun.c",169,3
        MOVB      ACC,#26
        MOVL      XAR6,*-SP[20]         ; |169| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |169| 
        MOVB      ACC,#1
        ADDL      ACC,XAR6
        LCR       #_turn_division_compute$0 ; |169| 
        ; call occurs [#_turn_division_compute$0] ; |169| 
	.dwpsn	"fastrun.c",170,3
        MOVB      XAR0,#42              ; |170| 
        MOVL      XAR6,*+XAR1[AR0]      ; |170| 
        MOVB      XAR0,#20              ; |170| 
        MOVL      *+XAR1[AR0],XAR6      ; |170| 
	.dwpsn	"fastrun.c",173,2
        MOVL      XAR7,*+XAR1[0]        ; |173| 
        MOV       ACC,#2000             ; |173| 
        CMPL      ACC,XAR7              ; |173| 
        BF        L53,LT                ; |173| 
        ; branchcc occurs ; |173| 
;***  	-----------------------    v$2 = (*pinfo).iq7in_vel;
;***  	-----------------------    if ( C$5 <= 1000L ) goto g7;
        MOVB      XAR0,#16
        MOV       ACC,#1000
        MOVL      XAR2,*+XAR1[AR0]
        CMPL      ACC,XAR7
        BF        L55,GEQ
        ; branchcc occurs
;***  	-----------------------    goto g8;
        BF        L56,UNC
        ; branch occurs
L53:    
;***	-----------------------g4:
;***  	-----------------------    v$2 = (*pinfo).iq7in_vel;
;***  	-----------------------    goto g9;
        MOVB      XAR0,#16
        MOVL      XAR2,*+XAR1[AR0]
        BF        L57,UNC
        ; branch occurs
L54:    
;***	-----------------------g5:
;*** 176	-----------------------    g_u32_END_VEL_targetval;
;*** 177	-----------------------    *((long * const)pinfo+42L) = (*pinfo).iq7out_vel = v$1 = (long)((long double)g_u32_END_VEL_targetval*128.0L);
;*** 177	-----------------------    if ( (C$4 = (*pinfo).int32dist) > 2000L ) goto g9;
	.dwpsn	"fastrun.c",176,3
        MOVW      DP,#_g_u32_END_VEL_targetval
        MOVL      ACC,@_g_u32_END_VEL_targetval ; |176| 
	.dwpsn	"fastrun.c",177,3
        MOVZ      AR6,SP                ; |177| 
        SUBB      XAR6,#18              ; |177| 
        MOVL      ACC,@_g_u32_END_VEL_targetval ; |177| 
        LCR       #UL$$TOFD             ; |177| 
        ; call occurs [#UL$$TOFD] ; |177| 
        MOVZ      AR4,SP                ; |177| 
        MOVZ      AR6,SP                ; |177| 
        MOVL      XAR5,#FL2             ; |177| 
        SUBB      XAR4,#18              ; |177| 
        SUBB      XAR6,#14              ; |177| 
        LCR       #FD$$MPY              ; |177| 
        ; call occurs [#FD$$MPY] ; |177| 
        MOVZ      AR4,SP                ; |177| 
        SUBB      XAR4,#14              ; |177| 
        LCR       #FD$$TOL              ; |177| 
        ; call occurs [#FD$$TOL] ; |177| 
        MOVB      XAR0,#20              ; |177| 
        MOVL      *+XAR1[AR0],ACC       ; |177| 
        MOVB      XAR0,#42              ; |177| 
        MOVL      *+XAR1[AR0],ACC       ; |177| 
        MOVL      XAR7,*+XAR1[0]        ; |177| 
        MOVL      XAR6,ACC              ; |177| 
        MOV       ACC,#2000             ; |177| 
        CMPL      ACC,XAR7              ; |177| 
        BF        L57,LT                ; |177| 
        ; branchcc occurs ; |177| 
;*** 189	-----------------------    if ( C$4 > 1000L ) goto g8;
	.dwpsn	"fastrun.c",189,10
        MOV       ACC,#1000             ; |189| 
        CMPL      ACC,XAR7              ; |189| 
        BF        L56,LT                ; |189| 
        ; branchcc occurs ; |189| 
L55:    
;***	-----------------------g7:
;*** 191	-----------------------    v$6 = v$4 = g_int32short_ACC;
;*** 191	-----------------------    goto g11;
	.dwpsn	"fastrun.c",191,10
        MOVW      DP,#_g_int32short_ACC
        MOVL      XAR4,@_g_int32short_ACC ; |191| 
        BF        L58,UNC               ; |191| 
        ; branch occurs ; |191| 
L56:    
;***	-----------------------g8:
;*** 189	-----------------------    v$6 = v$4 = g_int32mid_ACC;
;*** 189	-----------------------    goto g11;
	.dwpsn	"fastrun.c",189,45
        MOVW      DP,#_g_int32mid_ACC
        MOVL      XAR4,@_g_int32mid_ACC ; |189| 
        BF        L58,UNC               ; |189| 
        ; branch occurs ; |189| 
L57:    
;***	-----------------------g9:
;*** 183	-----------------------    v$6 = v$4 = g_int32long_ACC;
;*** 185	-----------------------    if ( ((*pinfo).int32turn_dir&0x8L) == 0L ) goto g11;
	.dwpsn	"fastrun.c",183,13
        MOVW      DP,#_g_int32long_ACC
        MOVL      XAR4,@_g_int32long_ACC ; |183| 
	.dwpsn	"fastrun.c",185,13
        MOVB      XAR0,#10              ; |185| 
        MOVL      ACC,*+XAR1[AR0]       ; |185| 
        ANDB      AL,#0x08              ; |185| 
        MOVB      AH,#0
        TEST      ACC                   ; |185| 
        BF        L58,EQ                ; |185| 
        ; branchcc occurs ; |185| 
;*** 186	-----------------------    S$1 = __lmin(3000L, v$4);
;*** 186	-----------------------    v$6 = v$4 = S$1;
	.dwpsn	"fastrun.c",186,17
        MOV       ACC,#3000             ; |186| 
        MINL      ACC,XAR4              ; |186| 
        MOVL      XAR4,ACC              ; |186| 
L58:    
;***	-----------------------g11:
;*** 202	-----------------------    (*pinfo).int32accel = (mark != 0L || v$4 <= 5500L) ? ((((*pinfo).int32turn_dir&0x8L) != 0L) ? (v$4 = 3000L) : v$6) : (v$4 = 5000L);
	.dwpsn	"fastrun.c",202,2
        MOVL      ACC,*-SP[20]
        BF        L59,NEQ               ; |202| 
        ; branchcc occurs ; |202| 
        MOV       ACC,#5500             ; |202| 
        CMPL      ACC,XAR4              ; |202| 
        BF        L61,LT                ; |202| 
        ; branchcc occurs ; |202| 
L59:    
        MOVB      XAR0,#10              ; |202| 
        MOVL      ACC,*+XAR1[AR0]       ; |202| 
        ANDB      AL,#0x08              ; |202| 
        MOVB      AH,#0
        TEST      ACC                   ; |202| 
        BF        L60,EQ                ; |202| 
        ; branchcc occurs ; |202| 
        MOVL      XAR4,#3000            ; |202| 
        MOVL      ACC,XAR4              ; |202| 
        BF        L62,UNC               ; |202| 
        ; branch occurs ; |202| 
L60:    
        MOVL      ACC,XAR4              ; |202| 
        BF        L62,UNC               ; |202| 
        ; branch occurs ; |202| 
L61:    
        MOVL      XAR4,#5000            ; |202| 
        MOVL      ACC,XAR4              ; |202| 
L62:    
;*** 205	-----------------------    big_vel = __lmax(v$2, v$1);
;*** 208	-----------------------    small_vel = __lmin(v$1, v$2);
;*** 210	-----------------------    decel_dist_compute(v$2, v$1, v$4, (long * const)pinfo+24L);
;*** 212	-----------------------    v$3 = (*pinfo).int32dist;
;*** 212	-----------------------    v$5 = (*pinfo).iq7m_dist;
;*** 212	-----------------------    C$3 = (long)((long double)v$3*128.0L);
;*** 212	-----------------------    if ( v$5 < C$3 ) goto g17;
        MOVB      XAR0,#14              ; |202| 
        MOVL      *+XAR1[AR0],ACC       ; |202| 
	.dwpsn	"fastrun.c",205,3
        MOVL      ACC,XAR6              ; |205| 
        MAXL      ACC,XAR2              ; |205| 
        MOVL      *-SP[8],ACC           ; |205| 
	.dwpsn	"fastrun.c",208,2
        MOVL      ACC,XAR2              ; |208| 
        MINL      ACC,XAR6              ; |208| 
        MOVL      *-SP[10],ACC          ; |208| 
	.dwpsn	"fastrun.c",210,2
        MOVL      *-SP[2],XAR6          ; |210| 
        MOVB      ACC,#24
        MOVL      *-SP[4],XAR4          ; |210| 
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |210| 
        MOVL      ACC,XAR2              ; |210| 
        LCR       #_decel_dist_compute  ; |210| 
        ; call occurs [#_decel_dist_compute] ; |210| 
	.dwpsn	"fastrun.c",212,2
        MOVZ      AR6,SP                ; |212| 
        MOVL      XAR3,*+XAR1[0]        ; |212| 
        MOVB      XAR0,#24              ; |212| 
        SUBB      XAR6,#18              ; |212| 
        MOVL      XAR2,*+XAR1[AR0]      ; |212| 
        MOVL      ACC,XAR3              ; |212| 
        LCR       #L$$TOFD              ; |212| 
        ; call occurs [#L$$TOFD] ; |212| 
        MOVZ      AR6,SP                ; |212| 
        MOVZ      AR4,SP                ; |212| 
        MOVL      XAR5,#FL2             ; |212| 
        SUBB      XAR6,#14              ; |212| 
        SUBB      XAR4,#18              ; |212| 
        LCR       #FD$$MPY              ; |212| 
        ; call occurs [#FD$$MPY] ; |212| 
        MOVZ      AR4,SP                ; |212| 
        SUBB      XAR4,#14              ; |212| 
        LCR       #FD$$TOL              ; |212| 
        ; call occurs [#FD$$TOL] ; |212| 
        CMPL      ACC,XAR2              ; |212| 
        BF        L66,GT                ; |212| 
        ; branchcc occurs ; |212| 
;*** 214	-----------------------    (*pinfo).iq7dec_dist = C$3;
;*** 215	-----------------------    max_vel_compute(C$3, 0L, small_vel, (*pinfo).int32accel, (long * const)pinfo+18L);
;*** 217	-----------------------    if ( (*pinfo).iq7in_vel > (*pinfo).iq7out_vel ) goto g14;
	.dwpsn	"fastrun.c",214,3
        MOVB      XAR0,#22              ; |214| 
        MOVL      *+XAR1[AR0],ACC       ; |214| 
	.dwpsn	"fastrun.c",215,3
        MOVB      XAR6,#0
        MOVL      *-SP[2],XAR6          ; |215| 
        MOVL      XAR6,*-SP[10]         ; |215| 
        MOVB      XAR0,#14              ; |215| 
        MOV       PH,#0
        MOVL      *-SP[4],XAR6          ; |215| 
        MOVL      XAR6,*+XAR1[AR0]      ; |215| 
        MOV       PL,#18
        ADDUL     P,XAR1
        MOVL      XAR4,P                ; |215| 
        MOVL      *-SP[6],XAR6          ; |215| 
        LCR       #_max_vel_compute     ; |215| 
        ; call occurs [#_max_vel_compute] ; |215| 
	.dwpsn	"fastrun.c",217,3
        MOVB      XAR0,#20              ; |217| 
        MOVL      ACC,*+XAR1[AR0]       ; |217| 
        MOVB      XAR0,#16              ; |217| 
        CMPL      ACC,*+XAR1[AR0]       ; |217| 
        BF        L63,LT                ; |217| 
        ; branchcc occurs ; |217| 
;*** 218	-----------------------    (*pinfo).iq7out_vel = (*pinfo).iq7vel;
;*** 218	-----------------------    if ( mark == 0L ) goto g15;
	.dwpsn	"fastrun.c",218,17
        MOVB      XAR0,#18              ; |218| 
        MOVL      ACC,*+XAR1[AR0]       ; |218| 
        MOVB      XAR0,#20              ; |218| 
        MOVL      *+XAR1[AR0],ACC       ; |218| 
        MOVL      ACC,*-SP[20]
        BF        L64,EQ                ; |218| 
        ; branchcc occurs ; |218| 
;*** 218	-----------------------    goto g18;
        BF        L67,UNC               ; |218| 
        ; branch occurs ; |218| 
L63:    
;***	-----------------------g14:
;*** 217	-----------------------    v$7 = (*pinfo).iq7vel;
;*** 217	-----------------------    if ( mark ) goto g16;
	.dwpsn	"fastrun.c",217,46
        MOVB      XAR0,#18              ; |217| 
        MOVL      ACC,*-SP[20]
        MOVL      XAR6,*+XAR1[AR0]      ; |217| 
        BF        L65,NEQ               ; |217| 
        ; branchcc occurs ; |217| 
L64:    
;***	-----------------------g15:
;*** 221	-----------------------    (*pinfo).iq7in_vel = 0L;
;*** 221	-----------------------    goto g18;
	.dwpsn	"fastrun.c",221,4
        MOVB      ACC,#0
        MOVB      XAR0,#16              ; |221| 
        MOVL      *+XAR1[AR0],ACC       ; |221| 
        BF        L67,UNC               ; |221| 
        ; branch occurs ; |221| 
L65:    
;***	-----------------------g16:
;***  	-----------------------    (*pinfo).iq7in_vel = v$7;
;***  	-----------------------    goto g18;
        MOVB      XAR0,#16
        MOVL      *+XAR1[AR0],XAR6
        BF        L67,UNC
        ; branch occurs
L66:    
;***	-----------------------g17:
;*** 225	-----------------------    max_vel_compute((long)((long double)v$3*128.0L), v$5, big_vel, (*pinfo).int32accel, (long * const)pinfo+18L);
;*** 226	-----------------------    decel_dist_compute((*pinfo).iq7vel, (*pinfo).iq7out_vel, (*pinfo).int32accel, (long * const)pinfo+22L);
;***	-----------------------g18:
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",225,3
        MOVZ      AR6,SP                ; |225| 
        MOVL      ACC,XAR3              ; |225| 
        SUBB      XAR6,#18              ; |225| 
        LCR       #L$$TOFD              ; |225| 
        ; call occurs [#L$$TOFD] ; |225| 
        MOVZ      AR4,SP                ; |225| 
        MOVZ      AR6,SP                ; |225| 
        MOVL      XAR5,#FL2             ; |225| 
        SUBB      XAR4,#18              ; |225| 
        SUBB      XAR6,#14              ; |225| 
        LCR       #FD$$MPY              ; |225| 
        ; call occurs [#FD$$MPY] ; |225| 
        MOVZ      AR4,SP                ; |225| 
        SUBB      XAR4,#14              ; |225| 
        LCR       #FD$$TOL              ; |225| 
        ; call occurs [#FD$$TOL] ; |225| 
        MOVL      *-SP[2],XAR2          ; |225| 
        MOVL      XAR6,ACC              ; |225| 
        MOVL      ACC,*-SP[8]           ; |225| 
        MOVB      XAR0,#14              ; |225| 
        MOVL      *-SP[4],ACC           ; |225| 
        MOVL      ACC,*+XAR1[AR0]       ; |225| 
        MOVL      *-SP[6],ACC           ; |225| 
        MOVB      ACC,#18
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |225| 
        MOVL      ACC,XAR6              ; |225| 
        LCR       #_max_vel_compute     ; |225| 
        ; call occurs [#_max_vel_compute] ; |225| 
	.dwpsn	"fastrun.c",226,3
        MOVB      XAR0,#20              ; |226| 
        MOVL      ACC,*+XAR1[AR0]       ; |226| 
        MOVB      XAR0,#14              ; |226| 
        MOVL      *-SP[2],ACC           ; |226| 
        MOVL      ACC,*+XAR1[AR0]       ; |226| 
        MOVL      *-SP[4],ACC           ; |226| 
        MOVB      ACC,#22
        ADDL      ACC,XAR1
        MOVL      XAR4,ACC              ; |226| 
        MOVB      XAR0,#18              ; |226| 
        MOVL      ACC,*+XAR1[AR0]       ; |226| 
        LCR       #_decel_dist_compute  ; |226| 
        ; call occurs [#_decel_dist_compute] ; |226| 
L67:    
	.dwpsn	"fastrun.c",231,1
        SUBB      SP,#20
	.dwcfa	0x1d, -8
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 11
        MOVL      XAR2,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 9
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$129, DW_AT_end_file("fastrun.c")
	.dwattr DW$129, DW_AT_end_line(0xe7)
	.dwattr DW$129, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$129

	.sect	".text"

DW$148	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_division_compute"), DW_AT_symbol_name("_turn_division_compute$0")
	.dwattr DW$148, DW_AT_low_pc(_turn_division_compute$0)
	.dwattr DW$148, DW_AT_high_pc(0x00)
	.dwattr DW$148, DW_AT_begin_file("fastrun.c")
	.dwattr DW$148, DW_AT_begin_line(0x6c)
	.dwattr DW$148, DW_AT_begin_column(0x0d)
	.dwpsn	"fastrun.c",109,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _turn_division_compute        FR SIZE:   0           *
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
_turn_division_compute$0:
;*** 110	-----------------------    C$1 = (*pinfo).int32turn_dir;
;*** 110	-----------------------    if ( (int)((long)((unsigned)C$1^0xffffu)&1L) == 0 || (C$1&0x8L) != 0L ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _pinfo
DW$149	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$149, DW_AT_type(*DW$T$67)
	.dwattr DW$149, DW_AT_location[DW_OP_reg12]
;* AL    assigned to _mark
DW$150	.dwtag  DW_TAG_formal_parameter, DW_AT_name("mark"), DW_AT_symbol_name("_mark")
	.dwattr DW$150, DW_AT_type(*DW$T$22)
	.dwattr DW$150, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to C$1
DW$151	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$151, DW_AT_type(*DW$T$12)
	.dwattr DW$151, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to _mark
DW$152	.dwtag  DW_TAG_variable, DW_AT_name("mark"), DW_AT_symbol_name("_mark")
	.dwattr DW$152, DW_AT_type(*DW$T$86)
	.dwattr DW$152, DW_AT_location[DW_OP_reg16]
;* AR4   assigned to _pinfo
DW$153	.dwtag  DW_TAG_variable, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$153, DW_AT_type(*DW$T$103)
	.dwattr DW$153, DW_AT_location[DW_OP_reg12]
        MOVL      XAR6,ACC              ; |109| 
	.dwpsn	"fastrun.c",110,2
        MOVB      XAR0,#10              ; |110| 
        MOVL      XAR7,*+XAR4[AR0]      ; |110| 
        MOV       PL,AR7                ; |110| 
        XOR       PL,#0xffff            ; |110| 
        MOVB      ACC,#1
        AND       ACC,PL                ; |110| 
        BF        L68,EQ                ; |110| 
        ; branchcc occurs ; |110| 
        MOVL      ACC,XAR7              ; |110| 
        ANDB      AL,#0x08              ; |110| 
        MOVB      AH,#0
        TEST      ACC                   ; |110| 
        BF        L68,NEQ               ; |110| 
        ; branchcc occurs ; |110| 
;*** 112	-----------------------    default_turn_compute(pinfo, mark);
;*** 112	-----------------------    goto g4;
	.dwpsn	"fastrun.c",112,25
        LCR       #_default_turn_compute$0 ; |112| 
        ; call occurs [#_default_turn_compute$0] ; |112| 
        BF        L69,UNC               ; |112| 
        ; branch occurs ; |112| 
L68:    
;***	-----------------------g3:
;*** 110	-----------------------    straight_compute(pinfo, mark);
;***	-----------------------g4:
;***  	-----------------------    return;
	.dwpsn	"fastrun.c",110,79
        MOVL      ACC,XAR6              ; |110| 
        LCR       #_straight_compute$0  ; |110| 
        ; call occurs [#_straight_compute$0] ; |110| 
L69:    
	.dwpsn	"fastrun.c",113,1
        LRETR
        ; return occurs
	.dwattr DW$148, DW_AT_end_file("fastrun.c")
	.dwattr DW$148, DW_AT_end_line(0x71)
	.dwattr DW$148, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$148

	.sect	".text"
	.global	_fast_race

DW$154	.dwtag  DW_TAG_subprogram, DW_AT_name("fast_race"), DW_AT_symbol_name("_fast_race")
	.dwattr DW$154, DW_AT_low_pc(_fast_race)
	.dwattr DW$154, DW_AT_high_pc(0x00)
	.dwattr DW$154, DW_AT_begin_file("fastrun.c")
	.dwattr DW$154, DW_AT_begin_line(0x1b)
	.dwattr DW$154, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",28,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _fast_race                    FR SIZE:  22           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  8 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_fast_race:
;*** 30	-----------------------    DSP28x_usDelay(1999998uL);
;*** 31	-----------------------    read_line_info_rom();
;*** 33	-----------------------    turn_info_func();
;*** 83	-----------------------    g_int32total_cnt;  // [16]
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
;***  	-----------------------    K$7 = &search_info[0];
;*** 83	-----------------------    i = 0L;  // [16]
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR2
	.dwcfa	0x80, 9, 4
	.dwcfa	0x1d, -6
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 6
	.dwcfa	0x1d, -8
        ADDB      SP,#16
	.dwcfa	0x1d, -24
;* AR4   assigned to _pinfo
DW$155	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$155, DW_AT_type(*DW$T$67)
	.dwattr DW$155, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$3
DW$156	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$156, DW_AT_type(*DW$T$111)
	.dwattr DW$156, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to C$4
DW$157	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$157, DW_AT_type(*DW$T$111)
	.dwattr DW$157, DW_AT_location[DW_OP_reg12]
;* AR2   assigned to v$1
DW$158	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$158, DW_AT_type(*DW$T$12)
	.dwattr DW$158, DW_AT_location[DW_OP_reg8]
;* AR2   assigned to _i
DW$159	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$159, DW_AT_type(*DW$T$22)
	.dwattr DW$159, DW_AT_location[DW_OP_reg8]
;* AR1   assigned to _pinfo
DW$160	.dwtag  DW_TAG_variable, DW_AT_name("pinfo"), DW_AT_symbol_name("_pinfo")
	.dwattr DW$160, DW_AT_type(*DW$T$103)
	.dwattr DW$160, DW_AT_location[DW_OP_reg6]
;* AR2   assigned to K$50
DW$161	.dwtag  DW_TAG_variable, DW_AT_name("K$50"), DW_AT_symbol_name("K$50")
	.dwattr DW$161, DW_AT_type(*DW$T$102)
	.dwattr DW$161, DW_AT_location[DW_OP_reg8]
;* AR3   assigned to K$49
DW$162	.dwtag  DW_TAG_variable, DW_AT_name("K$49"), DW_AT_symbol_name("K$49")
	.dwattr DW$162, DW_AT_type(*DW$T$102)
	.dwattr DW$162, DW_AT_location[DW_OP_reg10]
;* AR5   assigned to K$44
DW$163	.dwtag  DW_TAG_variable, DW_AT_name("K$44"), DW_AT_symbol_name("K$44")
	.dwattr DW$163, DW_AT_type(*DW$T$122)
	.dwattr DW$163, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to K$40
DW$164	.dwtag  DW_TAG_variable, DW_AT_name("K$40"), DW_AT_symbol_name("K$40")
	.dwattr DW$164, DW_AT_type(*DW$T$122)
	.dwattr DW$164, DW_AT_location[DW_OP_reg12]
;* AR3   assigned to K$7
DW$165	.dwtag  DW_TAG_variable, DW_AT_name("K$7"), DW_AT_symbol_name("K$7")
	.dwattr DW$165, DW_AT_type(*DW$T$106)
	.dwattr DW$165, DW_AT_location[DW_OP_reg10]
        MOVL      XAR1,XAR4             ; |28| 
	.dwpsn	"fastrun.c",30,5
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |30| 
        ; call occurs [#_DSP28x_usDelay] ; |30| 
	.dwpsn	"fastrun.c",31,2
        LCR       #_read_line_info_rom  ; |31| 
        ; call occurs [#_read_line_info_rom] ; |31| 
	.dwpsn	"fastrun.c",33,2
        LCR       #_turn_info_func      ; |33| 
        ; call occurs [#_turn_info_func] ; |33| 
	.dwpsn	"fastrun.c",83,15
        MOVL      ACC,@_g_int32total_cnt ; |83| 
        MOVL      XAR3,#_search_info
	.dwpsn	"fastrun.c",83,7
        MOVB      XAR2,#0
L70:    
DW$L$_fast_race$2$B:
;***	-----------------------g2:
;*** 85	-----------------------    turn_division_compute(i*26+K$7, i);  // [16]
;*** 83	-----------------------    if ( (unsigned long)(++i) <= g_int32total_cnt ) goto g2;  // [16]
	.dwpsn	"fastrun.c",85,3
        MOVB      ACC,#26
        MOVL      XT,ACC                ; |85| 
        IMPYL     P,XT,XAR2             ; |85| 
        MOVL      ACC,XAR3              ; |85| 
        ADDL      ACC,P
        MOVL      XAR4,ACC              ; |85| 
        MOVL      ACC,XAR2              ; |85| 
        LCR       #_turn_division_compute$0 ; |85| 
        ; call occurs [#_turn_division_compute$0] ; |85| 
	.dwpsn	"fastrun.c",83,15
        MOVL      ACC,XAR2
        MOVW      DP,#_g_int32total_cnt
        ADDB      ACC,#1                ; |83| 
        CMPL      ACC,@_g_int32total_cnt ; |83| 
        MOVL      XAR2,ACC              ; |83| 
        BF        L70,LOS               ; |83| 
        ; branchcc occurs ; |83| 
DW$L$_fast_race$2$E:
;*** 36	-----------------------    Race_Init();
;*** 37	-----------------------    VFDPrintf("        ");
;*** 39	-----------------------    *&g_Flag |= 0x2000u;
;*** 41	-----------------------    (*pinfo).int32accel = v$1 = g_u32_ACC_targetval;
;*** 43	-----------------------    move_to_move((long)((long double)(*pinfo).int32dist*1.31072e5L), (*pinfo).iq7dec_dist<<10, (*pinfo).iq7vel<<10, (*pinfo).iq7out_vel<<10, v$1);
;*** 45	-----------------------    *&g_Flag |= 1u;
;*** 46	-----------------------    *&g_Flag |= 2u;
;*** 47	-----------------------    C$4 = &GpioDataRegs;
;*** 47	-----------------------    ((volatile unsigned *)C$4)[10];
;*** 47	-----------------------    *(&GpioDataRegs+10L) = *(&GpioDataRegs+10L)|2u;
;*** 47	-----------------------    *(&GpioDataRegs+3L) = *((volatile struct _GPADAT_BITS *)C$4+3L)|0x8000u;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;***  	-----------------------    goto g5;
	.dwpsn	"fastrun.c",36,2
        LCR       #_Race_Init           ; |36| 
        ; call occurs [#_Race_Init] ; |36| 
	.dwpsn	"fastrun.c",37,2
        MOVL      XAR4,#FSL1            ; |37| 
        MOVL      *-SP[2],XAR4          ; |37| 
        LCR       #_VFDPrintf           ; |37| 
        ; call occurs [#_VFDPrintf] ; |37| 
	.dwpsn	"fastrun.c",39,2
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x2000      ; |39| 
	.dwpsn	"fastrun.c",41,2
        MOVW      DP,#_g_u32_ACC_targetval
        MOVL      XAR2,@_g_u32_ACC_targetval ; |41| 
        MOVB      XAR0,#14              ; |41| 
        MOVL      *+XAR1[AR0],XAR2      ; |41| 
	.dwpsn	"fastrun.c",43,5
        MOVZ      AR6,SP                ; |43| 
        SUBB      XAR6,#16              ; |43| 
        MOVL      ACC,*+XAR1[0]         ; |43| 
        LCR       #L$$TOFD              ; |43| 
        ; call occurs [#L$$TOFD] ; |43| 
        MOVZ      AR6,SP                ; |43| 
        MOVZ      AR4,SP                ; |43| 
        SUBB      XAR6,#12              ; |43| 
        MOVL      XAR5,#FL1             ; |43| 
        SUBB      XAR4,#16              ; |43| 
        LCR       #FD$$MPY              ; |43| 
        ; call occurs [#FD$$MPY] ; |43| 
        MOVZ      AR4,SP                ; |43| 
        SUBB      XAR4,#12              ; |43| 
        LCR       #FD$$TOL              ; |43| 
        ; call occurs [#FD$$TOL] ; |43| 
        MOVB      XAR0,#22              ; |43| 
        MOVL      XAR6,ACC              ; |43| 
        MOVL      ACC,*+XAR1[AR0]       ; |43| 
        LSL       ACC,10                ; |43| 
        MOVB      XAR0,#18              ; |43| 
        MOVL      *-SP[2],ACC           ; |43| 
        MOVL      ACC,*+XAR1[AR0]       ; |43| 
        LSL       ACC,10                ; |43| 
        MOVB      XAR0,#20              ; |43| 
        MOVL      *-SP[4],ACC           ; |43| 
        MOVL      ACC,*+XAR1[AR0]       ; |43| 
        LSL       ACC,10                ; |43| 
        MOVL      *-SP[6],ACC           ; |43| 
        MOVL      *-SP[8],XAR2          ; |43| 
        MOVL      ACC,XAR6              ; |43| 
        LCR       #_move_to_move        ; |43| 
        ; call occurs [#_move_to_move] ; |43| 
	.dwpsn	"fastrun.c",45,2
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0001      ; |45| 
	.dwpsn	"fastrun.c",46,2
        OR        @_g_Flag,#0x0002      ; |46| 
	.dwpsn	"fastrun.c",47,2
        MOVB      XAR0,#10              ; |47| 
        MOVL      XAR4,#_GpioDataRegs   ; |47| 
        MOVW      DP,#_GpioDataRegs+10
        MOV       AL,*+XAR4[AR0]        ; |47| 
        OR        @_GpioDataRegs+10,#0x0002 ; |47| 
        MOV       AL,*+XAR4[3]          ; |47| 
        OR        AL,#0x8000            ; |47| 
        MOVL      XAR3,#_g_rmark        ; |57| 
        MOV       @_GpioDataRegs+3,AL   ; |47| 
        BF        L72,UNC
        ; branch occurs
L71:    
DW$L$_fast_race$4$B:
;***	-----------------------g4:
;*** 71	-----------------------    speed_up_compute(pinfo);
;*** 73	-----------------------    g_int32_isr_cnt = 0uL;
;***	-----------------------g5:
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	"fastrun.c",71,4
        MOVL      XAR4,XAR1             ; |71| 
        LCR       #_speed_up_compute    ; |71| 
        ; call occurs [#_speed_up_compute] ; |71| 
	.dwpsn	"fastrun.c",73,4
        MOVW      DP,#_g_int32_isr_cnt
        MOVB      ACC,#0
        MOVL      @_g_int32_isr_cnt,ACC ; |73| 
DW$L$_fast_race$4$E:
L72:    
DW$L$_fast_race$5$B:
;***	-----------------------g6:
;*** 52	-----------------------    make_position();
;*** 53	-----------------------    Handle();
;*** 55	-----------------------    if ( !(*&g_Flag&2u) ) goto g9;
	.dwpsn	"fastrun.c",52,3
        LCR       #_make_position       ; |52| 
        ; call occurs [#_make_position] ; |52| 
	.dwpsn	"fastrun.c",53,3
        LCR       #_Handle              ; |53| 
        ; call occurs [#_Handle] ; |53| 
	.dwpsn	"fastrun.c",55,3
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#1           ; |55| 
        BF        L73,NTC               ; |55| 
        ; branchcc occurs ; |55| 
DW$L$_fast_race$5$E:
DW$L$_fast_race$6$B:
;*** 57	-----------------------    K$50 = &g_lmark;
;*** 57	-----------------------    K$49 = &g_rmark;
;*** 57	-----------------------    K$40 = &RMotor;
;*** 57	-----------------------    K$44 = &LMotor;
;*** 57	-----------------------    (*K$50).iq17turnmark_dist = (*K$49).iq17turnmark_dist = __IQmpy((*K$40).iq17Turnmark_Check_Dist+(*K$44).iq17Turnmark_Check_Dist, 65536L, 17);
;*** 58	-----------------------    g_q15cross_dist = __IQmpy((*K$40).iq15Cross_Check_Dist+(*K$44).iq15Cross_Check_Dist, 16384L, 15);
;*** 60	-----------------------    turn_decide(K$50, K$49);
;*** 61	-----------------------    turn_decide(K$49, K$50);
;*** 63	-----------------------    if ( (*pinfo).int32turn_way != 1L ) goto g9;
	.dwpsn	"fastrun.c",57,4
        MOVL      XAR4,#_g_lmark        ; |57| 
        MOVB      XAR0,#26              ; |57| 
        MOVL      XAR5,#_LMotor         ; |57| 
        MOVL      XAR6,#65536           ; |57| 
        MOVL      XAR2,XAR4             ; |57| 
        MOVL      ACC,*+XAR5[AR0]       ; |57| 
        MOVL      XAR4,#_RMotor         ; |57| 
        ADDL      ACC,*+XAR4[AR0]       ; |57| 
        MOVL      XT,ACC                ; |57| 
        IMPYL     P,XT,XAR6             ; |57| 
        MOVL      XT,ACC                ; |57| 
        QMPYL     ACC,XT,XAR6           ; |57| 
        LSL64     ACC:P,#15             ; |57| 
        MOVL      *+XAR3[0],ACC         ; |57| 
        MOVL      *+XAR2[0],ACC         ; |57| 
	.dwpsn	"fastrun.c",58,4
        MOVB      XAR0,#30              ; |58| 
        MOVL      ACC,*+XAR5[AR0]       ; |58| 
        ADDL      ACC,*+XAR4[AR0]       ; |58| 
        MOVL      XAR4,#16384           ; |58| 
        MOVL      XT,ACC                ; |58| 
        IMPYL     P,XT,XAR4             ; |58| 
        MOVL      XT,ACC                ; |58| 
        QMPYL     ACC,XT,XAR4           ; |58| 
        MOVW      DP,#_g_q15cross_dist
        ASR64     ACC:P,#15             ; |58| 
        MOVL      @_g_q15cross_dist,P   ; |58| 
	.dwpsn	"fastrun.c",60,4
        MOVL      XAR5,XAR3             ; |60| 
        MOVL      XAR4,XAR2
        LCR       #_turn_decide         ; |60| 
        ; call occurs [#_turn_decide] ; |60| 
	.dwpsn	"fastrun.c",61,4
        MOVL      XAR4,XAR3             ; |61| 
        MOVL      XAR5,XAR2             ; |61| 
        LCR       #_turn_decide         ; |61| 
        ; call occurs [#_turn_decide] ; |61| 
	.dwpsn	"fastrun.c",63,4
        MOVB      ACC,#1
        CMPL      ACC,*+XAR1[2]         ; |63| 
        BF        L73,NEQ               ; |63| 
        ; branchcc occurs ; |63| 
DW$L$_fast_race$6$E:
DW$L$_fast_race$7$B:
;*** 63	-----------------------    C$3 = &GpioDataRegs;
;*** 63	-----------------------    ((volatile unsigned *)C$3)[10];
;*** 63	-----------------------    *(&GpioDataRegs+10L) = *(&GpioDataRegs+10L)|2u;
;*** 63	-----------------------    *(&GpioDataRegs+3L) = *((volatile struct _GPADAT_BITS *)C$3+3L)|0x8000u;
	.dwpsn	"fastrun.c",63,42
        MOVB      XAR0,#10              ; |63| 
        MOVL      XAR4,#_GpioDataRegs   ; |63| 
        MOVW      DP,#_GpioDataRegs+10
        MOV       AL,*+XAR4[AR0]        ; |63| 
        OR        @_GpioDataRegs+10,#0x0002 ; |63| 
        MOV       AL,*+XAR4[3]          ; |63| 
        OR        AL,#0x8000            ; |63| 
        MOV       @_GpioDataRegs+3,AL   ; |63| 
DW$L$_fast_race$7$E:
L73:    
DW$L$_fast_race$8$B:
;***	-----------------------g9:
;*** 67	-----------------------    if ( g_int32_isr_cnt == 0uL ) goto g6;
	.dwpsn	"fastrun.c",67,3
        MOVW      DP,#_g_int32_isr_cnt
        MOVL      ACC,@_g_int32_isr_cnt ; |67| 
        BF        L72,EQ                ; |67| 
        ; branchcc occurs ; |67| 
DW$L$_fast_race$8$E:
DW$L$_fast_race$9$B:
;*** 69	-----------------------    if ( line_out_func() ) goto g12;
	.dwpsn	"fastrun.c",69,4
        LCR       #_line_out_func       ; |69| 
        ; call occurs [#_line_out_func] ; |69| 
        CMPB      AL,#0                 ; |69| 
        BF        L74,NEQ               ; |69| 
        ; branchcc occurs ; |69| 
DW$L$_fast_race$9$E:
DW$L$_fast_race$10$B:
;*** 69	-----------------------    if ( !race_stop_check() ) goto g4;
;***	-----------------------g12:
;***  	-----------------------    return;
        LCR       #_race_stop_check     ; |69| 
        ; call occurs [#_race_stop_check] ; |69| 
        CMPB      AL,#0                 ; |69| 
        BF        L71,EQ                ; |69| 
        ; branchcc occurs ; |69| 
DW$L$_fast_race$10$E:
L74:    
	.dwpsn	"fastrun.c",77,1
        SUBB      SP,#16
	.dwcfa	0x1d, -8
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -6
	.dwcfa	0xc0, 11
        MOVL      XAR2,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 9
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs

DW$166	.dwtag  DW_TAG_loop
	.dwattr DW$166, DW_AT_name("C:\project\_Viper_\main\fastrun.asm:L72:1:1729866710")
	.dwattr DW$166, DW_AT_begin_file("fastrun.c")
	.dwattr DW$166, DW_AT_begin_line(0x34)
	.dwattr DW$166, DW_AT_end_line(0x49)
DW$167	.dwtag  DW_TAG_loop_range
	.dwattr DW$167, DW_AT_low_pc(DW$L$_fast_race$5$B)
	.dwattr DW$167, DW_AT_high_pc(DW$L$_fast_race$5$E)
DW$168	.dwtag  DW_TAG_loop_range
	.dwattr DW$168, DW_AT_low_pc(DW$L$_fast_race$6$B)
	.dwattr DW$168, DW_AT_high_pc(DW$L$_fast_race$6$E)
DW$169	.dwtag  DW_TAG_loop_range
	.dwattr DW$169, DW_AT_low_pc(DW$L$_fast_race$7$B)
	.dwattr DW$169, DW_AT_high_pc(DW$L$_fast_race$7$E)
DW$170	.dwtag  DW_TAG_loop_range
	.dwattr DW$170, DW_AT_low_pc(DW$L$_fast_race$9$B)
	.dwattr DW$170, DW_AT_high_pc(DW$L$_fast_race$9$E)
DW$171	.dwtag  DW_TAG_loop_range
	.dwattr DW$171, DW_AT_low_pc(DW$L$_fast_race$10$B)
	.dwattr DW$171, DW_AT_high_pc(DW$L$_fast_race$10$E)
DW$172	.dwtag  DW_TAG_loop_range
	.dwattr DW$172, DW_AT_low_pc(DW$L$_fast_race$8$B)
	.dwattr DW$172, DW_AT_high_pc(DW$L$_fast_race$8$E)
DW$173	.dwtag  DW_TAG_loop_range
	.dwattr DW$173, DW_AT_low_pc(DW$L$_fast_race$4$B)
	.dwattr DW$173, DW_AT_high_pc(DW$L$_fast_race$4$E)
	.dwendtag DW$166


DW$174	.dwtag  DW_TAG_loop
	.dwattr DW$174, DW_AT_name("C:\project\_Viper_\main\fastrun.asm:L70:1:1729866710")
	.dwattr DW$174, DW_AT_begin_file("fastrun.c")
	.dwattr DW$174, DW_AT_begin_line(0x53)
	.dwattr DW$174, DW_AT_end_line(0x56)
DW$175	.dwtag  DW_TAG_loop_range
	.dwattr DW$175, DW_AT_low_pc(DW$L$_fast_race$2$B)
	.dwattr DW$175, DW_AT_high_pc(DW$L$_fast_race$2$E)
	.dwendtag DW$174

	.dwattr DW$154, DW_AT_end_file("fastrun.c")
	.dwattr DW$154, DW_AT_end_line(0x4d)
	.dwattr DW$154, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$154

	.sect	".text"
	.global	_second_race

DW$176	.dwtag  DW_TAG_subprogram, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$176, DW_AT_low_pc(_second_race)
	.dwattr DW$176, DW_AT_high_pc(0x00)
	.dwattr DW$176, DW_AT_begin_file("fastrun.c")
	.dwattr DW$176, DW_AT_begin_line(0x14)
	.dwattr DW$176, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",21,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _second_race                  FR SIZE:   2           *
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
_second_race:
;*** 22	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 23	-----------------------    VFDPrintf("_ _GO_ _");
;*** 24	-----------------------    fast_race(&search_info);
;*** 24	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"fastrun.c",22,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |22| 
	.dwpsn	"fastrun.c",23,2
        MOVL      XAR4,#FSL2            ; |23| 
        MOVL      *-SP[2],XAR4          ; |23| 
        LCR       #_VFDPrintf           ; |23| 
        ; call occurs [#_VFDPrintf] ; |23| 
	.dwpsn	"fastrun.c",24,5
        MOVL      XAR4,#_search_info    ; |24| 
        LCR       #_fast_race           ; |24| 
        ; call occurs [#_fast_race] ; |24| 
	.dwpsn	"fastrun.c",25,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$176, DW_AT_end_file("fastrun.c")
	.dwattr DW$176, DW_AT_end_line(0x19)
	.dwattr DW$176, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$176

	.sect	".text"
	.global	_second_info

DW$177	.dwtag  DW_TAG_subprogram, DW_AT_name("second_info"), DW_AT_symbol_name("_second_info")
	.dwattr DW$177, DW_AT_low_pc(_second_info)
	.dwattr DW$177, DW_AT_high_pc(0x00)
	.dwattr DW$177, DW_AT_begin_file("fastrun.c")
	.dwattr DW$177, DW_AT_begin_line(0x5a)
	.dwattr DW$177, DW_AT_begin_column(0x06)
	.dwpsn	"fastrun.c",91,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _second_info                  FR SIZE:  18           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter,  8 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_second_info:
;*** 94	-----------------------    ++U16_turnmark_cnt;
;*** 96	-----------------------    if ( (p_info[(long)U16_turnmark_cnt]).int32turn_dir&0x9L ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#16
	.dwcfa	0x1d, -20
;* AR4   assigned to _p_info
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_name("p_info"), DW_AT_symbol_name("_p_info")
	.dwattr DW$178, DW_AT_type(*DW$T$67)
	.dwattr DW$178, DW_AT_location[DW_OP_reg12]
;* AR1   assigned to _p_info
DW$179	.dwtag  DW_TAG_variable, DW_AT_name("p_info"), DW_AT_symbol_name("_p_info")
	.dwattr DW$179, DW_AT_type(*DW$T$103)
	.dwattr DW$179, DW_AT_location[DW_OP_reg6]
        MOVL      XAR1,XAR4             ; |91| 
	.dwpsn	"fastrun.c",94,2
        MOVW      DP,#_U16_turnmark_cnt
        INC       @_U16_turnmark_cnt    ; |94| 
	.dwpsn	"fastrun.c",96,2
        MOVL      XAR4,XAR1             ; |96| 
        MOV       T,#26                 ; |96| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |96| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#10              ; |96| 
        MOVL      ACC,*+XAR4[AR0]       ; |96| 
        ANDB      AL,#0x09              ; |96| 
        MOVB      AH,#0
        TEST      ACC                   ; |96| 
        BF        L75,NEQ               ; |96| 
        ; branchcc occurs ; |96| 
;*** 98	-----------------------    *&g_Flag &= 0xf7ffu;
;*** 98	-----------------------    goto g4;
	.dwpsn	"fastrun.c",98,25
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xf7ff      ; |98| 
        BF        L76,UNC               ; |98| 
        ; branch occurs ; |98| 
L75:    
;***	-----------------------g3:
;*** 96	-----------------------    *&g_Flag |= 0x400u;
	.dwpsn	"fastrun.c",96,79
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0400      ; |96| 
L76:    
;***	-----------------------g4:
;*** 100	-----------------------    move_to_move((long)((long double)(p_info[(long)U16_turnmark_cnt]).int32dist*1.31072e5L), (p_info[(long)U16_turnmark_cnt]).iq7dec_dist<<10, (p_info[(long)U16_turnmark_cnt]).iq7vel<<10, (p_info[(long)U16_turnmark_cnt]).iq7out_vel<<10, (p_info[(long)U16_turnmark_cnt]).int32accel);
;*** 483	-----------------------    if ( *&g_Flag&0x40u ) goto g8;  // [26]
	.dwpsn	"fastrun.c",100,2
        MOVW      DP,#_U16_turnmark_cnt
        MOVL      XAR4,XAR1             ; |100| 
        MOVZ      AR6,SP                ; |100| 
        MOV       T,#26                 ; |100| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |100| 
        ADDL      XAR4,ACC
        SUBB      XAR6,#16              ; |100| 
        MOVL      ACC,*+XAR4[0]         ; |100| 
        LCR       #L$$TOFD              ; |100| 
        ; call occurs [#L$$TOFD] ; |100| 
        MOVZ      AR4,SP                ; |100| 
        MOVZ      AR6,SP                ; |100| 
        MOVL      XAR5,#FL1             ; |100| 
        SUBB      XAR4,#16              ; |100| 
        SUBB      XAR6,#12              ; |100| 
        LCR       #FD$$MPY              ; |100| 
        ; call occurs [#FD$$MPY] ; |100| 
        MOVZ      AR4,SP                ; |100| 
        SUBB      XAR4,#12              ; |100| 
        LCR       #FD$$TOL              ; |100| 
        ; call occurs [#FD$$TOL] ; |100| 
        MOV       T,#26                 ; |100| 
        MOVL      XAR4,XAR1             ; |100| 
        MOVW      DP,#_U16_turnmark_cnt
        MOVL      XAR6,ACC              ; |100| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |100| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#22              ; |100| 
        MOVL      ACC,*+XAR4[AR0]       ; |100| 
        LSL       ACC,10                ; |100| 
        MOVL      XAR4,XAR1             ; |100| 
        MOV       T,#26                 ; |100| 
        MOVL      *-SP[2],ACC           ; |100| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |100| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#18              ; |100| 
        MOVL      ACC,*+XAR4[AR0]       ; |100| 
        LSL       ACC,10                ; |100| 
        MOVL      XAR4,XAR1             ; |100| 
        MOV       T,#26                 ; |100| 
        MOVL      *-SP[4],ACC           ; |100| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |100| 
        ADDL      XAR4,ACC
        MOVB      XAR0,#20              ; |100| 
        MOVL      ACC,*+XAR4[AR0]       ; |100| 
        LSL       ACC,10                ; |100| 
        MOV       T,#26                 ; |100| 
        MOVL      *-SP[6],ACC           ; |100| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |100| 
        ADDL      XAR1,ACC
        MOVB      XAR0,#14              ; |100| 
        MOVL      ACC,*+XAR1[AR0]       ; |100| 
        MOVL      *-SP[8],ACC           ; |100| 
        MOVL      ACC,XAR6              ; |100| 
        LCR       #_move_to_move        ; |100| 
        ; call occurs [#_move_to_move] ; |100| 
	.dwpsn	"fastrun.c",483,2
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#6           ; |483| 
        BF        L77,TC                ; |483| 
        ; branchcc occurs ; |483| 
;*** 483	-----------------------    if ( !(*&g_Flag&1u) ) goto g8;  // [26]
        TBIT      @_g_Flag,#0           ; |483| 
        BF        L77,NTC               ; |483| 
        ; branchcc occurs ; |483| 
;*** 486	-----------------------    if ( !(*&g_Flag&0x200u) ) goto g8;  // [26]
	.dwpsn	"fastrun.c",486,2
        TBIT      @_g_Flag,#9           ; |486| 
        BF        L77,NTC               ; |486| 
        ; branchcc occurs ; |486| 
;*** 488	-----------------------    *&g_Flag |= 0x800u;  // [26]
;*** 489	-----------------------    RMotor.iqTargetV = LMotor.iqTargetV = (search_info[(long)U16_turnmark_cnt]).iq7vel<<10;  // [26]
	.dwpsn	"fastrun.c",488,3
        OR        @_g_Flag,#0x0800      ; |488| 
	.dwpsn	"fastrun.c",489,3
        MOV       T,#26                 ; |489| 
        MOVW      DP,#_U16_turnmark_cnt
        MOVL      XAR4,#_search_info+18 ; |489| 
        MPYXU     ACC,T,@_U16_turnmark_cnt ; |489| 
        ADDL      XAR4,ACC
        MOVW      DP,#_LMotor+6
        MOVL      ACC,*+XAR4[0]         ; |489| 
        LSL       ACC,10                ; |489| 
        MOVL      @_LMotor+6,ACC        ; |489| 
        MOVW      DP,#_RMotor+6
        MOVL      @_RMotor+6,ACC        ; |489| 
L77:    
;***	-----------------------g8:
;*** 104	-----------------------    LMotor.iq15GoneDist = RMotor.iq15GoneDist = 0L;
;*** 105	-----------------------    LMotor.iq17distance_sum = RMotor.iq17distance_sum = 0L;
;*** 105	-----------------------    return;
	.dwpsn	"fastrun.c",104,2
        MOVB      ACC,#0
        MOVW      DP,#_RMotor+28
        MOVL      @_RMotor+28,ACC       ; |104| 
        MOVW      DP,#_LMotor+28
        MOVL      @_LMotor+28,ACC       ; |104| 
	.dwpsn	"fastrun.c",105,2
        MOVW      DP,#_RMotor+34
        MOVL      @_RMotor+34,ACC       ; |105| 
        MOVW      DP,#_LMotor+34
        MOVL      @_LMotor+34,ACC       ; |105| 
	.dwpsn	"fastrun.c",106,1
        SUBB      SP,#16
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$177, DW_AT_end_file("fastrun.c")
	.dwattr DW$177, DW_AT_end_line(0x6a)
	.dwattr DW$177, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$177

;* Inlined function references:
;* [ 16] turn_division_func
;* [ 26] speed_up_func
;***************************************************************
;* FLOATING-POINT CONSTANTS                                    *
;***************************************************************
	.sect	".econst"
	.align	2
FL1:	.xldouble	1.31072000000000000000e+05
	.align	2
FL2:	.xldouble	1.28000000000000000000e+02
;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"        ",0
	.align	2
FSL2:	.string	"_ _GO_ _",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_make_position
	.global	_turn_decide
	.global	_move_to_move
	.global	_read_line_info_rom
	.global	_VFDPrintf
	.global	_DSP28x_usDelay
	.global	_Handle
	.global	_U16_turnmark_cnt
	.global	_g_Flag
	.global	_Race_Init
	.global	_race_stop_check
	.global	_line_out_func
	.global	_g_u32_END_VEL_targetval
	.global	_g_int32turn_LARGE_VEL
	.global	_g_int32long_ACC
	.global	_g_u32_VEL_targetval
	.global	_g_u32_ACC_targetval
	.global	_g_int32turn_180_VEL
	.global	_g_int32turn_270_VEL
	.global	_g_int32turn_90_VEL
	.global	_g_int32_isr_cnt
	.global	_g_int32turn_45_VEL
	.global	_g_int32speed_up_cnt
	.global	__IQ7div
	.global	__IQ7sqrt
	.global	_g_q17user_vel
	.global	_g_int32total_cnt
	.global	_g_q15cross_dist
	.global	_g_int32short_ACC
	.global	_g_int32mid_ACC
	.global	_CpuTimer0Regs
	.global	_g_lmark
	.global	_g_rmark
	.global	_GpioDataRegs
	.global	_LMotor
	.global	_RMotor
	.global	_search_info
	.global	FD$$MPY
	.global	L$$TOFD
	.global	L$$DIV
	.global	FD$$TOL
	.global	UL$$TOFD

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$181	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$49


DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$182	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$183	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$184	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$185	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$51)
DW$186	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$60	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$60, DW_AT_language(DW_LANG_C)
DW$187	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
DW$188	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$59)
	.dwendtag DW$T$60


DW$T$62	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$189	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$26)
	.dwendtag DW$T$62


DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)

DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$190	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$191	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$67)
DW$192	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$22)
	.dwendtag DW$T$70


DW$T$74	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$193	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
DW$194	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
DW$195	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
DW$196	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$197	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$73)
	.dwendtag DW$T$74


DW$T$76	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$76, DW_AT_language(DW_LANG_C)
DW$198	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
DW$199	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$72)
DW$200	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$201	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$73)
	.dwendtag DW$T$76

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$79	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$79, DW_AT_language(DW_LANG_C)

DW$T$81	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$81, DW_AT_language(DW_LANG_C)
DW$202	.dwtag  DW_TAG_far_type
	.dwattr DW$202, DW_AT_type(*DW$T$20)
DW$T$83	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$83, DW_AT_type(*DW$202)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$203	.dwtag  DW_TAG_far_type
	.dwattr DW$203, DW_AT_type(*DW$T$19)
DW$T$51	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$51, DW_AT_type(*DW$203)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$204	.dwtag  DW_TAG_far_type
	.dwattr DW$204, DW_AT_type(*DW$T$22)
DW$T$52	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$52, DW_AT_type(*DW$204)
DW$205	.dwtag  DW_TAG_far_type
	.dwattr DW$205, DW_AT_type(*DW$T$22)
DW$T$86	.dwtag  DW_TAG_const_type
	.dwattr DW$T$86, DW_AT_type(*DW$205)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$206	.dwtag  DW_TAG_far_type
	.dwattr DW$206, DW_AT_type(*DW$T$23)
DW$T$72	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$72, DW_AT_type(*DW$206)
DW$T$73	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$72)
	.dwattr DW$T$73, DW_AT_address_class(0x16)
DW$207	.dwtag  DW_TAG_far_type
	.dwattr DW$207, DW_AT_type(*DW$T$73)
DW$T$87	.dwtag  DW_TAG_const_type
	.dwattr DW$T$87, DW_AT_type(*DW$207)
DW$208	.dwtag  DW_TAG_far_type
	.dwattr DW$208, DW_AT_type(*DW$T$23)
DW$T$88	.dwtag  DW_TAG_const_type
	.dwattr DW$T$88, DW_AT_type(*DW$208)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)

DW$T$89	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$89, DW_AT_language(DW_LANG_C)
DW$209	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$89


DW$T$91	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$210	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$211	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$212	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$91


DW$T$92	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$92, DW_AT_language(DW_LANG_C)
DW$213	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$214	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$92

DW$T$98	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$98, DW_AT_address_class(0x16)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$26	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$215	.dwtag  DW_TAG_far_type
	.dwattr DW$215, DW_AT_type(*DW$T$26)
DW$T$100	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$100, DW_AT_type(*DW$215)
DW$T$18	.dwtag  DW_TAG_base_type, DW_AT_name("long double")
	.dwattr DW$T$18, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$18, DW_AT_byte_size(0x04)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("turnmark_t"), DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)
DW$T$59	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$58)
	.dwattr DW$T$59, DW_AT_address_class(0x16)
DW$T$102	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$102, DW_AT_address_class(0x16)
DW$T$67	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$66)
	.dwattr DW$T$67, DW_AT_address_class(0x16)
DW$216	.dwtag  DW_TAG_far_type
	.dwattr DW$216, DW_AT_type(*DW$T$67)
DW$T$103	.dwtag  DW_TAG_const_type
	.dwattr DW$T$103, DW_AT_type(*DW$216)

DW$T$104	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$66)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$104, DW_AT_byte_size(0x1a00)
DW$217	.dwtag  DW_TAG_subrange_type
	.dwattr DW$217, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$104

DW$T$106	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$24)
	.dwattr DW$T$106, DW_AT_address_class(0x16)
DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$110)
	.dwattr DW$T$111, DW_AT_address_class(0x16)
DW$218	.dwtag  DW_TAG_far_type
	.dwattr DW$218, DW_AT_type(*DW$T$31)
DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$112, DW_AT_type(*DW$218)
DW$219	.dwtag  DW_TAG_far_type
	.dwattr DW$219, DW_AT_type(*DW$T$42)
DW$T$116	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$116, DW_AT_type(*DW$219)
DW$T$119	.dwtag  DW_TAG_typedef, DW_AT_name("bit_field_flag_t"), DW_AT_type(*DW$T$118)
	.dwattr DW$T$119, DW_AT_language(DW_LANG_C)
DW$T$121	.dwtag  DW_TAG_typedef, DW_AT_name("MOTORCTRL"), DW_AT_type(*DW$T$46)
	.dwattr DW$T$121, DW_AT_language(DW_LANG_C)
DW$T$122	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$46)
	.dwattr DW$T$122, DW_AT_address_class(0x16)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x16)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$220	.dwtag  DW_TAG_far_type
	.dwattr DW$220, DW_AT_type(*DW$T$21)
DW$T$57	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$57, DW_AT_type(*DW$220)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("first_race_info")
	.dwattr DW$T$24, DW_AT_byte_size(0x1a)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$221, DW_AT_name("int32dist"), DW_AT_symbol_name("_int32dist")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$222, DW_AT_name("int32turn_way"), DW_AT_symbol_name("_int32turn_way")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$223, DW_AT_name("int32L_dist"), DW_AT_symbol_name("_int32L_dist")
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$224, DW_AT_name("int32R_dist"), DW_AT_symbol_name("_int32R_dist")
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$225, DW_AT_name("int32cross_check_dist"), DW_AT_symbol_name("_int32cross_check_dist")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$226, DW_AT_name("int32turn_dir"), DW_AT_symbol_name("_int32turn_dir")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$227, DW_AT_name("int32turn_cnt"), DW_AT_symbol_name("_int32turn_cnt")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$228, DW_AT_name("int32accel"), DW_AT_symbol_name("_int32accel")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$229, DW_AT_name("iq7in_vel"), DW_AT_symbol_name("_iq7in_vel")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$230, DW_AT_name("iq7vel"), DW_AT_symbol_name("_iq7vel")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$231, DW_AT_name("iq7out_vel"), DW_AT_symbol_name("_iq7out_vel")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$232, DW_AT_name("iq7dec_dist"), DW_AT_symbol_name("_iq7dec_dist")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$233, DW_AT_name("iq7m_dist"), DW_AT_symbol_name("_iq7m_dist")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$66	.dwtag  DW_TAG_typedef, DW_AT_name("race_info"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$234	.dwtag  DW_TAG_far_type
	.dwattr DW$234, DW_AT_type(*DW$T$28)
DW$T$110	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$110, DW_AT_type(*DW$234)

DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$31, DW_AT_byte_size(0x20)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$235, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$236, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$237, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$238, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$239, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$240, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$241, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$242, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$243, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$42, DW_AT_byte_size(0x08)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$244, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$245, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$246, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$247, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$248, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$249, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42

DW$250	.dwtag  DW_TAG_far_type
	.dwattr DW$250, DW_AT_type(*DW$T$43)
DW$T$118	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$118, DW_AT_type(*DW$250)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_byte_size(0x2e)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$251, DW_AT_name("iqTargetA"), DW_AT_symbol_name("_iqTargetA")
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$252, DW_AT_name("iqDist"), DW_AT_symbol_name("_iqDist")
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$253, DW_AT_name("iqVelo"), DW_AT_symbol_name("_iqVelo")
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$254, DW_AT_name("iqTargetV"), DW_AT_symbol_name("_iqTargetV")
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$255, DW_AT_name("iqNextV"), DW_AT_symbol_name("_iqNextV")
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$256, DW_AT_name("iqAmpyS"), DW_AT_symbol_name("_iqAmpyS")
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$257, DW_AT_name("iqHandle"), DW_AT_symbol_name("_iqHandle")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$258, DW_AT_name("iqTotalDis"), DW_AT_symbol_name("_iqTotalDis")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$259, DW_AT_name("iq24TargetA_1"), DW_AT_symbol_name("_iq24TargetA_1")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$260, DW_AT_name("iq24TimeValue"), DW_AT_symbol_name("_iq24TimeValue")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$261, DW_AT_name("u32_Period_Cnt"), DW_AT_symbol_name("_u32_Period_Cnt")
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$262, DW_AT_name("u32_Period"), DW_AT_symbol_name("_u32_Period")
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$263, DW_AT_name("u16_pPeriod"), DW_AT_symbol_name("_u16_pPeriod")
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$264, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$265, DW_AT_name("iq15GoneDist"), DW_AT_symbol_name("_iq15GoneDist")
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$266, DW_AT_name("iq15Cross_Check_Dist"), DW_AT_symbol_name("_iq15Cross_Check_Dist")
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$267, DW_AT_name("iq17Start_Check_Dist"), DW_AT_symbol_name("_iq17Start_Check_Dist")
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$268, DW_AT_name("iq17distance_sum"), DW_AT_symbol_name("_iq17distance_sum")
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$269, DW_AT_name("iq17decel_distance"), DW_AT_symbol_name("_iq17decel_distance")
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$270, DW_AT_name("iq17err_distance"), DW_AT_symbol_name("_iq17err_distance")
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$271, DW_AT_name("iq17user_distance"), DW_AT_symbol_name("_iq17user_distance")
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$272, DW_AT_name("iq17decel_vel"), DW_AT_symbol_name("_iq17decel_vel")
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$273, DW_AT_name("u16decel_flag"), DW_AT_symbol_name("_u16decel_flag")
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46

DW$T$47	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$47, DW_AT_byte_size(0x01)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

DW$T$30	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$30, DW_AT_byte_size(0x10)
DW$274	.dwtag  DW_TAG_subrange_type
	.dwattr DW$274, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$30

DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("iq17turnmark_dist"), DW_AT_symbol_name("_iq17turnmark_dist")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("iq17check_dist"), DW_AT_symbol_name("_iq17check_dist")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("iq17limit_dist"), DW_AT_symbol_name("_iq17limit_dist")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$279, DW_AT_name("u16State"), DW_AT_symbol_name("_u16State")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$280, DW_AT_name("u16mark_enable"), DW_AT_symbol_name("_u16mark_enable")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$281, DW_AT_name("u16turn_flag"), DW_AT_symbol_name("_u16turn_flag")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$282, DW_AT_name("u16single_flag"), DW_AT_symbol_name("_u16single_flag")
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$283, DW_AT_name("u16cross_flag"), DW_AT_symbol_name("_u16cross_flag")
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$27	.dwtag  DW_TAG_union_type
	.dwattr DW$T$27, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$27, DW_AT_byte_size(0x02)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$284, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$285, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$286, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$286, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$287, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$287, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$288, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$288, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$289, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$289, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$290, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$290, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$291, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$291, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$29	.dwtag  DW_TAG_union_type
	.dwattr DW$T$29, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$292, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$293, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$33	.dwtag  DW_TAG_union_type
	.dwattr DW$T$33, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$294, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$295, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_union_type
	.dwattr DW$T$35, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$35, DW_AT_byte_size(0x02)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$296, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$297, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_union_type
	.dwattr DW$T$37, DW_AT_name("TCR_REG")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$298, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$299, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_union_type
	.dwattr DW$T$39, DW_AT_name("TPR_REG")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$300, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$301, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$41	.dwtag  DW_TAG_union_type
	.dwattr DW$T$41, DW_AT_name("TPRH_REG")
	.dwattr DW$T$41, DW_AT_byte_size(0x01)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$302, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$303, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("bit_field_flag")
	.dwattr DW$T$43, DW_AT_byte_size(0x01)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$304, DW_AT_name("motor"), DW_AT_symbol_name("_motor")
	.dwattr DW$304, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$305, DW_AT_name("move_state"), DW_AT_symbol_name("_move_state")
	.dwattr DW$305, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$306, DW_AT_name("start_flag"), DW_AT_symbol_name("_start_flag")
	.dwattr DW$306, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$307, DW_AT_name("cross_flag"), DW_AT_symbol_name("_cross_flag")
	.dwattr DW$307, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$308, DW_AT_name("lineout_flag"), DW_AT_symbol_name("_lineout_flag")
	.dwattr DW$308, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
DW$309	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$309, DW_AT_name("end_flag"), DW_AT_symbol_name("_end_flag")
	.dwattr DW$309, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$309, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$309, DW_AT_accessibility(DW_ACCESS_public)
DW$310	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$310, DW_AT_name("stop_check"), DW_AT_symbol_name("_stop_check")
	.dwattr DW$310, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$310, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$310, DW_AT_accessibility(DW_ACCESS_public)
DW$311	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$311, DW_AT_name("Rturnmark_flag"), DW_AT_symbol_name("_Rturnmark_flag")
	.dwattr DW$311, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$311, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$311, DW_AT_accessibility(DW_ACCESS_public)
DW$312	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$312, DW_AT_name("Lturnmark_flag"), DW_AT_symbol_name("_Lturnmark_flag")
	.dwattr DW$312, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$312, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$312, DW_AT_accessibility(DW_ACCESS_public)
DW$313	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$313, DW_AT_name("speed_up"), DW_AT_symbol_name("_speed_up")
	.dwattr DW$313, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$313, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$313, DW_AT_accessibility(DW_ACCESS_public)
DW$314	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$314, DW_AT_name("speed_up_start"), DW_AT_symbol_name("_speed_up_start")
	.dwattr DW$314, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$314, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$314, DW_AT_accessibility(DW_ACCESS_public)
DW$315	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$315, DW_AT_name("straight_run"), DW_AT_symbol_name("_straight_run")
	.dwattr DW$315, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$315, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$315, DW_AT_accessibility(DW_ACCESS_public)
DW$316	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$316, DW_AT_name("first_race"), DW_AT_symbol_name("_first_race")
	.dwattr DW$316, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$316, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$316, DW_AT_accessibility(DW_ACCESS_public)
DW$317	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$317, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$317, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$317, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$317, DW_AT_accessibility(DW_ACCESS_public)
DW$318	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$318, DW_AT_name("race_start"), DW_AT_symbol_name("_race_start")
	.dwattr DW$318, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$318, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$318, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$319	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$319, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$319, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$319, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$319, DW_AT_accessibility(DW_ACCESS_public)
DW$320	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$320, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$320, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$320, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$320, DW_AT_accessibility(DW_ACCESS_public)
DW$321	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$321, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$321, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$321, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$321, DW_AT_accessibility(DW_ACCESS_public)
DW$322	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$322, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$322, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$322, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$322, DW_AT_accessibility(DW_ACCESS_public)
DW$323	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$323, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$323, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$323, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$323, DW_AT_accessibility(DW_ACCESS_public)
DW$324	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$324, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$324, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$324, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$324, DW_AT_accessibility(DW_ACCESS_public)
DW$325	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$325, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$325, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$325, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$325, DW_AT_accessibility(DW_ACCESS_public)
DW$326	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$326, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$326, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$326, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$326, DW_AT_accessibility(DW_ACCESS_public)
DW$327	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$327, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$327, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$327, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$327, DW_AT_accessibility(DW_ACCESS_public)
DW$328	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$328, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$328, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$328, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$328, DW_AT_accessibility(DW_ACCESS_public)
DW$329	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$329, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$329, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$329, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$329, DW_AT_accessibility(DW_ACCESS_public)
DW$330	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$330, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$330, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$330, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$330, DW_AT_accessibility(DW_ACCESS_public)
DW$331	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$331, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$331, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$331, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$331, DW_AT_accessibility(DW_ACCESS_public)
DW$332	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$332, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$332, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$332, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$332, DW_AT_accessibility(DW_ACCESS_public)
DW$333	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$333, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$333, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$333, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$333, DW_AT_accessibility(DW_ACCESS_public)
DW$334	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$334, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$334, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$334, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$334, DW_AT_accessibility(DW_ACCESS_public)
DW$335	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$335, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$335, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$335, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$335, DW_AT_accessibility(DW_ACCESS_public)
DW$336	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$336, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$336, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$336, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$336, DW_AT_accessibility(DW_ACCESS_public)
DW$337	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$337, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$337, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$337, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$337, DW_AT_accessibility(DW_ACCESS_public)
DW$338	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$338, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$338, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$338, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$338, DW_AT_accessibility(DW_ACCESS_public)
DW$339	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$339, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$339, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$339, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$339, DW_AT_accessibility(DW_ACCESS_public)
DW$340	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$340, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$340, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$340, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$340, DW_AT_accessibility(DW_ACCESS_public)
DW$341	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$341, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$341, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$341, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$341, DW_AT_accessibility(DW_ACCESS_public)
DW$342	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$342, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$342, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$342, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$342, DW_AT_accessibility(DW_ACCESS_public)
DW$343	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$343, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$343, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$343, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$343, DW_AT_accessibility(DW_ACCESS_public)
DW$344	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$344, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$344, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$344, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$344, DW_AT_accessibility(DW_ACCESS_public)
DW$345	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$345, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$345, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$345, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$345, DW_AT_accessibility(DW_ACCESS_public)
DW$346	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$346, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$346, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$346, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$346, DW_AT_accessibility(DW_ACCESS_public)
DW$347	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$347, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$347, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$347, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$347, DW_AT_accessibility(DW_ACCESS_public)
DW$348	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$348, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$348, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$348, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$348, DW_AT_accessibility(DW_ACCESS_public)
DW$349	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$349, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$349, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$349, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$349, DW_AT_accessibility(DW_ACCESS_public)
DW$350	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$350, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$350, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$350, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$350, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$32	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$32, DW_AT_name("TIM_REG")
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$351	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$351, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$351, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$351, DW_AT_accessibility(DW_ACCESS_public)
DW$352	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$352, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$352, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$352, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$34, DW_AT_name("PRD_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x02)
DW$353	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$353, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$353, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$353, DW_AT_accessibility(DW_ACCESS_public)
DW$354	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$354, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$354, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$354, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$36, DW_AT_name("TCR_BITS")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$355	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$355, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$355, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$355, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$355, DW_AT_accessibility(DW_ACCESS_public)
DW$356	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$356, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$356, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$356, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$356, DW_AT_accessibility(DW_ACCESS_public)
DW$357	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$357, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$357, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$357, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$357, DW_AT_accessibility(DW_ACCESS_public)
DW$358	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$358, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$358, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$358, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$358, DW_AT_accessibility(DW_ACCESS_public)
DW$359	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$359, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$359, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$359, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$359, DW_AT_accessibility(DW_ACCESS_public)
DW$360	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$360, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$360, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$360, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$360, DW_AT_accessibility(DW_ACCESS_public)
DW$361	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$361, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$361, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$361, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$361, DW_AT_accessibility(DW_ACCESS_public)
DW$362	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$362, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$362, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$362, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$362, DW_AT_accessibility(DW_ACCESS_public)
DW$363	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$363, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$363, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$363, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$363, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$38, DW_AT_name("TPR_BITS")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$364	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$364, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$364, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$364, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$364, DW_AT_accessibility(DW_ACCESS_public)
DW$365	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$365, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$365, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$365, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$365, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$40, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$366	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$366, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$366, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$366, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$366, DW_AT_accessibility(DW_ACCESS_public)
DW$367	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$367, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$367, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$367, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$367, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


	.dwattr DW$101, DW_AT_external(0x01)
	.dwattr DW$154, DW_AT_external(0x01)
	.dwattr DW$113, DW_AT_external(0x01)
	.dwattr DW$177, DW_AT_external(0x01)
	.dwattr DW$176, DW_AT_external(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
	.dwattr DW$75, DW_AT_external(0x01)
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

DW$368	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$368, DW_AT_location[DW_OP_reg0]
DW$369	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$369, DW_AT_location[DW_OP_reg1]
DW$370	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$370, DW_AT_location[DW_OP_reg2]
DW$371	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$371, DW_AT_location[DW_OP_reg3]
DW$372	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$372, DW_AT_location[DW_OP_reg4]
DW$373	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$373, DW_AT_location[DW_OP_reg5]
DW$374	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$374, DW_AT_location[DW_OP_reg6]
DW$375	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$375, DW_AT_location[DW_OP_reg7]
DW$376	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$376, DW_AT_location[DW_OP_reg8]
DW$377	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$377, DW_AT_location[DW_OP_reg9]
DW$378	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$378, DW_AT_location[DW_OP_reg10]
DW$379	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$379, DW_AT_location[DW_OP_reg11]
DW$380	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$380, DW_AT_location[DW_OP_reg12]
DW$381	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$381, DW_AT_location[DW_OP_reg13]
DW$382	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$382, DW_AT_location[DW_OP_reg14]
DW$383	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$383, DW_AT_location[DW_OP_reg15]
DW$384	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$384, DW_AT_location[DW_OP_reg16]
DW$385	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$385, DW_AT_location[DW_OP_reg17]
DW$386	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$386, DW_AT_location[DW_OP_reg18]
DW$387	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$387, DW_AT_location[DW_OP_reg19]
DW$388	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$388, DW_AT_location[DW_OP_reg20]
DW$389	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$389, DW_AT_location[DW_OP_reg21]
DW$390	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$390, DW_AT_location[DW_OP_reg22]
DW$391	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$391, DW_AT_location[DW_OP_reg23]
DW$392	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$392, DW_AT_location[DW_OP_reg24]
DW$393	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$393, DW_AT_location[DW_OP_reg25]
DW$394	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$394, DW_AT_location[DW_OP_reg26]
DW$395	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$395, DW_AT_location[DW_OP_reg27]
DW$396	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$396, DW_AT_location[DW_OP_reg28]
DW$397	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$397, DW_AT_location[DW_OP_reg29]
DW$398	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$398, DW_AT_location[DW_OP_reg30]
DW$399	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$399, DW_AT_location[DW_OP_reg31]
DW$400	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$400, DW_AT_location[DW_OP_regx 0x20]
DW$401	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$401, DW_AT_location[DW_OP_regx 0x21]
DW$402	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$402, DW_AT_location[DW_OP_regx 0x22]
DW$403	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$403, DW_AT_location[DW_OP_regx 0x23]
DW$404	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$404, DW_AT_location[DW_OP_regx 0x24]
DW$405	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$405, DW_AT_location[DW_OP_regx 0x25]
DW$406	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$406, DW_AT_location[DW_OP_regx 0x26]
DW$407	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$407, DW_AT_location[DW_OP_regx 0x27]
DW$408	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$408, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

