;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mhc08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format_PARM_4
	.globl __print_format_PARM_3
	.globl __print_format_PARM_2
	.globl __print_format
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__print_format_sloc0_1_0:
	.ds 1
__print_format_sloc1_1_0:
	.ds 2
__print_format_sloc2_1_0:
	.ds 1
__print_format_sloc3_1_0:
	.ds 4
__print_format_sloc4_1_0:
	.ds 4
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_calculate_digit_ul_1_60:
	.ds 4
_calculate_digit_i_1_60:
	.ds 1
_calculate_digit_sloc0_1_0:
	.ds 1
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_lower_case:
	.ds 1
_output_char:
	.ds 2
_p:
	.ds 2
_value:
	.ds 5
_charsOutputted:
	.ds 2
_calculate_digit_radix_1_59:
	.ds 1
__print_format_PARM_2:
	.ds 2
__print_format_PARM_3:
	.ds 2
__print_format_PARM_4:
	.ds 2
__print_format_left_justify_1_64:
	.ds 1
__print_format_zero_padding_1_64:
	.ds 1
__print_format_prefix_sign_1_64:
	.ds 1
__print_format_prefix_space_1_64:
	.ds 1
__print_format_signed_argument_1_64:
	.ds 1
__print_format_char_argument_1_64:
	.ds 1
__print_format_long_argument_1_64:
	.ds 1
__print_format_float_argument_1_64:
	.ds 1
__print_format_lsd_1_64:
	.ds 1
__print_format_radix_1_64:
	.ds 1
__print_format_decimals_1_64:
	.ds 1
__print_format_store_4_83:
	.ds 6
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
;c                         Allocated to registers x 
;------------------------------------------------------------
;../printf_large.c:105: _output_char (unsigned char c)
;	-----------------------------------------
;	 function _output_char
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__output_char:
	tax
;../printf_large.c:107: output_char( c, p );
	lda	(_p + 1)
	psha
	lda	_p
	psha
	bsr	00104$
	bra	00103$
00104$:
	lda	(_output_char + 1)
	psha
	lda	_output_char
	psha
	txa
	rts
00103$:
	ais	#2
;../printf_large.c:108: charsOutputted++;
	ldhx	#_charsOutputted
	inc	1,x
	bne	00105$
	inc	,x
00105$:
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'output_digit'
;------------------------------------------------------------
;c                         Allocated to registers a 
;n                         Allocated to registers a 
;------------------------------------------------------------
;../printf_large.c:130: output_digit (unsigned char n)
;	-----------------------------------------
;	 function output_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_digit:
;../printf_large.c:132: register unsigned char c = n + (unsigned char)'0';
	add	#0x30
;../printf_large.c:134: if (c > (unsigned char)'9')
	cmp	#0x39
	bls	00104$
;../printf_large.c:136: c += (unsigned char)('A' - '0' - 10);
	add	#0x07
;../printf_large.c:137: if (lower_case)
	ldx	_lower_case
	beq	00104$
;../printf_large.c:138: c = tolower(c);
	ora	#0x20
00104$:
;../printf_large.c:140: _output_char( c );
	jmp	__output_char
;------------------------------------------------------------
;Allocation info for local variables in function 'output_2digits'
;------------------------------------------------------------
;b                         Allocated to registers x 
;------------------------------------------------------------
;../printf_large.c:157: output_2digits (unsigned char b)
;	-----------------------------------------
;	 function output_2digits
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_output_2digits:
	tax
;../printf_large.c:159: output_digit( b>>4   );
	txa
	nsa	
	and	#0x0f
	pshx
	jsr	_output_digit
	pulx
;../printf_large.c:160: output_digit( b&0x0F );
	txa
	and	#0x0F
	jmp	_output_digit
;------------------------------------------------------------
;Allocation info for local variables in function 'calculate_digit'
;------------------------------------------------------------
;radix                     Allocated with name '_calculate_digit_radix_1_59'
;ul                        Allocated with name '_calculate_digit_ul_1_60'
;b4                        Allocated to registers x 
;i                         Allocated with name '_calculate_digit_i_1_60'
;sloc0                     Allocated with name '_calculate_digit_sloc0_1_0'
;------------------------------------------------------------
;../printf_large.c:189: calculate_digit (unsigned char radix)
;	-----------------------------------------
;	 function calculate_digit
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calculate_digit:
	sta	_calculate_digit_radix_1_59
;../printf_large.c:191: register unsigned long ul = value.ul;
	lda	_value
	sta	*_calculate_digit_ul_1_60
	lda	(_value + 1)
	sta	*(_calculate_digit_ul_1_60 + 1)
	lda	(_value + 2)
	sta	*(_calculate_digit_ul_1_60 + 2)
	lda	(_value + 3)
	sta	*(_calculate_digit_ul_1_60 + 3)
;../printf_large.c:192: register unsigned char b4 = value.byte[4];
	ldx	(_value + 0x0004)
;../printf_large.c:193: register unsigned char i = 32;
	mov	#0x20,*_calculate_digit_i_1_60
;../printf_large.c:195: do
00103$:
;../printf_large.c:197: b4 = (b4 << 1);
	txa
	lsla	
	tax
;../printf_large.c:198: b4 |= (ul >> 31) & 0x01;
	lda	*_calculate_digit_ul_1_60
	rola
	clra
	rola
	stx	*_calculate_digit_sloc0_1_0
	ora	*_calculate_digit_sloc0_1_0
	tax
;../printf_large.c:199: ul <<= 1;
	pshx
	lda	*(_calculate_digit_ul_1_60 + 3)
	ldx	*(_calculate_digit_ul_1_60 + 2)
	lsla
	rolx
	sta	*(_calculate_digit_ul_1_60 + 3)
	stx	*(_calculate_digit_ul_1_60 + 2)
	lda	*(_calculate_digit_ul_1_60 + 1)
	ldx	*_calculate_digit_ul_1_60
	rola
	rolx
	sta	*(_calculate_digit_ul_1_60 + 1)
	stx	*_calculate_digit_ul_1_60
	pulx
;../printf_large.c:201: if (radix <= b4 )
	cpx	_calculate_digit_radix_1_59
	bcs	00104$
;../printf_large.c:203: b4 -= radix;
	txa
	sub	_calculate_digit_radix_1_59
	tax
;../printf_large.c:204: ul |= 1;
	bset	#0,*(_calculate_digit_ul_1_60 + 3)
00104$:
;../printf_large.c:206: } while (--i);
	lda	*_calculate_digit_i_1_60
	sub	#0x01
	sta	*_calculate_digit_i_1_60
	tsta
	bne	00103$
;../printf_large.c:207: value.ul = ul;
	lda	*_calculate_digit_ul_1_60
	sta	_value
	lda	*(_calculate_digit_ul_1_60 + 1)
	sta	(_value + 1)
	lda	*(_calculate_digit_ul_1_60 + 2)
	sta	(_value + 2)
	lda	*(_calculate_digit_ul_1_60 + 3)
	sta	(_value + 3)
;../printf_large.c:208: value.byte[4] = b4;
	stx	(_value + 0x0004)
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_print_format'
;------------------------------------------------------------
;sloc0                     Allocated with name '__print_format_sloc0_1_0'
;sloc1                     Allocated with name '__print_format_sloc1_1_0'
;sloc2                     Allocated with name '__print_format_sloc2_1_0'
;sloc3                     Allocated with name '__print_format_sloc3_1_0'
;sloc4                     Allocated with name '__print_format_sloc4_1_0'
;pvoid                     Allocated with name '__print_format_PARM_2'
;format                    Allocated with name '__print_format_PARM_3'
;ap                        Allocated with name '__print_format_PARM_4'
;pfn                       Allocated to registers 
;left_justify              Allocated with name '__print_format_left_justify_1_64'
;zero_padding              Allocated with name '__print_format_zero_padding_1_64'
;prefix_sign               Allocated with name '__print_format_prefix_sign_1_64'
;prefix_space              Allocated with name '__print_format_prefix_space_1_64'
;signed_argument           Allocated with name '__print_format_signed_argument_1_64'
;char_argument             Allocated with name '__print_format_char_argument_1_64'
;long_argument             Allocated with name '__print_format_long_argument_1_64'
;float_argument            Allocated with name '__print_format_float_argument_1_64'
;lsd                       Allocated with name '__print_format_lsd_1_64'
;radix                     Allocated with name '__print_format_radix_1_64'
;width                     Allocated to registers 
;decimals                  Allocated with name '__print_format_decimals_1_64'
;length                    Allocated to registers 
;c                         Allocated to registers a 
;store                     Allocated with name '__print_format_store_4_83'
;pstore                    Allocated to registers 
;------------------------------------------------------------
;../printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	-----------------------------------------
;	 function _print_format
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__print_format:
	sta	(_output_char + 1)
	stx	_output_char
;../printf_large.c:462: p = pvoid;
	lda	__print_format_PARM_2
	sta	_p
	lda	(__print_format_PARM_2 + 1)
	sta	(_p + 1)
;../printf_large.c:466: charsOutputted = 0;
	clra
	sta	_charsOutputted
	sta	(_charsOutputted + 1)
;../printf_large.c:475: while( c=*format++ )
00231$:
	lda	__print_format_PARM_3
	psha
	pulh
	ldx	(__print_format_PARM_3 + 1)
	lda	,x
	aix	#1
	stx	(__print_format_PARM_3 + 1)
	pshx
	pshh
	pulx
	stx	__print_format_PARM_3
	pulx
	tax
	tsta
	bne	00550$
	jmp	00233$
00550$:
;../printf_large.c:477: if ( c=='%' )
	cpx	#0x25
	beq	00551$
	jmp	00229$
00551$:
;../printf_large.c:479: left_justify    = 0;
	clra
	sta	__print_format_left_justify_1_64
;../printf_large.c:480: zero_padding    = 0;
	sta	__print_format_zero_padding_1_64
;../printf_large.c:481: prefix_sign     = 0;
	sta	__print_format_prefix_sign_1_64
;../printf_large.c:482: prefix_space    = 0;
	sta	__print_format_prefix_space_1_64
;../printf_large.c:483: signed_argument = 0;
	sta	__print_format_signed_argument_1_64
;../printf_large.c:484: char_argument   = 0;
	sta	__print_format_char_argument_1_64
;../printf_large.c:485: long_argument   = 0;
	sta	__print_format_long_argument_1_64
;../printf_large.c:486: float_argument  = 0;
	sta	__print_format_float_argument_1_64
;../printf_large.c:487: radix           = 0;
	sta	__print_format_radix_1_64
;../printf_large.c:488: width           = 0;
	sta	*__print_format_sloc0_1_0
;../printf_large.c:489: decimals        = -1;
	deca
	sta	__print_format_decimals_1_64
;../printf_large.c:491: get_conversion_spec:
	lda	__print_format_PARM_3
	sta	*__print_format_sloc1_1_0
	lda	(__print_format_PARM_3 + 1)
	sta	*(__print_format_sloc1_1_0 + 1)
00101$:
;../printf_large.c:493: c = *format++;
	ldhx	*__print_format_sloc1_1_0
	lda	,x
	aix	#1
	sthx	*__print_format_sloc1_1_0
	tax
	lda	*__print_format_sloc1_1_0
	sta	__print_format_PARM_3
	lda	*(__print_format_sloc1_1_0 + 1)
	sta	(__print_format_PARM_3 + 1)
;../printf_large.c:495: if (c=='%')
	cpx	#0x25
	bne	00103$
;../printf_large.c:497: OUTPUT_CHAR(c, p);
	txa
	jsr	__output_char
;../printf_large.c:498: continue;
	bra	00231$
00103$:
;../printf_large.c:501: if (isdigit(c))
	txa
	cmp	#0x30
	bcs	00110$
	cmp	#0x39
	bhi	00110$
;../printf_large.c:503: if (decimals==-1)
	lda	__print_format_decimals_1_64
	cmp	#0xFF
	bne	00107$
;../printf_large.c:505: width = 10*width + c - '0';
	pshx
	lda	*__print_format_sloc0_1_0
	ldx	#0x0A
	mul
	pulx
	sta	*__print_format_sloc2_1_0
	txa
	add	*__print_format_sloc2_1_0
	sub	#0x30
	sta	*__print_format_sloc0_1_0
;../printf_large.c:506: if (width == 0)
	tst	*__print_format_sloc0_1_0
	bne	00101$
;../printf_large.c:509: zero_padding = 1;
	lda	#0x01
	sta	__print_format_zero_padding_1_64
	bra	00101$
00107$:
;../printf_large.c:514: decimals = 10*decimals + c - '0';
	pshx
	lda	__print_format_decimals_1_64
	ldx	#0x0A
	mul
	sta	*__print_format_sloc2_1_0
	pulx
	txa
	add	*__print_format_sloc2_1_0
	sub	#0x30
	sta	__print_format_decimals_1_64
;../printf_large.c:516: goto get_conversion_spec;
	bra	00101$
00110$:
;../printf_large.c:519: if (c=='.')
	cpx	#0x2E
	bne	00115$
;../printf_large.c:521: if (decimals==-1)
	lda	__print_format_decimals_1_64
	cmp	#0xFF
	bne	00101$
;../printf_large.c:522: decimals=0;
	clra
	sta	__print_format_decimals_1_64
;../printf_large.c:525: goto get_conversion_spec;
	bra	00101$
00115$:
;../printf_large.c:528: if (islower(c))
	txa
	cmp	#0x61
	bcs	00117$
	cmp	#0x7A
	bhi	00117$
;../printf_large.c:530: c = toupper(c);
	txa
	and	#0xDF
	tax
;../printf_large.c:531: lower_case = 1;
	lda	#0x01
	sta	_lower_case
	bra	00118$
00117$:
;../printf_large.c:534: lower_case = 0;
	clra
	sta	_lower_case
00118$:
;../printf_large.c:536: switch( c )
	cpx	#0x20
	bne	00561$
	jmp	00122$
00561$:
	cpx	#0x2B
	bne	00562$
	bra	00121$
00562$:
	cpx	#0x2D
	beq	00120$
	cpx	#0x42
	bne	00564$
	bra	00123$
00564$:
	cpx	#0x43
	bne	00565$
	jmp	00129$
00565$:
	cpx	#0x44
	bne	00566$
	jmp	00154$
00566$:
	cpx	#0x46
	bne	00567$
	jmp	00158$
00567$:
	cpx	#0x48
	bne	00568$
	jmp	00101$
00568$:
	cpx	#0x49
	bne	00569$
	jmp	00154$
00569$:
	cpx	#0x4A
	bne	00570$
	jmp	00101$
00570$:
	cpx	#0x4C
	beq	00128$
	cpx	#0x4F
	bne	00572$
	jmp	00155$
00572$:
	cpx	#0x50
	bne	00573$
	jmp	00152$
00573$:
	cpx	#0x53
	bne	00574$
	jmp	00133$
00574$:
	cpx	#0x54
	bne	00575$
	jmp	00101$
00575$:
	cpx	#0x55
	bne	00576$
	jmp	00156$
00576$:
	cpx	#0x58
	bne	00577$
	jmp	00157$
00577$:
	cpx	#0x5A
	bne	00578$
	jmp	00101$
00578$:
	jmp	00159$
;../printf_large.c:538: case '-':
00120$:
;../printf_large.c:539: left_justify = 1;
	lda	#0x01
	sta	__print_format_left_justify_1_64
;../printf_large.c:540: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:541: case '+':
00121$:
;../printf_large.c:542: prefix_sign = 1;
	lda	#0x01
	sta	__print_format_prefix_sign_1_64
;../printf_large.c:543: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:544: case ' ':
00122$:
;../printf_large.c:545: prefix_space = 1;
	lda	#0x01
	sta	__print_format_prefix_space_1_64
;../printf_large.c:546: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:547: case 'B': /* byte */
00123$:
;../printf_large.c:548: char_argument = 1;
	lda	#0x01
	sta	__print_format_char_argument_1_64
;../printf_large.c:549: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:556: case 'L': /* long */
00128$:
;../printf_large.c:557: long_argument = 1;
	lda	#0x01
	sta	__print_format_long_argument_1_64
;../printf_large.c:558: goto get_conversion_spec;
	jmp	00101$
;../printf_large.c:560: case 'C':
00129$:
;../printf_large.c:561: if( char_argument )
	lda	__print_format_char_argument_1_64
	beq	00131$
;../printf_large.c:562: c = va_arg(ap,char);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#1
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-1
	lda	,x
	bra	00132$
00131$:
;../printf_large.c:564: c = va_arg(ap,int);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#2
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-2
	lda	1,x
	ldx	,x
00132$:
;../printf_large.c:565: OUTPUT_CHAR( c, p );
	jsr	__output_char
;../printf_large.c:566: break;
	jmp	00160$
;../printf_large.c:568: case 'S':
00133$:
;../printf_large.c:569: PTR = va_arg(ap,ptr_t);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#2
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-2
	lda	1,x
	ldx	,x
	stx	_value
	sta	(_value + 1)
;../printf_large.c:582: length = strlen(PTR);
	jsr	_strlen
	sta	*__print_format_sloc2_1_0
;../printf_large.c:584: if ( decimals == -1 )
	lda	__print_format_decimals_1_64
	cmp	#0xFF
	bne	00135$
;../printf_large.c:586: decimals = length;
	lda	*__print_format_sloc2_1_0
	sta	__print_format_decimals_1_64
00135$:
;../printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	lda	__print_format_left_justify_1_64
	bne	00277$
	lda	*__print_format_sloc2_1_0
	cmp	*__print_format_sloc0_1_0
	bcc	00277$
;../printf_large.c:590: width -= length;
	lda	*__print_format_sloc0_1_0
	sub	*__print_format_sloc2_1_0
;../printf_large.c:591: while( width-- != 0 )
00136$:
	tax
	deca
	tstx
	beq	00312$
;../printf_large.c:593: OUTPUT_CHAR( ' ', p );
	psha
	lda	#0x20
	jsr	__output_char
	pula
	bra	00136$
;../printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	sta	*__print_format_sloc0_1_0
00277$:
	lda	__print_format_decimals_1_64
	sta	*__print_format_sloc1_1_0
00143$:
	lda	_value
	psha
	pulh
	ldx	(_value + 1)
	lda	,x
	tsta
	beq	00145$
	ldx	*__print_format_sloc1_1_0
	dec	*__print_format_sloc1_1_0
	cpx	#0x00
	ble	00145$
;../printf_large.c:599: OUTPUT_CHAR( c, p );
	jsr	__output_char
;../printf_large.c:600: PTR++;
	lda	_value
	ldx	(_value + 1)
	incx
	bne	00586$
	inca
00586$:
	sta	_value
	stx	(_value + 1)
	bra	00143$
00145$:
;../printf_large.c:603: if ( left_justify && (length < width))
	lda	__print_format_left_justify_1_64
	bne	00587$
	jmp	00160$
00587$:
	lda	*__print_format_sloc2_1_0
	cmp	*__print_format_sloc0_1_0
	bcc	00160$
;../printf_large.c:605: width -= length;
	lda	*__print_format_sloc0_1_0
	sub	*__print_format_sloc2_1_0
;../printf_large.c:606: while( width-- != 0 )
00146$:
	tax
	deca
	tstx
	beq	00314$
;../printf_large.c:608: OUTPUT_CHAR( ' ', p );
	psha
	lda	#0x20
	jsr	__output_char
	pula
	bra	00146$
;../printf_large.c:613: case 'P':
00152$:
;../printf_large.c:614: PTR = va_arg(ap,ptr_t);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#2
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-2
	lda	,x
	ldx	1,x
	sta	_value
	stx	(_value + 1)
;../printf_large.c:658: OUTPUT_CHAR('0', p);
	lda	#0x30
	jsr	__output_char
;../printf_large.c:659: OUTPUT_CHAR('x', p);
	lda	#0x78
	jsr	__output_char
;../printf_large.c:660: OUTPUT_2DIGITS( value.byte[1] );
	lda	(_value + 0x0001)
	jsr	_output_2digits
;../printf_large.c:661: OUTPUT_2DIGITS( value.byte[0] );
	lda	_value
	jsr	_output_2digits
;../printf_large.c:663: break;
	bra	00160$
;../printf_large.c:666: case 'I':
00154$:
;../printf_large.c:667: signed_argument = 1;
	lda	#0x01
	sta	__print_format_signed_argument_1_64
;../printf_large.c:668: radix = 10;
	lda	#0x0A
	sta	__print_format_radix_1_64
;../printf_large.c:669: break;
	bra	00160$
;../printf_large.c:671: case 'O':
00155$:
;../printf_large.c:672: radix = 8;
	lda	#0x08
	sta	__print_format_radix_1_64
;../printf_large.c:673: break;
	bra	00160$
;../printf_large.c:675: case 'U':
00156$:
;../printf_large.c:676: radix = 10;
	lda	#0x0A
	sta	__print_format_radix_1_64
;../printf_large.c:677: break;
	bra	00160$
;../printf_large.c:679: case 'X':
00157$:
;../printf_large.c:680: radix = 16;
	lda	#0x10
	sta	__print_format_radix_1_64
;../printf_large.c:681: break;
	bra	00160$
;../printf_large.c:683: case 'F':
00158$:
;../printf_large.c:684: float_argument=1;
	lda	#0x01
	sta	__print_format_float_argument_1_64
;../printf_large.c:685: break;
	bra	00160$
;../printf_large.c:687: default:
00159$:
;../printf_large.c:689: OUTPUT_CHAR( c, p );
	txa
	jsr	__output_char
;../printf_large.c:872: return charsOutputted;
	bra	00160$
;../printf_large.c:691: }
00314$:
	sta	*__print_format_sloc0_1_0
00160$:
;../printf_large.c:693: if (float_argument)
	lda	__print_format_float_argument_1_64
	beq	00226$
;../printf_large.c:695: value.f = va_arg(ap, float);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#4
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-4
	lda	,x
	sta	*__print_format_sloc3_1_0
	lda	1,x
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	2,x
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	3,x
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:697: PTR="<NO FLOAT>";
	lda	#>___str_0
	sta	_value
	lda	#___str_0
	sta	(_value + 1)
;../printf_large.c:698: while (c=*PTR++)
00161$:
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	ldhx	*__print_format_sloc3_1_0
	aix	#1
	pshh
	pula
	sta	_value
	stx	(_value + 1)
	ldhx	*__print_format_sloc3_1_0
	lda	,x
	tsta
	bne	00591$
	jmp	00231$
00591$:
;../printf_large.c:700: OUTPUT_CHAR (c, p);
	jsr	__output_char
	bra	00161$
00226$:
;../printf_large.c:718: else if (radix != 0)
	lda	__print_format_radix_1_64
	bne	00592$
	jmp	00231$
00592$:
;../printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
;../printf_large.c:726: if (char_argument)
	lda	__print_format_char_argument_1_64
	beq	00172$
;../printf_large.c:728: value.l = va_arg(ap, char);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#1
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-1
	lda	,x
	sta	*(__print_format_sloc3_1_0 + 3)
	rola	
	clra	
	sbc	#0x00
	sta	*(__print_format_sloc3_1_0 + 2)
	sta	*(__print_format_sloc3_1_0 + 1)
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:729: if (!signed_argument)
	lda	__print_format_signed_argument_1_64
	beq	00594$
	jmp	00173$
00594$:
;../printf_large.c:731: value.l &= 0xFF;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	mov	#0x00,*(__print_format_sloc3_1_0 + 2)
	mov	#0x00,*(__print_format_sloc3_1_0 + 1)
	mov	#0x00,*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	jmp	00173$
00172$:
;../printf_large.c:734: else if (long_argument)
	lda	__print_format_long_argument_1_64
	beq	00169$
;../printf_large.c:736: value.l = va_arg(ap, long);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#4
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-4
	lda	,x
	sta	*__print_format_sloc3_1_0
	lda	1,x
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	2,x
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	3,x
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	bra	00173$
00169$:
;../printf_large.c:740: value.l = va_arg(ap, int);
	lda	__print_format_PARM_4
	psha
	pulh
	ldx	(__print_format_PARM_4 + 1)
	aix	#2
	pshh
	pula
	sta	__print_format_PARM_4
	stx	(__print_format_PARM_4 + 1)
	aix	#-2
	lda	1,x
	ldx	,x
	sta	*(__print_format_sloc3_1_0 + 3)
	txa
	sta	*(__print_format_sloc3_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(__print_format_sloc3_1_0 + 1)
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
;../printf_large.c:741: if (!signed_argument)
	lda	__print_format_signed_argument_1_64
	bne	00173$
;../printf_large.c:743: value.l &= 0xFFFF;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	mov	#0x00,*(__print_format_sloc3_1_0 + 1)
	mov	#0x00,*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
00173$:
;../printf_large.c:747: if ( signed_argument )
	lda	__print_format_signed_argument_1_64
	beq	00178$
;../printf_large.c:749: if (value.l < 0)
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	lda	*__print_format_sloc3_1_0
	sub	#0x00
	bge	00175$
;../printf_large.c:750: value.l = -value.l;
	lda	_value
	sta	*__print_format_sloc3_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	clra
	sub	*(__print_format_sloc3_1_0 + 3)
	sta	*(__print_format_sloc3_1_0 + 3)
	clra
	sbc	*(__print_format_sloc3_1_0 + 2)
	sta	*(__print_format_sloc3_1_0 + 2)
	clra
	sbc	*(__print_format_sloc3_1_0 + 1)
	sta	*(__print_format_sloc3_1_0 + 1)
	clra
	sbc	*__print_format_sloc3_1_0
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc3_1_0
	sta	_value
	lda	*(__print_format_sloc3_1_0 + 1)
	sta	(_value + 1)
	lda	*(__print_format_sloc3_1_0 + 2)
	sta	(_value + 2)
	lda	*(__print_format_sloc3_1_0 + 3)
	sta	(_value + 3)
	bra	00178$
00175$:
;../printf_large.c:752: signed_argument = 0;
	clra
	sta	__print_format_signed_argument_1_64
00178$:
;../printf_large.c:756: lsd = 1;
	lda	#0x01
	sta	__print_format_lsd_1_64
;../printf_large.c:758: do {
	ldhx	#(__print_format_store_4_83 + 0x0005)
	sthx	*__print_format_sloc3_1_0
	mov	#0x00,*__print_format_sloc2_1_0
00182$:
;../printf_large.c:759: value.byte[4] = 0;
	clra
	sta	(_value + 0x0004)
;../printf_large.c:763: calculate_digit(radix);
	lda	__print_format_radix_1_64
	jsr	_calculate_digit
;../printf_large.c:765: if (!lsd)
	lda	__print_format_lsd_1_64
	bne	00180$
;../printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	lda	(_value + 0x0004)
	nsa
	sta	*__print_format_sloc1_1_0
	ldhx	*__print_format_sloc3_1_0
	lda	,x
	ora	*__print_format_sloc1_1_0
	ldhx	*__print_format_sloc3_1_0
	sta	,x
;../printf_large.c:768: pstore--;
	ldhx	*__print_format_sloc3_1_0
	aix	#-1
	sthx	*__print_format_sloc3_1_0
	bra	00181$
00180$:
;../printf_large.c:772: *pstore = value.byte[4];
	lda	(_value + 0x0004)
	ldhx	*__print_format_sloc3_1_0
	sta	,x
00181$:
;../printf_large.c:774: length++;
	inc	*__print_format_sloc2_1_0
;../printf_large.c:775: lsd = !lsd;
	lda	__print_format_lsd_1_64
	eor	#0x01
	sta	__print_format_lsd_1_64
;../printf_large.c:776: } while( value.ul );
	lda	_value
	sta	*__print_format_sloc4_1_0
	lda	(_value + 1)
	sta	*(__print_format_sloc4_1_0 + 1)
	lda	(_value + 2)
	sta	*(__print_format_sloc4_1_0 + 2)
	lda	(_value + 3)
	sta	*(__print_format_sloc4_1_0 + 3)
	lda	*__print_format_sloc4_1_0
	ora	*(__print_format_sloc4_1_0 + 1)
	ora	*(__print_format_sloc4_1_0 + 2)
	ora	*(__print_format_sloc4_1_0 + 3)
	bne	00182$
;../printf_large.c:778: if (width == 0)
	mov	*__print_format_sloc3_1_0,*__print_format_sloc4_1_0
	mov	*(__print_format_sloc3_1_0 + 1),*(__print_format_sloc4_1_0 + 1)
	ldx	*__print_format_sloc2_1_0
	tst	*__print_format_sloc0_1_0
	bne	00186$
;../printf_large.c:783: width = 1;
	mov	#0x01,*__print_format_sloc0_1_0
00186$:
;../printf_large.c:787: if (!zero_padding && !left_justify)
	lda	__print_format_zero_padding_1_64
	bne	00191$
	lda	__print_format_left_justify_1_64
	bne	00191$
;../printf_large.c:789: while ( width > (unsigned char) (length+1) )
	txa
	add	#0x01
	sta	*__print_format_sloc3_1_0
	lda	*__print_format_sloc0_1_0
00187$:
	cmp	*__print_format_sloc3_1_0
	bls	00316$
;../printf_large.c:791: OUTPUT_CHAR( ' ', p );
	psha
	pshx
	lda	#0x20
	jsr	__output_char
	pulx
	pula
;../printf_large.c:792: width--;
	deca
	bra	00187$
00316$:
	sta	*__print_format_sloc0_1_0
00191$:
;../printf_large.c:796: if (signed_argument) // this now means the original value was negative
	lda	__print_format_signed_argument_1_64
	beq	00201$
;../printf_large.c:798: OUTPUT_CHAR( '-', p );
	pshx
	lda	#0x2D
	jsr	__output_char
	pulx
;../printf_large.c:800: width--;
	dec	*__print_format_sloc0_1_0
	bra	00202$
00201$:
;../printf_large.c:802: else if (length != 0)
	tstx
	beq	00202$
;../printf_large.c:805: if (prefix_sign)
	lda	__print_format_prefix_sign_1_64
	beq	00196$
;../printf_large.c:807: OUTPUT_CHAR( '+', p );
	pshx
	lda	#0x2B
	jsr	__output_char
	pulx
;../printf_large.c:809: width--;
	dec	*__print_format_sloc0_1_0
	bra	00202$
00196$:
;../printf_large.c:811: else if (prefix_space)
	lda	__print_format_prefix_space_1_64
	beq	00202$
;../printf_large.c:813: OUTPUT_CHAR( ' ', p );
	pshx
	lda	#0x20
	jsr	__output_char
	pulx
;../printf_large.c:815: width--;
	dec	*__print_format_sloc0_1_0
00202$:
;../printf_large.c:820: if (!left_justify)
	lda	__print_format_left_justify_1_64
	bne	00210$
;../printf_large.c:822: while ( width-- > length )
	lda	*__print_format_sloc0_1_0
00203$:
	sta	*__print_format_sloc3_1_0
	deca
	cpx	*__print_format_sloc3_1_0
	bcc	00317$
;../printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	psha
	lda	__print_format_zero_padding_1_64
	pula
	beq	00236$
	mov	#0x30,*__print_format_sloc3_1_0
	bra	00237$
00236$:
	mov	#0x20,*__print_format_sloc3_1_0
00237$:
	psha
	pshx
	lda	*__print_format_sloc3_1_0
	jsr	__output_char
	pulx
	pula
	bra	00203$
00210$:
;../printf_large.c:830: if (width > length)
	cpx	*__print_format_sloc0_1_0
	bcc	00207$
;../printf_large.c:831: width -= length;
	lda	*__print_format_sloc0_1_0
	pshx
	sub	1,s
	ais	#1
	sta	*__print_format_sloc3_1_0
	bra	00309$
00207$:
;../printf_large.c:833: width = 0;
	mov	#0x00,*__print_format_sloc3_1_0
;../printf_large.c:872: return charsOutputted;
	bra	00309$
;../printf_large.c:837: while( length-- )
00317$:
	sta	*__print_format_sloc3_1_0
00309$:
	stx	*__print_format_sloc2_1_0
00215$:
	mov	*__print_format_sloc2_1_0,*__print_format_sloc1_1_0
	dec	*__print_format_sloc2_1_0
	tst	*__print_format_sloc1_1_0
	beq	00217$
;../printf_large.c:839: lsd = !lsd;
	lda	__print_format_lsd_1_64
	eor	#0x01
	sta	__print_format_lsd_1_64
;../printf_large.c:840: if (!lsd)
	lda	__print_format_lsd_1_64
	bne	00213$
;../printf_large.c:842: pstore++;
	ldhx	*__print_format_sloc4_1_0
	aix	#1
	sthx	*__print_format_sloc4_1_0
;../printf_large.c:843: value.byte[4] = *pstore >> 4;
	ldhx	*__print_format_sloc4_1_0
	lda	,x
	nsa	
	and	#0x0f
	sta	(_value + 0x0004)
	bra	00214$
00213$:
;../printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	ldhx	*__print_format_sloc4_1_0
	lda	,x
	and	#0x0F
	sta	(_value + 0x0004)
00214$:
;../printf_large.c:853: output_digit( value.byte[4] );
	lda	(_value + 0x0004)
	jsr	_output_digit
	bra	00215$
00217$:
;../printf_large.c:856: if (left_justify)
	lda	__print_format_left_justify_1_64
	bne	00615$
	jmp	00231$
00615$:
;../printf_large.c:858: while (width-- > 0)
	ldx	*__print_format_sloc3_1_0
00218$:
	txa
	decx
	tsta
	bne	00616$
	jmp	00231$
00616$:
;../printf_large.c:860: OUTPUT_CHAR(' ', p);
	pshx
	lda	#0x20
	jsr	__output_char
	pulx
	bra	00218$
00229$:
;../printf_large.c:868: OUTPUT_CHAR( c, p );
	txa
	jsr	__output_char
	jmp	00231$
00233$:
;../printf_large.c:872: return charsOutputted;
	ldx	_charsOutputted
	lda	(_charsOutputted + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
