;***************************************************************
;* TMS320C2000 C/C++ Codegen                         PC v4.1.3 *
;* Date/Time created: Fri Oct 25 23:31:48 2024                 *
;***************************************************************
	.compiler_opts --mem_model:code=flat --mem_model:data=large --silicon_version=28 
FP	.set	XAR2

DW$CU	.dwtag  DW_TAG_compile_unit
	.dwattr DW$CU, DW_AT_producer("TMS320C2000 C/C++ Codegen PC v4.1.3 Copyright (c) 1996-2006 Texas Instruments Incorporated")
	.dwattr DW$CU, DW_AT_stmt_list(0x00)
	.dwattr DW$CU, DW_AT_TI_VERSION(0x01)

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiReadRom"), DW_AT_symbol_name("_SpiReadRom")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)
DW$2	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$3	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$5	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$1


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("SpiWriteRom"), DW_AT_symbol_name("_SpiWriteRom")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$9	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$10	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$6


DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("TxPrintf"), DW_AT_symbol_name("_TxPrintf")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$13	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$11

DW$14	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_acc"), DW_AT_symbol_name("_g_i16_handle_acc")
	.dwattr DW$14, DW_AT_type(*DW$T$23)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("cnt"), DW_AT_symbol_name("_cnt")
	.dwattr DW$15, DW_AT_type(*DW$T$10)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_dec"), DW_AT_symbol_name("_g_i16_handle_dec")
	.dwattr DW$16, DW_AT_type(*DW$T$23)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("U16_turnmark_cnt"), DW_AT_symbol_name("_U16_turnmark_cnt")
	.dwattr DW$17, DW_AT_type(*DW$T$40)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_END_ACC_targetval"), DW_AT_symbol_name("_g_u32_END_ACC_targetval")
	.dwattr DW$18, DW_AT_type(*DW$T$59)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("g_int32total_cnt"), DW_AT_symbol_name("_g_int32total_cnt")
	.dwattr DW$19, DW_AT_type(*DW$T$59)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
	.sect	".econst"
	.align	1
_$T6$7$0:
	.field  	0,16			; _$T6$7$0[0] @ 0
	.space	16

DW$20	.dwtag  DW_TAG_variable, DW_AT_name("$T6$7$0"), DW_AT_symbol_name("_$T6$7$0")
	.dwattr DW$20, DW_AT_type(*DW$T$45)
	.dwattr DW$20, DW_AT_location[DW_OP_addr _$T6$7$0]

DW$21	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ17toF"), DW_AT_symbol_name("__IQ17toF")
	.dwattr DW$21, DW_AT_type(*DW$T$16)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$21


DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$23, DW_AT_type(*DW$T$3)
	.dwattr DW$23, DW_AT_declaration(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
DW$24	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$23

DW$27	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_VEL_targetval"), DW_AT_symbol_name("_g_u32_VEL_targetval")
	.dwattr DW$27, DW_AT_type(*DW$T$59)
	.dwattr DW$27, DW_AT_declaration(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
DW$28	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_ACC_targetval"), DW_AT_symbol_name("_g_u32_ACC_targetval")
	.dwattr DW$28, DW_AT_type(*DW$T$59)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.sect	".econst"
	.align	1
_$T7$8$0:
	.field  	0,16			; _$T7$8$0[0] @ 0
	.space	16

DW$29	.dwtag  DW_TAG_variable, DW_AT_name("$T7$8$0"), DW_AT_symbol_name("_$T7$8$0")
	.dwattr DW$29, DW_AT_type(*DW$T$45)
	.dwattr DW$29, DW_AT_location[DW_OP_addr _$T7$8$0]
	.sect	".econst"
	.align	1
_$T4$5$0:
	.field  	0,16			; _$T4$5$0[0] @ 0
	.space	112

DW$30	.dwtag  DW_TAG_variable, DW_AT_name("$T4$5$0"), DW_AT_symbol_name("_$T4$5$0")
	.dwattr DW$30, DW_AT_type(*DW$T$44)
	.dwattr DW$30, DW_AT_location[DW_OP_addr _$T4$5$0]
	.sect	".econst"
	.align	1
_$T19$20$0:
	.field  	0,16			; _$T19$20$0[0] @ 0
	.space	112

DW$31	.dwtag  DW_TAG_variable, DW_AT_name("$T19$20$0"), DW_AT_symbol_name("_$T19$20$0")
	.dwattr DW$31, DW_AT_type(*DW$T$44)
	.dwattr DW$31, DW_AT_location[DW_OP_addr _$T19$20$0]
	.sect	".econst"
	.align	1
_$T18$19$0:
	.field  	0,16			; _$T18$19$0[0] @ 0
	.space	112

DW$32	.dwtag  DW_TAG_variable, DW_AT_name("$T18$19$0"), DW_AT_symbol_name("_$T18$19$0")
	.dwattr DW$32, DW_AT_type(*DW$T$44)
	.dwattr DW$32, DW_AT_location[DW_OP_addr _$T18$19$0]
	.sect	".econst"
	.align	1
_$T5$6$0:
	.field  	0,16			; _$T5$6$0[0] @ 0
	.space	112

DW$33	.dwtag  DW_TAG_variable, DW_AT_name("$T5$6$0"), DW_AT_symbol_name("_$T5$6$0")
	.dwattr DW$33, DW_AT_type(*DW$T$44)
	.dwattr DW$33, DW_AT_location[DW_OP_addr _$T5$6$0]
	.sect	".econst"
	.align	1
_$T0$1$0:
	.field  	0,16			; _$T0$1$0[0] @ 0
	.space	112

DW$34	.dwtag  DW_TAG_variable, DW_AT_name("$T0$1$0"), DW_AT_symbol_name("_$T0$1$0")
	.dwattr DW$34, DW_AT_type(*DW$T$44)
	.dwattr DW$34, DW_AT_location[DW_OP_addr _$T0$1$0]
	.sect	".econst"
	.align	1
_$T21$22$0:
	.field  	0,16			; _$T21$22$0[0] @ 0
	.space	112

DW$35	.dwtag  DW_TAG_variable, DW_AT_name("$T21$22$0"), DW_AT_symbol_name("_$T21$22$0")
	.dwattr DW$35, DW_AT_type(*DW$T$44)
	.dwattr DW$35, DW_AT_location[DW_OP_addr _$T21$22$0]
	.sect	".econst"
	.align	1
_$T1$2$0:
	.field  	0,16			; _$T1$2$0[0] @ 0
	.space	112

DW$36	.dwtag  DW_TAG_variable, DW_AT_name("$T1$2$0"), DW_AT_symbol_name("_$T1$2$0")
	.dwattr DW$36, DW_AT_type(*DW$T$44)
	.dwattr DW$36, DW_AT_location[DW_OP_addr _$T1$2$0]
	.sect	".econst"
	.align	1
_$T3$4$0:
	.field  	0,16			; _$T3$4$0[0] @ 0
	.space	112

DW$37	.dwtag  DW_TAG_variable, DW_AT_name("$T3$4$0"), DW_AT_symbol_name("_$T3$4$0")
	.dwattr DW$37, DW_AT_type(*DW$T$44)
	.dwattr DW$37, DW_AT_location[DW_OP_addr _$T3$4$0]
	.sect	".econst"
	.align	1
_$T2$3$0:
	.field  	0,16			; _$T2$3$0[0] @ 0
	.space	112

DW$38	.dwtag  DW_TAG_variable, DW_AT_name("$T2$3$0"), DW_AT_symbol_name("_$T2$3$0")
	.dwattr DW$38, DW_AT_type(*DW$T$44)
	.dwattr DW$38, DW_AT_location[DW_OP_addr _$T2$3$0]
	.sect	".econst"
	.align	1
_$T20$21$0:
	.field  	0,16			; _$T20$21$0[0] @ 0
	.space	112

DW$39	.dwtag  DW_TAG_variable, DW_AT_name("$T20$21$0"), DW_AT_symbol_name("_$T20$21$0")
	.dwattr DW$39, DW_AT_type(*DW$T$44)
	.dwattr DW$39, DW_AT_location[DW_OP_addr _$T20$21$0]
DW$40	.dwtag  DW_TAG_variable, DW_AT_name("g_sen"), DW_AT_symbol_name("_g_sen")
	.dwattr DW$40, DW_AT_type(*DW$T$69)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.sect	".econst"
	.align	1
_$T15$16$0:
	.field  	0,16			; _$T15$16$0[0] @ 0
	.space	4080

DW$41	.dwtag  DW_TAG_variable, DW_AT_name("$T15$16$0"), DW_AT_symbol_name("_$T15$16$0")
	.dwattr DW$41, DW_AT_type(*DW$T$46)
	.dwattr DW$41, DW_AT_location[DW_OP_addr _$T15$16$0]
	.sect	".econst"
	.align	1
_$T14$15$0:
	.field  	0,16			; _$T14$15$0[0] @ 0
	.space	4080

DW$42	.dwtag  DW_TAG_variable, DW_AT_name("$T14$15$0"), DW_AT_symbol_name("_$T14$15$0")
	.dwattr DW$42, DW_AT_type(*DW$T$46)
	.dwattr DW$42, DW_AT_location[DW_OP_addr _$T14$15$0]
	.sect	".econst"
	.align	1
_$T17$18$0:
	.field  	0,16			; _$T17$18$0[0] @ 0
	.space	4080

DW$43	.dwtag  DW_TAG_variable, DW_AT_name("$T17$18$0"), DW_AT_symbol_name("_$T17$18$0")
	.dwattr DW$43, DW_AT_type(*DW$T$46)
	.dwattr DW$43, DW_AT_location[DW_OP_addr _$T17$18$0]
	.sect	".econst"
	.align	1
_$T10$11$0:
	.field  	0,16			; _$T10$11$0[0] @ 0
	.space	4080

DW$44	.dwtag  DW_TAG_variable, DW_AT_name("$T10$11$0"), DW_AT_symbol_name("_$T10$11$0")
	.dwattr DW$44, DW_AT_type(*DW$T$46)
	.dwattr DW$44, DW_AT_location[DW_OP_addr _$T10$11$0]
	.sect	".econst"
	.align	1
_$T11$12$0:
	.field  	0,16			; _$T11$12$0[0] @ 0
	.space	4080

DW$45	.dwtag  DW_TAG_variable, DW_AT_name("$T11$12$0"), DW_AT_symbol_name("_$T11$12$0")
	.dwattr DW$45, DW_AT_type(*DW$T$46)
	.dwattr DW$45, DW_AT_location[DW_OP_addr _$T11$12$0]
	.sect	".econst"
	.align	1
_$T8$9$0:
	.field  	0,16			; _$T8$9$0[0] @ 0
	.space	4080

DW$46	.dwtag  DW_TAG_variable, DW_AT_name("$T8$9$0"), DW_AT_symbol_name("_$T8$9$0")
	.dwattr DW$46, DW_AT_type(*DW$T$46)
	.dwattr DW$46, DW_AT_location[DW_OP_addr _$T8$9$0]
	.sect	".econst"
	.align	1
_$T13$14$0:
	.field  	0,16			; _$T13$14$0[0] @ 0
	.space	4080

DW$47	.dwtag  DW_TAG_variable, DW_AT_name("$T13$14$0"), DW_AT_symbol_name("_$T13$14$0")
	.dwattr DW$47, DW_AT_type(*DW$T$46)
	.dwattr DW$47, DW_AT_location[DW_OP_addr _$T13$14$0]
	.sect	".econst"
	.align	1
_$T16$17$0:
	.field  	0,16			; _$T16$17$0[0] @ 0
	.space	4080

DW$48	.dwtag  DW_TAG_variable, DW_AT_name("$T16$17$0"), DW_AT_symbol_name("_$T16$17$0")
	.dwattr DW$48, DW_AT_type(*DW$T$46)
	.dwattr DW$48, DW_AT_location[DW_OP_addr _$T16$17$0]
	.sect	".econst"
	.align	1
_$T9$10$0:
	.field  	0,16			; _$T9$10$0[0] @ 0
	.space	4080

DW$49	.dwtag  DW_TAG_variable, DW_AT_name("$T9$10$0"), DW_AT_symbol_name("_$T9$10$0")
	.dwattr DW$49, DW_AT_type(*DW$T$46)
	.dwattr DW$49, DW_AT_location[DW_OP_addr _$T9$10$0]
	.sect	".econst"
	.align	1
_$T12$13$0:
	.field  	0,16			; _$T12$13$0[0] @ 0
	.space	4080

DW$50	.dwtag  DW_TAG_variable, DW_AT_name("$T12$13$0"), DW_AT_symbol_name("_$T12$13$0")
	.dwattr DW$50, DW_AT_type(*DW$T$46)
	.dwattr DW$50, DW_AT_location[DW_OP_addr _$T12$13$0]
DW$51	.dwtag  DW_TAG_variable, DW_AT_name("search_info"), DW_AT_symbol_name("_search_info")
	.dwattr DW$51, DW_AT_type(*DW$T$64)
	.dwattr DW$51, DW_AT_declaration(0x01)
	.dwattr DW$51, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI16810 C:\Users\rbgus\AppData\Local\Temp\TI1684 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI1682 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI1686 --object_file Rom.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_write_vel_rom

DW$52	.dwtag  DW_TAG_subprogram, DW_AT_name("write_vel_rom"), DW_AT_symbol_name("_write_vel_rom")
	.dwattr DW$52, DW_AT_low_pc(_write_vel_rom)
	.dwattr DW$52, DW_AT_high_pc(0x00)
	.dwattr DW$52, DW_AT_begin_file("Rom.c")
	.dwattr DW$52, DW_AT_begin_line(0x123)
	.dwattr DW$52, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",292,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_vel_rom                FR SIZE:   8           *
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
_write_vel_rom:
;*** 294	-----------------------    save_vel[] = {...};
;*** 297	-----------------------    save_vel[0] = g_u32_VEL_targetval&0xffuL;
;*** 298	-----------------------    save_vel[1] = g_u32_VEL_targetval>>8&0xffuL;
;*** 300	-----------------------    SpiWriteRom(2u, 0u, 8u, &save_vel);
;*** 300	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$53	.dwtag  DW_TAG_variable, DW_AT_name("save_vel"), DW_AT_symbol_name("_save_vel")
	.dwattr DW$53, DW_AT_type(*DW$T$42)
	.dwattr DW$53, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",294,9
        MOVZ      AR4,SP                ; |294| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T0$1$0        ; |294| 
        SUBB      XAR4,#8               ; |294| 
        LCR       #___memcpy_ff         ; |294| 
        ; call occurs [#___memcpy_ff] ; |294| 
	.dwpsn	"Rom.c",297,5
        MOVW      DP,#_g_u32_VEL_targetval
        MOVB      AL.LSB,@_g_u32_VEL_targetval ; |297| 
        MOV       *-SP[8],AL            ; |297| 
	.dwpsn	"Rom.c",298,5
        CLRC      SXM
        MOVL      ACC,@_g_u32_VEL_targetval ; |298| 
        SFR       ACC,8                 ; |298| 
        ANDB      AL,#0xff              ; |298| 
        MOVB      AH,#0
        MOV       *-SP[7],AL            ; |298| 
	.dwpsn	"Rom.c",300,2
        MOVZ      AR4,SP                ; |300| 
        MOVB      XAR5,#8               ; |300| 
        MOVB      AL,#2                 ; |300| 
        SUBB      XAR4,#8               ; |300| 
        LCR       #_SpiWriteRom         ; |300| 
        ; call occurs [#_SpiWriteRom] ; |300| 
	.dwpsn	"Rom.c",302,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$52, DW_AT_end_file("Rom.c")
	.dwattr DW$52, DW_AT_end_line(0x12e)
	.dwattr DW$52, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$52

	.sect	".text"
	.global	_write_mark_cnt_rom

DW$54	.dwtag  DW_TAG_subprogram, DW_AT_name("write_mark_cnt_rom"), DW_AT_symbol_name("_write_mark_cnt_rom")
	.dwattr DW$54, DW_AT_low_pc(_write_mark_cnt_rom)
	.dwattr DW$54, DW_AT_high_pc(0x00)
	.dwattr DW$54, DW_AT_begin_file("Rom.c")
	.dwattr DW$54, DW_AT_begin_line(0x172)
	.dwattr DW$54, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",371,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_mark_cnt_rom           FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_write_mark_cnt_rom:
;*** 376	-----------------------    mark_sarr[0] = U16_turnmark_cnt-1u&0xffu;
;*** 377	-----------------------    mark_sarr[1] = U16_turnmark_cnt-1u>>8;
;*** 379	-----------------------    SpiWriteRom(6u, 0u, 2u, &mark_sarr);
;*** 379	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("mark_sarr"), DW_AT_symbol_name("_mark_sarr")
	.dwattr DW$55, DW_AT_type(*DW$T$47)
	.dwattr DW$55, DW_AT_location[DW_OP_breg20 -2]
	.dwpsn	"Rom.c",376,2
        MOVW      DP,#_U16_turnmark_cnt
        MOV       AL,@_U16_turnmark_cnt ; |376| 
        ADDB      AL,#-1
        ANDB      AL,#0xff              ; |376| 
        MOV       *-SP[2],AL            ; |376| 
	.dwpsn	"Rom.c",377,2
        MOV       AL,@_U16_turnmark_cnt ; |377| 
        ADDB      AL,#-1
        LSR       AL,8                  ; |377| 
        MOV       *-SP[1],AL            ; |377| 
	.dwpsn	"Rom.c",379,2
        MOVZ      AR4,SP                ; |379| 
        MOVB      XAR5,#2               ; |379| 
        MOVB      ACC,#6
        SUBB      XAR4,#2               ; |379| 
        LCR       #_SpiWriteRom         ; |379| 
        ; call occurs [#_SpiWriteRom] ; |379| 
	.dwpsn	"Rom.c",381,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$54, DW_AT_end_file("Rom.c")
	.dwattr DW$54, DW_AT_end_line(0x17d)
	.dwattr DW$54, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$54

	.sect	".text"
	.global	_write_line_info_rom

DW$56	.dwtag  DW_TAG_subprogram, DW_AT_name("write_line_info_rom"), DW_AT_symbol_name("_write_line_info_rom")
	.dwattr DW$56, DW_AT_low_pc(_write_line_info_rom)
	.dwattr DW$56, DW_AT_high_pc(0x00)
	.dwattr DW$56, DW_AT_begin_file("Rom.c")
	.dwattr DW$56, DW_AT_begin_line(0x18a)
	.dwattr DW$56, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",395,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_line_info_rom          FR SIZE: 1284           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 1280 Auto,  4 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_write_line_info_rom:
;*** 398	-----------------------    dist_sarr[] = {...};
;*** 399	-----------------------    turn_sarr[] = {...};
;*** 400	-----------------------    ldist_sarr[] = {...};
;*** 401	-----------------------    rdist_sarr[] = {...};
;*** 402	-----------------------    cross_sarr[] = {...};
;*** 405	-----------------------    memset(&dist_sarr, 0, 256uL);
;*** 406	-----------------------    memset(&turn_sarr, 0, 256uL);
;*** 407	-----------------------    memset(&ldist_sarr, 0, 256uL);
;*** 408	-----------------------    memset(&rdist_sarr, 0, 256uL);
;*** 409	-----------------------    memset(&cross_sarr, 0, 256uL);
;*** 415	-----------------------    U16_turnmark_cnt;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$54 = &cross_sarr[0];
;***  	-----------------------    U$49 = &rdist_sarr[0];
;***  	-----------------------    U$44 = &ldist_sarr[0];
;***  	-----------------------    U$39 = &turn_sarr[0];
;***  	-----------------------    U$33 = &dist_sarr[0];
;***  	-----------------------    U$28 = &search_info[0];
;*** 396	-----------------------    i = 0;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 4
	.dwcfa	0x1d, -6
        ADD       SP,#1280
	.dwcfa	0x1d, -1286
;* AR3   assigned to U$28
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("U$28"), DW_AT_symbol_name("U$28")
	.dwattr DW$57, DW_AT_type(*DW$T$66)
	.dwattr DW$57, DW_AT_location[DW_OP_reg10]
;* AR3   assigned to U$28
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("U$28"), DW_AT_symbol_name("U$28")
	.dwattr DW$58, DW_AT_type(*DW$T$66)
	.dwattr DW$58, DW_AT_location[DW_OP_reg10]
;* AR1   assigned to U$33
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("U$33"), DW_AT_symbol_name("U$33")
	.dwattr DW$59, DW_AT_type(*DW$T$39)
	.dwattr DW$59, DW_AT_location[DW_OP_reg6]
;* AR1   assigned to U$33
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("U$33"), DW_AT_symbol_name("U$33")
	.dwattr DW$60, DW_AT_type(*DW$T$39)
	.dwattr DW$60, DW_AT_location[DW_OP_reg6]
;* AR7   assigned to U$39
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("U$39"), DW_AT_symbol_name("U$39")
	.dwattr DW$61, DW_AT_type(*DW$T$39)
	.dwattr DW$61, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to U$39
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("U$39"), DW_AT_symbol_name("U$39")
	.dwattr DW$62, DW_AT_type(*DW$T$39)
	.dwattr DW$62, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to U$44
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("U$44"), DW_AT_symbol_name("U$44")
	.dwattr DW$63, DW_AT_type(*DW$T$39)
	.dwattr DW$63, DW_AT_location[DW_OP_reg16]
;* AR6   assigned to U$44
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("U$44"), DW_AT_symbol_name("U$44")
	.dwattr DW$64, DW_AT_type(*DW$T$39)
	.dwattr DW$64, DW_AT_location[DW_OP_reg16]
;* AR5   assigned to U$49
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("U$49"), DW_AT_symbol_name("U$49")
	.dwattr DW$65, DW_AT_type(*DW$T$39)
	.dwattr DW$65, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to U$49
DW$66	.dwtag  DW_TAG_variable, DW_AT_name("U$49"), DW_AT_symbol_name("U$49")
	.dwattr DW$66, DW_AT_type(*DW$T$39)
	.dwattr DW$66, DW_AT_location[DW_OP_reg14]
;* AR4   assigned to U$54
DW$67	.dwtag  DW_TAG_variable, DW_AT_name("U$54"), DW_AT_symbol_name("U$54")
	.dwattr DW$67, DW_AT_type(*DW$T$39)
	.dwattr DW$67, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to U$54
DW$68	.dwtag  DW_TAG_variable, DW_AT_name("U$54"), DW_AT_symbol_name("U$54")
	.dwattr DW$68, DW_AT_type(*DW$T$39)
	.dwattr DW$68, DW_AT_location[DW_OP_reg12]
;* PL    assigned to _i
DW$69	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$69, DW_AT_type(*DW$T$38)
	.dwattr DW$69, DW_AT_location[DW_OP_reg2]
;* PL    assigned to _i
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$70, DW_AT_type(*DW$T$38)
	.dwattr DW$70, DW_AT_location[DW_OP_reg2]
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("dist_sarr"), DW_AT_symbol_name("_dist_sarr")
	.dwattr DW$71, DW_AT_type(*DW$T$41)
	.dwattr DW$71, DW_AT_location[DW_OP_breg20 -256]
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("turn_sarr"), DW_AT_symbol_name("_turn_sarr")
	.dwattr DW$72, DW_AT_type(*DW$T$41)
	.dwattr DW$72, DW_AT_location[DW_OP_breg20 -512]
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("ldist_sarr"), DW_AT_symbol_name("_ldist_sarr")
	.dwattr DW$73, DW_AT_type(*DW$T$41)
	.dwattr DW$73, DW_AT_location[DW_OP_breg20 -768]
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("rdist_sarr"), DW_AT_symbol_name("_rdist_sarr")
	.dwattr DW$74, DW_AT_type(*DW$T$41)
	.dwattr DW$74, DW_AT_location[DW_OP_breg20 -1024]
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("cross_sarr"), DW_AT_symbol_name("_cross_sarr")
	.dwattr DW$75, DW_AT_type(*DW$T$41)
	.dwattr DW$75, DW_AT_location[DW_OP_breg20 -1280]
	.dwpsn	"Rom.c",398,12
        MOVZ      AR4,SP                ; |398| 
        ADD       AR4,#-256             ; |398| 
        MOVL      XAR5,#_$T8$9$0        ; |398| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |398| 
        ; call occurs [#___memcpy_ff] ; |398| 
	.dwpsn	"Rom.c",399,12
        MOVZ      AR4,SP                ; |399| 
        ADD       AR4,#-512             ; |399| 
        MOVL      XAR5,#_$T9$10$0       ; |399| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |399| 
        ; call occurs [#___memcpy_ff] ; |399| 
	.dwpsn	"Rom.c",400,12
        MOVZ      AR4,SP                ; |400| 
        ADD       AR4,#-768             ; |400| 
        MOVL      XAR5,#_$T10$11$0      ; |400| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |400| 
        ; call occurs [#___memcpy_ff] ; |400| 
	.dwpsn	"Rom.c",401,12
        MOVZ      AR4,SP                ; |401| 
        ADD       AR4,#-1024            ; |401| 
        MOVL      XAR5,#_$T11$12$0      ; |401| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |401| 
        ; call occurs [#___memcpy_ff] ; |401| 
	.dwpsn	"Rom.c",402,12
        MOVZ      AR4,SP                ; |402| 
        ADD       AR4,#-1280            ; |402| 
        MOVL      XAR5,#_$T12$13$0      ; |402| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |402| 
        ; call occurs [#___memcpy_ff] ; |402| 
	.dwpsn	"Rom.c",405,5
        MOVZ      AR4,SP                ; |405| 
        ADD       AR4,#-256             ; |405| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |405| 
        ; call occurs [#_memset] ; |405| 
	.dwpsn	"Rom.c",406,2
        MOVZ      AR4,SP                ; |406| 
        ADD       AR4,#-512             ; |406| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |406| 
        ; call occurs [#_memset] ; |406| 
	.dwpsn	"Rom.c",407,5
        MOVZ      AR4,SP                ; |407| 
        ADD       AR4,#-768             ; |407| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |407| 
        ; call occurs [#_memset] ; |407| 
	.dwpsn	"Rom.c",408,5
        MOVZ      AR4,SP                ; |408| 
        ADD       AR4,#-1024            ; |408| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |408| 
        ; call occurs [#_memset] ; |408| 
	.dwpsn	"Rom.c",409,2
        MOVZ      AR4,SP                ; |409| 
        ADD       AR4,#-1280            ; |409| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |409| 
        ; call occurs [#_memset] ; |409| 
	.dwpsn	"Rom.c",415,14
        MOVZ      AR5,SP
        MOVZ      AR4,SP
        MOVZ      AR7,SP
        MOVZ      AR6,SP
        MOVL      XAR0,#_search_info
        MOVW      DP,#_U16_turnmark_cnt
        MOVZ      AR1,SP
        ADD       AR5,#-1024
        ADD       AR4,#-1280
        ADD       AR7,#-512
        ADD       AR6,#-768
        MOVL      XAR3,XAR0
        MOV       AL,@_U16_turnmark_cnt ; |415| 
        ADD       AR1,#-256
	.dwpsn	"Rom.c",396,11
        MOV       PL,#0                 ; |396| 
L1:    
DW$L$_write_line_info_rom$2$B:
;***	-----------------------g2:
;*** 418	-----------------------    *U$33++ = (*U$28).int32dist&0xffL;
;*** 419	-----------------------    *U$39++ = (*U$28).int32turn_way&0xffL;
;*** 420	-----------------------    *U$44++ = (*U$28).int32L_dist&0xffL;
;*** 421	-----------------------    *U$49++ = (*U$28).int32R_dist&0xffL;
;*** 422	-----------------------    *U$54++ = (*U$28).int32cross_check_dist&0xffL;
;*** 415	-----------------------    U$28 += 26;
;*** 415	-----------------------    if ( (unsigned)(++i) <= U16_turnmark_cnt ) goto g2;
	.dwpsn	"Rom.c",418,9
        MOVL      XAR0,XAR3
        MOVL      ACC,*+XAR0[0]         ; |418| 
        ANDB      AL,#0xff              ; |418| 
        MOV       *XAR1++,AL            ; |418| 
	.dwpsn	"Rom.c",419,9
        MOVL      XAR0,XAR3
        MOVL      ACC,*+XAR0[2]         ; |419| 
        ANDB      AL,#0xff              ; |419| 
        MOV       *XAR7++,AL            ; |419| 
	.dwpsn	"Rom.c",420,3
        MOVL      XAR0,XAR3
        MOVL      ACC,*+XAR0[4]         ; |420| 
        ANDB      AL,#0xff              ; |420| 
        MOV       *XAR6++,AL            ; |420| 
	.dwpsn	"Rom.c",421,9
        MOVL      XAR0,XAR3
        MOVL      ACC,*+XAR0[6]         ; |421| 
        ANDB      AL,#0xff              ; |421| 
        MOV       *XAR5++,AL            ; |421| 
	.dwpsn	"Rom.c",422,9
        MOVB      XAR0,#8               ; |422| 
        MOVL      ACC,*+XAR3[AR0]       ; |422| 
        ANDB      AL,#0xff              ; |422| 
        MOV       *XAR4++,AL            ; |422| 
	.dwpsn	"Rom.c",415,35
        MOVB      XAR0,#26              ; |415| 
        MOVL      ACC,XAR3              ; |415| 
        ADDU      ACC,AR0               ; |415| 
        MOVL      XAR3,ACC              ; |415| 
	.dwpsn	"Rom.c",415,14
        MOV       AL,PL
        ADDB      AL,#1                 ; |415| 
        CMP       AL,@_U16_turnmark_cnt ; |415| 
        MOV       PL,AL                 ; |415| 
        BF        L1,LOS                ; |415| 
        ; branchcc occurs ; |415| 
DW$L$_write_line_info_rom$2$E:
;*** 425	-----------------------    SpiWriteRom(7u, 0u, 256u, &dist_sarr);
;*** 426	-----------------------    SpiWriteRom(8u, 0u, 256u, &turn_sarr);
;*** 427	-----------------------    SpiWriteRom(9u, 0u, 256u, &ldist_sarr);
;*** 428	-----------------------    SpiWriteRom(10u, 0u, 256u, &rdist_sarr);
;*** 429	-----------------------    SpiWriteRom(11u, 0u, 256u, &cross_sarr);
;*** 433	-----------------------    U16_turnmark_cnt;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$54 = &cross_sarr[0];
;***  	-----------------------    U$49 = &rdist_sarr[0];
;***  	-----------------------    U$44 = &ldist_sarr[0];
;***  	-----------------------    U$39 = &turn_sarr[0];
;***  	-----------------------    U$33 = &dist_sarr[0];
;***  	-----------------------    U$28 = &search_info[0];
;*** 433	-----------------------    i = 0;
	.dwpsn	"Rom.c",425,2
        MOVZ      AR4,SP                ; |425| 
        MOVL      XAR5,#256             ; |425| 
        MOVB      ACC,#7
        ADD       AR4,#-256             ; |425| 
        LCR       #_SpiWriteRom         ; |425| 
        ; call occurs [#_SpiWriteRom] ; |425| 
	.dwpsn	"Rom.c",426,2
        MOVZ      AR4,SP                ; |426| 
        MOVL      XAR5,#256             ; |426| 
        MOVB      ACC,#8
        ADD       AR4,#-512             ; |426| 
        LCR       #_SpiWriteRom         ; |426| 
        ; call occurs [#_SpiWriteRom] ; |426| 
	.dwpsn	"Rom.c",427,5
        MOVZ      AR4,SP                ; |427| 
        MOVL      XAR5,#256             ; |427| 
        MOVB      ACC,#9
        ADD       AR4,#-768             ; |427| 
        LCR       #_SpiWriteRom         ; |427| 
        ; call occurs [#_SpiWriteRom] ; |427| 
	.dwpsn	"Rom.c",428,5
        MOVZ      AR4,SP                ; |428| 
        MOVL      XAR5,#256             ; |428| 
        MOVB      ACC,#10
        ADD       AR4,#-1024            ; |428| 
        LCR       #_SpiWriteRom         ; |428| 
        ; call occurs [#_SpiWriteRom] ; |428| 
	.dwpsn	"Rom.c",429,2
        MOVZ      AR4,SP                ; |429| 
        MOVL      XAR5,#256             ; |429| 
        MOVB      ACC,#11
        ADD       AR4,#-1280            ; |429| 
        LCR       #_SpiWriteRom         ; |429| 
        ; call occurs [#_SpiWriteRom] ; |429| 
	.dwpsn	"Rom.c",433,14
        MOVZ      AR5,SP
        MOVZ      AR4,SP
        MOVZ      AR7,SP
        MOVZ      AR6,SP
        MOVL      XAR0,#_search_info
        MOVW      DP,#_U16_turnmark_cnt
        MOVZ      AR1,SP
        ADD       AR5,#-1024
        ADD       AR4,#-1280
        ADD       AR7,#-512
        ADD       AR6,#-768
        MOVL      XAR3,XAR0
        MOV       AL,@_U16_turnmark_cnt ; |433| 
        ADD       AR1,#-256
	.dwpsn	"Rom.c",433,9
        MOV       PL,#0                 ; |433| 
L2:    
DW$L$_write_line_info_rom$4$B:
;***	-----------------------g4:
;*** 436	-----------------------    *U$33++ = (unsigned)(*U$28).int32dist>>8;
;*** 437	-----------------------    *U$39++ = (unsigned)(*U$28).int32turn_way>>8;
;*** 438	-----------------------    *U$44++ = (unsigned)(*U$28).int32L_dist>>8;
;*** 439	-----------------------    *U$49++ = (unsigned)(*U$28).int32R_dist>>8;
;*** 440	-----------------------    *U$54++ = (unsigned)(*U$28).int32cross_check_dist>>8;
;*** 433	-----------------------    U$28 += 26;
;*** 433	-----------------------    if ( (unsigned)(++i) <= U16_turnmark_cnt ) goto g4;
	.dwpsn	"Rom.c",436,3
        MOVL      XAR0,XAR3
        MOV       AL,*+XAR0[0]          ; |436| 
        LSR       AL,8                  ; |436| 
        MOV       *XAR1++,AL            ; |436| 
	.dwpsn	"Rom.c",437,9
        MOVL      XAR0,XAR3
        MOV       AL,*+XAR0[2]          ; |437| 
        LSR       AL,8                  ; |437| 
        MOV       *XAR7++,AL            ; |437| 
	.dwpsn	"Rom.c",438,9
        MOVL      XAR0,XAR3
        MOV       AL,*+XAR0[4]          ; |438| 
        LSR       AL,8                  ; |438| 
        MOV       *XAR6++,AL            ; |438| 
	.dwpsn	"Rom.c",439,6
        MOVL      XAR0,XAR3
        MOV       AL,*+XAR0[6]          ; |439| 
        LSR       AL,8                  ; |439| 
        MOV       *XAR5++,AL            ; |439| 
	.dwpsn	"Rom.c",440,9
        MOVB      XAR0,#8               ; |440| 
        MOV       AL,*+XAR3[AR0]        ; |440| 
        LSR       AL,8                  ; |440| 
        MOV       *XAR4++,AL            ; |440| 
	.dwpsn	"Rom.c",433,37
        MOVL      ACC,XAR3              ; |433| 
        MOVB      XAR0,#26              ; |433| 
        ADDU      ACC,AR0               ; |433| 
        MOVL      XAR3,ACC              ; |433| 
	.dwpsn	"Rom.c",433,14
        MOV       AL,PL
        ADDB      AL,#1                 ; |433| 
        CMP       AL,@_U16_turnmark_cnt ; |433| 
        MOV       PL,AL                 ; |433| 
        BF        L2,LOS                ; |433| 
        ; branchcc occurs ; |433| 
DW$L$_write_line_info_rom$4$E:
;*** 444	-----------------------    SpiWriteRom(12u, 0u, 256u, &dist_sarr);
;*** 445	-----------------------    SpiWriteRom(13u, 0u, 256u, &turn_sarr);
;*** 446	-----------------------    SpiWriteRom(14u, 0u, 256u, &ldist_sarr);
;*** 447	-----------------------    SpiWriteRom(15u, 0u, 256u, &rdist_sarr);
;*** 448	-----------------------    SpiWriteRom(16u, 0u, 256u, &cross_sarr);
;*** 448	-----------------------    return;
	.dwpsn	"Rom.c",444,5
        MOVZ      AR4,SP                ; |444| 
        MOVL      XAR5,#256             ; |444| 
        MOVB      ACC,#12
        ADD       AR4,#-256             ; |444| 
        LCR       #_SpiWriteRom         ; |444| 
        ; call occurs [#_SpiWriteRom] ; |444| 
	.dwpsn	"Rom.c",445,5
        MOVZ      AR4,SP                ; |445| 
        MOVL      XAR5,#256             ; |445| 
        MOVB      ACC,#13
        ADD       AR4,#-512             ; |445| 
        LCR       #_SpiWriteRom         ; |445| 
        ; call occurs [#_SpiWriteRom] ; |445| 
	.dwpsn	"Rom.c",446,2
        MOVZ      AR4,SP                ; |446| 
        MOVL      XAR5,#256             ; |446| 
        MOVB      ACC,#14
        ADD       AR4,#-768             ; |446| 
        LCR       #_SpiWriteRom         ; |446| 
        ; call occurs [#_SpiWriteRom] ; |446| 
	.dwpsn	"Rom.c",447,5
        MOVZ      AR4,SP                ; |447| 
        MOVL      XAR5,#256             ; |447| 
        MOVB      ACC,#15
        ADD       AR4,#-1024            ; |447| 
        LCR       #_SpiWriteRom         ; |447| 
        ; call occurs [#_SpiWriteRom] ; |447| 
	.dwpsn	"Rom.c",448,5
        MOVZ      AR4,SP                ; |448| 
        MOVL      XAR5,#256             ; |448| 
        MOVB      ACC,#16
        ADD       AR4,#-1280            ; |448| 
        LCR       #_SpiWriteRom         ; |448| 
        ; call occurs [#_SpiWriteRom] ; |448| 
	.dwpsn	"Rom.c",451,1
        ADD       SP,#-1280
	.dwcfa	0x1d, -6
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -4
	.dwcfa	0xc0, 11
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs

DW$76	.dwtag  DW_TAG_loop
	.dwattr DW$76, DW_AT_name("C:\project\_Viper_\main\Rom.asm:L2:1:1729866708")
	.dwattr DW$76, DW_AT_begin_file("Rom.c")
	.dwattr DW$76, DW_AT_begin_line(0x1b1)
	.dwattr DW$76, DW_AT_end_line(0x1b9)
DW$77	.dwtag  DW_TAG_loop_range
	.dwattr DW$77, DW_AT_low_pc(DW$L$_write_line_info_rom$4$B)
	.dwattr DW$77, DW_AT_high_pc(DW$L$_write_line_info_rom$4$E)
	.dwendtag DW$76


DW$78	.dwtag  DW_TAG_loop
	.dwattr DW$78, DW_AT_name("C:\project\_Viper_\main\Rom.asm:L1:1:1729866708")
	.dwattr DW$78, DW_AT_begin_file("Rom.c")
	.dwattr DW$78, DW_AT_begin_line(0x19f)
	.dwattr DW$78, DW_AT_end_line(0x1a8)
DW$79	.dwtag  DW_TAG_loop_range
	.dwattr DW$79, DW_AT_low_pc(DW$L$_write_line_info_rom$2$B)
	.dwattr DW$79, DW_AT_high_pc(DW$L$_write_line_info_rom$2$E)
	.dwendtag DW$78

	.dwattr DW$56, DW_AT_end_file("Rom.c")
	.dwattr DW$56, DW_AT_end_line(0x1c3)
	.dwattr DW$56, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$56

	.sect	".text"
	.global	_write_end_acc_rom

DW$80	.dwtag  DW_TAG_subprogram, DW_AT_name("write_end_acc_rom"), DW_AT_symbol_name("_write_end_acc_rom")
	.dwattr DW$80, DW_AT_low_pc(_write_end_acc_rom)
	.dwattr DW$80, DW_AT_high_pc(0x00)
	.dwattr DW$80, DW_AT_begin_file("Rom.c")
	.dwattr DW$80, DW_AT_begin_line(0x159)
	.dwattr DW$80, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",346,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_end_acc_rom            FR SIZE:   8           *
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
_write_end_acc_rom:
;*** 348	-----------------------    save_acc[] = {...};
;*** 351	-----------------------    save_acc[0] = g_u32_END_ACC_targetval&0xffuL;
;*** 352	-----------------------    save_acc[1] = g_u32_END_ACC_targetval>>8&0xffuL;
;*** 354	-----------------------    SpiWriteRom(5u, 0u, 8u, &save_acc);
;*** 354	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$81	.dwtag  DW_TAG_variable, DW_AT_name("save_acc"), DW_AT_symbol_name("_save_acc")
	.dwattr DW$81, DW_AT_type(*DW$T$42)
	.dwattr DW$81, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",348,9
        MOVZ      AR4,SP                ; |348| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T4$5$0        ; |348| 
        SUBB      XAR4,#8               ; |348| 
        LCR       #___memcpy_ff         ; |348| 
        ; call occurs [#___memcpy_ff] ; |348| 
	.dwpsn	"Rom.c",351,5
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVB      AL.LSB,@_g_u32_END_ACC_targetval ; |351| 
        MOV       *-SP[8],AL            ; |351| 
	.dwpsn	"Rom.c",352,5
        CLRC      SXM
        MOVL      ACC,@_g_u32_END_ACC_targetval ; |352| 
        SFR       ACC,8                 ; |352| 
        ANDB      AL,#0xff              ; |352| 
        MOVB      AH,#0
        MOV       *-SP[7],AL            ; |352| 
	.dwpsn	"Rom.c",354,5
        MOVZ      AR4,SP                ; |354| 
        MOVB      XAR5,#8               ; |354| 
        MOVB      AL,#5                 ; |354| 
        SUBB      XAR4,#8               ; |354| 
        LCR       #_SpiWriteRom         ; |354| 
        ; call occurs [#_SpiWriteRom] ; |354| 
	.dwpsn	"Rom.c",355,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$80, DW_AT_end_file("Rom.c")
	.dwattr DW$80, DW_AT_end_line(0x163)
	.dwattr DW$80, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$80

	.sect	".text"
	.global	_write_dec_handle_rom

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("write_dec_handle_rom"), DW_AT_symbol_name("_write_dec_handle_rom")
	.dwattr DW$82, DW_AT_low_pc(_write_dec_handle_rom)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("Rom.c")
	.dwattr DW$82, DW_AT_begin_line(0x22a)
	.dwattr DW$82, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",555,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_dec_handle_rom         FR SIZE:   8           *
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
_write_dec_handle_rom:
;*** 557	-----------------------    save_dec[] = {...};
;*** 560	-----------------------    save_dec[0] = g_i16_handle_dec&0xffu;
;*** 561	-----------------------    save_dec[1] = g_i16_handle_dec>>8;
;*** 563	-----------------------    SpiWriteRom(20u, 0u, 8u, &save_dec);
;*** 563	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$83	.dwtag  DW_TAG_variable, DW_AT_name("save_dec"), DW_AT_symbol_name("_save_dec")
	.dwattr DW$83, DW_AT_type(*DW$T$42)
	.dwattr DW$83, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",557,9
        MOVZ      AR4,SP                ; |557| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T21$22$0      ; |557| 
        SUBB      XAR4,#8               ; |557| 
        LCR       #___memcpy_ff         ; |557| 
        ; call occurs [#___memcpy_ff] ; |557| 
	.dwpsn	"Rom.c",560,5
        MOVW      DP,#_g_i16_handle_dec
        MOVB      AL.LSB,@_g_i16_handle_dec ; |560| 
        MOV       *-SP[8],AL            ; |560| 
	.dwpsn	"Rom.c",561,5
        MOV       AL,@_g_i16_handle_dec ; |561| 
        LSR       AL,8                  ; |561| 
        MOV       *-SP[7],AL            ; |561| 
	.dwpsn	"Rom.c",563,5
        MOVZ      AR4,SP                ; |563| 
        MOVB      XAR5,#8               ; |563| 
        MOVB      ACC,#20
        SUBB      XAR4,#8               ; |563| 
        LCR       #_SpiWriteRom         ; |563| 
        ; call occurs [#_SpiWriteRom] ; |563| 
	.dwpsn	"Rom.c",565,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$82, DW_AT_end_file("Rom.c")
	.dwattr DW$82, DW_AT_end_line(0x235)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$82

	.sect	".text"
	.global	_write_acc_rom

DW$84	.dwtag  DW_TAG_subprogram, DW_AT_name("write_acc_rom"), DW_AT_symbol_name("_write_acc_rom")
	.dwattr DW$84, DW_AT_low_pc(_write_acc_rom)
	.dwattr DW$84, DW_AT_high_pc(0x00)
	.dwattr DW$84, DW_AT_begin_file("Rom.c")
	.dwattr DW$84, DW_AT_begin_line(0x13f)
	.dwattr DW$84, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",320,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_acc_rom                FR SIZE:   8           *
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
_write_acc_rom:
;*** 322	-----------------------    save_acc[] = {...};
;*** 325	-----------------------    save_acc[0] = g_u32_ACC_targetval&0xffuL;
;*** 326	-----------------------    save_acc[1] = g_u32_ACC_targetval>>8&0xffuL;
;*** 328	-----------------------    SpiWriteRom(3u, 0u, 8u, &save_acc);
;*** 328	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("save_acc"), DW_AT_symbol_name("_save_acc")
	.dwattr DW$85, DW_AT_type(*DW$T$42)
	.dwattr DW$85, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",322,9
        MOVZ      AR4,SP                ; |322| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T2$3$0        ; |322| 
        SUBB      XAR4,#8               ; |322| 
        LCR       #___memcpy_ff         ; |322| 
        ; call occurs [#___memcpy_ff] ; |322| 
	.dwpsn	"Rom.c",325,5
        MOVW      DP,#_g_u32_ACC_targetval
        MOVB      AL.LSB,@_g_u32_ACC_targetval ; |325| 
        MOV       *-SP[8],AL            ; |325| 
	.dwpsn	"Rom.c",326,5
        CLRC      SXM
        MOVL      ACC,@_g_u32_ACC_targetval ; |326| 
        SFR       ACC,8                 ; |326| 
        ANDB      AL,#0xff              ; |326| 
        MOVB      AH,#0
        MOV       *-SP[7],AL            ; |326| 
	.dwpsn	"Rom.c",328,5
        MOVZ      AR4,SP                ; |328| 
        MOVB      XAR5,#8               ; |328| 
        MOVB      AL,#3                 ; |328| 
        SUBB      XAR4,#8               ; |328| 
        LCR       #_SpiWriteRom         ; |328| 
        ; call occurs [#_SpiWriteRom] ; |328| 
	.dwpsn	"Rom.c",329,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$84, DW_AT_end_file("Rom.c")
	.dwattr DW$84, DW_AT_end_line(0x149)
	.dwattr DW$84, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$84

	.sect	".text"
	.global	_write_acc_handle_rom

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("write_acc_handle_rom"), DW_AT_symbol_name("_write_acc_handle_rom")
	.dwattr DW$86, DW_AT_low_pc(_write_acc_handle_rom)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("Rom.c")
	.dwattr DW$86, DW_AT_begin_line(0x201)
	.dwattr DW$86, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",514,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _write_acc_handle_rom         FR SIZE:   8           *
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
_write_acc_handle_rom:
;*** 516	-----------------------    save_acc[] = {...};
;*** 519	-----------------------    save_acc[0] = g_i16_handle_acc&0xffu;
;*** 520	-----------------------    save_acc[1] = g_i16_handle_acc>>8;
;*** 522	-----------------------    SpiWriteRom(19u, 0u, 8u, &save_acc);
;*** 522	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$87	.dwtag  DW_TAG_variable, DW_AT_name("save_acc"), DW_AT_symbol_name("_save_acc")
	.dwattr DW$87, DW_AT_type(*DW$T$42)
	.dwattr DW$87, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",516,9
        MOVZ      AR4,SP                ; |516| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T18$19$0      ; |516| 
        SUBB      XAR4,#8               ; |516| 
        LCR       #___memcpy_ff         ; |516| 
        ; call occurs [#___memcpy_ff] ; |516| 
	.dwpsn	"Rom.c",519,5
        MOVW      DP,#_g_i16_handle_acc
        MOVB      AL.LSB,@_g_i16_handle_acc ; |519| 
        MOV       *-SP[8],AL            ; |519| 
	.dwpsn	"Rom.c",520,5
        MOV       AL,@_g_i16_handle_acc ; |520| 
        LSR       AL,8                  ; |520| 
        MOV       *-SP[7],AL            ; |520| 
	.dwpsn	"Rom.c",522,5
        MOVZ      AR4,SP                ; |522| 
        MOVB      XAR5,#8               ; |522| 
        MOVB      ACC,#19
        SUBB      XAR4,#8               ; |522| 
        LCR       #_SpiWriteRom         ; |522| 
        ; call occurs [#_SpiWriteRom] ; |522| 
	.dwpsn	"Rom.c",524,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("Rom.c")
	.dwattr DW$86, DW_AT_end_line(0x20c)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$86

	.sect	".text"
	.global	_read_vel_rom

DW$88	.dwtag  DW_TAG_subprogram, DW_AT_name("read_vel_rom"), DW_AT_symbol_name("_read_vel_rom")
	.dwattr DW$88, DW_AT_low_pc(_read_vel_rom)
	.dwattr DW$88, DW_AT_high_pc(0x00)
	.dwattr DW$88, DW_AT_begin_file("Rom.c")
	.dwattr DW$88, DW_AT_begin_line(0x130)
	.dwattr DW$88, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",305,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_vel_rom                 FR SIZE:   8           *
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
_read_vel_rom:
;*** 307	-----------------------    lead_vel[] = {...};
;*** 310	-----------------------    SpiReadRom(2u, 0u, 8u, &lead_vel);
;*** 312	-----------------------    g_u32_VEL_targetval = lead_vel[0]&0xffu;
;*** 313	-----------------------    g_u32_VEL_targetval |= lead_vel[1]<<8;
;*** 313	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("lead_vel"), DW_AT_symbol_name("_lead_vel")
	.dwattr DW$89, DW_AT_type(*DW$T$42)
	.dwattr DW$89, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",307,12
        MOVZ      AR4,SP                ; |307| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T1$2$0        ; |307| 
        SUBB      XAR4,#8               ; |307| 
        LCR       #___memcpy_ff         ; |307| 
        ; call occurs [#___memcpy_ff] ; |307| 
	.dwpsn	"Rom.c",310,5
        MOVZ      AR4,SP                ; |310| 
        MOVB      XAR5,#8               ; |310| 
        MOVB      ACC,#2
        SUBB      XAR4,#8               ; |310| 
        LCR       #_SpiReadRom          ; |310| 
        ; call occurs [#_SpiReadRom] ; |310| 
	.dwpsn	"Rom.c",312,5
        MOV       AL,*-SP[8]            ; |312| 
        ANDB      AL,#0xff              ; |312| 
        MOVW      DP,#_g_u32_VEL_targetval
        MOVU      ACC,AL
        MOVL      @_g_u32_VEL_targetval,ACC ; |312| 
	.dwpsn	"Rom.c",313,5
        MOV       ACC,*-SP[7] << #8     ; |313| 
        MOVU      ACC,AL
        OR        @_g_u32_VEL_targetval,AL ; |313| 
        OR        @_g_u32_VEL_targetval+1,AH ; |313| 
	.dwpsn	"Rom.c",316,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$88, DW_AT_end_file("Rom.c")
	.dwattr DW$88, DW_AT_end_line(0x13c)
	.dwattr DW$88, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$88

	.sect	".text"
	.global	_read_mark_cnt_rom

DW$90	.dwtag  DW_TAG_subprogram, DW_AT_name("read_mark_cnt_rom"), DW_AT_symbol_name("_read_mark_cnt_rom")
	.dwattr DW$90, DW_AT_low_pc(_read_mark_cnt_rom)
	.dwattr DW$90, DW_AT_high_pc(0x00)
	.dwattr DW$90, DW_AT_begin_file("Rom.c")
	.dwattr DW$90, DW_AT_begin_line(0x17f)
	.dwattr DW$90, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",384,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_mark_cnt_rom            FR SIZE:   2           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  2 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_read_mark_cnt_rom:
;*** 386	-----------------------    mark_larr[] = {...};
;*** 388	-----------------------    SpiReadRom(6u, 0u, 2u, &mark_larr);
;*** 390	-----------------------    g_int32total_cnt = (long)(mark_larr[0]&0xffu);
;*** 391	-----------------------    g_int32total_cnt |= mark_larr[1]<<8;
;*** 391	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("mark_larr"), DW_AT_symbol_name("_mark_larr")
	.dwattr DW$91, DW_AT_type(*DW$T$47)
	.dwattr DW$91, DW_AT_location[DW_OP_breg20 -2]
	.dwpsn	"Rom.c",386,9
        MOVZ      AR4,SP                ; |386| 
        MOVB      ACC,#2
        MOVL      XAR5,#_$T7$8$0        ; |386| 
        SUBB      XAR4,#2               ; |386| 
        LCR       #___memcpy_ff         ; |386| 
        ; call occurs [#___memcpy_ff] ; |386| 
	.dwpsn	"Rom.c",388,2
        MOVZ      AR4,SP                ; |388| 
        MOVB      XAR5,#2               ; |388| 
        MOVB      ACC,#6
        SUBB      XAR4,#2               ; |388| 
        LCR       #_SpiReadRom          ; |388| 
        ; call occurs [#_SpiReadRom] ; |388| 
	.dwpsn	"Rom.c",390,2
        MOV       AL,*-SP[2]            ; |390| 
        ANDB      AL,#0xff              ; |390| 
        MOVW      DP,#_g_int32total_cnt
        MOVU      ACC,AL
        MOVL      @_g_int32total_cnt,ACC ; |390| 
	.dwpsn	"Rom.c",391,2
        MOV       ACC,*-SP[1] << #8     ; |391| 
        MOVU      ACC,AL
        OR        @_g_int32total_cnt,AL ; |391| 
        OR        @_g_int32total_cnt+1,AH ; |391| 
	.dwpsn	"Rom.c",393,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$90, DW_AT_end_file("Rom.c")
	.dwattr DW$90, DW_AT_end_line(0x189)
	.dwattr DW$90, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$90

	.sect	".text"
	.global	_read_line_info_rom

DW$92	.dwtag  DW_TAG_subprogram, DW_AT_name("read_line_info_rom"), DW_AT_symbol_name("_read_line_info_rom")
	.dwattr DW$92, DW_AT_low_pc(_read_line_info_rom)
	.dwattr DW$92, DW_AT_high_pc(0x00)
	.dwattr DW$92, DW_AT_begin_file("Rom.c")
	.dwattr DW$92, DW_AT_begin_line(0x1c4)
	.dwattr DW$92, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",453,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_line_info_rom           FR SIZE: 1294           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 1288 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_read_line_info_rom:
;*** 457	-----------------------    dist_larr[] = {...};
;*** 458	-----------------------    turn_larr[] = {...};
;*** 459	-----------------------    ldist_larr[] = {...};
;*** 460	-----------------------    rdist_larr[] = {...};
;*** 461	-----------------------    cross_larr[] = {...};
;*** 463	-----------------------    SpiReadRom(7u, 0u, 256u, &dist_larr);
;*** 464	-----------------------    SpiReadRom(8u, 0u, 256u, &turn_larr);
;*** 465	-----------------------    SpiReadRom(9u, 0u, 256u, &ldist_larr);
;*** 466	-----------------------    SpiReadRom(10u, 0u, 256u, &rdist_larr);
;*** 467	-----------------------    SpiReadRom(11u, 0u, 256u, &cross_larr);
;*** 468	-----------------------    read_mark_cnt_rom();
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
        MOVZ      AR2,SP
        SUBB      FP,#8
        ADD       SP,#1288
	.dwcfa	0x1d, -1296
;* AR1   assigned to U$28
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("U$28"), DW_AT_symbol_name("U$28")
	.dwattr DW$93, DW_AT_type(*DW$T$39)
	.dwattr DW$93, DW_AT_location[DW_OP_reg6]
;* AR1   assigned to U$28
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("U$28"), DW_AT_symbol_name("U$28")
	.dwattr DW$94, DW_AT_type(*DW$T$39)
	.dwattr DW$94, DW_AT_location[DW_OP_reg6]
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("U$38"), DW_AT_symbol_name("U$38")
	.dwattr DW$95, DW_AT_type(*DW$T$66)
	.dwattr DW$95, DW_AT_location[DW_OP_breg20 -1286]
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("U$38"), DW_AT_symbol_name("U$38")
	.dwattr DW$96, DW_AT_type(*DW$T$66)
	.dwattr DW$96, DW_AT_location[DW_OP_breg20 -1286]
;* AR7   assigned to U$43
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("U$43"), DW_AT_symbol_name("U$43")
	.dwattr DW$97, DW_AT_type(*DW$T$39)
	.dwattr DW$97, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to U$43
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("U$43"), DW_AT_symbol_name("U$43")
	.dwattr DW$98, DW_AT_type(*DW$T$39)
	.dwattr DW$98, DW_AT_location[DW_OP_reg18]
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("U$48"), DW_AT_symbol_name("U$48")
	.dwattr DW$99, DW_AT_type(*DW$T$66)
	.dwattr DW$99, DW_AT_location[DW_OP_breg20 -1284]
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("U$48"), DW_AT_symbol_name("U$48")
	.dwattr DW$100, DW_AT_type(*DW$T$66)
	.dwattr DW$100, DW_AT_location[DW_OP_breg20 -1288]
;* AR6   assigned to U$52
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("U$52"), DW_AT_symbol_name("U$52")
	.dwattr DW$101, DW_AT_type(*DW$T$39)
	.dwattr DW$101, DW_AT_location[DW_OP_reg16]
;* AR6   assigned to U$52
DW$102	.dwtag  DW_TAG_variable, DW_AT_name("U$52"), DW_AT_symbol_name("U$52")
	.dwattr DW$102, DW_AT_type(*DW$T$39)
	.dwattr DW$102, DW_AT_location[DW_OP_reg16]
DW$103	.dwtag  DW_TAG_variable, DW_AT_name("U$57"), DW_AT_symbol_name("U$57")
	.dwattr DW$103, DW_AT_type(*DW$T$66)
	.dwattr DW$103, DW_AT_location[DW_OP_breg20 -1288]
;* XT    assigned to U$57
DW$104	.dwtag  DW_TAG_variable, DW_AT_name("U$57"), DW_AT_symbol_name("U$57")
	.dwattr DW$104, DW_AT_type(*DW$T$66)
	.dwattr DW$104, DW_AT_location[DW_OP_reg21]
;* AR5   assigned to U$61
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("U$61"), DW_AT_symbol_name("U$61")
	.dwattr DW$105, DW_AT_type(*DW$T$39)
	.dwattr DW$105, DW_AT_location[DW_OP_reg14]
;* AR5   assigned to U$61
DW$106	.dwtag  DW_TAG_variable, DW_AT_name("U$61"), DW_AT_symbol_name("U$61")
	.dwattr DW$106, DW_AT_type(*DW$T$39)
	.dwattr DW$106, DW_AT_location[DW_OP_reg14]
;* XT    assigned to U$66
DW$107	.dwtag  DW_TAG_variable, DW_AT_name("U$66"), DW_AT_symbol_name("U$66")
	.dwattr DW$107, DW_AT_type(*DW$T$66)
	.dwattr DW$107, DW_AT_location[DW_OP_reg21]
;* PL    assigned to U$66
DW$108	.dwtag  DW_TAG_variable, DW_AT_name("U$66"), DW_AT_symbol_name("U$66")
	.dwattr DW$108, DW_AT_type(*DW$T$66)
	.dwattr DW$108, DW_AT_location[DW_OP_reg2]
;* AR4   assigned to U$70
DW$109	.dwtag  DW_TAG_variable, DW_AT_name("U$70"), DW_AT_symbol_name("U$70")
	.dwattr DW$109, DW_AT_type(*DW$T$39)
	.dwattr DW$109, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to U$70
DW$110	.dwtag  DW_TAG_variable, DW_AT_name("U$70"), DW_AT_symbol_name("U$70")
	.dwattr DW$110, DW_AT_type(*DW$T$39)
	.dwattr DW$110, DW_AT_location[DW_OP_reg12]
;* PL    assigned to U$75
DW$111	.dwtag  DW_TAG_variable, DW_AT_name("U$75"), DW_AT_symbol_name("U$75")
	.dwattr DW$111, DW_AT_type(*DW$T$66)
	.dwattr DW$111, DW_AT_location[DW_OP_reg2]
DW$112	.dwtag  DW_TAG_variable, DW_AT_name("U$75"), DW_AT_symbol_name("U$75")
	.dwattr DW$112, DW_AT_type(*DW$T$66)
	.dwattr DW$112, DW_AT_location[DW_OP_breg20 -1284]
DW$113	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$113, DW_AT_type(*DW$T$38)
	.dwattr DW$113, DW_AT_location[DW_OP_breg20 -1281]
DW$114	.dwtag  DW_TAG_variable, DW_AT_name("i"), DW_AT_symbol_name("_i")
	.dwattr DW$114, DW_AT_type(*DW$T$38)
	.dwattr DW$114, DW_AT_location[DW_OP_breg20 -1281]
DW$115	.dwtag  DW_TAG_variable, DW_AT_name("dist_larr"), DW_AT_symbol_name("_dist_larr")
	.dwattr DW$115, DW_AT_type(*DW$T$41)
	.dwattr DW$115, DW_AT_location[DW_OP_breg20 -256]
DW$116	.dwtag  DW_TAG_variable, DW_AT_name("turn_larr"), DW_AT_symbol_name("_turn_larr")
	.dwattr DW$116, DW_AT_type(*DW$T$41)
	.dwattr DW$116, DW_AT_location[DW_OP_breg20 -512]
DW$117	.dwtag  DW_TAG_variable, DW_AT_name("ldist_larr"), DW_AT_symbol_name("_ldist_larr")
	.dwattr DW$117, DW_AT_type(*DW$T$41)
	.dwattr DW$117, DW_AT_location[DW_OP_breg20 -768]
DW$118	.dwtag  DW_TAG_variable, DW_AT_name("rdist_larr"), DW_AT_symbol_name("_rdist_larr")
	.dwattr DW$118, DW_AT_type(*DW$T$41)
	.dwattr DW$118, DW_AT_location[DW_OP_breg20 -1024]
DW$119	.dwtag  DW_TAG_variable, DW_AT_name("cross_larr"), DW_AT_symbol_name("_cross_larr")
	.dwattr DW$119, DW_AT_type(*DW$T$41)
	.dwattr DW$119, DW_AT_location[DW_OP_breg20 -1280]
	.dwpsn	"Rom.c",457,9
        MOVZ      AR4,SP                ; |457| 
        ADD       AR4,#-256             ; |457| 
        MOVL      XAR5,#_$T13$14$0      ; |457| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |457| 
        ; call occurs [#___memcpy_ff] ; |457| 
	.dwpsn	"Rom.c",458,9
        MOVZ      AR4,SP                ; |458| 
        ADD       AR4,#-512             ; |458| 
        MOVL      XAR5,#_$T14$15$0      ; |458| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |458| 
        ; call occurs [#___memcpy_ff] ; |458| 
	.dwpsn	"Rom.c",459,9
        MOVZ      AR4,SP                ; |459| 
        ADD       AR4,#-768             ; |459| 
        MOVL      XAR5,#_$T15$16$0      ; |459| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |459| 
        ; call occurs [#___memcpy_ff] ; |459| 
	.dwpsn	"Rom.c",460,9
        MOVZ      AR4,SP                ; |460| 
        ADD       AR4,#-1024            ; |460| 
        MOVL      XAR5,#_$T16$17$0      ; |460| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |460| 
        ; call occurs [#___memcpy_ff] ; |460| 
	.dwpsn	"Rom.c",461,9
        MOVZ      AR4,SP                ; |461| 
        ADD       AR4,#-1280            ; |461| 
        MOVL      XAR5,#_$T17$18$0      ; |461| 
        MOV       ACC,#1 << 8
        LCR       #___memcpy_ff         ; |461| 
        ; call occurs [#___memcpy_ff] ; |461| 
	.dwpsn	"Rom.c",463,5
        MOVZ      AR4,SP                ; |463| 
        MOVL      XAR5,#256             ; |463| 
        MOVB      ACC,#7
        ADD       AR4,#-256             ; |463| 
        LCR       #_SpiReadRom          ; |463| 
        ; call occurs [#_SpiReadRom] ; |463| 
	.dwpsn	"Rom.c",464,5
        MOVZ      AR4,SP                ; |464| 
        MOVL      XAR5,#256             ; |464| 
        MOVB      ACC,#8
        ADD       AR4,#-512             ; |464| 
        LCR       #_SpiReadRom          ; |464| 
        ; call occurs [#_SpiReadRom] ; |464| 
	.dwpsn	"Rom.c",465,5
        MOVZ      AR4,SP                ; |465| 
        MOVL      XAR5,#256             ; |465| 
        MOVB      ACC,#9
        ADD       AR4,#-768             ; |465| 
        LCR       #_SpiReadRom          ; |465| 
        ; call occurs [#_SpiReadRom] ; |465| 
	.dwpsn	"Rom.c",466,2
        MOVZ      AR4,SP                ; |466| 
        MOVL      XAR5,#256             ; |466| 
        MOVB      ACC,#10
        ADD       AR4,#-1024            ; |466| 
        LCR       #_SpiReadRom          ; |466| 
        ; call occurs [#_SpiReadRom] ; |466| 
	.dwpsn	"Rom.c",467,2
        MOVZ      AR4,SP                ; |467| 
        MOVL      XAR5,#256             ; |467| 
        MOVB      ACC,#11
        ADD       AR4,#-1280            ; |467| 
        LCR       #_SpiReadRom          ; |467| 
        ; call occurs [#_SpiReadRom] ; |467| 
	.dwpsn	"Rom.c",468,2
        LCR       #_read_mark_cnt_rom   ; |468| 
        ; call occurs [#_read_mark_cnt_rom] ; |468| 
;*** 471	-----------------------    g_int32total_cnt;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$75 = &search_info[0];
;***  	-----------------------    U$70 = &cross_larr[0];
;***  	-----------------------    U$66 = U$75;
;***  	-----------------------    U$61 = &rdist_larr[0];
;***  	-----------------------    U$57 = U$66;
;***  	-----------------------    U$52 = &ldist_larr[0];
;***  	-----------------------    U$48 = U$57;
;***  	-----------------------    U$43 = &turn_larr[0];
;***  	-----------------------    U$38 = U$48;
;***  	-----------------------    U$28 = &dist_larr[0];
;*** 455	-----------------------    i = 0;
	.dwpsn	"Rom.c",471,14
        MOVL      XAR0,#8
        MOVL      ACC,@_g_int32total_cnt ; |471| 
        MOVL      XAR4,#_search_info
        MOVL      ACC,XAR4
        MOVL      *+FP[AR0],ACC
        MOVL      XAR0,#8
        MOVZ      AR1,SP
        MOVZ      AR7,SP
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#12
        MOVZ      AR6,SP
        MOVL      P,XAR4
        MOVZ      AR5,SP
        MOVL      *+FP[AR0],ACC
        MOVL      XAR0,#12
        MOVL      XT,XAR4
        ADD       AR1,#-256
        MOVZ      AR4,SP
        MOVL      ACC,*+FP[AR0]
        MOVL      XAR0,#10
        ADD       AR7,#-512
        ADD       AR6,#-768
        ADD       AR4,#-1280
        MOVL      *+FP[AR0],ACC
        ADD       AR5,#-1024
	.dwpsn	"Rom.c",455,8
        MOVL      XAR0,#15              ; |455| 
        SETC      SXM
        MOV       *+FP[AR0],#0          ; |455| 
L3:    
DW$L$_read_line_info_rom$3$B:
;***	-----------------------g2:
;*** 473	-----------------------    (*U$38).int32dist = (unsigned long)(*U$28++&0xffu);
;*** 473	-----------------------    U$38 += 26;
;*** 474	-----------------------    (*U$48).int32turn_way = *U$43++&0xffu;
;*** 474	-----------------------    U$48 += 26;
;*** 475	-----------------------    (*U$57).int32L_dist = *U$52++&0xffu;
;*** 475	-----------------------    U$57 += 26;
;*** 476	-----------------------    (*U$66).int32R_dist = *U$61++&0xffu;
;*** 476	-----------------------    U$66 += 26;
;*** 477	-----------------------    (*U$75).int32cross_check_dist = *U$70++&0xffu;
;*** 477	-----------------------    U$75 += 26;
;*** 471	-----------------------    if ( (unsigned long)(++i) <= g_int32total_cnt ) goto g2;
	.dwpsn	"Rom.c",473,9
        MOVL      XAR0,#10              ; |473| 
        MOVL      XAR0,*+FP[AR0]        ; |473| 
        MOV       AL,*XAR1++            ; |473| 
        ANDB      AL,#0xff              ; |473| 
        MOVU      ACC,AL
        MOVL      *+XAR0[0],ACC         ; |473| 
        MOVL      XAR0,#10              ; |473| 
        MOVL      ACC,*+FP[AR0]         ; |473| 
        MOVL      XAR0,#10              ; |473| 
        MOVB      XAR3,#26              ; |473| 
        ADDU      ACC,AR3               ; |473| 
        MOVL      *+FP[AR0],ACC         ; |473| 
	.dwpsn	"Rom.c",474,9
        MOVL      XAR0,#12              ; |474| 
        MOVL      XAR0,*+FP[AR0]        ; |474| 
        MOV       AL,*XAR7++            ; |474| 
        ANDB      AL,#0xff              ; |474| 
        MOVU      ACC,AL
        MOVL      *+XAR0[2],ACC         ; |474| 
        MOVL      XAR0,#12              ; |474| 
        MOVL      ACC,*+FP[AR0]         ; |474| 
        MOVL      XAR0,#12              ; |474| 
        ADDU      ACC,AR3               ; |474| 
        MOVL      *+FP[AR0],ACC         ; |474| 
	.dwpsn	"Rom.c",475,9
        MOVL      XAR0,#8               ; |475| 
        MOVL      XAR0,*+FP[AR0]        ; |475| 
        MOV       AL,*XAR6++            ; |475| 
        ANDB      AL,#0xff              ; |475| 
        MOVU      ACC,AL
        MOVL      *+XAR0[4],ACC         ; |475| 
        MOVL      XAR0,#8               ; |475| 
        MOVL      ACC,*+FP[AR0]         ; |475| 
        MOVL      XAR0,#8               ; |475| 
        ADDU      ACC,AR3               ; |475| 
        MOVL      *+FP[AR0],ACC         ; |475| 
	.dwpsn	"Rom.c",476,9
        MOVL      XAR0,XT               ; |476| 
        MOV       AL,*XAR5++            ; |476| 
        ANDB      AL,#0xff              ; |476| 
        MOVU      ACC,AL
        MOVL      *+XAR0[6],ACC         ; |476| 
        MOVB      XAR0,#26              ; |476| 
        MOVL      ACC,XT                ; |476| 
        ADDU      ACC,AR0               ; |476| 
        MOVL      XT,ACC                ; |476| 
	.dwpsn	"Rom.c",477,9
        MOV       AL,*XAR4++            ; |477| 
        MOVL      XAR3,P                ; |477| 
        ANDB      AL,#0xff              ; |477| 
        MOVB      XAR0,#8               ; |477| 
        MOVU      ACC,AL
        MOVL      *+XAR3[AR0],ACC       ; |477| 
        MOVB      XAR0,#26              ; |477| 
        MOVL      ACC,P                 ; |477| 
        ADDU      ACC,AR0               ; |477| 
        MOVL      P,ACC                 ; |477| 
	.dwpsn	"Rom.c",471,14
        MOVL      XAR0,#15
        MOV       AL,*+FP[AR0]
        MOVL      XAR0,#15              ; |471| 
        ADDB      AL,#1                 ; |471| 
        MOV       *+FP[AR0],AL          ; |471| 
        MOVL      XAR0,#15              ; |471| 
        MOV       ACC,*+FP[AR0]         ; |471| 
        CMPL      ACC,@_g_int32total_cnt ; |471| 
        BF        L3,LOS                ; |471| 
        ; branchcc occurs ; |471| 
DW$L$_read_line_info_rom$3$E:
;*** 481	-----------------------    SpiReadRom(12u, 0u, 256u, &dist_larr);
;*** 482	-----------------------    SpiReadRom(13u, 0u, 256u, &turn_larr);
;*** 483	-----------------------    SpiReadRom(14u, 0u, 256u, &ldist_larr);
;*** 484	-----------------------    SpiReadRom(15u, 0u, 256u, &rdist_larr);
;*** 485	-----------------------    SpiReadRom(16u, 0u, 256u, &cross_larr);
;*** 487	-----------------------    g_int32total_cnt;
;***  	-----------------------    #pragma LOOP_FLAGS(4096u)
;***  	-----------------------    U$75 = &search_info[0];
;***  	-----------------------    U$70 = &cross_larr[0];
;***  	-----------------------    U$66 = U$75;
;***  	-----------------------    U$61 = &rdist_larr[0];
;***  	-----------------------    U$57 = U$66;
;***  	-----------------------    U$52 = &ldist_larr[0];
;***  	-----------------------    U$48 = U$57;
;***  	-----------------------    U$43 = &turn_larr[0];
;***  	-----------------------    U$38 = U$48;
;***  	-----------------------    U$28 = &dist_larr[0];
;*** 487	-----------------------    i = 0;
	.dwpsn	"Rom.c",481,2
        MOVZ      AR4,SP                ; |481| 
        MOVL      XAR5,#256             ; |481| 
        MOVB      ACC,#12
        ADD       AR4,#-256             ; |481| 
        LCR       #_SpiReadRom          ; |481| 
        ; call occurs [#_SpiReadRom] ; |481| 
	.dwpsn	"Rom.c",482,5
        MOVZ      AR4,SP                ; |482| 
        MOVL      XAR5,#256             ; |482| 
        MOVB      ACC,#13
        ADD       AR4,#-512             ; |482| 
        LCR       #_SpiReadRom          ; |482| 
        ; call occurs [#_SpiReadRom] ; |482| 
	.dwpsn	"Rom.c",483,2
        MOVZ      AR4,SP                ; |483| 
        MOVL      XAR5,#256             ; |483| 
        MOVB      ACC,#14
        ADD       AR4,#-768             ; |483| 
        LCR       #_SpiReadRom          ; |483| 
        ; call occurs [#_SpiReadRom] ; |483| 
	.dwpsn	"Rom.c",484,2
        MOVZ      AR4,SP                ; |484| 
        MOVL      XAR5,#256             ; |484| 
        MOVB      ACC,#15
        ADD       AR4,#-1024            ; |484| 
        LCR       #_SpiReadRom          ; |484| 
        ; call occurs [#_SpiReadRom] ; |484| 
	.dwpsn	"Rom.c",485,5
        MOVZ      AR4,SP                ; |485| 
        MOVL      XAR5,#256             ; |485| 
        MOVB      ACC,#16
        ADD       AR4,#-1280            ; |485| 
        LCR       #_SpiReadRom          ; |485| 
        ; call occurs [#_SpiReadRom] ; |485| 
	.dwpsn	"Rom.c",487,14
        MOVL      XAR0,#12
        MOVL      XAR4,#_search_info
        MOVL      *+FP[AR0],XAR4
        MOVL      XAR0,#12
        MOVL      P,*+FP[AR0]
        MOVL      XAR0,#8
        MOVL      *+FP[AR0],P
        MOVW      DP,#_g_int32total_cnt
        MOVL      XAR0,#8
        MOVL      ACC,@_g_int32total_cnt ; |487| 
        MOVZ      AR5,SP
        MOVZ      AR7,SP
        MOVL      ACC,*+FP[AR0]
        MOVZ      AR6,SP
        MOVZ      AR4,SP
        MOVZ      AR1,SP
        ADD       AR5,#-1024
        MOVL      XAR0,#10
        ADD       AR7,#-512
        ADD       AR6,#-768
        ADD       AR4,#-1280
        MOVL      XT,P
        MOVL      *+FP[AR0],ACC
        ADD       AR1,#-256
	.dwpsn	"Rom.c",487,9
        MOVL      XAR0,#15              ; |487| 
        MOVB      XAR3,#26              ; |489| 
        SETC      SXM
        MOV       *+FP[AR0],#0          ; |487| 
L4:    
DW$L$_read_line_info_rom$5$B:
;***	-----------------------g4:
;*** 489	-----------------------    (*U$38).int32dist |= *U$28++<<8;
;*** 489	-----------------------    U$38 += 26;
;*** 490	-----------------------    (*U$48).int32turn_way |= *U$43++<<8;
;*** 490	-----------------------    U$48 += 26;
;*** 491	-----------------------    (*U$57).int32L_dist |= *U$52++<<8;
;*** 491	-----------------------    U$57 += 26;
;*** 492	-----------------------    (*U$66).int32R_dist |= *U$61++<<8;
;*** 492	-----------------------    U$66 += 26;
;*** 493	-----------------------    (*U$75).int32cross_check_dist |= *U$70++<<8;
;*** 493	-----------------------    U$75 += 26;
;*** 487	-----------------------    if ( (unsigned long)(++i) <= g_int32total_cnt ) goto g4;
;***  	-----------------------    return;
	.dwpsn	"Rom.c",489,9
        MOVL      XAR0,#10              ; |489| 
        MOVL      XAR0,*+FP[AR0]        ; |489| 
        MOV       ACC,*XAR1++ << #8     ; |489| 
        MOVU      ACC,AL
        OR        *+XAR0[0],AL          ; |489| 
        MOVL      XAR0,#10              ; |489| 
        MOVL      XAR0,*+FP[AR0]        ; |489| 
        OR        *+XAR0[1],AH          ; |489| 
        MOVL      XAR0,#10              ; |489| 
        MOVL      ACC,*+FP[AR0]         ; |489| 
        MOVL      XAR0,#10              ; |489| 
        ADDU      ACC,AR3               ; |489| 
        MOVL      *+FP[AR0],ACC         ; |489| 
	.dwpsn	"Rom.c",490,9
        MOVL      XAR0,#8               ; |490| 
        MOVL      XAR0,*+FP[AR0]        ; |490| 
        MOV       ACC,*XAR7++ << #8     ; |490| 
        MOVU      ACC,AL
        OR        *+XAR0[2],AL          ; |490| 
        MOVL      XAR0,#8               ; |490| 
        MOVL      XAR0,*+FP[AR0]        ; |490| 
        OR        *+XAR0[3],AH          ; |490| 
        MOVL      XAR0,#8               ; |490| 
        MOVL      ACC,*+FP[AR0]         ; |490| 
        MOVL      XAR0,#8               ; |490| 
        ADDU      ACC,AR3               ; |490| 
        MOVL      *+FP[AR0],ACC         ; |490| 
	.dwpsn	"Rom.c",491,3
        MOVL      XAR0,XT               ; |491| 
        MOV       ACC,*XAR6++ << #8     ; |491| 
        MOVU      ACC,AL
        OR        *+XAR0[4],AL          ; |491| 
        MOVL      XAR0,XT               ; |491| 
        OR        *+XAR0[5],AH          ; |491| 
        MOVB      XAR0,#26              ; |491| 
        MOVL      ACC,XT                ; |491| 
        ADDU      ACC,AR0               ; |491| 
        MOVL      XT,ACC                ; |491| 
	.dwpsn	"Rom.c",492,3
        MOVL      XAR0,P                ; |492| 
        MOV       ACC,*XAR5++ << #8     ; |492| 
        MOVU      ACC,AL
        OR        *+XAR0[6],AL          ; |492| 
        MOVL      XAR0,P                ; |492| 
        OR        *+XAR0[7],AH          ; |492| 
        MOVB      XAR0,#26              ; |492| 
        MOVL      ACC,P                 ; |492| 
        ADDU      ACC,AR0               ; |492| 
        MOVL      P,ACC                 ; |492| 
	.dwpsn	"Rom.c",493,9
        MOVL      XAR0,#12              ; |493| 
        MOVL      XAR0,*+FP[AR0]        ; |493| 
        MOVB      ACC,#8
        ADDL      ACC,XAR0
        MOVL      XAR0,ACC              ; |493| 
        MOV       ACC,*XAR4++ << #8     ; |493| 
        MOVU      ACC,AL
        OR        *+XAR0[0],AL          ; |493| 
        OR        *+XAR0[1],AH          ; |493| 
        MOVL      XAR0,#12              ; |493| 
        MOVL      ACC,*+FP[AR0]         ; |493| 
        MOVL      XAR0,#12              ; |493| 
        ADDU      ACC,AR3               ; |493| 
        MOVL      *+FP[AR0],ACC         ; |493| 
	.dwpsn	"Rom.c",487,14
        MOVL      XAR0,#15
        MOV       AL,*+FP[AR0]
        MOVL      XAR0,#15              ; |487| 
        ADDB      AL,#1                 ; |487| 
        MOV       *+FP[AR0],AL          ; |487| 
        MOVL      XAR0,#15              ; |487| 
        MOV       ACC,*+FP[AR0]         ; |487| 
        CMPL      ACC,@_g_int32total_cnt ; |487| 
        BF        L4,LOS                ; |487| 
        ; branchcc occurs ; |487| 
DW$L$_read_line_info_rom$5$E:
	.dwpsn	"Rom.c",511,1
        ADD       SP,#-1288
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

DW$120	.dwtag  DW_TAG_loop
	.dwattr DW$120, DW_AT_name("C:\project\_Viper_\main\Rom.asm:L4:1:1729866708")
	.dwattr DW$120, DW_AT_begin_file("Rom.c")
	.dwattr DW$120, DW_AT_begin_line(0x1e7)
	.dwattr DW$120, DW_AT_end_line(0x1ee)
DW$121	.dwtag  DW_TAG_loop_range
	.dwattr DW$121, DW_AT_low_pc(DW$L$_read_line_info_rom$5$B)
	.dwattr DW$121, DW_AT_high_pc(DW$L$_read_line_info_rom$5$E)
	.dwendtag DW$120


DW$122	.dwtag  DW_TAG_loop
	.dwattr DW$122, DW_AT_name("C:\project\_Viper_\main\Rom.asm:L3:1:1729866708")
	.dwattr DW$122, DW_AT_begin_file("Rom.c")
	.dwattr DW$122, DW_AT_begin_line(0x1d7)
	.dwattr DW$122, DW_AT_end_line(0x1de)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_read_line_info_rom$3$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_read_line_info_rom$3$E)
	.dwendtag DW$122

	.dwattr DW$92, DW_AT_end_file("Rom.c")
	.dwattr DW$92, DW_AT_end_line(0x1ff)
	.dwattr DW$92, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$92

	.sect	".text"
	.global	_read_handle_dec_rom

DW$124	.dwtag  DW_TAG_subprogram, DW_AT_name("read_handle_dec_rom"), DW_AT_symbol_name("_read_handle_dec_rom")
	.dwattr DW$124, DW_AT_low_pc(_read_handle_dec_rom)
	.dwattr DW$124, DW_AT_high_pc(0x00)
	.dwattr DW$124, DW_AT_begin_file("Rom.c")
	.dwattr DW$124, DW_AT_begin_line(0x21b)
	.dwattr DW$124, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",540,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_handle_dec_rom          FR SIZE:   8           *
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
_read_handle_dec_rom:
;*** 542	-----------------------    lead_dec[] = {...};
;*** 545	-----------------------    SpiReadRom(20u, 0u, 8u, &lead_dec);
;*** 548	-----------------------    g_i16_handle_dec = lead_dec[1]<<8|lead_dec[0]&0xffu;
;*** 548	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$125	.dwtag  DW_TAG_variable, DW_AT_name("lead_dec"), DW_AT_symbol_name("_lead_dec")
	.dwattr DW$125, DW_AT_type(*DW$T$42)
	.dwattr DW$125, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",542,12
        MOVZ      AR4,SP                ; |542| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T20$21$0      ; |542| 
        SUBB      XAR4,#8               ; |542| 
        LCR       #___memcpy_ff         ; |542| 
        ; call occurs [#___memcpy_ff] ; |542| 
	.dwpsn	"Rom.c",545,5
        MOVZ      AR4,SP                ; |545| 
        MOVB      XAR5,#8               ; |545| 
        MOVB      ACC,#20
        SUBB      XAR4,#8               ; |545| 
        LCR       #_SpiReadRom          ; |545| 
        ; call occurs [#_SpiReadRom] ; |545| 
	.dwpsn	"Rom.c",548,5
        MOV       AH,*-SP[7]            ; |548| 
        MOV       AL,*-SP[8]            ; |548| 
        MOVB      AL.MSB,AH             ; |548| 
        MOVW      DP,#_g_i16_handle_dec
        MOV       @_g_i16_handle_dec,AL ; |548| 
	.dwpsn	"Rom.c",551,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$124, DW_AT_end_file("Rom.c")
	.dwattr DW$124, DW_AT_end_line(0x227)
	.dwattr DW$124, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$124

	.sect	".text"
	.global	_read_handle_acc_rom

DW$126	.dwtag  DW_TAG_subprogram, DW_AT_name("read_handle_acc_rom"), DW_AT_symbol_name("_read_handle_acc_rom")
	.dwattr DW$126, DW_AT_low_pc(_read_handle_acc_rom)
	.dwattr DW$126, DW_AT_high_pc(0x00)
	.dwattr DW$126, DW_AT_begin_file("Rom.c")
	.dwattr DW$126, DW_AT_begin_line(0x20e)
	.dwattr DW$126, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",527,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_handle_acc_rom          FR SIZE:   8           *
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
_read_handle_acc_rom:
;*** 529	-----------------------    lead_acc[] = {...};
;*** 532	-----------------------    SpiReadRom(19u, 0u, 8u, &lead_acc);
;*** 535	-----------------------    g_i16_handle_acc = lead_acc[1]<<8|lead_acc[0]&0xffu;
;*** 535	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$127	.dwtag  DW_TAG_variable, DW_AT_name("lead_acc"), DW_AT_symbol_name("_lead_acc")
	.dwattr DW$127, DW_AT_type(*DW$T$42)
	.dwattr DW$127, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",529,12
        MOVZ      AR4,SP                ; |529| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T19$20$0      ; |529| 
        SUBB      XAR4,#8               ; |529| 
        LCR       #___memcpy_ff         ; |529| 
        ; call occurs [#___memcpy_ff] ; |529| 
	.dwpsn	"Rom.c",532,5
        MOVZ      AR4,SP                ; |532| 
        MOVB      XAR5,#8               ; |532| 
        MOVB      ACC,#19
        SUBB      XAR4,#8               ; |532| 
        LCR       #_SpiReadRom          ; |532| 
        ; call occurs [#_SpiReadRom] ; |532| 
	.dwpsn	"Rom.c",535,5
        MOV       AH,*-SP[7]            ; |535| 
        MOV       AL,*-SP[8]            ; |535| 
        MOVB      AL.MSB,AH             ; |535| 
        MOVW      DP,#_g_i16_handle_acc
        MOV       @_g_i16_handle_acc,AL ; |535| 
	.dwpsn	"Rom.c",537,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$126, DW_AT_end_file("Rom.c")
	.dwattr DW$126, DW_AT_end_line(0x219)
	.dwattr DW$126, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$126

	.sect	".text"
	.global	_read_end_acc_rom

DW$128	.dwtag  DW_TAG_subprogram, DW_AT_name("read_end_acc_rom"), DW_AT_symbol_name("_read_end_acc_rom")
	.dwattr DW$128, DW_AT_low_pc(_read_end_acc_rom)
	.dwattr DW$128, DW_AT_high_pc(0x00)
	.dwattr DW$128, DW_AT_begin_file("Rom.c")
	.dwattr DW$128, DW_AT_begin_line(0x164)
	.dwattr DW$128, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",357,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_end_acc_rom             FR SIZE:   8           *
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
_read_end_acc_rom:
;*** 359	-----------------------    lead_acc[] = {...};
;*** 362	-----------------------    SpiReadRom(5u, 0u, 8u, &lead_acc);
;*** 364	-----------------------    g_u32_END_ACC_targetval = lead_acc[0]&0xffu;
;*** 365	-----------------------    g_u32_END_ACC_targetval |= lead_acc[1]<<8;
;*** 365	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$129	.dwtag  DW_TAG_variable, DW_AT_name("lead_acc"), DW_AT_symbol_name("_lead_acc")
	.dwattr DW$129, DW_AT_type(*DW$T$42)
	.dwattr DW$129, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",359,12
        MOVZ      AR4,SP                ; |359| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T5$6$0        ; |359| 
        SUBB      XAR4,#8               ; |359| 
        LCR       #___memcpy_ff         ; |359| 
        ; call occurs [#___memcpy_ff] ; |359| 
	.dwpsn	"Rom.c",362,5
        MOVZ      AR4,SP                ; |362| 
        MOVB      XAR5,#8               ; |362| 
        MOVB      ACC,#5
        SUBB      XAR4,#8               ; |362| 
        LCR       #_SpiReadRom          ; |362| 
        ; call occurs [#_SpiReadRom] ; |362| 
	.dwpsn	"Rom.c",364,5
        MOV       AL,*-SP[8]            ; |364| 
        ANDB      AL,#0xff              ; |364| 
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVU      ACC,AL
        MOVL      @_g_u32_END_ACC_targetval,ACC ; |364| 
	.dwpsn	"Rom.c",365,5
        MOV       ACC,*-SP[7] << #8     ; |365| 
        MOVU      ACC,AL
        OR        @_g_u32_END_ACC_targetval,AL ; |365| 
        OR        @_g_u32_END_ACC_targetval+1,AH ; |365| 
	.dwpsn	"Rom.c",368,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$128, DW_AT_end_file("Rom.c")
	.dwattr DW$128, DW_AT_end_line(0x170)
	.dwattr DW$128, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$128

	.sect	".text"
	.global	_read_acc_rom

DW$130	.dwtag  DW_TAG_subprogram, DW_AT_name("read_acc_rom"), DW_AT_symbol_name("_read_acc_rom")
	.dwattr DW$130, DW_AT_low_pc(_read_acc_rom)
	.dwattr DW$130, DW_AT_high_pc(0x00)
	.dwattr DW$130, DW_AT_begin_file("Rom.c")
	.dwattr DW$130, DW_AT_begin_line(0x14b)
	.dwattr DW$130, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",332,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _read_acc_rom                 FR SIZE:   8           *
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
_read_acc_rom:
;*** 334	-----------------------    lead_acc[] = {...};
;*** 337	-----------------------    SpiReadRom(3u, 0u, 8u, &lead_acc);
;*** 339	-----------------------    g_u32_ACC_targetval = lead_acc[0]&0xffu;
;*** 340	-----------------------    g_u32_ACC_targetval |= lead_acc[1]<<8;
;*** 340	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
DW$131	.dwtag  DW_TAG_variable, DW_AT_name("lead_acc"), DW_AT_symbol_name("_lead_acc")
	.dwattr DW$131, DW_AT_type(*DW$T$42)
	.dwattr DW$131, DW_AT_location[DW_OP_breg20 -8]
	.dwpsn	"Rom.c",334,12
        MOVZ      AR4,SP                ; |334| 
        MOVB      ACC,#8
        MOVL      XAR5,#_$T3$4$0        ; |334| 
        SUBB      XAR4,#8               ; |334| 
        LCR       #___memcpy_ff         ; |334| 
        ; call occurs [#___memcpy_ff] ; |334| 
	.dwpsn	"Rom.c",337,5
        MOVZ      AR4,SP                ; |337| 
        MOVB      XAR5,#8               ; |337| 
        MOVB      ACC,#3
        SUBB      XAR4,#8               ; |337| 
        LCR       #_SpiReadRom          ; |337| 
        ; call occurs [#_SpiReadRom] ; |337| 
	.dwpsn	"Rom.c",339,5
        MOV       AL,*-SP[8]            ; |339| 
        ANDB      AL,#0xff              ; |339| 
        MOVW      DP,#_g_u32_ACC_targetval
        MOVU      ACC,AL
        MOVL      @_g_u32_ACC_targetval,ACC ; |339| 
	.dwpsn	"Rom.c",340,5
        MOV       ACC,*-SP[7] << #8     ; |340| 
        MOVU      ACC,AL
        OR        @_g_u32_ACC_targetval,AL ; |340| 
        OR        @_g_u32_ACC_targetval+1,AH ; |340| 
	.dwpsn	"Rom.c",343,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$130, DW_AT_end_file("Rom.c")
	.dwattr DW$130, DW_AT_end_line(0x157)
	.dwattr DW$130, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$130

	.sect	".text"
	.global	_maxmin_write_rom

DW$132	.dwtag  DW_TAG_subprogram, DW_AT_name("maxmin_write_rom"), DW_AT_symbol_name("_maxmin_write_rom")
	.dwattr DW$132, DW_AT_low_pc(_maxmin_write_rom)
	.dwattr DW$132, DW_AT_high_pc(0x00)
	.dwattr DW$132, DW_AT_begin_file("Rom.c")
	.dwattr DW$132, DW_AT_begin_line(0x34)
	.dwattr DW$132, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",53,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _maxmin_write_rom             FR SIZE: 258           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 256 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_maxmin_write_rom:
;*** 57	-----------------------    memset(&write_buf, 0, 256uL);
;*** 64	-----------------------    C$1 = &g_sen[0];
;*** 64	-----------------------    write_buf[0] = (*C$1).iq17_4095_min_value>>17&0xffL;
;*** 65	-----------------------    write_buf[1] = (*C$1).iq17_4095_min_value>>17>>8&0xffL;
;*** 67	-----------------------    write_buf[2] = *((volatile long *)C$1+16L)>>17&0xffL;
;*** 68	-----------------------    write_buf[3] = ((volatile long *)g_sen)[8]>>17>>8&0xffL;
;*** 70	-----------------------    write_buf[4] = *((volatile long *)C$1+30L)>>17&0xffL;
;*** 71	-----------------------    write_buf[5] = ((volatile long *)g_sen)[15]>>17>>8&0xffL;
;*** 73	-----------------------    write_buf[6] = *((volatile long *)C$1+44L)>>17&0xffL;
;*** 74	-----------------------    write_buf[7] = ((volatile long *)g_sen)[22]>>17>>8&0xffL;
;*** 76	-----------------------    write_buf[8] = *((volatile long *)C$1+58L)>>17&0xffL;
;*** 77	-----------------------    write_buf[9] = ((volatile long *)g_sen)[29]>>17>>8&0xffL;
;*** 79	-----------------------    write_buf[10] = *((volatile long *)C$1+72L)>>17&0xffL;
;*** 80	-----------------------    write_buf[11] = ((volatile long *)g_sen)[36]>>17>>8&0xffL;
;*** 82	-----------------------    write_buf[12] = *((volatile long *)C$1+86L)>>17&0xffL;
;*** 83	-----------------------    write_buf[13] = ((volatile long *)g_sen)[43]>>17>>8&0xffL;
;*** 85	-----------------------    write_buf[14] = *((volatile long *)C$1+100L)>>17&0xffL;
;*** 86	-----------------------    write_buf[15] = ((volatile long *)g_sen)[50]>>17>>8&0xffL;
;*** 88	-----------------------    write_buf[16] = *((volatile long *)C$1+114L)>>17&0xffL;
;*** 89	-----------------------    write_buf[17] = ((volatile long *)g_sen)[57]>>17>>8&0xffL;
;*** 91	-----------------------    write_buf[18] = *((volatile long *)C$1+128L)>>17&0xffL;
;*** 92	-----------------------    write_buf[19] = ((volatile long *)g_sen)[64]>>17>>8&0xffL;
;*** 94	-----------------------    write_buf[20] = *((volatile long *)C$1+142L)>>17&0xffL;
;*** 95	-----------------------    write_buf[21] = ((volatile long *)g_sen)[71]>>17>>8&0xffL;
;*** 97	-----------------------    write_buf[22] = *((volatile long *)C$1+156L)>>17&0xffL;
;*** 98	-----------------------    write_buf[23] = ((volatile long *)g_sen)[78]>>17>>8&0xffL;
;*** 100	-----------------------    write_buf[24] = *((volatile long *)C$1+170L)>>17&0xffL;
;*** 101	-----------------------    write_buf[25] = ((volatile long *)g_sen)[85]>>17>>8&0xffL;
;*** 103	-----------------------    write_buf[26] = *((volatile long *)C$1+184L)>>17&0xffL;
;*** 104	-----------------------    write_buf[27] = ((volatile long *)g_sen)[92]>>17>>8&0xffL;
;*** 106	-----------------------    write_buf[28] = *((volatile long *)C$1+198L)>>17&0xffL;
;*** 107	-----------------------    write_buf[29] = ((volatile long *)g_sen)[99]>>17>>8&0xffL;
;*** 109	-----------------------    write_buf[30] = *((volatile long *)C$1+212L)>>17&0xffL;
;*** 110	-----------------------    write_buf[31] = ((volatile long *)g_sen)[106]>>17>>8&0xffL;
;*** 114	-----------------------    write_buf[32] = (*C$1).iq17_4095_max_value>>17&0xffL;
;*** 115	-----------------------    write_buf[33] = (*C$1).iq17_4095_max_value>>17>>8&0xffL;
;*** 117	-----------------------    write_buf[34] = *((volatile long *)C$1+18L)>>17&0xffL;
;*** 118	-----------------------    write_buf[35] = ((volatile long *)g_sen)[9]>>17>>8&0xffL;
;*** 120	-----------------------    write_buf[36] = *((volatile long *)C$1+32L)>>17&0xffL;
;*** 121	-----------------------    write_buf[37] = ((volatile long *)g_sen)[16]>>17>>8&0xffL;
;*** 123	-----------------------    write_buf[38] = *((volatile long *)C$1+46L)>>17&0xffL;
;*** 124	-----------------------    write_buf[39] = ((volatile long *)g_sen)[23]>>17>>8&0xffL;
;*** 126	-----------------------    write_buf[40] = *((volatile long *)C$1+60L)>>17&0xffL;
;*** 127	-----------------------    write_buf[41] = ((volatile long *)g_sen)[30]>>17>>8&0xffL;
;*** 129	-----------------------    write_buf[42] = *((volatile long *)C$1+74L)>>17&0xffL;
;*** 130	-----------------------    write_buf[43] = ((volatile long *)g_sen)[37]>>17>>8&0xffL;
;*** 132	-----------------------    write_buf[44] = *((volatile long *)C$1+88L)>>17&0xffL;
;*** 133	-----------------------    write_buf[45] = ((volatile long *)g_sen)[44]>>17>>8&0xffL;
;*** 135	-----------------------    write_buf[46] = *((volatile long *)C$1+102L)>>17&0xffL;
;*** 136	-----------------------    write_buf[47] = ((volatile long *)g_sen)[51]>>17>>8&0xffL;
;*** 138	-----------------------    write_buf[48] = *((volatile long *)C$1+116L)>>17&0xffL;
;*** 139	-----------------------    write_buf[49] = ((volatile long *)g_sen)[58]>>17>>8&0xffL;
;*** 141	-----------------------    write_buf[50] = *((volatile long *)C$1+130L)>>17&0xffL;
;*** 142	-----------------------    write_buf[51] = ((volatile long *)g_sen)[65]>>17>>8&0xffL;
;*** 144	-----------------------    write_buf[52] = *((volatile long *)C$1+144L)>>17&0xffL;
;*** 145	-----------------------    write_buf[53] = ((volatile long *)g_sen)[72]>>17>>8&0xffL;
;*** 147	-----------------------    write_buf[54] = *((volatile long *)C$1+158L)>>17&0xffL;
;*** 148	-----------------------    write_buf[55] = ((volatile long *)g_sen)[79]>>17>>8&0xffL;
;*** 150	-----------------------    write_buf[56] = *((volatile long *)C$1+172L)>>17&0xffL;
;*** 151	-----------------------    write_buf[57] = ((volatile long *)g_sen)[86]>>17>>8&0xffL;
;*** 153	-----------------------    write_buf[58] = *((volatile long *)C$1+186L)>>17&0xffL;
;*** 154	-----------------------    write_buf[59] = ((volatile long *)g_sen)[93]>>17>>8&0xffL;
;*** 156	-----------------------    write_buf[60] = *((volatile long *)C$1+200L)>>17&0xffL;
;*** 157	-----------------------    write_buf[61] = ((volatile long *)g_sen)[100]>>17>>8&0xffL;
;*** 159	-----------------------    write_buf[62] = *((volatile long *)C$1+214L)>>17&0xffL;
;*** 160	-----------------------    write_buf[63] = ((volatile long *)g_sen)[107]>>17>>8&0xffL;
;*** 163	-----------------------    SpiWriteRom(1u, 0u, 256u, &write_buf);
;*** 163	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR2
	.dwcfa	0x80, 9, 2
	.dwcfa	0x1d, -4
        MOVZ      AR2,SP
        SUBB      FP,#4
        ADD       SP,#256
	.dwcfa	0x1d, -260
;* AR5   assigned to C$1
DW$133	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$133, DW_AT_type(*DW$T$71)
	.dwattr DW$133, DW_AT_location[DW_OP_reg14]
DW$134	.dwtag  DW_TAG_variable, DW_AT_name("write_buf"), DW_AT_symbol_name("_write_buf")
	.dwattr DW$134, DW_AT_type(*DW$T$41)
	.dwattr DW$134, DW_AT_location[DW_OP_breg20 -256]
	.dwpsn	"Rom.c",57,5
        MOVZ      AR4,SP                ; |57| 
        ADD       AR4,#-256             ; |57| 
        MOVB      XAR5,#0
        MOV       ACC,#1 << 8
        LCR       #_memset              ; |57| 
        ; call occurs [#_memset] ; |57| 
	.dwpsn	"Rom.c",64,5
        MOVL      XAR5,#_g_sen          ; |64| 
        MOV       T,#17                 ; |64| 
        MOVL      ACC,*+XAR5[2]         ; |64| 
        ASRL      ACC,T                 ; |64| 
        ANDB      AL,#0xff              ; |64| 
        MOV       *+FP[4],AL            ; |64| 
	.dwpsn	"Rom.c",65,5
        MOV       T,#25                 ; |65| 
        MOVL      ACC,*+XAR5[2]         ; |65| 
        ASRL      ACC,T                 ; |65| 
        ANDB      AL,#0xff              ; |65| 
        MOV       *+FP[5],AL            ; |65| 
	.dwpsn	"Rom.c",67,5
        MOVB      XAR0,#16              ; |67| 
        MOV       T,#17                 ; |67| 
        MOVL      ACC,*+XAR5[AR0]       ; |67| 
        ASRL      ACC,T                 ; |67| 
        ANDB      AL,#0xff              ; |67| 
        MOV       *+FP[6],AL            ; |67| 
	.dwpsn	"Rom.c",68,5
        MOVW      DP,#_g_sen+16
        MOV       T,#25                 ; |68| 
        MOVL      ACC,@_g_sen+16        ; |68| 
        ASRL      ACC,T                 ; |68| 
        ANDB      AL,#0xff              ; |68| 
        MOV       *+FP[7],AL            ; |68| 
	.dwpsn	"Rom.c",70,5
        MOVB      XAR0,#30              ; |70| 
        MOVL      ACC,*+XAR5[AR0]       ; |70| 
        MOVL      XAR0,#8               ; |70| 
        MOV       T,#17                 ; |70| 
        ASRL      ACC,T                 ; |70| 
        ANDB      AL,#0xff              ; |70| 
        MOV       *+FP[AR0],AL          ; |70| 
	.dwpsn	"Rom.c",71,5
        MOV       T,#25                 ; |71| 
        MOVL      XAR0,#9               ; |71| 
        MOVL      ACC,@_g_sen+30        ; |71| 
        ASRL      ACC,T                 ; |71| 
        ANDB      AL,#0xff              ; |71| 
        MOV       *+FP[AR0],AL          ; |71| 
	.dwpsn	"Rom.c",73,5
        MOVB      XAR0,#44              ; |73| 
        MOVL      ACC,*+XAR5[AR0]       ; |73| 
        MOVL      XAR0,#10              ; |73| 
        MOV       T,#17                 ; |73| 
        ASRL      ACC,T                 ; |73| 
        ANDB      AL,#0xff              ; |73| 
        MOV       *+FP[AR0],AL          ; |73| 
	.dwpsn	"Rom.c",74,5
        MOV       T,#25                 ; |74| 
        MOVL      XAR0,#11              ; |74| 
        MOVL      ACC,@_g_sen+44        ; |74| 
        ASRL      ACC,T                 ; |74| 
        ANDB      AL,#0xff              ; |74| 
        MOV       *+FP[AR0],AL          ; |74| 
	.dwpsn	"Rom.c",76,5
        MOVB      XAR0,#58              ; |76| 
        MOVL      ACC,*+XAR5[AR0]       ; |76| 
        MOVL      XAR0,#12              ; |76| 
        MOV       T,#17                 ; |76| 
        ASRL      ACC,T                 ; |76| 
        ANDB      AL,#0xff              ; |76| 
        MOV       *+FP[AR0],AL          ; |76| 
	.dwpsn	"Rom.c",77,5
        MOV       T,#25                 ; |77| 
        MOVL      XAR0,#13              ; |77| 
        MOVL      ACC,@_g_sen+58        ; |77| 
        ASRL      ACC,T                 ; |77| 
        ANDB      AL,#0xff              ; |77| 
        MOV       *+FP[AR0],AL          ; |77| 
	.dwpsn	"Rom.c",79,5
        MOVB      XAR0,#72              ; |79| 
        MOVL      ACC,*+XAR5[AR0]       ; |79| 
        MOVL      XAR0,#14              ; |79| 
        MOV       T,#17                 ; |79| 
        ASRL      ACC,T                 ; |79| 
        ANDB      AL,#0xff              ; |79| 
        MOV       *+FP[AR0],AL          ; |79| 
	.dwpsn	"Rom.c",80,5
        MOVW      DP,#_g_sen+72
        MOV       T,#25                 ; |80| 
        MOVL      XAR0,#15              ; |80| 
        MOVL      ACC,@_g_sen+72        ; |80| 
        ASRL      ACC,T                 ; |80| 
        ANDB      AL,#0xff              ; |80| 
        MOV       *+FP[AR0],AL          ; |80| 
	.dwpsn	"Rom.c",82,5
        MOVB      XAR0,#86              ; |82| 
        MOVL      ACC,*+XAR5[AR0]       ; |82| 
        MOVL      XAR0,#16              ; |82| 
        MOV       T,#17                 ; |82| 
        ASRL      ACC,T                 ; |82| 
        ANDB      AL,#0xff              ; |82| 
        MOV       *+FP[AR0],AL          ; |82| 
	.dwpsn	"Rom.c",83,5
        MOV       T,#25                 ; |83| 
        MOVL      XAR0,#17              ; |83| 
        MOVL      ACC,@_g_sen+86        ; |83| 
        ASRL      ACC,T                 ; |83| 
        ANDB      AL,#0xff              ; |83| 
        MOV       *+FP[AR0],AL          ; |83| 
	.dwpsn	"Rom.c",85,5
        MOVB      XAR0,#100             ; |85| 
        MOVL      ACC,*+XAR5[AR0]       ; |85| 
        MOVL      XAR0,#18              ; |85| 
        MOV       T,#17                 ; |85| 
        ASRL      ACC,T                 ; |85| 
        ANDB      AL,#0xff              ; |85| 
        MOV       *+FP[AR0],AL          ; |85| 
	.dwpsn	"Rom.c",86,5
        MOV       T,#25                 ; |86| 
        MOVL      XAR0,#19              ; |86| 
        MOVL      ACC,@_g_sen+100       ; |86| 
        ASRL      ACC,T                 ; |86| 
        ANDB      AL,#0xff              ; |86| 
        MOV       *+FP[AR0],AL          ; |86| 
	.dwpsn	"Rom.c",88,5
        MOVB      XAR0,#114             ; |88| 
        MOVL      ACC,*+XAR5[AR0]       ; |88| 
        MOVL      XAR0,#20              ; |88| 
        MOV       T,#17                 ; |88| 
        ASRL      ACC,T                 ; |88| 
        ANDB      AL,#0xff              ; |88| 
        MOV       *+FP[AR0],AL          ; |88| 
	.dwpsn	"Rom.c",89,5
        MOV       T,#25                 ; |89| 
        MOVL      XAR0,#21              ; |89| 
        MOVL      ACC,@_g_sen+114       ; |89| 
        ASRL      ACC,T                 ; |89| 
        ANDB      AL,#0xff              ; |89| 
        MOV       *+FP[AR0],AL          ; |89| 
	.dwpsn	"Rom.c",91,5
        MOVB      XAR0,#128             ; |91| 
        MOVL      ACC,*+XAR5[AR0]       ; |91| 
        MOVL      XAR0,#22              ; |91| 
        MOV       T,#17                 ; |91| 
        ASRL      ACC,T                 ; |91| 
        ANDB      AL,#0xff              ; |91| 
        MOV       *+FP[AR0],AL          ; |91| 
	.dwpsn	"Rom.c",92,5
        MOVW      DP,#_g_sen+128
        MOV       T,#25                 ; |92| 
        MOVL      XAR0,#23              ; |92| 
        MOVL      ACC,@_g_sen+128       ; |92| 
        ASRL      ACC,T                 ; |92| 
        ANDB      AL,#0xff              ; |92| 
        MOV       *+FP[AR0],AL          ; |92| 
	.dwpsn	"Rom.c",94,5
        MOVB      XAR0,#142             ; |94| 
        MOVL      ACC,*+XAR5[AR0]       ; |94| 
        MOVL      XAR0,#24              ; |94| 
        MOV       T,#17                 ; |94| 
        ASRL      ACC,T                 ; |94| 
        ANDB      AL,#0xff              ; |94| 
        MOV       *+FP[AR0],AL          ; |94| 
	.dwpsn	"Rom.c",95,5
        MOV       T,#25                 ; |95| 
        MOVL      XAR0,#25              ; |95| 
        MOVL      ACC,@_g_sen+142       ; |95| 
        ASRL      ACC,T                 ; |95| 
        ANDB      AL,#0xff              ; |95| 
        MOV       *+FP[AR0],AL          ; |95| 
	.dwpsn	"Rom.c",97,5
        MOVB      XAR0,#156             ; |97| 
        MOVL      ACC,*+XAR5[AR0]       ; |97| 
        MOVL      XAR0,#26              ; |97| 
        MOV       T,#17                 ; |97| 
        ASRL      ACC,T                 ; |97| 
        ANDB      AL,#0xff              ; |97| 
        MOV       *+FP[AR0],AL          ; |97| 
	.dwpsn	"Rom.c",98,5
        MOV       T,#25                 ; |98| 
        MOVL      XAR0,#27              ; |98| 
        MOVL      ACC,@_g_sen+156       ; |98| 
        ASRL      ACC,T                 ; |98| 
        ANDB      AL,#0xff              ; |98| 
        MOV       *+FP[AR0],AL          ; |98| 
	.dwpsn	"Rom.c",100,5
        MOVB      XAR0,#170             ; |100| 
        MOVL      ACC,*+XAR5[AR0]       ; |100| 
        MOVL      XAR0,#28              ; |100| 
        MOV       T,#17                 ; |100| 
        ASRL      ACC,T                 ; |100| 
        ANDB      AL,#0xff              ; |100| 
        MOV       *+FP[AR0],AL          ; |100| 
	.dwpsn	"Rom.c",101,5
        MOV       T,#25                 ; |101| 
        MOVL      XAR0,#29              ; |101| 
        MOVL      ACC,@_g_sen+170       ; |101| 
        ASRL      ACC,T                 ; |101| 
        ANDB      AL,#0xff              ; |101| 
        MOV       *+FP[AR0],AL          ; |101| 
	.dwpsn	"Rom.c",103,5
        MOVB      XAR0,#184             ; |103| 
        MOVL      ACC,*+XAR5[AR0]       ; |103| 
        MOVL      XAR0,#30              ; |103| 
        MOV       T,#17                 ; |103| 
        ASRL      ACC,T                 ; |103| 
        ANDB      AL,#0xff              ; |103| 
        MOV       *+FP[AR0],AL          ; |103| 
	.dwpsn	"Rom.c",104,5
        MOV       T,#25                 ; |104| 
        MOVL      XAR0,#31              ; |104| 
        MOVL      ACC,@_g_sen+184       ; |104| 
        ASRL      ACC,T                 ; |104| 
        ANDB      AL,#0xff              ; |104| 
        MOV       *+FP[AR0],AL          ; |104| 
	.dwpsn	"Rom.c",106,5
        MOVB      XAR0,#198             ; |106| 
        MOVL      ACC,*+XAR5[AR0]       ; |106| 
        MOVL      XAR0,#32              ; |106| 
        MOV       T,#17                 ; |106| 
        ASRL      ACC,T                 ; |106| 
        ANDB      AL,#0xff              ; |106| 
        MOV       *+FP[AR0],AL          ; |106| 
	.dwpsn	"Rom.c",107,5
        MOVW      DP,#_g_sen+198
        MOV       T,#25                 ; |107| 
        MOVL      XAR0,#33              ; |107| 
        MOVL      ACC,@_g_sen+198       ; |107| 
        ASRL      ACC,T                 ; |107| 
        ANDB      AL,#0xff              ; |107| 
        MOV       *+FP[AR0],AL          ; |107| 
	.dwpsn	"Rom.c",109,5
        MOVB      XAR0,#212             ; |109| 
        MOVL      ACC,*+XAR5[AR0]       ; |109| 
        MOVL      XAR0,#34              ; |109| 
        MOV       T,#17                 ; |109| 
        ASRL      ACC,T                 ; |109| 
        ANDB      AL,#0xff              ; |109| 
        MOV       *+FP[AR0],AL          ; |109| 
	.dwpsn	"Rom.c",110,5
        MOV       T,#25                 ; |110| 
        MOVL      XAR0,#35              ; |110| 
        MOVL      ACC,@_g_sen+212       ; |110| 
        ASRL      ACC,T                 ; |110| 
        ANDB      AL,#0xff              ; |110| 
        MOV       *+FP[AR0],AL          ; |110| 
	.dwpsn	"Rom.c",114,5
        MOV       T,#17                 ; |114| 
        MOVL      XAR0,#36              ; |114| 
        MOVL      ACC,*+XAR5[4]         ; |114| 
        ASRL      ACC,T                 ; |114| 
        ANDB      AL,#0xff              ; |114| 
        MOV       *+FP[AR0],AL          ; |114| 
	.dwpsn	"Rom.c",115,5
        MOV       T,#25                 ; |115| 
        MOVL      XAR0,#37              ; |115| 
        MOVL      ACC,*+XAR5[4]         ; |115| 
        ASRL      ACC,T                 ; |115| 
        ANDB      AL,#0xff              ; |115| 
        MOV       *+FP[AR0],AL          ; |115| 
	.dwpsn	"Rom.c",117,5
        MOVB      XAR0,#18              ; |117| 
        MOVL      ACC,*+XAR5[AR0]       ; |117| 
        MOVL      XAR0,#38              ; |117| 
        MOV       T,#17                 ; |117| 
        ASRL      ACC,T                 ; |117| 
        ANDB      AL,#0xff              ; |117| 
        MOV       *+FP[AR0],AL          ; |117| 
	.dwpsn	"Rom.c",118,5
        MOVW      DP,#_g_sen+18
        MOV       T,#25                 ; |118| 
        MOVL      XAR0,#39              ; |118| 
        MOVL      ACC,@_g_sen+18        ; |118| 
        ASRL      ACC,T                 ; |118| 
        ANDB      AL,#0xff              ; |118| 
        MOV       *+FP[AR0],AL          ; |118| 
	.dwpsn	"Rom.c",120,5
        MOVB      XAR0,#32              ; |120| 
        MOVL      ACC,*+XAR5[AR0]       ; |120| 
        MOVL      XAR0,#40              ; |120| 
        MOV       T,#17                 ; |120| 
        ASRL      ACC,T                 ; |120| 
        ANDB      AL,#0xff              ; |120| 
        MOV       *+FP[AR0],AL          ; |120| 
	.dwpsn	"Rom.c",121,5
        MOV       T,#25                 ; |121| 
        MOVL      XAR0,#41              ; |121| 
        MOVL      ACC,@_g_sen+32        ; |121| 
        ASRL      ACC,T                 ; |121| 
        ANDB      AL,#0xff              ; |121| 
        MOV       *+FP[AR0],AL          ; |121| 
	.dwpsn	"Rom.c",123,5
        MOVB      XAR0,#46              ; |123| 
        MOVL      ACC,*+XAR5[AR0]       ; |123| 
        MOVL      XAR0,#42              ; |123| 
        MOV       T,#17                 ; |123| 
        ASRL      ACC,T                 ; |123| 
        ANDB      AL,#0xff              ; |123| 
        MOV       *+FP[AR0],AL          ; |123| 
	.dwpsn	"Rom.c",124,5
        MOV       T,#25                 ; |124| 
        MOVL      XAR0,#43              ; |124| 
        MOVL      ACC,@_g_sen+46        ; |124| 
        ASRL      ACC,T                 ; |124| 
        ANDB      AL,#0xff              ; |124| 
        MOV       *+FP[AR0],AL          ; |124| 
	.dwpsn	"Rom.c",126,5
        MOVB      XAR0,#60              ; |126| 
        MOVL      ACC,*+XAR5[AR0]       ; |126| 
        MOVL      XAR0,#44              ; |126| 
        MOV       T,#17                 ; |126| 
        ASRL      ACC,T                 ; |126| 
        ANDB      AL,#0xff              ; |126| 
        MOV       *+FP[AR0],AL          ; |126| 
	.dwpsn	"Rom.c",127,5
        MOV       T,#25                 ; |127| 
        MOVL      XAR0,#45              ; |127| 
        MOVL      ACC,@_g_sen+60        ; |127| 
        ASRL      ACC,T                 ; |127| 
        ANDB      AL,#0xff              ; |127| 
        MOV       *+FP[AR0],AL          ; |127| 
	.dwpsn	"Rom.c",129,5
        MOVB      XAR0,#74              ; |129| 
        MOVL      ACC,*+XAR5[AR0]       ; |129| 
        MOVL      XAR0,#46              ; |129| 
        MOV       T,#17                 ; |129| 
        ASRL      ACC,T                 ; |129| 
        ANDB      AL,#0xff              ; |129| 
        MOV       *+FP[AR0],AL          ; |129| 
	.dwpsn	"Rom.c",130,5
        MOVW      DP,#_g_sen+74
        MOV       T,#25                 ; |130| 
        MOVL      XAR0,#47              ; |130| 
        MOVL      ACC,@_g_sen+74        ; |130| 
        ASRL      ACC,T                 ; |130| 
        ANDB      AL,#0xff              ; |130| 
        MOV       *+FP[AR0],AL          ; |130| 
	.dwpsn	"Rom.c",132,5
        MOVB      XAR0,#88              ; |132| 
        MOVL      ACC,*+XAR5[AR0]       ; |132| 
        MOVL      XAR0,#48              ; |132| 
        MOV       T,#17                 ; |132| 
        ASRL      ACC,T                 ; |132| 
        ANDB      AL,#0xff              ; |132| 
        MOV       *+FP[AR0],AL          ; |132| 
	.dwpsn	"Rom.c",133,5
        MOV       T,#25                 ; |133| 
        MOVL      XAR0,#49              ; |133| 
        MOVL      ACC,@_g_sen+88        ; |133| 
        ASRL      ACC,T                 ; |133| 
        ANDB      AL,#0xff              ; |133| 
        MOV       *+FP[AR0],AL          ; |133| 
	.dwpsn	"Rom.c",135,5
        MOVB      XAR0,#102             ; |135| 
        MOVL      ACC,*+XAR5[AR0]       ; |135| 
        MOVL      XAR0,#50              ; |135| 
        MOV       T,#17                 ; |135| 
        ASRL      ACC,T                 ; |135| 
        ANDB      AL,#0xff              ; |135| 
        MOV       *+FP[AR0],AL          ; |135| 
	.dwpsn	"Rom.c",136,5
        MOV       T,#25                 ; |136| 
        MOVL      XAR0,#51              ; |136| 
        MOVL      ACC,@_g_sen+102       ; |136| 
        ASRL      ACC,T                 ; |136| 
        ANDB      AL,#0xff              ; |136| 
        MOV       *+FP[AR0],AL          ; |136| 
	.dwpsn	"Rom.c",138,5
        MOVB      XAR0,#116             ; |138| 
        MOVL      ACC,*+XAR5[AR0]       ; |138| 
        MOVL      XAR0,#52              ; |138| 
        MOV       T,#17                 ; |138| 
        ASRL      ACC,T                 ; |138| 
        ANDB      AL,#0xff              ; |138| 
        MOV       *+FP[AR0],AL          ; |138| 
	.dwpsn	"Rom.c",139,5
        MOV       T,#25                 ; |139| 
        MOVL      XAR0,#53              ; |139| 
        MOVL      ACC,@_g_sen+116       ; |139| 
        ASRL      ACC,T                 ; |139| 
        ANDB      AL,#0xff              ; |139| 
        MOV       *+FP[AR0],AL          ; |139| 
	.dwpsn	"Rom.c",141,5
        MOVB      XAR0,#130             ; |141| 
        MOVL      ACC,*+XAR5[AR0]       ; |141| 
        MOVL      XAR0,#54              ; |141| 
        MOV       T,#17                 ; |141| 
        ASRL      ACC,T                 ; |141| 
        ANDB      AL,#0xff              ; |141| 
        MOV       *+FP[AR0],AL          ; |141| 
	.dwpsn	"Rom.c",142,5
        MOVW      DP,#_g_sen+130
        MOV       T,#25                 ; |142| 
        MOVL      XAR0,#55              ; |142| 
        MOVL      ACC,@_g_sen+130       ; |142| 
        ASRL      ACC,T                 ; |142| 
        ANDB      AL,#0xff              ; |142| 
        MOV       *+FP[AR0],AL          ; |142| 
	.dwpsn	"Rom.c",144,5
        MOVB      XAR0,#144             ; |144| 
        MOVL      ACC,*+XAR5[AR0]       ; |144| 
        MOVL      XAR0,#56              ; |144| 
        MOV       T,#17                 ; |144| 
        ASRL      ACC,T                 ; |144| 
        ANDB      AL,#0xff              ; |144| 
        MOV       *+FP[AR0],AL          ; |144| 
	.dwpsn	"Rom.c",145,5
        MOV       T,#25                 ; |145| 
        MOVL      XAR0,#57              ; |145| 
        MOVL      ACC,@_g_sen+144       ; |145| 
        ASRL      ACC,T                 ; |145| 
        ANDB      AL,#0xff              ; |145| 
        MOV       *+FP[AR0],AL          ; |145| 
	.dwpsn	"Rom.c",147,5
        MOVB      XAR0,#158             ; |147| 
        MOVL      ACC,*+XAR5[AR0]       ; |147| 
        MOVL      XAR0,#58              ; |147| 
        MOV       T,#17                 ; |147| 
        ASRL      ACC,T                 ; |147| 
        ANDB      AL,#0xff              ; |147| 
        MOV       *+FP[AR0],AL          ; |147| 
	.dwpsn	"Rom.c",148,5
        MOV       T,#25                 ; |148| 
        MOVL      XAR0,#59              ; |148| 
        MOVL      ACC,@_g_sen+158       ; |148| 
        ASRL      ACC,T                 ; |148| 
        ANDB      AL,#0xff              ; |148| 
        MOV       *+FP[AR0],AL          ; |148| 
	.dwpsn	"Rom.c",150,5
        MOVB      XAR0,#172             ; |150| 
        MOVL      ACC,*+XAR5[AR0]       ; |150| 
        MOVL      XAR0,#60              ; |150| 
        MOV       T,#17                 ; |150| 
        ASRL      ACC,T                 ; |150| 
        ANDB      AL,#0xff              ; |150| 
        MOV       *+FP[AR0],AL          ; |150| 
	.dwpsn	"Rom.c",151,5
        MOV       T,#25                 ; |151| 
        MOVL      XAR0,#61              ; |151| 
        MOVL      ACC,@_g_sen+172       ; |151| 
        ASRL      ACC,T                 ; |151| 
        ANDB      AL,#0xff              ; |151| 
        MOV       *+FP[AR0],AL          ; |151| 
	.dwpsn	"Rom.c",153,5
        MOVB      XAR0,#186             ; |153| 
        MOVL      ACC,*+XAR5[AR0]       ; |153| 
        MOVL      XAR0,#62              ; |153| 
        MOV       T,#17                 ; |153| 
        ASRL      ACC,T                 ; |153| 
        ANDB      AL,#0xff              ; |153| 
        MOV       *+FP[AR0],AL          ; |153| 
	.dwpsn	"Rom.c",154,5
        MOV       T,#25                 ; |154| 
        MOVL      XAR0,#63              ; |154| 
        MOVL      ACC,@_g_sen+186       ; |154| 
        ASRL      ACC,T                 ; |154| 
        ANDB      AL,#0xff              ; |154| 
        MOV       *+FP[AR0],AL          ; |154| 
	.dwpsn	"Rom.c",156,5
        MOVB      XAR0,#200             ; |156| 
        MOVL      ACC,*+XAR5[AR0]       ; |156| 
        MOVL      XAR0,#64              ; |156| 
        MOV       T,#17                 ; |156| 
        ASRL      ACC,T                 ; |156| 
        ANDB      AL,#0xff              ; |156| 
        MOV       *+FP[AR0],AL          ; |156| 
	.dwpsn	"Rom.c",157,5
        MOVW      DP,#_g_sen+200
        MOV       T,#25                 ; |157| 
        MOVL      XAR0,#65              ; |157| 
        MOVL      ACC,@_g_sen+200       ; |157| 
        ASRL      ACC,T                 ; |157| 
        ANDB      AL,#0xff              ; |157| 
        MOV       *+FP[AR0],AL          ; |157| 
	.dwpsn	"Rom.c",159,5
        MOVB      XAR0,#214             ; |159| 
        MOVL      ACC,*+XAR5[AR0]       ; |159| 
        MOVL      XAR0,#66              ; |159| 
        MOV       T,#17                 ; |159| 
        ASRL      ACC,T                 ; |159| 
        ANDB      AL,#0xff              ; |159| 
        MOV       *+FP[AR0],AL          ; |159| 
	.dwpsn	"Rom.c",160,5
        MOV       T,#25                 ; |160| 
        MOVL      XAR0,#67              ; |160| 
        MOVL      ACC,@_g_sen+214       ; |160| 
        ASRL      ACC,T                 ; |160| 
        ANDB      AL,#0xff              ; |160| 
        MOV       *+FP[AR0],AL          ; |160| 
        MOVB      AH,#0
	.dwpsn	"Rom.c",163,5
        MOVZ      AR4,SP                ; |163| 
        MOVL      XAR5,#256             ; |163| 
        MOVB      AL,#1                 ; |163| 
        ADD       AR4,#-256             ; |163| 
        LCR       #_SpiWriteRom         ; |163| 
        ; call occurs [#_SpiWriteRom] ; |163| 
	.dwpsn	"Rom.c",164,1
        ADD       SP,#-256
	.dwcfa	0x1d, -4
        MOVL      XAR2,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 9
        LRETR
        ; return occurs
	.dwattr DW$132, DW_AT_end_file("Rom.c")
	.dwattr DW$132, DW_AT_end_line(0xa4)
	.dwattr DW$132, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$132

	.sect	".text"
	.global	_maxmin_read_rom

DW$135	.dwtag  DW_TAG_subprogram, DW_AT_name("maxmin_read_rom"), DW_AT_symbol_name("_maxmin_read_rom")
	.dwattr DW$135, DW_AT_low_pc(_maxmin_read_rom)
	.dwattr DW$135, DW_AT_high_pc(0x00)
	.dwattr DW$135, DW_AT_begin_file("Rom.c")
	.dwattr DW$135, DW_AT_begin_line(0xa6)
	.dwattr DW$135, DW_AT_begin_column(0x06)
	.dwpsn	"Rom.c",167,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _maxmin_read_rom              FR SIZE: 270           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            8 Parameter, 256 Auto,  6 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_maxmin_read_rom:
;*** 176	-----------------------    SpiReadRom(1u, 0u, 256u, &read_buf);
;*** 180	-----------------------    K$11 = &g_sen[0];
;*** 180	-----------------------    (*K$11).iq17_4095_min_value = (long)(read_buf[0]&0xffu)<<17;
;*** 181	-----------------------    (*K$11).iq17_4095_min_value |= (long)(read_buf[1]<<8)<<17;
;*** 183	-----------------------    *((volatile long *)K$11+16L) = (long)(read_buf[2]&0xffu)<<17;
;*** 184	-----------------------    *((volatile long *)K$11+16L) |= (long)(read_buf[3]<<8)<<17;
;*** 186	-----------------------    *((volatile long *)K$11+30L) = (long)(read_buf[4]&0xffu)<<17;
;*** 187	-----------------------    *((volatile long *)K$11+30L) |= (long)(read_buf[5]<<8)<<17;
;*** 189	-----------------------    *((volatile long *)K$11+44L) = (long)(read_buf[6]&0xffu)<<17;
;*** 190	-----------------------    *((volatile long *)K$11+44L) |= (long)(read_buf[7]<<8)<<17;
;*** 192	-----------------------    *((volatile long *)K$11+58L) = (long)(read_buf[8]&0xffu)<<17;
;*** 193	-----------------------    *((volatile long *)K$11+58L) |= (long)(read_buf[9]<<8)<<17;
;*** 195	-----------------------    *((volatile long *)K$11+72L) = (long)(read_buf[10]&0xffu)<<17;
;*** 196	-----------------------    *((volatile long *)K$11+72L) |= (long)(read_buf[11]<<8)<<17;
;*** 198	-----------------------    *((volatile long *)K$11+86L) = (long)(read_buf[12]&0xffu)<<17;
;*** 199	-----------------------    *((volatile long *)K$11+86L) |= (long)(read_buf[13]<<8)<<17;
;*** 201	-----------------------    *((volatile long *)K$11+100L) = (long)(read_buf[14]&0xffu)<<17;
;*** 202	-----------------------    *((volatile long *)K$11+100L) |= (long)(read_buf[15]<<8)<<17;
;*** 204	-----------------------    *((volatile long *)K$11+114L) = (long)(read_buf[16]&0xffu)<<17;
;*** 205	-----------------------    *((volatile long *)K$11+114L) |= (long)(read_buf[17]<<8)<<17;
;*** 207	-----------------------    *((volatile long *)K$11+128L) = (long)(read_buf[18]&0xffu)<<17;
;*** 208	-----------------------    *((volatile long *)K$11+128L) |= (long)(read_buf[19]<<8)<<17;
;*** 210	-----------------------    *((volatile long *)K$11+142L) = (long)(read_buf[20]&0xffu)<<17;
;*** 211	-----------------------    *((volatile long *)K$11+142L) |= (long)(read_buf[21]<<8)<<17;
;*** 213	-----------------------    *((volatile long *)K$11+156L) = (long)(read_buf[22]&0xffu)<<17;
;*** 214	-----------------------    *((volatile long *)K$11+156L) |= (long)(read_buf[23]<<8)<<17;
;*** 216	-----------------------    *((volatile long *)K$11+170L) = (long)(read_buf[24]&0xffu)<<17;
;*** 217	-----------------------    *((volatile long *)K$11+170L) |= (long)(read_buf[25]<<8)<<17;
;*** 219	-----------------------    *((volatile long *)K$11+184L) = (long)(read_buf[26]&0xffu)<<17;
;*** 220	-----------------------    *((volatile long *)K$11+184L) |= (long)(read_buf[27]<<8)<<17;
;*** 222	-----------------------    *((volatile long *)K$11+198L) = (long)(read_buf[28]&0xffu)<<17;
;*** 223	-----------------------    *((volatile long *)K$11+198L) |= (long)(read_buf[29]<<8)<<17;
;*** 225	-----------------------    *((volatile long *)K$11+212L) = (long)(read_buf[30]&0xffu)<<17;
;*** 226	-----------------------    *((volatile long *)K$11+212L) |= (long)(read_buf[31]<<8)<<17;
;*** 232	-----------------------    (*K$11).iq17_4095_max_value = (long)(read_buf[32]&0xffu)<<17;
;*** 233	-----------------------    (*K$11).iq17_4095_max_value |= (long)(read_buf[33]<<8)<<17;
;*** 235	-----------------------    *((volatile long *)K$11+18L) = (long)(read_buf[34]&0xffu)<<17;
;*** 236	-----------------------    *((volatile long *)K$11+18L) |= (long)(read_buf[35]<<8)<<17;
;*** 238	-----------------------    *((volatile long *)K$11+32L) = (long)(read_buf[36]&0xffu)<<17;
;*** 239	-----------------------    *((volatile long *)K$11+32L) |= (long)(read_buf[37]<<8)<<17;
;*** 241	-----------------------    *((volatile long *)K$11+46L) = (long)(read_buf[38]&0xffu)<<17;
;*** 242	-----------------------    *((volatile long *)K$11+46L) |= (long)(read_buf[39]<<8)<<17;
;*** 244	-----------------------    *((volatile long *)K$11+60L) = (long)(read_buf[40]&0xffu)<<17;
;*** 245	-----------------------    *((volatile long *)K$11+60L) |= (long)(read_buf[41]<<8)<<17;
;*** 247	-----------------------    *((volatile long *)K$11+74L) = (long)(read_buf[42]&0xffu)<<17;
;*** 248	-----------------------    *((volatile long *)K$11+74L) |= (long)(read_buf[43]<<8)<<17;
;*** 250	-----------------------    *((volatile long *)K$11+88L) = (long)(read_buf[44]&0xffu)<<17;
;*** 251	-----------------------    *((volatile long *)K$11+88L) |= (long)(read_buf[45]<<8)<<17;
;*** 253	-----------------------    *((volatile long *)K$11+102L) = (long)(read_buf[46]&0xffu)<<17;
;*** 254	-----------------------    *((volatile long *)K$11+102L) |= (long)(read_buf[47]<<8)<<17;
;*** 256	-----------------------    *((volatile long *)K$11+116L) = (long)(read_buf[48]&0xffu)<<17;
;*** 257	-----------------------    *((volatile long *)K$11+116L) |= (long)(read_buf[49]<<8)<<17;
;*** 259	-----------------------    *((volatile long *)K$11+130L) = (long)(read_buf[50]&0xffu)<<17;
;*** 260	-----------------------    *((volatile long *)K$11+130L) |= (long)(read_buf[51]<<8)<<17;
;*** 262	-----------------------    *((volatile long *)K$11+144L) = (long)(read_buf[52]&0xffu)<<17;
;*** 263	-----------------------    *((volatile long *)K$11+144L) |= (long)(read_buf[53]<<8)<<17;
;*** 265	-----------------------    *((volatile long *)K$11+158L) = (long)(read_buf[54]&0xffu)<<17;
;*** 266	-----------------------    *((volatile long *)K$11+158L) |= (long)(read_buf[55]<<8)<<17;
;*** 268	-----------------------    *((volatile long *)K$11+172L) = (long)(read_buf[56]&0xffu)<<17;
;*** 269	-----------------------    *((volatile long *)K$11+172L) |= (long)(read_buf[57]<<8)<<17;
;*** 271	-----------------------    *((volatile long *)K$11+186L) = (long)(read_buf[58]&0xffu)<<17;
;*** 272	-----------------------    *((volatile long *)K$11+186L) |= (long)(read_buf[59]<<8)<<17;
;*** 274	-----------------------    *((volatile long *)K$11+200L) = (long)(read_buf[60]&0xffu)<<17;
;*** 275	-----------------------    *((volatile long *)K$11+200L) |= (long)(read_buf[61]<<8)<<17;
;*** 277	-----------------------    *((volatile long *)K$11+214L) = (long)(read_buf[62]&0xffu)<<17;
;*** 278	-----------------------    *((volatile long *)K$11+214L) |= (long)(read_buf[63]<<8)<<17;
;*** 281	-----------------------    TxPrintf("\n");
;*** 282	-----------------------    cnt = 0;
;***  	-----------------------    #pragma LOOP_FLAGS(5120u)
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
        MOVZ      AR2,SP
        SUBB      FP,#8
        ADD       SP,#264
	.dwcfa	0x1d, -272
;* AR3   assigned to K$11
DW$136	.dwtag  DW_TAG_variable, DW_AT_name("K$11"), DW_AT_symbol_name("K$11")
	.dwattr DW$136, DW_AT_type(*DW$T$71)
	.dwattr DW$136, DW_AT_location[DW_OP_reg10]
DW$137	.dwtag  DW_TAG_variable, DW_AT_name("read_buf"), DW_AT_symbol_name("_read_buf")
	.dwattr DW$137, DW_AT_type(*DW$T$41)
	.dwattr DW$137, DW_AT_location[DW_OP_breg20 -264]
	.dwpsn	"Rom.c",176,2
        MOVZ      AR4,SP                ; |176| 
        MOVL      XAR5,#256             ; |176| 
        MOVB      ACC,#1
        ADD       AR4,#-264             ; |176| 
        LCR       #_SpiReadRom          ; |176| 
        ; call occurs [#_SpiReadRom] ; |176| 
	.dwpsn	"Rom.c",180,2
        MOVL      XAR0,#8               ; |180| 
        MOV       AL,*+FP[AR0]          ; |180| 
        ANDB      AL,#0xff              ; |180| 
        MOV       T,#17                 ; |180| 
        MOVU      ACC,AL
        MOVL      XAR3,#_g_sen          ; |180| 
        LSLL      ACC,T                 ; |180| 
        MOVL      *+XAR3[2],ACC         ; |180| 
	.dwpsn	"Rom.c",181,2
        MOVL      XAR0,#9               ; |181| 
        MOV       ACC,*+FP[AR0] << #8   ; |181| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |181| 
        OR        *+XAR3[2],AL          ; |181| 
        OR        *+XAR3[3],AH          ; |181| 
	.dwpsn	"Rom.c",183,2
        MOVL      XAR0,#10              ; |183| 
        MOV       AL,*+FP[AR0]          ; |183| 
        ANDB      AL,#0xff              ; |183| 
        MOVU      ACC,AL
        MOVB      XAR0,#16              ; |183| 
        LSLL      ACC,T                 ; |183| 
        MOVL      *+XAR3[AR0],ACC       ; |183| 
	.dwpsn	"Rom.c",184,2
        MOVB      ACC,#16
        MOVL      XAR0,#11              ; |184| 
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |184| 
        MOVB      XAR5,#17              ; |184| 
        MOV       ACC,*+FP[AR0] << #8   ; |184| 
        MOV       T,AR5                 ; |184| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |184| 
        OR        *+XAR4[0],AL          ; |184| 
        OR        *+XAR4[1],AH          ; |184| 
	.dwpsn	"Rom.c",186,2
        MOVL      XAR0,#12              ; |186| 
        MOV       AL,*+FP[AR0]          ; |186| 
        ANDB      AL,#0xff              ; |186| 
        MOV       T,#17                 ; |186| 
        MOVU      ACC,AL
        MOVB      XAR0,#30              ; |186| 
        LSLL      ACC,T                 ; |186| 
        MOVL      *+XAR3[AR0],ACC       ; |186| 
	.dwpsn	"Rom.c",187,2
        MOVL      XAR0,#13              ; |187| 
        MOVB      ACC,#30
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |187| 
        MOV       ACC,*+FP[AR0] << #8   ; |187| 
        MOV       T,AR5                 ; |187| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |187| 
        OR        *+XAR4[0],AL          ; |187| 
        OR        *+XAR4[1],AH          ; |187| 
	.dwpsn	"Rom.c",189,2
        MOVL      XAR0,#14              ; |189| 
        MOV       AL,*+FP[AR0]          ; |189| 
        ANDB      AL,#0xff              ; |189| 
        MOV       T,#17                 ; |189| 
        MOVU      ACC,AL
        MOVB      XAR0,#44              ; |189| 
        LSLL      ACC,T                 ; |189| 
        MOVL      *+XAR3[AR0],ACC       ; |189| 
	.dwpsn	"Rom.c",190,2
        MOVL      XAR0,#15              ; |190| 
        MOVB      ACC,#44
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |190| 
        MOV       ACC,*+FP[AR0] << #8   ; |190| 
        MOV       T,AR5                 ; |190| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |190| 
        OR        *+XAR4[0],AL          ; |190| 
        OR        *+XAR4[1],AH          ; |190| 
	.dwpsn	"Rom.c",192,2
        MOVL      XAR0,#16              ; |192| 
        MOV       AL,*+FP[AR0]          ; |192| 
        ANDB      AL,#0xff              ; |192| 
        MOV       T,#17                 ; |192| 
        MOVU      ACC,AL
        MOVB      XAR0,#58              ; |192| 
        LSLL      ACC,T                 ; |192| 
        MOVL      *+XAR3[AR0],ACC       ; |192| 
	.dwpsn	"Rom.c",193,2
        MOVL      XAR0,#17              ; |193| 
        MOVB      ACC,#58
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |193| 
        MOV       ACC,*+FP[AR0] << #8   ; |193| 
        MOV       T,AR5                 ; |193| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |193| 
        OR        *+XAR4[0],AL          ; |193| 
        OR        *+XAR4[1],AH          ; |193| 
	.dwpsn	"Rom.c",195,2
        MOVL      XAR0,#18              ; |195| 
        MOV       AL,*+FP[AR0]          ; |195| 
        ANDB      AL,#0xff              ; |195| 
        MOV       T,#17                 ; |195| 
        MOVU      ACC,AL
        MOVB      XAR0,#72              ; |195| 
        LSLL      ACC,T                 ; |195| 
        MOVL      *+XAR3[AR0],ACC       ; |195| 
	.dwpsn	"Rom.c",196,2
        MOVL      XAR0,#19              ; |196| 
        MOVB      ACC,#72
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |196| 
        MOV       ACC,*+FP[AR0] << #8   ; |196| 
        MOV       T,AR5                 ; |196| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |196| 
        OR        *+XAR4[0],AL          ; |196| 
        OR        *+XAR4[1],AH          ; |196| 
	.dwpsn	"Rom.c",198,2
        MOVL      XAR0,#20              ; |198| 
        MOV       AL,*+FP[AR0]          ; |198| 
        ANDB      AL,#0xff              ; |198| 
        MOV       T,#17                 ; |198| 
        MOVU      ACC,AL
        MOVB      XAR0,#86              ; |198| 
        LSLL      ACC,T                 ; |198| 
        MOVL      *+XAR3[AR0],ACC       ; |198| 
	.dwpsn	"Rom.c",199,2
        MOVL      XAR0,#21              ; |199| 
        MOVB      ACC,#86
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |199| 
        MOV       ACC,*+FP[AR0] << #8   ; |199| 
        MOV       T,AR5                 ; |199| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |199| 
        OR        *+XAR4[0],AL          ; |199| 
        OR        *+XAR4[1],AH          ; |199| 
	.dwpsn	"Rom.c",201,2
        MOVL      XAR0,#22              ; |201| 
        MOV       AL,*+FP[AR0]          ; |201| 
        ANDB      AL,#0xff              ; |201| 
        MOV       T,#17                 ; |201| 
        MOVU      ACC,AL
        MOVB      XAR0,#100             ; |201| 
        LSLL      ACC,T                 ; |201| 
        MOVL      *+XAR3[AR0],ACC       ; |201| 
	.dwpsn	"Rom.c",202,2
        MOVL      XAR0,#23              ; |202| 
        MOVB      ACC,#100
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |202| 
        MOV       ACC,*+FP[AR0] << #8   ; |202| 
        MOV       T,AR5                 ; |202| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |202| 
        OR        *+XAR4[0],AL          ; |202| 
        OR        *+XAR4[1],AH          ; |202| 
	.dwpsn	"Rom.c",204,2
        MOVL      XAR0,#24              ; |204| 
        MOV       AL,*+FP[AR0]          ; |204| 
        ANDB      AL,#0xff              ; |204| 
        MOV       T,#17                 ; |204| 
        MOVU      ACC,AL
        MOVB      XAR0,#114             ; |204| 
        LSLL      ACC,T                 ; |204| 
        MOVL      *+XAR3[AR0],ACC       ; |204| 
	.dwpsn	"Rom.c",205,2
        MOVL      XAR0,#25              ; |205| 
        MOVB      ACC,#114
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |205| 
        MOV       ACC,*+FP[AR0] << #8   ; |205| 
        MOV       T,AR5                 ; |205| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |205| 
        OR        *+XAR4[0],AL          ; |205| 
        OR        *+XAR4[1],AH          ; |205| 
	.dwpsn	"Rom.c",207,2
        MOVL      XAR0,#26              ; |207| 
        MOV       AL,*+FP[AR0]          ; |207| 
        ANDB      AL,#0xff              ; |207| 
        MOV       T,#17                 ; |207| 
        MOVU      ACC,AL
        MOVB      XAR0,#128             ; |207| 
        LSLL      ACC,T                 ; |207| 
        MOVL      *+XAR3[AR0],ACC       ; |207| 
	.dwpsn	"Rom.c",208,2
        MOVL      XAR0,#27              ; |208| 
        MOVB      ACC,#128
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |208| 
        MOV       ACC,*+FP[AR0] << #8   ; |208| 
        MOV       T,AR5                 ; |208| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |208| 
        OR        *+XAR4[0],AL          ; |208| 
        OR        *+XAR4[1],AH          ; |208| 
	.dwpsn	"Rom.c",210,2
        MOVL      XAR0,#28              ; |210| 
        MOV       AL,*+FP[AR0]          ; |210| 
        ANDB      AL,#0xff              ; |210| 
        MOV       T,#17                 ; |210| 
        MOVU      ACC,AL
        MOVB      XAR0,#142             ; |210| 
        LSLL      ACC,T                 ; |210| 
        MOVL      *+XAR3[AR0],ACC       ; |210| 
	.dwpsn	"Rom.c",211,2
        MOVL      XAR0,#29              ; |211| 
        MOVB      ACC,#142
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |211| 
        MOV       ACC,*+FP[AR0] << #8   ; |211| 
        MOV       T,AR5                 ; |211| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |211| 
        OR        *+XAR4[0],AL          ; |211| 
        OR        *+XAR4[1],AH          ; |211| 
	.dwpsn	"Rom.c",213,2
        MOVL      XAR0,#30              ; |213| 
        MOV       AL,*+FP[AR0]          ; |213| 
        ANDB      AL,#0xff              ; |213| 
        MOV       T,#17                 ; |213| 
        MOVU      ACC,AL
        MOVB      XAR0,#156             ; |213| 
        LSLL      ACC,T                 ; |213| 
        MOVL      *+XAR3[AR0],ACC       ; |213| 
	.dwpsn	"Rom.c",214,2
        MOVL      XAR0,#31              ; |214| 
        MOVB      ACC,#156
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |214| 
        MOV       ACC,*+FP[AR0] << #8   ; |214| 
        MOV       T,AR5                 ; |214| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |214| 
        OR        *+XAR4[0],AL          ; |214| 
        OR        *+XAR4[1],AH          ; |214| 
	.dwpsn	"Rom.c",216,2
        MOVL      XAR0,#32              ; |216| 
        MOV       AL,*+FP[AR0]          ; |216| 
        ANDB      AL,#0xff              ; |216| 
        MOV       T,#17                 ; |216| 
        MOVU      ACC,AL
        MOVB      XAR0,#170             ; |216| 
        LSLL      ACC,T                 ; |216| 
        MOVL      *+XAR3[AR0],ACC       ; |216| 
	.dwpsn	"Rom.c",217,2
        MOVL      XAR0,#33              ; |217| 
        MOVB      ACC,#170
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |217| 
        MOV       ACC,*+FP[AR0] << #8   ; |217| 
        MOV       T,AR5                 ; |217| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |217| 
        OR        *+XAR4[0],AL          ; |217| 
        OR        *+XAR4[1],AH          ; |217| 
	.dwpsn	"Rom.c",219,2
        MOVL      XAR0,#34              ; |219| 
        MOV       AL,*+FP[AR0]          ; |219| 
        ANDB      AL,#0xff              ; |219| 
        MOV       T,#17                 ; |219| 
        MOVU      ACC,AL
        MOVB      XAR0,#184             ; |219| 
        LSLL      ACC,T                 ; |219| 
        MOVL      *+XAR3[AR0],ACC       ; |219| 
	.dwpsn	"Rom.c",220,2
        MOVL      XAR0,#35              ; |220| 
        MOVB      ACC,#184
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |220| 
        MOV       ACC,*+FP[AR0] << #8   ; |220| 
        MOV       T,AR5                 ; |220| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |220| 
        OR        *+XAR4[0],AL          ; |220| 
        OR        *+XAR4[1],AH          ; |220| 
	.dwpsn	"Rom.c",222,2
        MOVL      XAR0,#36              ; |222| 
        MOV       AL,*+FP[AR0]          ; |222| 
        ANDB      AL,#0xff              ; |222| 
        MOV       T,#17                 ; |222| 
        MOVU      ACC,AL
        MOVB      XAR0,#198             ; |222| 
        LSLL      ACC,T                 ; |222| 
        MOVL      *+XAR3[AR0],ACC       ; |222| 
	.dwpsn	"Rom.c",223,2
        MOVL      XAR0,#37              ; |223| 
        MOVB      ACC,#198
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |223| 
        MOV       ACC,*+FP[AR0] << #8   ; |223| 
        MOV       T,AR5                 ; |223| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |223| 
        OR        *+XAR4[0],AL          ; |223| 
        OR        *+XAR4[1],AH          ; |223| 
	.dwpsn	"Rom.c",225,2
        MOVL      XAR0,#38              ; |225| 
        MOV       AL,*+FP[AR0]          ; |225| 
        ANDB      AL,#0xff              ; |225| 
        MOV       T,#17                 ; |225| 
        MOVU      ACC,AL
        MOVB      XAR0,#212             ; |225| 
        LSLL      ACC,T                 ; |225| 
        MOVL      *+XAR3[AR0],ACC       ; |225| 
	.dwpsn	"Rom.c",226,2
        MOVL      XAR0,#39              ; |226| 
        MOVB      ACC,#212
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |226| 
        MOV       ACC,*+FP[AR0] << #8   ; |226| 
        MOV       T,AR5                 ; |226| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |226| 
        OR        *+XAR4[0],AL          ; |226| 
        OR        *+XAR4[1],AH          ; |226| 
	.dwpsn	"Rom.c",232,2
        MOVL      XAR0,#40              ; |232| 
        MOV       AL,*+FP[AR0]          ; |232| 
        ANDB      AL,#0xff              ; |232| 
        MOV       T,#17                 ; |232| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |232| 
        MOVL      *+XAR3[4],ACC         ; |232| 
	.dwpsn	"Rom.c",233,2
        MOVL      XAR0,#41              ; |233| 
        MOV       ACC,*+FP[AR0] << #8   ; |233| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |233| 
        OR        *+XAR3[4],AL          ; |233| 
        OR        *+XAR3[5],AH          ; |233| 
	.dwpsn	"Rom.c",235,2
        MOVL      XAR0,#42              ; |235| 
        MOV       AL,*+FP[AR0]          ; |235| 
        ANDB      AL,#0xff              ; |235| 
        MOVU      ACC,AL
        MOVB      XAR0,#18              ; |235| 
        LSLL      ACC,T                 ; |235| 
        MOVL      *+XAR3[AR0],ACC       ; |235| 
	.dwpsn	"Rom.c",236,2
        MOVL      XAR0,#43              ; |236| 
        MOVB      ACC,#18
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |236| 
        MOV       ACC,*+FP[AR0] << #8   ; |236| 
        MOV       T,AR5                 ; |236| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |236| 
        OR        *+XAR4[0],AL          ; |236| 
        OR        *+XAR4[1],AH          ; |236| 
	.dwpsn	"Rom.c",238,2
        MOVL      XAR0,#44              ; |238| 
        MOV       AL,*+FP[AR0]          ; |238| 
        ANDB      AL,#0xff              ; |238| 
        MOV       T,#17                 ; |238| 
        MOVU      ACC,AL
        MOVB      XAR0,#32              ; |238| 
        LSLL      ACC,T                 ; |238| 
        MOVL      *+XAR3[AR0],ACC       ; |238| 
	.dwpsn	"Rom.c",239,2
        MOVL      XAR0,#45              ; |239| 
        MOVB      ACC,#32
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |239| 
        MOV       ACC,*+FP[AR0] << #8   ; |239| 
        MOV       T,AR5                 ; |239| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |239| 
        OR        *+XAR4[0],AL          ; |239| 
        OR        *+XAR4[1],AH          ; |239| 
	.dwpsn	"Rom.c",241,2
        MOVL      XAR0,#46              ; |241| 
        MOV       AL,*+FP[AR0]          ; |241| 
        ANDB      AL,#0xff              ; |241| 
        MOV       T,#17                 ; |241| 
        MOVU      ACC,AL
        MOVB      XAR0,#46              ; |241| 
        LSLL      ACC,T                 ; |241| 
        MOVL      *+XAR3[AR0],ACC       ; |241| 
	.dwpsn	"Rom.c",242,2
        MOVL      XAR0,#47              ; |242| 
        MOVB      ACC,#46
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |242| 
        MOV       ACC,*+FP[AR0] << #8   ; |242| 
        MOV       T,AR5                 ; |242| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |242| 
        OR        *+XAR4[0],AL          ; |242| 
        OR        *+XAR4[1],AH          ; |242| 
	.dwpsn	"Rom.c",244,2
        MOVL      XAR0,#48              ; |244| 
        MOV       AL,*+FP[AR0]          ; |244| 
        ANDB      AL,#0xff              ; |244| 
        MOV       T,#17                 ; |244| 
        MOVU      ACC,AL
        MOVB      XAR0,#60              ; |244| 
        LSLL      ACC,T                 ; |244| 
        MOVL      *+XAR3[AR0],ACC       ; |244| 
	.dwpsn	"Rom.c",245,2
        MOVL      XAR0,#49              ; |245| 
        MOVB      ACC,#60
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |245| 
        MOV       ACC,*+FP[AR0] << #8   ; |245| 
        MOV       T,AR5                 ; |245| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |245| 
        OR        *+XAR4[0],AL          ; |245| 
        OR        *+XAR4[1],AH          ; |245| 
	.dwpsn	"Rom.c",247,2
        MOVL      XAR0,#50              ; |247| 
        MOV       AL,*+FP[AR0]          ; |247| 
        ANDB      AL,#0xff              ; |247| 
        MOV       T,#17                 ; |247| 
        MOVU      ACC,AL
        MOVB      XAR0,#74              ; |247| 
        LSLL      ACC,T                 ; |247| 
        MOVL      *+XAR3[AR0],ACC       ; |247| 
	.dwpsn	"Rom.c",248,2
        MOVL      XAR0,#51              ; |248| 
        MOVB      ACC,#74
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |248| 
        MOV       ACC,*+FP[AR0] << #8   ; |248| 
        MOV       T,AR5                 ; |248| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |248| 
        OR        *+XAR4[0],AL          ; |248| 
        OR        *+XAR4[1],AH          ; |248| 
	.dwpsn	"Rom.c",250,2
        MOVL      XAR0,#52              ; |250| 
        MOV       AL,*+FP[AR0]          ; |250| 
        ANDB      AL,#0xff              ; |250| 
        MOV       T,#17                 ; |250| 
        MOVU      ACC,AL
        MOVB      XAR0,#88              ; |250| 
        LSLL      ACC,T                 ; |250| 
        MOVL      *+XAR3[AR0],ACC       ; |250| 
	.dwpsn	"Rom.c",251,2
        MOVL      XAR0,#53              ; |251| 
        MOVB      ACC,#88
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |251| 
        MOV       ACC,*+FP[AR0] << #8   ; |251| 
        MOV       T,AR5                 ; |251| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |251| 
        OR        *+XAR4[0],AL          ; |251| 
        OR        *+XAR4[1],AH          ; |251| 
	.dwpsn	"Rom.c",253,2
        MOVL      XAR0,#54              ; |253| 
        MOV       AL,*+FP[AR0]          ; |253| 
        ANDB      AL,#0xff              ; |253| 
        MOV       T,#17                 ; |253| 
        MOVU      ACC,AL
        MOVB      XAR0,#102             ; |253| 
        LSLL      ACC,T                 ; |253| 
        MOVL      *+XAR3[AR0],ACC       ; |253| 
	.dwpsn	"Rom.c",254,2
        MOVL      XAR0,#55              ; |254| 
        MOVB      ACC,#102
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |254| 
        MOV       ACC,*+FP[AR0] << #8   ; |254| 
        MOV       T,AR5                 ; |254| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |254| 
        OR        *+XAR4[0],AL          ; |254| 
        OR        *+XAR4[1],AH          ; |254| 
	.dwpsn	"Rom.c",256,2
        MOVL      XAR0,#56              ; |256| 
        MOV       AL,*+FP[AR0]          ; |256| 
        ANDB      AL,#0xff              ; |256| 
        MOV       T,#17                 ; |256| 
        MOVU      ACC,AL
        MOVB      XAR0,#116             ; |256| 
        LSLL      ACC,T                 ; |256| 
        MOVL      *+XAR3[AR0],ACC       ; |256| 
	.dwpsn	"Rom.c",257,2
        MOVL      XAR0,#57              ; |257| 
        MOVB      ACC,#116
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |257| 
        MOV       ACC,*+FP[AR0] << #8   ; |257| 
        MOV       T,AR5                 ; |257| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |257| 
        OR        *+XAR4[0],AL          ; |257| 
        OR        *+XAR4[1],AH          ; |257| 
	.dwpsn	"Rom.c",259,2
        MOVL      XAR0,#58              ; |259| 
        MOV       AL,*+FP[AR0]          ; |259| 
        ANDB      AL,#0xff              ; |259| 
        MOV       T,#17                 ; |259| 
        MOVU      ACC,AL
        MOVB      XAR0,#130             ; |259| 
        LSLL      ACC,T                 ; |259| 
        MOVL      *+XAR3[AR0],ACC       ; |259| 
	.dwpsn	"Rom.c",260,2
        MOVL      XAR0,#59              ; |260| 
        MOVB      ACC,#130
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |260| 
        MOV       ACC,*+FP[AR0] << #8   ; |260| 
        MOV       T,AR5                 ; |260| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |260| 
        OR        *+XAR4[0],AL          ; |260| 
        OR        *+XAR4[1],AH          ; |260| 
	.dwpsn	"Rom.c",262,2
        MOVL      XAR0,#60              ; |262| 
        MOV       AL,*+FP[AR0]          ; |262| 
        ANDB      AL,#0xff              ; |262| 
        MOV       T,#17                 ; |262| 
        MOVU      ACC,AL
        MOVB      XAR0,#144             ; |262| 
        LSLL      ACC,T                 ; |262| 
        MOVL      *+XAR3[AR0],ACC       ; |262| 
	.dwpsn	"Rom.c",263,2
        MOVL      XAR0,#61              ; |263| 
        MOVB      ACC,#144
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |263| 
        MOV       ACC,*+FP[AR0] << #8   ; |263| 
        MOV       T,AR5                 ; |263| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |263| 
        OR        *+XAR4[0],AL          ; |263| 
        OR        *+XAR4[1],AH          ; |263| 
	.dwpsn	"Rom.c",265,2
        MOVL      XAR0,#62              ; |265| 
        MOV       AL,*+FP[AR0]          ; |265| 
        ANDB      AL,#0xff              ; |265| 
        MOV       T,#17                 ; |265| 
        MOVU      ACC,AL
        MOVB      XAR0,#158             ; |265| 
        LSLL      ACC,T                 ; |265| 
        MOVL      *+XAR3[AR0],ACC       ; |265| 
	.dwpsn	"Rom.c",266,2
        MOVL      XAR0,#63              ; |266| 
        MOVB      ACC,#158
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |266| 
        MOV       ACC,*+FP[AR0] << #8   ; |266| 
        MOV       T,AR5                 ; |266| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |266| 
        OR        *+XAR4[0],AL          ; |266| 
        OR        *+XAR4[1],AH          ; |266| 
	.dwpsn	"Rom.c",268,2
        MOVL      XAR0,#64              ; |268| 
        MOV       AL,*+FP[AR0]          ; |268| 
        ANDB      AL,#0xff              ; |268| 
        MOV       T,#17                 ; |268| 
        MOVU      ACC,AL
        MOVB      XAR0,#172             ; |268| 
        LSLL      ACC,T                 ; |268| 
        MOVL      *+XAR3[AR0],ACC       ; |268| 
	.dwpsn	"Rom.c",269,2
        MOVL      XAR0,#65              ; |269| 
        MOVB      ACC,#172
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |269| 
        MOV       ACC,*+FP[AR0] << #8   ; |269| 
        MOV       T,AR5                 ; |269| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |269| 
        OR        *+XAR4[0],AL          ; |269| 
        OR        *+XAR4[1],AH          ; |269| 
	.dwpsn	"Rom.c",271,2
        MOVL      XAR0,#66              ; |271| 
        MOV       AL,*+FP[AR0]          ; |271| 
        ANDB      AL,#0xff              ; |271| 
        MOV       T,#17                 ; |271| 
        MOVU      ACC,AL
        MOVB      XAR0,#186             ; |271| 
        LSLL      ACC,T                 ; |271| 
        MOVL      *+XAR3[AR0],ACC       ; |271| 
	.dwpsn	"Rom.c",272,2
        MOVL      XAR0,#67              ; |272| 
        MOVB      ACC,#186
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |272| 
        MOV       ACC,*+FP[AR0] << #8   ; |272| 
        MOV       T,AR5                 ; |272| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |272| 
        OR        *+XAR4[0],AL          ; |272| 
        OR        *+XAR4[1],AH          ; |272| 
	.dwpsn	"Rom.c",274,2
        MOVL      XAR0,#68              ; |274| 
        MOV       AL,*+FP[AR0]          ; |274| 
        ANDB      AL,#0xff              ; |274| 
        MOV       T,#17                 ; |274| 
        MOVU      ACC,AL
        MOVB      XAR0,#200             ; |274| 
        LSLL      ACC,T                 ; |274| 
        MOVL      *+XAR3[AR0],ACC       ; |274| 
	.dwpsn	"Rom.c",275,2
        MOVL      XAR0,#69              ; |275| 
        MOVB      ACC,#200
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |275| 
        MOV       ACC,*+FP[AR0] << #8   ; |275| 
        MOV       T,AR5                 ; |275| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |275| 
        OR        *+XAR4[0],AL          ; |275| 
        OR        *+XAR4[1],AH          ; |275| 
	.dwpsn	"Rom.c",277,2
        MOVL      XAR0,#70              ; |277| 
        MOV       AL,*+FP[AR0]          ; |277| 
        ANDB      AL,#0xff              ; |277| 
        MOV       T,#17                 ; |277| 
        MOVU      ACC,AL
        MOVB      XAR0,#214             ; |277| 
        LSLL      ACC,T                 ; |277| 
        MOVL      *+XAR3[AR0],ACC       ; |277| 
	.dwpsn	"Rom.c",278,2
        MOVL      XAR0,#71              ; |278| 
        MOVB      ACC,#214
        ADDL      ACC,XAR3
        MOVL      XAR4,ACC              ; |278| 
        MOV       ACC,*+FP[AR0] << #8   ; |278| 
        MOV       T,AR5                 ; |278| 
        MOVU      ACC,AL
        LSLL      ACC,T                 ; |278| 
        OR        *+XAR4[0],AL          ; |278| 
        OR        *+XAR4[1],AH          ; |278| 
	.dwpsn	"Rom.c",281,4
        MOVL      XAR4,#FSL1            ; |281| 
        MOVL      *-SP[2],XAR4          ; |281| 
        LCR       #_TxPrintf            ; |281| 
        ; call occurs [#_TxPrintf] ; |281| 
	.dwpsn	"Rom.c",282,9
        MOVW      DP,#_cnt
        MOV       @_cnt,#0              ; |282| 
L5:    
DW$L$_maxmin_read_rom$2$B:
;***	-----------------------g2:
;*** 284	-----------------------    TxPrintf("[ %2ld ]   MAX : %4lf      MIN : %4lf\n", cnt, _IQ17toF((K$11[(long)cnt]).iq17_4095_max_value), _IQ17toF((K$11[(long)cnt]).iq17_4095_min_value));
;*** 282	-----------------------    if ( (++cnt) < 16 ) goto g2;
	.dwpsn	"Rom.c",284,7
        MOVL      XAR4,XAR3             ; |284| 
        MOV       T,@_cnt               ; |284| 
        MPYB      ACC,T,#14             ; |284| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[4]         ; |284| 
        LCR       #__IQ17toF            ; |284| 
        ; call occurs [#__IQ17toF] ; |284| 
        MOVW      DP,#_cnt
        MOVL      XAR4,XAR3             ; |284| 
        MOVL      XAR1,ACC              ; |284| 
        MOV       T,@_cnt               ; |284| 
        MPYB      ACC,T,#14             ; |284| 
        ADDL      XAR4,ACC
        MOVL      ACC,*+XAR4[2]         ; |284| 
        LCR       #__IQ17toF            ; |284| 
        ; call occurs [#__IQ17toF] ; |284| 
        MOVW      DP,#_cnt
        MOVZ      AR6,@_cnt             ; |284| 
        MOVL      XAR4,#FSL2            ; |284| 
        MOVL      *-SP[2],XAR4          ; |284| 
        MOV       *-SP[3],AR6           ; |284| 
        MOVL      *-SP[6],XAR1          ; |284| 
        MOVL      *-SP[8],ACC           ; |284| 
        LCR       #_TxPrintf            ; |284| 
        ; call occurs [#_TxPrintf] ; |284| 
	.dwpsn	"Rom.c",282,28
        MOVW      DP,#_cnt
        INC       @_cnt                 ; |282| 
        MOV       AL,@_cnt              ; |282| 
        CMPB      AL,#16                ; |282| 
        BF        L5,LT                 ; |282| 
        ; branchcc occurs ; |282| 
DW$L$_maxmin_read_rom$2$E:
;*** 286	-----------------------    TxPrintf("\n");
;*** 286	-----------------------    return;
	.dwpsn	"Rom.c",286,4
        MOVL      XAR4,#FSL1            ; |286| 
        MOVL      *-SP[2],XAR4          ; |286| 
        LCR       #_TxPrintf            ; |286| 
        ; call occurs [#_TxPrintf] ; |286| 
	.dwpsn	"Rom.c",289,1
        ADD       SP,#-264
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

DW$138	.dwtag  DW_TAG_loop
	.dwattr DW$138, DW_AT_name("C:\project\_Viper_\main\Rom.asm:L5:1:1729866708")
	.dwattr DW$138, DW_AT_begin_file("Rom.c")
	.dwattr DW$138, DW_AT_begin_line(0x11a)
	.dwattr DW$138, DW_AT_end_line(0x11d)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_maxmin_read_rom$2$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_maxmin_read_rom$2$E)
	.dwendtag DW$138

	.dwattr DW$135, DW_AT_end_file("Rom.c")
	.dwattr DW$135, DW_AT_end_line(0x121)
	.dwattr DW$135, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$135

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	10,0
	.align	2
FSL2:	.string	"[ %2ld ]   MAX : %4lf      MIN : %4lf",10,0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_SpiReadRom
	.global	_SpiWriteRom
	.global	_TxPrintf
	.global	_g_i16_handle_acc
	.global	_cnt
	.global	_g_i16_handle_dec
	.global	_U16_turnmark_cnt
	.global	_g_u32_END_ACC_targetval
	.global	_g_int32total_cnt
	.global	__IQ17toF
	.global	_memset
	.global	_g_u32_VEL_targetval
	.global	_g_u32_ACC_targetval
	.global	_g_sen
	.global	_search_info
	.global	___memcpy_ff

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$26	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$26, DW_AT_language(DW_LANG_C)
DW$140	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$141	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$142	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$25)
	.dwendtag DW$T$26


DW$T$30	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$30, DW_AT_language(DW_LANG_C)
DW$143	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$29)
DW$144	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$30


DW$T$33	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$33, DW_AT_language(DW_LANG_C)
DW$145	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$146	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$147	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$23)
DW$148	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$32)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$35, DW_AT_language(DW_LANG_C)
DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$38	.dwtag  DW_TAG_typedef, DW_AT_name("int16"), DW_AT_type(*DW$T$10)
	.dwattr DW$T$38, DW_AT_language(DW_LANG_C)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$32, DW_AT_address_class(0x16)
DW$149	.dwtag  DW_TAG_far_type
	.dwattr DW$149, DW_AT_type(*DW$T$23)
DW$T$40	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$40, DW_AT_type(*DW$149)

DW$T$41	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$41, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$41, DW_AT_byte_size(0x100)
DW$150	.dwtag  DW_TAG_subrange_type
	.dwattr DW$150, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$41


DW$T$42	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$42, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$42, DW_AT_byte_size(0x08)
DW$151	.dwtag  DW_TAG_subrange_type
	.dwattr DW$151, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$42


DW$T$44	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$44, DW_AT_byte_size(0x08)
DW$152	.dwtag  DW_TAG_subrange_type
	.dwattr DW$152, DW_AT_upper_bound(0x07)
	.dwendtag DW$T$44


DW$T$45	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$45, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$45, DW_AT_byte_size(0x02)
DW$153	.dwtag  DW_TAG_subrange_type
	.dwattr DW$153, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$45


DW$T$46	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$43)
	.dwattr DW$T$46, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$46, DW_AT_byte_size(0x100)
DW$154	.dwtag  DW_TAG_subrange_type
	.dwattr DW$154, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$46


DW$T$47	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$23)
	.dwattr DW$T$47, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$47, DW_AT_byte_size(0x02)
DW$155	.dwtag  DW_TAG_subrange_type
	.dwattr DW$155, DW_AT_upper_bound(0x01)
	.dwendtag DW$T$47

DW$T$39	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$11)
	.dwattr DW$T$39, DW_AT_address_class(0x16)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$T$25	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
DW$156	.dwtag  DW_TAG_far_type
	.dwattr DW$156, DW_AT_type(*DW$T$58)
DW$T$59	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$59, DW_AT_type(*DW$156)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$61	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$16)
	.dwattr DW$T$61, DW_AT_language(DW_LANG_C)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$61


DW$T$64	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$63)
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$64, DW_AT_byte_size(0x1a00)
DW$158	.dwtag  DW_TAG_subrange_type
	.dwattr DW$158, DW_AT_upper_bound(0xff)
	.dwendtag DW$T$64

DW$T$66	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$21)
	.dwattr DW$T$66, DW_AT_address_class(0x16)

DW$T$69	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$68)
	.dwattr DW$T$69, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$69, DW_AT_byte_size(0xe0)
DW$159	.dwtag  DW_TAG_subrange_type
	.dwattr DW$159, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$69

DW$T$71	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$67)
	.dwattr DW$T$71, DW_AT_address_class(0x16)
DW$T$29	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$28)
	.dwattr DW$T$29, DW_AT_address_class(0x16)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$160	.dwtag  DW_TAG_far_type
	.dwattr DW$160, DW_AT_type(*DW$T$23)
DW$T$43	.dwtag  DW_TAG_const_type
	.dwattr DW$T$43, DW_AT_type(*DW$160)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$58	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$58, DW_AT_language(DW_LANG_C)

DW$T$21	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$21, DW_AT_name("first_race_info")
	.dwattr DW$T$21, DW_AT_byte_size(0x1a)
DW$161	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$161, DW_AT_name("int32dist"), DW_AT_symbol_name("_int32dist")
	.dwattr DW$161, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$161, DW_AT_accessibility(DW_ACCESS_public)
DW$162	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$162, DW_AT_name("int32turn_way"), DW_AT_symbol_name("_int32turn_way")
	.dwattr DW$162, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$162, DW_AT_accessibility(DW_ACCESS_public)
DW$163	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$163, DW_AT_name("int32L_dist"), DW_AT_symbol_name("_int32L_dist")
	.dwattr DW$163, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$163, DW_AT_accessibility(DW_ACCESS_public)
DW$164	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$164, DW_AT_name("int32R_dist"), DW_AT_symbol_name("_int32R_dist")
	.dwattr DW$164, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$164, DW_AT_accessibility(DW_ACCESS_public)
DW$165	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$165, DW_AT_name("int32cross_check_dist"), DW_AT_symbol_name("_int32cross_check_dist")
	.dwattr DW$165, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$165, DW_AT_accessibility(DW_ACCESS_public)
DW$166	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$166, DW_AT_name("int32turn_dir"), DW_AT_symbol_name("_int32turn_dir")
	.dwattr DW$166, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$166, DW_AT_accessibility(DW_ACCESS_public)
DW$167	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$167, DW_AT_name("int32turn_cnt"), DW_AT_symbol_name("_int32turn_cnt")
	.dwattr DW$167, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$167, DW_AT_accessibility(DW_ACCESS_public)
DW$168	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$168, DW_AT_name("int32accel"), DW_AT_symbol_name("_int32accel")
	.dwattr DW$168, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$168, DW_AT_accessibility(DW_ACCESS_public)
DW$169	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$169, DW_AT_name("iq7in_vel"), DW_AT_symbol_name("_iq7in_vel")
	.dwattr DW$169, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$169, DW_AT_accessibility(DW_ACCESS_public)
DW$170	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$170, DW_AT_name("iq7vel"), DW_AT_symbol_name("_iq7vel")
	.dwattr DW$170, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$170, DW_AT_accessibility(DW_ACCESS_public)
DW$171	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$171, DW_AT_name("iq7out_vel"), DW_AT_symbol_name("_iq7out_vel")
	.dwattr DW$171, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$171, DW_AT_accessibility(DW_ACCESS_public)
DW$172	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$172, DW_AT_name("iq7dec_dist"), DW_AT_symbol_name("_iq7dec_dist")
	.dwattr DW$172, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$172, DW_AT_accessibility(DW_ACCESS_public)
DW$173	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$173, DW_AT_name("iq7m_dist"), DW_AT_symbol_name("_iq7m_dist")
	.dwattr DW$173, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$173, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$21

DW$T$63	.dwtag  DW_TAG_typedef, DW_AT_name("race_info"), DW_AT_type(*DW$T$21)
	.dwattr DW$T$63, DW_AT_language(DW_LANG_C)
DW$174	.dwtag  DW_TAG_far_type
	.dwattr DW$174, DW_AT_type(*DW$T$24)
DW$T$67	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$67, DW_AT_type(*DW$174)
DW$T$68	.dwtag  DW_TAG_typedef, DW_AT_name("sen_t"), DW_AT_type(*DW$T$67)
	.dwattr DW$T$68, DW_AT_language(DW_LANG_C)
DW$T$28	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$28, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$28, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("_iq7"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_name("sensor_variable")
	.dwattr DW$T$24, DW_AT_byte_size(0x0e)
DW$175	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$175, DW_AT_name("iq17_4095_value"), DW_AT_symbol_name("_iq17_4095_value")
	.dwattr DW$175, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$175, DW_AT_accessibility(DW_ACCESS_public)
DW$176	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$176, DW_AT_name("iq17_4095_min_value"), DW_AT_symbol_name("_iq17_4095_min_value")
	.dwattr DW$176, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$176, DW_AT_accessibility(DW_ACCESS_public)
DW$177	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$177, DW_AT_name("iq17_4095_max_value"), DW_AT_symbol_name("_iq17_4095_max_value")
	.dwattr DW$177, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$177, DW_AT_accessibility(DW_ACCESS_public)
DW$178	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$178, DW_AT_name("iq17_127_value"), DW_AT_symbol_name("_iq17_127_value")
	.dwattr DW$178, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$178, DW_AT_accessibility(DW_ACCESS_public)
DW$179	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$179, DW_AT_name("iq17_ON_OFF_value"), DW_AT_symbol_name("_iq17_ON_OFF_value")
	.dwattr DW$179, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$179, DW_AT_accessibility(DW_ACCESS_public)
DW$180	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$180, DW_AT_name("u16active_arr"), DW_AT_symbol_name("_u16active_arr")
	.dwattr DW$180, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$180, DW_AT_accessibility(DW_ACCESS_public)
DW$181	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$181, DW_AT_name("u16passive_arr"), DW_AT_symbol_name("_u16passive_arr")
	.dwattr DW$181, DW_AT_data_member_location[DW_OP_plus_uconst 0xb]
	.dwattr DW$181, DW_AT_accessibility(DW_ACCESS_public)
DW$182	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$182, DW_AT_name("iq7weight"), DW_AT_symbol_name("_iq7weight")
	.dwattr DW$182, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$182, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)

	.dwattr DW$135, DW_AT_external(0x01)
	.dwattr DW$132, DW_AT_external(0x01)
	.dwattr DW$130, DW_AT_external(0x01)
	.dwattr DW$128, DW_AT_external(0x01)
	.dwattr DW$126, DW_AT_external(0x01)
	.dwattr DW$124, DW_AT_external(0x01)
	.dwattr DW$92, DW_AT_external(0x01)
	.dwattr DW$90, DW_AT_external(0x01)
	.dwattr DW$88, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$84, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
	.dwattr DW$80, DW_AT_external(0x01)
	.dwattr DW$56, DW_AT_external(0x01)
	.dwattr DW$54, DW_AT_external(0x01)
	.dwattr DW$52, DW_AT_external(0x01)
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

DW$183	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$183, DW_AT_location[DW_OP_reg0]
DW$184	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$184, DW_AT_location[DW_OP_reg1]
DW$185	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$185, DW_AT_location[DW_OP_reg2]
DW$186	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$186, DW_AT_location[DW_OP_reg3]
DW$187	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$187, DW_AT_location[DW_OP_reg4]
DW$188	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$188, DW_AT_location[DW_OP_reg5]
DW$189	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$189, DW_AT_location[DW_OP_reg6]
DW$190	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$190, DW_AT_location[DW_OP_reg7]
DW$191	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$191, DW_AT_location[DW_OP_reg8]
DW$192	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$192, DW_AT_location[DW_OP_reg9]
DW$193	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$193, DW_AT_location[DW_OP_reg10]
DW$194	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$194, DW_AT_location[DW_OP_reg11]
DW$195	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$195, DW_AT_location[DW_OP_reg12]
DW$196	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$196, DW_AT_location[DW_OP_reg13]
DW$197	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$197, DW_AT_location[DW_OP_reg14]
DW$198	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$198, DW_AT_location[DW_OP_reg15]
DW$199	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$199, DW_AT_location[DW_OP_reg16]
DW$200	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$200, DW_AT_location[DW_OP_reg17]
DW$201	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$201, DW_AT_location[DW_OP_reg18]
DW$202	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$202, DW_AT_location[DW_OP_reg19]
DW$203	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$203, DW_AT_location[DW_OP_reg20]
DW$204	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$204, DW_AT_location[DW_OP_reg21]
DW$205	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$205, DW_AT_location[DW_OP_reg22]
DW$206	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$206, DW_AT_location[DW_OP_reg23]
DW$207	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$207, DW_AT_location[DW_OP_reg24]
DW$208	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$208, DW_AT_location[DW_OP_reg25]
DW$209	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$209, DW_AT_location[DW_OP_reg26]
DW$210	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$210, DW_AT_location[DW_OP_reg27]
DW$211	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$211, DW_AT_location[DW_OP_reg28]
DW$212	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$212, DW_AT_location[DW_OP_reg29]
DW$213	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$213, DW_AT_location[DW_OP_reg30]
DW$214	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$214, DW_AT_location[DW_OP_reg31]
DW$215	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$215, DW_AT_location[DW_OP_regx 0x20]
DW$216	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$216, DW_AT_location[DW_OP_regx 0x21]
DW$217	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$217, DW_AT_location[DW_OP_regx 0x22]
DW$218	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$218, DW_AT_location[DW_OP_regx 0x23]
DW$219	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$219, DW_AT_location[DW_OP_regx 0x24]
DW$220	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$220, DW_AT_location[DW_OP_regx 0x25]
DW$221	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$221, DW_AT_location[DW_OP_regx 0x26]
DW$222	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$222, DW_AT_location[DW_OP_regx 0x27]
DW$223	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$223, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

