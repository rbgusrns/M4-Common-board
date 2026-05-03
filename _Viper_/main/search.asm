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

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("turn_decide"), DW_AT_symbol_name("_turn_decide")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$1


DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("line_info"), DW_AT_symbol_name("_line_info")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$4


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("read_vel_rom"), DW_AT_symbol_name("_read_vel_rom")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("make_position"), DW_AT_symbol_name("_make_position")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)

DW$8	.dwtag  DW_TAG_subprogram, DW_AT_name("read_acc_rom"), DW_AT_symbol_name("_read_acc_rom")
	.dwattr DW$8, DW_AT_declaration(0x01)
	.dwattr DW$8, DW_AT_external(0x01)

DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$9


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("Handle"), DW_AT_symbol_name("_Handle")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("maxmin_read_rom"), DW_AT_symbol_name("_maxmin_read_rom")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("read_handle_acc_rom"), DW_AT_symbol_name("_read_handle_acc_rom")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)

DW$14	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$16	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$14


DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("move_to_move"), DW_AT_symbol_name("_move_to_move")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$19	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$20	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$21	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$17


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("write_mark_cnt_rom"), DW_AT_symbol_name("_write_mark_cnt_rom")
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("read_end_acc_rom"), DW_AT_symbol_name("_read_end_acc_rom")
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("write_line_info_rom"), DW_AT_symbol_name("_write_line_info_rom")
	.dwattr DW$25, DW_AT_declaration(0x01)
	.dwattr DW$25, DW_AT_external(0x01)

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("read_handle_dec_rom"), DW_AT_symbol_name("_read_handle_dec_rom")
	.dwattr DW$26, DW_AT_declaration(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
DW$27	.dwtag  DW_TAG_variable, DW_AT_name("g_Flag"), DW_AT_symbol_name("_g_Flag")
	.dwattr DW$27, DW_AT_type(*DW$T$113)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$28, DW_AT_type(*DW$T$20)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
DW$29	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_dec"), DW_AT_symbol_name("_g_i16_handle_dec")
	.dwattr DW$29, DW_AT_type(*DW$T$20)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_acc"), DW_AT_symbol_name("_g_i16_handle_acc")
	.dwattr DW$30, DW_AT_type(*DW$T$20)
	.dwattr DW$30, DW_AT_declaration(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
DW$31	.dwtag  DW_TAG_variable, DW_AT_name("U16_turnmark_cnt"), DW_AT_symbol_name("_U16_turnmark_cnt")
	.dwattr DW$31, DW_AT_type(*DW$T$77)
	.dwattr DW$31, DW_AT_declaration(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
DW$32	.dwtag  DW_TAG_variable, DW_AT_name("d"), DW_AT_symbol_name("_d")
	.dwattr DW$32, DW_AT_type(*DW$T$10)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$33, DW_AT_type(*DW$T$10)
	.dwattr DW$33, DW_AT_declaration(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
DW$34	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$34, DW_AT_type(*DW$T$10)
	.dwattr DW$34, DW_AT_declaration(0x01)
	.dwattr DW$34, DW_AT_external(0x01)

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("motor_vari_init"), DW_AT_symbol_name("_motor_vari_init")
	.dwattr DW$35, DW_AT_type(*DW$T$10)
	.dwattr DW$35, DW_AT_declaration(0x01)
	.dwattr DW$35, DW_AT_external(0x01)

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("line_out_func"), DW_AT_symbol_name("_line_out_func")
	.dwattr DW$36, DW_AT_type(*DW$T$10)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
DW$37	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_VEL_targetval"), DW_AT_symbol_name("_g_u32_VEL_targetval")
	.dwattr DW$37, DW_AT_type(*DW$T$83)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQmpy"), DW_AT_symbol_name("___IQmpy")
	.dwattr DW$38, DW_AT_type(*DW$T$12)
	.dwattr DW$38, DW_AT_declaration(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
DW$39	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$40	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$38

DW$42	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_lineout_cnt"), DW_AT_symbol_name("_g_int32_lineout_cnt")
	.dwattr DW$42, DW_AT_type(*DW$T$83)
	.dwattr DW$42, DW_AT_declaration(0x01)
	.dwattr DW$42, DW_AT_external(0x01)
DW$43	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_ACC_targetval"), DW_AT_symbol_name("_g_u32_ACC_targetval")
	.dwattr DW$43, DW_AT_type(*DW$T$83)
	.dwattr DW$43, DW_AT_declaration(0x01)
	.dwattr DW$43, DW_AT_external(0x01)
DW$44	.dwtag  DW_TAG_variable, DW_AT_name("g_fp32time"), DW_AT_symbol_name("_g_fp32time")
	.dwattr DW$44, DW_AT_type(*DW$T$85)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_L_index"), DW_AT_symbol_name("_g_u32_L_index")
	.dwattr DW$45, DW_AT_type(*DW$T$83)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("g_int32_isr_cnt"), DW_AT_symbol_name("_g_int32_isr_cnt")
	.dwattr DW$46, DW_AT_type(*DW$T$23)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("g_int32speed_up_cnt"), DW_AT_symbol_name("_g_int32speed_up_cnt")
	.dwattr DW$47, DW_AT_type(*DW$T$40)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
DW$48	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_R_index"), DW_AT_symbol_name("_g_u32_R_index")
	.dwattr DW$48, DW_AT_type(*DW$T$83)
	.dwattr DW$48, DW_AT_declaration(0x01)
	.dwattr DW$48, DW_AT_external(0x01)

DW$49	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$49, DW_AT_type(*DW$T$12)
	.dwattr DW$49, DW_AT_declaration(0x01)
	.dwattr DW$49, DW_AT_external(0x01)
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$49

DW$53	.dwtag  DW_TAG_variable, DW_AT_name("g_q15cross_dist"), DW_AT_symbol_name("_g_q15cross_dist")
	.dwattr DW$53, DW_AT_type(*DW$T$48)
	.dwattr DW$53, DW_AT_declaration(0x01)
	.dwattr DW$53, DW_AT_external(0x01)
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$54, DW_AT_type(*DW$T$17)
	.dwattr DW$54, DW_AT_declaration(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("g_q17_handle_dec"), DW_AT_symbol_name("_g_q17_handle_dec")
	.dwattr DW$55, DW_AT_type(*DW$T$19)
	.dwattr DW$55, DW_AT_declaration(0x01)
	.dwattr DW$55, DW_AT_external(0x01)
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("g_q17_handle_acc"), DW_AT_symbol_name("_g_q17_handle_acc")
	.dwattr DW$56, DW_AT_type(*DW$T$19)
	.dwattr DW$56, DW_AT_declaration(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$57, DW_AT_type(*DW$T$97)
	.dwattr DW$57, DW_AT_declaration(0x01)
	.dwattr DW$57, DW_AT_external(0x01)
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("g_pos"), DW_AT_symbol_name("_g_pos")
	.dwattr DW$58, DW_AT_type(*DW$T$109)
	.dwattr DW$58, DW_AT_declaration(0x01)
	.dwattr DW$58, DW_AT_external(0x01)
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("g_rmark"), DW_AT_symbol_name("_g_rmark")
	.dwattr DW$59, DW_AT_type(*DW$T$62)
	.dwattr DW$59, DW_AT_declaration(0x01)
	.dwattr DW$59, DW_AT_external(0x01)
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("g_lmark"), DW_AT_symbol_name("_g_lmark")
	.dwattr DW$60, DW_AT_type(*DW$T$62)
	.dwattr DW$60, DW_AT_declaration(0x01)
	.dwattr DW$60, DW_AT_external(0x01)
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$61, DW_AT_type(*DW$T$93)
	.dwattr DW$61, DW_AT_declaration(0x01)
	.dwattr DW$61, DW_AT_external(0x01)
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("LMotor"), DW_AT_symbol_name("_LMotor")
	.dwattr DW$62, DW_AT_type(*DW$T$110)
	.dwattr DW$62, DW_AT_declaration(0x01)
	.dwattr DW$62, DW_AT_external(0x01)
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("g_motor"), DW_AT_symbol_name("_g_motor")
	.dwattr DW$63, DW_AT_type(*DW$T$110)
	.dwattr DW$63, DW_AT_declaration(0x01)
	.dwattr DW$63, DW_AT_external(0x01)
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("RMotor"), DW_AT_symbol_name("_RMotor")
	.dwattr DW$64, DW_AT_type(*DW$T$110)
	.dwattr DW$64, DW_AT_declaration(0x01)
	.dwattr DW$64, DW_AT_external(0x01)
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("g_sen"), DW_AT_symbol_name("_g_sen")
	.dwattr DW$65, DW_AT_type(*DW$T$105)
	.dwattr DW$65, DW_AT_declaration(0x01)
	.dwattr DW$65, DW_AT_external(0x01)
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("search_info"), DW_AT_symbol_name("_search_info")
	.dwattr DW$66, DW_AT_type(*DW$T$100)
	.dwattr DW$66, DW_AT_declaration(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI56410 C:\Users\rbgus\AppData\Local\Temp\TI5644 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI5642 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI5646 --object_file search.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_race_stop_check

DW$67	.dwtag  DW_TAG_subprogram, DW_AT_name("race_stop_check"), DW_AT_symbol_name("_race_stop_check")
	.dwattr DW$67, DW_AT_low_pc(_race_stop_check)
	.dwattr DW$67, DW_AT_high_pc(0x00)
	.dwattr DW$67, DW_AT_begin_file("search.c")
	.dwattr DW$67, DW_AT_begin_line(0x61)
	.dwattr DW$67, DW_AT_begin_column(0x05)
	.dwpsn	"search.c",98,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _race_stop_check              FR SIZE:   4           *
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
_race_stop_check:
;*** 100	-----------------------    if ( !(*&g_Flag&0x40u) ) goto g13;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
;* AR5   assigned to C$1
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$68, DW_AT_type(*DW$T$94)
	.dwattr DW$68, DW_AT_location[DW_OP_reg14]
;* AR7   assigned to v$2
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$69, DW_AT_type(*DW$T$12)
	.dwattr DW$69, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to v$1
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$70, DW_AT_type(*DW$T$12)
	.dwattr DW$70, DW_AT_location[DW_OP_reg16]
;* AR4   assigned to K$12
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("K$12"), DW_AT_symbol_name("K$12")
	.dwattr DW$71, DW_AT_type(*DW$T$111)
	.dwattr DW$71, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to K$4
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("K$4"), DW_AT_symbol_name("K$4")
	.dwattr DW$72, DW_AT_type(*DW$T$111)
	.dwattr DW$72, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to K$0
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("K$0"), DW_AT_symbol_name("K$0")
	.dwattr DW$73, DW_AT_type(*DW$T$79)
	.dwattr DW$73, DW_AT_location[DW_OP_reg12]
	.dwpsn	"search.c",100,5
        MOVW      DP,#_g_Flag
        TBIT      @_g_Flag,#6           ; |100| 
        BF        L5,NTC                ; |100| 
        ; branchcc occurs ; |100| 
;*** 103	-----------------------    K$4 = &RMotor;
;*** 103	-----------------------    if ( (v$1 = (*K$4).iqNextV) >= 3932160L ) goto g13;
	.dwpsn	"search.c",103,2
        MOVB      XAR0,#8               ; |103| 
        MOVL      XAR4,#_RMotor         ; |103| 
        MOVL      XAR6,*+XAR4[AR0]      ; |103| 
        MOVL      XAR4,#3932160         ; |103| 
        MOVL      ACC,XAR4              ; |103| 
        CMPL      ACC,XAR6              ; |103| 
        BF        L5,LEQ                ; |103| 
        ; branchcc occurs ; |103| 
;*** 103	-----------------------    K$12 = &LMotor;
;*** 103	-----------------------    if ( (v$2 = (*K$12).iqNextV) >= 3932160L ) goto g13;
        MOVL      XAR4,#_LMotor         ; |103| 
        MOVL      XAR7,*+XAR4[AR0]      ; |103| 
        MOVL      XAR4,#3932160         ; |103| 
        MOVL      ACC,XAR4              ; |103| 
        CMPL      ACC,XAR7              ; |103| 
        BF        L5,LEQ                ; |103| 
        ; branchcc occurs ; |103| 
;*** 105	-----------------------    if ( v$1 == 0L ) goto g8;
;***  	-----------------------    #pragma LOOP_FLAGS(4352u)
	.dwpsn	"search.c",105,3
        MOVL      ACC,XAR6
        BF        L2,EQ                 ; |105| 
        ; branchcc occurs ; |105| 
L1:    
DW$L$_race_stop_check$5$B:
;***	-----------------------g6:
;*** 105	-----------------------    if ( v$2 == 0L ) goto g8;
	.dwpsn	"search.c",105,10
        MOVL      ACC,XAR7
        BF        L2,EQ                 ; |105| 
        ; branchcc occurs ; |105| 
DW$L$_race_stop_check$5$E:
DW$L$_race_stop_check$6$B:
;*** 107	-----------------------    RMotor.iqTargetV = LMotor.iqTargetV = 0L;
;*** 108	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0ff0uL;
;*** 108	-----------------------    if ( v$1 ) goto g6;
	.dwpsn	"search.c",107,10
        MOVB      ACC,#0
        MOVW      DP,#_LMotor+6
        MOVL      @_LMotor+6,ACC        ; |107| 
        MOVW      DP,#_RMotor+6
        MOVL      @_RMotor+6,ACC        ; |107| 
	.dwpsn	"search.c",108,13
        MOVW      DP,#_GpioDataRegs
        AND       @_GpioDataRegs,#4080  ; |108| 
        MOVL      ACC,XAR6
        BF        L1,NEQ                ; |108| 
        ; branchcc occurs ; |108| 
DW$L$_race_stop_check$6$E:
L2:    
;***	-----------------------g8:
;*** 112	-----------------------    K$0 = &g_Flag;
;*** 112	-----------------------    *K$0 &= 0xfffeu;
;*** 115	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 116	-----------------------    C$1 = &GpioDataRegs;
;*** 116	-----------------------    (*C$1).GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0ff0uL;
;*** 119	-----------------------    if ( !(*K$0&0x1000u) ) goto g13;
	.dwpsn	"search.c",112,3
        MOVL      XAR4,#_g_Flag         ; |112| 
        AND       *+XAR4[0],#0xfffe     ; |112| 
	.dwpsn	"search.c",115,3
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |115| 
	.dwpsn	"search.c",116,9
        MOVW      DP,#_GpioDataRegs
        MOVL      ACC,@_GpioDataRegs    ; |116| 
        AND       AL,#4080              ; |116| 
        MOVL      XAR5,#_GpioDataRegs   ; |116| 
        MOVL      *+XAR5[0],ACC         ; |116| 
	.dwpsn	"search.c",119,3
        TBIT      *+XAR4[0],#12         ; |119| 
        BF        L5,NTC                ; |119| 
        ; branchcc occurs ; |119| 
;*** 121	-----------------------    if ( !(*((volatile unsigned *)C$1+1)&0x4000u) ) goto g12;
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	"search.c",121,4
        TBIT      *+XAR5[1],#14         ; |121| 
        BF        L4,NTC                ; |121| 
        ; branchcc occurs ; |121| 
L3:    
DW$L$_race_stop_check$9$B:
;***	-----------------------g11:
;*** 123	-----------------------    VFDPrintf("MARK:%u", U16_turnmark_cnt);
;*** 123	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g11;
	.dwpsn	"search.c",123,14
        MOVW      DP,#_U16_turnmark_cnt
        MOVL      XAR4,#FSL1            ; |123| 
        MOV       AL,@_U16_turnmark_cnt ; |123| 
        MOVL      *-SP[2],XAR4          ; |123| 
        MOV       *-SP[3],AL            ; |123| 
        LCR       #_VFDPrintf           ; |123| 
        ; call occurs [#_VFDPrintf] ; |123| 
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |123| 
        BF        L3,TC                 ; |123| 
        ; branchcc occurs ; |123| 
DW$L$_race_stop_check$9$E:
L4:    
;***	-----------------------g12:
;*** 125	-----------------------    line_info(NULL);
;*** 126	-----------------------    write_mark_cnt_rom();
;*** 127	-----------------------    write_line_info_rom();
;*** 129	-----------------------    VFDPrintf("__SAVE__");
;*** 130	-----------------------    DSP28x_usDelay(0x1312cfeuL);
;*** 131	-----------------------    VFDPrintf("T:%3.2lf", g_fp32time);
	.dwpsn	"search.c",125,4
        MOVB      XAR4,#0
        LCR       #_line_info           ; |125| 
        ; call occurs [#_line_info] ; |125| 
	.dwpsn	"search.c",126,4
        LCR       #_write_mark_cnt_rom  ; |126| 
        ; call occurs [#_write_mark_cnt_rom] ; |126| 
	.dwpsn	"search.c",127,4
        LCR       #_write_line_info_rom ; |127| 
        ; call occurs [#_write_line_info_rom] ; |127| 
	.dwpsn	"search.c",129,4
        MOVL      XAR4,#FSL2            ; |129| 
        MOVL      *-SP[2],XAR4          ; |129| 
        LCR       #_VFDPrintf           ; |129| 
        ; call occurs [#_VFDPrintf] ; |129| 
	.dwpsn	"search.c",130,4
        MOV       AL,#11518
        MOV       AH,#305
        LCR       #_DSP28x_usDelay      ; |130| 
        ; call occurs [#_DSP28x_usDelay] ; |130| 
	.dwpsn	"search.c",131,4
        MOVW      DP,#_g_fp32time
        MOVL      XAR4,#FSL3            ; |131| 
        MOVL      ACC,@_g_fp32time      ; |131| 
        MOVL      *-SP[2],XAR4          ; |131| 
        MOVL      *-SP[4],ACC           ; |131| 
        LCR       #_VFDPrintf           ; |131| 
        ; call occurs [#_VFDPrintf] ; |131| 
L5:    
;***	-----------------------g13:
;*** 137	-----------------------    return 0;
	.dwpsn	"search.c",137,2
        MOVB      AL,#0
	.dwpsn	"search.c",138,1
        SUBB      SP,#4                 ; |137| 
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$74	.dwtag  DW_TAG_loop
	.dwattr DW$74, DW_AT_name("C:\project\_Viper_\main\search.asm:L3:1:1729866710")
	.dwattr DW$74, DW_AT_begin_file("search.c")
	.dwattr DW$74, DW_AT_begin_line(0x79)
	.dwattr DW$74, DW_AT_end_line(0x7c)
DW$75	.dwtag  DW_TAG_loop_range
	.dwattr DW$75, DW_AT_low_pc(DW$L$_race_stop_check$9$B)
	.dwattr DW$75, DW_AT_high_pc(DW$L$_race_stop_check$9$E)
	.dwendtag DW$74


DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("C:\project\_Viper_\main\search.asm:L1:1:1729866710")
	.dwattr DW$76, DW_AT_begin_file("search.c")
	.dwattr DW$76, DW_AT_begin_line(0x69)
	.dwattr DW$76, DW_AT_end_line(0x6d)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_race_stop_check$5$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_race_stop_check$5$E)
DW$78	.dwtag  DW_TAG_loop_range
	.dwattr DW$78, DW_AT_low_pc(DW$L$_race_stop_check$6$B)
	.dwattr DW$78, DW_AT_high_pc(DW$L$_race_stop_check$6$E)
	.dwendtag DW$76

	.dwattr DW$67, DW_AT_end_file("search.c")
	.dwattr DW$67, DW_AT_end_line(0x8a)
	.dwattr DW$67, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$67

	.sect	".text"
	.global	_search_race

DW$79	.dwtag  DW_TAG_subprogram, DW_AT_name("search_race"), DW_AT_symbol_name("_search_race")
	.dwattr DW$79, DW_AT_low_pc(_search_race)
	.dwattr DW$79, DW_AT_high_pc(0x00)
	.dwattr DW$79, DW_AT_begin_file("search.c")
	.dwattr DW$79, DW_AT_begin_line(0x9f)
	.dwattr DW$79, DW_AT_begin_column(0x06)
	.dwpsn	"search.c",160,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _search_race                  FR SIZE:  28           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 16 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_search_race:
;*** 161	-----------------------    a = 0;
;*** 162	-----------------------    motor_vari_init();
;*** 163	-----------------------    DSP28x_usDelay(9999998uL);
;*** 164	-----------------------    VFDPrintf("        ");
;*** 167	-----------------------    *&g_Flag |= 0x1000u;
;*** 169	-----------------------    U16_turnmark_cnt = 0u;
;*** 170	-----------------------    *&g_Flag &= 0xfff7u;
;*** 171	-----------------------    *&g_Flag &= 0xfffbu;
;*** 172	-----------------------    *&g_Flag &= 0xffdfu;
;*** 174	-----------------------    move_to_move(65536000L, 0L, (long)((long double)g_u32_VEL_targetval*1.31072e5L), (long)((long double)g_u32_VEL_targetval*1.31072e5L), (long)g_u32_ACC_targetval);
;*** 176	-----------------------    *&g_Flag |= 1u;
;*** 177	-----------------------    *&g_Flag |= 2u;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;***  	-----------------------    goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 4
	.dwcfa	0x1d, -6
        ADDB      SP,#24
	.dwcfa	0x1d, -30
;* AR1   assigned to K$26
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("K$26"), DW_AT_symbol_name("K$26")
	.dwattr DW$80, DW_AT_type(*DW$T$63)
	.dwattr DW$80, DW_AT_location[DW_OP_reg6]
;* AR3   assigned to K$25
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("K$25"), DW_AT_symbol_name("K$25")
	.dwattr DW$81, DW_AT_type(*DW$T$63)
	.dwattr DW$81, DW_AT_location[DW_OP_reg10]
	.dwpsn	"search.c",161,5
        MOVW      DP,#_a
        MOV       @_a,#0                ; |161| 
	.dwpsn	"search.c",162,5
        LCR       #_motor_vari_init     ; |162| 
        ; call occurs [#_motor_vari_init] ; |162| 
	.dwpsn	"search.c",163,5
        MOV       AL,#38526
        MOV       AH,#152
        LCR       #_DSP28x_usDelay      ; |163| 
        ; call occurs [#_DSP28x_usDelay] ; |163| 
	.dwpsn	"search.c",164,5
        MOVL      XAR4,#FSL4            ; |164| 
        MOVL      *-SP[2],XAR4          ; |164| 
        LCR       #_VFDPrintf           ; |164| 
        ; call occurs [#_VFDPrintf] ; |164| 
	.dwpsn	"search.c",167,5
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x1000      ; |167| 
	.dwpsn	"search.c",169,5
        MOVW      DP,#_U16_turnmark_cnt
        MOV       @_U16_turnmark_cnt,#0 ; |169| 
	.dwpsn	"search.c",170,5
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfff7      ; |170| 
	.dwpsn	"search.c",171,5
        AND       @_g_Flag,#0xfffb      ; |171| 
	.dwpsn	"search.c",172,5
        AND       @_g_Flag,#0xffdf      ; |172| 
	.dwpsn	"search.c",174,5
        MOVZ      AR6,SP                ; |174| 
        MOVW      DP,#_g_u32_VEL_targetval
        SUBB      XAR6,#24              ; |174| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |174| 
        LCR       #UL$$TOFD             ; |174| 
        ; call occurs [#UL$$TOFD] ; |174| 
        MOVZ      AR6,SP                ; |174| 
        MOVZ      AR4,SP                ; |174| 
        SUBB      XAR6,#20              ; |174| 
        SUBB      XAR4,#24              ; |174| 
        MOVL      XAR5,#FL1             ; |174| 
        LCR       #FD$$MPY              ; |174| 
        ; call occurs [#FD$$MPY] ; |174| 
        MOVZ      AR4,SP                ; |174| 
        SUBB      XAR4,#20              ; |174| 
        LCR       #FD$$TOL              ; |174| 
        ; call occurs [#FD$$TOL] ; |174| 
        MOVZ      AR6,SP                ; |174| 
        MOVL      XAR1,ACC              ; |174| 
        MOVW      DP,#_g_u32_VEL_targetval
        SUBB      XAR6,#16              ; |174| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |174| 
        LCR       #UL$$TOFD             ; |174| 
        ; call occurs [#UL$$TOFD] ; |174| 
        MOVZ      AR6,SP                ; |174| 
        MOVZ      AR4,SP                ; |174| 
        SUBB      XAR6,#12              ; |174| 
        SUBB      XAR4,#16              ; |174| 
        MOVL      XAR5,#FL1             ; |174| 
        LCR       #FD$$MPY              ; |174| 
        ; call occurs [#FD$$MPY] ; |174| 
        MOVZ      AR4,SP                ; |174| 
        SUBB      XAR4,#12              ; |174| 
        LCR       #FD$$TOL              ; |174| 
        ; call occurs [#FD$$TOL] ; |174| 
        MOVB      XAR6,#0
        MOVL      *-SP[2],XAR6          ; |174| 
        MOVL      *-SP[4],XAR1          ; |174| 
        MOVW      DP,#_g_u32_ACC_targetval
        MOVL      *-SP[6],ACC           ; |174| 
        MOVL      ACC,@_g_u32_ACC_targetval ; |174| 
        MOVL      *-SP[8],ACC           ; |174| 
        MOV       ACC,#2000 << 15
        LCR       #_move_to_move        ; |174| 
        ; call occurs [#_move_to_move] ; |174| 
	.dwpsn	"search.c",176,5
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0001      ; |176| 
	.dwpsn	"search.c",177,2
        MOVL      XAR3,#_g_rmark        ; |187| 
        OR        @_g_Flag,#0x0002      ; |177| 
        BF        L7,UNC
        ; branch occurs
L6:    
DW$L$_search_race$2$B:
;***	-----------------------g2:
;*** 196	-----------------------    g_int32_isr_cnt = 0uL;
;***	-----------------------g3:
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
	.dwpsn	"search.c",196,4
        MOVB      ACC,#0
        MOVW      DP,#_g_int32_isr_cnt
        MOVL      @_g_int32_isr_cnt,ACC ; |196| 
DW$L$_search_race$2$E:
L7:    
DW$L$_search_race$3$B:
;***	-----------------------g4:
;*** 183	-----------------------    make_position();
;*** 185	-----------------------    Handle();
;*** 187	-----------------------    K$26 = &g_lmark;
;*** 187	-----------------------    K$25 = &g_rmark;
;*** 187	-----------------------    (*K$26).iq17turnmark_dist = (*K$25).iq17turnmark_dist = __IQmpy(RMotor.iq17Turnmark_Check_Dist+LMotor.iq17Turnmark_Check_Dist, 65536L, 17);
;*** 190	-----------------------    turn_decide(K$26, K$25);
;*** 191	-----------------------    turn_decide(K$25, K$26);
;*** 193	-----------------------    if ( g_int32_isr_cnt == 0uL ) goto g4;
	.dwpsn	"search.c",183,3
        LCR       #_make_position       ; |183| 
        ; call occurs [#_make_position] ; |183| 
	.dwpsn	"search.c",185,3
        LCR       #_Handle              ; |185| 
        ; call occurs [#_Handle] ; |185| 
	.dwpsn	"search.c",187,3
        MOVW      DP,#_LMotor+26
        MOVL      ACC,@_LMotor+26       ; |187| 
        MOVL      XAR4,#_g_lmark        ; |187| 
        MOVW      DP,#_RMotor+26
        MOVL      XAR1,XAR4             ; |187| 
        ADDL      ACC,@_RMotor+26       ; |187| 
        MOVL      XAR4,#65536           ; |187| 
        MOVL      XT,ACC                ; |187| 
        IMPYL     P,XT,XAR4             ; |187| 
        MOVL      XT,ACC                ; |187| 
        QMPYL     ACC,XT,XAR4           ; |187| 
        LSL64     ACC:P,#15             ; |187| 
        MOVL      *+XAR3[0],ACC         ; |187| 
        MOVL      *+XAR1[0],ACC         ; |187| 
	.dwpsn	"search.c",190,3
        MOVL      XAR5,XAR3             ; |190| 
        MOVL      XAR4,XAR1
        LCR       #_turn_decide         ; |190| 
        ; call occurs [#_turn_decide] ; |190| 
	.dwpsn	"search.c",191,3
        MOVL      XAR4,XAR3             ; |191| 
        MOVL      XAR5,XAR1             ; |191| 
        LCR       #_turn_decide         ; |191| 
        ; call occurs [#_turn_decide] ; |191| 
	.dwpsn	"search.c",193,3
        MOVW      DP,#_g_int32_isr_cnt
        MOVL      ACC,@_g_int32_isr_cnt ; |193| 
        BF        L7,EQ                 ; |193| 
        ; branchcc occurs ; |193| 
DW$L$_search_race$3$E:
DW$L$_search_race$4$B:
;*** 195	-----------------------    if ( line_out_func() ) goto g7;
	.dwpsn	"search.c",195,4
        LCR       #_line_out_func       ; |195| 
        ; call occurs [#_line_out_func] ; |195| 
        CMPB      AL,#0                 ; |195| 
        BF        L8,NEQ                ; |195| 
        ; branchcc occurs ; |195| 
DW$L$_search_race$4$E:
DW$L$_search_race$5$B:
;*** 195	-----------------------    if ( !race_stop_check() ) goto g2;
;***	-----------------------g7:
;***  	-----------------------    return;
        LCR       #_race_stop_check     ; |195| 
        ; call occurs [#_race_stop_check] ; |195| 
        CMPB      AL,#0                 ; |195| 
        BF        L6,EQ                 ; |195| 
        ; branchcc occurs ; |195| 
DW$L$_search_race$5$E:
L8:    
	.dwpsn	"search.c",201,1
        SUBB      SP,#24
	.dwcfa	0x1d, -6
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 11
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs

DW$82	.dwtag  DW_TAG_loop
	.dwattr DW$82, DW_AT_name("C:\project\_Viper_\main\search.asm:L7:1:1729866710")
	.dwattr DW$82, DW_AT_begin_file("search.c")
	.dwattr DW$82, DW_AT_begin_line(0xb7)
	.dwattr DW$82, DW_AT_end_line(0xc4)
DW$83	.dwtag  DW_TAG_loop_range
	.dwattr DW$83, DW_AT_low_pc(DW$L$_search_race$3$B)
	.dwattr DW$83, DW_AT_high_pc(DW$L$_search_race$3$E)
DW$84	.dwtag  DW_TAG_loop_range
	.dwattr DW$84, DW_AT_low_pc(DW$L$_search_race$4$B)
	.dwattr DW$84, DW_AT_high_pc(DW$L$_search_race$4$E)
DW$85	.dwtag  DW_TAG_loop_range
	.dwattr DW$85, DW_AT_low_pc(DW$L$_search_race$5$B)
	.dwattr DW$85, DW_AT_high_pc(DW$L$_search_race$5$E)
DW$86	.dwtag  DW_TAG_loop_range
	.dwattr DW$86, DW_AT_low_pc(DW$L$_search_race$2$B)
	.dwattr DW$86, DW_AT_high_pc(DW$L$_search_race$2$E)
	.dwendtag DW$82

	.dwattr DW$79, DW_AT_end_file("search.c")
	.dwattr DW$79, DW_AT_end_line(0xc9)
	.dwattr DW$79, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$79

	.sect	".text"
	.global	_lineout

DW$87	.dwtag  DW_TAG_subprogram, DW_AT_name("lineout"), DW_AT_symbol_name("_lineout")
	.dwattr DW$87, DW_AT_low_pc(_lineout)
	.dwattr DW$87, DW_AT_high_pc(0x00)
	.dwattr DW$87, DW_AT_begin_file("search.c")
	.dwattr DW$87, DW_AT_begin_line(0x8d)
	.dwattr DW$87, DW_AT_begin_column(0x05)
	.dwpsn	"search.c",142,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _lineout                      FR SIZE:   0           *
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
_lineout:
;*** 144	-----------------------    if ( g_pos.iq10temp_position >= 16384000L ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to C$1
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$88, DW_AT_type(*DW$T$82)
	.dwattr DW$88, DW_AT_location[DW_OP_reg12]
	.dwpsn	"search.c",144,2
        MOV       AL,#0
        MOVW      DP,#_g_pos+10
        MOV       AH,#250
        CMPL      ACC,@_g_pos+10        ; |144| 
        BF        L9,LEQ                ; |144| 
        ; branchcc occurs ; |144| 
;*** 144	-----------------------    if ( g_pos.iq10temp_position > (-16384000L) ) goto g7;
        SETC      SXM
        MOV       ACC,#-500 << 15
        CMPL      ACC,@_g_pos+10        ; |144| 
        BF        L10,LT                ; |144| 
        ; branchcc occurs ; |144| 
L9:    
;***	-----------------------g3:
;*** 144	-----------------------    C$1 = &((volatile long *)g_sen)[0];
;*** 144	-----------------------    if ( C$1[46] ) goto g7;
        MOVB      XAR0,#92              ; |144| 
        MOVL      XAR4,#_g_sen          ; |144| 
        MOVL      ACC,*+XAR4[AR0]       ; |144| 
        BF        L10,NEQ               ; |144| 
        ; branchcc occurs ; |144| 
;*** 144	-----------------------    if ( C$1[53] ) goto g7;
        MOVB      XAR0,#106             ; |144| 
        MOVL      ACC,*+XAR4[AR0]       ; |144| 
        BF        L10,NEQ               ; |144| 
        ; branchcc occurs ; |144| 
;*** 144	-----------------------    if ( C$1[60] ) goto g7;
        MOVB      XAR0,#120             ; |144| 
        MOVL      ACC,*+XAR4[AR0]       ; |144| 
        BF        L10,NEQ               ; |144| 
        ; branchcc occurs ; |144| 
;*** 144	-----------------------    if ( C$1[67] == 0L ) goto g8;
        MOVB      XAR0,#134             ; |144| 
        MOVL      ACC,*+XAR4[AR0]       ; |144| 
        BF        L11,EQ                ; |144| 
        ; branchcc occurs ; |144| 
L10:    
;***	-----------------------g7:
;*** 155	-----------------------    return 0;
	.dwpsn	"search.c",155,7
        MOVB      AL,#0
        BF        L12,UNC               ; |155| 
        ; branch occurs ; |155| 
L11:    
;***	-----------------------g8:
;*** 147	-----------------------    *&g_Flag |= 0x20u;
;*** 149	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 150	-----------------------    GpioDataRegs.GPADAT.all = GpioDataRegs.GPADAT.all&0xffff0ff0uL;
;*** 152	-----------------------    return *&g_Flag>>5&1u;
	.dwpsn	"search.c",147,2
        MOVW      DP,#_g_Flag
        OR        @_g_Flag,#0x0020      ; |147| 
	.dwpsn	"search.c",149,2
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |149| 
	.dwpsn	"search.c",150,2
        MOVW      DP,#_GpioDataRegs
        AND       @_GpioDataRegs,#4080  ; |150| 
	.dwpsn	"search.c",152,2
        MOVW      DP,#_g_Flag
        AND       AL,@_g_Flag,#0x0020   ; |152| 
        LSR       AL,5                  ; |152| 
L12:    
	.dwpsn	"search.c",156,1
        LRETR
        ; return occurs
	.dwattr DW$87, DW_AT_end_file("search.c")
	.dwattr DW$87, DW_AT_end_line(0x9c)
	.dwattr DW$87, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$87

	.sect	".text"
	.global	_Race_Init

DW$89	.dwtag  DW_TAG_subprogram, DW_AT_name("Race_Init"), DW_AT_symbol_name("_Race_Init")
	.dwattr DW$89, DW_AT_low_pc(_Race_Init)
	.dwattr DW$89, DW_AT_high_pc(0x00)
	.dwattr DW$89, DW_AT_begin_file("search.c")
	.dwattr DW$89, DW_AT_begin_line(0x13)
	.dwattr DW$89, DW_AT_begin_column(0x06)
	.dwpsn	"search.c",20,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Race_Init                    FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_Race_Init:
;*** 22	-----------------------    *&g_Flag &= 0xfffdu;
;*** 23	-----------------------    *&g_Flag &= 0xfeffu;
;*** 24	-----------------------    *&g_Flag &= 0xff7fu;
;*** 26	-----------------------    g_int32_lineout_cnt = 0uL;
;*** 27	-----------------------    g_int32_isr_cnt = 0uL;
;*** 28	-----------------------    g_int32speed_up_cnt = 0L;
;*** 30	-----------------------    *&g_Flag &= 0xfffeu;
;*** 31	-----------------------    *&g_Flag &= 0xfff7u;
;*** 32	-----------------------    *&g_Flag &= 0xffefu;
;*** 33	-----------------------    *&g_Flag &= 0xffbfu;
;*** 34	-----------------------    g_rmark.u16cross_flag = 0u;
;*** 35	-----------------------    g_lmark.u16cross_flag = 0u;
;*** 36	-----------------------    g_rmark.u16single_flag = 0u;
;*** 37	-----------------------    g_lmark.u16single_flag = 0u;
;*** 38	-----------------------    *&g_Flag &= 0xfffdu;
;*** 39	-----------------------    *&g_Flag &= 0xbfffu;
;*** 40	-----------------------    *&g_Flag &= 0xefffu;
;*** 41	-----------------------    *&g_Flag &= 0xdfffu;
;*** 43	-----------------------    *&g_Flag &= 0xf7ffu;
;*** 44	-----------------------    *&g_Flag &= 0xfdffu;
;*** 45	-----------------------    *&g_Flag &= 0xfbffu;
;*** 48	-----------------------    g_motor.iq15GoneDist = RMotor.iq15GoneDist = LMotor.iq15GoneDist = 0L;
;*** 49	-----------------------    g_motor.iq17Turnmark_Check_Dist = RMotor.iq17Turnmark_Check_Dist = LMotor.iq17Turnmark_Check_Dist = 0L;
;*** 50	-----------------------    g_motor.iq15Cross_Check_Dist = RMotor.iq15Cross_Check_Dist = LMotor.iq15Cross_Check_Dist = 0L;
;*** 51	-----------------------    RMotor.iqNextV = LMotor.iqNextV = 0L;
;*** 53	-----------------------    g_u32_L_index = 0uL;
;*** 54	-----------------------    g_u32_R_index = 0uL;
;*** 55	-----------------------    g_q15cross_dist = 0L;
;*** 57	-----------------------    i = 0u;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    K$45 = &search_info[0];
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
;* AR4   assigned to K$45
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("K$45"), DW_AT_symbol_name("K$45")
	.dwattr DW$90, DW_AT_type(*DW$T$102)
	.dwattr DW$90, DW_AT_location[DW_OP_reg12]
	.dwpsn	"search.c",22,5
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffd      ; |22| 
	.dwpsn	"search.c",23,2
        AND       @_g_Flag,#0xfeff      ; |23| 
	.dwpsn	"search.c",24,2
        AND       @_g_Flag,#0xff7f      ; |24| 
	.dwpsn	"search.c",26,5
        MOVB      ACC,#0
        MOVW      DP,#_g_int32_lineout_cnt
        MOVL      @_g_int32_lineout_cnt,ACC ; |26| 
	.dwpsn	"search.c",27,5
        MOVW      DP,#_g_int32_isr_cnt
        MOVL      @_g_int32_isr_cnt,ACC ; |27| 
	.dwpsn	"search.c",28,5
        MOVW      DP,#_g_int32speed_up_cnt
        MOVL      @_g_int32speed_up_cnt,ACC ; |28| 
	.dwpsn	"search.c",30,2
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffe      ; |30| 
	.dwpsn	"search.c",31,5
        AND       @_g_Flag,#0xfff7      ; |31| 
	.dwpsn	"search.c",32,5
        AND       @_g_Flag,#0xffef      ; |32| 
	.dwpsn	"search.c",33,5
        AND       @_g_Flag,#0xffbf      ; |33| 
	.dwpsn	"search.c",34,5
        MOVW      DP,#_g_rmark+12
        MOV       @_g_rmark+12,#0       ; |34| 
	.dwpsn	"search.c",35,5
        MOVW      DP,#_g_lmark+12
        MOV       @_g_lmark+12,#0       ; |35| 
	.dwpsn	"search.c",36,5
        MOVW      DP,#_g_rmark+11
        MOV       @_g_rmark+11,#0       ; |36| 
	.dwpsn	"search.c",37,5
        MOVW      DP,#_g_lmark+11
        MOV       @_g_lmark+11,#0       ; |37| 
	.dwpsn	"search.c",38,2
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffd      ; |38| 
	.dwpsn	"search.c",39,2
        AND       @_g_Flag,#0xbfff      ; |39| 
	.dwpsn	"search.c",40,2
        AND       @_g_Flag,#0xefff      ; |40| 
	.dwpsn	"search.c",41,5
        AND       @_g_Flag,#0xdfff      ; |41| 
	.dwpsn	"search.c",43,2
        AND       @_g_Flag,#0xf7ff      ; |43| 
	.dwpsn	"search.c",44,2
        AND       @_g_Flag,#0xfdff      ; |44| 
	.dwpsn	"search.c",45,2
        AND       @_g_Flag,#0xfbff      ; |45| 
	.dwpsn	"search.c",48,5
        MOVW      DP,#_LMotor+28
        MOVL      @_LMotor+28,ACC       ; |48| 
        MOVW      DP,#_RMotor+28
        MOVL      @_RMotor+28,ACC       ; |48| 
        MOVW      DP,#_g_motor+28
        MOVL      @_g_motor+28,ACC      ; |48| 
	.dwpsn	"search.c",49,5
        MOVW      DP,#_LMotor+26
        MOVB      ACC,#0
        MOVL      @_LMotor+26,ACC       ; |49| 
        MOVW      DP,#_RMotor+26
        MOVL      @_RMotor+26,ACC       ; |49| 
        MOVW      DP,#_g_motor+26
        MOVL      @_g_motor+26,ACC      ; |49| 
	.dwpsn	"search.c",50,5
        MOVW      DP,#_LMotor+30
        MOVB      ACC,#0
        MOVL      @_LMotor+30,ACC       ; |50| 
        MOVW      DP,#_RMotor+30
        MOVL      @_RMotor+30,ACC       ; |50| 
        MOVW      DP,#_g_motor+30
        MOVL      @_g_motor+30,ACC      ; |50| 
	.dwpsn	"search.c",51,5
        MOVW      DP,#_LMotor+8
        MOVB      ACC,#0
        MOVL      @_LMotor+8,ACC        ; |51| 
        MOVW      DP,#_RMotor+8
        MOVL      @_RMotor+8,ACC        ; |51| 
	.dwpsn	"search.c",53,5
        MOVW      DP,#_g_u32_L_index
        MOVL      @_g_u32_L_index,ACC   ; |53| 
	.dwpsn	"search.c",54,5
        MOVW      DP,#_g_u32_R_index
        MOVL      @_g_u32_R_index,ACC   ; |54| 
	.dwpsn	"search.c",55,2
        MOVW      DP,#_g_q15cross_dist
        MOVL      @_g_q15cross_dist,ACC ; |55| 
	.dwpsn	"search.c",57,6
        MOVW      DP,#_i
        MOV       T,#26                 ; |59| 
        MOV       @_i,#0                ; |57| 
        MOVL      XAR4,#_search_info
L13:    
DW$L$_Race_Init$2$B:
;***	-----------------------g2:
;*** 59	-----------------------    (K$45[(long)i]).int32turn_way = 0L;
;*** 57	-----------------------    if ( (++i) < 256u ) goto g2;
	.dwpsn	"search.c",59,3
        MOVL      XAR5,XAR4             ; |59| 
        MPYXU     ACC,T,@_i             ; |59| 
        ADDL      XAR5,ACC
        MOVB      ACC,#0
        MOVL      *+XAR5[2],ACC         ; |59| 
	.dwpsn	"search.c",57,18
        INC       @_i                   ; |57| 
        CMP       @_i,#256              ; |57| 
        BF        L13,LO                ; |57| 
        ; branchcc occurs ; |57| 
DW$L$_Race_Init$2$E:
;*** 61	-----------------------    U16_turnmark_cnt = 0u;
;*** 63	-----------------------    read_acc_rom();
;*** 64	-----------------------    read_vel_rom();
;*** 65	-----------------------    read_end_acc_rom();
;*** 66	-----------------------    read_handle_acc_rom();
;*** 67	-----------------------    read_handle_dec_rom();
;*** 68	-----------------------    maxmin_read_rom();
;*** 70	-----------------------    g_q17_handle_acc = __IQxmpy((long)((long double)g_i16_handle_acc*1.31072e5L), 1L, 5);
;*** 71	-----------------------    g_q17_handle_dec = __IQxmpy((long)((long double)g_i16_handle_dec*1.31072e5L), 13L, 5);
	.dwpsn	"search.c",61,2
        MOVW      DP,#_U16_turnmark_cnt
        MOV       @_U16_turnmark_cnt,#0 ; |61| 
	.dwpsn	"search.c",63,2
        LCR       #_read_acc_rom        ; |63| 
        ; call occurs [#_read_acc_rom] ; |63| 
	.dwpsn	"search.c",64,5
        LCR       #_read_vel_rom        ; |64| 
        ; call occurs [#_read_vel_rom] ; |64| 
	.dwpsn	"search.c",65,2
        LCR       #_read_end_acc_rom    ; |65| 
        ; call occurs [#_read_end_acc_rom] ; |65| 
	.dwpsn	"search.c",66,2
        LCR       #_read_handle_acc_rom ; |66| 
        ; call occurs [#_read_handle_acc_rom] ; |66| 
	.dwpsn	"search.c",67,5
        LCR       #_read_handle_dec_rom ; |67| 
        ; call occurs [#_read_handle_dec_rom] ; |67| 
	.dwpsn	"search.c",68,2
        LCR       #_maxmin_read_rom     ; |68| 
        ; call occurs [#_maxmin_read_rom] ; |68| 
	.dwpsn	"search.c",70,5
        MOVZ      AR6,SP                ; |70| 
        MOVW      DP,#_g_i16_handle_acc
        SUBB      XAR6,#8               ; |70| 
        MOV       AL,@_g_i16_handle_acc ; |70| 
        LCR       #U$$TOFD              ; |70| 
        ; call occurs [#U$$TOFD] ; |70| 
        MOVZ      AR6,SP                ; |70| 
        MOVZ      AR4,SP                ; |70| 
        SUBB      XAR6,#4               ; |70| 
        SUBB      XAR4,#8               ; |70| 
        MOVL      XAR5,#FL1             ; |70| 
        LCR       #FD$$MPY              ; |70| 
        ; call occurs [#FD$$MPY] ; |70| 
        MOVZ      AR4,SP                ; |70| 
        SUBB      XAR4,#4               ; |70| 
        LCR       #FD$$TOL              ; |70| 
        ; call occurs [#FD$$TOL] ; |70| 
        MOVL      XT,ACC                ; |70| 
        MOVB      ACC,#1
        IMPYL     P,XT,ACC              ; |70| 
        QMPYL     ACC,XT,ACC            ; |70| 
        MOVW      DP,#_g_q17_handle_acc
        LSL64     ACC:P,#5              ; |70| 
        MOVL      @_g_q17_handle_acc,ACC ; |70| 
	.dwpsn	"search.c",71,2
        MOVZ      AR6,SP                ; |71| 
        MOVW      DP,#_g_i16_handle_dec
        SUBB      XAR6,#8               ; |71| 
        MOV       AL,@_g_i16_handle_dec ; |71| 
        LCR       #U$$TOFD              ; |71| 
        ; call occurs [#U$$TOFD] ; |71| 
        MOVZ      AR6,SP                ; |71| 
        MOVZ      AR4,SP                ; |71| 
        SUBB      XAR6,#4               ; |71| 
        SUBB      XAR4,#8               ; |71| 
        MOVL      XAR5,#FL1             ; |71| 
        LCR       #FD$$MPY              ; |71| 
        ; call occurs [#FD$$MPY] ; |71| 
;*** 71	-----------------------    return;
        MOVZ      AR4,SP                ; |71| 
        SUBB      XAR4,#4               ; |71| 
        LCR       #FD$$TOL              ; |71| 
        ; call occurs [#FD$$TOL] ; |71| 
        MOVL      XT,ACC                ; |71| 
        MOVB      ACC,#13
        IMPYL     P,XT,ACC              ; |71| 
        QMPYL     ACC,XT,ACC            ; |71| 
        LSL64     ACC:P,#5              ; |71| 
        MOVW      DP,#_g_q17_handle_dec
        MOVL      @_g_q17_handle_dec,ACC ; |71| 
	.dwpsn	"search.c",73,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$91	.dwtag  DW_TAG_loop
	.dwattr DW$91, DW_AT_name("C:\project\_Viper_\main\search.asm:L13:1:1729866710")
	.dwattr DW$91, DW_AT_begin_file("search.c")
	.dwattr DW$91, DW_AT_begin_line(0x39)
	.dwattr DW$91, DW_AT_end_line(0x3c)
DW$92	.dwtag  DW_TAG_loop_range
	.dwattr DW$92, DW_AT_low_pc(DW$L$_Race_Init$2$B)
	.dwattr DW$92, DW_AT_high_pc(DW$L$_Race_Init$2$E)
	.dwendtag DW$91

	.dwattr DW$89, DW_AT_end_file("search.c")
	.dwattr DW$89, DW_AT_end_line(0x49)
	.dwattr DW$89, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$89

	.sect	".text"
	.global	_F_1st_run

DW$93	.dwtag  DW_TAG_subprogram, DW_AT_name("F_1st_run"), DW_AT_symbol_name("_F_1st_run")
	.dwattr DW$93, DW_AT_low_pc(_F_1st_run)
	.dwattr DW$93, DW_AT_high_pc(0x00)
	.dwattr DW$93, DW_AT_begin_file("search.c")
	.dwattr DW$93, DW_AT_begin_line(0x4c)
	.dwattr DW$93, DW_AT_begin_column(0x06)
	.dwpsn	"search.c",77,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_1st_run                    FR SIZE:   2           *
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
_F_1st_run:
;*** 78	-----------------------    a = 0;
;*** 79	-----------------------    b = 0;
;*** 80	-----------------------    c = 0.0F;
;*** 81	-----------------------    d = 0;
;*** 82	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 83	-----------------------    VFDPrintf("_ _GO_ _");
;*** 84	-----------------------    DSP28x_usDelay(1999998uL);
;*** 86	-----------------------    search_race();
;*** 88	-----------------------    VFDPrintf("__END___");
;*** 92	-----------------------    a = 1;
;*** 93	-----------------------    b = 2;
;*** 93	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"search.c",78,2
        MOVW      DP,#_a
        MOV       @_a,#0                ; |78| 
	.dwpsn	"search.c",79,2
        MOVW      DP,#_b
        MOV       @_b,#0                ; |79| 
	.dwpsn	"search.c",80,2
        MOV       AL,#0
        MOV       AH,#0
        MOVW      DP,#_c
        MOVL      @_c,ACC               ; |80| 
	.dwpsn	"search.c",81,2
        MOVW      DP,#_d
        MOV       @_d,#0                ; |81| 
	.dwpsn	"search.c",82,2
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |82| 
	.dwpsn	"search.c",83,2
        MOVL      XAR4,#FSL5            ; |83| 
        MOVL      *-SP[2],XAR4          ; |83| 
        LCR       #_VFDPrintf           ; |83| 
        ; call occurs [#_VFDPrintf] ; |83| 
	.dwpsn	"search.c",84,2
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |84| 
        ; call occurs [#_DSP28x_usDelay] ; |84| 
	.dwpsn	"search.c",86,2
        LCR       #_search_race         ; |86| 
        ; call occurs [#_search_race] ; |86| 
	.dwpsn	"search.c",88,2
        MOVL      XAR4,#FSL6            ; |88| 
        MOVL      *-SP[2],XAR4          ; |88| 
        LCR       #_VFDPrintf           ; |88| 
        ; call occurs [#_VFDPrintf] ; |88| 
	.dwpsn	"search.c",92,2
        MOVW      DP,#_a
        MOV       @_a,#1                ; |92| 
	.dwpsn	"search.c",93,2
        MOVW      DP,#_b
        MOV       @_b,#2                ; |93| 
	.dwpsn	"search.c",94,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$93, DW_AT_end_file("search.c")
	.dwattr DW$93, DW_AT_end_line(0x5e)
	.dwattr DW$93, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$93

;***************************************************************
;* FLOATING-POINT CONSTANTS                                    *
;***************************************************************
	.sect	".econst"
	.align	2
FL1:	.xldouble	1.31072000000000000000e+05
;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"MARK:%u",0
	.align	2
FSL2:	.string	"__SAVE__",0
	.align	2
FSL3:	.string	"T:%3.2lf",0
	.align	2
FSL4:	.string	"        ",0
	.align	2
FSL5:	.string	"_ _GO_ _",0
	.align	2
FSL6:	.string	"__END___",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_turn_decide
	.global	_line_info
	.global	_read_vel_rom
	.global	_make_position
	.global	_read_acc_rom
	.global	_DSP28x_usDelay
	.global	_Handle
	.global	_maxmin_read_rom
	.global	_read_handle_acc_rom
	.global	_VFDPrintf
	.global	_move_to_move
	.global	_write_mark_cnt_rom
	.global	_read_end_acc_rom
	.global	_write_line_info_rom
	.global	_read_handle_dec_rom
	.global	_g_Flag
	.global	_i
	.global	_g_i16_handle_dec
	.global	_g_i16_handle_acc
	.global	_U16_turnmark_cnt
	.global	_d
	.global	_a
	.global	_b
	.global	_motor_vari_init
	.global	_line_out_func
	.global	_g_u32_VEL_targetval
	.global	_g_int32_lineout_cnt
	.global	_g_u32_ACC_targetval
	.global	_g_fp32time
	.global	_g_u32_L_index
	.global	_g_int32_isr_cnt
	.global	_g_int32speed_up_cnt
	.global	_g_u32_R_index
	.global	_g_q15cross_dist
	.global	_c
	.global	_g_q17_handle_dec
	.global	_g_q17_handle_acc
	.global	_CpuTimer0Regs
	.global	_g_pos
	.global	_g_rmark
	.global	_g_lmark
	.global	_GpioDataRegs
	.global	_LMotor
	.global	_g_motor
	.global	_RMotor
	.global	_g_sen
	.global	_search_info
	.global	FD$$MPY
	.global	UL$$TOFD
	.global	FD$$TOL
	.global	U$$TOFD

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$94	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$52)
DW$95	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$53


DW$T$57	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$96	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$97	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$98	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$99	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$55)
DW$100	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$56)
	.dwendtag DW$T$57


DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)

DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$101	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
DW$102	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$64


DW$T$66	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$66, DW_AT_language(DW_LANG_C)
DW$103	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$66


DW$T$68	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
	.dwendtag DW$T$68


DW$T$70	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$70, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)

DW$T$73	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)

DW$T$75	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$10)
	.dwattr DW$T$75, DW_AT_language(DW_LANG_C)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$105	.dwtag  DW_TAG_far_type
	.dwattr DW$105, DW_AT_type(*DW$T$20)
DW$T$77	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$77, DW_AT_type(*DW$105)
DW$T$79	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$78)
	.dwattr DW$T$79, DW_AT_address_class(0x16)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$106	.dwtag  DW_TAG_far_type
	.dwattr DW$106, DW_AT_type(*DW$T$19)
DW$T$55	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$55, DW_AT_type(*DW$106)
DW$T$40	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$40, DW_AT_language(DW_LANG_C)
DW$107	.dwtag  DW_TAG_far_type
	.dwattr DW$107, DW_AT_type(*DW$T$40)
DW$T$56	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$56, DW_AT_type(*DW$107)
DW$T$48	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$48, DW_AT_language(DW_LANG_C)

DW$T$80	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$108	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$109	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$110	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$80

DW$T$82	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$81)
	.dwattr DW$T$82, DW_AT_address_class(0x16)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$111	.dwtag  DW_TAG_far_type
	.dwattr DW$111, DW_AT_type(*DW$T$23)
DW$T$83	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$83, DW_AT_type(*DW$111)
DW$T$85	.dwtag  DW_TAG_typedef, DW_AT_name("float32"), DW_AT_type(*DW$T$16)
	.dwattr DW$T$85, DW_AT_language(DW_LANG_C)
DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x02)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("turnmark_t"), DW_AT_type(*DW$T$61)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$T$63	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$62)
	.dwattr DW$T$63, DW_AT_address_class(0x16)
DW$112	.dwtag  DW_TAG_far_type
	.dwattr DW$112, DW_AT_type(*DW$T$28)
DW$T$93	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$93, DW_AT_type(*DW$112)
DW$T$94	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$93)
	.dwattr DW$T$94, DW_AT_address_class(0x16)
DW$113	.dwtag  DW_TAG_far_type
	.dwattr DW$113, DW_AT_type(*DW$T$39)
DW$T$97	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$97, DW_AT_type(*DW$113)

DW$T$100	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$99)
	.dwattr DW$T$100, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$100, DW_AT_byte_size(0x1a00)
DW$114	.dwtag  DW_TAG_subrange_type
	.dwattr DW$114, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$100

DW$T$102	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$102, DW_AT_address_class(0x16)

DW$T$105	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$104)
	.dwattr DW$T$105, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$105, DW_AT_byte_size(0xe0)
DW$115	.dwtag  DW_TAG_subrange_type
	.dwattr DW$115, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$105

DW$T$109	.dwtag  DW_TAG_typedef, DW_AT_name("position_t"), DW_AT_type(*DW$T$108)
	.dwattr DW$T$109, DW_AT_language(DW_LANG_C)
DW$T$110	.dwtag  DW_TAG_typedef, DW_AT_name("MOTORCTRL"), DW_AT_type(*DW$T$49)
	.dwattr DW$T$110, DW_AT_language(DW_LANG_C)
DW$T$111	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$49)
	.dwattr DW$T$111, DW_AT_address_class(0x16)
DW$T$113	.dwtag  DW_TAG_typedef, DW_AT_name("bit_field_flag_t"), DW_AT_type(*DW$T$112)
	.dwattr DW$T$113, DW_AT_language(DW_LANG_C)
DW$T$52	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$51)
	.dwattr DW$T$52, DW_AT_address_class(0x16)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$116	.dwtag  DW_TAG_far_type
	.dwattr DW$116, DW_AT_type(*DW$T$11)
DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$78, DW_AT_type(*DW$116)
DW$117	.dwtag  DW_TAG_far_type
	.dwattr DW$117, DW_AT_type(*DW$T$12)
DW$T$81	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$81, DW_AT_type(*DW$117)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)
DW$118	.dwtag  DW_TAG_far_type
	.dwattr DW$118, DW_AT_type(*DW$T$21)
DW$T$61	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$61, DW_AT_type(*DW$118)

DW$T$28	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$28, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$28, DW_AT_byte_size(0x20)
DW$119	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$119, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$119, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$119, DW_AT_accessibility(DW_ACCESS_public)
DW$120	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$120, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$120, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$120, DW_AT_accessibility(DW_ACCESS_public)
DW$121	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$121, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$121, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$121, DW_AT_accessibility(DW_ACCESS_public)
DW$122	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$122, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$122, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$122, DW_AT_accessibility(DW_ACCESS_public)
DW$123	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$123, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$123, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$123, DW_AT_accessibility(DW_ACCESS_public)
DW$124	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$124, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$124, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$124, DW_AT_accessibility(DW_ACCESS_public)
DW$125	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$125, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$125, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$125, DW_AT_accessibility(DW_ACCESS_public)
DW$126	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$126, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$126, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$126, DW_AT_accessibility(DW_ACCESS_public)
DW$127	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$127, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$127, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$127, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$39, DW_AT_byte_size(0x08)
DW$128	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$30)
	.dwattr DW$128, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$128, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$128, DW_AT_accessibility(DW_ACCESS_public)
DW$129	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$129, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$129, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$129, DW_AT_accessibility(DW_ACCESS_public)
DW$130	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$130, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$130, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$130, DW_AT_accessibility(DW_ACCESS_public)
DW$131	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$131, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$131, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$131, DW_AT_accessibility(DW_ACCESS_public)
DW$132	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$132, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$132, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$132, DW_AT_accessibility(DW_ACCESS_public)
DW$133	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$133, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$133, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$133, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("first_race_info")
	.dwattr DW$T$42, DW_AT_byte_size(0x1a)
DW$134	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$134, DW_AT_name("int32dist"), DW_AT_symbol_name("_int32dist")
	.dwattr DW$134, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$134, DW_AT_accessibility(DW_ACCESS_public)
DW$135	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$135, DW_AT_name("int32turn_way"), DW_AT_symbol_name("_int32turn_way")
	.dwattr DW$135, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$135, DW_AT_accessibility(DW_ACCESS_public)
DW$136	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$136, DW_AT_name("int32L_dist"), DW_AT_symbol_name("_int32L_dist")
	.dwattr DW$136, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$136, DW_AT_accessibility(DW_ACCESS_public)
DW$137	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$137, DW_AT_name("int32R_dist"), DW_AT_symbol_name("_int32R_dist")
	.dwattr DW$137, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$137, DW_AT_accessibility(DW_ACCESS_public)
DW$138	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$138, DW_AT_name("int32cross_check_dist"), DW_AT_symbol_name("_int32cross_check_dist")
	.dwattr DW$138, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$138, DW_AT_accessibility(DW_ACCESS_public)
DW$139	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$139, DW_AT_name("int32turn_dir"), DW_AT_symbol_name("_int32turn_dir")
	.dwattr DW$139, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$139, DW_AT_accessibility(DW_ACCESS_public)
DW$140	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$140, DW_AT_name("int32turn_cnt"), DW_AT_symbol_name("_int32turn_cnt")
	.dwattr DW$140, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$140, DW_AT_accessibility(DW_ACCESS_public)
DW$141	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$141, DW_AT_name("int32accel"), DW_AT_symbol_name("_int32accel")
	.dwattr DW$141, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$141, DW_AT_accessibility(DW_ACCESS_public)
DW$142	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$142, DW_AT_name("iq7in_vel"), DW_AT_symbol_name("_iq7in_vel")
	.dwattr DW$142, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$142, DW_AT_accessibility(DW_ACCESS_public)
DW$143	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$143, DW_AT_name("iq7vel"), DW_AT_symbol_name("_iq7vel")
	.dwattr DW$143, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$143, DW_AT_accessibility(DW_ACCESS_public)
DW$144	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$144, DW_AT_name("iq7out_vel"), DW_AT_symbol_name("_iq7out_vel")
	.dwattr DW$144, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$144, DW_AT_accessibility(DW_ACCESS_public)
DW$145	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$145, DW_AT_name("iq7dec_dist"), DW_AT_symbol_name("_iq7dec_dist")
	.dwattr DW$145, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$145, DW_AT_accessibility(DW_ACCESS_public)
DW$146	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$146, DW_AT_name("iq7m_dist"), DW_AT_symbol_name("_iq7m_dist")
	.dwattr DW$146, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$146, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42

DW$T$99	.dwtag  DW_TAG_typedef, DW_AT_name("race_info"), DW_AT_type(*DW$T$42)
	.dwattr DW$T$99, DW_AT_language(DW_LANG_C)
DW$T$104	.dwtag  DW_TAG_typedef, DW_AT_name("sen_t"), DW_AT_type(*DW$T$103)
	.dwattr DW$T$104, DW_AT_language(DW_LANG_C)
DW$147	.dwtag  DW_TAG_far_type
	.dwattr DW$147, DW_AT_type(*DW$T$46)
DW$T$108	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$108, DW_AT_type(*DW$147)

DW$T$49	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$49, DW_AT_byte_size(0x2e)
DW$148	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$148, DW_AT_name("iqTargetA"), DW_AT_symbol_name("_iqTargetA")
	.dwattr DW$148, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$148, DW_AT_accessibility(DW_ACCESS_public)
DW$149	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$149, DW_AT_name("iqDist"), DW_AT_symbol_name("_iqDist")
	.dwattr DW$149, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$149, DW_AT_accessibility(DW_ACCESS_public)
DW$150	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$150, DW_AT_name("iqVelo"), DW_AT_symbol_name("_iqVelo")
	.dwattr DW$150, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$150, DW_AT_accessibility(DW_ACCESS_public)
DW$151	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$151, DW_AT_name("iqTargetV"), DW_AT_symbol_name("_iqTargetV")
	.dwattr DW$151, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$151, DW_AT_accessibility(DW_ACCESS_public)
DW$152	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$152, DW_AT_name("iqNextV"), DW_AT_symbol_name("_iqNextV")
	.dwattr DW$152, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$152, DW_AT_accessibility(DW_ACCESS_public)
DW$153	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$153, DW_AT_name("iqAmpyS"), DW_AT_symbol_name("_iqAmpyS")
	.dwattr DW$153, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$153, DW_AT_accessibility(DW_ACCESS_public)
DW$154	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$154, DW_AT_name("iqHandle"), DW_AT_symbol_name("_iqHandle")
	.dwattr DW$154, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$154, DW_AT_accessibility(DW_ACCESS_public)
DW$155	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$155, DW_AT_name("iqTotalDis"), DW_AT_symbol_name("_iqTotalDis")
	.dwattr DW$155, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$155, DW_AT_accessibility(DW_ACCESS_public)
DW$156	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$156, DW_AT_name("iq24TargetA_1"), DW_AT_symbol_name("_iq24TargetA_1")
	.dwattr DW$156, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$156, DW_AT_accessibility(DW_ACCESS_public)
DW$157	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$47)
	.dwattr DW$157, DW_AT_name("iq24TimeValue"), DW_AT_symbol_name("_iq24TimeValue")
	.dwattr DW$157, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$157, DW_AT_accessibility(DW_ACCESS_public)
DW$158	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$158, DW_AT_name("u32_Period_Cnt"), DW_AT_symbol_name("_u32_Period_Cnt")
	.dwattr DW$158, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$158, DW_AT_accessibility(DW_ACCESS_public)
DW$159	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$159, DW_AT_name("u32_Period"), DW_AT_symbol_name("_u32_Period")
	.dwattr DW$159, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$159, DW_AT_accessibility(DW_ACCESS_public)
DW$160	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$160, DW_AT_name("u16_pPeriod"), DW_AT_symbol_name("_u16_pPeriod")
	.dwattr DW$160, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$160, DW_AT_accessibility(DW_ACCESS_public)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$162, DW_AT_name("iq15GoneDist"), DW_AT_symbol_name("_iq15GoneDist")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$48)
	.dwattr DW$163, DW_AT_name("iq15Cross_Check_Dist"), DW_AT_symbol_name("_iq15Cross_Check_Dist")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("iq17Start_Check_Dist"), DW_AT_symbol_name("_iq17Start_Check_Dist")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("iq17distance_sum"), DW_AT_symbol_name("_iq17distance_sum")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("iq17decel_distance"), DW_AT_symbol_name("_iq17decel_distance")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("iq17err_distance"), DW_AT_symbol_name("_iq17err_distance")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("iq17user_distance"), DW_AT_symbol_name("_iq17user_distance")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$169, DW_AT_name("iq17decel_vel"), DW_AT_symbol_name("_iq17decel_vel")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$170, DW_AT_name("u16decel_flag"), DW_AT_symbol_name("_u16decel_flag")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$49

DW$171	.dwtag  DW_TAG_far_type
	.dwattr DW$171, DW_AT_type(*DW$T$50)
DW$T$112	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$112, DW_AT_type(*DW$171)
DW$T$51	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$51, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$51, DW_AT_byte_size(0x01)

DW$T$27	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$20)
	.dwattr DW$T$27, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$27, DW_AT_byte_size(0x10)
DW$172	.dwtag  DW_TAG_subrange_type
	.dwattr DW$172, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$27

DW$T$41	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
DW$T$47	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_byte_size(0x0e)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$173, DW_AT_name("iq17turnmark_dist"), DW_AT_symbol_name("_iq17turnmark_dist")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
DW$174	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$174, DW_AT_name("iq17check_dist"), DW_AT_symbol_name("_iq17check_dist")
	.dwattr DW$174, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$174, DW_AT_accessibility(DW_ACCESS_public)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$175, DW_AT_name("iq17limit_dist"), DW_AT_symbol_name("_iq17limit_dist")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$176, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$177, DW_AT_name("u16State"), DW_AT_symbol_name("_u16State")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$178, DW_AT_name("u16mark_enable"), DW_AT_symbol_name("_u16mark_enable")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$179, DW_AT_name("u16turn_flag"), DW_AT_symbol_name("_u16turn_flag")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$180, DW_AT_name("u16single_flag"), DW_AT_symbol_name("_u16single_flag")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$181, DW_AT_name("u16cross_flag"), DW_AT_symbol_name("_u16cross_flag")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$182, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
DW$183	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$183, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$183, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$183, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr DW$T$26, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$26, DW_AT_byte_size(0x02)
DW$184	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$184, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$184, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$184, DW_AT_accessibility(DW_ACCESS_public)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$185, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$30	.dwtag  DW_TAG_union_type
	.dwattr DW$T$30, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$30, DW_AT_byte_size(0x02)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$186, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$187, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$188, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$189, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("TCR_REG")
	.dwattr DW$T$34, DW_AT_byte_size(0x01)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$190, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$191, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("TPR_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$192, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$193, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr DW$T$38, DW_AT_name("TPRH_REG")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$194, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$195, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38

DW$196	.dwtag  DW_TAG_far_type
	.dwattr DW$196, DW_AT_type(*DW$T$43)
DW$T$103	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$103, DW_AT_type(*DW$196)

DW$T$46	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$46, DW_AT_name("position")
	.dwattr DW$T$46, DW_AT_byte_size(0x0c)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$44)
	.dwattr DW$197, DW_AT_name("iq17sum"), DW_AT_symbol_name("_iq17sum")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$198, DW_AT_name("iq7sum"), DW_AT_symbol_name("_iq7sum")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$199, DW_AT_name("iq7sum_of_sec"), DW_AT_symbol_name("_iq7sum_of_sec")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$200, DW_AT_name("iq7temp_pos"), DW_AT_symbol_name("_iq7temp_pos")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$201, DW_AT_name("u16enable"), DW_AT_symbol_name("_u16enable")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$202, DW_AT_name("u16state"), DW_AT_symbol_name("_u16state")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x9]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$45)
	.dwattr DW$203, DW_AT_name("iq10temp_position"), DW_AT_symbol_name("_iq10temp_position")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$46


DW$T$50	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$50, DW_AT_name("bit_field_flag")
	.dwattr DW$T$50, DW_AT_byte_size(0x01)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$204, DW_AT_name("motor"), DW_AT_symbol_name("_motor")
	.dwattr DW$204, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$205, DW_AT_name("move_state"), DW_AT_symbol_name("_move_state")
	.dwattr DW$205, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$206, DW_AT_name("start_flag"), DW_AT_symbol_name("_start_flag")
	.dwattr DW$206, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$207, DW_AT_name("cross_flag"), DW_AT_symbol_name("_cross_flag")
	.dwattr DW$207, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$208, DW_AT_name("lineout_flag"), DW_AT_symbol_name("_lineout_flag")
	.dwattr DW$208, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$209, DW_AT_name("end_flag"), DW_AT_symbol_name("_end_flag")
	.dwattr DW$209, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$210, DW_AT_name("stop_check"), DW_AT_symbol_name("_stop_check")
	.dwattr DW$210, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$211, DW_AT_name("Rturnmark_flag"), DW_AT_symbol_name("_Rturnmark_flag")
	.dwattr DW$211, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$212, DW_AT_name("Lturnmark_flag"), DW_AT_symbol_name("_Lturnmark_flag")
	.dwattr DW$212, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$213, DW_AT_name("speed_up"), DW_AT_symbol_name("_speed_up")
	.dwattr DW$213, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$214, DW_AT_name("speed_up_start"), DW_AT_symbol_name("_speed_up_start")
	.dwattr DW$214, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$215, DW_AT_name("straight_run"), DW_AT_symbol_name("_straight_run")
	.dwattr DW$215, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$216, DW_AT_name("first_race"), DW_AT_symbol_name("_first_race")
	.dwattr DW$216, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$217, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$217, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$218, DW_AT_name("race_start"), DW_AT_symbol_name("_race_start")
	.dwattr DW$218, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$50

DW$T$44	.dwtag  DW_TAG_typedef, DW_AT_name("_iq"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$T$45	.dwtag  DW_TAG_typedef, DW_AT_name("_iq10"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)

DW$T$22	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$22, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$219, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$219, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$220, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$220, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$221, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$221, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$222, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$222, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
DW$223	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$223, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$223, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$223, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$223, DW_AT_accessibility(DW_ACCESS_public)
DW$224	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$224, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$224, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$224, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$224, DW_AT_accessibility(DW_ACCESS_public)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$225, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$225, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$226, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$226, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$227, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$227, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$228, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$228, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$229, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$229, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$230, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$230, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$231, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$231, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$232, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$232, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$233, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$233, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$234, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$234, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$235, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$235, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$236, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$236, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$237, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$237, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$238, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$238, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$239, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$239, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$240, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$240, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$241, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$241, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$242, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$242, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$243, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$243, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$244, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$244, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$245, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$245, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$246, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$246, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$247, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$247, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$248, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$248, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$249, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$249, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$250, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$250, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$251, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$251, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$252, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$252, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$253, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$253, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$254, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$254, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$255, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$255, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$256, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$256, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$29	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$29, DW_AT_name("TIM_REG")
	.dwattr DW$T$29, DW_AT_byte_size(0x02)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$257, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$258, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("PRD_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x02)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$259, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$260, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("TCR_BITS")
	.dwattr DW$T$33, DW_AT_byte_size(0x01)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$261, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$261, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$262, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$262, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$263, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$263, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$264, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$264, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$265, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$265, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$266, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$266, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$267, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$267, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$268, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$268, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$269, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$269, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("TPR_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$270, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$270, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$271, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$271, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$272, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$272, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$273, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$273, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$43	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$43, DW_AT_name("sensor_variable")
	.dwattr DW$T$43, DW_AT_byte_size(0x0e)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$274, DW_AT_name("iq17_4095_value"), DW_AT_symbol_name("_iq17_4095_value")
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$275, DW_AT_name("iq17_4095_min_value"), DW_AT_symbol_name("_iq17_4095_min_value")
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$276, DW_AT_name("iq17_4095_max_value"), DW_AT_symbol_name("_iq17_4095_max_value")
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$277, DW_AT_name("iq17_127_value"), DW_AT_symbol_name("_iq17_127_value")
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$278, DW_AT_name("iq17_ON_OFF_value"), DW_AT_symbol_name("_iq17_ON_OFF_value")
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$279, DW_AT_name("u16active_arr"), DW_AT_symbol_name("_u16active_arr")
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$280, DW_AT_name("u16passive_arr"), DW_AT_symbol_name("_u16passive_arr")
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$41)
	.dwattr DW$281, DW_AT_name("iq7weight"), DW_AT_symbol_name("_iq7weight")
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$43


	.dwattr DW$93, DW_AT_external(0x01)
	.dwattr DW$89, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_external(0x01)
	.dwattr DW$87, DW_AT_type(*DW$T$10)
	.dwattr DW$67, DW_AT_external(0x01)
	.dwattr DW$67, DW_AT_type(*DW$T$10)
	.dwattr DW$79, DW_AT_external(0x01)
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

DW$282	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$282, DW_AT_location[DW_OP_reg0]
DW$283	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$283, DW_AT_location[DW_OP_reg1]
DW$284	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$284, DW_AT_location[DW_OP_reg2]
DW$285	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$285, DW_AT_location[DW_OP_reg3]
DW$286	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$286, DW_AT_location[DW_OP_reg4]
DW$287	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$287, DW_AT_location[DW_OP_reg5]
DW$288	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$288, DW_AT_location[DW_OP_reg6]
DW$289	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$289, DW_AT_location[DW_OP_reg7]
DW$290	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$290, DW_AT_location[DW_OP_reg8]
DW$291	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$291, DW_AT_location[DW_OP_reg9]
DW$292	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$292, DW_AT_location[DW_OP_reg10]
DW$293	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$293, DW_AT_location[DW_OP_reg11]
DW$294	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$294, DW_AT_location[DW_OP_reg12]
DW$295	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$295, DW_AT_location[DW_OP_reg13]
DW$296	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$296, DW_AT_location[DW_OP_reg14]
DW$297	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$297, DW_AT_location[DW_OP_reg15]
DW$298	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$298, DW_AT_location[DW_OP_reg16]
DW$299	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$299, DW_AT_location[DW_OP_reg17]
DW$300	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$300, DW_AT_location[DW_OP_reg18]
DW$301	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$301, DW_AT_location[DW_OP_reg19]
DW$302	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$302, DW_AT_location[DW_OP_reg20]
DW$303	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$303, DW_AT_location[DW_OP_reg21]
DW$304	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$304, DW_AT_location[DW_OP_reg22]
DW$305	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$305, DW_AT_location[DW_OP_reg23]
DW$306	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$306, DW_AT_location[DW_OP_reg24]
DW$307	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$307, DW_AT_location[DW_OP_reg25]
DW$308	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$308, DW_AT_location[DW_OP_reg26]
DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$309, DW_AT_location[DW_OP_reg27]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$310, DW_AT_location[DW_OP_reg28]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$311, DW_AT_location[DW_OP_reg29]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$312, DW_AT_location[DW_OP_reg30]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$313, DW_AT_location[DW_OP_reg31]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$314, DW_AT_location[DW_OP_regx 0x20]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$315, DW_AT_location[DW_OP_regx 0x21]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$316, DW_AT_location[DW_OP_regx 0x22]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$317, DW_AT_location[DW_OP_regx 0x23]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$318, DW_AT_location[DW_OP_regx 0x24]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$319, DW_AT_location[DW_OP_regx 0x25]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$320, DW_AT_location[DW_OP_regx 0x26]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$321, DW_AT_location[DW_OP_regx 0x27]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$322, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

