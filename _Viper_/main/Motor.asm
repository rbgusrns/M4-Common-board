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

DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("write_dec_handle_rom"), DW_AT_symbol_name("_write_dec_handle_rom")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("write_end_acc_rom"), DW_AT_symbol_name("_write_end_acc_rom")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)
DW$4	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$5	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$3


DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("write_acc_handle_rom"), DW_AT_symbol_name("_write_acc_handle_rom")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)

DW$7	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$7, DW_AT_declaration(0x01)
	.dwattr DW$7, DW_AT_external(0x01)
DW$8	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$7


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("write_acc_rom"), DW_AT_symbol_name("_write_acc_rom")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("write_vel_rom"), DW_AT_symbol_name("_write_vel_rom")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)
DW$11	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$11, DW_AT_type(*DW$T$10)
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)
DW$12	.dwtag  DW_TAG_variable, DW_AT_name("D_HANDLE"), DW_AT_symbol_name("_D_HANDLE")
	.dwattr DW$12, DW_AT_type(*DW$T$10)
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)
DW$13	.dwtag  DW_TAG_variable, DW_AT_name("g_Flag"), DW_AT_symbol_name("_g_Flag")
	.dwattr DW$13, DW_AT_type(*DW$T$91)
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_acc"), DW_AT_symbol_name("_g_i16_handle_acc")
	.dwattr DW$14, DW_AT_type(*DW$T$22)
	.dwattr DW$14, DW_AT_declaration(0x01)
	.dwattr DW$14, DW_AT_external(0x01)
DW$15	.dwtag  DW_TAG_variable, DW_AT_name("g_i16_handle_dec"), DW_AT_symbol_name("_g_i16_handle_dec")
	.dwattr DW$15, DW_AT_type(*DW$T$22)
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)
DW$16	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$16, DW_AT_type(*DW$T$10)
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)
DW$17	.dwtag  DW_TAG_variable, DW_AT_name("g_u16turn_dist"), DW_AT_symbol_name("_g_u16turn_dist")
	.dwattr DW$17, DW_AT_type(*DW$T$22)
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)
DW$18	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_END_ACC_targetval"), DW_AT_symbol_name("_g_u32_END_ACC_targetval")
	.dwattr DW$18, DW_AT_type(*DW$T$78)
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("g_i32_Time_index"), DW_AT_symbol_name("_g_i32_Time_index")
	.dwattr DW$19, DW_AT_type(*DW$T$62)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_ACC_targetval"), DW_AT_symbol_name("_g_u32_ACC_targetval")
	.dwattr DW$20, DW_AT_type(*DW$T$78)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("g_u32_VEL_targetval"), DW_AT_symbol_name("_g_u32_VEL_targetval")
	.dwattr DW$21, DW_AT_type(*DW$T$78)
	.dwattr DW$21, DW_AT_declaration(0x01)
	.dwattr DW$21, DW_AT_external(0x01)

DW$22	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ6sqrt"), DW_AT_symbol_name("__IQ6sqrt")
	.dwattr DW$22, DW_AT_type(*DW$T$12)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
DW$23	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$22


DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("memset"), DW_AT_symbol_name("_memset")
	.dwattr DW$24, DW_AT_type(*DW$T$3)
	.dwattr DW$24, DW_AT_declaration(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
DW$25	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$26	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$27	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$24

DW$28	.dwtag  DW_TAG_variable, DW_AT_name("g_int32long_ACC"), DW_AT_symbol_name("_g_int32long_ACC")
	.dwattr DW$28, DW_AT_type(*DW$T$62)
	.dwattr DW$28, DW_AT_declaration(0x01)
	.dwattr DW$28, DW_AT_external(0x01)

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("_IQ24div"), DW_AT_symbol_name("__IQ24div")
	.dwattr DW$29, DW_AT_type(*DW$T$12)
	.dwattr DW$29, DW_AT_declaration(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
DW$30	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$31	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$29


DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQxmpy"), DW_AT_symbol_name("___IQxmpy")
	.dwattr DW$32, DW_AT_type(*DW$T$12)
	.dwattr DW$32, DW_AT_declaration(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
DW$33	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$34	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$35	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$32

DW$36	.dwtag  DW_TAG_variable, DW_AT_name("c"), DW_AT_symbol_name("_c")
	.dwattr DW$36, DW_AT_type(*DW$T$17)
	.dwattr DW$36, DW_AT_declaration(0x01)
	.dwattr DW$36, DW_AT_external(0x01)

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("labs"), DW_AT_symbol_name("_labs")
	.dwattr DW$37, DW_AT_type(*DW$T$12)
	.dwattr DW$37, DW_AT_declaration(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
DW$38	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$37

DW$39	.dwtag  DW_TAG_variable, DW_AT_name("g_fp32time"), DW_AT_symbol_name("_g_fp32time")
	.dwattr DW$39, DW_AT_type(*DW$T$80)
	.dwattr DW$39, DW_AT_declaration(0x01)
	.dwattr DW$39, DW_AT_external(0x01)

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("__IQmpy"), DW_AT_symbol_name("___IQmpy")
	.dwattr DW$40, DW_AT_type(*DW$T$12)
	.dwattr DW$40, DW_AT_declaration(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
DW$41	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$43	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$40

DW$44	.dwtag  DW_TAG_variable, DW_AT_name("CpuTimer0Regs"), DW_AT_symbol_name("_CpuTimer0Regs")
	.dwattr DW$44, DW_AT_type(*DW$T$88)
	.dwattr DW$44, DW_AT_declaration(0x01)
	.dwattr DW$44, DW_AT_external(0x01)
DW$45	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$45, DW_AT_type(*DW$T$84)
	.dwattr DW$45, DW_AT_declaration(0x01)
	.dwattr DW$45, DW_AT_external(0x01)
DW$46	.dwtag  DW_TAG_variable, DW_AT_name("RMotor"), DW_AT_symbol_name("_RMotor")
	.dwattr DW$46, DW_AT_type(*DW$T$57)
	.dwattr DW$46, DW_AT_declaration(0x01)
	.dwattr DW$46, DW_AT_external(0x01)
DW$47	.dwtag  DW_TAG_variable, DW_AT_name("LMotor"), DW_AT_symbol_name("_LMotor")
	.dwattr DW$47, DW_AT_type(*DW$T$57)
	.dwattr DW$47, DW_AT_declaration(0x01)
	.dwattr DW$47, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI44010 C:\Users\rbgus\AppData\Local\Temp\TI4404 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI4402 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI4406 --object_file Motor.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_move_to_move

DW$48	.dwtag  DW_TAG_subprogram, DW_AT_name("move_to_move"), DW_AT_symbol_name("_move_to_move")
	.dwattr DW$48, DW_AT_low_pc(_move_to_move)
	.dwattr DW$48, DW_AT_high_pc(0x00)
	.dwattr DW$48, DW_AT_begin_file("Motor.c")
	.dwattr DW$48, DW_AT_begin_line(0x170)
	.dwattr DW$48, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",369,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _move_to_move                 FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter, 10 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_move_to_move:
;*** 369	-----------------------    dist = dist;
;*** 369	-----------------------    dec_dist = dec_dist;
;*** 369	-----------------------    tar_vel = tar_vel;
;*** 369	-----------------------    dec_vel = dec_vel;
;*** 369	-----------------------    acc = acc;
;*** 370	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 374	-----------------------    RMotor.iqTargetA = LMotor.iqTargetA = acc<<17;
;*** 376	-----------------------    RMotor.iq17decel_distance = LMotor.iq17decel_distance = dec_dist;
;*** 377	-----------------------    RMotor.iq17user_distance = LMotor.iq17user_distance = v$1 = v$2 = dist;
;*** 380	-----------------------    RMotor.iqTargetV = LMotor.iqTargetV = tar_vel;
;*** 382	-----------------------    RMotor.iq17err_distance = v$1-RMotor.iq17distance_sum;
;*** 383	-----------------------    LMotor.iq17err_distance = v$2-LMotor.iq17distance_sum;
;*** 385	-----------------------    RMotor.iq17decel_vel = LMotor.iq17decel_vel = dec_vel;
;*** 387	-----------------------    RMotor.u16decel_flag = LMotor.u16decel_flag = 1u;
;*** 389	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 389	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#10
	.dwcfa	0x1d, -12
;* AL    assigned to _dist
DW$49	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$49, DW_AT_type(*DW$T$61)
	.dwattr DW$49, DW_AT_location[DW_OP_reg0]
DW$50	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dec_dist"), DW_AT_symbol_name("_dec_dist")
	.dwattr DW$50, DW_AT_type(*DW$T$61)
	.dwattr DW$50, DW_AT_location[DW_OP_breg20 -14]
DW$51	.dwtag  DW_TAG_formal_parameter, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$51, DW_AT_type(*DW$T$61)
	.dwattr DW$51, DW_AT_location[DW_OP_breg20 -16]
DW$52	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dec_vel"), DW_AT_symbol_name("_dec_vel")
	.dwattr DW$52, DW_AT_type(*DW$T$61)
	.dwattr DW$52, DW_AT_location[DW_OP_breg20 -18]
DW$53	.dwtag  DW_TAG_formal_parameter, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$53, DW_AT_type(*DW$T$63)
	.dwattr DW$53, DW_AT_location[DW_OP_breg20 -20]
;* AL    assigned to v$1
DW$54	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$54, DW_AT_type(*DW$T$12)
	.dwattr DW$54, DW_AT_location[DW_OP_reg0]
;* AR6   assigned to v$2
DW$55	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$55, DW_AT_type(*DW$T$12)
	.dwattr DW$55, DW_AT_location[DW_OP_reg16]
;* AL    assigned to _dist
DW$56	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$56, DW_AT_type(*DW$T$69)
	.dwattr DW$56, DW_AT_location[DW_OP_reg0]
;* AR4   assigned to _dec_dist
DW$57	.dwtag  DW_TAG_variable, DW_AT_name("dec_dist"), DW_AT_symbol_name("_dec_dist")
	.dwattr DW$57, DW_AT_type(*DW$T$69)
	.dwattr DW$57, DW_AT_location[DW_OP_reg12]
;* PL    assigned to _tar_vel
DW$58	.dwtag  DW_TAG_variable, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$58, DW_AT_type(*DW$T$69)
	.dwattr DW$58, DW_AT_location[DW_OP_reg2]
;* AR7   assigned to _dec_vel
DW$59	.dwtag  DW_TAG_variable, DW_AT_name("dec_vel"), DW_AT_symbol_name("_dec_vel")
	.dwattr DW$59, DW_AT_type(*DW$T$69)
	.dwattr DW$59, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to _acc
DW$60	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$60, DW_AT_type(*DW$T$70)
	.dwattr DW$60, DW_AT_location[DW_OP_reg16]
DW$61	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$61, DW_AT_type(*DW$T$61)
	.dwattr DW$61, DW_AT_location[DW_OP_breg20 -2]
DW$62	.dwtag  DW_TAG_variable, DW_AT_name("dec_dist"), DW_AT_symbol_name("_dec_dist")
	.dwattr DW$62, DW_AT_type(*DW$T$61)
	.dwattr DW$62, DW_AT_location[DW_OP_breg20 -4]
DW$63	.dwtag  DW_TAG_variable, DW_AT_name("tar_vel"), DW_AT_symbol_name("_tar_vel")
	.dwattr DW$63, DW_AT_type(*DW$T$61)
	.dwattr DW$63, DW_AT_location[DW_OP_breg20 -6]
DW$64	.dwtag  DW_TAG_variable, DW_AT_name("dec_vel"), DW_AT_symbol_name("_dec_vel")
	.dwattr DW$64, DW_AT_type(*DW$T$61)
	.dwattr DW$64, DW_AT_location[DW_OP_breg20 -8]
DW$65	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$65, DW_AT_type(*DW$T$63)
	.dwattr DW$65, DW_AT_location[DW_OP_breg20 -10]
        MOVL      XAR6,*-SP[20]         ; |369| 
        MOVL      XAR7,*-SP[18]         ; |369| 
        MOVL      P,*-SP[16]            ; |369| 
        MOVL      XAR4,*-SP[14]         ; |369| 
        MOVL      *-SP[2],ACC           ; |369| 
        MOVL      *-SP[4],XAR4          ; |369| 
        MOVL      *-SP[6],P             ; |369| 
        MOVL      *-SP[8],XAR7          ; |369| 
        MOVL      *-SP[10],XAR6         ; |369| 
	.dwpsn	"Motor.c",370,4
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |370| 
	.dwpsn	"Motor.c",374,4
        MOV       T,#17                 ; |374| 
        MOVL      ACC,*-SP[10]          ; |374| 
        MOVW      DP,#_LMotor
        LSLL      ACC,T                 ; |374| 
        MOVL      @_LMotor,ACC          ; |374| 
        MOVW      DP,#_RMotor
        MOVL      @_RMotor,ACC          ; |374| 
	.dwpsn	"Motor.c",376,4
        MOVW      DP,#_LMotor+36
        MOVL      ACC,*-SP[4]           ; |376| 
        MOVL      @_LMotor+36,ACC       ; |376| 
        MOVW      DP,#_RMotor+36
        MOVL      @_RMotor+36,ACC       ; |376| 
	.dwpsn	"Motor.c",377,4
        MOVL      XAR6,*-SP[2]          ; |377| 
        MOVL      @_RMotor+40,XAR6      ; |377| 
        MOVW      DP,#_LMotor+40
        MOVL      @_LMotor+40,XAR6      ; |377| 
        MOVL      ACC,XAR6              ; |377| 
	.dwpsn	"Motor.c",380,4
        MOVL      XAR7,*-SP[6]          ; |380| 
        MOVL      @_LMotor+6,XAR7       ; |380| 
        MOVW      DP,#_RMotor+6
        MOVL      @_RMotor+6,XAR7       ; |380| 
	.dwpsn	"Motor.c",382,4
        SUBL      ACC,@_RMotor+34       ; |382| 
        MOVL      @_RMotor+38,ACC       ; |382| 
	.dwpsn	"Motor.c",383,4
        MOVW      DP,#_LMotor+34
        MOVL      ACC,XAR6              ; |383| 
        SUBL      ACC,@_LMotor+34       ; |383| 
        MOVL      @_LMotor+38,ACC       ; |383| 
	.dwpsn	"Motor.c",385,4
        MOVL      ACC,*-SP[8]           ; |385| 
        MOVL      @_LMotor+42,ACC       ; |385| 
        MOVW      DP,#_RMotor+42
        MOVL      @_RMotor+42,ACC       ; |385| 
	.dwpsn	"Motor.c",387,4
        MOVW      DP,#_LMotor+44
        MOVB      AL,#1                 ; |387| 
        MOV       @_LMotor+44,AL        ; |387| 
        MOVW      DP,#_RMotor+44
        MOV       @_RMotor+44,AL        ; |387| 
	.dwpsn	"Motor.c",389,4
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |389| 
	.dwpsn	"Motor.c",390,1
        SUBB      SP,#10
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$48, DW_AT_end_file("Motor.c")
	.dwattr DW$48, DW_AT_end_line(0x186)
	.dwattr DW$48, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$48

	.sect	".text"
	.global	_move_to_end

DW$66	.dwtag  DW_TAG_subprogram, DW_AT_name("move_to_end"), DW_AT_symbol_name("_move_to_end")
	.dwattr DW$66, DW_AT_low_pc(_move_to_end)
	.dwattr DW$66, DW_AT_high_pc(0x00)
	.dwattr DW$66, DW_AT_begin_file("Motor.c")
	.dwattr DW$66, DW_AT_begin_line(0x188)
	.dwattr DW$66, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",393,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _move_to_end                  FR SIZE:   8           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            2 Parameter,  6 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_move_to_end:
;*** 393	-----------------------    dist = dist;
;*** 393	-----------------------    vel = vel;
;*** 393	-----------------------    acc = acc;
;*** 395	-----------------------    *(&CpuTimer0Regs+4L) |= 0x10u;
;*** 396	-----------------------    g_fp32time = (float)g_i32_Time_index*2.49999993684468790889e-5F;
;*** 398	-----------------------    RMotor.iqTargetA = LMotor.iqTargetA = acc<<17;
;*** 400	-----------------------    LMotor.iq17decel_distance = RMotor.iq17decel_distance = dist;
;*** 402	-----------------------    RMotor.iq17user_distance = LMotor.iq17user_distance = v$1 = v$2 = dist;
;*** 404	-----------------------    RMotor.iqTargetV = LMotor.iqTargetV = vel;
;*** 406	-----------------------    RMotor.iq17err_distance = v$1-RMotor.iq17distance_sum;
;*** 407	-----------------------    LMotor.iq17err_distance = v$2-LMotor.iq17distance_sum;
;*** 409	-----------------------    RMotor.iq17decel_vel = LMotor.iq17decel_vel = 0L;
;*** 411	-----------------------    RMotor.u16decel_flag = LMotor.u16decel_flag = 1u;
;*** 413	-----------------------    *&g_Flag &= 0xfffdu;
;*** 415	-----------------------    *(&CpuTimer0Regs+4L) &= 0xffefu;
;*** 415	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#8
	.dwcfa	0x1d, -10
;* AL    assigned to _dist
DW$67	.dwtag  DW_TAG_formal_parameter, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$67, DW_AT_type(*DW$T$61)
	.dwattr DW$67, DW_AT_location[DW_OP_reg0]
DW$68	.dwtag  DW_TAG_formal_parameter, DW_AT_name("vel"), DW_AT_symbol_name("_vel")
	.dwattr DW$68, DW_AT_type(*DW$T$61)
	.dwattr DW$68, DW_AT_location[DW_OP_breg20 -12]
DW$69	.dwtag  DW_TAG_formal_parameter, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$69, DW_AT_type(*DW$T$63)
	.dwattr DW$69, DW_AT_location[DW_OP_breg20 -14]
;* AL    assigned to v$1
DW$70	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$70, DW_AT_type(*DW$T$12)
	.dwattr DW$70, DW_AT_location[DW_OP_reg0]
;* AR6   assigned to v$2
DW$71	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$71, DW_AT_type(*DW$T$12)
	.dwattr DW$71, DW_AT_location[DW_OP_reg16]
;* AL    assigned to _dist
DW$72	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$72, DW_AT_type(*DW$T$69)
	.dwattr DW$72, DW_AT_location[DW_OP_reg0]
;* AR7   assigned to _vel
DW$73	.dwtag  DW_TAG_variable, DW_AT_name("vel"), DW_AT_symbol_name("_vel")
	.dwattr DW$73, DW_AT_type(*DW$T$69)
	.dwattr DW$73, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to _acc
DW$74	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$74, DW_AT_type(*DW$T$70)
	.dwattr DW$74, DW_AT_location[DW_OP_reg16]
DW$75	.dwtag  DW_TAG_variable, DW_AT_name("dist"), DW_AT_symbol_name("_dist")
	.dwattr DW$75, DW_AT_type(*DW$T$61)
	.dwattr DW$75, DW_AT_location[DW_OP_breg20 -4]
DW$76	.dwtag  DW_TAG_variable, DW_AT_name("vel"), DW_AT_symbol_name("_vel")
	.dwattr DW$76, DW_AT_type(*DW$T$61)
	.dwattr DW$76, DW_AT_location[DW_OP_breg20 -6]
DW$77	.dwtag  DW_TAG_variable, DW_AT_name("acc"), DW_AT_symbol_name("_acc")
	.dwattr DW$77, DW_AT_type(*DW$T$63)
	.dwattr DW$77, DW_AT_location[DW_OP_breg20 -8]
        MOVL      XAR6,*-SP[14]         ; |393| 
        MOVL      XAR7,*-SP[12]         ; |393| 
        MOVL      *-SP[4],ACC           ; |393| 
        MOVL      *-SP[6],XAR7          ; |393| 
        MOVL      *-SP[8],XAR6          ; |393| 
	.dwpsn	"Motor.c",395,4
        MOVW      DP,#_CpuTimer0Regs+4
        OR        @_CpuTimer0Regs+4,#0x0010 ; |395| 
	.dwpsn	"Motor.c",396,4
        MOVW      DP,#_g_i32_Time_index
        MOVL      ACC,@_g_i32_Time_index ; |396| 
        LCR       #L$$TOFS              ; |396| 
        ; call occurs [#L$$TOFS] ; |396| 
        MOVL      XAR6,ACC              ; |396| 
        MOV       AL,#46871
        MOV       AH,#14289
        MOVL      *-SP[2],ACC           ; |396| 
        MOVL      ACC,XAR6              ; |396| 
        LCR       #FS$$MPY              ; |396| 
        ; call occurs [#FS$$MPY] ; |396| 
        MOVW      DP,#_g_fp32time
        MOVL      @_g_fp32time,ACC      ; |396| 
	.dwpsn	"Motor.c",398,5
        MOV       T,#17                 ; |398| 
        MOVL      ACC,*-SP[8]           ; |398| 
        MOVW      DP,#_LMotor
        LSLL      ACC,T                 ; |398| 
        MOVL      @_LMotor,ACC          ; |398| 
        MOVW      DP,#_RMotor
        MOVL      @_RMotor,ACC          ; |398| 
	.dwpsn	"Motor.c",400,5
        MOVL      ACC,*-SP[4]           ; |400| 
        MOVL      @_RMotor+36,ACC       ; |400| 
        MOVW      DP,#_LMotor+36
        MOVL      @_LMotor+36,ACC       ; |400| 
	.dwpsn	"Motor.c",402,5
        MOVL      XAR6,*-SP[4]          ; |402| 
        MOVW      DP,#_RMotor+40
        MOVL      @_RMotor+40,XAR6      ; |402| 
        MOVW      DP,#_LMotor+40
        MOVL      @_LMotor+40,XAR6      ; |402| 
        MOVL      ACC,XAR6              ; |402| 
	.dwpsn	"Motor.c",404,5
        MOVL      XAR7,*-SP[6]          ; |404| 
        MOVL      @_LMotor+6,XAR7       ; |404| 
        MOVW      DP,#_RMotor+6
        MOVL      @_RMotor+6,XAR7       ; |404| 
	.dwpsn	"Motor.c",406,5
        SUBL      ACC,@_RMotor+34       ; |406| 
        MOVL      @_RMotor+38,ACC       ; |406| 
	.dwpsn	"Motor.c",407,5
        MOVW      DP,#_LMotor+34
        MOVL      ACC,XAR6              ; |407| 
        SUBL      ACC,@_LMotor+34       ; |407| 
        MOVL      @_LMotor+38,ACC       ; |407| 
	.dwpsn	"Motor.c",409,5
        MOVB      ACC,#0
        MOVL      @_LMotor+42,ACC       ; |409| 
        MOVW      DP,#_RMotor+42
        MOVL      @_RMotor+42,ACC       ; |409| 
	.dwpsn	"Motor.c",411,5
        MOVW      DP,#_LMotor+44
        MOVB      AL,#1                 ; |411| 
        MOV       @_LMotor+44,AL        ; |411| 
        MOVW      DP,#_RMotor+44
        MOV       @_RMotor+44,AL        ; |411| 
	.dwpsn	"Motor.c",413,5
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfffd      ; |413| 
	.dwpsn	"Motor.c",415,5
        MOVW      DP,#_CpuTimer0Regs+4
        AND       @_CpuTimer0Regs+4,#0xffef ; |415| 
	.dwpsn	"Motor.c",416,1
        SUBB      SP,#8
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$66, DW_AT_end_file("Motor.c")
	.dwattr DW$66, DW_AT_end_line(0x1a0)
	.dwattr DW$66, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$66

	.sect	".text"
	.global	_Init_MotorCtrlVar

DW$78	.dwtag  DW_TAG_subprogram, DW_AT_name("Init_MotorCtrlVar"), DW_AT_symbol_name("_Init_MotorCtrlVar")
	.dwattr DW$78, DW_AT_low_pc(_Init_MotorCtrlVar)
	.dwattr DW$78, DW_AT_high_pc(0x00)
	.dwattr DW$78, DW_AT_begin_file("Motor.c")
	.dwattr DW$78, DW_AT_begin_line(0xf2)
	.dwattr DW$78, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",243,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Init_MotorCtrlVar            FR SIZE:  10           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            0 Parameter,  8 Auto,  2 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_Init_MotorCtrlVar:
;*** 244	-----------------------    memset((void * const)pM, 0, 46uL);
;*** 246	-----------------------    (*pM).iqTargetA = (long)((long double)g_u32_ACC_targetval*1.31072e5L);
;*** 247	-----------------------    (*pM).iq24TargetA_1 = 0L;
;*** 248	-----------------------    (*pM).iqTargetV = (long)((long double)g_u32_VEL_targetval*1.31072e5L);
;*** 249	-----------------------    (*pM).iqDist = 0L;
;*** 250	-----------------------    (*pM).iqVelo = 0L;
;*** 251	-----------------------    (*pM).iqNextV = 0L;
;*** 253	-----------------------    (*pM).iqAmpyS = 0L;
;*** 255	-----------------------    (*pM).iqHandle = 131072L;
;*** 256	-----------------------    (*pM).iqTotalDis = 0L;
;*** 257	-----------------------    (*pM).iq24TimeValue = 0L;
;*** 258	-----------------------    (*pM).u32_Period = 0uL;
;*** 259	-----------------------    (*pM).u16_pPeriod = 0u;
;*** 260	-----------------------    (*pM).u32_Period_Cnt = 0uL;
;*** 262	-----------------------    (*pM).iq15Cross_Check_Dist = 0L;
;*** 262	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#8
	.dwcfa	0x1d, -12
;* AR4   assigned to _pM
DW$79	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$79, DW_AT_type(*DW$T$58)
	.dwattr DW$79, DW_AT_location[DW_OP_reg12]
;* AR1   assigned to _pM
DW$80	.dwtag  DW_TAG_variable, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$80, DW_AT_type(*DW$T$81)
	.dwattr DW$80, DW_AT_location[DW_OP_reg6]
        MOVL      XAR1,XAR4             ; |243| 
	.dwpsn	"Motor.c",244,2
        MOVL      XAR4,XAR1             ; |244| 
        MOVB      ACC,#46
        MOVB      XAR5,#0
        LCR       #_memset              ; |244| 
        ; call occurs [#_memset] ; |244| 
	.dwpsn	"Motor.c",246,2
        MOVZ      AR6,SP                ; |246| 
        MOVW      DP,#_g_u32_ACC_targetval
        SUBB      XAR6,#8               ; |246| 
        MOVL      ACC,@_g_u32_ACC_targetval ; |246| 
        LCR       #UL$$TOFD             ; |246| 
        ; call occurs [#UL$$TOFD] ; |246| 
        MOVZ      AR6,SP                ; |246| 
        MOVZ      AR4,SP                ; |246| 
        MOVL      XAR5,#FL1             ; |246| 
        SUBB      XAR6,#4               ; |246| 
        SUBB      XAR4,#8               ; |246| 
        LCR       #FD$$MPY              ; |246| 
        ; call occurs [#FD$$MPY] ; |246| 
        MOVZ      AR4,SP                ; |246| 
        SUBB      XAR4,#4               ; |246| 
        LCR       #FD$$TOL              ; |246| 
        ; call occurs [#FD$$TOL] ; |246| 
        MOVL      *+XAR1[0],ACC         ; |246| 
	.dwpsn	"Motor.c",247,2
        MOVB      XAR0,#16              ; |247| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |247| 
	.dwpsn	"Motor.c",248,2
        MOVZ      AR6,SP                ; |248| 
        MOVW      DP,#_g_u32_VEL_targetval
        SUBB      XAR6,#8               ; |248| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |248| 
        LCR       #UL$$TOFD             ; |248| 
        ; call occurs [#UL$$TOFD] ; |248| 
        MOVZ      AR6,SP                ; |248| 
        MOVZ      AR4,SP                ; |248| 
        SUBB      XAR6,#4               ; |248| 
        SUBB      XAR4,#8               ; |248| 
        MOVL      XAR5,#FL1             ; |248| 
        LCR       #FD$$MPY              ; |248| 
        ; call occurs [#FD$$MPY] ; |248| 
        MOVZ      AR4,SP                ; |248| 
        SUBB      XAR4,#4               ; |248| 
        LCR       #FD$$TOL              ; |248| 
        ; call occurs [#FD$$TOL] ; |248| 
        MOVL      *+XAR1[6],ACC         ; |248| 
	.dwpsn	"Motor.c",249,2
        MOVB      ACC,#0
        MOVL      *+XAR1[2],ACC         ; |249| 
	.dwpsn	"Motor.c",250,2
        MOVL      *+XAR1[4],ACC         ; |250| 
	.dwpsn	"Motor.c",251,2
        MOVB      XAR0,#8               ; |251| 
        MOVL      *+XAR1[AR0],ACC       ; |251| 
	.dwpsn	"Motor.c",253,2
        MOVB      XAR0,#10              ; |253| 
        MOVL      *+XAR1[AR0],ACC       ; |253| 
	.dwpsn	"Motor.c",255,2
        MOVB      XAR0,#12              ; |255| 
        MOVL      XAR4,#131072          ; |255| 
        MOVL      *+XAR1[AR0],XAR4      ; |255| 
	.dwpsn	"Motor.c",256,2
        MOVB      XAR0,#14              ; |256| 
        MOVL      *+XAR1[AR0],ACC       ; |256| 
	.dwpsn	"Motor.c",257,2
        MOVB      XAR0,#18              ; |257| 
        MOVL      *+XAR1[AR0],ACC       ; |257| 
	.dwpsn	"Motor.c",258,2
        MOVB      XAR0,#22              ; |258| 
        MOVL      *+XAR1[AR0],ACC       ; |258| 
	.dwpsn	"Motor.c",259,2
        MOVB      XAR0,#24              ; |259| 
        MOV       *+XAR1[AR0],#0        ; |259| 
	.dwpsn	"Motor.c",260,2
        MOVB      XAR0,#20              ; |260| 
        MOVL      *+XAR1[AR0],ACC       ; |260| 
	.dwpsn	"Motor.c",262,5
        MOVB      XAR0,#30              ; |262| 
        MOVL      *+XAR1[AR0],ACC       ; |262| 
	.dwpsn	"Motor.c",264,1
        SUBB      SP,#8
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$78, DW_AT_end_file("Motor.c")
	.dwattr DW$78, DW_AT_end_line(0x108)
	.dwattr DW$78, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$78

	.sect	".text"
	.global	_motor_vari_init

DW$81	.dwtag  DW_TAG_subprogram, DW_AT_name("motor_vari_init"), DW_AT_symbol_name("_motor_vari_init")
	.dwattr DW$81, DW_AT_low_pc(_motor_vari_init)
	.dwattr DW$81, DW_AT_high_pc(0x00)
	.dwattr DW$81, DW_AT_begin_file("Motor.c")
	.dwattr DW$81, DW_AT_begin_line(0xec)
	.dwattr DW$81, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",237,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _motor_vari_init              FR SIZE:   0           *
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
_motor_vari_init:
;*** 239	-----------------------    Init_MotorCtrlVar(&LMotor);
;*** 240	-----------------------    Init_MotorCtrlVar(&RMotor);
;*** 240	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Motor.c",239,2
        MOVL      XAR4,#_LMotor         ; |239| 
        LCR       #_Init_MotorCtrlVar   ; |239| 
        ; call occurs [#_Init_MotorCtrlVar] ; |239| 
	.dwpsn	"Motor.c",240,2
        MOVL      XAR4,#_RMotor         ; |240| 
        LCR       #_Init_MotorCtrlVar   ; |240| 
        ; call occurs [#_Init_MotorCtrlVar] ; |240| 
	.dwpsn	"Motor.c",241,1
        LRETR
        ; return occurs
	.dwattr DW$81, DW_AT_end_file("Motor.c")
	.dwattr DW$81, DW_AT_end_line(0xf1)
	.dwattr DW$81, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$81

	.sect	".text"
	.global	_decel_calculation

DW$82	.dwtag  DW_TAG_subprogram, DW_AT_name("decel_calculation"), DW_AT_symbol_name("_decel_calculation")
	.dwattr DW$82, DW_AT_low_pc(_decel_calculation)
	.dwattr DW$82, DW_AT_high_pc(0x00)
	.dwattr DW$82, DW_AT_begin_file("Motor.c")
	.dwattr DW$82, DW_AT_begin_line(0x150)
	.dwattr DW$82, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",337,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _decel_calculation            FR SIZE:   0           *
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
_decel_calculation:
;*** 338	-----------------------    if ( LMotor.u16decel_flag ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
	.dwpsn	"Motor.c",338,4
        MOVW      DP,#_LMotor+44
        MOV       AL,@_LMotor+44        ; |338| 
        BF        L1,NEQ                ; |338| 
        ; branchcc occurs ; |338| 
;*** 352	-----------------------    if ( RMotor.u16decel_flag && RMotor.iq17decel_distance >= ABS(RMotor.iq17err_distance) ) goto g4;
	.dwpsn	"Motor.c",352,9
        MOVW      DP,#_RMotor+44
        MOV       AL,@_RMotor+44        ; |352| 
        BF        L3,EQ                 ; |352| 
        ; branchcc occurs ; |352| 
        MOVL      ACC,@_RMotor+38       ; |352| 
        ABS       ACC                   ; |352| 
        CMPL      ACC,@_RMotor+36       ; |352| 
        BF        L2,LEQ                ; |352| 
        ; branchcc occurs ; |352| 
;*** 352	-----------------------    goto g5;
        BF        L3,UNC                ; |352| 
        ; branch occurs ; |352| 
L1:    
;***	-----------------------g3:
;*** 340	-----------------------    if ( LMotor.iq17decel_distance < ABS(LMotor.iq17err_distance) ) goto g5;
	.dwpsn	"Motor.c",340,7
        MOVL      ACC,@_LMotor+38       ; |340| 
        ABS       ACC                   ; |340| 
        CMPL      ACC,@_LMotor+36       ; |340| 
        BF        L3,GT                 ; |340| 
        ; branchcc occurs ; |340| 
L2:    
;***	-----------------------g4:
;*** 343	-----------------------    RMotor.iqTargetV = RMotor.iq17decel_vel;
;*** 344	-----------------------    LMotor.iqTargetV = LMotor.iq17decel_vel;
;*** 346	-----------------------    RMotor.u16decel_flag = LMotor.u16decel_flag = 0u;
;*** 348	-----------------------    *&g_Flag &= 0xfdffu;
;*** 349	-----------------------    *&g_Flag &= 0xfbffu;
;***	-----------------------g5:
;***  	-----------------------    return;
	.dwpsn	"Motor.c",343,10
        MOVW      DP,#_RMotor+42
        MOVL      ACC,@_RMotor+42       ; |343| 
        MOVL      @_RMotor+6,ACC        ; |343| 
	.dwpsn	"Motor.c",344,10
        MOVW      DP,#_LMotor+42
        MOVL      ACC,@_LMotor+42       ; |344| 
        MOVL      @_LMotor+6,ACC        ; |344| 
	.dwpsn	"Motor.c",346,10
        MOVB      AL,#0
        MOV       @_LMotor+44,AL        ; |346| 
        MOVW      DP,#_RMotor+44
        MOV       @_RMotor+44,AL        ; |346| 
	.dwpsn	"Motor.c",348,10
        MOVW      DP,#_g_Flag
        AND       @_g_Flag,#0xfdff      ; |348| 
	.dwpsn	"Motor.c",349,10
        AND       @_g_Flag,#0xfbff      ; |349| 
L3:    
	.dwpsn	"Motor.c",366,1
        LRETR
        ; return occurs
	.dwattr DW$82, DW_AT_end_file("Motor.c")
	.dwattr DW$82, DW_AT_end_line(0x16e)
	.dwattr DW$82, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$82

	.sect	".text"
	.global	_R_Motor_ON

DW$83	.dwtag  DW_TAG_subprogram, DW_AT_name("R_Motor_ON"), DW_AT_symbol_name("_R_Motor_ON")
	.dwattr DW$83, DW_AT_low_pc(_R_Motor_ON)
	.dwattr DW$83, DW_AT_high_pc(0x00)
	.dwattr DW$83, DW_AT_begin_file("Motor.c")
	.dwattr DW$83, DW_AT_begin_line(0x136)
	.dwattr DW$83, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",311,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _R_Motor_ON                   FR SIZE:   0           *
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
_R_Motor_ON:
;*** 313	-----------------------    (*pM).iq17Turnmark_Check_Dist += 107987L;
;*** 314	-----------------------    (*pM).iq15Cross_Check_Dist += 26996L;
;*** 315	-----------------------    (*pM).iq15GoneDist += 26996L;
;*** 316	-----------------------    (*pM).iq17distance_sum += 107987L;
;*** 318	-----------------------    RMotor.iq17err_distance = RMotor.iq17user_distance-RMotor.iq17distance_sum;
;*** 319	-----------------------    LMotor.iq17err_distance = LMotor.iq17user_distance-LMotor.iq17distance_sum;
;*** 321	-----------------------    decel_calculation();
;*** 321	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _pM
DW$84	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$84, DW_AT_type(*DW$T$58)
	.dwattr DW$84, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to _pM
DW$85	.dwtag  DW_TAG_variable, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$85, DW_AT_type(*DW$T$81)
	.dwattr DW$85, DW_AT_location[DW_OP_reg12]
	.dwpsn	"Motor.c",313,5
        MOVB      ACC,#26
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |313| 
        MOVL      XAR5,#107987          ; |313| 
        MOVL      ACC,XAR5              ; |313| 
        ADDL      *+XAR6[0],ACC         ; |313| 
	.dwpsn	"Motor.c",314,5
        MOVB      ACC,#30
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |314| 
        MOVL      XAR5,#26996           ; |314| 
        MOVL      ACC,XAR5              ; |314| 
        ADDL      *+XAR6[0],ACC         ; |314| 
	.dwpsn	"Motor.c",315,5
        MOVB      ACC,#28
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |315| 
        MOVL      ACC,XAR5              ; |315| 
        ADDL      *+XAR6[0],ACC         ; |315| 
	.dwpsn	"Motor.c",316,5
        MOVB      ACC,#34
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |316| 
        MOVL      XAR4,#107987          ; |316| 
        MOVL      ACC,XAR4              ; |316| 
        ADDL      *+XAR5[0],ACC         ; |316| 
	.dwpsn	"Motor.c",318,5
        MOVW      DP,#_RMotor+40
        MOVL      ACC,@_RMotor+40       ; |318| 
        SUBL      ACC,@_RMotor+34       ; |318| 
        MOVL      @_RMotor+38,ACC       ; |318| 
	.dwpsn	"Motor.c",319,5
        MOVW      DP,#_LMotor+40
        MOVL      ACC,@_LMotor+40       ; |319| 
        SUBL      ACC,@_LMotor+34       ; |319| 
        MOVL      @_LMotor+38,ACC       ; |319| 
	.dwpsn	"Motor.c",321,5
        LCR       #_decel_calculation   ; |321| 
        ; call occurs [#_decel_calculation] ; |321| 
	.dwpsn	"Motor.c",322,1
        LRETR
        ; return occurs
	.dwattr DW$83, DW_AT_end_file("Motor.c")
	.dwattr DW$83, DW_AT_end_line(0x142)
	.dwattr DW$83, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$83

	.sect	".text"
	.global	_Motor_CalBaseMotionValue

DW$86	.dwtag  DW_TAG_subprogram, DW_AT_name("Motor_CalBaseMotionValue"), DW_AT_symbol_name("_Motor_CalBaseMotionValue")
	.dwattr DW$86, DW_AT_low_pc(_Motor_CalBaseMotionValue)
	.dwattr DW$86, DW_AT_high_pc(0x00)
	.dwattr DW$86, DW_AT_begin_file("Motor.c")
	.dwattr DW$86, DW_AT_begin_line(0x10a)
	.dwattr DW$86, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",267,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _Motor_CalBaseMotionValue     FR SIZE:   4           *
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
_Motor_CalBaseMotionValue:
;*** 268	-----------------------    v$5 = (*pM).iqNextV;
;*** 268	-----------------------    if ( v$5 < (*pM).iqTargetV ) goto g4;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR1
	.dwcfa	0x80, 7, 2
	.dwcfa	0x1d, -4
        ADDB      SP,#2
	.dwcfa	0x1d, -6
;* AR4   assigned to _pM
DW$87	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$87, DW_AT_type(*DW$T$58)
	.dwattr DW$87, DW_AT_location[DW_OP_reg12]
;* AR7   assigned to C$1
DW$88	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$88, DW_AT_type(*DW$T$12)
	.dwattr DW$88, DW_AT_location[DW_OP_reg18]
;* XT    assigned to C$2
DW$89	.dwtag  DW_TAG_variable, DW_AT_name("C$2"), DW_AT_symbol_name("C$2")
	.dwattr DW$89, DW_AT_type(*DW$T$12)
	.dwattr DW$89, DW_AT_location[DW_OP_reg21]
;* AR6   assigned to C$3
DW$90	.dwtag  DW_TAG_variable, DW_AT_name("C$3"), DW_AT_symbol_name("C$3")
	.dwattr DW$90, DW_AT_type(*DW$T$12)
	.dwattr DW$90, DW_AT_location[DW_OP_reg16]
;* XT    assigned to C$4
DW$91	.dwtag  DW_TAG_variable, DW_AT_name("C$4"), DW_AT_symbol_name("C$4")
	.dwattr DW$91, DW_AT_type(*DW$T$12)
	.dwattr DW$91, DW_AT_location[DW_OP_reg21]
;* AR1   assigned to _pM
DW$92	.dwtag  DW_TAG_variable, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$92, DW_AT_type(*DW$T$81)
	.dwattr DW$92, DW_AT_location[DW_OP_reg6]
;* AR6   assigned to v$1
DW$93	.dwtag  DW_TAG_variable, DW_AT_name("v$1"), DW_AT_symbol_name("v$1")
	.dwattr DW$93, DW_AT_type(*DW$T$12)
	.dwattr DW$93, DW_AT_location[DW_OP_reg16]
;* AR7   assigned to v$2
DW$94	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$94, DW_AT_type(*DW$T$12)
	.dwattr DW$94, DW_AT_location[DW_OP_reg18]
;* AR7   assigned to v$2
DW$95	.dwtag  DW_TAG_variable, DW_AT_name("v$2"), DW_AT_symbol_name("v$2")
	.dwattr DW$95, DW_AT_type(*DW$T$12)
	.dwattr DW$95, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to v$3
DW$96	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$96, DW_AT_type(*DW$T$12)
	.dwattr DW$96, DW_AT_location[DW_OP_reg16]
;* AR7   assigned to v$3
DW$97	.dwtag  DW_TAG_variable, DW_AT_name("v$3"), DW_AT_symbol_name("v$3")
	.dwattr DW$97, DW_AT_type(*DW$T$12)
	.dwattr DW$97, DW_AT_location[DW_OP_reg18]
;* AL    assigned to v$4
DW$98	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$98, DW_AT_type(*DW$T$12)
	.dwattr DW$98, DW_AT_location[DW_OP_reg0]
;* AL    assigned to v$4
DW$99	.dwtag  DW_TAG_variable, DW_AT_name("v$4"), DW_AT_symbol_name("v$4")
	.dwattr DW$99, DW_AT_type(*DW$T$12)
	.dwattr DW$99, DW_AT_location[DW_OP_reg0]
;* AR6   assigned to v$5
DW$100	.dwtag  DW_TAG_variable, DW_AT_name("v$5"), DW_AT_symbol_name("v$5")
	.dwattr DW$100, DW_AT_type(*DW$T$12)
	.dwattr DW$100, DW_AT_location[DW_OP_reg16]
;* AR7   assigned to v$5
DW$101	.dwtag  DW_TAG_variable, DW_AT_name("v$5"), DW_AT_symbol_name("v$5")
	.dwattr DW$101, DW_AT_type(*DW$T$12)
	.dwattr DW$101, DW_AT_location[DW_OP_reg18]
;* AR6   assigned to v$5
DW$102	.dwtag  DW_TAG_variable, DW_AT_name("v$5"), DW_AT_symbol_name("v$5")
	.dwattr DW$102, DW_AT_type(*DW$T$12)
	.dwattr DW$102, DW_AT_location[DW_OP_reg16]
        MOVL      XAR1,XAR4             ; |267| 
	.dwpsn	"Motor.c",268,2
        MOVB      XAR0,#8               ; |268| 
        MOVL      XAR6,*+XAR1[AR0]      ; |268| 
        MOVL      ACC,XAR6
        CMPL      ACC,*+XAR1[6]         ; |268| 
        BF        L4,LT                 ; |268| 
        ; branchcc occurs ; |268| 
;*** 292	-----------------------    (*pM).iqVelo = v$1 = v$5;
;*** 293	-----------------------    (*pM).iqAmpyS = v$2 = __IQmpy(215975L, (*pM).iqTargetA, 17);
;*** 294	-----------------------    C$4 = v$1>>11;
;*** 294	-----------------------    (*pM).iqNextV = _IQ6sqrt(__IQmpy(C$4, C$4, 6)-(v$2>>11))<<11;
;*** 295	-----------------------    (*pM).iq24TargetA_1 = v$3 = __IQmpy((*pM).iqTargetA, 1310L, 17)<<7;
;*** 296	-----------------------    (*pM).iq24TargetA_1 = v$3 = _IQ24div(16777216L, v$3);
;*** 297	-----------------------    (*pM).iq24TargetA_1 = v$3 = __IQmpy(v$3, 167772L, 24);
;*** 299	-----------------------    v$5 = (*pM).iqNextV;
;*** 299	-----------------------    (*pM).iq24TimeValue = v$4 = __IQmpy((*pM).iqVelo-v$5<<7, v$3, 24);
;*** 301	-----------------------    (*pM).u32_Period = __IQmpy(__IQxmpy(80000L, v$4, 24), (*pM).iqHandle, 17)>>17;
;*** 303	-----------------------    (*pM).u32_Period_Cnt = 0uL;
;*** 305	-----------------------    C$3 = (*pM).iqTargetV;
;*** 305	-----------------------    if ( C$3 < v$5 ) goto g6;
	.dwpsn	"Motor.c",292,3
        MOVL      *+XAR1[4],XAR6        ; |292| 
	.dwpsn	"Motor.c",293,3
        MOVL      XAR4,#215975          ; |293| 
        MOVL      XT,XAR4               ; |293| 
        MOVB      XAR0,#10              ; |293| 
        IMPYL     P,XT,*+XAR1[0]        ; |293| 
        QMPYL     ACC,XT,*+XAR1[0]      ; |293| 
        LSL64     ACC:P,#15             ; |293| 
        MOVL      *+XAR1[AR0],ACC       ; |293| 
        MOVL      XAR7,ACC              ; |293| 
	.dwpsn	"Motor.c",294,3
        SETC      SXM
        MOVL      ACC,XAR6              ; |294| 
        SFR       ACC,11                ; |294| 
        MOVL      XT,ACC                ; |294| 
        IMPYL     P,XT,XT               ; |294| 
        QMPYL     ACC,XT,XT             ; |294| 
        ASR64     ACC:P,#6              ; |294| 
        MOVL      ACC,XAR7              ; |294| 
        SFR       ACC,11                ; |294| 
        SUBL      P,ACC
        MOVL      ACC,P                 ; |294| 
        LCR       #__IQ6sqrt            ; |294| 
        ; call occurs [#__IQ6sqrt] ; |294| 
        MOVB      XAR0,#8               ; |294| 
        LSL       ACC,11                ; |294| 
        MOVL      *+XAR1[AR0],ACC       ; |294| 
	.dwpsn	"Motor.c",295,3
        MOVL      XAR4,#1310            ; |295| 
        MOVL      XT,*+XAR1[0]          ; |295| 
        IMPYL     P,XT,XAR4             ; |295| 
        QMPYL     ACC,XT,XAR4           ; |295| 
        LSL64     ACC:P,#15             ; |295| 
        LSL       ACC,7                 ; |295| 
        MOVL      XAR6,ACC              ; |295| 
        MOVB      XAR0,#16              ; |295| 
        MOVL      *+XAR1[AR0],ACC       ; |295| 
	.dwpsn	"Motor.c",296,3
        MOVL      *-SP[2],XAR6          ; |296| 
        MOV       ACC,#512 << 15
        LCR       #__IQ24div            ; |296| 
        ; call occurs [#__IQ24div] ; |296| 
        MOVL      XAR6,ACC              ; |296| 
        MOVB      XAR0,#16              ; |296| 
        MOVL      *+XAR1[AR0],ACC       ; |296| 
	.dwpsn	"Motor.c",297,3
        MOVL      XAR4,#167772          ; |297| 
        MOVL      XT,XAR6               ; |297| 
        IMPYL     P,XT,XAR4             ; |297| 
        MOVL      XT,XAR6               ; |297| 
        QMPYL     ACC,XT,XAR4           ; |297| 
        LSL64     ACC:P,#8              ; |297| 
        MOVL      XAR6,ACC              ; |297| 
        MOVL      *+XAR1[AR0],ACC       ; |297| 
	.dwpsn	"Motor.c",299,3
        MOVB      XAR0,#8               ; |299| 
        MOVL      XAR7,*+XAR1[AR0]      ; |299| 
        MOVL      ACC,*+XAR1[4]         ; |299| 
        SUBL      ACC,XAR7
        LSL       ACC,7                 ; |299| 
        MOVL      XT,ACC                ; |299| 
        IMPYL     P,XT,XAR6             ; |299| 
        MOVL      XT,ACC                ; |299| 
        QMPYL     ACC,XT,XAR6           ; |299| 
        MOVB      XAR0,#18              ; |299| 
        LSL64     ACC:P,#8              ; |299| 
        MOVL      *+XAR1[AR0],ACC       ; |299| 
	.dwpsn	"Motor.c",301,3
        MOVL      XAR4,#80000           ; |301| 
        MOVL      XT,XAR4               ; |301| 
        IMPYL     P,XT,ACC              ; |301| 
        QMPYL     ACC,XT,ACC            ; |301| 
        ASR64     ACC:P,8               ; |301| 
        MOVB      XAR0,#12              ; |301| 
        MOVL      XT,P                  ; |301| 
        IMPYL     P,XT,*+XAR1[AR0]      ; |301| 
        QMPYL     ACC,XT,*+XAR1[AR0]    ; |301| 
        MOV       T,#17                 ; |301| 
        LSL64     ACC:P,#15             ; |301| 
        MOVB      XAR0,#22              ; |301| 
        ASRL      ACC,T                 ; |301| 
        MOVL      *+XAR1[AR0],ACC       ; |301| 
	.dwpsn	"Motor.c",303,3
        MOVB      XAR0,#20              ; |303| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |303| 
	.dwpsn	"Motor.c",305,3
        MOVL      XAR6,*+XAR1[6]        ; |305| 
        MOVL      ACC,XAR7
        CMPL      ACC,XAR6              ; |305| 
        BF        L5,GT                 ; |305| 
        ; branchcc occurs ; |305| 
;*** 306	-----------------------    (*pM).iqNextV = C$3;
;*** 306	-----------------------    goto g6;
	.dwpsn	"Motor.c",306,4
        MOVB      XAR0,#8               ; |306| 
        MOVL      *+XAR1[AR0],XAR6      ; |306| 
        BF        L5,UNC                ; |306| 
        ; branch occurs ; |306| 
L4:    
;***	-----------------------g4:
;*** 270	-----------------------    (*pM).iqVelo = v$5;
;*** 271	-----------------------    (*pM).iqAmpyS = v$2 = __IQmpy(215975L, (*pM).iqTargetA, 17);
;*** 272	-----------------------    C$2 = v$5>>11;
;*** 272	-----------------------    (*pM).iqNextV = _IQ6sqrt((v$2>>11)+__IQmpy(C$2, C$2, 6))<<11;
;*** 274	-----------------------    (*pM).iq24TargetA_1 = v$3 = __IQmpy((*pM).iqTargetA, 1310L, 17)<<7;
;*** 275	-----------------------    (*pM).iq24TargetA_1 = v$3 = _IQ24div(16777216L, v$3);
;*** 276	-----------------------    (*pM).iq24TargetA_1 = v$3 = __IQmpy(v$3, 167772L, 24);
;*** 279	-----------------------    v$5 = (*pM).iqNextV;
;*** 279	-----------------------    (*pM).iq24TimeValue = v$4 = __IQmpy(v$5-(*pM).iqVelo<<7, v$3, 24);
;*** 281	-----------------------    (*pM).u32_Period = __IQmpy(__IQxmpy(80000L, v$4, 24), (*pM).iqHandle, 17)>>17;
;*** 283	-----------------------    (*pM).u32_Period_Cnt = 0uL;
;*** 286	-----------------------    C$1 = (*pM).iqTargetV;
;*** 286	-----------------------    if ( C$1 > v$5 ) goto g6;
	.dwpsn	"Motor.c",270,3
        MOVL      *+XAR1[4],XAR6        ; |270| 
	.dwpsn	"Motor.c",271,3
        MOVL      XAR4,#215975          ; |271| 
        MOVL      XT,XAR4               ; |271| 
        MOVB      XAR0,#10              ; |271| 
        IMPYL     P,XT,*+XAR1[0]        ; |271| 
        QMPYL     ACC,XT,*+XAR1[0]      ; |271| 
        LSL64     ACC:P,#15             ; |271| 
        MOVL      *+XAR1[AR0],ACC       ; |271| 
        MOVL      XAR7,ACC              ; |271| 
	.dwpsn	"Motor.c",272,3
        SETC      SXM
        MOVL      ACC,XAR6
        SFR       ACC,11                ; |272| 
        MOVL      XT,ACC                ; |272| 
        IMPYL     P,XT,XT               ; |272| 
        QMPYL     ACC,XT,XT             ; |272| 
        ASR64     ACC:P,#6              ; |272| 
        MOVL      ACC,XAR7              ; |272| 
        SFR       ACC,11                ; |272| 
        ADDL      ACC,P
        LCR       #__IQ6sqrt            ; |272| 
        ; call occurs [#__IQ6sqrt] ; |272| 
        MOVB      XAR0,#8               ; |272| 
        LSL       ACC,11                ; |272| 
        MOVL      *+XAR1[AR0],ACC       ; |272| 
	.dwpsn	"Motor.c",274,3
        MOVL      XAR4,#1310            ; |274| 
        MOVL      XT,*+XAR1[0]          ; |274| 
        IMPYL     P,XT,XAR4             ; |274| 
        QMPYL     ACC,XT,XAR4           ; |274| 
        LSL64     ACC:P,#15             ; |274| 
        LSL       ACC,7                 ; |274| 
        MOVL      XAR7,ACC              ; |274| 
        MOVB      XAR0,#16              ; |274| 
        MOVL      *+XAR1[AR0],ACC       ; |274| 
	.dwpsn	"Motor.c",275,3
        MOVL      *-SP[2],XAR7          ; |275| 
        MOV       ACC,#512 << 15
        LCR       #__IQ24div            ; |275| 
        ; call occurs [#__IQ24div] ; |275| 
        MOVL      XAR7,ACC              ; |275| 
        MOVB      XAR0,#16              ; |275| 
        MOVL      *+XAR1[AR0],ACC       ; |275| 
	.dwpsn	"Motor.c",276,3
        MOVL      XAR4,#167772          ; |276| 
        MOVL      XT,XAR7               ; |276| 
        IMPYL     P,XT,XAR4             ; |276| 
        MOVL      XT,XAR7               ; |276| 
        QMPYL     ACC,XT,XAR4           ; |276| 
        LSL64     ACC:P,#8              ; |276| 
        MOVL      XAR7,ACC              ; |276| 
        MOVL      *+XAR1[AR0],ACC       ; |276| 
	.dwpsn	"Motor.c",279,3
        MOVB      XAR0,#8               ; |279| 
        MOVL      XAR6,*+XAR1[AR0]      ; |279| 
        MOVL      ACC,XAR6
        SUBL      ACC,*+XAR1[4]         ; |279| 
        LSL       ACC,7                 ; |279| 
        MOVL      XT,ACC                ; |279| 
        IMPYL     P,XT,XAR7             ; |279| 
        MOVL      XT,ACC                ; |279| 
        QMPYL     ACC,XT,XAR7           ; |279| 
        MOVB      XAR0,#18              ; |279| 
        LSL64     ACC:P,#8              ; |279| 
        MOVL      *+XAR1[AR0],ACC       ; |279| 
	.dwpsn	"Motor.c",281,3
        MOVL      XAR4,#80000           ; |281| 
        MOVL      XT,XAR4               ; |281| 
        IMPYL     P,XT,ACC              ; |281| 
        QMPYL     ACC,XT,ACC            ; |281| 
        ASR64     ACC:P,8               ; |281| 
        MOVB      XAR0,#12              ; |281| 
        MOVL      XT,P                  ; |281| 
        IMPYL     P,XT,*+XAR1[AR0]      ; |281| 
        QMPYL     ACC,XT,*+XAR1[AR0]    ; |281| 
        MOV       T,#17                 ; |281| 
        LSL64     ACC:P,#15             ; |281| 
        MOVB      XAR0,#22              ; |281| 
        ASRL      ACC,T                 ; |281| 
        MOVL      *+XAR1[AR0],ACC       ; |281| 
	.dwpsn	"Motor.c",283,3
        MOVB      XAR0,#20              ; |283| 
        MOVB      ACC,#0
        MOVL      *+XAR1[AR0],ACC       ; |283| 
	.dwpsn	"Motor.c",286,3
        MOVL      XAR7,*+XAR1[6]        ; |286| 
        MOVL      ACC,XAR6
        CMPL      ACC,XAR7              ; |286| 
        BF        L5,LT                 ; |286| 
        ; branchcc occurs ; |286| 
;*** 287	-----------------------    (*pM).iqNextV = C$1;
;***	-----------------------g6:
;***  	-----------------------    return;
	.dwpsn	"Motor.c",287,4
        MOVB      XAR0,#8               ; |287| 
        MOVL      *+XAR1[AR0],XAR7      ; |287| 
L5:    
	.dwpsn	"Motor.c",308,1
        SUBB      SP,#2
	.dwcfa	0x1d, -4
        MOVL      XAR1,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 7
        LRETR
        ; return occurs
	.dwattr DW$86, DW_AT_end_file("Motor.c")
	.dwattr DW$86, DW_AT_end_line(0x134)
	.dwattr DW$86, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$86

	.sect	".text"
	.global	_L_Motor_ON

DW$103	.dwtag  DW_TAG_subprogram, DW_AT_name("L_Motor_ON"), DW_AT_symbol_name("_L_Motor_ON")
	.dwattr DW$103, DW_AT_low_pc(_L_Motor_ON)
	.dwattr DW$103, DW_AT_high_pc(0x00)
	.dwattr DW$103, DW_AT_begin_file("Motor.c")
	.dwattr DW$103, DW_AT_begin_line(0x143)
	.dwattr DW$103, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",324,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _L_Motor_ON                   FR SIZE:   0           *
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
_L_Motor_ON:
;*** 325	-----------------------    (*pM).iq17Turnmark_Check_Dist += 107987L;
;*** 326	-----------------------    (*pM).iq15Cross_Check_Dist += 26996L;
;*** 327	-----------------------    (*pM).iq15GoneDist += 26996L;
;*** 328	-----------------------    (*pM).iq17distance_sum += 107987L;
;*** 330	-----------------------    LMotor.iq17err_distance = LMotor.iq17user_distance-LMotor.iq17distance_sum;
;*** 331	-----------------------    RMotor.iq17err_distance = RMotor.iq17user_distance-RMotor.iq17distance_sum;
;*** 333	-----------------------    decel_calculation();
;*** 333	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
;* AR4   assigned to _pM
DW$104	.dwtag  DW_TAG_formal_parameter, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$104, DW_AT_type(*DW$T$58)
	.dwattr DW$104, DW_AT_location[DW_OP_reg12]
;* AR4   assigned to _pM
DW$105	.dwtag  DW_TAG_variable, DW_AT_name("pM"), DW_AT_symbol_name("_pM")
	.dwattr DW$105, DW_AT_type(*DW$T$81)
	.dwattr DW$105, DW_AT_location[DW_OP_reg12]
	.dwpsn	"Motor.c",325,5
        MOVB      ACC,#26
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |325| 
        MOVL      XAR5,#107987          ; |325| 
        MOVL      ACC,XAR5              ; |325| 
        ADDL      *+XAR6[0],ACC         ; |325| 
	.dwpsn	"Motor.c",326,5
        MOVB      ACC,#30
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |326| 
        MOVL      XAR5,#26996           ; |326| 
        MOVL      ACC,XAR5              ; |326| 
        ADDL      *+XAR6[0],ACC         ; |326| 
	.dwpsn	"Motor.c",327,5
        MOVB      ACC,#28
        ADDL      ACC,XAR4
        MOVL      XAR6,ACC              ; |327| 
        MOVL      ACC,XAR5              ; |327| 
        ADDL      *+XAR6[0],ACC         ; |327| 
	.dwpsn	"Motor.c",328,5
        MOVB      ACC,#34
        ADDL      ACC,XAR4
        MOVL      XAR5,ACC              ; |328| 
        MOVL      XAR4,#107987          ; |328| 
        MOVL      ACC,XAR4              ; |328| 
        ADDL      *+XAR5[0],ACC         ; |328| 
	.dwpsn	"Motor.c",330,5
        MOVW      DP,#_LMotor+40
        MOVL      ACC,@_LMotor+40       ; |330| 
        SUBL      ACC,@_LMotor+34       ; |330| 
        MOVL      @_LMotor+38,ACC       ; |330| 
	.dwpsn	"Motor.c",331,5
        MOVW      DP,#_RMotor+40
        MOVL      ACC,@_RMotor+40       ; |331| 
        SUBL      ACC,@_RMotor+34       ; |331| 
        MOVL      @_RMotor+38,ACC       ; |331| 
	.dwpsn	"Motor.c",333,5
        LCR       #_decel_calculation   ; |333| 
        ; call occurs [#_decel_calculation] ; |333| 
	.dwpsn	"Motor.c",334,1
        LRETR
        ; return occurs
	.dwattr DW$103, DW_AT_end_file("Motor.c")
	.dwattr DW$103, DW_AT_end_line(0x14e)
	.dwattr DW$103, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$103

	.sect	".text"
	.global	_F_VELOCITY

DW$106	.dwtag  DW_TAG_subprogram, DW_AT_name("F_VELOCITY"), DW_AT_symbol_name("_F_VELOCITY")
	.dwattr DW$106, DW_AT_low_pc(_F_VELOCITY)
	.dwattr DW$106, DW_AT_high_pc(0x00)
	.dwattr DW$106, DW_AT_begin_file("Motor.c")
	.dwattr DW$106, DW_AT_begin_line(0xce)
	.dwattr DW$106, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",207,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_VELOCITY                   FR SIZE:   4           *
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
_F_VELOCITY:
;*** 208	-----------------------    a = 0;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 210	-----------------------    goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",208,2
        MOVW      DP,#_a
        MOV       @_a,#0                ; |208| 
	.dwpsn	"Motor.c",210,2
        BF        L8,UNC                ; |210| 
        ; branch occurs ; |210| 
L6:    
DW$L$_F_VELOCITY$2$B:
;***	-----------------------g2:
;*** 212	-----------------------    VFDPrintf("VEL=%lu", g_u32_VEL_targetval);
;*** 214	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"Motor.c",212,3
        MOVW      DP,#_g_u32_VEL_targetval
        MOVL      XAR4,#FSL1            ; |212| 
        MOVL      ACC,@_g_u32_VEL_targetval ; |212| 
        MOVL      *-SP[2],XAR4          ; |212| 
        MOVL      *-SP[4],ACC           ; |212| 
        LCR       #_VFDPrintf           ; |212| 
        ; call occurs [#_VFDPrintf] ; |212| 
	.dwpsn	"Motor.c",214,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |214| 
        BF        L7,NTC                ; |214| 
        ; branchcc occurs ; |214| 
DW$L$_F_VELOCITY$2$E:
DW$L$_F_VELOCITY$3$B:
;*** 221	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"Motor.c",221,8
        TBIT      @_GpioDataRegs+1,#8   ; |221| 
        BF        L8,TC                 ; |221| 
        ; branchcc occurs ; |221| 
DW$L$_F_VELOCITY$3$E:
DW$L$_F_VELOCITY$4$B:
;*** 224	-----------------------    DSP28x_usDelay(2499998uL);
;*** 225	-----------------------    g_u32_VEL_targetval -= 50uL;
;*** 225	-----------------------    goto g6;
	.dwpsn	"Motor.c",224,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |224| 
        ; call occurs [#_DSP28x_usDelay] ; |224| 
	.dwpsn	"Motor.c",225,4
        MOVW      DP,#_g_u32_VEL_targetval
        MOVB      ACC,#50
        SUBL      @_g_u32_VEL_targetval,ACC ; |225| 
        BF        L8,UNC                ; |225| 
        ; branch occurs ; |225| 
DW$L$_F_VELOCITY$4$E:
L7:    
DW$L$_F_VELOCITY$5$B:
;***	-----------------------g5:
;*** 216	-----------------------    DSP28x_usDelay(2499998uL);
;*** 217	-----------------------    g_u32_VEL_targetval += 50uL;
	.dwpsn	"Motor.c",216,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |216| 
        ; call occurs [#_DSP28x_usDelay] ; |216| 
	.dwpsn	"Motor.c",217,4
        MOVW      DP,#_g_u32_VEL_targetval
        MOVB      ACC,#50
        ADDL      @_g_u32_VEL_targetval,ACC ; |217| 
DW$L$_F_VELOCITY$5$E:
L8:    
DW$L$_F_VELOCITY$6$B:
;***	-----------------------g6:
;*** 229	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",229,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |229| 
        BF        L6,TC                 ; |229| 
        ; branchcc occurs ; |229| 
DW$L$_F_VELOCITY$6$E:
;*** 230	-----------------------    write_vel_rom();
;*** 231	-----------------------    a = 1;
;*** 232	-----------------------    b = 0;
;*** 232	-----------------------    return;
	.dwpsn	"Motor.c",230,2
        LCR       #_write_vel_rom       ; |230| 
        ; call occurs [#_write_vel_rom] ; |230| 
	.dwpsn	"Motor.c",231,2
        MOVW      DP,#_a
        MOV       @_a,#1                ; |231| 
	.dwpsn	"Motor.c",232,2
        MOVW      DP,#_b
        MOV       @_b,#0                ; |232| 
	.dwpsn	"Motor.c",233,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$107	.dwtag  DW_TAG_loop
	.dwattr DW$107, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L8:1:1729866708")
	.dwattr DW$107, DW_AT_begin_file("Motor.c")
	.dwattr DW$107, DW_AT_begin_line(0xd2)
	.dwattr DW$107, DW_AT_end_line(0xe5)
DW$108	.dwtag  DW_TAG_loop_range
	.dwattr DW$108, DW_AT_low_pc(DW$L$_F_VELOCITY$6$B)
	.dwattr DW$108, DW_AT_high_pc(DW$L$_F_VELOCITY$6$E)
DW$109	.dwtag  DW_TAG_loop_range
	.dwattr DW$109, DW_AT_low_pc(DW$L$_F_VELOCITY$2$B)
	.dwattr DW$109, DW_AT_high_pc(DW$L$_F_VELOCITY$2$E)
DW$110	.dwtag  DW_TAG_loop_range
	.dwattr DW$110, DW_AT_low_pc(DW$L$_F_VELOCITY$5$B)
	.dwattr DW$110, DW_AT_high_pc(DW$L$_F_VELOCITY$5$E)
DW$111	.dwtag  DW_TAG_loop_range
	.dwattr DW$111, DW_AT_low_pc(DW$L$_F_VELOCITY$4$B)
	.dwattr DW$111, DW_AT_high_pc(DW$L$_F_VELOCITY$4$E)
DW$112	.dwtag  DW_TAG_loop_range
	.dwattr DW$112, DW_AT_low_pc(DW$L$_F_VELOCITY$3$B)
	.dwattr DW$112, DW_AT_high_pc(DW$L$_F_VELOCITY$3$E)
	.dwendtag DW$107

	.dwattr DW$106, DW_AT_end_file("Motor.c")
	.dwattr DW$106, DW_AT_end_line(0xe9)
	.dwattr DW$106, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$106

	.sect	".text"
	.global	_F_TURNDIST

DW$113	.dwtag  DW_TAG_subprogram, DW_AT_name("F_TURNDIST"), DW_AT_symbol_name("_F_TURNDIST")
	.dwattr DW$113, DW_AT_low_pc(_F_TURNDIST)
	.dwattr DW$113, DW_AT_high_pc(0x00)
	.dwattr DW$113, DW_AT_begin_file("Motor.c")
	.dwattr DW$113, DW_AT_begin_line(0xb3)
	.dwattr DW$113, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",180,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_TURNDIST                   FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_TURNDIST:
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 181	-----------------------    goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",181,2
        BF        L11,UNC               ; |181| 
        ; branch occurs ; |181| 
L9:    
DW$L$_F_TURNDIST$2$B:
;***	-----------------------g2:
;*** 183	-----------------------    VFDPrintf("DIST=%u", g_u16turn_dist);
;*** 185	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"Motor.c",183,3
        MOVW      DP,#_g_u16turn_dist
        MOVL      XAR4,#FSL2            ; |183| 
        MOV       AL,@_g_u16turn_dist   ; |183| 
        MOVL      *-SP[2],XAR4          ; |183| 
        MOV       *-SP[3],AL            ; |183| 
        LCR       #_VFDPrintf           ; |183| 
        ; call occurs [#_VFDPrintf] ; |183| 
	.dwpsn	"Motor.c",185,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |185| 
        BF        L10,NTC               ; |185| 
        ; branchcc occurs ; |185| 
DW$L$_F_TURNDIST$2$E:
DW$L$_F_TURNDIST$3$B:
;*** 192	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"Motor.c",192,8
        TBIT      @_GpioDataRegs+1,#8   ; |192| 
        BF        L11,TC                ; |192| 
        ; branchcc occurs ; |192| 
DW$L$_F_TURNDIST$3$E:
DW$L$_F_TURNDIST$4$B:
;*** 195	-----------------------    DSP28x_usDelay(2499998uL);
;*** 196	-----------------------    --g_u16turn_dist;
;*** 196	-----------------------    goto g6;
	.dwpsn	"Motor.c",195,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |195| 
        ; call occurs [#_DSP28x_usDelay] ; |195| 
	.dwpsn	"Motor.c",196,4
        MOVW      DP,#_g_u16turn_dist
        DEC       @_g_u16turn_dist      ; |196| 
        BF        L11,UNC               ; |196| 
        ; branch occurs ; |196| 
DW$L$_F_TURNDIST$4$E:
L10:    
DW$L$_F_TURNDIST$5$B:
;***	-----------------------g5:
;*** 187	-----------------------    DSP28x_usDelay(2499998uL);
;*** 188	-----------------------    ++g_u16turn_dist;
	.dwpsn	"Motor.c",187,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |187| 
        ; call occurs [#_DSP28x_usDelay] ; |187| 
	.dwpsn	"Motor.c",188,4
        MOVW      DP,#_g_u16turn_dist
        INC       @_g_u16turn_dist      ; |188| 
DW$L$_F_TURNDIST$5$E:
L11:    
DW$L$_F_TURNDIST$6$B:
;***	-----------------------g6:
;*** 200	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",200,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |200| 
        BF        L9,TC                 ; |200| 
        ; branchcc occurs ; |200| 
DW$L$_F_TURNDIST$6$E:
;*** 201	-----------------------    a = 3;
;*** 202	-----------------------    b = 2;
;*** 202	-----------------------    return;
	.dwpsn	"Motor.c",201,2
        MOVW      DP,#_a
        MOV       @_a,#3                ; |201| 
	.dwpsn	"Motor.c",202,2
        MOVW      DP,#_b
        MOV       @_b,#2                ; |202| 
	.dwpsn	"Motor.c",203,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$114	.dwtag  DW_TAG_loop
	.dwattr DW$114, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L11:1:1729866708")
	.dwattr DW$114, DW_AT_begin_file("Motor.c")
	.dwattr DW$114, DW_AT_begin_line(0xb5)
	.dwattr DW$114, DW_AT_end_line(0xc8)
DW$115	.dwtag  DW_TAG_loop_range
	.dwattr DW$115, DW_AT_low_pc(DW$L$_F_TURNDIST$6$B)
	.dwattr DW$115, DW_AT_high_pc(DW$L$_F_TURNDIST$6$E)
DW$116	.dwtag  DW_TAG_loop_range
	.dwattr DW$116, DW_AT_low_pc(DW$L$_F_TURNDIST$2$B)
	.dwattr DW$116, DW_AT_high_pc(DW$L$_F_TURNDIST$2$E)
DW$117	.dwtag  DW_TAG_loop_range
	.dwattr DW$117, DW_AT_low_pc(DW$L$_F_TURNDIST$5$B)
	.dwattr DW$117, DW_AT_high_pc(DW$L$_F_TURNDIST$5$E)
DW$118	.dwtag  DW_TAG_loop_range
	.dwattr DW$118, DW_AT_low_pc(DW$L$_F_TURNDIST$4$B)
	.dwattr DW$118, DW_AT_high_pc(DW$L$_F_TURNDIST$4$E)
DW$119	.dwtag  DW_TAG_loop_range
	.dwattr DW$119, DW_AT_low_pc(DW$L$_F_TURNDIST$3$B)
	.dwattr DW$119, DW_AT_high_pc(DW$L$_F_TURNDIST$3$E)
	.dwendtag DW$114

	.dwattr DW$113, DW_AT_end_file("Motor.c")
	.dwattr DW$113, DW_AT_end_line(0xcb)
	.dwattr DW$113, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$113

	.sect	".text"
	.global	_F_HANDLE_DEC

DW$120	.dwtag  DW_TAG_subprogram, DW_AT_name("F_HANDLE_DEC"), DW_AT_symbol_name("_F_HANDLE_DEC")
	.dwattr DW$120, DW_AT_low_pc(_F_HANDLE_DEC)
	.dwattr DW$120, DW_AT_high_pc(0x00)
	.dwattr DW$120, DW_AT_begin_file("Motor.c")
	.dwattr DW$120, DW_AT_begin_line(0x93)
	.dwattr DW$120, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",148,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_HANDLE_DEC                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_HANDLE_DEC:
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 150	-----------------------    goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",150,2
        BF        L14,UNC               ; |150| 
        ; branch occurs ; |150| 
L12:    
DW$L$_F_HANDLE_DEC$2$B:
;***	-----------------------g2:
;*** 155	-----------------------    VFDPrintf("HDD=%4u", g_i16_handle_dec);
;*** 157	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"Motor.c",155,3
        MOVW      DP,#_g_i16_handle_dec
        MOVL      XAR4,#FSL3            ; |155| 
        MOV       AL,@_g_i16_handle_dec ; |155| 
        MOVL      *-SP[2],XAR4          ; |155| 
        MOV       *-SP[3],AL            ; |155| 
        LCR       #_VFDPrintf           ; |155| 
        ; call occurs [#_VFDPrintf] ; |155| 
	.dwpsn	"Motor.c",157,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |157| 
        BF        L13,NTC               ; |157| 
        ; branchcc occurs ; |157| 
DW$L$_F_HANDLE_DEC$2$E:
DW$L$_F_HANDLE_DEC$3$B:
;*** 163	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"Motor.c",163,8
        TBIT      @_GpioDataRegs+1,#8   ; |163| 
        BF        L14,TC                ; |163| 
        ; branchcc occurs ; |163| 
DW$L$_F_HANDLE_DEC$3$E:
DW$L$_F_HANDLE_DEC$4$B:
;*** 166	-----------------------    DSP28x_usDelay(2499998uL);
;*** 167	-----------------------    D_HANDLE -= 10;
;*** 168	-----------------------    g_i16_handle_dec -= 10u;
;*** 168	-----------------------    goto g6;
	.dwpsn	"Motor.c",166,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |166| 
        ; call occurs [#_DSP28x_usDelay] ; |166| 
	.dwpsn	"Motor.c",167,4
        MOVW      DP,#_D_HANDLE
        MOVB      AL,#10                ; |167| 
        SUB       @_D_HANDLE,AL         ; |167| 
	.dwpsn	"Motor.c",168,4
        MOVW      DP,#_g_i16_handle_dec
        SUB       @_g_i16_handle_dec,AL ; |168| 
        BF        L14,UNC               ; |168| 
        ; branch occurs ; |168| 
DW$L$_F_HANDLE_DEC$4$E:
L13:    
DW$L$_F_HANDLE_DEC$5$B:
;***	-----------------------g5:
;*** 159	-----------------------    DSP28x_usDelay(2499998uL);
;*** 160	-----------------------    g_i16_handle_dec += 10u;
	.dwpsn	"Motor.c",159,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |159| 
        ; call occurs [#_DSP28x_usDelay] ; |159| 
	.dwpsn	"Motor.c",160,4
        MOVW      DP,#_g_i16_handle_dec
        ADD       @_g_i16_handle_dec,#10 ; |160| 
DW$L$_F_HANDLE_DEC$5$E:
L14:    
DW$L$_F_HANDLE_DEC$6$B:
;***	-----------------------g6:
;*** 171	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",171,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |171| 
        BF        L12,TC                ; |171| 
        ; branchcc occurs ; |171| 
DW$L$_F_HANDLE_DEC$6$E:
;*** 172	-----------------------    write_dec_handle_rom();
;*** 173	-----------------------    a = 4;
;*** 174	-----------------------    b = 0;
;*** 175	-----------------------    c = 0.0F;
;*** 176	-----------------------    DSP28x_usDelay(1999998uL);
;*** 176	-----------------------    return;
	.dwpsn	"Motor.c",172,2
        LCR       #_write_dec_handle_rom ; |172| 
        ; call occurs [#_write_dec_handle_rom] ; |172| 
	.dwpsn	"Motor.c",173,2
        MOVW      DP,#_a
        MOV       @_a,#4                ; |173| 
	.dwpsn	"Motor.c",174,2
        MOVW      DP,#_b
        MOV       @_b,#0                ; |174| 
	.dwpsn	"Motor.c",175,2
        MOVW      DP,#_c
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_c,ACC               ; |175| 
	.dwpsn	"Motor.c",176,2
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |176| 
        ; call occurs [#_DSP28x_usDelay] ; |176| 
	.dwpsn	"Motor.c",177,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$121	.dwtag  DW_TAG_loop
	.dwattr DW$121, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L14:1:1729866708")
	.dwattr DW$121, DW_AT_begin_file("Motor.c")
	.dwattr DW$121, DW_AT_begin_line(0x96)
	.dwattr DW$121, DW_AT_end_line(0xab)
DW$122	.dwtag  DW_TAG_loop_range
	.dwattr DW$122, DW_AT_low_pc(DW$L$_F_HANDLE_DEC$6$B)
	.dwattr DW$122, DW_AT_high_pc(DW$L$_F_HANDLE_DEC$6$E)
DW$123	.dwtag  DW_TAG_loop_range
	.dwattr DW$123, DW_AT_low_pc(DW$L$_F_HANDLE_DEC$2$B)
	.dwattr DW$123, DW_AT_high_pc(DW$L$_F_HANDLE_DEC$2$E)
DW$124	.dwtag  DW_TAG_loop_range
	.dwattr DW$124, DW_AT_low_pc(DW$L$_F_HANDLE_DEC$5$B)
	.dwattr DW$124, DW_AT_high_pc(DW$L$_F_HANDLE_DEC$5$E)
DW$125	.dwtag  DW_TAG_loop_range
	.dwattr DW$125, DW_AT_low_pc(DW$L$_F_HANDLE_DEC$4$B)
	.dwattr DW$125, DW_AT_high_pc(DW$L$_F_HANDLE_DEC$4$E)
DW$126	.dwtag  DW_TAG_loop_range
	.dwattr DW$126, DW_AT_low_pc(DW$L$_F_HANDLE_DEC$3$B)
	.dwattr DW$126, DW_AT_high_pc(DW$L$_F_HANDLE_DEC$3$E)
	.dwendtag DW$121

	.dwattr DW$120, DW_AT_end_file("Motor.c")
	.dwattr DW$120, DW_AT_end_line(0xb1)
	.dwattr DW$120, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$120

	.sect	".text"
	.global	_F_HANDLE_ACC

DW$127	.dwtag  DW_TAG_subprogram, DW_AT_name("F_HANDLE_ACC"), DW_AT_symbol_name("_F_HANDLE_ACC")
	.dwattr DW$127, DW_AT_low_pc(_F_HANDLE_ACC)
	.dwattr DW$127, DW_AT_high_pc(0x00)
	.dwattr DW$127, DW_AT_begin_file("Motor.c")
	.dwattr DW$127, DW_AT_begin_line(0x74)
	.dwattr DW$127, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",117,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_HANDLE_ACC                 FR SIZE:   4           *
;*                                                             *
;* FUNCTION ENVIRONMENT                                        *
;*                                                             *
;* FUNCTION PROPERTIES                                         *
;*                            3 Parameter,  0 Auto,  0 SOE     *
;***************************************************************


;***************************************************************
;*                                                             *
;* Using -g (debug) with optimization (-o3) may disable key op *
;*                                                             *
;***************************************************************
_F_HANDLE_ACC:
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 118	-----------------------    goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",118,2
        BF        L17,UNC               ; |118| 
        ; branch occurs ; |118| 
L15:    
DW$L$_F_HANDLE_ACC$2$B:
;***	-----------------------g2:
;*** 123	-----------------------    VFDPrintf("HDA=%4u", g_i16_handle_acc);
;*** 125	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"Motor.c",123,3
        MOVW      DP,#_g_i16_handle_acc
        MOVL      XAR4,#FSL4            ; |123| 
        MOV       AL,@_g_i16_handle_acc ; |123| 
        MOVL      *-SP[2],XAR4          ; |123| 
        MOV       *-SP[3],AL            ; |123| 
        LCR       #_VFDPrintf           ; |123| 
        ; call occurs [#_VFDPrintf] ; |123| 
	.dwpsn	"Motor.c",125,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |125| 
        BF        L16,NTC               ; |125| 
        ; branchcc occurs ; |125| 
DW$L$_F_HANDLE_ACC$2$E:
DW$L$_F_HANDLE_ACC$3$B:
;*** 131	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"Motor.c",131,8
        TBIT      @_GpioDataRegs+1,#8   ; |131| 
        BF        L17,TC                ; |131| 
        ; branchcc occurs ; |131| 
DW$L$_F_HANDLE_ACC$3$E:
DW$L$_F_HANDLE_ACC$4$B:
;*** 134	-----------------------    DSP28x_usDelay(2499998uL);
;*** 135	-----------------------    g_i16_handle_acc -= 10u;
;*** 135	-----------------------    goto g6;
	.dwpsn	"Motor.c",134,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |134| 
        ; call occurs [#_DSP28x_usDelay] ; |134| 
	.dwpsn	"Motor.c",135,4
        MOVW      DP,#_g_i16_handle_acc
        MOVB      AL,#10                ; |135| 
        SUB       @_g_i16_handle_acc,AL ; |135| 
        BF        L17,UNC               ; |135| 
        ; branch occurs ; |135| 
DW$L$_F_HANDLE_ACC$4$E:
L16:    
DW$L$_F_HANDLE_ACC$5$B:
;***	-----------------------g5:
;*** 127	-----------------------    DSP28x_usDelay(2499998uL);
;*** 128	-----------------------    g_i16_handle_acc += 10u;
	.dwpsn	"Motor.c",127,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |127| 
        ; call occurs [#_DSP28x_usDelay] ; |127| 
	.dwpsn	"Motor.c",128,4
        MOVW      DP,#_g_i16_handle_acc
        ADD       @_g_i16_handle_acc,#10 ; |128| 
DW$L$_F_HANDLE_ACC$5$E:
L17:    
DW$L$_F_HANDLE_ACC$6$B:
;***	-----------------------g6:
;*** 138	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",138,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |138| 
        BF        L15,TC                ; |138| 
        ; branchcc occurs ; |138| 
DW$L$_F_HANDLE_ACC$6$E:
;*** 139	-----------------------    write_acc_handle_rom();
;*** 140	-----------------------    a = 3;
;*** 141	-----------------------    b = 0;
;*** 142	-----------------------    c = 0.0F;
;*** 143	-----------------------    DSP28x_usDelay(1999998uL);
;*** 143	-----------------------    return;
	.dwpsn	"Motor.c",139,2
        LCR       #_write_acc_handle_rom ; |139| 
        ; call occurs [#_write_acc_handle_rom] ; |139| 
	.dwpsn	"Motor.c",140,2
        MOVW      DP,#_a
        MOV       @_a,#3                ; |140| 
	.dwpsn	"Motor.c",141,2
        MOVW      DP,#_b
        MOV       @_b,#0                ; |141| 
	.dwpsn	"Motor.c",142,2
        MOVW      DP,#_c
        MOV       AH,#0
        MOV       AL,#0
        MOVL      @_c,ACC               ; |142| 
	.dwpsn	"Motor.c",143,2
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |143| 
        ; call occurs [#_DSP28x_usDelay] ; |143| 
	.dwpsn	"Motor.c",144,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$128	.dwtag  DW_TAG_loop
	.dwattr DW$128, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L17:1:1729866708")
	.dwattr DW$128, DW_AT_begin_file("Motor.c")
	.dwattr DW$128, DW_AT_begin_line(0x76)
	.dwattr DW$128, DW_AT_end_line(0x8a)
DW$129	.dwtag  DW_TAG_loop_range
	.dwattr DW$129, DW_AT_low_pc(DW$L$_F_HANDLE_ACC$6$B)
	.dwattr DW$129, DW_AT_high_pc(DW$L$_F_HANDLE_ACC$6$E)
DW$130	.dwtag  DW_TAG_loop_range
	.dwattr DW$130, DW_AT_low_pc(DW$L$_F_HANDLE_ACC$2$B)
	.dwattr DW$130, DW_AT_high_pc(DW$L$_F_HANDLE_ACC$2$E)
DW$131	.dwtag  DW_TAG_loop_range
	.dwattr DW$131, DW_AT_low_pc(DW$L$_F_HANDLE_ACC$5$B)
	.dwattr DW$131, DW_AT_high_pc(DW$L$_F_HANDLE_ACC$5$E)
DW$132	.dwtag  DW_TAG_loop_range
	.dwattr DW$132, DW_AT_low_pc(DW$L$_F_HANDLE_ACC$4$B)
	.dwattr DW$132, DW_AT_high_pc(DW$L$_F_HANDLE_ACC$4$E)
DW$133	.dwtag  DW_TAG_loop_range
	.dwattr DW$133, DW_AT_low_pc(DW$L$_F_HANDLE_ACC$3$B)
	.dwattr DW$133, DW_AT_high_pc(DW$L$_F_HANDLE_ACC$3$E)
	.dwendtag DW$128

	.dwattr DW$127, DW_AT_end_file("Motor.c")
	.dwattr DW$127, DW_AT_end_line(0x90)
	.dwattr DW$127, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$127

	.sect	".text"
	.global	_F_ENDACCEL

DW$134	.dwtag  DW_TAG_subprogram, DW_AT_name("F_ENDACCEL"), DW_AT_symbol_name("_F_ENDACCEL")
	.dwattr DW$134, DW_AT_low_pc(_F_ENDACCEL)
	.dwattr DW$134, DW_AT_high_pc(0x00)
	.dwattr DW$134, DW_AT_begin_file("Motor.c")
	.dwattr DW$134, DW_AT_begin_line(0x17)
	.dwattr DW$134, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",24,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_ENDACCEL                   FR SIZE:   4           *
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
_F_ENDACCEL:
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 25	-----------------------    goto g8;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",25,2
        BF        L21,UNC               ; |25| 
        ; branch occurs ; |25| 
L18:    
DW$L$_F_ENDACCEL$2$B:
;***	-----------------------g2:
;*** 28	-----------------------    VFDPrintf("EDA:%lu", g_u32_END_ACC_targetval);
;*** 30	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g7;
	.dwpsn	"Motor.c",28,3
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVL      XAR4,#FSL5            ; |28| 
        MOVL      ACC,@_g_u32_END_ACC_targetval ; |28| 
        MOVL      *-SP[2],XAR4          ; |28| 
        MOVL      *-SP[4],ACC           ; |28| 
        LCR       #_VFDPrintf           ; |28| 
        ; call occurs [#_VFDPrintf] ; |28| 
	.dwpsn	"Motor.c",30,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |30| 
        BF        L20,NTC               ; |30| 
        ; branchcc occurs ; |30| 
DW$L$_F_ENDACCEL$2$E:
DW$L$_F_ENDACCEL$3$B:
;*** 36	-----------------------    if ( !(*(&GpioDataRegs+1)&0x100u) ) goto g6;
	.dwpsn	"Motor.c",36,8
        TBIT      @_GpioDataRegs+1,#8   ; |36| 
        BF        L19,NTC               ; |36| 
        ; branchcc occurs ; |36| 
DW$L$_F_ENDACCEL$3$E:
DW$L$_F_ENDACCEL$4$B:
;*** 43	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g8;
	.dwpsn	"Motor.c",43,8
        TBIT      @_GpioDataRegs+1,#14  ; |43| 
        BF        L21,TC                ; |43| 
        ; branchcc occurs ; |43| 
DW$L$_F_ENDACCEL$4$E:
DW$L$_F_ENDACCEL$5$B:
;*** 46	-----------------------    DSP28x_usDelay(2699998uL);
;*** 47	-----------------------    g_u32_END_ACC_targetval = 8000uL;
;*** 47	-----------------------    goto g8;
	.dwpsn	"Motor.c",46,4
        MOV       AL,#13022
        MOV       AH,#41
        LCR       #_DSP28x_usDelay      ; |46| 
        ; call occurs [#_DSP28x_usDelay] ; |46| 
	.dwpsn	"Motor.c",47,4
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOVL      XAR4,#8000            ; |47| 
        MOVL      @_g_u32_END_ACC_targetval,XAR4 ; |47| 
        BF        L21,UNC               ; |47| 
        ; branch occurs ; |47| 
DW$L$_F_ENDACCEL$5$E:
L19:    
DW$L$_F_ENDACCEL$6$B:
;***	-----------------------g6:
;*** 39	-----------------------    DSP28x_usDelay(2699998uL);
;*** 40	-----------------------    g_u32_END_ACC_targetval -= 500uL;
;*** 41	-----------------------    goto g8;
	.dwpsn	"Motor.c",39,4
        MOV       AL,#13022
        MOV       AH,#41
        LCR       #_DSP28x_usDelay      ; |39| 
        ; call occurs [#_DSP28x_usDelay] ; |39| 
	.dwpsn	"Motor.c",40,4
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOV       ACC,#500              ; |40| 
        SUBL      @_g_u32_END_ACC_targetval,ACC ; |40| 
	.dwpsn	"Motor.c",41,3
        BF        L21,UNC               ; |41| 
        ; branch occurs ; |41| 
DW$L$_F_ENDACCEL$6$E:
L20:    
DW$L$_F_ENDACCEL$7$B:
;***	-----------------------g7:
;*** 32	-----------------------    DSP28x_usDelay(2699998uL);
;*** 33	-----------------------    g_u32_END_ACC_targetval += 500uL;
	.dwpsn	"Motor.c",32,4
        MOV       AL,#13022
        MOV       AH,#41
        LCR       #_DSP28x_usDelay      ; |32| 
        ; call occurs [#_DSP28x_usDelay] ; |32| 
	.dwpsn	"Motor.c",33,4
        MOVW      DP,#_g_u32_END_ACC_targetval
        MOV       ACC,#500              ; |33| 
        ADDL      @_g_u32_END_ACC_targetval,ACC ; |33| 
DW$L$_F_ENDACCEL$7$E:
L21:    
DW$L$_F_ENDACCEL$8$B:
;***	-----------------------g8:
;*** 50	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",50,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |50| 
        BF        L18,TC                ; |50| 
        ; branchcc occurs ; |50| 
DW$L$_F_ENDACCEL$8$E:
;*** 51	-----------------------    write_end_acc_rom();
;*** 52	-----------------------    a = 2;
;*** 53	-----------------------    b = 2;
;*** 53	-----------------------    return;
	.dwpsn	"Motor.c",51,2
        LCR       #_write_end_acc_rom   ; |51| 
        ; call occurs [#_write_end_acc_rom] ; |51| 
	.dwpsn	"Motor.c",52,2
        MOVB      AL,#2                 ; |52| 
        MOVW      DP,#_a
        MOV       @_a,AL                ; |52| 
	.dwpsn	"Motor.c",53,2
        MOVW      DP,#_b
        MOV       @_b,AL                ; |53| 
	.dwpsn	"Motor.c",55,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$135	.dwtag  DW_TAG_loop
	.dwattr DW$135, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L21:1:1729866708")
	.dwattr DW$135, DW_AT_begin_file("Motor.c")
	.dwattr DW$135, DW_AT_begin_line(0x19)
	.dwattr DW$135, DW_AT_end_line(0x32)
DW$136	.dwtag  DW_TAG_loop_range
	.dwattr DW$136, DW_AT_low_pc(DW$L$_F_ENDACCEL$8$B)
	.dwattr DW$136, DW_AT_high_pc(DW$L$_F_ENDACCEL$8$E)
DW$137	.dwtag  DW_TAG_loop_range
	.dwattr DW$137, DW_AT_low_pc(DW$L$_F_ENDACCEL$2$B)
	.dwattr DW$137, DW_AT_high_pc(DW$L$_F_ENDACCEL$2$E)
DW$138	.dwtag  DW_TAG_loop_range
	.dwattr DW$138, DW_AT_low_pc(DW$L$_F_ENDACCEL$3$B)
	.dwattr DW$138, DW_AT_high_pc(DW$L$_F_ENDACCEL$3$E)
DW$139	.dwtag  DW_TAG_loop_range
	.dwattr DW$139, DW_AT_low_pc(DW$L$_F_ENDACCEL$7$B)
	.dwattr DW$139, DW_AT_high_pc(DW$L$_F_ENDACCEL$7$E)
DW$140	.dwtag  DW_TAG_loop_range
	.dwattr DW$140, DW_AT_low_pc(DW$L$_F_ENDACCEL$6$B)
	.dwattr DW$140, DW_AT_high_pc(DW$L$_F_ENDACCEL$6$E)
DW$141	.dwtag  DW_TAG_loop_range
	.dwattr DW$141, DW_AT_low_pc(DW$L$_F_ENDACCEL$5$B)
	.dwattr DW$141, DW_AT_high_pc(DW$L$_F_ENDACCEL$5$E)
DW$142	.dwtag  DW_TAG_loop_range
	.dwattr DW$142, DW_AT_low_pc(DW$L$_F_ENDACCEL$4$B)
	.dwattr DW$142, DW_AT_high_pc(DW$L$_F_ENDACCEL$4$E)
	.dwendtag DW$135

	.dwattr DW$134, DW_AT_end_file("Motor.c")
	.dwattr DW$134, DW_AT_end_line(0x37)
	.dwattr DW$134, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$134

	.sect	".text"
	.global	_F_ACCELERATION

DW$143	.dwtag  DW_TAG_subprogram, DW_AT_name("F_ACCELERATION"), DW_AT_symbol_name("_F_ACCELERATION")
	.dwattr DW$143, DW_AT_low_pc(_F_ACCELERATION)
	.dwattr DW$143, DW_AT_high_pc(0x00)
	.dwattr DW$143, DW_AT_begin_file("Motor.c")
	.dwattr DW$143, DW_AT_begin_line(0x3b)
	.dwattr DW$143, DW_AT_begin_column(0x06)
	.dwpsn	"Motor.c",61,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _F_ACCELERATION               FR SIZE:   4           *
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
_F_ACCELERATION:
;*** 62	-----------------------    a = 0;
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 64	-----------------------    goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#4
	.dwcfa	0x1d, -6
	.dwpsn	"Motor.c",62,2
        MOVW      DP,#_a
        MOV       @_a,#0                ; |62| 
	.dwpsn	"Motor.c",64,2
        BF        L24,UNC               ; |64| 
        ; branch occurs ; |64| 
L22:    
DW$L$_F_ACCELERATION$2$B:
;***	-----------------------g2:
;*** 67	-----------------------    VFDPrintf("ACC=%lu", g_u32_ACC_targetval);
;*** 69	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g5;
	.dwpsn	"Motor.c",67,3
        MOVW      DP,#_g_u32_ACC_targetval
        MOVL      XAR4,#FSL6            ; |67| 
        MOVL      ACC,@_g_u32_ACC_targetval ; |67| 
        MOVL      *-SP[2],XAR4          ; |67| 
        MOVL      *-SP[4],ACC           ; |67| 
        LCR       #_VFDPrintf           ; |67| 
        ; call occurs [#_VFDPrintf] ; |67| 
	.dwpsn	"Motor.c",69,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |69| 
        BF        L23,NTC               ; |69| 
        ; branchcc occurs ; |69| 
DW$L$_F_ACCELERATION$2$E:
DW$L$_F_ACCELERATION$3$B:
;*** 75	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g6;
	.dwpsn	"Motor.c",75,8
        TBIT      @_GpioDataRegs+1,#8   ; |75| 
        BF        L24,TC                ; |75| 
        ; branchcc occurs ; |75| 
DW$L$_F_ACCELERATION$3$E:
DW$L$_F_ACCELERATION$4$B:
;*** 79	-----------------------    DSP28x_usDelay(2499998uL);
;*** 80	-----------------------    g_u32_ACC_targetval -= 100uL;
;*** 80	-----------------------    goto g6;
	.dwpsn	"Motor.c",79,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |79| 
        ; call occurs [#_DSP28x_usDelay] ; |79| 
	.dwpsn	"Motor.c",80,4
        MOVW      DP,#_g_u32_ACC_targetval
        MOVB      ACC,#100
        SUBL      @_g_u32_ACC_targetval,ACC ; |80| 
        BF        L24,UNC               ; |80| 
        ; branch occurs ; |80| 
DW$L$_F_ACCELERATION$4$E:
L23:    
DW$L$_F_ACCELERATION$5$B:
;***	-----------------------g5:
;*** 71	-----------------------    DSP28x_usDelay(2499998uL);
;*** 72	-----------------------    g_u32_ACC_targetval += 100uL;
	.dwpsn	"Motor.c",71,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |71| 
        ; call occurs [#_DSP28x_usDelay] ; |71| 
	.dwpsn	"Motor.c",72,4
        MOVW      DP,#_g_u32_ACC_targetval
        MOVB      ACC,#100
        ADDL      @_g_u32_ACC_targetval,ACC ; |72| 
DW$L$_F_ACCELERATION$5$E:
L24:    
DW$L$_F_ACCELERATION$6$B:
;***	-----------------------g6:
;*** 83	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g2;
	.dwpsn	"Motor.c",83,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |83| 
        BF        L22,TC                ; |83| 
        ; branchcc occurs ; |83| 
DW$L$_F_ACCELERATION$6$E:
;*** 85	-----------------------    DSP28x_usDelay(2999998uL);
;***  	-----------------------    #pragma LOOP_FLAGS(5376u)
;*** 87	-----------------------    goto g12;
	.dwpsn	"Motor.c",85,2
        MOV       AL,#50878
        MOV       AH,#45
        LCR       #_DSP28x_usDelay      ; |85| 
        ; call occurs [#_DSP28x_usDelay] ; |85| 
	.dwpsn	"Motor.c",87,2
        BF        L27,UNC               ; |87| 
        ; branch occurs ; |87| 
L25:    
DW$L$_F_ACCELERATION$8$B:
;***	-----------------------g8:
;*** 90	-----------------------    VFDPrintf("ACC=%lu", g_int32long_ACC);
;*** 92	-----------------------    if ( !(*(&GpioDataRegs+1)&0x20u) ) goto g11;
	.dwpsn	"Motor.c",90,3
        MOVW      DP,#_g_int32long_ACC
        MOVL      XAR4,#FSL6            ; |90| 
        MOVL      ACC,@_g_int32long_ACC ; |90| 
        MOVL      *-SP[2],XAR4          ; |90| 
        MOVL      *-SP[4],ACC           ; |90| 
        LCR       #_VFDPrintf           ; |90| 
        ; call occurs [#_VFDPrintf] ; |90| 
	.dwpsn	"Motor.c",92,3
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#5   ; |92| 
        BF        L26,NTC               ; |92| 
        ; branchcc occurs ; |92| 
DW$L$_F_ACCELERATION$8$E:
DW$L$_F_ACCELERATION$9$B:
;*** 98	-----------------------    if ( *(&GpioDataRegs+1)&0x100u ) goto g12;
	.dwpsn	"Motor.c",98,8
        TBIT      @_GpioDataRegs+1,#8   ; |98| 
        BF        L27,TC                ; |98| 
        ; branchcc occurs ; |98| 
DW$L$_F_ACCELERATION$9$E:
DW$L$_F_ACCELERATION$10$B:
;*** 102	-----------------------    DSP28x_usDelay(2499998uL);
;*** 103	-----------------------    g_int32long_ACC -= 100L;
;*** 103	-----------------------    goto g12;
	.dwpsn	"Motor.c",102,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |102| 
        ; call occurs [#_DSP28x_usDelay] ; |102| 
	.dwpsn	"Motor.c",103,4
        MOVW      DP,#_g_int32long_ACC
        MOVB      ACC,#100
        SUBL      @_g_int32long_ACC,ACC ; |103| 
        BF        L27,UNC               ; |103| 
        ; branch occurs ; |103| 
DW$L$_F_ACCELERATION$10$E:
L26:    
DW$L$_F_ACCELERATION$11$B:
;***	-----------------------g11:
;*** 94	-----------------------    DSP28x_usDelay(2499998uL);
;*** 95	-----------------------    g_int32long_ACC += 100L;
	.dwpsn	"Motor.c",94,4
        MOV       AL,#9630
        MOV       AH,#38
        LCR       #_DSP28x_usDelay      ; |94| 
        ; call occurs [#_DSP28x_usDelay] ; |94| 
	.dwpsn	"Motor.c",95,4
        MOVW      DP,#_g_int32long_ACC
        MOVB      ACC,#100
        ADDL      @_g_int32long_ACC,ACC ; |95| 
DW$L$_F_ACCELERATION$11$E:
L27:    
DW$L$_F_ACCELERATION$12$B:
;***	-----------------------g12:
;*** 106	-----------------------    if ( *(&GpioDataRegs+1)&0x10u ) goto g8;
	.dwpsn	"Motor.c",106,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#4   ; |106| 
        BF        L25,TC                ; |106| 
        ; branchcc occurs ; |106| 
DW$L$_F_ACCELERATION$12$E:
;*** 108	-----------------------    write_acc_rom();
;*** 109	-----------------------    a = 2;
;*** 110	-----------------------    b = 0;
;*** 111	-----------------------    DSP28x_usDelay(1999998uL);
;*** 111	-----------------------    return;
	.dwpsn	"Motor.c",108,2
        LCR       #_write_acc_rom       ; |108| 
        ; call occurs [#_write_acc_rom] ; |108| 
	.dwpsn	"Motor.c",109,2
        MOVW      DP,#_a
        MOV       @_a,#2                ; |109| 
	.dwpsn	"Motor.c",110,2
        MOVW      DP,#_b
        MOV       @_b,#0                ; |110| 
	.dwpsn	"Motor.c",111,2
        MOV       AL,#33918
        MOV       AH,#30
        LCR       #_DSP28x_usDelay      ; |111| 
        ; call occurs [#_DSP28x_usDelay] ; |111| 
	.dwpsn	"Motor.c",112,1
        SUBB      SP,#4
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs

DW$144	.dwtag  DW_TAG_loop
	.dwattr DW$144, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L27:1:1729866708")
	.dwattr DW$144, DW_AT_begin_file("Motor.c")
	.dwattr DW$144, DW_AT_begin_line(0x57)
	.dwattr DW$144, DW_AT_end_line(0x6a)
DW$145	.dwtag  DW_TAG_loop_range
	.dwattr DW$145, DW_AT_low_pc(DW$L$_F_ACCELERATION$12$B)
	.dwattr DW$145, DW_AT_high_pc(DW$L$_F_ACCELERATION$12$E)
DW$146	.dwtag  DW_TAG_loop_range
	.dwattr DW$146, DW_AT_low_pc(DW$L$_F_ACCELERATION$8$B)
	.dwattr DW$146, DW_AT_high_pc(DW$L$_F_ACCELERATION$8$E)
DW$147	.dwtag  DW_TAG_loop_range
	.dwattr DW$147, DW_AT_low_pc(DW$L$_F_ACCELERATION$11$B)
	.dwattr DW$147, DW_AT_high_pc(DW$L$_F_ACCELERATION$11$E)
DW$148	.dwtag  DW_TAG_loop_range
	.dwattr DW$148, DW_AT_low_pc(DW$L$_F_ACCELERATION$10$B)
	.dwattr DW$148, DW_AT_high_pc(DW$L$_F_ACCELERATION$10$E)
DW$149	.dwtag  DW_TAG_loop_range
	.dwattr DW$149, DW_AT_low_pc(DW$L$_F_ACCELERATION$9$B)
	.dwattr DW$149, DW_AT_high_pc(DW$L$_F_ACCELERATION$9$E)
	.dwendtag DW$144


DW$150	.dwtag  DW_TAG_loop
	.dwattr DW$150, DW_AT_name("C:\project\_Viper_\main\Motor.asm:L24:1:1729866708")
	.dwattr DW$150, DW_AT_begin_file("Motor.c")
	.dwattr DW$150, DW_AT_begin_line(0x40)
	.dwattr DW$150, DW_AT_end_line(0x53)
DW$151	.dwtag  DW_TAG_loop_range
	.dwattr DW$151, DW_AT_low_pc(DW$L$_F_ACCELERATION$6$B)
	.dwattr DW$151, DW_AT_high_pc(DW$L$_F_ACCELERATION$6$E)
DW$152	.dwtag  DW_TAG_loop_range
	.dwattr DW$152, DW_AT_low_pc(DW$L$_F_ACCELERATION$2$B)
	.dwattr DW$152, DW_AT_high_pc(DW$L$_F_ACCELERATION$2$E)
DW$153	.dwtag  DW_TAG_loop_range
	.dwattr DW$153, DW_AT_low_pc(DW$L$_F_ACCELERATION$5$B)
	.dwattr DW$153, DW_AT_high_pc(DW$L$_F_ACCELERATION$5$E)
DW$154	.dwtag  DW_TAG_loop_range
	.dwattr DW$154, DW_AT_low_pc(DW$L$_F_ACCELERATION$4$B)
	.dwattr DW$154, DW_AT_high_pc(DW$L$_F_ACCELERATION$4$E)
DW$155	.dwtag  DW_TAG_loop_range
	.dwattr DW$155, DW_AT_low_pc(DW$L$_F_ACCELERATION$3$B)
	.dwattr DW$155, DW_AT_high_pc(DW$L$_F_ACCELERATION$3$E)
	.dwendtag DW$150

	.dwattr DW$143, DW_AT_end_file("Motor.c")
	.dwattr DW$143, DW_AT_end_line(0x70)
	.dwattr DW$143, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$143

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
FSL1:	.string	"VEL=%lu",0
	.align	2
FSL2:	.string	"DIST=%u",0
	.align	2
FSL3:	.string	"HDD=%4u",0
	.align	2
FSL4:	.string	"HDA=%4u",0
	.align	2
FSL5:	.string	"EDA:%lu",0
	.align	2
FSL6:	.string	"ACC=%lu",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_write_dec_handle_rom
	.global	_write_end_acc_rom
	.global	_VFDPrintf
	.global	_write_acc_handle_rom
	.global	_DSP28x_usDelay
	.global	_write_acc_rom
	.global	_write_vel_rom
	.global	_b
	.global	_D_HANDLE
	.global	_g_Flag
	.global	_g_i16_handle_acc
	.global	_g_i16_handle_dec
	.global	_a
	.global	_g_u16turn_dist
	.global	_g_u32_END_ACC_targetval
	.global	_g_i32_Time_index
	.global	_g_u32_ACC_targetval
	.global	_g_u32_VEL_targetval
	.global	__IQ6sqrt
	.global	_memset
	.global	_g_int32long_ACC
	.global	__IQ24div
	.global	_c
	.global	_g_fp32time
	.global	_CpuTimer0Regs
	.global	_GpioDataRegs
	.global	_RMotor
	.global	_LMotor
	.global	L$$TOFS
	.global	FS$$MPY
	.global	FD$$MPY
	.global	UL$$TOFD
	.global	FD$$TOL

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************
DW$T$3	.dwtag  DW_TAG_pointer_type
	.dwattr DW$T$3, DW_AT_address_class(0x16)

DW$T$44	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$3)
	.dwattr DW$T$44, DW_AT_language(DW_LANG_C)
DW$156	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$3)
DW$157	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
DW$158	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$43)
	.dwendtag DW$T$44


DW$T$49	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$49, DW_AT_language(DW_LANG_C)
DW$159	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$48)
DW$160	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$49


DW$T$51	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$51, DW_AT_language(DW_LANG_C)

DW$T$53	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$53, DW_AT_language(DW_LANG_C)
DW$161	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$53


DW$T$55	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$55, DW_AT_language(DW_LANG_C)

DW$T$59	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$59, DW_AT_language(DW_LANG_C)
DW$162	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$58)
	.dwendtag DW$T$59


DW$T$64	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$64, DW_AT_language(DW_LANG_C)
DW$163	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$164	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$165	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$166	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$167	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$64


DW$T$65	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$65, DW_AT_language(DW_LANG_C)
DW$168	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$169	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$61)
DW$170	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$63)
	.dwendtag DW$T$65

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$22	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$22, DW_AT_language(DW_LANG_C)
DW$T$12	.dwtag  DW_TAG_base_type, DW_AT_name("long")
	.dwattr DW$T$12, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$12, DW_AT_byte_size(0x02)
DW$171	.dwtag  DW_TAG_far_type
	.dwattr DW$171, DW_AT_type(*DW$T$19)
DW$T$61	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$61, DW_AT_type(*DW$171)
DW$172	.dwtag  DW_TAG_far_type
	.dwattr DW$172, DW_AT_type(*DW$T$19)
DW$T$69	.dwtag  DW_TAG_const_type
	.dwattr DW$T$69, DW_AT_type(*DW$172)
DW$T$62	.dwtag  DW_TAG_typedef, DW_AT_name("int32"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$62, DW_AT_language(DW_LANG_C)
DW$173	.dwtag  DW_TAG_far_type
	.dwattr DW$173, DW_AT_type(*DW$T$62)
DW$T$63	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$63, DW_AT_type(*DW$173)
DW$174	.dwtag  DW_TAG_far_type
	.dwattr DW$174, DW_AT_type(*DW$T$62)
DW$T$70	.dwtag  DW_TAG_const_type
	.dwattr DW$T$70, DW_AT_type(*DW$174)

DW$T$71	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$71, DW_AT_language(DW_LANG_C)
DW$175	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$71


DW$T$73	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$73, DW_AT_language(DW_LANG_C)
DW$176	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$177	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$178	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$10)
	.dwendtag DW$T$73


DW$T$74	.dwtag  DW_TAG_subroutine_type, DW_AT_type(*DW$T$12)
	.dwattr DW$T$74, DW_AT_language(DW_LANG_C)
DW$179	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
DW$180	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$12)
	.dwendtag DW$T$74

DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$181	.dwtag  DW_TAG_far_type
	.dwattr DW$181, DW_AT_type(*DW$T$21)
DW$T$78	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$78, DW_AT_type(*DW$181)
DW$T$43	.dwtag  DW_TAG_typedef, DW_AT_name("size_t"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$43, DW_AT_language(DW_LANG_C)
DW$T$80	.dwtag  DW_TAG_typedef, DW_AT_name("float32"), DW_AT_type(*DW$T$16)
	.dwattr DW$T$80, DW_AT_language(DW_LANG_C)
DW$T$17	.dwtag  DW_TAG_base_type, DW_AT_name("double")
	.dwattr DW$T$17, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$17, DW_AT_byte_size(0x02)
DW$T$57	.dwtag  DW_TAG_typedef, DW_AT_name("MOTORCTRL"), DW_AT_type(*DW$T$24)
	.dwattr DW$T$57, DW_AT_language(DW_LANG_C)
DW$T$58	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$57)
	.dwattr DW$T$58, DW_AT_address_class(0x16)
DW$182	.dwtag  DW_TAG_far_type
	.dwattr DW$182, DW_AT_type(*DW$T$58)
DW$T$81	.dwtag  DW_TAG_const_type
	.dwattr DW$T$81, DW_AT_type(*DW$182)
DW$183	.dwtag  DW_TAG_far_type
	.dwattr DW$183, DW_AT_type(*DW$T$30)
DW$T$84	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$84, DW_AT_type(*DW$183)
DW$184	.dwtag  DW_TAG_far_type
	.dwattr DW$184, DW_AT_type(*DW$T$41)
DW$T$88	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$88, DW_AT_type(*DW$184)
DW$T$91	.dwtag  DW_TAG_typedef, DW_AT_name("bit_field_flag_t"), DW_AT_type(*DW$T$90)
	.dwattr DW$T$91, DW_AT_language(DW_LANG_C)
DW$T$48	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$47)
	.dwattr DW$T$48, DW_AT_address_class(0x16)
DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)
DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("_iq17"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$T$16	.dwtag  DW_TAG_base_type, DW_AT_name("float")
	.dwattr DW$T$16, DW_AT_encoding(DW_ATE_float)
	.dwattr DW$T$16, DW_AT_byte_size(0x02)

DW$T$24	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$24, DW_AT_byte_size(0x2e)
DW$185	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$185, DW_AT_name("iqTargetA"), DW_AT_symbol_name("_iqTargetA")
	.dwattr DW$185, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$185, DW_AT_accessibility(DW_ACCESS_public)
DW$186	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$186, DW_AT_name("iqDist"), DW_AT_symbol_name("_iqDist")
	.dwattr DW$186, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$186, DW_AT_accessibility(DW_ACCESS_public)
DW$187	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$187, DW_AT_name("iqVelo"), DW_AT_symbol_name("_iqVelo")
	.dwattr DW$187, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$187, DW_AT_accessibility(DW_ACCESS_public)
DW$188	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$188, DW_AT_name("iqTargetV"), DW_AT_symbol_name("_iqTargetV")
	.dwattr DW$188, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$188, DW_AT_accessibility(DW_ACCESS_public)
DW$189	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$189, DW_AT_name("iqNextV"), DW_AT_symbol_name("_iqNextV")
	.dwattr DW$189, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$189, DW_AT_accessibility(DW_ACCESS_public)
DW$190	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$190, DW_AT_name("iqAmpyS"), DW_AT_symbol_name("_iqAmpyS")
	.dwattr DW$190, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$190, DW_AT_accessibility(DW_ACCESS_public)
DW$191	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$191, DW_AT_name("iqHandle"), DW_AT_symbol_name("_iqHandle")
	.dwattr DW$191, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$191, DW_AT_accessibility(DW_ACCESS_public)
DW$192	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$192, DW_AT_name("iqTotalDis"), DW_AT_symbol_name("_iqTotalDis")
	.dwattr DW$192, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$192, DW_AT_accessibility(DW_ACCESS_public)
DW$193	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$193, DW_AT_name("iq24TargetA_1"), DW_AT_symbol_name("_iq24TargetA_1")
	.dwattr DW$193, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$193, DW_AT_accessibility(DW_ACCESS_public)
DW$194	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$194, DW_AT_name("iq24TimeValue"), DW_AT_symbol_name("_iq24TimeValue")
	.dwattr DW$194, DW_AT_data_member_location[DW_OP_plus_uconst 0x12]
	.dwattr DW$194, DW_AT_accessibility(DW_ACCESS_public)
DW$195	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$195, DW_AT_name("u32_Period_Cnt"), DW_AT_symbol_name("_u32_Period_Cnt")
	.dwattr DW$195, DW_AT_data_member_location[DW_OP_plus_uconst 0x14]
	.dwattr DW$195, DW_AT_accessibility(DW_ACCESS_public)
DW$196	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$196, DW_AT_name("u32_Period"), DW_AT_symbol_name("_u32_Period")
	.dwattr DW$196, DW_AT_data_member_location[DW_OP_plus_uconst 0x16]
	.dwattr DW$196, DW_AT_accessibility(DW_ACCESS_public)
DW$197	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$197, DW_AT_name("u16_pPeriod"), DW_AT_symbol_name("_u16_pPeriod")
	.dwattr DW$197, DW_AT_data_member_location[DW_OP_plus_uconst 0x18]
	.dwattr DW$197, DW_AT_accessibility(DW_ACCESS_public)
DW$198	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$198, DW_AT_name("iq17Turnmark_Check_Dist"), DW_AT_symbol_name("_iq17Turnmark_Check_Dist")
	.dwattr DW$198, DW_AT_data_member_location[DW_OP_plus_uconst 0x1a]
	.dwattr DW$198, DW_AT_accessibility(DW_ACCESS_public)
DW$199	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$199, DW_AT_name("iq15GoneDist"), DW_AT_symbol_name("_iq15GoneDist")
	.dwattr DW$199, DW_AT_data_member_location[DW_OP_plus_uconst 0x1c]
	.dwattr DW$199, DW_AT_accessibility(DW_ACCESS_public)
DW$200	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$200, DW_AT_name("iq15Cross_Check_Dist"), DW_AT_symbol_name("_iq15Cross_Check_Dist")
	.dwattr DW$200, DW_AT_data_member_location[DW_OP_plus_uconst 0x1e]
	.dwattr DW$200, DW_AT_accessibility(DW_ACCESS_public)
DW$201	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$201, DW_AT_name("iq17Start_Check_Dist"), DW_AT_symbol_name("_iq17Start_Check_Dist")
	.dwattr DW$201, DW_AT_data_member_location[DW_OP_plus_uconst 0x20]
	.dwattr DW$201, DW_AT_accessibility(DW_ACCESS_public)
DW$202	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$202, DW_AT_name("iq17distance_sum"), DW_AT_symbol_name("_iq17distance_sum")
	.dwattr DW$202, DW_AT_data_member_location[DW_OP_plus_uconst 0x22]
	.dwattr DW$202, DW_AT_accessibility(DW_ACCESS_public)
DW$203	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$203, DW_AT_name("iq17decel_distance"), DW_AT_symbol_name("_iq17decel_distance")
	.dwattr DW$203, DW_AT_data_member_location[DW_OP_plus_uconst 0x24]
	.dwattr DW$203, DW_AT_accessibility(DW_ACCESS_public)
DW$204	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$204, DW_AT_name("iq17err_distance"), DW_AT_symbol_name("_iq17err_distance")
	.dwattr DW$204, DW_AT_data_member_location[DW_OP_plus_uconst 0x26]
	.dwattr DW$204, DW_AT_accessibility(DW_ACCESS_public)
DW$205	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$205, DW_AT_name("iq17user_distance"), DW_AT_symbol_name("_iq17user_distance")
	.dwattr DW$205, DW_AT_data_member_location[DW_OP_plus_uconst 0x28]
	.dwattr DW$205, DW_AT_accessibility(DW_ACCESS_public)
DW$206	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$206, DW_AT_name("iq17decel_vel"), DW_AT_symbol_name("_iq17decel_vel")
	.dwattr DW$206, DW_AT_data_member_location[DW_OP_plus_uconst 0x2a]
	.dwattr DW$206, DW_AT_accessibility(DW_ACCESS_public)
DW$207	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$207, DW_AT_name("u16decel_flag"), DW_AT_symbol_name("_u16decel_flag")
	.dwattr DW$207, DW_AT_data_member_location[DW_OP_plus_uconst 0x2c]
	.dwattr DW$207, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24


DW$T$30	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$30, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$30, DW_AT_byte_size(0x20)
DW$208	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$208, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$208, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$208, DW_AT_accessibility(DW_ACCESS_public)
DW$209	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$209, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$209, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$209, DW_AT_accessibility(DW_ACCESS_public)
DW$210	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$210, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$210, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$210, DW_AT_accessibility(DW_ACCESS_public)
DW$211	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$26)
	.dwattr DW$211, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$211, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$211, DW_AT_accessibility(DW_ACCESS_public)
DW$212	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$212, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$212, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$212, DW_AT_accessibility(DW_ACCESS_public)
DW$213	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$213, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$213, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$213, DW_AT_accessibility(DW_ACCESS_public)
DW$214	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$214, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$214, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$214, DW_AT_accessibility(DW_ACCESS_public)
DW$215	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$28)
	.dwattr DW$215, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$215, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$215, DW_AT_accessibility(DW_ACCESS_public)
DW$216	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$29)
	.dwattr DW$216, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$216, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$216, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$30


DW$T$41	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$41, DW_AT_name("CPUTIMER_REGS")
	.dwattr DW$T$41, DW_AT_byte_size(0x08)
DW$217	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$32)
	.dwattr DW$217, DW_AT_name("TIM"), DW_AT_symbol_name("_TIM")
	.dwattr DW$217, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$217, DW_AT_accessibility(DW_ACCESS_public)
DW$218	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$34)
	.dwattr DW$218, DW_AT_name("PRD"), DW_AT_symbol_name("_PRD")
	.dwattr DW$218, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$218, DW_AT_accessibility(DW_ACCESS_public)
DW$219	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$36)
	.dwattr DW$219, DW_AT_name("TCR"), DW_AT_symbol_name("_TCR")
	.dwattr DW$219, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$219, DW_AT_accessibility(DW_ACCESS_public)
DW$220	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$220, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$220, DW_AT_data_member_location[DW_OP_plus_uconst 0x5]
	.dwattr DW$220, DW_AT_accessibility(DW_ACCESS_public)
DW$221	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$38)
	.dwattr DW$221, DW_AT_name("TPR"), DW_AT_symbol_name("_TPR")
	.dwattr DW$221, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$221, DW_AT_accessibility(DW_ACCESS_public)
DW$222	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$40)
	.dwattr DW$222, DW_AT_name("TPRH"), DW_AT_symbol_name("_TPRH")
	.dwattr DW$222, DW_AT_data_member_location[DW_OP_plus_uconst 0x7]
	.dwattr DW$222, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$41

DW$223	.dwtag  DW_TAG_far_type
	.dwattr DW$223, DW_AT_type(*DW$T$42)
DW$T$90	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$90, DW_AT_type(*DW$223)
DW$T$47	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$47, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$47, DW_AT_byte_size(0x01)

DW$T$29	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$22)
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$29, DW_AT_byte_size(0x10)
DW$224	.dwtag  DW_TAG_subrange_type
	.dwattr DW$224, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$29

DW$T$20	.dwtag  DW_TAG_typedef, DW_AT_name("_iq24"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$20, DW_AT_language(DW_LANG_C)
DW$T$23	.dwtag  DW_TAG_typedef, DW_AT_name("_iq15"), DW_AT_type(*DW$T$12)
	.dwattr DW$T$23, DW_AT_language(DW_LANG_C)

DW$T$26	.dwtag  DW_TAG_union_type
	.dwattr DW$T$26, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$26, DW_AT_byte_size(0x02)
DW$225	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$225, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$225, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$225, DW_AT_accessibility(DW_ACCESS_public)
DW$226	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$226, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$226, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$226, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26


DW$T$28	.dwtag  DW_TAG_union_type
	.dwattr DW$T$28, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$28, DW_AT_byte_size(0x02)
DW$227	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$227, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$227, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$227, DW_AT_accessibility(DW_ACCESS_public)
DW$228	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$27)
	.dwattr DW$228, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$228, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$228, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$28


DW$T$32	.dwtag  DW_TAG_union_type
	.dwattr DW$T$32, DW_AT_name("TIM_GROUP")
	.dwattr DW$T$32, DW_AT_byte_size(0x02)
DW$229	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$229, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$229, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$229, DW_AT_accessibility(DW_ACCESS_public)
DW$230	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$31)
	.dwattr DW$230, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$230, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$230, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$32


DW$T$34	.dwtag  DW_TAG_union_type
	.dwattr DW$T$34, DW_AT_name("PRD_GROUP")
	.dwattr DW$T$34, DW_AT_byte_size(0x02)
DW$231	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$231, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$231, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$231, DW_AT_accessibility(DW_ACCESS_public)
DW$232	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$33)
	.dwattr DW$232, DW_AT_name("half"), DW_AT_symbol_name("_half")
	.dwattr DW$232, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$232, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$34


DW$T$36	.dwtag  DW_TAG_union_type
	.dwattr DW$T$36, DW_AT_name("TCR_REG")
	.dwattr DW$T$36, DW_AT_byte_size(0x01)
DW$233	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$233, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$233, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$233, DW_AT_accessibility(DW_ACCESS_public)
DW$234	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$35)
	.dwattr DW$234, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$234, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$234, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$36


DW$T$38	.dwtag  DW_TAG_union_type
	.dwattr DW$T$38, DW_AT_name("TPR_REG")
	.dwattr DW$T$38, DW_AT_byte_size(0x01)
DW$235	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$235, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$235, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$235, DW_AT_accessibility(DW_ACCESS_public)
DW$236	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$37)
	.dwattr DW$236, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$236, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$236, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$38


DW$T$40	.dwtag  DW_TAG_union_type
	.dwattr DW$T$40, DW_AT_name("TPRH_REG")
	.dwattr DW$T$40, DW_AT_byte_size(0x01)
DW$237	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$237, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$237, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$237, DW_AT_accessibility(DW_ACCESS_public)
DW$238	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$39)
	.dwattr DW$238, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$238, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$238, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$40


DW$T$42	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$42, DW_AT_name("bit_field_flag")
	.dwattr DW$T$42, DW_AT_byte_size(0x01)
DW$239	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$239, DW_AT_name("motor"), DW_AT_symbol_name("_motor")
	.dwattr DW$239, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$239, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$239, DW_AT_accessibility(DW_ACCESS_public)
DW$240	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$240, DW_AT_name("move_state"), DW_AT_symbol_name("_move_state")
	.dwattr DW$240, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$240, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$240, DW_AT_accessibility(DW_ACCESS_public)
DW$241	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$241, DW_AT_name("start_flag"), DW_AT_symbol_name("_start_flag")
	.dwattr DW$241, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$241, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$241, DW_AT_accessibility(DW_ACCESS_public)
DW$242	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$242, DW_AT_name("cross_flag"), DW_AT_symbol_name("_cross_flag")
	.dwattr DW$242, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$242, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$242, DW_AT_accessibility(DW_ACCESS_public)
DW$243	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$243, DW_AT_name("lineout_flag"), DW_AT_symbol_name("_lineout_flag")
	.dwattr DW$243, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$243, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$243, DW_AT_accessibility(DW_ACCESS_public)
DW$244	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$244, DW_AT_name("end_flag"), DW_AT_symbol_name("_end_flag")
	.dwattr DW$244, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$244, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$244, DW_AT_accessibility(DW_ACCESS_public)
DW$245	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$245, DW_AT_name("stop_check"), DW_AT_symbol_name("_stop_check")
	.dwattr DW$245, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$245, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$245, DW_AT_accessibility(DW_ACCESS_public)
DW$246	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$246, DW_AT_name("Rturnmark_flag"), DW_AT_symbol_name("_Rturnmark_flag")
	.dwattr DW$246, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$246, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$246, DW_AT_accessibility(DW_ACCESS_public)
DW$247	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$247, DW_AT_name("Lturnmark_flag"), DW_AT_symbol_name("_Lturnmark_flag")
	.dwattr DW$247, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$247, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$247, DW_AT_accessibility(DW_ACCESS_public)
DW$248	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$248, DW_AT_name("speed_up"), DW_AT_symbol_name("_speed_up")
	.dwattr DW$248, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$248, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$248, DW_AT_accessibility(DW_ACCESS_public)
DW$249	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$249, DW_AT_name("speed_up_start"), DW_AT_symbol_name("_speed_up_start")
	.dwattr DW$249, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$249, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$249, DW_AT_accessibility(DW_ACCESS_public)
DW$250	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$250, DW_AT_name("straight_run"), DW_AT_symbol_name("_straight_run")
	.dwattr DW$250, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$250, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$250, DW_AT_accessibility(DW_ACCESS_public)
DW$251	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$251, DW_AT_name("first_race"), DW_AT_symbol_name("_first_race")
	.dwattr DW$251, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$251, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$251, DW_AT_accessibility(DW_ACCESS_public)
DW$252	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$252, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$252, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$252, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$252, DW_AT_accessibility(DW_ACCESS_public)
DW$253	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$253, DW_AT_name("race_start"), DW_AT_symbol_name("_race_start")
	.dwattr DW$253, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$253, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$253, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$42


DW$T$25	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$25, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$25, DW_AT_byte_size(0x02)
DW$254	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$254, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$254, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$254, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$254, DW_AT_accessibility(DW_ACCESS_public)
DW$255	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$255, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$255, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$255, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$255, DW_AT_accessibility(DW_ACCESS_public)
DW$256	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$256, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$256, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$256, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$256, DW_AT_accessibility(DW_ACCESS_public)
DW$257	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$257, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$257, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$257, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$257, DW_AT_accessibility(DW_ACCESS_public)
DW$258	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$258, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$258, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$258, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$258, DW_AT_accessibility(DW_ACCESS_public)
DW$259	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$259, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$259, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$259, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$259, DW_AT_accessibility(DW_ACCESS_public)
DW$260	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$260, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$260, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$260, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$260, DW_AT_accessibility(DW_ACCESS_public)
DW$261	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$261, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$261, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$261, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$261, DW_AT_accessibility(DW_ACCESS_public)
DW$262	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$262, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$262, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$262, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$262, DW_AT_accessibility(DW_ACCESS_public)
DW$263	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$263, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$263, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$263, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$263, DW_AT_accessibility(DW_ACCESS_public)
DW$264	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$264, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$264, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$264, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$264, DW_AT_accessibility(DW_ACCESS_public)
DW$265	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$265, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$265, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$265, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$265, DW_AT_accessibility(DW_ACCESS_public)
DW$266	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$266, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$266, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$266, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$266, DW_AT_accessibility(DW_ACCESS_public)
DW$267	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$267, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$267, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$267, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$267, DW_AT_accessibility(DW_ACCESS_public)
DW$268	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$268, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$268, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$268, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$268, DW_AT_accessibility(DW_ACCESS_public)
DW$269	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$269, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$269, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$269, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$269, DW_AT_accessibility(DW_ACCESS_public)
DW$270	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$270, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$270, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$270, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$270, DW_AT_accessibility(DW_ACCESS_public)
DW$271	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$271, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$271, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$271, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$271, DW_AT_accessibility(DW_ACCESS_public)
DW$272	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$272, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$272, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$272, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$272, DW_AT_accessibility(DW_ACCESS_public)
DW$273	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$273, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$273, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$273, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$273, DW_AT_accessibility(DW_ACCESS_public)
DW$274	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$274, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$274, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$274, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$274, DW_AT_accessibility(DW_ACCESS_public)
DW$275	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$275, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$275, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$275, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$275, DW_AT_accessibility(DW_ACCESS_public)
DW$276	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$276, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$276, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$276, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$276, DW_AT_accessibility(DW_ACCESS_public)
DW$277	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$277, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$277, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$277, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$277, DW_AT_accessibility(DW_ACCESS_public)
DW$278	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$278, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$278, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$278, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$278, DW_AT_accessibility(DW_ACCESS_public)
DW$279	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$279, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$279, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$279, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$279, DW_AT_accessibility(DW_ACCESS_public)
DW$280	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$280, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$280, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$280, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$280, DW_AT_accessibility(DW_ACCESS_public)
DW$281	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$281, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$281, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$281, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$281, DW_AT_accessibility(DW_ACCESS_public)
DW$282	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$282, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$282, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$282, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$282, DW_AT_accessibility(DW_ACCESS_public)
DW$283	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$283, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$283, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$283, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$283, DW_AT_accessibility(DW_ACCESS_public)
DW$284	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$284, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$284, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$284, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$284, DW_AT_accessibility(DW_ACCESS_public)
DW$285	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$285, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$285, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$285, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$285, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$25


DW$T$27	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$27, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$27, DW_AT_byte_size(0x02)
DW$286	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$286, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$286, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$286, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$286, DW_AT_accessibility(DW_ACCESS_public)
DW$287	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$287, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$287, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$287, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$287, DW_AT_accessibility(DW_ACCESS_public)
DW$288	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$288, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$288, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$288, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$288, DW_AT_accessibility(DW_ACCESS_public)
DW$289	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$289, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$289, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$289, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$289, DW_AT_accessibility(DW_ACCESS_public)
DW$290	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$290, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$290, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$290, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$290, DW_AT_accessibility(DW_ACCESS_public)
DW$291	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$291, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$291, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$291, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$291, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$27


DW$T$31	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$31, DW_AT_name("TIM_REG")
	.dwattr DW$T$31, DW_AT_byte_size(0x02)
DW$292	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$292, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$292, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$292, DW_AT_accessibility(DW_ACCESS_public)
DW$293	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$293, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$293, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$293, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$31


DW$T$33	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$33, DW_AT_name("PRD_REG")
	.dwattr DW$T$33, DW_AT_byte_size(0x02)
DW$294	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$294, DW_AT_name("LSW"), DW_AT_symbol_name("_LSW")
	.dwattr DW$294, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$294, DW_AT_accessibility(DW_ACCESS_public)
DW$295	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$295, DW_AT_name("MSW"), DW_AT_symbol_name("_MSW")
	.dwattr DW$295, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$295, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$33


DW$T$35	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$35, DW_AT_name("TCR_BITS")
	.dwattr DW$T$35, DW_AT_byte_size(0x01)
DW$296	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$296, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$296, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x04)
	.dwattr DW$296, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$296, DW_AT_accessibility(DW_ACCESS_public)
DW$297	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$297, DW_AT_name("TSS"), DW_AT_symbol_name("_TSS")
	.dwattr DW$297, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$297, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$297, DW_AT_accessibility(DW_ACCESS_public)
DW$298	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$298, DW_AT_name("TRB"), DW_AT_symbol_name("_TRB")
	.dwattr DW$298, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$298, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$298, DW_AT_accessibility(DW_ACCESS_public)
DW$299	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$299, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$299, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x04)
	.dwattr DW$299, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$299, DW_AT_accessibility(DW_ACCESS_public)
DW$300	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$300, DW_AT_name("SOFT"), DW_AT_symbol_name("_SOFT")
	.dwattr DW$300, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$300, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$300, DW_AT_accessibility(DW_ACCESS_public)
DW$301	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$301, DW_AT_name("FREE"), DW_AT_symbol_name("_FREE")
	.dwattr DW$301, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$301, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$301, DW_AT_accessibility(DW_ACCESS_public)
DW$302	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$302, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$302, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x02)
	.dwattr DW$302, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$302, DW_AT_accessibility(DW_ACCESS_public)
DW$303	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$303, DW_AT_name("TIE"), DW_AT_symbol_name("_TIE")
	.dwattr DW$303, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$303, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$303, DW_AT_accessibility(DW_ACCESS_public)
DW$304	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$304, DW_AT_name("TIF"), DW_AT_symbol_name("_TIF")
	.dwattr DW$304, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$304, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$304, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$35


DW$T$37	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$37, DW_AT_name("TPR_BITS")
	.dwattr DW$T$37, DW_AT_byte_size(0x01)
DW$305	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$305, DW_AT_name("TDDR"), DW_AT_symbol_name("_TDDR")
	.dwattr DW$305, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$305, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$305, DW_AT_accessibility(DW_ACCESS_public)
DW$306	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$306, DW_AT_name("PSC"), DW_AT_symbol_name("_PSC")
	.dwattr DW$306, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$306, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$306, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$37


DW$T$39	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$39, DW_AT_name("TPRH_BITS")
	.dwattr DW$T$39, DW_AT_byte_size(0x01)
DW$307	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$307, DW_AT_name("TDDRH"), DW_AT_symbol_name("_TDDRH")
	.dwattr DW$307, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x08)
	.dwattr DW$307, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$307, DW_AT_accessibility(DW_ACCESS_public)
DW$308	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$308, DW_AT_name("PSCH"), DW_AT_symbol_name("_PSCH")
	.dwattr DW$308, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x08)
	.dwattr DW$308, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$308, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$39


	.dwattr DW$143, DW_AT_external(0x01)
	.dwattr DW$134, DW_AT_external(0x01)
	.dwattr DW$127, DW_AT_external(0x01)
	.dwattr DW$120, DW_AT_external(0x01)
	.dwattr DW$113, DW_AT_external(0x01)
	.dwattr DW$106, DW_AT_external(0x01)
	.dwattr DW$78, DW_AT_external(0x01)
	.dwattr DW$103, DW_AT_external(0x01)
	.dwattr DW$86, DW_AT_external(0x01)
	.dwattr DW$83, DW_AT_external(0x01)
	.dwattr DW$82, DW_AT_external(0x01)
	.dwattr DW$81, DW_AT_external(0x01)
	.dwattr DW$66, DW_AT_external(0x01)
	.dwattr DW$48, DW_AT_external(0x01)
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

DW$309	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$309, DW_AT_location[DW_OP_reg0]
DW$310	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$310, DW_AT_location[DW_OP_reg1]
DW$311	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$311, DW_AT_location[DW_OP_reg2]
DW$312	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$312, DW_AT_location[DW_OP_reg3]
DW$313	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$313, DW_AT_location[DW_OP_reg4]
DW$314	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$314, DW_AT_location[DW_OP_reg5]
DW$315	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$315, DW_AT_location[DW_OP_reg6]
DW$316	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$316, DW_AT_location[DW_OP_reg7]
DW$317	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$317, DW_AT_location[DW_OP_reg8]
DW$318	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$318, DW_AT_location[DW_OP_reg9]
DW$319	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$319, DW_AT_location[DW_OP_reg10]
DW$320	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$320, DW_AT_location[DW_OP_reg11]
DW$321	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$321, DW_AT_location[DW_OP_reg12]
DW$322	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$322, DW_AT_location[DW_OP_reg13]
DW$323	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$323, DW_AT_location[DW_OP_reg14]
DW$324	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$324, DW_AT_location[DW_OP_reg15]
DW$325	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$325, DW_AT_location[DW_OP_reg16]
DW$326	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$326, DW_AT_location[DW_OP_reg17]
DW$327	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$327, DW_AT_location[DW_OP_reg18]
DW$328	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$328, DW_AT_location[DW_OP_reg19]
DW$329	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$329, DW_AT_location[DW_OP_reg20]
DW$330	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$330, DW_AT_location[DW_OP_reg21]
DW$331	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$331, DW_AT_location[DW_OP_reg22]
DW$332	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$332, DW_AT_location[DW_OP_reg23]
DW$333	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$333, DW_AT_location[DW_OP_reg24]
DW$334	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$334, DW_AT_location[DW_OP_reg25]
DW$335	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$335, DW_AT_location[DW_OP_reg26]
DW$336	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$336, DW_AT_location[DW_OP_reg27]
DW$337	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$337, DW_AT_location[DW_OP_reg28]
DW$338	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$338, DW_AT_location[DW_OP_reg29]
DW$339	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$339, DW_AT_location[DW_OP_reg30]
DW$340	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$340, DW_AT_location[DW_OP_reg31]
DW$341	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$341, DW_AT_location[DW_OP_regx 0x20]
DW$342	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$342, DW_AT_location[DW_OP_regx 0x21]
DW$343	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$343, DW_AT_location[DW_OP_regx 0x22]
DW$344	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$344, DW_AT_location[DW_OP_regx 0x23]
DW$345	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$345, DW_AT_location[DW_OP_regx 0x24]
DW$346	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$346, DW_AT_location[DW_OP_regx 0x25]
DW$347	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$347, DW_AT_location[DW_OP_regx 0x26]
DW$348	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$348, DW_AT_location[DW_OP_regx 0x27]
DW$349	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$349, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

