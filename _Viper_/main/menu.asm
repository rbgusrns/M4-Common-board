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
;**************************************************************
;* CINIT RECORDS                                              *
;**************************************************************
	.sect	".cinit"
	.align	1
	.field  	-IR_1,16
	.field  	_SELECT+0,32
	.field  	__motor__,32		; _SELECT[0][0] @ 0
	.field  	_VELOCITY,32		; _SELECT[0][1] @ 32
	.field  	_ACCELERATION,32		; _SELECT[0][2] @ 64
	.field  	_HANDLE_ACC,32		; _SELECT[0][3] @ 96
	.field  	_HANDLE_DEC,32		; _SELECT[0][4] @ 128
	.field  	__sensor_,32		; _SELECT[1][0] @ 160
	.field  	_max__min,32		; _SELECT[1][1] @ 192
	.field  	___4095__,32		; _SELECT[1][2] @ 224
	.field  	_SEN_127_,32		; _SELECT[1][3] @ 256
	.field  	_POSCHECK,32		; _SELECT[1][4] @ 288
	.field  	___run___,32		; _SELECT[2][0] @ 320
	.field  	__1st_run,32		; _SELECT[2][1] @ 352
	.field  	__2nd_run,32		; _SELECT[2][2] @ 384
	.field  	_TURNDIST,32		; _SELECT[2][3] @ 416
	.field  	_TURNMARK,32		; _SELECT[2][4] @ 448
IR_1:	.set	30


DW$1	.dwtag  DW_TAG_subprogram, DW_AT_name("F_ENDACCEL"), DW_AT_symbol_name("_F_ENDACCEL")
	.dwattr DW$1, DW_AT_declaration(0x01)
	.dwattr DW$1, DW_AT_external(0x01)

DW$2	.dwtag  DW_TAG_subprogram, DW_AT_name("F_HANDLE_DEC"), DW_AT_symbol_name("_F_HANDLE_DEC")
	.dwattr DW$2, DW_AT_declaration(0x01)
	.dwattr DW$2, DW_AT_external(0x01)

DW$3	.dwtag  DW_TAG_subprogram, DW_AT_name("F_4095"), DW_AT_symbol_name("_F_4095")
	.dwattr DW$3, DW_AT_declaration(0x01)
	.dwattr DW$3, DW_AT_external(0x01)

DW$4	.dwtag  DW_TAG_subprogram, DW_AT_name("F_TURNDIST"), DW_AT_symbol_name("_F_TURNDIST")
	.dwattr DW$4, DW_AT_declaration(0x01)
	.dwattr DW$4, DW_AT_external(0x01)

DW$5	.dwtag  DW_TAG_subprogram, DW_AT_name("F_VELOCITY"), DW_AT_symbol_name("_F_VELOCITY")
	.dwattr DW$5, DW_AT_declaration(0x01)
	.dwattr DW$5, DW_AT_external(0x01)

DW$6	.dwtag  DW_TAG_subprogram, DW_AT_name("VFDPrintf"), DW_AT_symbol_name("_VFDPrintf")
	.dwattr DW$6, DW_AT_declaration(0x01)
	.dwattr DW$6, DW_AT_external(0x01)
DW$7	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$8	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$6


DW$9	.dwtag  DW_TAG_subprogram, DW_AT_name("F_HANDLE_ACC"), DW_AT_symbol_name("_F_HANDLE_ACC")
	.dwattr DW$9, DW_AT_declaration(0x01)
	.dwattr DW$9, DW_AT_external(0x01)

DW$10	.dwtag  DW_TAG_subprogram, DW_AT_name("F_ACCELERATION"), DW_AT_symbol_name("_F_ACCELERATION")
	.dwattr DW$10, DW_AT_declaration(0x01)
	.dwattr DW$10, DW_AT_external(0x01)

DW$11	.dwtag  DW_TAG_subprogram, DW_AT_name("second_race"), DW_AT_symbol_name("_second_race")
	.dwattr DW$11, DW_AT_declaration(0x01)
	.dwattr DW$11, DW_AT_external(0x01)

DW$12	.dwtag  DW_TAG_subprogram, DW_AT_name("F_1st_run"), DW_AT_symbol_name("_F_1st_run")
	.dwattr DW$12, DW_AT_declaration(0x01)
	.dwattr DW$12, DW_AT_external(0x01)

DW$13	.dwtag  DW_TAG_subprogram, DW_AT_name("DSP28x_usDelay"), DW_AT_symbol_name("_DSP28x_usDelay")
	.dwattr DW$13, DW_AT_declaration(0x01)
	.dwattr DW$13, DW_AT_external(0x01)
DW$14	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$13


DW$15	.dwtag  DW_TAG_subprogram, DW_AT_name("F_127"), DW_AT_symbol_name("_F_127")
	.dwattr DW$15, DW_AT_declaration(0x01)
	.dwattr DW$15, DW_AT_external(0x01)

DW$16	.dwtag  DW_TAG_subprogram, DW_AT_name("F_Max_min"), DW_AT_symbol_name("_F_Max_min")
	.dwattr DW$16, DW_AT_declaration(0x01)
	.dwattr DW$16, DW_AT_external(0x01)

DW$17	.dwtag  DW_TAG_subprogram, DW_AT_name("F_POSCHECK"), DW_AT_symbol_name("_F_POSCHECK")
	.dwattr DW$17, DW_AT_declaration(0x01)
	.dwattr DW$17, DW_AT_external(0x01)

DW$18	.dwtag  DW_TAG_subprogram, DW_AT_name("F_TURNMARK"), DW_AT_symbol_name("_F_TURNMARK")
	.dwattr DW$18, DW_AT_declaration(0x01)
	.dwattr DW$18, DW_AT_external(0x01)
DW$19	.dwtag  DW_TAG_variable, DW_AT_name("a"), DW_AT_symbol_name("_a")
	.dwattr DW$19, DW_AT_type(*DW$T$10)
	.dwattr DW$19, DW_AT_declaration(0x01)
	.dwattr DW$19, DW_AT_external(0x01)
DW$20	.dwtag  DW_TAG_variable, DW_AT_name("b"), DW_AT_symbol_name("_b")
	.dwattr DW$20, DW_AT_type(*DW$T$10)
	.dwattr DW$20, DW_AT_declaration(0x01)
	.dwattr DW$20, DW_AT_external(0x01)
	.global	_SELECT
_SELECT:	.usect	".ebss",30,1,1
DW$21	.dwtag  DW_TAG_variable, DW_AT_name("SELECT"), DW_AT_symbol_name("_SELECT")
	.dwattr DW$21, DW_AT_location[DW_OP_addr _SELECT]
	.dwattr DW$21, DW_AT_type(*DW$T$34)
	.dwattr DW$21, DW_AT_external(0x01)
DW$22	.dwtag  DW_TAG_variable, DW_AT_name("GpioDataRegs"), DW_AT_symbol_name("_GpioDataRegs")
	.dwattr DW$22, DW_AT_type(*DW$T$44)
	.dwattr DW$22, DW_AT_declaration(0x01)
	.dwattr DW$22, DW_AT_external(0x01)
;	c:\project\_Viper_\Compiler\bin\opt2000.exe C:\Users\rbgus\AppData\Local\Temp\TI85210 C:\Users\rbgus\AppData\Local\Temp\TI8524 
;	c:\project\_Viper_\Compiler\bin\ac2000.exe --keep_unneeded_types -D_INLINE -DLARGE_MODEL -IC:\project\_Viper_\include --version=28 --keep_unneeded_types --mem_model:code=flat --mem_model:data=large -m --i_output_file C:\Users\rbgus\AppData\Local\Temp\TI8522 --template_info_file C:\Users\rbgus\AppData\Local\Temp\TI8526 --object_file menu.obj --embed_opts 10 --call_assumptions=0 --mem_model:code=flat --mem_model:data=large --opt_for_speed --opt_level=3 --optimizer_comments --optimizer_interlist 
	.sect	".text"
	.global	_TURNMARK

DW$23	.dwtag  DW_TAG_subprogram, DW_AT_name("TURNMARK"), DW_AT_symbol_name("_TURNMARK")
	.dwattr DW$23, DW_AT_low_pc(_TURNMARK)
	.dwattr DW$23, DW_AT_high_pc(0x00)
	.dwattr DW$23, DW_AT_begin_file("menu.c")
	.dwattr DW$23, DW_AT_begin_line(0xa6)
	.dwattr DW$23, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",167,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _TURNMARK                     FR SIZE:   2           *
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
_TURNMARK:
;*** 168	-----------------------    VFDPrintf("TURNMARK");
;*** 170	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",168,2
        MOVL      XAR4,#FSL1            ; |168| 
        MOVL      *-SP[2],XAR4          ; |168| 
        LCR       #_VFDPrintf           ; |168| 
        ; call occurs [#_VFDPrintf] ; |168| 
	.dwpsn	"menu.c",170,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |170| 
        BF        L1,TC                 ; |170| 
        ; branchcc occurs ; |170| 
;*** 170	-----------------------    F_TURNMARK();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",170,18
        LCR       #_F_TURNMARK          ; |170| 
        ; call occurs [#_F_TURNMARK] ; |170| 
L1:    
	.dwpsn	"menu.c",171,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$23, DW_AT_end_file("menu.c")
	.dwattr DW$23, DW_AT_end_line(0xab)
	.dwattr DW$23, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$23

	.sect	".text"
	.global	_TURNDIST

DW$24	.dwtag  DW_TAG_subprogram, DW_AT_name("TURNDIST"), DW_AT_symbol_name("_TURNDIST")
	.dwattr DW$24, DW_AT_low_pc(_TURNDIST)
	.dwattr DW$24, DW_AT_high_pc(0x00)
	.dwattr DW$24, DW_AT_begin_file("menu.c")
	.dwattr DW$24, DW_AT_begin_line(0x49)
	.dwattr DW$24, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",74,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _TURNDIST                     FR SIZE:   2           *
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
_TURNDIST:
;*** 75	-----------------------    VFDPrintf("TURNDIST");
;*** 77	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",75,2
        MOVL      XAR4,#FSL2            ; |75| 
        MOVL      *-SP[2],XAR4          ; |75| 
        LCR       #_VFDPrintf           ; |75| 
        ; call occurs [#_VFDPrintf] ; |75| 
	.dwpsn	"menu.c",77,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |77| 
        BF        L2,TC                 ; |77| 
        ; branchcc occurs ; |77| 
;*** 77	-----------------------    F_TURNDIST();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",77,15
        LCR       #_F_TURNDIST          ; |77| 
        ; call occurs [#_F_TURNDIST] ; |77| 
L2:    
	.dwpsn	"menu.c",78,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$24, DW_AT_end_file("menu.c")
	.dwattr DW$24, DW_AT_end_line(0x4e)
	.dwattr DW$24, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$24

	.sect	".text"
	.global	__2nd_run

DW$25	.dwtag  DW_TAG_subprogram, DW_AT_name("_2nd_run"), DW_AT_symbol_name("__2nd_run")
	.dwattr DW$25, DW_AT_low_pc(__2nd_run)
	.dwattr DW$25, DW_AT_high_pc(0x00)
	.dwattr DW$25, DW_AT_begin_file("menu.c")
	.dwattr DW$25, DW_AT_begin_line(0x27)
	.dwattr DW$25, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",40,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: __2nd_run                     FR SIZE:   2           *
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
__2nd_run:
;*** 41	-----------------------    VFDPrintf("2nd_RACE");
;*** 43	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",41,2
        MOVL      XAR4,#FSL3            ; |41| 
        MOVL      *-SP[2],XAR4          ; |41| 
        LCR       #_VFDPrintf           ; |41| 
        ; call occurs [#_VFDPrintf] ; |41| 
	.dwpsn	"menu.c",43,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |43| 
        BF        L3,TC                 ; |43| 
        ; branchcc occurs ; |43| 
;*** 43	-----------------------    second_race();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",43,15
        LCR       #_second_race         ; |43| 
        ; call occurs [#_second_race] ; |43| 
L3:    
	.dwpsn	"menu.c",44,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$25, DW_AT_end_file("menu.c")
	.dwattr DW$25, DW_AT_end_line(0x2c)
	.dwattr DW$25, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$25

	.sect	".text"
	.global	__1st_run

DW$26	.dwtag  DW_TAG_subprogram, DW_AT_name("_1st_run"), DW_AT_symbol_name("__1st_run")
	.dwattr DW$26, DW_AT_low_pc(__1st_run)
	.dwattr DW$26, DW_AT_high_pc(0x00)
	.dwattr DW$26, DW_AT_begin_file("menu.c")
	.dwattr DW$26, DW_AT_begin_line(0x7a)
	.dwattr DW$26, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",123,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: __1st_run                     FR SIZE:   2           *
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
__1st_run:
;*** 124	-----------------------    VFDPrintf("1st_RACE");
;*** 126	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",124,2
        MOVL      XAR4,#FSL4            ; |124| 
        MOVL      *-SP[2],XAR4          ; |124| 
        LCR       #_VFDPrintf           ; |124| 
        ; call occurs [#_VFDPrintf] ; |124| 
	.dwpsn	"menu.c",126,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |126| 
        BF        L4,TC                 ; |126| 
        ; branchcc occurs ; |126| 
;*** 126	-----------------------    F_1st_run();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",126,15
        LCR       #_F_1st_run           ; |126| 
        ; call occurs [#_F_1st_run] ; |126| 
L4:    
	.dwpsn	"menu.c",128,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$26, DW_AT_end_file("menu.c")
	.dwattr DW$26, DW_AT_end_line(0x80)
	.dwattr DW$26, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$26

	.sect	".text"
	.global	___run___

DW$27	.dwtag  DW_TAG_subprogram, DW_AT_name("__run___"), DW_AT_symbol_name("___run___")
	.dwattr DW$27, DW_AT_low_pc(___run___)
	.dwattr DW$27, DW_AT_high_pc(0x00)
	.dwattr DW$27, DW_AT_begin_file("menu.c")
	.dwattr DW$27, DW_AT_begin_line(0x3a)
	.dwattr DW$27, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",59,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: ___run___                     FR SIZE:   2           *
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
___run___:
;*** 60	-----------------------    VFDPrintf("__RACE__");
;*** 60	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",60,2
        MOVL      XAR4,#FSL5            ; |60| 
        MOVL      *-SP[2],XAR4          ; |60| 
        LCR       #_VFDPrintf           ; |60| 
        ; call occurs [#_VFDPrintf] ; |60| 
	.dwpsn	"menu.c",61,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$27, DW_AT_end_file("menu.c")
	.dwattr DW$27, DW_AT_end_line(0x3d)
	.dwattr DW$27, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$27

	.sect	".text"
	.global	_POSCHECK

DW$28	.dwtag  DW_TAG_subprogram, DW_AT_name("POSCHECK"), DW_AT_symbol_name("_POSCHECK")
	.dwattr DW$28, DW_AT_low_pc(_POSCHECK)
	.dwattr DW$28, DW_AT_high_pc(0x00)
	.dwattr DW$28, DW_AT_begin_file("menu.c")
	.dwattr DW$28, DW_AT_begin_line(0x9d)
	.dwattr DW$28, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",158,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _POSCHECK                     FR SIZE:   2           *
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
_POSCHECK:
;*** 159	-----------------------    VFDPrintf("POSCHECK");
;*** 161	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",159,2
        MOVL      XAR4,#FSL6            ; |159| 
        MOVL      *-SP[2],XAR4          ; |159| 
        LCR       #_VFDPrintf           ; |159| 
        ; call occurs [#_VFDPrintf] ; |159| 
	.dwpsn	"menu.c",161,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |161| 
        BF        L5,TC                 ; |161| 
        ; branchcc occurs ; |161| 
;*** 161	-----------------------    F_POSCHECK();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",161,18
        LCR       #_F_POSCHECK          ; |161| 
        ; call occurs [#_F_POSCHECK] ; |161| 
L5:    
	.dwpsn	"menu.c",164,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$28, DW_AT_end_file("menu.c")
	.dwattr DW$28, DW_AT_end_line(0xa4)
	.dwattr DW$28, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$28

	.sect	".text"
	.global	_SEN_127_

DW$29	.dwtag  DW_TAG_subprogram, DW_AT_name("SEN_127_"), DW_AT_symbol_name("_SEN_127_")
	.dwattr DW$29, DW_AT_low_pc(_SEN_127_)
	.dwattr DW$29, DW_AT_high_pc(0x00)
	.dwattr DW$29, DW_AT_begin_file("menu.c")
	.dwattr DW$29, DW_AT_begin_line(0x83)
	.dwattr DW$29, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",132,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _SEN_127_                     FR SIZE:   2           *
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
_SEN_127_:
;*** 133	-----------------------    VFDPrintf("SEN_127_");
;*** 135	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",133,2
        MOVL      XAR4,#FSL7            ; |133| 
        MOVL      *-SP[2],XAR4          ; |133| 
        LCR       #_VFDPrintf           ; |133| 
        ; call occurs [#_VFDPrintf] ; |133| 
	.dwpsn	"menu.c",135,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |135| 
        BF        L6,TC                 ; |135| 
        ; branchcc occurs ; |135| 
;*** 135	-----------------------    F_127();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",135,19
        LCR       #_F_127               ; |135| 
        ; call occurs [#_F_127] ; |135| 
L6:    
	.dwpsn	"menu.c",138,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$29, DW_AT_end_file("menu.c")
	.dwattr DW$29, DW_AT_end_line(0x8a)
	.dwattr DW$29, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$29

	.sect	".text"
	.global	___4095__

DW$30	.dwtag  DW_TAG_subprogram, DW_AT_name("__4095__"), DW_AT_symbol_name("___4095__")
	.dwattr DW$30, DW_AT_low_pc(___4095__)
	.dwattr DW$30, DW_AT_high_pc(0x00)
	.dwattr DW$30, DW_AT_begin_file("menu.c")
	.dwattr DW$30, DW_AT_begin_line(0x95)
	.dwattr DW$30, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",150,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: ___4095__                     FR SIZE:   2           *
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
___4095__:
;*** 151	-----------------------    VFDPrintf("SEN_4095");
;*** 153	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",151,2
        MOVL      XAR4,#FSL8            ; |151| 
        MOVL      *-SP[2],XAR4          ; |151| 
        LCR       #_VFDPrintf           ; |151| 
        ; call occurs [#_VFDPrintf] ; |151| 
	.dwpsn	"menu.c",153,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |153| 
        BF        L7,TC                 ; |153| 
        ; branchcc occurs ; |153| 
;*** 153	-----------------------    F_4095();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",153,19
        LCR       #_F_4095              ; |153| 
        ; call occurs [#_F_4095] ; |153| 
L7:    
	.dwpsn	"menu.c",154,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$30, DW_AT_end_file("menu.c")
	.dwattr DW$30, DW_AT_end_line(0x9a)
	.dwattr DW$30, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$30

	.sect	".text"
	.global	_max__min

DW$31	.dwtag  DW_TAG_subprogram, DW_AT_name("max__min"), DW_AT_symbol_name("_max__min")
	.dwattr DW$31, DW_AT_low_pc(_max__min)
	.dwattr DW$31, DW_AT_high_pc(0x00)
	.dwattr DW$31, DW_AT_begin_file("menu.c")
	.dwattr DW$31, DW_AT_begin_line(0x8d)
	.dwattr DW$31, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",142,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _max__min                     FR SIZE:   2           *
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
_max__min:
;*** 143	-----------------------    VFDPrintf("MAX_MIN_");
;*** 145	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",143,2
        MOVL      XAR4,#FSL9            ; |143| 
        MOVL      *-SP[2],XAR4          ; |143| 
        LCR       #_VFDPrintf           ; |143| 
        ; call occurs [#_VFDPrintf] ; |143| 
	.dwpsn	"menu.c",145,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |145| 
        BF        L8,TC                 ; |145| 
        ; branchcc occurs ; |145| 
;*** 145	-----------------------    F_Max_min();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",145,19
        LCR       #_F_Max_min           ; |145| 
        ; call occurs [#_F_Max_min] ; |145| 
L8:    
	.dwpsn	"menu.c",146,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$31, DW_AT_end_file("menu.c")
	.dwattr DW$31, DW_AT_end_line(0x92)
	.dwattr DW$31, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$31

	.sect	".text"
	.global	__sensor_

DW$32	.dwtag  DW_TAG_subprogram, DW_AT_name("_sensor_"), DW_AT_symbol_name("__sensor_")
	.dwattr DW$32, DW_AT_low_pc(__sensor_)
	.dwattr DW$32, DW_AT_high_pc(0x00)
	.dwattr DW$32, DW_AT_begin_file("menu.c")
	.dwattr DW$32, DW_AT_begin_line(0x2e)
	.dwattr DW$32, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",47,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: __sensor_                     FR SIZE:   2           *
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
__sensor_:
;*** 48	-----------------------    VFDPrintf("_SENSOR_");
;*** 48	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",48,2
        MOVL      XAR4,#FSL10           ; |48| 
        MOVL      *-SP[2],XAR4          ; |48| 
        LCR       #_VFDPrintf           ; |48| 
        ; call occurs [#_VFDPrintf] ; |48| 
	.dwpsn	"menu.c",49,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$32, DW_AT_end_file("menu.c")
	.dwattr DW$32, DW_AT_end_line(0x31)
	.dwattr DW$32, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$32

	.sect	".text"
	.global	_HANDLE_DEC

DW$33	.dwtag  DW_TAG_subprogram, DW_AT_name("HANDLE_DEC"), DW_AT_symbol_name("_HANDLE_DEC")
	.dwattr DW$33, DW_AT_low_pc(_HANDLE_DEC)
	.dwattr DW$33, DW_AT_high_pc(0x00)
	.dwattr DW$33, DW_AT_begin_file("menu.c")
	.dwattr DW$33, DW_AT_begin_line(0x58)
	.dwattr DW$33, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",89,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _HANDLE_DEC                   FR SIZE:   2           *
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
_HANDLE_DEC:
;*** 90	-----------------------    VFDPrintf("HAND_DEC");
;*** 92	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",90,2
        MOVL      XAR4,#FSL11           ; |90| 
        MOVL      *-SP[2],XAR4          ; |90| 
        LCR       #_VFDPrintf           ; |90| 
        ; call occurs [#_VFDPrintf] ; |90| 
	.dwpsn	"menu.c",92,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |92| 
        BF        L9,TC                 ; |92| 
        ; branchcc occurs ; |92| 
;*** 92	-----------------------    F_HANDLE_DEC();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",92,15
        LCR       #_F_HANDLE_DEC        ; |92| 
        ; call occurs [#_F_HANDLE_DEC] ; |92| 
L9:    
	.dwpsn	"menu.c",93,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$33, DW_AT_end_file("menu.c")
	.dwattr DW$33, DW_AT_end_line(0x5d)
	.dwattr DW$33, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$33

	.sect	".text"
	.global	_HANDLE_ACC

DW$34	.dwtag  DW_TAG_subprogram, DW_AT_name("HANDLE_ACC"), DW_AT_symbol_name("_HANDLE_ACC")
	.dwattr DW$34, DW_AT_low_pc(_HANDLE_ACC)
	.dwattr DW$34, DW_AT_high_pc(0x00)
	.dwattr DW$34, DW_AT_begin_file("menu.c")
	.dwattr DW$34, DW_AT_begin_line(0x60)
	.dwattr DW$34, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",97,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _HANDLE_ACC                   FR SIZE:   2           *
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
_HANDLE_ACC:
;*** 98	-----------------------    VFDPrintf("HAND_ACC");
;*** 100	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",98,2
        MOVL      XAR4,#FSL12           ; |98| 
        MOVL      *-SP[2],XAR4          ; |98| 
        LCR       #_VFDPrintf           ; |98| 
        ; call occurs [#_VFDPrintf] ; |98| 
	.dwpsn	"menu.c",100,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |100| 
        BF        L10,TC                ; |100| 
        ; branchcc occurs ; |100| 
;*** 103	-----------------------    F_HANDLE_ACC();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",103,3
        LCR       #_F_HANDLE_ACC        ; |103| 
        ; call occurs [#_F_HANDLE_ACC] ; |103| 
L10:    
	.dwpsn	"menu.c",105,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$34, DW_AT_end_file("menu.c")
	.dwattr DW$34, DW_AT_end_line(0x69)
	.dwattr DW$34, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$34

	.sect	".text"
	.global	_ACCELERATION

DW$35	.dwtag  DW_TAG_subprogram, DW_AT_name("ACCELERATION"), DW_AT_symbol_name("_ACCELERATION")
	.dwattr DW$35, DW_AT_low_pc(_ACCELERATION)
	.dwattr DW$35, DW_AT_high_pc(0x00)
	.dwattr DW$35, DW_AT_begin_file("menu.c")
	.dwattr DW$35, DW_AT_begin_line(0x6b)
	.dwattr DW$35, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",108,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _ACCELERATION                 FR SIZE:   2           *
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
_ACCELERATION:
;*** 109	-----------------------    VFDPrintf("SET_ACC_");
;*** 111	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",109,2
        MOVL      XAR4,#FSL13           ; |109| 
        MOVL      *-SP[2],XAR4          ; |109| 
        LCR       #_VFDPrintf           ; |109| 
        ; call occurs [#_VFDPrintf] ; |109| 
	.dwpsn	"menu.c",111,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |111| 
        BF        L11,TC                ; |111| 
        ; branchcc occurs ; |111| 
;*** 111	-----------------------    F_ACCELERATION();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",111,15
        LCR       #_F_ACCELERATION      ; |111| 
        ; call occurs [#_F_ACCELERATION] ; |111| 
L11:    
	.dwpsn	"menu.c",112,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$35, DW_AT_end_file("menu.c")
	.dwattr DW$35, DW_AT_end_line(0x70)
	.dwattr DW$35, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$35

	.sect	".text"
	.global	_VELOCITY

DW$36	.dwtag  DW_TAG_subprogram, DW_AT_name("VELOCITY"), DW_AT_symbol_name("_VELOCITY")
	.dwattr DW$36, DW_AT_low_pc(_VELOCITY)
	.dwattr DW$36, DW_AT_high_pc(0x00)
	.dwattr DW$36, DW_AT_begin_file("menu.c")
	.dwattr DW$36, DW_AT_begin_line(0x72)
	.dwattr DW$36, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",115,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _VELOCITY                     FR SIZE:   2           *
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
_VELOCITY:
;*** 116	-----------------------    VFDPrintf("SET_VELO");
;*** 118	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",116,2
        MOVL      XAR4,#FSL14           ; |116| 
        MOVL      *-SP[2],XAR4          ; |116| 
        LCR       #_VFDPrintf           ; |116| 
        ; call occurs [#_VFDPrintf] ; |116| 
	.dwpsn	"menu.c",118,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |118| 
        BF        L12,TC                ; |118| 
        ; branchcc occurs ; |118| 
;*** 118	-----------------------    F_VELOCITY();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",118,15
        LCR       #_F_VELOCITY          ; |118| 
        ; call occurs [#_F_VELOCITY] ; |118| 
L12:    
	.dwpsn	"menu.c",119,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$36, DW_AT_end_file("menu.c")
	.dwattr DW$36, DW_AT_end_line(0x77)
	.dwattr DW$36, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$36

	.sect	".text"
	.global	__motor__

DW$37	.dwtag  DW_TAG_subprogram, DW_AT_name("_motor__"), DW_AT_symbol_name("__motor__")
	.dwattr DW$37, DW_AT_low_pc(__motor__)
	.dwattr DW$37, DW_AT_high_pc(0x00)
	.dwattr DW$37, DW_AT_begin_file("menu.c")
	.dwattr DW$37, DW_AT_begin_line(0x34)
	.dwattr DW$37, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",53,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: __motor__                     FR SIZE:   2           *
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
__motor__:
;*** 54	-----------------------    VFDPrintf("SETMOTOR");
;*** 54	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",54,2
        MOVL      XAR4,#FSL15           ; |54| 
        MOVL      *-SP[2],XAR4          ; |54| 
        LCR       #_VFDPrintf           ; |54| 
        ; call occurs [#_VFDPrintf] ; |54| 
	.dwpsn	"menu.c",55,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$37, DW_AT_end_file("menu.c")
	.dwattr DW$37, DW_AT_end_line(0x37)
	.dwattr DW$37, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$37

	.sect	".text"
	.global	_menu

DW$38	.dwtag  DW_TAG_subprogram, DW_AT_name("menu"), DW_AT_symbol_name("_menu")
	.dwattr DW$38, DW_AT_low_pc(_menu)
	.dwattr DW$38, DW_AT_high_pc(0x00)
	.dwattr DW$38, DW_AT_begin_file("menu.c")
	.dwattr DW$38, DW_AT_begin_line(0xaf)
	.dwattr DW$38, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",176,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _menu                         FR SIZE:   2           *
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
_menu:
;*** 177	-----------------------    C$1 = &GpioDataRegs;
;*** 177	-----------------------    ((volatile unsigned *)C$1)[5] |= 0x800u;
;*** 178	-----------------------    *(&GpioDataRegs+5L) |= 0x200u;
;*** 179	-----------------------    DSP28x_usDelay(2699998uL);
;*** 181	-----------------------    if ( !(*((volatile unsigned *)C$1+1)&0x10u) ) goto g6;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        MOVL      *SP++,XAR3
	.dwcfa	0x80, 11, 2
	.dwcfa	0x1d, -4
;* AR3   assigned to C$1
DW$39	.dwtag  DW_TAG_variable, DW_AT_name("C$1"), DW_AT_symbol_name("C$1")
	.dwattr DW$39, DW_AT_type(*DW$T$43)
	.dwattr DW$39, DW_AT_location[DW_OP_reg10]
	.dwpsn	"menu.c",177,2
        MOVL      XAR3,#_GpioDataRegs   ; |177| 
        OR        *+XAR3[5],#0x0800     ; |177| 
	.dwpsn	"menu.c",178,2
        MOVW      DP,#_GpioDataRegs+5
        OR        @_GpioDataRegs+5,#0x0200 ; |178| 
	.dwpsn	"menu.c",179,2
        MOV       AL,#13022
        MOV       AH,#41
        LCR       #_DSP28x_usDelay      ; |179| 
        ; call occurs [#_DSP28x_usDelay] ; |179| 
	.dwpsn	"menu.c",181,2
        TBIT      *+XAR3[1],#4          ; |181| 
        BF        L14,NTC               ; |181| 
        ; branchcc occurs ; |181| 
;*** 189	-----------------------    if ( !(*(&GpioDataRegs+1)&0x100u) ) goto g5;
	.dwpsn	"menu.c",189,7
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#8   ; |189| 
        BF        L13,NTC               ; |189| 
        ; branchcc occurs ; |189| 
;*** 197	-----------------------    if ( *(&GpioDataRegs+1)&0x20u ) goto g7;
	.dwpsn	"menu.c",197,7
        TBIT      @_GpioDataRegs+1,#5   ; |197| 
        BF        L15,TC                ; |197| 
        ; branchcc occurs ; |197| 
;*** 199	-----------------------    ((volatile unsigned *)C$1)[3] |= 0x200u;
;*** 200	-----------------------    *(&GpioDataRegs+3L) |= 0x800u;
;*** 201	-----------------------    ++a;
;*** 201	-----------------------    goto g7;
	.dwpsn	"menu.c",199,3
        OR        *+XAR3[3],#0x0200     ; |199| 
	.dwpsn	"menu.c",200,3
        OR        @_GpioDataRegs+3,#0x0800 ; |200| 
	.dwpsn	"menu.c",201,3
        MOVW      DP,#_a
        INC       @_a                   ; |201| 
        BF        L15,UNC               ; |201| 
        ; branch occurs ; |201| 
L13:    
;***	-----------------------g5:
;*** 191	-----------------------    *(&GpioDataRegs+3L) |= 0x200u;
;*** 192	-----------------------    *(&GpioDataRegs+3L) |= 0x800u;
;*** 193	-----------------------    --a;
;*** 194	-----------------------    goto g7;
	.dwpsn	"menu.c",191,4
        OR        @_GpioDataRegs+3,#0x0200 ; |191| 
	.dwpsn	"menu.c",192,4
        OR        @_GpioDataRegs+3,#0x0800 ; |192| 
	.dwpsn	"menu.c",193,4
        MOVW      DP,#_a
        DEC       @_a                   ; |193| 
	.dwpsn	"menu.c",194,2
        BF        L15,UNC               ; |194| 
        ; branch occurs ; |194| 
L14:    
;***	-----------------------g6:
;*** 183	-----------------------    *(&GpioDataRegs+3L) |= 0x800u;
;*** 184	-----------------------    *(&GpioDataRegs+3L) |= 0x200u;
;*** 185	-----------------------    ++b;
;*** 186	-----------------------    a = 0;
	.dwpsn	"menu.c",183,3
        MOVW      DP,#_GpioDataRegs+3
        OR        @_GpioDataRegs+3,#0x0800 ; |183| 
	.dwpsn	"menu.c",184,3
        OR        @_GpioDataRegs+3,#0x0200 ; |184| 
	.dwpsn	"menu.c",185,3
        MOVW      DP,#_b
        INC       @_b                   ; |185| 
	.dwpsn	"menu.c",186,3
        MOVW      DP,#_a
        MOV       @_a,#0                ; |186| 
L15:    
;***	-----------------------g7:
;*** 205	-----------------------    if ( b <= 2 ) goto g9;
	.dwpsn	"menu.c",205,2
        MOVW      DP,#_b
        MOV       AL,@_b                ; |205| 
        CMPB      AL,#2                 ; |205| 
        BF        L16,LEQ               ; |205| 
        ; branchcc occurs ; |205| 
;*** 205	-----------------------    b = 0;
	.dwpsn	"menu.c",205,11
        MOV       @_b,#0                ; |205| 
L16:    
;***	-----------------------g9:
;*** 207	-----------------------    if ( a >= 0 && a <= 4 ) goto g11;
	.dwpsn	"menu.c",207,2
        MOVW      DP,#_a
        MOV       AL,@_a                ; |207| 
        BF        L17,LT                ; |207| 
        ; branchcc occurs ; |207| 
        CMPB      AL,#4                 ; |207| 
        BF        L18,LEQ               ; |207| 
        ; branchcc occurs ; |207| 
L17:    
;*** 207	-----------------------    a = 0;
	.dwpsn	"menu.c",207,11
        MOV       @_a,#0                ; |207| 
L18:    
;***	-----------------------g11:
;*** 212	-----------------------    (*SELECT[5*(long)b+(long)a])();
;*** 212	-----------------------    return;
	.dwpsn	"menu.c",212,2
        MOVW      DP,#_b
        SETC      SXM
        MOV       T,@_b                 ; |212| 
        MOVL      XAR4,#_SELECT         ; |212| 
        MOVW      DP,#_a
        MPYB      P,T,#10               ; |212| 
        MOV       ACC,@_a << 1          ; |212| 
        ADDL      ACC,P
        ADDL      XAR4,ACC
        MOVL      XAR7,*+XAR4[0]        ; |212| 
        LCR       *XAR7                 ; |212| 
        ; call occurs [XAR7] ; |212| 
	.dwpsn	"menu.c",213,1
	.dwcfa	0x1d, -4
        MOVL      XAR3,*--SP
	.dwcfa	0x1d, -2
	.dwcfa	0xc0, 11
        LRETR
        ; return occurs
	.dwattr DW$38, DW_AT_end_file("menu.c")
	.dwattr DW$38, DW_AT_end_line(0xd5)
	.dwattr DW$38, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$38

	.sect	".text"
	.global	__NULL

DW$40	.dwtag  DW_TAG_subprogram, DW_AT_name("_NULL"), DW_AT_symbol_name("__NULL")
	.dwattr DW$40, DW_AT_low_pc(__NULL)
	.dwattr DW$40, DW_AT_high_pc(0x00)
	.dwattr DW$40, DW_AT_begin_file("menu.c")
	.dwattr DW$40, DW_AT_begin_line(0x40)
	.dwattr DW$40, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",65,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: __NULL                        FR SIZE:   2           *
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
__NULL:
;*** 67	-----------------------    VFDPrintf("NOTTING_");
;*** 68	-----------------------    DSP28x_usDelay(999998uL);
;*** 69	-----------------------    --a;
;*** 69	-----------------------    return;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",67,2
        MOVL      XAR4,#FSL16           ; |67| 
        MOVL      *-SP[2],XAR4          ; |67| 
        LCR       #_VFDPrintf           ; |67| 
        ; call occurs [#_VFDPrintf] ; |67| 
	.dwpsn	"menu.c",68,2
        MOV       AL,#16958
        MOV       AH,#15
        LCR       #_DSP28x_usDelay      ; |68| 
        ; call occurs [#_DSP28x_usDelay] ; |68| 
	.dwpsn	"menu.c",69,2
        MOVW      DP,#_a
        DEC       @_a                   ; |69| 
	.dwpsn	"menu.c",71,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$40, DW_AT_end_file("menu.c")
	.dwattr DW$40, DW_AT_end_line(0x47)
	.dwattr DW$40, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$40

	.sect	".text"
	.global	_ENDACCEL

DW$41	.dwtag  DW_TAG_subprogram, DW_AT_name("ENDACCEL"), DW_AT_symbol_name("_ENDACCEL")
	.dwattr DW$41, DW_AT_low_pc(_ENDACCEL)
	.dwattr DW$41, DW_AT_high_pc(0x00)
	.dwattr DW$41, DW_AT_begin_file("menu.c")
	.dwattr DW$41, DW_AT_begin_line(0x50)
	.dwattr DW$41, DW_AT_begin_column(0x06)
	.dwpsn	"menu.c",81,1

	.dwfde DW$CIE

;***************************************************************
;* FNAME: _ENDACCEL                     FR SIZE:   2           *
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
_ENDACCEL:
;*** 82	-----------------------    VFDPrintf("END_ACC_");
;*** 84	-----------------------    if ( *(&GpioDataRegs+1)&0x4000u ) goto g3;
	.dwcfa	0x1d, -2
	.dwcfa	0x1c, 26, 0
	.dwcfa	0x09, 40, 26
        ADDB      SP,#2
	.dwcfa	0x1d, -4
	.dwpsn	"menu.c",82,2
        MOVL      XAR4,#FSL17           ; |82| 
        MOVL      *-SP[2],XAR4          ; |82| 
        LCR       #_VFDPrintf           ; |82| 
        ; call occurs [#_VFDPrintf] ; |82| 
	.dwpsn	"menu.c",84,2
        MOVW      DP,#_GpioDataRegs+1
        TBIT      @_GpioDataRegs+1,#14  ; |84| 
        BF        L19,TC                ; |84| 
        ; branchcc occurs ; |84| 
;*** 84	-----------------------    F_ENDACCEL();
;***	-----------------------g3:
;***  	-----------------------    return;
	.dwpsn	"menu.c",84,15
        LCR       #_F_ENDACCEL          ; |84| 
        ; call occurs [#_F_ENDACCEL] ; |84| 
L19:    
	.dwpsn	"menu.c",85,1
        SUBB      SP,#2
	.dwcfa	0x1d, -2
        LRETR
        ; return occurs
	.dwattr DW$41, DW_AT_end_file("menu.c")
	.dwattr DW$41, DW_AT_end_line(0x55)
	.dwattr DW$41, DW_AT_end_column(0x01)
	.dwendentry
	.dwendtag DW$41

;***************************************************************
;* FAR STRINGS                                                 *
;***************************************************************
	.sect	".econst"
	.align	2
FSL1:	.string	"TURNMARK",0
	.align	2
FSL2:	.string	"TURNDIST",0
	.align	2
FSL3:	.string	"2nd_RACE",0
	.align	2
FSL4:	.string	"1st_RACE",0
	.align	2
FSL5:	.string	"__RACE__",0
	.align	2
FSL6:	.string	"POSCHECK",0
	.align	2
FSL7:	.string	"SEN_127_",0
	.align	2
FSL8:	.string	"SEN_4095",0
	.align	2
FSL9:	.string	"MAX_MIN_",0
	.align	2
FSL10:	.string	"_SENSOR_",0
	.align	2
FSL11:	.string	"HAND_DEC",0
	.align	2
FSL12:	.string	"HAND_ACC",0
	.align	2
FSL13:	.string	"SET_ACC_",0
	.align	2
FSL14:	.string	"SET_VELO",0
	.align	2
FSL15:	.string	"SETMOTOR",0
	.align	2
FSL16:	.string	"NOTTING_",0
	.align	2
FSL17:	.string	"END_ACC_",0
;***************************************************************
;* UNDEFINED EXTERNAL REFERENCES                               *
;***************************************************************
	.global	_F_ENDACCEL
	.global	_F_HANDLE_DEC
	.global	_F_4095
	.global	_F_TURNDIST
	.global	_F_VELOCITY
	.global	_VFDPrintf
	.global	_F_HANDLE_ACC
	.global	_F_ACCELERATION
	.global	_second_race
	.global	_F_1st_run
	.global	_DSP28x_usDelay
	.global	_F_127
	.global	_F_Max_min
	.global	_F_POSCHECK
	.global	_F_TURNMARK
	.global	_a
	.global	_b
	.global	_GpioDataRegs

;***************************************************************
;* TYPE INFORMATION                                            *
;***************************************************************

DW$T$29	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$29, DW_AT_language(DW_LANG_C)
DW$42	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$28)
DW$43	.dwtag  DW_TAG_unspecified_parameters
	.dwendtag DW$T$29


DW$T$31	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$31, DW_AT_language(DW_LANG_C)

DW$T$34	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$32)
	.dwattr DW$T$34, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$34, DW_AT_byte_size(0x1e)
DW$44	.dwtag  DW_TAG_subrange_type
	.dwattr DW$44, DW_AT_upper_bound(0x02)
DW$45	.dwtag  DW_TAG_subrange_type
	.dwattr DW$45, DW_AT_upper_bound(0x04)
	.dwendtag DW$T$34


DW$T$37	.dwtag  DW_TAG_subroutine_type
	.dwattr DW$T$37, DW_AT_language(DW_LANG_C)
DW$46	.dwtag  DW_TAG_formal_parameter, DW_AT_type(*DW$T$21)
	.dwendtag DW$T$37

DW$T$10	.dwtag  DW_TAG_base_type, DW_AT_name("int")
	.dwattr DW$T$10, DW_AT_encoding(DW_ATE_signed)
	.dwattr DW$T$10, DW_AT_byte_size(0x01)
DW$T$21	.dwtag  DW_TAG_typedef, DW_AT_name("Uint32"), DW_AT_type(*DW$T$13)
	.dwattr DW$T$21, DW_AT_language(DW_LANG_C)
DW$T$43	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$42)
	.dwattr DW$T$43, DW_AT_address_class(0x16)
DW$47	.dwtag  DW_TAG_far_type
	.dwattr DW$47, DW_AT_type(*DW$T$26)
DW$T$44	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$44, DW_AT_type(*DW$47)
DW$T$28	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$27)
	.dwattr DW$T$28, DW_AT_address_class(0x16)
DW$T$32	.dwtag  DW_TAG_pointer_type, DW_AT_type(*DW$T$31)
	.dwattr DW$T$32, DW_AT_address_class(0x16)
DW$T$13	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned long")
	.dwattr DW$T$13, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$13, DW_AT_byte_size(0x02)
DW$48	.dwtag  DW_TAG_far_type
	.dwattr DW$48, DW_AT_type(*DW$T$20)
DW$T$42	.dwtag  DW_TAG_volatile_type
	.dwattr DW$T$42, DW_AT_type(*DW$48)

DW$T$26	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$26, DW_AT_name("GPIO_DATA_REGS")
	.dwattr DW$T$26, DW_AT_byte_size(0x20)
DW$49	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$49, DW_AT_name("GPADAT"), DW_AT_symbol_name("_GPADAT")
	.dwattr DW$49, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$49, DW_AT_accessibility(DW_ACCESS_public)
DW$50	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$50, DW_AT_name("GPASET"), DW_AT_symbol_name("_GPASET")
	.dwattr DW$50, DW_AT_data_member_location[DW_OP_plus_uconst 0x2]
	.dwattr DW$50, DW_AT_accessibility(DW_ACCESS_public)
DW$51	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$51, DW_AT_name("GPACLEAR"), DW_AT_symbol_name("_GPACLEAR")
	.dwattr DW$51, DW_AT_data_member_location[DW_OP_plus_uconst 0x4]
	.dwattr DW$51, DW_AT_accessibility(DW_ACCESS_public)
DW$52	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$22)
	.dwattr DW$52, DW_AT_name("GPATOGGLE"), DW_AT_symbol_name("_GPATOGGLE")
	.dwattr DW$52, DW_AT_data_member_location[DW_OP_plus_uconst 0x6]
	.dwattr DW$52, DW_AT_accessibility(DW_ACCESS_public)
DW$53	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$53, DW_AT_name("GPBDAT"), DW_AT_symbol_name("_GPBDAT")
	.dwattr DW$53, DW_AT_data_member_location[DW_OP_plus_uconst 0x8]
	.dwattr DW$53, DW_AT_accessibility(DW_ACCESS_public)
DW$54	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$54, DW_AT_name("GPBSET"), DW_AT_symbol_name("_GPBSET")
	.dwattr DW$54, DW_AT_data_member_location[DW_OP_plus_uconst 0xa]
	.dwattr DW$54, DW_AT_accessibility(DW_ACCESS_public)
DW$55	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$55, DW_AT_name("GPBCLEAR"), DW_AT_symbol_name("_GPBCLEAR")
	.dwattr DW$55, DW_AT_data_member_location[DW_OP_plus_uconst 0xc]
	.dwattr DW$55, DW_AT_accessibility(DW_ACCESS_public)
DW$56	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$24)
	.dwattr DW$56, DW_AT_name("GPBTOGGLE"), DW_AT_symbol_name("_GPBTOGGLE")
	.dwattr DW$56, DW_AT_data_member_location[DW_OP_plus_uconst 0xe]
	.dwattr DW$56, DW_AT_accessibility(DW_ACCESS_public)
DW$57	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$25)
	.dwattr DW$57, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$57, DW_AT_data_member_location[DW_OP_plus_uconst 0x10]
	.dwattr DW$57, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$26

DW$T$27	.dwtag  DW_TAG_base_type, DW_AT_name("signed char")
	.dwattr DW$T$27, DW_AT_encoding(DW_ATE_signed_char)
	.dwattr DW$T$27, DW_AT_byte_size(0x01)

DW$T$25	.dwtag  DW_TAG_array_type, DW_AT_type(*DW$T$19)
	.dwattr DW$T$25, DW_AT_language(DW_LANG_C)
	.dwattr DW$T$25, DW_AT_byte_size(0x10)
DW$58	.dwtag  DW_TAG_subrange_type
	.dwattr DW$58, DW_AT_upper_bound(0x0f)
	.dwendtag DW$T$25


DW$T$20	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$20, DW_AT_name("GPADAT_BITS")
	.dwattr DW$T$20, DW_AT_byte_size(0x02)
DW$59	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$59, DW_AT_name("GPIO0"), DW_AT_symbol_name("_GPIO0")
	.dwattr DW$59, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$59, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$59, DW_AT_accessibility(DW_ACCESS_public)
DW$60	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$60, DW_AT_name("GPIO1"), DW_AT_symbol_name("_GPIO1")
	.dwattr DW$60, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$60, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$60, DW_AT_accessibility(DW_ACCESS_public)
DW$61	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$61, DW_AT_name("GPIO2"), DW_AT_symbol_name("_GPIO2")
	.dwattr DW$61, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$61, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$61, DW_AT_accessibility(DW_ACCESS_public)
DW$62	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$62, DW_AT_name("GPIO3"), DW_AT_symbol_name("_GPIO3")
	.dwattr DW$62, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$62, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$62, DW_AT_accessibility(DW_ACCESS_public)
DW$63	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$63, DW_AT_name("GPIO4"), DW_AT_symbol_name("_GPIO4")
	.dwattr DW$63, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$63, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$63, DW_AT_accessibility(DW_ACCESS_public)
DW$64	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$64, DW_AT_name("GPIO5"), DW_AT_symbol_name("_GPIO5")
	.dwattr DW$64, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$64, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$64, DW_AT_accessibility(DW_ACCESS_public)
DW$65	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$65, DW_AT_name("GPIO6"), DW_AT_symbol_name("_GPIO6")
	.dwattr DW$65, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$65, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$65, DW_AT_accessibility(DW_ACCESS_public)
DW$66	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$66, DW_AT_name("GPIO7"), DW_AT_symbol_name("_GPIO7")
	.dwattr DW$66, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$66, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$66, DW_AT_accessibility(DW_ACCESS_public)
DW$67	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$67, DW_AT_name("GPIO8"), DW_AT_symbol_name("_GPIO8")
	.dwattr DW$67, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$67, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$67, DW_AT_accessibility(DW_ACCESS_public)
DW$68	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$68, DW_AT_name("GPIO9"), DW_AT_symbol_name("_GPIO9")
	.dwattr DW$68, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$68, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$68, DW_AT_accessibility(DW_ACCESS_public)
DW$69	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$69, DW_AT_name("GPIO10"), DW_AT_symbol_name("_GPIO10")
	.dwattr DW$69, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$69, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$69, DW_AT_accessibility(DW_ACCESS_public)
DW$70	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$70, DW_AT_name("GPIO11"), DW_AT_symbol_name("_GPIO11")
	.dwattr DW$70, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$70, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$70, DW_AT_accessibility(DW_ACCESS_public)
DW$71	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$71, DW_AT_name("GPIO12"), DW_AT_symbol_name("_GPIO12")
	.dwattr DW$71, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$71, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$71, DW_AT_accessibility(DW_ACCESS_public)
DW$72	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$72, DW_AT_name("GPIO13"), DW_AT_symbol_name("_GPIO13")
	.dwattr DW$72, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$72, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$72, DW_AT_accessibility(DW_ACCESS_public)
DW$73	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$73, DW_AT_name("GPIO14"), DW_AT_symbol_name("_GPIO14")
	.dwattr DW$73, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$73, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$73, DW_AT_accessibility(DW_ACCESS_public)
DW$74	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$74, DW_AT_name("GPIO15"), DW_AT_symbol_name("_GPIO15")
	.dwattr DW$74, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$74, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$74, DW_AT_accessibility(DW_ACCESS_public)
DW$75	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$75, DW_AT_name("GPIO16"), DW_AT_symbol_name("_GPIO16")
	.dwattr DW$75, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$75, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$75, DW_AT_accessibility(DW_ACCESS_public)
DW$76	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$76, DW_AT_name("GPIO17"), DW_AT_symbol_name("_GPIO17")
	.dwattr DW$76, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$76, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$76, DW_AT_accessibility(DW_ACCESS_public)
DW$77	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$77, DW_AT_name("GPIO18"), DW_AT_symbol_name("_GPIO18")
	.dwattr DW$77, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$77, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$77, DW_AT_accessibility(DW_ACCESS_public)
DW$78	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$78, DW_AT_name("GPIO19"), DW_AT_symbol_name("_GPIO19")
	.dwattr DW$78, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$78, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$78, DW_AT_accessibility(DW_ACCESS_public)
DW$79	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$79, DW_AT_name("GPIO20"), DW_AT_symbol_name("_GPIO20")
	.dwattr DW$79, DW_AT_bit_offset(0x0b), DW_AT_bit_size(0x01)
	.dwattr DW$79, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$79, DW_AT_accessibility(DW_ACCESS_public)
DW$80	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$80, DW_AT_name("GPIO21"), DW_AT_symbol_name("_GPIO21")
	.dwattr DW$80, DW_AT_bit_offset(0x0a), DW_AT_bit_size(0x01)
	.dwattr DW$80, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$80, DW_AT_accessibility(DW_ACCESS_public)
DW$81	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$81, DW_AT_name("GPIO22"), DW_AT_symbol_name("_GPIO22")
	.dwattr DW$81, DW_AT_bit_offset(0x09), DW_AT_bit_size(0x01)
	.dwattr DW$81, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$81, DW_AT_accessibility(DW_ACCESS_public)
DW$82	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$82, DW_AT_name("GPIO23"), DW_AT_symbol_name("_GPIO23")
	.dwattr DW$82, DW_AT_bit_offset(0x08), DW_AT_bit_size(0x01)
	.dwattr DW$82, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$82, DW_AT_accessibility(DW_ACCESS_public)
DW$83	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$83, DW_AT_name("GPIO24"), DW_AT_symbol_name("_GPIO24")
	.dwattr DW$83, DW_AT_bit_offset(0x07), DW_AT_bit_size(0x01)
	.dwattr DW$83, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$83, DW_AT_accessibility(DW_ACCESS_public)
DW$84	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$84, DW_AT_name("GPIO25"), DW_AT_symbol_name("_GPIO25")
	.dwattr DW$84, DW_AT_bit_offset(0x06), DW_AT_bit_size(0x01)
	.dwattr DW$84, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$84, DW_AT_accessibility(DW_ACCESS_public)
DW$85	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$85, DW_AT_name("GPIO26"), DW_AT_symbol_name("_GPIO26")
	.dwattr DW$85, DW_AT_bit_offset(0x05), DW_AT_bit_size(0x01)
	.dwattr DW$85, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$85, DW_AT_accessibility(DW_ACCESS_public)
DW$86	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$86, DW_AT_name("GPIO27"), DW_AT_symbol_name("_GPIO27")
	.dwattr DW$86, DW_AT_bit_offset(0x04), DW_AT_bit_size(0x01)
	.dwattr DW$86, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$86, DW_AT_accessibility(DW_ACCESS_public)
DW$87	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$87, DW_AT_name("GPIO28"), DW_AT_symbol_name("_GPIO28")
	.dwattr DW$87, DW_AT_bit_offset(0x03), DW_AT_bit_size(0x01)
	.dwattr DW$87, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$87, DW_AT_accessibility(DW_ACCESS_public)
DW$88	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$88, DW_AT_name("GPIO29"), DW_AT_symbol_name("_GPIO29")
	.dwattr DW$88, DW_AT_bit_offset(0x02), DW_AT_bit_size(0x01)
	.dwattr DW$88, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$88, DW_AT_accessibility(DW_ACCESS_public)
DW$89	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$89, DW_AT_name("GPIO30"), DW_AT_symbol_name("_GPIO30")
	.dwattr DW$89, DW_AT_bit_offset(0x01), DW_AT_bit_size(0x01)
	.dwattr DW$89, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$89, DW_AT_accessibility(DW_ACCESS_public)
DW$90	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$90, DW_AT_name("GPIO31"), DW_AT_symbol_name("_GPIO31")
	.dwattr DW$90, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x01)
	.dwattr DW$90, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$90, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$20


DW$T$22	.dwtag  DW_TAG_union_type
	.dwattr DW$T$22, DW_AT_name("GPADAT_REG")
	.dwattr DW$T$22, DW_AT_byte_size(0x02)
DW$91	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$91, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$91, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$91, DW_AT_accessibility(DW_ACCESS_public)
DW$92	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$20)
	.dwattr DW$92, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$92, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$92, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$22


DW$T$24	.dwtag  DW_TAG_union_type
	.dwattr DW$T$24, DW_AT_name("GPBDAT_REG")
	.dwattr DW$T$24, DW_AT_byte_size(0x02)
DW$93	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$21)
	.dwattr DW$93, DW_AT_name("all"), DW_AT_symbol_name("_all")
	.dwattr DW$93, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$93, DW_AT_accessibility(DW_ACCESS_public)
DW$94	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$23)
	.dwattr DW$94, DW_AT_name("bit"), DW_AT_symbol_name("_bit")
	.dwattr DW$94, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$94, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$24

DW$T$19	.dwtag  DW_TAG_typedef, DW_AT_name("Uint16"), DW_AT_type(*DW$T$11)
	.dwattr DW$T$19, DW_AT_language(DW_LANG_C)

DW$T$23	.dwtag  DW_TAG_structure_type
	.dwattr DW$T$23, DW_AT_name("GPBDAT_BITS")
	.dwattr DW$T$23, DW_AT_byte_size(0x02)
DW$95	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$95, DW_AT_name("GPIO32"), DW_AT_symbol_name("_GPIO32")
	.dwattr DW$95, DW_AT_bit_offset(0x0f), DW_AT_bit_size(0x01)
	.dwattr DW$95, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$95, DW_AT_accessibility(DW_ACCESS_public)
DW$96	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$96, DW_AT_name("GPIO33"), DW_AT_symbol_name("_GPIO33")
	.dwattr DW$96, DW_AT_bit_offset(0x0e), DW_AT_bit_size(0x01)
	.dwattr DW$96, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$96, DW_AT_accessibility(DW_ACCESS_public)
DW$97	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$97, DW_AT_name("GPIO34"), DW_AT_symbol_name("_GPIO34")
	.dwattr DW$97, DW_AT_bit_offset(0x0d), DW_AT_bit_size(0x01)
	.dwattr DW$97, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$97, DW_AT_accessibility(DW_ACCESS_public)
DW$98	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$98, DW_AT_name("rsvd1"), DW_AT_symbol_name("_rsvd1")
	.dwattr DW$98, DW_AT_bit_offset(0x0c), DW_AT_bit_size(0x01)
	.dwattr DW$98, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$98, DW_AT_accessibility(DW_ACCESS_public)
DW$99	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$99, DW_AT_name("rsvd2"), DW_AT_symbol_name("_rsvd2")
	.dwattr DW$99, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x0c)
	.dwattr DW$99, DW_AT_data_member_location[DW_OP_plus_uconst 0x0]
	.dwattr DW$99, DW_AT_accessibility(DW_ACCESS_public)
DW$100	.dwtag  DW_TAG_member, DW_AT_type(*DW$T$19)
	.dwattr DW$100, DW_AT_name("rsvd3"), DW_AT_symbol_name("_rsvd3")
	.dwattr DW$100, DW_AT_bit_offset(0x00), DW_AT_bit_size(0x10)
	.dwattr DW$100, DW_AT_data_member_location[DW_OP_plus_uconst 0x1]
	.dwattr DW$100, DW_AT_accessibility(DW_ACCESS_public)
	.dwendtag DW$T$23

DW$T$11	.dwtag  DW_TAG_base_type, DW_AT_name("unsigned int")
	.dwattr DW$T$11, DW_AT_encoding(DW_ATE_unsigned)
	.dwattr DW$T$11, DW_AT_byte_size(0x01)

	.dwattr DW$35, DW_AT_external(0x01)
	.dwattr DW$41, DW_AT_external(0x01)
	.dwattr DW$34, DW_AT_external(0x01)
	.dwattr DW$33, DW_AT_external(0x01)
	.dwattr DW$28, DW_AT_external(0x01)
	.dwattr DW$29, DW_AT_external(0x01)
	.dwattr DW$24, DW_AT_external(0x01)
	.dwattr DW$23, DW_AT_external(0x01)
	.dwattr DW$36, DW_AT_external(0x01)
	.dwattr DW$26, DW_AT_external(0x01)
	.dwattr DW$25, DW_AT_external(0x01)
	.dwattr DW$40, DW_AT_external(0x01)
	.dwattr DW$30, DW_AT_external(0x01)
	.dwattr DW$27, DW_AT_external(0x01)
	.dwattr DW$37, DW_AT_external(0x01)
	.dwattr DW$32, DW_AT_external(0x01)
	.dwattr DW$31, DW_AT_external(0x01)
	.dwattr DW$38, DW_AT_external(0x01)
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

DW$101	.dwtag  DW_TAG_assign_register, DW_AT_name("AL")
	.dwattr DW$101, DW_AT_location[DW_OP_reg0]
DW$102	.dwtag  DW_TAG_assign_register, DW_AT_name("AH")
	.dwattr DW$102, DW_AT_location[DW_OP_reg1]
DW$103	.dwtag  DW_TAG_assign_register, DW_AT_name("PL")
	.dwattr DW$103, DW_AT_location[DW_OP_reg2]
DW$104	.dwtag  DW_TAG_assign_register, DW_AT_name("PH")
	.dwattr DW$104, DW_AT_location[DW_OP_reg3]
DW$105	.dwtag  DW_TAG_assign_register, DW_AT_name("AR0")
	.dwattr DW$105, DW_AT_location[DW_OP_reg4]
DW$106	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR0")
	.dwattr DW$106, DW_AT_location[DW_OP_reg5]
DW$107	.dwtag  DW_TAG_assign_register, DW_AT_name("AR1")
	.dwattr DW$107, DW_AT_location[DW_OP_reg6]
DW$108	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR1")
	.dwattr DW$108, DW_AT_location[DW_OP_reg7]
DW$109	.dwtag  DW_TAG_assign_register, DW_AT_name("AR2")
	.dwattr DW$109, DW_AT_location[DW_OP_reg8]
DW$110	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR2")
	.dwattr DW$110, DW_AT_location[DW_OP_reg9]
DW$111	.dwtag  DW_TAG_assign_register, DW_AT_name("AR3")
	.dwattr DW$111, DW_AT_location[DW_OP_reg10]
DW$112	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR3")
	.dwattr DW$112, DW_AT_location[DW_OP_reg11]
DW$113	.dwtag  DW_TAG_assign_register, DW_AT_name("AR4")
	.dwattr DW$113, DW_AT_location[DW_OP_reg12]
DW$114	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR4")
	.dwattr DW$114, DW_AT_location[DW_OP_reg13]
DW$115	.dwtag  DW_TAG_assign_register, DW_AT_name("AR5")
	.dwattr DW$115, DW_AT_location[DW_OP_reg14]
DW$116	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR5")
	.dwattr DW$116, DW_AT_location[DW_OP_reg15]
DW$117	.dwtag  DW_TAG_assign_register, DW_AT_name("AR6")
	.dwattr DW$117, DW_AT_location[DW_OP_reg16]
DW$118	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR6")
	.dwattr DW$118, DW_AT_location[DW_OP_reg17]
DW$119	.dwtag  DW_TAG_assign_register, DW_AT_name("AR7")
	.dwattr DW$119, DW_AT_location[DW_OP_reg18]
DW$120	.dwtag  DW_TAG_assign_register, DW_AT_name("XAR7")
	.dwattr DW$120, DW_AT_location[DW_OP_reg19]
DW$121	.dwtag  DW_TAG_assign_register, DW_AT_name("SP")
	.dwattr DW$121, DW_AT_location[DW_OP_reg20]
DW$122	.dwtag  DW_TAG_assign_register, DW_AT_name("XT")
	.dwattr DW$122, DW_AT_location[DW_OP_reg21]
DW$123	.dwtag  DW_TAG_assign_register, DW_AT_name("T")
	.dwattr DW$123, DW_AT_location[DW_OP_reg22]
DW$124	.dwtag  DW_TAG_assign_register, DW_AT_name("ST0")
	.dwattr DW$124, DW_AT_location[DW_OP_reg23]
DW$125	.dwtag  DW_TAG_assign_register, DW_AT_name("ST1")
	.dwattr DW$125, DW_AT_location[DW_OP_reg24]
DW$126	.dwtag  DW_TAG_assign_register, DW_AT_name("PC")
	.dwattr DW$126, DW_AT_location[DW_OP_reg25]
DW$127	.dwtag  DW_TAG_assign_register, DW_AT_name("RPC")
	.dwattr DW$127, DW_AT_location[DW_OP_reg26]
DW$128	.dwtag  DW_TAG_assign_register, DW_AT_name("FP")
	.dwattr DW$128, DW_AT_location[DW_OP_reg27]
DW$129	.dwtag  DW_TAG_assign_register, DW_AT_name("DP")
	.dwattr DW$129, DW_AT_location[DW_OP_reg28]
DW$130	.dwtag  DW_TAG_assign_register, DW_AT_name("SXM")
	.dwattr DW$130, DW_AT_location[DW_OP_reg29]
DW$131	.dwtag  DW_TAG_assign_register, DW_AT_name("PM")
	.dwattr DW$131, DW_AT_location[DW_OP_reg30]
DW$132	.dwtag  DW_TAG_assign_register, DW_AT_name("OVM")
	.dwattr DW$132, DW_AT_location[DW_OP_reg31]
DW$133	.dwtag  DW_TAG_assign_register, DW_AT_name("PAGE0")
	.dwattr DW$133, DW_AT_location[DW_OP_regx 0x20]
DW$134	.dwtag  DW_TAG_assign_register, DW_AT_name("AMODE")
	.dwattr DW$134, DW_AT_location[DW_OP_regx 0x21]
DW$135	.dwtag  DW_TAG_assign_register, DW_AT_name("IFR")
	.dwattr DW$135, DW_AT_location[DW_OP_regx 0x22]
DW$136	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$136, DW_AT_location[DW_OP_regx 0x23]
DW$137	.dwtag  DW_TAG_assign_register, DW_AT_name("IER")
	.dwattr DW$137, DW_AT_location[DW_OP_regx 0x24]
DW$138	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDO")
	.dwattr DW$138, DW_AT_location[DW_OP_regx 0x25]
DW$139	.dwtag  DW_TAG_assign_register, DW_AT_name("PSEUDOH")
	.dwattr DW$139, DW_AT_location[DW_OP_regx 0x26]
DW$140	.dwtag  DW_TAG_assign_register, DW_AT_name("VOL")
	.dwattr DW$140, DW_AT_location[DW_OP_regx 0x27]
DW$141	.dwtag  DW_TAG_assign_register, DW_AT_name("CIE_RETA")
	.dwattr DW$141, DW_AT_location[DW_OP_regx 0x28]
	.dwendtag DW$CU

