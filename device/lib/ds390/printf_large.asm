;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:27 2022
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mds390 --model-flat24
	
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
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_calculate_digit_i_1_61:
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
_lower_case:
	.ds 1
_output_float_PARM_4:
	.ds 1
_output_float_PARM_5:
	.ds 1
_output_float_PARM_6:
	.ds 1
_output_float_PARM_7:
	.ds 1
_output_float_negative_1_65:
	.ds 1
__print_format_left_justify_1_98:
	.ds 1
__print_format_zero_padding_1_98:
	.ds 1
__print_format_prefix_sign_1_98:
	.ds 1
__print_format_prefix_space_1_98:
	.ds 1
__print_format_signed_argument_1_98:
	.ds 1
__print_format_char_argument_1_98:
	.ds 1
__print_format_long_argument_1_98:
	.ds 1
__print_format_float_argument_1_98:
	.ds 1
__print_format_lsd_1_98:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_output_char:
	.ds 3
_p:
	.ds 4
_value:
	.ds 5
_charsOutputted:
	.ds 2
_output_float_PARM_2:
	.ds 1
_output_float_PARM_3:
	.ds 1
_output_float_f_1_64:
	.ds 4
_output_float_fpBuffer_1_65:
	.ds 128
_output_float_integerPart_1_65:
	.ds 4
_output_float_rounding_1_65:
	.ds 4
_output_float_decimalPart_1_65:
	.ds 4
__print_format_PARM_2:
	.ds 4
__print_format_PARM_3:
	.ds 4
__print_format_PARM_4:
	.ds 4
__print_format_radix_1_98:
	.ds 1
__print_format_width_1_98:
	.ds 1
__print_format_length_1_98:
	.ds 1
__print_format_store_4_120:
	.ds 6
__print_format_pstore_4_120:
	.ds 3
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
	jnb  _lower_case,00104$
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
;i                         Allocated with name '_calculate_digit_i_1_61'
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
	mov	_calculate_digit_i_1_61,#0x20
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
	mov	a,_calculate_digit_i_1_61
	dec	a
;	genAssign: resultIsFar = FALSE
	mov  r0,a
	mov  _calculate_digit_i_1_61,r0 
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
;Allocation info for local variables in function 'output_float'
;------------------------------------------------------------
;reqWidth                  Allocated with name '_output_float_PARM_2'
;reqDecimals               Allocated with name '_output_float_PARM_3'
;f                         Allocated with name '_output_float_f_1_64'
;fpBuffer                  Allocated with name '_output_float_fpBuffer_1_65'
;integerPart               Allocated with name '_output_float_integerPart_1_65'
;rounding                  Allocated with name '_output_float_rounding_1_65'
;decimalPart               Allocated with name '_output_float_decimalPart_1_65'
;fpBI                      Allocated to registers r2 
;fpBD                      Allocated to registers 
;minWidth                  Allocated to registers r3 
;i                         Allocated to registers r7 
;exp                       Allocated to registers r6 
;sloc0                     Allocated with name '_output_float_sloc0_1_0'
;sloc1                     Allocated with name '_output_float_sloc1_1_0'
;sloc2                     Allocated with name '_output_float_sloc2_1_0'
;------------------------------------------------------------
;	printf_large.c:241: output_float (float f, unsigned char reqWidth,
;	-----------------------------------------
;	 function output_float
;	-----------------------------------------
_output_float:
	mov     dps, #1
	mov     dptr, #_output_float_f_1_64
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:247: bool negative = 0;
;	genAssign: resultIsFar = FALSE
	clr	_output_float_negative_1_65
;	printf_large.c:253: signed char exp = -128;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x80
;	printf_large.c:256: if (f<0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar6
	mov	a,dpl
	jz  00102$
00347$:
;	printf_large.c:258: negative=1;
;	genAssign: resultIsFar = FALSE
	setb	_output_float_negative_1_65
;	printf_large.c:259: f=-f;
	mov	dptr,#_output_float_f_1_64
	mov	dps, #1
	mov	dptr, #_output_float_f_1_64
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	acc[7]
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
00102$:
;	printf_large.c:262: if (f>0x00ffffff)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsgt_PARM_2
	mov  a,#0xFF
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov	a,#0x7F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x4B
	movx	@dptr,a
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsgt
	pop	ar6
	mov	a,dpl
	jnz	00348$
	ljmp	00111$
00348$:
;	printf_large.c:266: for (exp = 0; f >= 10.0; exp++) f /=10.0;
;	genAssign: resultIsFar = FALSE
	mov	r6,#0x00
00181$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar6
	mov	a,dpl
	jnz  00205$
00349$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_f_1_64
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
	inc	r6
	ljmp	00181$
00205$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r6
00184$:
;	printf_large.c:267: for (       ; f < 1.0;   exp--) f *=10.0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	push	ar7
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fslt
	pop	ar7
	mov	a,dpl
	jz  00246$
00350$:
	mov	dptr,#_output_float_f_1_64
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar7
	mov  dptr,#0x0000
	mov	dpx,#0x20
	mov	b,#0x41
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar7
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_f_1_64
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
	dec	r7
	ljmp	00184$
00246$:
;	genAssign: resultIsFar = TRUE
	mov	ar6,r7
;	printf_large.c:269: if (negative)
	jnb  _output_float_negative_1_65,00108$
00351$:
;	printf_large.c:271: OUTPUT_CHAR ('-', p);
	push	ar6
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar6
	sjmp 00109$
00108$:
;	printf_large.c:275: if (sign)
	jnb  _output_float_PARM_6,00109$
00352$:
;	printf_large.c:277: OUTPUT_CHAR ('+', p);
	push	ar6
	mov	dpl,#0x2B
	lcall	__output_char
	pop	ar6
00109$:
;	printf_large.c:280: reqWidth = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
	clr	a
	movx	@dptr,a
;	printf_large.c:281: left = 0;
;	genAssign: resultIsFar = FALSE
	clr	_output_float_PARM_4
;	printf_large.c:282: zero = 0;
;	genAssign: resultIsFar = FALSE
	clr	_output_float_PARM_5
;	printf_large.c:283: sign = 0;
;	genAssign: resultIsFar = FALSE
	clr	_output_float_PARM_6
;	printf_large.c:284: space = 0;
;	genAssign: resultIsFar = FALSE
	clr	_output_float_PARM_7
00111$:
;	printf_large.c:288: if (reqDecimals==-1)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	cjne a,#0xFF,00113$
00354$:
;	printf_large.c:289: reqDecimals=DEFAULT_FLOAT_PRECISION;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_3
	mov	a,#0x06
	movx	@dptr,a
00113$:
;	printf_large.c:292: rounding = 0.5;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_rounding_1_65
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r7,a
;	genAssign: resultIsFar = FALSE
	mov	ar0,r7
00187$:
	mov	a,r0
	jz  00114$
00355$:
;	printf_large.c:295: rounding /= 10.0;
	push	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x20
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	push	ar0
	inc	dps
	mov	dptr,#_output_float_rounding_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsdiv
	mov	r1,dpl
	mov	r6,dph
	mov	r2,dpx
	mov	r3,b
	pop	ar0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_rounding_1_65
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:293: for (i=reqDecimals; i>0; i--)
	dec	r0
	pop	ar6
	sjmp 00187$
00114$:
;	printf_large.c:297: f += rounding;
	push	ar6
	mov	dptr,#_output_float_rounding_1_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsadd_PARM_2
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
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_f_1_64
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
;	printf_large.c:300: integerPart = f;
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fs2ulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_integerPart_1_65
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
;	printf_large.c:301: decimalPart = f - integerPart;
	inc	dps
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___ulong2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,dpx
	mov	r2,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	push	ar6
	inc	dps
	mov	dptr,#_output_float_f_1_64
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_decimalPart_1_65
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
;	printf_large.c:304: while (integerPart)
;	genAssign: resultIsFar = FALSE
	mov	r7,#0x00
;	printf_large.c:428: return;
	pop	ar6
;	printf_large.c:304: while (integerPart)
00115$:
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz	00356$
	ljmp	00248$
00356$:
;	printf_large.c:306: fpBuffer[fpBI++]='0' + integerPart%10;
;	genAssign: resultIsFar = FALSE
	mov	ar2,r7
	inc	r7
	mov	a,r2
	add	a,#_output_float_fpBuffer_1_65
	mov	r2,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 8)
	mov	r3,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 16)
	mov	r4,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__modulong_PARM_2
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	push	ar7
	inc	dps
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	__modulong
	pop	ar7
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	mov	r5,dpl
	mov	a,#0x30
	add	a,r5
	mov  r5,a
	mov  dpl,r2
	mov  dph,r3
	mov  dpx,r4
	movx	@dptr,a
;	printf_large.c:307: integerPart /= 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__divulong_PARM_2
	mov	a,#0x0A
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar6
	push	ar7
	inc	dps
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	__divulong
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_integerPart_1_65
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
	ljmp	00115$
00248$:
;	genAssign: resultIsFar = TRUE
	mov	ar2,r7
;	printf_large.c:309: if (!fpBI)
	mov	a,r7
	jnz  00119$
00357$:
;	printf_large.c:312: fpBuffer[fpBI++]='0';
	mov	a,#0x01
	add	a,r7
	mov	r2,a
	mov	a,r7
	add	a,#_output_float_fpBuffer_1_65
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 8)
	mov	dph,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 16)
	mov	dpx,a
	mov	a,#0x30
	movx	@dptr,a
00119$:
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r7,a
;	genAssign: resultIsFar = FALSE
	mov	ar3,r2
;	genAssign: resultIsFar = FALSE
	mov	ar4,r7
00190$:
	mov	a,r4
	jnz  00189$
00358$:
;	genAssign: resultIsFar = TRUE
	mov	ar7,r4
	ljmp	00120$
00189$:
;	printf_large.c:320: decimalPart *= 10.0;
	push	ar2
	mov	dptr,#_output_float_decimalPart_1_65
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar3
	push	ar4
	push	ar6
	mov  dptr,#0x0000
	mov	dpx,#0x20
	mov	b,#0x41
	lcall	___fsmul
	mov	r5,dpl
	mov	r0,dph
	mov	r1,dpx
	mov	r2,b
	pop	ar6
	pop	ar4
	pop	ar3
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_decimalPart_1_65
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	printf_large.c:322: integerPart = decimalPart;
	push	ar3
	push	ar4
	push	ar6
	inc	dps
	mov	dptr,#_output_float_decimalPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fs2ulong
	mov	r2,dpl
	mov	r5,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar6
	pop	ar4
	pop	ar3
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_integerPart_1_65
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	printf_large.c:323: fpBuffer[fpBD++] = '0' + integerPart;
;	genAssign: resultIsFar = FALSE
	mov	ar2,r3
	inc	r3
	mov	a,r2
	add	a,#_output_float_fpBuffer_1_65
	mov	dpl1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 8)
	mov	dph1,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 16)
	mov	dpx1,a
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	add  a,#0x30
	mov  r1,a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:324: decimalPart -= integerPart;
	push	ar3
	push	ar4
	push	ar6
	inc	dps
	mov	dptr,#_output_float_integerPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___ulong2fs
	mov	r2,dpl
	mov	r5,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar6
	pop	ar4
	pop	ar3
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	push	ar3
	push	ar4
	push	ar6
	inc	dps
	mov	dptr,#_output_float_decimalPart_1_65
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	___fssub
	mov	r2,dpl
	mov	r5,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar6
	pop	ar4
	pop	ar3
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_decimalPart_1_65
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
;	printf_large.c:318: for (i=reqDecimals; i>0; i--)
	dec	r4
	pop	ar2
	ljmp	00190$
00120$:
;	printf_large.c:327: minWidth=fpBI; // we need at least these
;	genAssign: resultIsFar = TRUE
	mov	ar3,r2
;	printf_large.c:328: minWidth+=reqDecimals?reqDecimals+1:0; // maybe these
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	jz  00198$
00359$:
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	add	a,#0x01
	mov	r4,a
	sjmp 00199$
00198$:
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x00
00199$:
	mov	ar5,r3
	mov	a,r4
	add	a,r5
	mov	r3,a
;	printf_large.c:329: if (negative || sign || space)
	jb   _output_float_negative_1_65,00121$
00360$:
	jb   _output_float_PARM_6,00121$
00361$:
	jnb  _output_float_PARM_7,00122$
00362$:
00121$:
;	printf_large.c:330: minWidth++; // and maybe even this :)
	inc	r3
00122$:
;	printf_large.c:332: if (!left && reqWidth>i)
	jnb	_output_float_PARM_4,00363$
	ljmp	00159$
00363$:
	mov	dptr,#_output_float_PARM_2
	clr	c
	mov	a,r7
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00364$
	ljmp	00159$
00364$:
;	printf_large.c:334: if (zero)
	jnb  _output_float_PARM_5,00228$
00365$:
;	printf_large.c:336: if (negative)
	jnb  _output_float_negative_1_65,00131$
00366$:
;	printf_large.c:338: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00226$
00131$:
;	printf_large.c:340: else if (sign)
	jnb  _output_float_PARM_6,00128$
00367$:
;	printf_large.c:342: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2B
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00226$
00128$:
;	printf_large.c:344: else if (space)
	jnb  _output_float_PARM_7,00226$
00368$:
;	printf_large.c:346: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
;	printf_large.c:348: while (reqWidth-->minWidth)
00226$:
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00133$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	clr	c
	mov	a,r3
	subb	a,r5
	jc	00369$
	ljmp	00250$
00369$:
;	printf_large.c:350: OUTPUT_CHAR('0', p);
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,#0x30
	lcall	__output_char
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	printf_large.c:355: while (reqWidth-->minWidth)
	sjmp 00133$
00228$:
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r5,a
00136$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r5
	dec	r5
	clr	c
	mov	a,r3
	subb	a,r7
	jnc  00251$
00370$:
;	printf_large.c:357: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar5
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar5
	pop	ar3
	pop	ar2
	sjmp 00136$
00251$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
	mov	a,r5
	movx	@dptr,a
;	printf_large.c:359: if (negative)
	jnb  _output_float_negative_1_65,00145$
00371$:
;	printf_large.c:361: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	ljmp	00160$
00145$:
;	printf_large.c:363: else if (sign)
	jnb  _output_float_PARM_6,00142$
00372$:
;	printf_large.c:365: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2B
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00160$
00142$:
;	printf_large.c:367: else if (space)
	jnb  _output_float_PARM_7,00160$
00373$:
;	printf_large.c:369: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00160$
00159$:
;	printf_large.c:375: if (negative)
	jnb  _output_float_negative_1_65,00156$
00374$:
;	printf_large.c:377: OUTPUT_CHAR('-', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00160$
00156$:
;	printf_large.c:379: else if (sign)
	jnb  _output_float_PARM_6,00153$
00375$:
;	printf_large.c:381: OUTPUT_CHAR('+', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2B
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00160$
00153$:
;	printf_large.c:383: else if (space)
	jnb  _output_float_PARM_7,00160$
00376$:
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
;	printf_large.c:428: return;
;	printf_large.c:385: OUTPUT_CHAR(' ', p);
	sjmp 00160$
00250$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_2
	mov	a,r4
	movx	@dptr,a
00160$:
;	printf_large.c:390: i=fpBI-1;
	mov	a,r2
	dec	a
	mov	r4,a
;	printf_large.c:391: do {
00162$:
;	printf_large.c:392: OUTPUT_CHAR (fpBuffer[i], p);
	mov	a,r4
	add	a,#_output_float_fpBuffer_1_65
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 8)
	mov	dph,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 16)
	mov	dpx,a
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r5
	lcall	__output_char
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
;	printf_large.c:393: } while (i--);
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jnz  00162$
00377$:
;	printf_large.c:396: if (reqDecimals)
	mov	dptr,#_output_float_PARM_3
	movx	a,@dptr
	jz  00169$
00378$:
;	printf_large.c:398: OUTPUT_CHAR ('.', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x2E
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
;	printf_large.c:400: while (reqDecimals--)
;	genAssign: resultIsFar = FALSE
	mov	dptr,#_output_float_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00165$:
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jz  00169$
00379$:
;	printf_large.c:402: OUTPUT_CHAR (fpBuffer[i++], p);
;	genAssign: resultIsFar = FALSE
	mov	ar5,r2
	inc	r2
	mov	a,r5
	add	a,#_output_float_fpBuffer_1_65
	mov	dpl,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 8)
	mov	dph,a
	clr	a
	addc	a,#(_output_float_fpBuffer_1_65 >> 16)
	mov	dpx,a
	movx	a,@dptr
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar6
	mov	dpl,r5
	lcall	__output_char
	pop	ar6
	pop	ar4
	pop	ar3
	pop	ar2
	sjmp 00165$
00169$:
;	printf_large.c:406: if (left && reqWidth>minWidth)
	jnb  _output_float_PARM_4,00174$
00380$:
	mov	dptr,#_output_float_PARM_2
	clr	c
	mov	a,r3
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00174$
00381$:
;	printf_large.c:408: while (reqWidth-->minWidth)
	mov	dptr,#_output_float_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
00170$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r2
	dec	r2
	clr	c
	mov	a,r3
	subb	a,r4
	jnc  00174$
00382$:
;	printf_large.c:410: OUTPUT_CHAR(' ', p);
	push	ar2
	push	ar3
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar3
	pop	ar2
	sjmp 00170$
00174$:
;	printf_large.c:414: if (exp != -128)
	cjne	r6,#0x80,00383$
	sjmp 00179$
00383$:
;	printf_large.c:416: OUTPUT_CHAR ('e', p);
	push	ar6
	mov	dpl,#0x65
	lcall	__output_char
	pop	ar6
;	printf_large.c:417: if (exp<0)
	mov	a,r6
	jnb  acc[7],00177$
00384$:
;	printf_large.c:419: OUTPUT_CHAR ('-', p);
	push	ar6
	mov	dpl,#0x2D
	lcall	__output_char
	pop	ar6
;	printf_large.c:420: exp = -exp;
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
00177$:
;	printf_large.c:422: OUTPUT_CHAR ('0'+exp/10, p);
	clr	F0
	mov	b,#0x0a
	mov	a,r6
	jnb	acc[7],00385$
	cpl	F0
	cpl	a
	inc	a
00385$:
	nop	; workaround for DS80C390 div bug.
	div	ab
	jnb	F0,00386$
	cpl	a
	inc	a
00386$:
	add  a,#0x30
	mov  r2,a
	push	ar6
	mov	dpl,r2
	lcall	__output_char
	pop	ar6
;	printf_large.c:423: OUTPUT_CHAR ('0'+exp%10, p);
	mov	b,#0x0a
	mov	a,r6
	clr	F0
	jnb	acc[7],00387$
	setb	F0
	cpl	a
	inc	a
00387$:
	nop	; workaround for DS80C390 div bug.
	div	ab
	mov	a,b
	jnb	F0,00388$
	cpl	a
	inc	a
00388$:
	add  a,#0x30
	mov  r6,a
	mov	dpl,r6
	lcall	__output_char
00179$:
;	printf_large.c:428: return;
00192$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;radix                     Allocated with name '__print_format_radix_1_98'
;width                     Allocated with name '__print_format_width_1_98'
;decimals                  Allocated to registers r5 
;length                    Allocated with name '__print_format_length_1_98'
;c                         Allocated to registers r2 
;memtype                   Allocated to registers r2 
;store                     Allocated with name '__print_format_store_4_120'
;pstore                    Allocated with name '__print_format_pstore_4_120'
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
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
;	printf_large.c:469: if (format==0)
	mov	dptr,#__print_format_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00253$
00493$:
;	printf_large.c:471: format=NULL_STRING;
	mov	dptr,#__print_format_PARM_3
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
;	printf_large.c:475: while( c=*format++ )
00253$:
00242$:
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
	jnz	00494$
	ljmp	00244$
00494$:
;	printf_large.c:477: if ( c=='%' )
	cjne	r2,#0x25,00495$
	sjmp	00496$
00495$:
	ljmp	00240$
00496$:
;	printf_large.c:479: left_justify    = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_left_justify_1_98
;	printf_large.c:480: zero_padding    = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_zero_padding_1_98
;	printf_large.c:481: prefix_sign     = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_prefix_sign_1_98
;	printf_large.c:482: prefix_space    = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_prefix_space_1_98
;	printf_large.c:483: signed_argument = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_signed_argument_1_98
;	printf_large.c:484: char_argument   = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_char_argument_1_98
;	printf_large.c:485: long_argument   = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_long_argument_1_98
;	printf_large.c:486: float_argument  = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_float_argument_1_98
;	printf_large.c:487: radix           = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_98
;	printf_large.c:488: width           = 0;
;	genAssign: resultIsFar = TRUE
	clr   a
	movx  @dptr,a
	mov   dptr,#__print_format_width_1_98
	movx  @dptr,a
;	printf_large.c:489: decimals        = -1;
;	genAssign: resultIsFar = TRUE
	mov	r5,#0xFF
;	printf_large.c:491: get_conversion_spec:
	mov	dptr,#__print_format_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
00103$:
;	printf_large.c:493: c = *format++;
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r3,a
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_3
	mov	a,r6
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
;	genAssign: resultIsFar = TRUE
	mov	ar2,r3
;	printf_large.c:495: if (c=='%')
	cjne r2,#0x25,00105$
00498$:
;	printf_large.c:497: OUTPUT_CHAR(c, p);
	mov	dpl,r2
	lcall	__output_char
;	printf_large.c:498: continue;
	ljmp	00242$
00105$:
;	printf_large.c:501: if (isdigit(c))
	mov	ar3,r2
	cjne	r3,#0x30,00499$
00499$:
	jc   00112$
00500$:
	clr	c
	mov	a,#0x39
	subb	a,r3
	jc   00112$
00501$:
;	printf_large.c:503: if (decimals==-1)
	cjne r5,#0xFF,00109$
00503$:
;	printf_large.c:505: width = 10*width + c - '0';
	mov	dptr,#__print_format_width_1_98
	mov	b,#0x0A
	movx	a,@dptr
	mul	ab
	add  a,r2
	mov  r3,a
	add	a,#0xD0
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	movx	@dptr,a
;	printf_large.c:506: if (width == 0)
	mov	dptr,#__print_format_width_1_98
	movx	a,@dptr
	jnz  00103$
00504$:
;	printf_large.c:509: zero_padding = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_zero_padding_1_98
	sjmp 00103$
00109$:
;	printf_large.c:514: decimals = 10*decimals + c - '0';
	clr	F0
	mov	b,#0x0A
	mov	a,r5
	jnb	acc[7],00505$
	cpl	F0
	cpl	a
	inc	a
00505$:
	mul	ab
	jnb	F0,00506$
	cpl	a
	inc	a
00506$:
	add	a,r2
	mov  r3,a
	add	a,#0xD0
;	genAssign: resultIsFar = TRUE
	mov	r5,a
;	printf_large.c:516: goto get_conversion_spec;
	ljmp	00103$
00112$:
;	printf_large.c:519: if (c=='.')
	cjne r2,#0x2E,00117$
00508$:
;	printf_large.c:521: if (decimals==-1)
	cjne	r5,#0xFF,00509$
	sjmp	00510$
00509$:
	ljmp	00103$
00510$:
;	printf_large.c:522: decimals=0;
;	genAssign: resultIsFar = TRUE
	mov	r5,#0x00
;	printf_large.c:525: goto get_conversion_spec;
	ljmp	00103$
00117$:
;	printf_large.c:528: if (islower(c))
	mov	ar3,r2
	cjne	r3,#0x61,00511$
00511$:
	jc   00119$
00512$:
	clr	c
	mov	a,#0x7A
	subb	a,r3
	jc   00119$
00513$:
;	printf_large.c:530: c = toupper(c);
	anl	ar2,#0xDF
;	printf_large.c:531: lower_case = 1;
;	genAssign: resultIsFar = FALSE
	setb	_lower_case
	sjmp 00120$
00119$:
;	printf_large.c:534: lower_case = 0;
;	genAssign: resultIsFar = FALSE
	clr	_lower_case
00120$:
;	printf_large.c:536: switch( c )
	cjne	r2,#0x20,00514$
	ljmp	00124$
00514$:
	cjne	r2,#0x2B,00515$
	sjmp 00123$
00515$:
	cjne	r2,#0x2D,00516$
	sjmp 00122$
00516$:
	cjne	r2,#0x42,00517$
	sjmp 00125$
00517$:
	cjne	r2,#0x43,00518$
	ljmp	00131$
00518$:
	cjne	r2,#0x44,00519$
	ljmp	00168$
00519$:
	cjne	r2,#0x46,00520$
	ljmp	00172$
00520$:
	cjne	r2,#0x48,00521$
	ljmp	00103$
00521$:
	cjne	r2,#0x49,00522$
	ljmp	00168$
00522$:
	cjne	r2,#0x4A,00523$
	ljmp	00103$
00523$:
	cjne	r2,#0x4C,00524$
	sjmp 00130$
00524$:
	cjne	r2,#0x4F,00525$
	ljmp	00169$
00525$:
	cjne	r2,#0x50,00526$
	ljmp	00157$
00526$:
	cjne	r2,#0x53,00527$
	ljmp	00135$
00527$:
	cjne	r2,#0x54,00528$
	ljmp	00103$
00528$:
	cjne	r2,#0x55,00529$
	ljmp	00170$
00529$:
	cjne	r2,#0x58,00530$
	ljmp	00171$
00530$:
	cjne	r2,#0x5A,00531$
	ljmp	00103$
00531$:
	ljmp	00173$
;	printf_large.c:538: case '-':
00122$:
;	printf_large.c:539: left_justify = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_left_justify_1_98
;	printf_large.c:540: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:541: case '+':
00123$:
;	printf_large.c:542: prefix_sign = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_prefix_sign_1_98
;	printf_large.c:543: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:544: case ' ':
00124$:
;	printf_large.c:545: prefix_space = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_prefix_space_1_98
;	printf_large.c:546: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:547: case 'B': /* byte */
00125$:
;	printf_large.c:548: char_argument = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_char_argument_1_98
;	printf_large.c:549: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:556: case 'L': /* long */
00130$:
;	printf_large.c:557: long_argument = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_long_argument_1_98
;	printf_large.c:558: goto get_conversion_spec;
	ljmp	00103$
;	printf_large.c:560: case 'C':
00131$:
;	printf_large.c:561: if( char_argument )
	jnb  __print_format_char_argument_1_98,00133$
00532$:
;	printf_large.c:562: c = va_arg(ap,char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	dec	r6
	cjne	r6,#0xFF,00533$
	dec	r7
	cjne	r7,#0xFF,00533$
	dec	r0
00533$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r6
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrget
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	ar2,r6
	sjmp 00134$
00133$:
;	printf_large.c:564: c = va_arg(ap,int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,#0xFE
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r0
	addc	a,#0xFF
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r6
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	lcall	__decdptr
	mov	ar2,r6
00134$:
;	printf_large.c:565: OUTPUT_CHAR( c, p );
	push	ar5
	mov	dpl,r2
	lcall	__output_char
	pop	ar5
;	printf_large.c:566: break;
	ljmp	00174$
;	printf_large.c:568: case 'S':
00135$:
;	printf_large.c:569: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,#0xFC
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r0
	addc	a,#0xFF
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r6
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r6
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
;	printf_large.c:572: if (PTR==0)
	mov	a,r6
	orl	a,r7
	orl	a,r0
	jnz  00137$
00534$:
;	printf_large.c:574: PTR=NULL_STRING;
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
;	printf_large.c:575: length=NULL_STRING_LENGTH;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_length_1_98
	mov	a,#0x06
	movx	@dptr,a
	sjmp 00138$
00137$:
;	printf_large.c:579: length = strlen(PTR);
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r3,a
	push	ar5
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r3
	lcall	_strlen
	mov	r3,dpl
	mov	r7,dph
	pop	ar5
	mov	dptr,#__print_format_length_1_98
	mov	a,r3
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:579: length = strlen(PTR);
00138$:
;	printf_large.c:584: if ( decimals == -1 )
	cjne r5,#0xFF,00140$
00536$:
;	printf_large.c:586: decimals = length;
	mov	dptr,#__print_format_length_1_98
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	r5,a
00140$:
;	printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	jb   __print_format_left_justify_1_98,00290$
00537$:
	mov	dptr,#__print_format_width_1_98
	mov	dps, #1
	mov	dptr, #__print_format_length_1_98
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00290$
00538$:
;	printf_large.c:590: width -= length;
	mov	dptr,#__print_format_length_1_98
	mov	dps, #1
	mov	dptr, #__print_format_width_1_98
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:591: while( width-- != 0 )
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
00141$:
;	genAssign: resultIsFar = FALSE
	mov	ar0,r7
	dec	r7
	mov	a,r0
	jz  00326$
00539$:
;	printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	ar5
	push	ar7
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar7
	pop	ar5
;	printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
	sjmp 00141$
00326$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	mov	a,r7
	movx	@dptr,a
00290$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r5
00148$:
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r6,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r3
	mov	b,r6
	lcall	__gptrget
;	genAssign: resultIsFar = TRUE
	mov  r0,a
	mov  ar2,r0 
	jz  00327$
00540$:
;	genAssign: resultIsFar = FALSE
	mov	ar6,r7
	dec	r7
	clr	c
	clr	a
	xrl	a,#0x80
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
	jnc  00327$
00541$:
;	printf_large.c:599: OUTPUT_CHAR( c, p );
	push	ar7
	mov	dpl,r2
	lcall	__output_char
	pop	ar7
;	printf_large.c:600: PTR++;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r6,a
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	mov	r3,a
	inc	r6
	cjne	r6,#0x00,00542$
	inc	r0
	cjne	r0,#0x00,00542$
	inc	r1
00542$:
	mov	dptr,#_value
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	sjmp 00148$
00327$:
;	genAssign: resultIsFar = TRUE
	mov	ar5,r7
;	printf_large.c:603: if ( left_justify && (length < width))
	jb	__print_format_left_justify_1_98,00543$
	ljmp	00174$
00543$:
	mov	dptr,#__print_format_width_1_98
	mov	dps, #1
	mov	dptr, #__print_format_length_1_98
	dec	dps
	clr	c
	mov	dps,#1
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc	00544$
	ljmp	00174$
00544$:
;	printf_large.c:605: width -= length;
	mov	dptr,#__print_format_length_1_98
	mov	dps, #1
	mov	dptr, #__print_format_width_1_98
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	movx	@dptr,a
	mov	dps,#0
;	printf_large.c:606: while( width-- != 0 )
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
00151$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r6
	dec	r6
	mov	a,r7
	jnz	00545$
	ljmp	00328$
00545$:
;	printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	ar5
	push	ar6
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar6
	pop	ar5
;	printf_large.c:613: case 'P':
	sjmp 00151$
00157$:
;	printf_large.c:614: PTR = va_arg(ap,ptr_t);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	a,r7
	add	a,#0xFC
	mov	r7,a
	mov	a,r0
	addc	a,#0xFF
	mov	r0,a
	mov	a,r1
	addc	a,#0xFF
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dpl,r7
	mov	dph,r0
	mov	dpx,r1
	mov	b,r3
	lcall	__gptrgetWord
	mov	r3,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r3
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
;	printf_large.c:618: unsigned char memtype = value.byte[3];
	mov	dptr,#(_value + 0x000003)
	movx	a,@dptr
	mov	r3,a
;	genAssign: resultIsFar = FALSE
	mov	ar2,r3
;	printf_large.c:619: if (memtype >= 0x80)
	cjne	r2,#0x80,00546$
00546$:
	jc   00165$
00547$:
;	printf_large.c:620: c = 'C';
;	genAssign: resultIsFar = TRUE
	mov	r2,#0x43
	sjmp 00166$
00165$:
;	printf_large.c:621: else if (memtype >= 0x60)
	cjne	r2,#0x60,00548$
00548$:
	jc   00162$
00549$:
;	printf_large.c:622: c = 'P';
;	genAssign: resultIsFar = TRUE
	mov	r2,#0x50
	sjmp 00166$
00162$:
;	printf_large.c:623: else if (memtype >= 0x40)
	cjne	r2,#0x40,00550$
00550$:
	jc   00159$
00551$:
;	printf_large.c:624: c = 'I';
;	genAssign: resultIsFar = TRUE
	mov	r2,#0x49
	sjmp 00166$
00159$:
;	printf_large.c:626: c = 'X';
;	genAssign: resultIsFar = TRUE
	mov	r2,#0x58
00166$:
;	printf_large.c:628: OUTPUT_CHAR(c, p);
	push	ar5
	mov	dpl,r2
	lcall	__output_char
	pop	ar5
;	printf_large.c:629: OUTPUT_CHAR(':', p);
	push	ar5
	mov	dpl,#0x3A
	lcall	__output_char
	pop	ar5
;	printf_large.c:630: OUTPUT_CHAR('0', p);
	push	ar5
	mov	dpl,#0x30
	lcall	__output_char
	pop	ar5
;	printf_large.c:631: OUTPUT_CHAR('x', p);
	push	ar5
	mov	dpl,#0x78
	lcall	__output_char
	pop	ar5
;	printf_large.c:632: OUTPUT_2DIGITS( value.byte[2] );
	mov	dptr,#(_value + 0x000002)
	movx	a,@dptr
	mov	r7,a
	push	ar5
	mov	dpl,r7
	lcall	_output_2digits
	pop	ar5
;	printf_large.c:633: OUTPUT_2DIGITS( value.byte[1] );
	mov	dptr,#(_value + 0x000001)
	movx	a,@dptr
	mov	r7,a
	push	ar5
	mov	dpl,r7
	lcall	_output_2digits
	pop	ar5
;	printf_large.c:634: OUTPUT_2DIGITS( value.byte[0] );
	mov	dptr,#_value
	movx	a,@dptr
	mov	r7,a
	push	ar5
	mov	dpl,r7
	lcall	_output_2digits
	pop	ar5
;	printf_large.c:663: break;
;	printf_large.c:666: case 'I':
	sjmp 00174$
00168$:
;	printf_large.c:667: signed_argument = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_signed_argument_1_98
;	printf_large.c:668: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_98
	mov	a,#0x0A
	movx	@dptr,a
;	printf_large.c:669: break;
;	printf_large.c:671: case 'O':
	sjmp 00174$
00169$:
;	printf_large.c:672: radix = 8;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_98
	mov	a,#0x08
	movx	@dptr,a
;	printf_large.c:673: break;
;	printf_large.c:675: case 'U':
	sjmp 00174$
00170$:
;	printf_large.c:676: radix = 10;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_98
	mov	a,#0x0A
	movx	@dptr,a
;	printf_large.c:677: break;
;	printf_large.c:679: case 'X':
	sjmp 00174$
00171$:
;	printf_large.c:680: radix = 16;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_radix_1_98
	mov	a,#0x10
	movx	@dptr,a
;	printf_large.c:681: break;
;	printf_large.c:683: case 'F':
	sjmp 00174$
00172$:
;	printf_large.c:684: float_argument=1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_float_argument_1_98
;	printf_large.c:685: break;
;	printf_large.c:687: default:
	sjmp 00174$
00173$:
;	printf_large.c:689: OUTPUT_CHAR( c, p );
	push	ar5
	mov	dpl,r2
	lcall	__output_char
	pop	ar5
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:691: }
	sjmp 00174$
00328$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	mov	a,r6
	movx	@dptr,a
00174$:
;	printf_large.c:693: if (float_argument)
	jb	__print_format_float_argument_1_98,00552$
	ljmp	00237$
00552$:
;	printf_large.c:695: value.f = va_arg(ap, float);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,#0xFC
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov	r7,a
	mov	a,r0
	addc	a,#0xFF
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r6
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	__gptrgetWord
	mov	r6,a
	mov	r7,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r0,a
	mov	r1,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r6
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
;	printf_large.c:713: OUTPUT_FLOAT(value.f, width, decimals, left_justify,
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = TRUE
	movx	a,@dptr
	mov	dptr,#_output_float_PARM_2
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_output_float_PARM_3
	mov	a,r5
	movx	@dptr,a
;	genAssign: resultIsFar = FALSE
	mov	c,__print_format_left_justify_1_98
	mov	_output_float_PARM_4,c
;	genAssign: resultIsFar = FALSE
	mov	c,__print_format_zero_padding_1_98
	mov	_output_float_PARM_5,c
;	genAssign: resultIsFar = FALSE
	mov	c,__print_format_prefix_sign_1_98
	mov	_output_float_PARM_6,c
;	genAssign: resultIsFar = FALSE
	mov	c,__print_format_prefix_space_1_98
	mov	_output_float_PARM_7,c
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	_output_float
	ljmp	00242$
00237$:
;	printf_large.c:718: else if (radix != 0)
	mov	dptr,#__print_format_radix_1_98
	movx	a,@dptr
	jnz	00553$
	ljmp	00242$
00553$:
;	printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_pstore_4_120
	mov	a,#(__print_format_store_4_120 + 0x000005)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__print_format_store_4_120 + 0x000005) >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#((__print_format_store_4_120 + 0x000005) >> 16)
	movx	@dptr,a
;	printf_large.c:726: if (char_argument)
	jnb  __print_format_char_argument_1_98,00183$
00554$:
;	printf_large.c:728: value.l = va_arg(ap, char);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	dec	r0
	cjne	r0,#0xFF,00555$
	dec	r1
	cjne	r1,#0xFF,00555$
	dec	r5
00555$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrget
	mov  r5,a
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,a
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:729: if (!signed_argument)
	jnb	__print_format_signed_argument_1_98,00556$
	ljmp	00184$
00556$:
;	printf_large.c:731: value.l &= 0xFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
	mov	r1,#0x00
	mov	r5,#0x00
	mov	r6,#0x00
	mov	dptr,#_value
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	ljmp	00184$
00183$:
;	printf_large.c:734: else if (long_argument)
	jnb  __print_format_long_argument_1_98,00180$
00557$:
;	printf_large.c:736: value.l = va_arg(ap, long);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r0
	add	a,#0xFC
	mov	r0,a
	mov	a,r1
	addc	a,#0xFF
	mov	r1,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrgetWord
	mov	r5,a
	mov	r6,acc1
	inc	dptr
	lcall	__gptrgetWord
	mov	r7,a
	mov	r0,acc1
	lcall	__decdptr
	lcall	__decdptr
	lcall	__decdptr
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	sjmp 00184$
00180$:
;	printf_large.c:740: value.l = va_arg(ap, int);
	mov	dptr,#__print_format_PARM_4
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	a,r0
	add	a,#0xFE
	mov	r0,a
	mov	a,r1
	addc	a,#0xFF
	mov	r1,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_PARM_4
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r5
	mov	b,r6
	lcall	__gptrgetWord
	mov	r5,a
	mov	r6,acc1
	lcall	__decdptr
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	r0,a
	mov	dptr,#_value
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
;	printf_large.c:741: if (!signed_argument)
	jb   __print_format_signed_argument_1_98,00184$
00558$:
;	printf_large.c:743: value.l &= 0xFFFF;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
	mov	r5,#0x00
	mov	r6,#0x00
	mov	dptr,#_value
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:743: value.l &= 0xFFFF;
00184$:
;	printf_large.c:747: if ( signed_argument )
	jnb  __print_format_signed_argument_1_98,00189$
00559$:
;	printf_large.c:749: if (value.l < 0)
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov  r6,a
	jnb  acc[7],00186$
00560$:
;	printf_large.c:750: value.l = -value.l;
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r0,a
	movx	a,@dptr
	inc	dptr
	mov	r1,a
	movx	a,@dptr
	inc	dptr
	mov	r5,a
	movx	a,@dptr
	mov	r6,a
	clr	c
	clr	a
	subb	a,r0
	mov	r0,a
	clr	a
	subb	a,r1
	mov	r1,a
	clr	a
	subb	a,r5
	mov	r5,a
	clr	a
	subb	a,r6
	mov	r6,a
	mov	dptr,#_value
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	sjmp 00189$
00186$:
;	printf_large.c:752: signed_argument = 0;
;	genAssign: resultIsFar = FALSE
	clr	__print_format_signed_argument_1_98
00189$:
;	printf_large.c:756: lsd = 1;
;	genAssign: resultIsFar = FALSE
	setb	__print_format_lsd_1_98
;	printf_large.c:758: do {
	mov	dptr,#__print_format_pstore_4_120
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
00193$:
;	printf_large.c:759: value.byte[4] = 0;
	mov	dptr,#(_value + 0x000004)
	clr	a
	movx	@dptr,a
;	printf_large.c:763: calculate_digit(radix);
	push	ar2
	push	ar5
	push	ar0
	push	ar1
	mov	dptr,#__print_format_radix_1_98
	movx	a,@dptr
	mov	dpl,a
	lcall	_calculate_digit
	pop	ar1
	pop	ar0
	pop	ar5
	pop	ar2
;	printf_large.c:765: if (!lsd)
	jb   __print_format_lsd_1_98,00191$
00561$:
;	printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	push	ar2
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r7,a
	swap	a
	mov	r7,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r5
	movx	a,@dptr
	mov  r6,a
	orl	ar7,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r5
	mov	a,r7
	movx	@dptr,a
;	printf_large.c:768: pstore--;
	dec	r0
	cjne	r0,#0xFF,00562$
	dec	r1
	cjne	r1,#0xFF,00562$
	dec	r5
00562$:
	pop	ar2
	sjmp 00192$
00191$:
;	printf_large.c:772: *pstore = value.byte[4];
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov  r7,a
	mov  dpl,r0
	mov  dph,r1
	mov  dpx,r5
	movx	@dptr,a
00192$:
;	printf_large.c:774: length++;
	inc	r2
;	printf_large.c:775: lsd = !lsd;
	cpl	__print_format_lsd_1_98
;	printf_large.c:776: } while( value.ul );
	mov	dptr,#_value
	movx	a,@dptr
	inc	dptr
	mov	r7,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	mov	r6,a
	mov	a,r7
	orl	a,r4
	orl	a,r3
	orl	a,r6
	jnz  00193$
00563$:
;	printf_large.c:778: if (width == 0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_pstore_4_120
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_length_1_98
	mov	a,r2
	movx	@dptr,a
	mov	dptr,#__print_format_width_1_98
	movx	a,@dptr
	jnz  00197$
00564$:
;	printf_large.c:783: width = 1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	mov	a,#0x01
	movx	@dptr,a
00197$:
;	printf_large.c:787: if (!zero_padding && !left_justify)
	jb   __print_format_zero_padding_1_98,00202$
00565$:
	jb   __print_format_left_justify_1_98,00202$
00566$:
;	printf_large.c:789: while ( width > (unsigned char) (length+1) )
	mov	dptr,#__print_format_length_1_98
	movx	a,@dptr
	add	a,#0x01
	mov	r3,a
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
00198$:
	clr	c
	mov	a,r3
	subb	a,r4
	jnc  00330$
00567$:
;	printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	ar3
	push	ar4
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar4
	pop	ar3
;	printf_large.c:792: width--;
	dec	r4
	sjmp 00198$
00330$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	mov	a,r4
	movx	@dptr,a
00202$:
;	printf_large.c:796: if (signed_argument) // this now means the original value was negative
	jnb  __print_format_signed_argument_1_98,00212$
00568$:
;	printf_large.c:798: OUTPUT_CHAR( '-', p );
	mov	dpl,#0x2D
	lcall	__output_char
;	printf_large.c:800: width--;
	mov	dptr,#__print_format_width_1_98
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	movx	@dptr,a
	sjmp 00213$
00212$:
;	printf_large.c:802: else if (length != 0)
	mov	dptr,#__print_format_length_1_98
	movx	a,@dptr
	jz  00213$
00569$:
;	printf_large.c:805: if (prefix_sign)
	jnb  __print_format_prefix_sign_1_98,00207$
00570$:
;	printf_large.c:807: OUTPUT_CHAR( '+', p );
	mov	dpl,#0x2B
	lcall	__output_char
;	printf_large.c:809: width--;
	mov	dptr,#__print_format_width_1_98
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	movx	@dptr,a
	sjmp 00213$
00207$:
;	printf_large.c:811: else if (prefix_space)
	jnb  __print_format_prefix_space_1_98,00213$
00571$:
;	printf_large.c:813: OUTPUT_CHAR( ' ', p );
	mov	dpl,#0x20
	lcall	__output_char
;	printf_large.c:815: width--;
	mov	dptr,#__print_format_width_1_98
	movx	a,@dptr
	dec	a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	movx	@dptr,a
00213$:
;	printf_large.c:820: if (!left_justify)
	jb   __print_format_left_justify_1_98,00221$
00572$:
;	printf_large.c:822: while ( width-- > length )
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
00214$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	dec	r3
	mov	dptr,#__print_format_length_1_98
	clr	c
	movx	a,@dptr
	subb	a,r4
	jnc  00331$
00573$:
;	printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	jnb  __print_format_zero_padding_1_98,00247$
00574$:
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x30
	sjmp 00248$
00247$:
;	genAssign: resultIsFar = FALSE
	mov	r4,#0x20
00248$:
	push	ar3
	mov	dpl,r4
	lcall	__output_char
	pop	ar3
	sjmp 00214$
00221$:
;	printf_large.c:830: if (width > length)
	mov	dptr,#__print_format_length_1_98
	mov	dps, #1
	mov	dptr, #__print_format_width_1_98
	dec	dps
	clr	c
	movx	a,@dptr
	mov	dps,#1
	xch	a, b
	movx	a,@dptr
	mov	dps,#0
	xch	a, b
	subb	a,b
	jnc  00218$
00575$:
;	printf_large.c:831: width -= length;
	mov	dptr,#__print_format_length_1_98
	mov	dps, #1
	mov	dptr, #__print_format_width_1_98
	dec	dps
	clr	c
	movx	a,@dptr
	mov	b,a
	inc	dps
	movx	a,@dptr
	subb	a,b
	movx	@dptr,a
	mov	dps,#0
	sjmp 00323$
00218$:
;	printf_large.c:833: width = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	clr	a
	movx	@dptr,a
;	printf_large.c:872: return charsOutputted;
;	printf_large.c:837: while( length-- )
	sjmp 00323$
00331$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__print_format_width_1_98
	mov	a,r3
	movx	@dptr,a
00323$:
	mov	dptr,#__print_format_pstore_4_120
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__print_format_length_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
00226$:
;	genAssign: resultIsFar = FALSE
	mov	ar7,r6
	dec	r6
	mov	a,r7
	jz  00228$
00576$:
;	printf_large.c:839: lsd = !lsd;
	cpl	__print_format_lsd_1_98
;	printf_large.c:840: if (!lsd)
	jb   __print_format_lsd_1_98,00224$
00577$:
;	printf_large.c:842: pstore++;
	inc	r3
	cjne	r3,#0x00,00578$
	inc	r4
	cjne	r4,#0x00,00578$
	inc	r5
00578$:
;	printf_large.c:843: value.byte[4] = *pstore >> 4;
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	movx	a,@dptr
	mov  r7,a
	swap	a
	anl	a,#0x0F
	mov  r7,a
	mov  dptr,#(_value + 0x000004)
	movx @dptr,a
	sjmp 00225$
00224$:
;	printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0x0F
	mov	dptr,#(_value + 0x000004)
	mov	a,r7
	movx	@dptr,a
00225$:
;	printf_large.c:853: output_digit( value.byte[4] );
	mov	dptr,#(_value + 0x000004)
	movx	a,@dptr
	mov	r7,a
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r7
	lcall	_output_digit
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	sjmp 00226$
00228$:
;	printf_large.c:856: if (left_justify)
	jb	__print_format_left_justify_1_98,00579$
	ljmp	00242$
00579$:
;	printf_large.c:858: while (width-- > 0)
	mov	dptr,#__print_format_width_1_98
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
00229$:
;	genAssign: resultIsFar = FALSE
	mov	ar4,r3
	dec	r3
	mov	a,r4
	jnz	00580$
	ljmp	00242$
00580$:
;	printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	ar3
	mov	dpl,#0x20
	lcall	__output_char
	pop	ar3
	sjmp 00229$
00240$:
;	printf_large.c:868: OUTPUT_CHAR( c, p );
	mov	dpl,r2
	lcall	__output_char
	ljmp	00242$
00244$:
;	printf_large.c:872: return charsOutputted;
	mov     dps, #1
	mov     dptr, #_charsOutputted
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
00245$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NULL>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
