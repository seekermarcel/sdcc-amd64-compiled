;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:30 2022
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_P4	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_DPL1	=	0x0084
_DPH1	=	0x0085
_DPS	=	0x0086
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_CKCON	=	0x008e
_P1	=	0x0090
_EXIF	=	0x0091
_P4CNT	=	0x0092
_DPX	=	0x0093
_DPX1	=	0x0095
_SCON0	=	0x0098
_SBUF0	=	0x0099
_ESP	=	0x009b
_AP	=	0x009c
_ACON	=	0x009d
_P2	=	0x00a0
_P5	=	0x00a1
_P5CNT	=	0x00a2
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_SCON1	=	0x00c0
_SBUF1	=	0x00c1
_PMR	=	0x00c4
_MCON	=	0x00c6
_TA	=	0x00c7
_T2CON	=	0x00c8
_T2MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RTL2	=	0x00ca
_RCAP2H	=	0x00cb
_RTH2	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_PSW	=	0x00d0
_MCNT0	=	0x00d1
_MCNT1	=	0x00d2
_MA	=	0x00d3
_MB	=	0x00d4
_MC	=	0x00d5
_WDCON	=	0x00d8
_ACC	=	0x00e0
_EIE	=	0x00e8
_MXAX	=	0x00ea
_B	=	0x00f0
_EIP	=	0x00f8
_TMR0	=	0x8c8a
_TMR1	=	0x8d8b
_TMR2	=	0xcdcc
_RCAP2	=	0xcbca
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_T2	=	0x0090
_T2EX	=	0x0091
_RXD1	=	0x0092
_TXD1	=	0x0093
_INT2	=	0x0094
_INT3	=	0x0095
_INT4	=	0x0096
_INT5	=	0x0097
_RI_0	=	0x0098
_TI_0	=	0x0099
_RB8_0	=	0x009a
_TB8_0	=	0x009b
_REN_0	=	0x009c
_SM2_0	=	0x009d
_SM1_0	=	0x009e
_SM0_0	=	0x009f
_FE_0	=	0x009f
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES0	=	0x00ac
_ET2	=	0x00ad
_ES1	=	0x00ae
_EA	=	0x00af
_RXD0	=	0x00b0
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS0	=	0x00bc
_PT2	=	0x00bd
_PS1	=	0x00be
_RI_1	=	0x00c0
_TI_1	=	0x00c1
_RB8_1	=	0x00c2
_TB8_1	=	0x00c3
_REN_1	=	0x00c4
_SM2_1	=	0x00c5
_SM1_1	=	0x00c6
_SM0_1	=	0x00c7
_FE_1	=	0x00c7
_CP_RL	=	0x00c8
_C_T	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RWT	=	0x00d8
_EWT	=	0x00d9
_WDRF	=	0x00da
_WDIF	=	0x00db
_PFI	=	0x00dc
_EPFI	=	0x00dd
_POR	=	0x00de
_SMOD_1	=	0x00df
_EX2	=	0x00e8
_EX3	=	0x00e9
_EX4	=	0x00ea
_EX5	=	0x00eb
_EWDI	=	0x00ec
_C1IE	=	0x00ed
_C0IE	=	0x00ee
_CANBIE	=	0x00ef
_PX2	=	0x00f8
_PX3	=	0x00f9
_PX4	=	0x00fa
_PX5	=	0x00fb
_PWDI	=	0x00fc
_C1IP	=	0x00fd
_C0IP	=	0x00fe
_CANBIP	=	0x00ff
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculate_digit_i_1_109:
	.ds 1
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_lower_case:
	.ds 1
_output_char:
	.ds 3
_p:
	.ds 4
_value:
	.ds 5
_charsOutputted:
	.ds 2
__print_format_PARM_2:
	.ds 4
__print_format_PARM_3:
	.ds 4
__print_format_PARM_4:
	.ds 4
__print_format_left_justify_1_113:
	.ds 1
__print_format_zero_padding_1_113:
	.ds 1
__print_format_prefix_sign_1_113:
	.ds 1
__print_format_prefix_space_1_113:
	.ds 1
__print_format_signed_argument_1_113:
	.ds 1
__print_format_long_argument_1_113:
	.ds 1
__print_format_float_argument_1_113:
	.ds 1
__print_format_radix_1_113:
	.ds 1
__print_format_width_1_113:
	.ds 1
__print_format_store_4_132:
	.ds 6
__print_format_pstore_4_132:
	.ds 4
__print_format_sloc2_1_0:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_output_char'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
__output_char:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
;	printf_large.c:107: output_char( c, p );
	mov	dptr,#_p
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	a,#00103$
	push	acc
	mov	a,#(00103$ >> 8)
	push	acc
	mov	a,#(00103$ >> 16)
	push	acc
	mov	dptr,#_output_char
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	mov	dpl,r2
	ret
00103$:
;	stack adjustment for parms
	pop	acc
	pop	acc
	pop	acc
	pop	acc
;	printf_large.c:108: charsOutputted++;
	mov	dptr,#_charsOutputted
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers r2 
;n                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
_output_digit:
	mov	r2,dpl
;	printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	mov	a,#0x30
	add	a,r2
	mov	r2,a
;	printf_large.c:134: if (c > (unsigned char)'9')
	clr	c
	mov	a,#0x39
	subb	a,r2
	jnc  00104$
00113$:
;	printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	mov	a,#0x07
	add	a,r2
	mov	r2,a
;	printf_large.c:137: if (lower_case)
	mov	dptr,#_lower_case
	movx	a,@dptr
	jz  00104$
00114$:
;	printf_large.c:138: c = tolower(c);
	orl	ar2,#0x20
00104$:
;	printf_large.c:140: _output_char( c );
	mov	dpl,r2
	lcall	__output_char
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers r2 
;------------------------------------------------------------
;	printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
_output_2digits:
	mov	r2,dpl
;	printf_large.c:159: output_digit( b>>4   );
	mov	a,r2
	swap	a
	anl	a,#0x0F
	mov	r3,a
	push	ar2
	mov	dpl,r3
	lcall	_output_digit
	pop	ar2
;	printf_large.c:160: output_digit( b&0x0F );
	anl	ar2,#0x0F
	mov	dpl,r2
	lcall	_output_digit
00101$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated to registers r2 
;ul                        Allocated to registers r3 r4 r5 r6 
;b4                        Allocated to registers r7 
;i                         Allocated with name '_calculate_digit_i_1_109'
;------------------------------------------------------------
;	printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
_calculate_digit:
	mov	r2,dpl
;	printf_large.c:191: register unsigned long ul = value.ul;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
;	printf_large.c:192: register unsigned char b4 = value.byte[4];
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r7,a
;	printf_large.c:193: register unsigned char i = 32;
;	genAssign: resultIsFar = FALSE
	mov	_calculate_digit_i_1_109,#0x20
;	printf_large.c:195: do
00103$:
;	printf_large.c:197: b4 = (b4 << 1);
	mov	a,r7
	add	a,acc
	mov	r7,a
;	printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	mov	a,r6
	rl	a
	anl	a,#0x01
	mov	r1,a
	mov	ar0,r7
	mov	a,r1
	orl	a,r0
	mov	r7,a
;	printf_large.c:199: ul <<= 1;
	mov	a,r3
	add	a,acc
	mov	r3,a
	mov	a,r4
	rlc	a
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r6
	rlc	a
	mov	r6,a
;	printf_large.c:201: if (radix <= b4 )
	clr	c
	mov	a,r7
	subb	a,r2
	jc   00104$
00117$:
;	printf_large.c:203: b4 -= radix;
	clr	c
	mov	a,r7
	subb	a,r2
	mov	r7,a
;	printf_large.c:204: ul |= 1;
	orl	ar3,#0x01
00104$:
;	printf_large.c:206: } while (--i);
	mov	a,_calculate_digit_i_1_109
	dec	a
;	genAssign: resultIsFar = FALSE
	mov  r0,a
	mov  _calculate_digit_i_1_109,r0 
	jnz  00103$
00118$:
;	printf_large.c:207: value.ul = ul;
	mov	dptr,#_value
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	printf_large.c:208: value.byte[4] = b4;
	mov	dptr,#(_value + 0x000004)
	mov	a,r7
	movx	@dptr,a
00106$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;left_justify              Allocated with name '__print_format_left_justify_1_113'
;zero_padding              Allocated with name '__print_format_zero_padding_1_113'
;prefix_sign               Allocated with name '__print_format_prefix_sign_1_113'
;prefix_space              Allocated with name '__print_format_prefix_space_1_113'
;signed_argument           Allocated with name '__print_format_signed_argument_1_113'
;char_argument             Allocated to registers r6 
;long_argument             Allocated with name '__print_format_long_argument_1_113'
;float_argument            Allocated with name '__print_format_float_argument_1_113'
;lsd                       Allocated to registers r2 
;radix                     Allocated with name '__print_format_radix_1_113'
;width                     Allocated with name '__print_format_width_1_113'
;decimals                  Allocated to registers r5 
;length                    Allocated to registers r3 
;c                         Allocated to registers r2 
;store                     Allocated with name '__print_format_store_4_132'
;pstore                    Allocated with name '__print_format_pstore_4_132'
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;------------------------------------------------------------
;	printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
__print_format:
	mov     dps, #1
	mov     dptr, #_output_char
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:462: p = pvoid;
	mov	dptr,#__print_format_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_p
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:466: charsOutputted = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_charsOutputted
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	printf_large.c:475: while( c=*format++ )
00231$:
	mov	dptr,#__print_format_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#__print_format_PARM_3
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	clr	a
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r6
	mov	a,r6
	jnz	00473$
	ljmp	00233$
00473$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r2,#0x25,00474$
	sjmp	00475$
00474$:
	ljmp	00229$
00475$:
;	printf_large.c:479: left_justify    = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_left_justify_1_113
;	printf_large.c:480: zero_padding    = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:481: prefix_sign     = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:482: prefix_space    = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_zero_padding_1_113
	movx  @dptr,a
	mov   dptr,#__print_format_prefix_sign_1_113
	movx  @dptr,a
	mov   dptr,#__print_format_prefix_space_1_113
	movx  @dptr,a
;	printf_large.c:483: signed_argument = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_1_113
	clr	a
	movx	@dptr,a
;	printf_large.c:484: char_argument   = 0;
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x00
;	printf_large.c:485: long_argument   = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_long_argument_1_113
;	printf_large.c:486: float_argument  = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:487: radix           = 0;
;	genAssign: resultIsFar = TRUE
;	printf_large.c:488: width           = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_float_argument_1_113
	movx  @dptr,a
	mov   dptr,#__print_format_radix_1_113
	movx  @dptr,a
	mov   dptr,#__print_format_width_1_113
	movx  @dptr,a
;	printf_large.c:489: decimals        = -1;
;	genAssign: resultIsFar = TRUE
	mov	r5,#0xFF
;	printf_large.c:491: get_conversion_spec:
	mov	dptr,#__print_format_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00101$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r0
	mov	dph,r7
	mov	dpx,r3
	mov	b,r4
	lcall	__gptrget
	mov	r1,a
	inc	dptr
	mov	r0,dpl
	mov	r7,dph
	mov	r3,dpx
	mov	r4,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_3
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r1
;	printf_large.c:495: if (c=='%')
	cjne r2,#0x25,00103$
00477$:
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dpl,r2
	lcall	__output_char
;	printf_large.c:498: continue;
	ljmp	00231$
00103$:
;	printf_large.c:501: if (isdigit(c))
	mov	ar1,r2
	cjne	r1,#0x30,00478$
00478$:
	jc   00110$
00479$:
	clr	c
	mov	a,#0x39
	subb	a,r1
	jc   00110$
00480$:
;	printf_large.c:503: if (decimals==-1)
	cjne r5,#0xFF,00107$
00482$:
;	printf_large.c:505: width = 10*width + c - '0';
	mov	dptr,#__print_format_width_1_113
	mov	b,#0x0A
	movx	a,@dptr
	mul	ab
	add  a,r2
	mov  r1,a
	add	a,#0xD0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	movx	@dptr,a
;	printf_large.c:506: if (width == 0)
	mov	dptr,#__print_format_width_1_113
	movx	a,@dptr
	jnz  00101$
00483$:
;	printf_large.c:509: zero_padding = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_zero_padding_1_113
	mov	a,#0x01
	movx	@dptr,a
	sjmp 00101$
00107$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	clr	F0
	mov	b,#0x0A
	mov	a,r5
	jnb	acc[7],00484$
	cpl	F0
	cpl	a
	inc	a
00484$:
	mul	ab
	jnb	F0,00485$
	cpl	a
	inc	a
00485$:
	add	a,r2
	mov  r1,a
	add	a,#0xD0
;	genAssign: resultIsFar = TRUE
	mov	r5,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00101$
00110$:
;	printf_large.c:519: if (c=='.')
	cjne r2,#0x2E,00115$
00487$:
;	printf_large.c:521: if (decimals==-1)
	cjne	r5,#0xFF,00488$
	sjmp	00489$
00488$:
	ljmp	00101$
00489$:
;	printf_large.c:522: decimals=0;
;	genAssign: resultIsFar = TRUE
	mov	r5,#0x00
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00101$
00115$:
;	printf_large.c:528: if (islower(c))
	mov	ar1,r2
	cjne	r1,#0x61,00490$
00490$:
	jc   00117$
00491$:
	clr	c
	mov	a,#0x7A
	subb	a,r1
	jc   00117$
00492$:
;	printf_large.c:530: c = toupper(c);
	anl	ar2,#0xDF
;	printf_large.c:531: lower_case = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_lower_case
	mov	a,#0x01
	movx	@dptr,a
	sjmp 00118$
00117$:
;	printf_large.c:534: lower_case = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_lower_case
	clr	a
	movx	@dptr,a
00118$:
;	printf_large.c:536: switch( c )
	cjne	r2,#0x20,00493$
	ljmp	00122$
00493$:
	cjne	r2,#0x2B,00494$
	ljmp	00121$
00494$:
	cjne	r2,#0x2D,00495$
	sjmp 00120$
00495$:
	cjne	r2,#0x42,00496$
	ljmp	00123$
00496$:
	cjne	r2,#0x43,00497$
	ljmp	00129$
00497$:
	cjne	r2,#0x44,00498$
	ljmp	00154$
00498$:
	cjne	r2,#0x46,00499$
	ljmp	00158$
00499$:
	cjne	r2,#0x48,00500$
	ljmp	00101$
00500$:
	cjne	r2,#0x49,00501$
	ljmp	00154$
00501$:
	cjne	r2,#0x4A,00502$
	ljmp	00101$
00502$:
	cjne	r2,#0x4C,00503$
	sjmp 00128$
00503$:
	cjne	r2,#0x4F,00504$
	ljmp	00155$
00504$:
	cjne	r2,#0x50,00505$
	ljmp	00152$
00505$:
	cjne	r2,#0x53,00506$
	ljmp	00133$
00506$:
	cjne	r2,#0x54,00507$
	ljmp	00101$
00507$:
	cjne	r2,#0x55,00508$
	ljmp	00156$
00508$:
	cjne	r2,#0x58,00509$
	ljmp	00157$
00509$:
	cjne	r2,#0x5A,00510$
	ljmp	00101$
00510$:
	ljmp	00159$
;	printf_large.c:538: case '-':
00120$:
;	printf_large.c:539: left_justify = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_left_justify_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:541: case '+':
00121$:
;	printf_large.c:542: prefix_sign = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_prefix_sign_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:544: case ' ':
00122$:
;	printf_large.c:545: prefix_space = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_prefix_space_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:547: case 'B': /* byte */
00123$:
;	printf_large.c:548: char_argument = 1;
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x01
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:556: case 'L': /* long */
00128$:
;	printf_large.c:557: long_argument = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_long_argument_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00101$
;	printf_large.c:560: case 'C':
00129$:
;	printf_large.c:561: if( char_argument )
	mov	a,r6
	jz  00131$
00511$:
;	printf_large.c:562: c = va_arg(ap,char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	dec	r3
	cjne	r3,#0xFF,00512$
	dec	r4
	cjne	r4,#0xFF,00512$
	dec	r7
00512$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrget
	mov	r3,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r3
	sjmp 00132$
00131$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r3
	add	a,#0xFE
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrgetWord
	mov	r3,a
	mov	r4,acc1
	lcall	__decdptr
	mov	ar2,r3
00132$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	push	ar6
	mov	dpl,r2
	lcall	__output_char
	pop	ar6
;	printf_large.c:566: break;
	ljmp	00160$
;	printf_large.c:568: case 'S':
00133$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r3
	add	a,#0xFC
	mov	r3,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrgetWord
	mov	r3,a
	mov	r4,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r7,a
	mov	r0,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:582: length = strlen(PTR);
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r7
	mov	b,r0
	lcall	_strlen
	mov	r3,dpl
	mov	r4,dph
	pop	ar6
	pop	ar5
;	printf_large.c:584: if ( decimals == -1 )
	cjne r5,#0xFF,00135$
00514$:
;	printf_large.c:586: decimals = length;
;	genAssign: resultIsFar = TRUE
	mov	ar5,r3
00135$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	mov	dptr,#__print_format_left_justify_1_113
	movx	a,@dptr
	jnz  00277$
00515$:
	mov	dptr,#__print_format_width_1_113
	clr	c
	mov	a,r3
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00277$
00516$:
;	printf_large.c:590: width -= length;
	mov	dptr,#__print_format_width_1_113
	clr	c
	movx	a,@dptr
	subb	a,r3
	movx	@dptr,a
;	printf_large.c:591: while( width-- != 0 )
	mov	dptr,#__print_format_width_1_113
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00136$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r4
	dec	r4
	mov	a,r7
	jz  00312$
00517$:
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp 00136$
00312$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	mov	a,r4
	movx	@dptr,a
00277$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r5
00143$:
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	r1,a
	mov	dpl,r5
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
;	genAssign: resultIsFar = TRUE
	mov  r5,a
	mov  ar2,r5 
	jz  00145$
00518$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	clr	c
	clr	a
	xrl	a,#0x80
	mov	b,r5
	xrl	b,#0x80
	subb	a,b
	jnc  00145$
00519$:
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r2
	lcall	__output_char
	pop	ar6
	pop	ar4
	pop	ar3
;	printf_large.c:600: PTR++;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	mov	r1,a
	inc	r5
	cjne	r5,#0x00,00520$
	inc	r7
	cjne	r7,#0x00,00520$
	inc	r0
00520$:
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	sjmp 00143$
00145$:
;	printf_large.c:603: if ( left_justify && (length < width))
	mov	dptr,#__print_format_left_justify_1_113
	movx	a,@dptr
	jnz	00521$
	ljmp	00160$
00521$:
	mov	dptr,#__print_format_width_1_113
	clr	c
	mov	a,r3
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00522$
	ljmp	00160$
00522$:
;	printf_large.c:605: width -= length;
	mov	dptr,#__print_format_width_1_113
	clr	c
	movx	a,@dptr
	subb	a,r3
	movx	@dptr,a
;	printf_large.c:606: while( width-- != 0 )
	mov	dptr,#__print_format_width_1_113
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00146$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jnz	00523$
	ljmp	00314$
00523$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar4
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar4
;	printf_large.c:613: case 'P':
	sjmp 00146$
00152$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r5
	add	a,#0xFC
	mov	r5,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r0
	addc	a,#0xFF
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	mov	dpl,r5
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r5,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	printf_large.c:658: OUTPUT_CHAR('0', p);
	push	ar6
	mov	dpl,#0x30
	lcall	__output_char
	pop	ar6
;	printf_large.c:659: OUTPUT_CHAR('x', p);
	push	ar6
	mov	dpl,#0x78
	lcall	__output_char
	pop	ar6
;	printf_large.c:660: OUTPUT_2DIGITS( value.byte[1] );
	mov	dptr,#(_value + 0x000001)
	movx	a,@dptr
	mov	r5,a
	push	ar6
	mov	dpl,r5
	lcall	_output_2digits
	pop	ar6
;	printf_large.c:661: OUTPUT_2DIGITS( value.byte[0] );
	mov	dptr,#_value
	movx	a,@dptr
	mov	r5,a
	push	ar6
	mov	dpl,r5
	lcall	_output_2digits
	pop	ar6
;	printf_large.c:663: break;
;	printf_large.c:666: case 'I':
	sjmp 00160$
00154$:
;	printf_large.c:667: signed_argument = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:668: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_113
	mov	a,#0x0A
	movx	@dptr,a
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp 00160$
00155$:
;	printf_large.c:672: radix = 8;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_113
	mov	a,#0x08
	movx	@dptr,a
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp 00160$
00156$:
;	printf_large.c:676: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_113
	mov	a,#0x0A
	movx	@dptr,a
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp 00160$
00157$:
;	printf_large.c:680: radix = 16;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_113
	mov	a,#0x10
	movx	@dptr,a
;	printf_large.c:681: break;
;	printf_large.c:683: case 'F':
	sjmp 00160$
00158$:
;	printf_large.c:684: float_argument=1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_float_argument_1_113
	mov	a,#0x01
	movx	@dptr,a
;	printf_large.c:685: break;
;	printf_large.c:687: default:
	sjmp 00160$
00159$:
;	printf_large.c:689: OUTPUT_CHAR( c, p );
	push	ar6
	mov	dpl,r2
	lcall	__output_char
	pop	ar6
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp 00160$
00314$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	mov	a,r4
	movx	@dptr,a
00160$:
;	printf_large.c:693: if (float_argument)
	mov	dptr,#__print_format_float_argument_1_113
	movx	a,@dptr
	jnz	00524$
	ljmp	00226$
00524$:
;	printf_large.c:695: value.f = va_arg(ap, float);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r4
	add	a,#0xFC
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r7,a
	mov	r0,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:697: PTR="<NO FLOAT>";
	mov	dptr,#_value
	mov	a,#___str_0
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(___str_0 >> 16)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
;	printf_large.c:698: while (c=*PTR++)
00161$:
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	mov	r1,a
	mov	a,#0x01
	add	a,r2
	mov	r4,a
	clr	a
	addc	a,r3
	mov	r5,a
	clr	a
	addc	a,r6
	mov	r7,a
	mov	ar0,r1
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r6
	mov	b,r1
	lcall	__gptrget
;	genAssign: resultIsFar = TRUE
	mov  r4,a
	mov  ar2,r4 
	jnz	00525$
	ljmp	00231$
00525$:
;	printf_large.c:700: OUTPUT_CHAR (c, p);
	mov	dpl,r2
	lcall	__output_char
	sjmp 00161$
00226$:
;	printf_large.c:718: else if (radix != 0)
	mov	dptr,#__print_format_radix_1_113
	movx	a,@dptr
	jnz	00526$
	ljmp	00231$
00526$:
;	printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	mov	dptr,#__print_format_pstore_4_132
	mov	a,#(__print_format_store_4_132 + 0x000005)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__print_format_store_4_132 + 0x000005) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__print_format_store_4_132 + 0x000005) >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	printf_large.c:726: if (char_argument)
	mov	a,r6
	jnz	00527$
	ljmp	00172$
00527$:
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	dec	r4
	cjne	r4,#0xFF,00528$
	dec	r5
	cjne	r5,#0xFF,00528$
	dec	r7
00528$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrget
	mov  r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	r7,a
	mov	r0,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:729: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_1_113
	movx	a,@dptr
	jz	00529$
	ljmp	00173$
00529$:
;	printf_large.c:731: value.l &= 0xFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	mov	r0,a
	mov	r5,#0x00
	mov	r7,#0x00
	mov	r0,#0x00
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	ljmp	00173$
00172$:
;	printf_large.c:734: else if (long_argument)
	mov	dptr,#__print_format_long_argument_1_113
	movx	a,@dptr
	jz  00169$
00530$:
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r4
	add	a,#0xFC
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r7,a
	mov	r0,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	sjmp 00173$
00169$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	mov	a,r4
	add	a,#0xFE
	mov	r4,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r7
	mov	b,r0
	lcall	__gptrgetWord
	mov	r4,a
	mov	r5,acc1
	lcall	__decdptr
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r0,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:741: if (!signed_argument)
	mov	dptr,#__print_format_signed_argument_1_113
	movx	a,@dptr
	jnz  00173$
00531$:
;	printf_large.c:743: value.l &= 0xFFFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	mov	r0,a
	mov	r7,#0x00
	mov	r0,#0x00
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:743: value.l &= 0xFFFF;
00173$:
;	printf_large.c:747: if ( signed_argument )
	mov	dptr,#__print_format_signed_argument_1_113
	movx	a,@dptr
	jz  00178$
00532$:
;	printf_large.c:749: if (value.l < 0)
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	mov  r0,a
	jnb  acc[7],00175$
00533$:
;	printf_large.c:750: value.l = -value.l;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	mov	r0,a
	clr	c
	clr	a
	subb	a,r4
	mov	r4,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r7
	mov	r7,a
	clr	a
	subb	a,r0
	mov	r0,a
	mov	dptr,#_value
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	sjmp 00178$
00175$:
;	printf_large.c:752: signed_argument = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_signed_argument_1_113
	clr	a
	movx	@dptr,a
00178$:
;	printf_large.c:756: lsd = 1;
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x01
;	printf_large.c:758: do {
	mov	dptr,#__print_format_pstore_4_132
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x00
00182$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	dptr,#(_value + 0x000004)
	clr	a
	movx	@dptr,a
;	printf_large.c:763: calculate_digit(radix);
	push	ar2
	push	ar7
	mov	dptr,#__print_format_radix_1_113
	movx	a,@dptr
	mov	dpl,a
	lcall	_calculate_digit
	pop	ar7
	pop	ar2
;	printf_large.c:765: if (!lsd)
	mov	a,r2
	jnz  00180$
00534$:
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r1,a
	swap	a
	mov	r1,a
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov  r4,a
	orl	ar1,a
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r1
	lcall	__gptrput
;	printf_large.c:768: pstore--;
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	add	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	sjmp 00181$
00180$:
;	printf_large.c:772: *pstore = value.byte[4];
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__print_format_sloc2_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	mov	a,r4
	lcall	__gptrput
00181$:
;	printf_large.c:774: length++;
	inc	r7
;	printf_large.c:775: lsd = !lsd;
	mov	a,r2
	cjne	a,#0x01,00535$
00535$:
	clr	a
	rlc	a
	mov	r2,a
;	printf_large.c:776: } while( value.ul );
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
	mov	a,r4
	orl	a,r1
	orl	a,r5
	orl	a,r6
	jz	00536$
	ljmp	00182$
00536$:
;	printf_large.c:778: if (width == 0)
	mov	dptr,#__print_format_sloc2_1_0
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__print_format_pstore_4_132
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
;	genAssign: resultIsFar = TRUE
	mov	ar3,r7
	mov	dptr,#__print_format_width_1_113
	movx	a,@dptr
	jnz  00186$
00537$:
;	printf_large.c:783: width = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	mov	a,#0x01
	movx	@dptr,a
00186$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	mov	dptr,#__print_format_zero_padding_1_113
	movx	a,@dptr
	jnz  00191$
00538$:
	mov	dptr,#__print_format_left_justify_1_113
	movx	a,@dptr
	jnz  00191$
00539$:
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	a,#0x01
	add	a,r3
	mov	r4,a
	mov	dptr,#__print_format_width_1_113
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r5,a
00187$:
	clr	c
	mov	a,r4
	subb	a,r5
	jnc  00316$
00540$:
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	printf_large.c:792: width--;
	dec	r5
	sjmp 00187$
00316$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	mov	a,r5
	movx	@dptr,a
00191$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	mov	dptr,#__print_format_signed_argument_1_113
	movx	a,@dptr
	jz  00201$
00541$:
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	push	ar2
	push	ar3
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar3
	pop	ar2
;	printf_large.c:800: width--;
	mov	dptr,#__print_format_width_1_113
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	movx	@dptr,a
	sjmp 00202$
00201$:
;	printf_large.c:802: else if (length != 0)
	mov	a,r3
	jz  00202$
00542$:
;	printf_large.c:805: if (prefix_sign)
	mov	dptr,#__print_format_prefix_sign_1_113
	movx	a,@dptr
	jz  00196$
00543$:
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	push	ar2
	push	ar3
	mov	dpl,#0x2B
	lcall	__output_char
	pop	ar3
	pop	ar2
;	printf_large.c:809: width--;
	mov	dptr,#__print_format_width_1_113
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	movx	@dptr,a
	sjmp 00202$
00196$:
;	printf_large.c:811: else if (prefix_space)
	mov	dptr,#__print_format_prefix_space_1_113
	movx	a,@dptr
	jz  00202$
00544$:
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	push	ar2
	push	ar3
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar3
	pop	ar2
;	printf_large.c:815: width--;
	mov	dptr,#__print_format_width_1_113
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	movx	@dptr,a
00202$:
;	printf_large.c:820: if (!left_justify)
	mov	dptr,#__print_format_left_justify_1_113
	movx	a,@dptr
	jnz  00210$
00545$:
;	printf_large.c:822: while ( width-- > length )
	mov	dptr,#__print_format_width_1_113
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00203$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	clr	c
	mov	a,r3
	subb	a,r5
	jnc  00317$
00546$:
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	mov	dptr,#__print_format_zero_padding_1_113
	movx	a,@dptr
	jz  00236$
00547$:
;	genAssign: resultIsFar = FALSE
	mov	r5,#0x30
	sjmp 00237$
00236$:
;	genAssign: resultIsFar = FALSE
	mov	r5,#0x20
00237$:
	push	ar2
	push	ar3
	push	ar4
	mov	dpl,r5
	lcall	__output_char
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00203$
00210$:
;	printf_large.c:830: if (width > length)
	mov	dptr,#__print_format_width_1_113
	clr	c
	mov	a,r3
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00207$
00548$:
;	printf_large.c:831: width -= length;
	mov	dptr,#__print_format_width_1_113
	clr	c
	movx	a,@dptr
	subb	a,r3
	movx	@dptr,a
	sjmp 00309$
00207$:
;	printf_large.c:833: width = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	clr	a
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp 00309$
00317$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_113
	mov	a,r4
	movx	@dptr,a
00309$:
	mov	dptr,#__print_format_pstore_4_132
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
;	genAssign: resultIsFar = FALSE
00215$:
;	genAssign: resultIsFar = FALSE
	mov	ar0,r3
	dec	r3
	mov	a,r0
	jz  00217$
00549$:
;	printf_large.c:839: lsd = !lsd;
	mov	a,r2
	cjne	a,#0x01,00550$
00550$:
	clr	a
	rlc	a
;	printf_large.c:840: if (!lsd)
	mov  r2,a
	jnz  00213$
00551$:
;	printf_large.c:842: pstore++;
	inc	r4
	cjne	r4,#0x00,00552$
	inc	r5
	cjne	r5,#0x00,00552$
	inc	r6
00552$:
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrget
	mov  r0,a
	swap	a
	anl	a,#0x0F
	mov  r0,a
	mov  dptr,#(_value + 0x000004)
	movx @dptr,a
	sjmp 00214$
00213$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	anl	ar0,#0x0F
	mov	dptr,#(_value + 0x000004)
	mov	a,r0
	movx	@dptr,a
00214$:
;	printf_large.c:853: output_digit( value.byte[4] );
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r0,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r0
	lcall	_output_digit
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00215$
00217$:
;	printf_large.c:856: if (left_justify)
	mov	dptr,#__print_format_left_justify_1_113
	movx	a,@dptr
	jnz	00553$
	ljmp	00231$
00553$:
;	printf_large.c:858: while (width-- > 0)
	mov	dptr,#__print_format_width_1_113
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
00218$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jnz	00554$
	ljmp	00231$
00554$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	ar3
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar3
	sjmp 00218$
00229$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	mov	dpl,r2
	lcall	__output_char
	ljmp	00231$
00233$:
;	printf_large.c:872: return charsOutputted;
	mov     dps, #1
	mov     dptr, #_charsOutputted
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00234$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
