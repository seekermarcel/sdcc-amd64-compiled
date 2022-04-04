;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module printf_large
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../printf_large.c:116: output_digit (unsigned char n, bool lower_case, pfn_outputchar output_char, void* p)
;	---------------------------------
; Function output_digit
; ---------------------------------
_output_digit:
;../printf_large.c:118: register unsigned char c = n + (unsigned char)'0';
	ldhl	sp,#2
	ld	a,(hl)
	add	a, #0x30
	ld	b,a
;../printf_large.c:120: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, b
	jr	NC,00104$
;../printf_large.c:122: c += (unsigned char)('A' - '0' - 10);
	ld	a,b
	add	a, #0x07
	ld	b,a
;../printf_large.c:123: if (lower_case)
	inc	hl
	bit	0,(hl)
	jr	Z,00104$
;../printf_large.c:124: c += (unsigned char)('a' - 'A');
	ld	a,b
	add	a, #0x20
	ld	b,a
00104$:
;../printf_large.c:126: output_char( c, p );
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	inc	sp
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ret
;../printf_large.c:149: output_2digits (unsigned char b, bool lower_case, pfn_outputchar output_char, void* p)
;	---------------------------------
; Function output_2digits
; ---------------------------------
_output_2digits:
;../printf_large.c:151: output_digit( b>>4,   lower_case, output_char, p );
	ldhl	sp,#2
	ld	d,(hl)
	swap	d
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	add	sp, #6
;../printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	ldhl	sp,#2
	ld	a,(hl)
	and	a, #0x0F
	ld	d,a
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	add	sp, #6
	ret
;../printf_large.c:168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	---------------------------------
; Function calculate_digit
; ---------------------------------
_calculate_digit:
	add	sp, #-8
;../printf_large.c:170: unsigned long ul = value->ul;
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#1
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../printf_large.c:171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;../printf_large.c:172: unsigned char i = 32;
	ldhl	sp,#0
	ld	(hl),#0x20
;../printf_large.c:174: do
00103$:
;../printf_large.c:176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	ld	a,(bc)
	add	a, a
	ld	d,a
	ldhl	sp,#4
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	or	a, d
	ld	(bc),a
;../printf_large.c:177: ul <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#1
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../printf_large.c:179: if (radix <= *pb4 )
	ld	a,(bc)
	inc	hl
	ld	(hl),a
	ld	a,(hl)
	ldhl	sp,#12
	sub	a, (hl)
	jr	C,00104$
;../printf_large.c:181: *pb4 -= radix;
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#12
	sub	a, (hl)
	ld	(bc),a
;../printf_large.c:182: ul |= 1;
	ldhl	sp,#1
	ld	a,(hl)
	set	0, a
	ld	(hl),a
00104$:
;../printf_large.c:184: } while (--i);
	ldhl	sp,#0
	ld	a,(hl)
	add	a,#0xFF
	ld	(hl),a
	or	a, a
	jp	NZ,00103$
;../printf_large.c:185: value->ul = ul;
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#1
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	add	sp, #8
	ret
;../printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	---------------------------------
; Function _print_format
; ---------------------------------
__print_format::
	add	sp, #-55
;../printf_large.c:466: charsOutputted = 0;
	ldhl	sp,#24
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../printf_large.c:475: while( c=*format++ )
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#26
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#5
	ld	a,l
	ld	d,h
	ldhl	sp,#40
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#47
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#49
	ld	(hl+),a
	ld	(hl),d
00231$:
	ldhl	sp,#62
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	ldhl	sp,#29
	ld	(hl),a
	inc	bc
	ldhl	sp,#61
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#29
	ld	d,(hl)
	ld	a,(hl)
	or	a, a
	jp	Z,00233$
;../printf_large.c:477: if ( c=='%' )
	ld	a,d
	sub	a, #0x25
	jp	NZ,00229$
;../printf_large.c:479: left_justify    = 0;
	ldhl	sp,#9
	ld	(hl),#0x00
;../printf_large.c:480: zero_padding    = 0;
	inc	hl
	inc	hl
	ld	(hl),#0x00
;../printf_large.c:481: prefix_sign     = 0;
	ldhl	sp,#6
	ld	(hl),#0x00
;../printf_large.c:482: prefix_space    = 0;
	ldhl	sp,#10
	ld	(hl),#0x00
;../printf_large.c:483: signed_argument = 0;
	inc	hl
	inc	hl
	ld	(hl),#0x00
;../printf_large.c:484: char_argument   = 0;
	ldhl	sp,#7
	ld	(hl),#0x00
;../printf_large.c:485: long_argument   = 0;
	ldhl	sp,#16
	ld	(hl),#0x00
;../printf_large.c:486: float_argument  = 0;
	ldhl	sp,#8
	ld	(hl),#0x00
;../printf_large.c:487: radix           = 0;
	ldhl	sp,#14
	ld	(hl),#0x00
;../printf_large.c:488: width           = 0;
	ldhl	sp,#29
	ld	(hl),#0x00
;../printf_large.c:489: decimals        = -1;
	ldhl	sp,#18
	ld	(hl),#0xFF
;../printf_large.c:491: get_conversion_spec:
	ldhl	sp,#61
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	(hl),e
00101$:
;../printf_large.c:493: c = *format++;
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#39
	ld	(hl),a
	ldhl	sp,#33
	inc	(hl)
	jr	NZ,00552$
	inc	hl
	inc	(hl)
00552$:
	ldhl	sp,#33
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#61
	ld	(hl+),a
	ld	(hl),e
;../printf_large.c:495: if (c=='%')
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x25
	jr	NZ,00103$
;../printf_large.c:497: OUTPUT_CHAR(c, p);
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#41
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jp	NZ,00231$
	inc	hl
	inc	(hl)
;../printf_large.c:498: continue;
	jp	00231$
00103$:
;../printf_large.c:501: if (isdigit(c))
	ldhl	sp,#39
	ld	b,(hl)
	ld	a,b
	sub	a, #0x30
	jp	C,00110$
	ld	a,#0x39
	sub	a, b
	jp	C,00110$
;../printf_large.c:503: if (decimals==-1)
	ldhl	sp,#18
	ld	a,(hl)
	inc	a
	jr	NZ,00107$
;../printf_large.c:505: width = 10*width + c - '0';
	ldhl	sp,#29
	ld	a,(hl)
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ldhl	sp,#46
	ld	(hl),a
	ld	a,(hl)
	ldhl	sp,#39
	add	a, (hl)
	add	a,#0xD0
	ldhl	sp,#29
	ld	(hl),a
;../printf_large.c:506: if (width == 0)
	ld	a,(hl)
	or	a, a
	jp	NZ,00101$
;../printf_large.c:509: zero_padding = 1;
	ldhl	sp,#11
	ld	(hl),#0x01
	jp	00101$
00107$:
;../printf_large.c:514: decimals = 10*decimals + c - '0';
	ldhl	sp,#18
	ld	a,(hl)
	ld	c,a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	ld	b,a
	ldhl	sp,#39
	add	a, (hl)
	add	a,#0xD0
	ldhl	sp,#18
	ld	(hl),a
;../printf_large.c:516: goto get_conversion_spec;
	jp	00101$
00110$:
;../printf_large.c:519: if (c=='.')
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x2E
	jr	NZ,00115$
;../printf_large.c:521: if (decimals==-1)
	ldhl	sp,#18
	ld	a,(hl)
	inc	a
	jp	NZ,00101$
;../printf_large.c:522: decimals=0;
	ldhl	sp,#18
	ld	(hl),#0x00
;../printf_large.c:525: goto get_conversion_spec;
	jp	00101$
00115$:
;../printf_large.c:528: if (islower(c))
	ldhl	sp,#39
	ld	b,(hl)
	ld	a,b
	sub	a, #0x61
	jr	C,00117$
	ld	a,#0x7A
	sub	a, b
	jr	C,00117$
;../printf_large.c:530: c = toupper(c);
	ld	a,(hl)
	res	5, a
	ld	(hl),a
;../printf_large.c:531: lower_case = 1;
	ldhl	sp,#13
	ld	(hl),#0x01
	jr	00118$
00117$:
;../printf_large.c:534: lower_case = 0;
	ldhl	sp,#13
	ld	(hl),#0x00
00118$:
;../printf_large.c:536: switch( c )
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x20
	jp	Z,00122$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x2B
	jp	Z,00121$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x2D
	jp	Z,00120$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x42
	jp	Z,00123$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x43
	jp	Z,00129$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x44
	jp	Z,00154$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x46
	jp	Z,00158$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x48
	jp	Z,00101$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x49
	jp	Z,00154$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x4A
	jp	Z,00101$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x4C
	jp	Z,00128$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x4F
	jp	Z,00155$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x50
	jp	Z,00152$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x53
	jp	Z,00133$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x54
	jp	Z,00101$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x55
	jp	Z,00156$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x58
	jp	Z,00157$
	ldhl	sp,#39
	ld	a,(hl)
	sub	a, #0x5A
	jp	Z,00101$
	jp	00159$
;../printf_large.c:538: case '-':
00120$:
;../printf_large.c:539: left_justify = 1;
	ldhl	sp,#9
	ld	(hl),#0x01
;../printf_large.c:540: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:541: case '+':
00121$:
;../printf_large.c:542: prefix_sign = 1;
	ldhl	sp,#6
	ld	(hl),#0x01
;../printf_large.c:543: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:544: case ' ':
00122$:
;../printf_large.c:545: prefix_space = 1;
	ldhl	sp,#10
	ld	(hl),#0x01
;../printf_large.c:546: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:547: case 'B': /* byte */
00123$:
;../printf_large.c:548: char_argument = 1;
	ldhl	sp,#7
	ld	(hl),#0x01
;../printf_large.c:549: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:556: case 'L': /* long */
00128$:
;../printf_large.c:557: long_argument = 1;
	ldhl	sp,#16
	ld	(hl),#0x01
;../printf_large.c:558: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:560: case 'C':
00129$:
;../printf_large.c:561: if( char_argument )
	ldhl	sp,#7
	bit	0,(hl)
	jr	Z,00131$
;../printf_large.c:562: c = va_arg(ap,char);
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(bc)
	ld	b,a
	jr	00132$
00131$:
;../printf_large.c:564: c = va_arg(ap,int);
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	dec	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
00132$:
;../printf_large.c:565: OUTPUT_CHAR( c, p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jp	NZ,00160$
	inc	hl
	inc	(hl)
;../printf_large.c:566: break;
	jp	00160$
;../printf_large.c:568: case 'S':
00133$:
;../printf_large.c:569: PTR = va_arg(ap,ptr_t);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#33
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	dec	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../printf_large.c:582: length = strlen(PTR);
	push	bc
	call	_strlen
	add	sp, #2
	ldhl	sp,#46
	ld	(hl),e
;../printf_large.c:584: if ( decimals == -1 )
	ldhl	sp,#18
	ld	a,(hl)
	inc	a
	jr	NZ,00135$
;../printf_large.c:586: decimals = length;
	push	hl
	ldhl	sp,#48
	ld	a,(hl)
	ldhl	sp,#20
	ld	(hl),a
	pop	hl
00135$:
;../printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	ldhl	sp,#9
	bit	0,(hl)
	jp	NZ,00277$
	ldhl	sp,#46
	ld	a,(hl)
	ldhl	sp,#29
	sub	a, (hl)
	jp	NC,00277$
;../printf_large.c:590: width -= length;
	ld	a,(hl)
	ldhl	sp,#46
	sub	a, (hl)
	ldhl	sp,#28
	ld	(hl),a
;../printf_large.c:591: while( width-- != 0 )
	ldhl	sp,#25
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00136$:
	push	hl
	ldhl	sp,#30
	ld	a,(hl+)
	inc	hl
	ld	(hl),a
	pop	hl
	ldhl	sp,#28
	dec	(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00312$
;../printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ldhl	sp,#62
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	pop	bc
	inc	bc
	jp	00136$
;../printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	ldhl	sp,#24
	ld	(hl),c
	inc	hl
	ld	(hl),b
	push	hl
	ldhl	sp,#30
	ld	a,(hl+)
	ld	(hl),a
	pop	hl
00277$:
	push	hl
	ldhl	sp,#20
	ld	a,(hl)
	ldhl	sp,#32
	ld	(hl),a
	pop	hl
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),e
00143$:
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ld	a,(bc)
	ldhl	sp,#28
	ld	(hl),a
	or	a, a
	jp	Z,00313$
	inc	hl
	inc	hl
	ld	b,(hl)
	dec	(hl)
	ld	a,b
	ld	e,a
	ld	a,#0x00
	ld	d,a
	xor	a, a
	sub	a, b
	bit	7, e
	jr	Z,00583$
	bit	7, d
	jr	NZ,00584$
	cp	a, a
	jr	00584$
00583$:
	bit	7, d
	jr	Z,00584$
	scf
00584$:
	jp	NC,00313$
;../printf_large.c:599: OUTPUT_CHAR( c, p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#30
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#31
	inc	(hl)
	jr	NZ,00585$
	inc	hl
	inc	(hl)
00585$:
;../printf_large.c:600: PTR++;
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	inc	bc
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00143$
00313$:
	ldhl	sp,#31
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),e
;../printf_large.c:603: if ( left_justify && (length < width))
	ldhl	sp,#9
	bit	0,(hl)
	jp	Z,00160$
	ldhl	sp,#46
	ld	a,(hl)
	ldhl	sp,#29
	sub	a, (hl)
	jp	NC,00160$
;../printf_large.c:605: width -= length;
	ld	a,(hl)
	ldhl	sp,#46
	sub	a, (hl)
	ldhl	sp,#30
;../printf_large.c:606: while( width-- != 0 )
	ld	(hl+),a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00146$:
	push	hl
	ldhl	sp,#32
	ld	a,(hl+)
	ld	(hl),a
	pop	hl
	ldhl	sp,#30
	dec	(hl)
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00314$
;../printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ldhl	sp,#62
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	pop	bc
	inc	bc
	jp	00146$
;../printf_large.c:613: case 'P':
00152$:
;../printf_large.c:614: PTR = va_arg(ap,ptr_t);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	dec	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
	ldhl	sp,#31
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../printf_large.c:658: OUTPUT_CHAR('0', p);
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#25
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;../printf_large.c:659: OUTPUT_CHAR('x', p);
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x78
	push	af
	inc	sp
	ldhl	sp,#62
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	pop	bc
	inc	bc
;../printf_large.c:660: OUTPUT_2DIGITS( value.byte[1] );
	ldhl	sp,#20
	ld	e,l
	ld	d,h
	ld	a,(de)
	ld	d,a
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_2digits
	add	sp, #6
	pop	bc
	inc	bc
	inc	bc
;../printf_large.c:661: OUTPUT_2DIGITS( value.byte[0] );
	ldhl	sp,#27
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#31
	ld	(hl),a
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#38
	ld	a,(hl)
	push	af
	inc	sp
	call	_output_2digits
	add	sp, #6
	pop	bc
	inc	bc
	inc	bc
	ldhl	sp,#24
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../printf_large.c:663: break;
	jp	00160$
;../printf_large.c:666: case 'I':
00154$:
;../printf_large.c:667: signed_argument = 1;
	ldhl	sp,#12
	ld	(hl),#0x01
;../printf_large.c:668: radix = 10;
	inc	hl
	inc	hl
	ld	(hl),#0x0A
;../printf_large.c:669: break;
	jp	00160$
;../printf_large.c:671: case 'O':
00155$:
;../printf_large.c:672: radix = 8;
	ldhl	sp,#14
	ld	(hl),#0x08
;../printf_large.c:673: break;
	jp	00160$
;../printf_large.c:675: case 'U':
00156$:
;../printf_large.c:676: radix = 10;
	ldhl	sp,#14
	ld	(hl),#0x0A
;../printf_large.c:677: break;
	jp	00160$
;../printf_large.c:679: case 'X':
00157$:
;../printf_large.c:680: radix = 16;
	ldhl	sp,#14
	ld	(hl),#0x10
;../printf_large.c:681: break;
	jp	00160$
;../printf_large.c:683: case 'F':
00158$:
;../printf_large.c:684: float_argument=1;
	ldhl	sp,#8
	ld	(hl),#0x01
;../printf_large.c:685: break;
	jp	00160$
;../printf_large.c:687: default:
00159$:
;../printf_large.c:689: OUTPUT_CHAR( c, p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#41
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jr	NZ,00160$
	inc	hl
	inc	(hl)
;../printf_large.c:872: return charsOutputted;
	jr	00160$
;../printf_large.c:691: }
00314$:
	ldhl	sp,#24
	ld	(hl),c
	inc	hl
	ld	(hl),b
	push	hl
	ldhl	sp,#32
	ld	a,(hl-)
	ld	(hl),a
	pop	hl
00160$:
;../printf_large.c:693: if (float_argument)
	ldhl	sp,#8
	bit	0,(hl)
	jp	Z,00226$
;../printf_large.c:695: value.f = va_arg(ap, float);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#63
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	de,#0x0004
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	ldhl	sp,#34
	ld	(hl-),a
	ld	(hl),e
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#42
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#32
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#42
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../printf_large.c:697: PTR="<NO FLOAT>";
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#42
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#<(___str_0)
	inc	hl
	ld	(hl),#>(___str_0)
;../printf_large.c:698: while (c=*PTR++)
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),e
00161$:
	ldhl	sp,#43
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#33
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ldhl	sp,#42
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	d,a
	or	a, a
	jp	Z,00231$
;../printf_large.c:700: OUTPUT_CHAR (c, p);
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#31
	inc	(hl)
	jr	NZ,00587$
	inc	hl
	inc	(hl)
00587$:
	ldhl	sp,#31
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),e
	jp	00161$
00226$:
;../printf_large.c:718: else if (radix != 0)
	ldhl	sp,#14
	ld	a,(hl)
	or	a, a
	jp	Z,00231$
;../printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	ldhl	sp,#40
	ld	a,(hl+)
	ld	e, (hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
;../printf_large.c:726: if (char_argument)
	ldhl	sp,#7
	bit	0,(hl)
	jp	Z,00172$
;../printf_large.c:728: value.l = va_arg(ap, char);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ldhl	sp,#33
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#30
	ld	(hl),a
	ld	a,(hl)
	ldhl	sp,#35
	ld	(hl),a
	ldhl	sp,#30
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#36
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#32
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#35
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../printf_large.c:729: if (!signed_argument)
	ldhl	sp,#12
	bit	0,(hl)
	jp	NZ,00173$
;../printf_large.c:731: value.l &= 0xFF;
	ldhl	sp,#32
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#35
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#32
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#35
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	jp	00173$
00172$:
;../printf_large.c:734: else if (long_argument)
	ldhl	sp,#16
	bit	0,(hl)
	jp	Z,00169$
;../printf_large.c:736: value.l = va_arg(ap, long);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#35
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#63
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	de,#0x0004
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	ldhl	sp,#32
	ld	(hl-),a
	ld	(hl),e
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#51
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#36
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#51
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	jp	00173$
00169$:
;../printf_large.c:740: value.l = va_arg(ap, int);
	ldhl	sp,#19
	ld	a,l
	ld	d,h
	ldhl	sp,#51
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#64
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	dec	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
	ldhl	sp,#35
	ld	(hl),b
	inc	hl
	ld	(hl),c
	ld	a,c
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#52
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#35
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../printf_large.c:741: if (!signed_argument)
	ldhl	sp,#12
	bit	0,(hl)
	jp	NZ,00173$
;../printf_large.c:743: value.l &= 0xFFFF;
	ldhl	sp,#52
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#35
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#52
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#35
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
00173$:
;../printf_large.c:747: if ( signed_argument )
	ldhl	sp,#12
	bit	0,(hl)
	jp	Z,00178$
;../printf_large.c:749: if (value.l < 0)
	ldhl	sp,#19
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#51
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#51
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00588$
	bit	7, d
	jr	NZ,00589$
	cp	a, a
	jr	00589$
00588$:
	bit	7, d
	jr	Z,00589$
	scf
00589$:
	jp	NC,00175$
;../printf_large.c:750: value.l = -value.l;
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#51
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#51
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
	jr	00178$
00175$:
;../printf_large.c:752: signed_argument = 0;
	ldhl	sp,#12
	ld	(hl),#0x00
00178$:
;../printf_large.c:756: lsd = 1;
	ldhl	sp,#15
	ld	(hl),#0x01
;../printf_large.c:758: do {
	ldhl	sp,#43
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ldhl	sp,#17
	ld	(hl),#0x00
00182$:
;../printf_large.c:759: value.byte[4] = 0;
	ldhl	sp,#23
	ld	e,l
	ld	d,h
	xor	a, a
	ld	(de),a
;../printf_large.c:761: calculate_digit(&value, radix);
	ldhl	sp,#48
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	ldhl	sp,#16
	ld	a,(hl)
	push	af
	inc	sp
	push	de
	call	_calculate_digit
	add	sp, #3
	pop	bc
;../printf_large.c:765: if (!lsd)
	ldhl	sp,#15
	bit	0,(hl)
	jr	NZ,00180$
;../printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	ldhl	sp,#50
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	swap	a
	and	a,#0xF0
	inc	hl
	ld	(hl-),a
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	swap	a
	and	a,#0x0F
	inc	hl
	or	a, (hl)
	ld	d,a
	ld	a,(bc)
	or	a, d
	ld	(bc),a
;../printf_large.c:768: pstore--;
	dec	bc
	jr	00181$
00180$:
;../printf_large.c:772: *pstore = value.byte[4];
	ldhl	sp,#50
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	(bc),a
00181$:
;../printf_large.c:774: length++;
	ldhl	sp,#17
	inc	(hl)
;../printf_large.c:775: lsd = !lsd;
	dec	hl
	dec	hl
	ld	a,(hl)
	xor	a, #0x01
	ld	(hl),a
;../printf_large.c:776: } while( value.ul );
	ldhl	sp,#48
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#51
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00182$
;../printf_large.c:778: if (width == 0)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	push	hl
	ldhl	sp,#19
	ld	a,(hl)
	ldhl	sp,#37
	ld	(hl),a
	pop	hl
	ldhl	sp,#29
	ld	a,(hl)
	or	a, a
	jr	NZ,00186$
;../printf_large.c:783: width = 1;
	ld	(hl),#0x01
00186$:
;../printf_large.c:787: if (!zero_padding && !left_justify)
	ldhl	sp,#11
	bit	0,(hl)
	jp	NZ,00191$
	dec	hl
	dec	hl
	bit	0,(hl)
	jp	NZ,00191$
;../printf_large.c:789: while ( width > (unsigned char) (length+1) )
	ldhl	sp,#35
	ld	c,(hl)
	inc	c
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#42
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#29
	ld	b,(hl)
00187$:
	ld	a,c
	sub	a, b
	jr	NC,00316$
;../printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ldhl	sp,#62
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	pop	bc
	ldhl	sp,#42
	inc	(hl)
	jr	NZ,00590$
	inc	hl
	inc	(hl)
00590$:
;../printf_large.c:792: width--;
	dec	b
	jr	00187$
00316$:
	ldhl	sp,#42
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#29
	ld	(hl),b
00191$:
;../printf_large.c:796: if (signed_argument) // this now means the original value was negative
	ldhl	sp,#12
	bit	0,(hl)
	jr	Z,00201$
;../printf_large.c:798: OUTPUT_CHAR( '-', p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x2D
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jr	NZ,00591$
	inc	hl
	inc	(hl)
00591$:
;../printf_large.c:800: width--;
	ldhl	sp,#29
	dec	(hl)
	jp	00202$
00201$:
;../printf_large.c:802: else if (length != 0)
	ldhl	sp,#35
	ld	a,(hl)
	or	a, a
	jp	Z,00202$
;../printf_large.c:805: if (prefix_sign)
	ldhl	sp,#6
	bit	0,(hl)
	jr	Z,00196$
;../printf_large.c:807: OUTPUT_CHAR( '+', p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x2B
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jr	NZ,00592$
	inc	hl
	inc	(hl)
00592$:
;../printf_large.c:809: width--;
	ldhl	sp,#29
	dec	(hl)
	jr	00202$
00196$:
;../printf_large.c:811: else if (prefix_space)
	ldhl	sp,#10
	bit	0,(hl)
	jr	Z,00202$
;../printf_large.c:813: OUTPUT_CHAR( ' ', p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jr	NZ,00593$
	inc	hl
	inc	(hl)
00593$:
;../printf_large.c:815: width--;
	ldhl	sp,#29
	dec	(hl)
00202$:
;../printf_large.c:820: if (!left_justify)
	ldhl	sp,#9
	bit	0,(hl)
	jp	NZ,00210$
;../printf_large.c:822: while ( width-- > length )
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#42
	ld	(hl+),a
	ld	(hl),e
	push	hl
	ldhl	sp,#31
	ld	a,(hl+)
	inc	hl
	ld	(hl),a
	pop	hl
00203$:
	ldhl	sp,#31
	ld	b,(hl)
	dec	(hl)
	ldhl	sp,#35
	ld	a,(hl)
	sub	a, b
	jp	NC,00317$
;../printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	ldhl	sp,#11
	bit	0,(hl)
	jr	Z,00236$
	ld	d,#0x30
	jr	00237$
00236$:
	ld	d,#0x20
00237$:
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#42
	inc	(hl)
	jr	NZ,00203$
	inc	hl
	inc	(hl)
	jp	00203$
00210$:
;../printf_large.c:830: if (width > length)
	ldhl	sp,#35
	ld	a,(hl)
	ldhl	sp,#29
	sub	a, (hl)
	jr	NC,00207$
;../printf_large.c:831: width -= length;
	ld	a,(hl)
	ldhl	sp,#35
	sub	a, (hl)
	ldhl	sp,#30
	ld	(hl),a
	jr	00309$
00207$:
;../printf_large.c:833: width = 0;
	ldhl	sp,#30
	ld	(hl),#0x00
;../printf_large.c:872: return charsOutputted;
	jr	00309$
;../printf_large.c:837: while( length-- )
00317$:
	ldhl	sp,#42
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),e
	push	hl
	ldhl	sp,#33
	ld	a,(hl-)
	ld	(hl),a
	pop	hl
00309$:
	ldhl	sp,#51
	ld	a,(hl+)
	ld	e, (hl)
	dec	hl
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#24
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#42
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#35
	ld	c,(hl)
00215$:
	ld	b,c
	dec	c
	ld	a,b
	or	a, a
	jp	Z,00318$
;../printf_large.c:839: lsd = !lsd;
	ldhl	sp,#15
	ld	a,(hl)
	xor	a, #0x01
	ld	(hl),a
;../printf_large.c:840: if (!lsd)
	bit	0,(hl)
	jr	NZ,00213$
;../printf_large.c:842: pstore++;
	ldhl	sp,#51
	inc	(hl)
	jr	NZ,00595$
	inc	hl
	inc	(hl)
00595$:
;../printf_large.c:843: value.byte[4] = *pstore >> 4;
	ldhl	sp,#52
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	swap	a
	and	a,#0x0F
	ld	b,a
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	jr	00214$
00213$:
;../printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	ldhl	sp,#52
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	and	a, #0x0F
	ld	b,a
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
00214$:
;../printf_large.c:850: output_digit( value.byte[4], lower_case, output_char, p );
	ldhl	sp,#50
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_digit
	add	sp, #6
	pop	bc
;../printf_large.c:851: charsOutputted++;
	ldhl	sp,#42
	inc	(hl)
	jp	NZ,00215$
	inc	hl
	inc	(hl)
	jp	00215$
00318$:
	ldhl	sp,#42
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#24
	ld	(hl+),a
	ld	(hl),e
;../printf_large.c:856: if (left_justify)
	ldhl	sp,#9
	bit	0,(hl)
	jp	Z,00231$
;../printf_large.c:858: while (width-- > 0)
	ldhl	sp,#43
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	hl
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#53
	ld	(hl),a
	pop	hl
00218$:
	push	hl
	ldhl	sp,#53
	ld	a,(hl)
	ldhl	sp,#37
	ld	(hl),a
	pop	hl
	ldhl	sp,#51
	dec	(hl)
	ldhl	sp,#35
	ld	a,(hl)
	or	a, a
	jp	Z,00231$
;../printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	bc
	ldhl	sp,#61
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ldhl	sp,#62
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	pop	bc
	inc	bc
	ldhl	sp,#24
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00218$
00229$:
;../printf_large.c:868: OUTPUT_CHAR( c, p );
	ldhl	sp,#59
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	inc	sp
	ldhl	sp,#60
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	call	___sdcc_call_hl
	add	sp, #3
	ldhl	sp,#24
	inc	(hl)
	jp	NZ,00231$
	inc	hl
	inc	(hl)
	jp	00231$
00233$:
;../printf_large.c:872: return charsOutputted;
	ldhl	sp,#25
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	add	sp, #55
	ret
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area _CODE
	.area _CABS (ABS)
