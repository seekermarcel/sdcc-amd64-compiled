;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:50 2022
;--------------------------------------------------------
	.hd64
	.module printf_large
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl __print_format
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
	ld	iy,#2
	add	iy,sp
	ld	a,0 (iy)
	add	a, #0x30
	ld	h,a
;../printf_large.c:120: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, h
	jr	NC,00104$
;../printf_large.c:122: c += (unsigned char)('A' - '0' - 10);
	ld	a,h
	add	a, #0x07
	ld	h,a
;../printf_large.c:123: if (lower_case)
	ld	iy,#3
	add	iy,sp
	bit	0,0 (iy)
	jr	Z,00104$
;../printf_large.c:124: c += (unsigned char)('a' - 'A');
	ld	a,h
	add	a, #0x20
	ld	h,a
00104$:
;../printf_large.c:126: output_char( c, p );
	ld	iy,#6
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	push	bc
	push	hl
	inc	sp
	ld	hl, #7
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	ret
;../printf_large.c:149: output_2digits (unsigned char b, bool lower_case, pfn_outputchar output_char, void* p)
;	---------------------------------
; Function output_2digits
; ---------------------------------
_output_2digits:
	push	ix
	ld	ix,#0
	add	ix,sp
;../printf_large.c:151: output_digit( b>>4,   lower_case, output_char, p );
	ld	a,4 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	d,a
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;../printf_large.c:152: output_digit( b&0x0F, lower_case, output_char, p );
	ld	a,4 (ix)
	and	a, #0x0F
	ld	d,a
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	ix
	ret
;../printf_large.c:168: calculate_digit (value_t _AUTOMEM * value, unsigned char radix)
;	---------------------------------
; Function calculate_digit
; ---------------------------------
_calculate_digit:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-7
	add	hl,sp
	ld	sp,hl
;../printf_large.c:170: unsigned long ul = value->ul;
	ld	e,4 (ix)
	ld	d,5 (ix)
	push	de
	ld	hl, #0x0002
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
;../printf_large.c:171: unsigned char _AUTOMEM * pb4 = &value->byte[4];
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
;../printf_large.c:172: unsigned char i = 32;
	ld	-3 (ix),#0x20
;../printf_large.c:174: do
00103$:
;../printf_large.c:176: *pb4 = (*pb4 << 1) | ((ul >> 31) & 0x01);
	ld	a,(bc)
	add	a, a
	ld	-1 (ix),a
	ld	a,-4 (ix)
	rlc	a
	and	a,#0x01
	ld	-2 (ix),a
	ld	a,-1 (ix)
	or	a, -2 (ix)
	ld	(bc),a
;../printf_large.c:177: ul <<= 1;
	push	af
	pop	af
	sla	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
;../printf_large.c:179: if (radix <= *pb4 )
	ld	a,(bc)
	ld	h,a
	sub	a, 6 (ix)
	jr	C,00104$
;../printf_large.c:181: *pb4 -= radix;
	ld	a,h
	sub	a, 6 (ix)
	ld	(bc),a
;../printf_large.c:182: ul |= 1;
	set	0, -7 (ix)
00104$:
;../printf_large.c:184: } while (--i);
	ld	a,-3 (ix)
	add	a,#0xFF
	ld	-3 (ix),a
	or	a, a
	jr	NZ,00103$
;../printf_large.c:185: value->ul = ul;
	ld	hl, #0x0000
	add	hl, sp
	ld	bc, #0x0004
	ldir
	ld	sp, ix
	pop	ix
	ret
;../printf_large.c:434: _print_format (pfn_outputchar pfn, void* pvoid, const char *format, va_list ap)
;	---------------------------------
; Function _print_format
; ---------------------------------
__print_format::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-54
	add	hl,sp
	ld	sp,hl
;../printf_large.c:466: charsOutputted = 0;
	ld	-30 (ix),#0x00
	ld	-29 (ix),#0x00
;../printf_large.c:475: while( c=*format++ )
	ld	hl,#0x0008
	add	hl,sp
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	hl,#0x0005
	add	hl,sp
	ld	-28 (ix),l
	ld	-27 (ix),h
	ld	hl,#0x0008
	add	hl,sp
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	a,-12 (ix)
	add	a, #0x04
	ld	-5 (ix),a
	ld	a,-11 (ix)
	adc	a, #0x00
	ld	-4 (ix),a
00231$:
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	d,(hl)
	inc	hl
	ld	8 (ix),l
	ld	9 (ix),h
	ld	-3 (ix),d
	ld	a,d
	or	a, a
	jp	Z,00233$
;../printf_large.c:477: if ( c=='%' )
	ld	a,-3 (ix)
	sub	a, #0x25
	jp	NZ,00229$
;../printf_large.c:479: left_justify    = 0;
	ld	-38 (ix),#0x00
;../printf_large.c:480: zero_padding    = 0;
	ld	-34 (ix),#0x00
;../printf_large.c:481: prefix_sign     = 0;
	ld	-31 (ix),#0x00
;../printf_large.c:482: prefix_space    = 0;
	ld	-41 (ix),#0x00
;../printf_large.c:483: signed_argument = 0;
	ld	-37 (ix),#0x00
;../printf_large.c:484: char_argument   = 0;
	ld	-47 (ix),#0x00
;../printf_large.c:485: long_argument   = 0;
	ld	-39 (ix),#0x00
;../printf_large.c:486: float_argument  = 0;
	ld	-33 (ix),#0x00
;../printf_large.c:487: radix           = 0;
	ld	-36 (ix),#0x00
;../printf_large.c:488: width           = 0;
	ld	-24 (ix),#0x00
;../printf_large.c:489: decimals        = -1;
	ld	-48 (ix),#0xFF
;../printf_large.c:491: get_conversion_spec:
	ld	a,8 (ix)
	ld	-15 (ix),a
	ld	a,9 (ix)
	ld	-14 (ix),a
00101$:
;../printf_large.c:493: c = *format++;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	ld	-13 (ix),a
	inc	-15 (ix)
	jr	NZ,00552$
	inc	-14 (ix)
00552$:
	ld	a,-15 (ix)
	ld	8 (ix),a
	ld	a,-14 (ix)
	ld	9 (ix),a
;../printf_large.c:495: if (c=='%')
	ld	a,-13 (ix)
	sub	a, #0x25
	jr	NZ,00103$
;../printf_large.c:497: OUTPUT_CHAR(c, p);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,-13 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jp	NZ,00231$
	inc	-29 (ix)
;../printf_large.c:498: continue;
	jp	00231$
00103$:
;../printf_large.c:501: if (isdigit(c))
	ld	h,-13 (ix)
	ld	a,h
	sub	a, #0x30
	jr	C,00110$
	ld	a,#0x39
	sub	a, h
	jr	C,00110$
;../printf_large.c:503: if (decimals==-1)
	ld	a,-48 (ix)
	inc	a
	jr	NZ,00107$
;../printf_large.c:505: width = 10*width + c - '0';
	ld	c,-24 (ix)
	ld	b,#0x0A
	mlt	bc
	ld	-6 (ix), c
	ld	a, c
	add	a, -13 (ix)
	add	a,#0xD0
;../printf_large.c:506: if (width == 0)
	ld	-24 (ix), a
	or	a, a
	jr	NZ,00101$
;../printf_large.c:509: zero_padding = 1;
	ld	-34 (ix),#0x01
	jr	00101$
00107$:
;../printf_large.c:514: decimals = 10*decimals + c - '0';
	ld	l,-48 (ix)
	ld	h,#0x0A
	mlt	hl
	ld	a,l
	add	a, -13 (ix)
	add	a,#0xD0
	ld	-48 (ix),a
;../printf_large.c:516: goto get_conversion_spec;
	jp	00101$
00110$:
;../printf_large.c:519: if (c=='.')
	ld	a,-13 (ix)
	sub	a, #0x2E
	jr	NZ,00115$
;../printf_large.c:521: if (decimals==-1)
	ld	a,-48 (ix)
	inc	a
	jp	NZ,00101$
;../printf_large.c:522: decimals=0;
	ld	-48 (ix),#0x00
;../printf_large.c:525: goto get_conversion_spec;
	jp	00101$
00115$:
;../printf_large.c:528: if (islower(c))
	ld	l,-13 (ix)
	ld	a,l
	sub	a, #0x61
	jr	C,00117$
	ld	a,#0x7A
	sub	a, l
	jr	C,00117$
;../printf_large.c:530: c = toupper(c);
	res	5, -13 (ix)
;../printf_large.c:531: lower_case = 1;
	ld	-40 (ix),#0x01
	jr	00118$
00117$:
;../printf_large.c:534: lower_case = 0;
	ld	-40 (ix),#0x00
00118$:
;../printf_large.c:536: switch( c )
	ld	a,-13 (ix)
	sub	a, #0x20
	jp	Z,00122$
	ld	a,-13 (ix)
	sub	a, #0x2B
	jp	Z,00121$
	ld	a,-13 (ix)
	sub	a, #0x2D
	jr	Z,00120$
	ld	a,-13 (ix)
	sub	a, #0x42
	jp	Z,00123$
	ld	a,-13 (ix)
	sub	a, #0x43
	jp	Z,00129$
	ld	a,-13 (ix)
	sub	a, #0x44
	jp	Z,00154$
	ld	a,-13 (ix)
	sub	a, #0x46
	jp	Z,00158$
	ld	a,-13 (ix)
	sub	a, #0x48
	jp	Z,00101$
	ld	a,-13 (ix)
	sub	a, #0x49
	jp	Z,00154$
	ld	a,-13 (ix)
	sub	a, #0x4A
	jp	Z,00101$
	ld	a,-13 (ix)
	sub	a, #0x4C
	jr	Z,00128$
	ld	a,-13 (ix)
	sub	a, #0x4F
	jp	Z,00155$
	ld	a,-13 (ix)
	sub	a, #0x50
	jp	Z,00152$
	ld	a,-13 (ix)
	sub	a, #0x53
	jp	Z,00133$
	ld	a,-13 (ix)
	sub	a, #0x54
	jp	Z,00101$
	ld	a,-13 (ix)
	sub	a, #0x55
	jp	Z,00156$
	ld	a,-13 (ix)
	sub	a, #0x58
	jp	Z,00157$
	ld	a,-13 (ix)
	sub	a, #0x5A
	jp	Z,00101$
	jp	00159$
;../printf_large.c:538: case '-':
00120$:
;../printf_large.c:539: left_justify = 1;
	ld	-38 (ix),#0x01
;../printf_large.c:540: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:541: case '+':
00121$:
;../printf_large.c:542: prefix_sign = 1;
	ld	-31 (ix),#0x01
;../printf_large.c:543: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:544: case ' ':
00122$:
;../printf_large.c:545: prefix_space = 1;
	ld	-41 (ix),#0x01
;../printf_large.c:546: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:547: case 'B': /* byte */
00123$:
;../printf_large.c:548: char_argument = 1;
	ld	-47 (ix),#0x01
;../printf_large.c:549: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:556: case 'L': /* long */
00128$:
;../printf_large.c:557: long_argument = 1;
	ld	-39 (ix),#0x01
;../printf_large.c:558: goto get_conversion_spec;
	jp	00101$
;../printf_large.c:560: case 'C':
00129$:
;../printf_large.c:561: if( char_argument )
	bit	0,-47 (ix)
	jr	Z,00131$
;../printf_large.c:562: c = va_arg(ap,char);
	ld	l,10 (ix)
	ld	h,11 (ix)
	inc	hl
	ld	10 (ix),l
	ld	11 (ix),h
	dec	hl
	ld	d,(hl)
	jr	00132$
00131$:
;../printf_large.c:564: c = va_arg(ap,int);
	ld	l,10 (ix)
	ld	h,11 (ix)
	inc	hl
	inc	hl
	ld	10 (ix),l
	ld	11 (ix),h
	dec	hl
	dec	hl
	ld	d,(hl)
	inc	hl
	ld	h,(hl)
00132$:
;../printf_large.c:565: OUTPUT_CHAR( c, p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	push	de
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jp	NZ,00160$
	inc	-29 (ix)
;../printf_large.c:566: break;
	jp	00160$
;../printf_large.c:568: case 'S':
00133$:
;../printf_large.c:569: PTR = va_arg(ap,ptr_t);
	ld	hl,#0x0008
	add	hl,sp
	ld	-15 (ix),l
	ld	-14 (ix),h
	ld	l,10 (ix)
	ld	h,11 (ix)
	inc	hl
	inc	hl
	ld	10 (ix),l
	ld	11 (ix),h
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../printf_large.c:582: length = strlen(PTR);
	push	de
	call	_strlen
	inc	sp
	inc	sp
	ld	e,l
;../printf_large.c:584: if ( decimals == -1 )
	ld	a,-48 (ix)
	inc	a
	jr	NZ,00135$
;../printf_large.c:586: decimals = length;
	ld	-48 (ix),e
00135$:
;../printf_large.c:588: if ( ( !left_justify ) && (length < width) )
	bit	0,-38 (ix)
	jr	NZ,00277$
	ld	a,e
	sub	a, -24 (ix)
	jr	NC,00277$
;../printf_large.c:590: width -= length;
	ld	a,-24 (ix)
	sub	a, e
	ld	-6 (ix),a
;../printf_large.c:591: while( width-- != 0 )
	ld	c,-30 (ix)
	ld	b,-29 (ix)
00136$:
	ld	h,-6 (ix)
	dec	-6 (ix)
	ld	a,h
	or	a, a
	jr	Z,00312$
;../printf_large.c:593: OUTPUT_CHAR( ' ', p );
	push	bc
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	pop	bc
	inc	bc
	jr	00136$
;../printf_large.c:597: while ( (c = *PTR)  && (decimals-- > 0))
00312$:
	ld	-30 (ix),c
	ld	-29 (ix),b
	ld	a,-6 (ix)
	ld	-24 (ix),a
00277$:
	ld	d,-48 (ix)
	ld	c,-30 (ix)
	ld	b,-29 (ix)
00143$:
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,(hl)
	ld	-6 (ix),a
	or	a, a
	jr	Z,00313$
	ld	h,d
	dec	d
	xor	a, a
	sub	a, h
	jp	PO, 00583$
	xor	a, #0x80
00583$:
	jp	P,00313$
;../printf_large.c:599: OUTPUT_CHAR( c, p );
	push	bc
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,-6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	pop	bc
	inc	bc
;../printf_large.c:600: PTR++;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,-26 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-25 (ix)
	ld	(hl),a
	jr	00143$
00313$:
	ld	-30 (ix),c
	ld	-29 (ix),b
;../printf_large.c:603: if ( left_justify && (length < width))
	bit	0,-38 (ix)
	jp	Z,00160$
	ld	a,e
	sub	a, -24 (ix)
	jp	NC,00160$
;../printf_large.c:605: width -= length;
	ld	a,-24 (ix)
	sub	a, e
	ld	e,a
;../printf_large.c:606: while( width-- != 0 )
00146$:
	ld	h,e
	dec	e
	ld	a,h
	or	a, a
	jp	Z,00314$
;../printf_large.c:608: OUTPUT_CHAR( ' ', p );
	push	bc
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	pop	bc
	inc	bc
	jr	00146$
;../printf_large.c:613: case 'P':
00152$:
;../printf_large.c:614: PTR = va_arg(ap,ptr_t);
	ld	hl,#0x0008
	add	hl,sp
	ex	de,hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	inc	hl
	inc	hl
	ld	10 (ix),l
	ld	11 (ix),h
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../printf_large.c:658: OUTPUT_CHAR('0', p);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x30
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	ld	e,-30 (ix)
	ld	d,-29 (ix)
	inc	de
;../printf_large.c:659: OUTPUT_CHAR('x', p);
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x78
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	inc	de
;../printf_large.c:660: OUTPUT_2DIGITS( value.byte[1] );
	ld	hl,#0x0009
	add	hl,sp
	ld	b,(hl)
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,-40 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_2digits
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	inc	de
	inc	de
;../printf_large.c:661: OUTPUT_2DIGITS( value.byte[0] );
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,-40 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_output_2digits
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
	inc	de
	inc	de
	ld	-30 (ix),e
	ld	-29 (ix),d
;../printf_large.c:663: break;
	jr	00160$
;../printf_large.c:666: case 'I':
00154$:
;../printf_large.c:667: signed_argument = 1;
	ld	-37 (ix),#0x01
;../printf_large.c:668: radix = 10;
	ld	-36 (ix),#0x0A
;../printf_large.c:669: break;
	jr	00160$
;../printf_large.c:671: case 'O':
00155$:
;../printf_large.c:672: radix = 8;
	ld	-36 (ix),#0x08
;../printf_large.c:673: break;
	jr	00160$
;../printf_large.c:675: case 'U':
00156$:
;../printf_large.c:676: radix = 10;
	ld	-36 (ix),#0x0A
;../printf_large.c:677: break;
	jr	00160$
;../printf_large.c:679: case 'X':
00157$:
;../printf_large.c:680: radix = 16;
	ld	-36 (ix),#0x10
;../printf_large.c:681: break;
	jr	00160$
;../printf_large.c:683: case 'F':
00158$:
;../printf_large.c:684: float_argument=1;
	ld	-33 (ix),#0x01
;../printf_large.c:685: break;
	jr	00160$
;../printf_large.c:687: default:
00159$:
;../printf_large.c:689: OUTPUT_CHAR( c, p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,-13 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jr	NZ,00160$
	inc	-29 (ix)
;../printf_large.c:872: return charsOutputted;
	jr	00160$
;../printf_large.c:691: }
00314$:
	ld	-30 (ix),c
	ld	-29 (ix),b
	ld	-24 (ix),e
00160$:
;../printf_large.c:693: if (float_argument)
	bit	0,-33 (ix)
	jp	Z,00226$
;../printf_large.c:695: value.f = va_arg(ap, float);
	ld	hl,#0x0008
	add	hl,sp
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	a,10 (ix)
	add	a, #0x04
	ld	-15 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-14 (ix),a
	ld	a,-15 (ix)
	ld	10 (ix),a
	ld	a,-14 (ix)
	ld	11 (ix),a
	ld	a,-15 (ix)
	add	a,#0xFC
	ld	-15 (ix),a
	ld	a,-14 (ix)
	adc	a,#0xFF
	ld	-14 (ix),a
	ld	e,-15 (ix)
	ld	d,-14 (ix)
	ld	hl, #0x001F
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x001F
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../printf_large.c:697: PTR="<NO FLOAT>";
	ld	hl,#0x0008
	add	hl,sp
	ld	-23 (ix),l
	ld	-22 (ix),h
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),#<(___str_0)
	inc	hl
	ld	(hl),#>(___str_0)
;../printf_large.c:698: while (c=*PTR++)
	ld	a,-30 (ix)
	ld	-26 (ix),a
	ld	a,-29 (ix)
	ld	-25 (ix),a
00161$:
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	c, e
	ld	b, d
	inc	bc
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,(de)
	ld	h,a
	or	a, a
	jp	Z,00231$
;../printf_large.c:700: OUTPUT_CHAR (c, p);
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	push	hl
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-26 (ix)
	jr	NZ,00585$
	inc	-25 (ix)
00585$:
	ld	a,-26 (ix)
	ld	-30 (ix),a
	ld	a,-25 (ix)
	ld	-29 (ix),a
	jr	00161$
00226$:
;../printf_large.c:718: else if (radix != 0)
	ld	a,-36 (ix)
	or	a, a
	jp	Z,00231$
;../printf_large.c:723: unsigned char MEM_SPACE_BUF_PP *pstore = &store[5];
	ld	a,-28 (ix)
	ld	-23 (ix),a
	ld	a,-27 (ix)
	ld	-22 (ix),a
;../printf_large.c:726: if (char_argument)
	bit	0,-47 (ix)
	jp	Z,00172$
;../printf_large.c:728: value.l = va_arg(ap, char);
	ld	hl,#0x0008
	add	hl,sp
	ld	-26 (ix),l
	ld	-25 (ix),h
	ld	a,10 (ix)
	add	a, #0x01
	ld	-15 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-14 (ix),a
	ld	a,-15 (ix)
	ld	10 (ix),a
	ld	a,-14 (ix)
	ld	11 (ix),a
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	dec	hl
	ld	-15 (ix),l
	ld	-14 (ix),h
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	ld	a,(hl)
	ld	-6 (ix), a
	ld	-19 (ix),a
	ld	a,-6 (ix)
	rla
	sbc	a, a
	ld	-18 (ix),a
	ld	-17 (ix),a
	ld	-16 (ix),a
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../printf_large.c:729: if (!signed_argument)
	bit	0,-37 (ix)
	jp	NZ,00173$
;../printf_large.c:731: value.l &= 0xFF;
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	-18 (ix),#0x00
	ld	-17 (ix),#0x00
	ld	-16 (ix),#0x00
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ld	bc, #0x0004
	ldir
	jp	00173$
00172$:
;../printf_large.c:734: else if (long_argument)
	bit	0,-39 (ix)
	jr	Z,00169$
;../printf_large.c:736: value.l = va_arg(ap, long);
	ld	hl,#0x0008
	add	hl,sp
	ld	-19 (ix),l
	ld	-18 (ix),h
	ld	a,10 (ix)
	add	a, #0x04
	ld	-26 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-25 (ix),a
	ld	a,-26 (ix)
	ld	10 (ix),a
	ld	a,-25 (ix)
	ld	11 (ix),a
	ld	a,-26 (ix)
	add	a,#0xFC
	ld	-26 (ix),a
	ld	a,-25 (ix)
	adc	a,#0xFF
	ld	-25 (ix),a
	ld	e,-26 (ix)
	ld	d,-25 (ix)
	ld	hl, #0x002C
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	e,-19 (ix)
	ld	d,-18 (ix)
	ld	hl, #0x002C
	add	hl, sp
	ld	bc, #0x0004
	ldir
	jp	00173$
00169$:
;../printf_large.c:740: value.l = va_arg(ap, int);
	ld	hl,#0x0008
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	a,10 (ix)
	add	a, #0x02
	ld	-19 (ix),a
	ld	a,11 (ix)
	adc	a, #0x00
	ld	-18 (ix),a
	ld	a,-19 (ix)
	ld	10 (ix),a
	ld	a,-18 (ix)
	ld	11 (ix),a
	ld	a,-19 (ix)
	add	a,#0xFE
	ld	-19 (ix),a
	ld	a,-18 (ix)
	adc	a,#0xFF
	ld	-18 (ix),a
	ld	a,-19 (ix)
	ld	-19 (ix),a
	ld	a,-18 (ix)
	ld	-18 (ix),a
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	ld	a,(hl)
	ld	-19 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-18 (ix),a
	ld	a,-19 (ix)
	ld	-19 (ix),a
	ld	a,-18 (ix)
	ld	-18 (ix), a
	rla
	sbc	a, a
	ld	-17 (ix),a
	ld	-16 (ix),a
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../printf_large.c:741: if (!signed_argument)
	bit	0,-37 (ix)
	jr	NZ,00173$
;../printf_large.c:743: value.l &= 0xFFFF;
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	-17 (ix),#0x00
	ld	-16 (ix),#0x00
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	ld	hl, #0x0023
	add	hl, sp
	ld	bc, #0x0004
	ldir
00173$:
;../printf_large.c:747: if ( signed_argument )
	bit	0,-37 (ix)
	jr	Z,00178$
;../printf_large.c:749: if (value.l < 0)
	ld	hl,#0x0008
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ex	de,hl
	ld	hl, #0x0023
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	bit	7, -16 (ix)
	jr	Z,00175$
;../printf_large.c:750: value.l = -value.l;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	xor	a, a
	sub	a, e
	ld	e,a
	ld	a, #0x00
	sbc	a, d
	ld	d,a
	ld	a, #0x00
	sbc	a, c
	ld	c,a
	ld	a, #0x00
	sbc	a, b
	ld	b,a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00178$
00175$:
;../printf_large.c:752: signed_argument = 0;
	ld	-37 (ix),#0x00
00178$:
;../printf_large.c:756: lsd = 1;
	ld	-32 (ix),#0x01
;../printf_large.c:758: do {
	ld	c,-23 (ix)
	ld	b,-22 (ix)
	ld	-35 (ix),#0x00
00182$:
;../printf_large.c:759: value.byte[4] = 0;
	ld	hl,#0x000C
	add	hl,sp
	ld	(hl),#0x00
;../printf_large.c:761: calculate_digit(&value, radix);
	ld	e,-12 (ix)
	ld	d,-11 (ix)
	push	bc
	ld	a,-36 (ix)
	push	af
	inc	sp
	push	de
	call	_calculate_digit
	inc	sp
	inc	sp
	inc	sp
	pop	bc
;../printf_large.c:765: if (!lsd)
	bit	0,-32 (ix)
	jr	NZ,00180$
;../printf_large.c:767: *pstore = (value.byte[4] << 4) | (value.byte[4] >> 4) | *pstore;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	rlca
	rlca
	rlca
	rlca
	and	a,#0xF0
	ld	d,a
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	or	a, d
	ld	d,a
	ld	a,(bc)
	or	a, d
	ld	(bc),a
;../printf_large.c:768: pstore--;
	dec	bc
	jr	00181$
00180$:
;../printf_large.c:772: *pstore = value.byte[4];
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	a,(hl)
	ld	(bc),a
00181$:
;../printf_large.c:774: length++;
	inc	-35 (ix)
;../printf_large.c:775: lsd = !lsd;
	ld	a,-32 (ix)
	xor	a, #0x01
	ld	-32 (ix),a
;../printf_large.c:776: } while( value.ul );
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	h,(hl)
	or	a, h
	or	a, d
	or	a,e
	jr	NZ,00182$
;../printf_large.c:778: if (width == 0)
	ld	-10 (ix),c
	ld	-9 (ix),b
	ld	a,-35 (ix)
	ld	-19 (ix),a
	ld	a,-24 (ix)
	or	a, a
	jr	NZ,00186$
;../printf_large.c:783: width = 1;
	ld	-24 (ix),#0x01
00186$:
;../printf_large.c:787: if (!zero_padding && !left_justify)
	bit	0,-34 (ix)
	jr	NZ,00191$
	bit	0,-38 (ix)
	jr	NZ,00191$
;../printf_large.c:789: while ( width > (unsigned char) (length+1) )
	ld	a,-19 (ix)
	inc	a
	ld	-23 (ix),a
	ld	a,-30 (ix)
	ld	-26 (ix),a
	ld	a,-29 (ix)
	ld	-25 (ix),a
	ld	d,-24 (ix)
00187$:
	ld	a,-23 (ix)
	sub	a, d
	jr	NC,00316$
;../printf_large.c:791: OUTPUT_CHAR( ' ', p );
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	inc	-26 (ix)
	jr	NZ,00586$
	inc	-25 (ix)
00586$:
;../printf_large.c:792: width--;
	dec	d
	jr	00187$
00316$:
	ld	a,-26 (ix)
	ld	-30 (ix),a
	ld	a,-25 (ix)
	ld	-29 (ix),a
	ld	-24 (ix),d
00191$:
;../printf_large.c:796: if (signed_argument) // this now means the original value was negative
	bit	0,-37 (ix)
	jr	Z,00201$
;../printf_large.c:798: OUTPUT_CHAR( '-', p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x2D
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jr	NZ,00587$
	inc	-29 (ix)
00587$:
;../printf_large.c:800: width--;
	dec	-24 (ix)
	jr	00202$
00201$:
;../printf_large.c:802: else if (length != 0)
	ld	a,-19 (ix)
	or	a, a
	jr	Z,00202$
;../printf_large.c:805: if (prefix_sign)
	bit	0,-31 (ix)
	jr	Z,00196$
;../printf_large.c:807: OUTPUT_CHAR( '+', p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x2B
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jr	NZ,00588$
	inc	-29 (ix)
00588$:
;../printf_large.c:809: width--;
	dec	-24 (ix)
	jr	00202$
00196$:
;../printf_large.c:811: else if (prefix_space)
	bit	0,-41 (ix)
	jr	Z,00202$
;../printf_large.c:813: OUTPUT_CHAR( ' ', p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jr	NZ,00589$
	inc	-29 (ix)
00589$:
;../printf_large.c:815: width--;
	dec	-24 (ix)
00202$:
;../printf_large.c:820: if (!left_justify)
	bit	0,-38 (ix)
	jr	NZ,00210$
;../printf_large.c:822: while ( width-- > length )
	ld	a,-30 (ix)
	ld	-23 (ix),a
	ld	a,-29 (ix)
	ld	-22 (ix),a
	ld	a,-24 (ix)
	ld	-26 (ix),a
00203$:
	ld	h,-26 (ix)
	dec	-26 (ix)
	ld	a,-19 (ix)
	sub	a, h
	jr	NC,00317$
;../printf_large.c:824: OUTPUT_CHAR( zero_padding ? '0' : ' ', p );
	bit	0,-34 (ix)
	jr	Z,00236$
	ld	-6 (ix),#0x30
	jr	00237$
00236$:
	ld	-6 (ix),#0x20
00237$:
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,-6 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-23 (ix)
	jr	NZ,00203$
	inc	-22 (ix)
	jr	00203$
00210$:
;../printf_large.c:830: if (width > length)
	ld	a,-19 (ix)
	sub	a, -24 (ix)
	jr	NC,00207$
;../printf_large.c:831: width -= length;
	ld	a,-24 (ix)
	sub	a, -19 (ix)
	ld	-6 (ix),a
	jr	00309$
00207$:
;../printf_large.c:833: width = 0;
	ld	-6 (ix),#0x00
;../printf_large.c:872: return charsOutputted;
	jr	00309$
;../printf_large.c:837: while( length-- )
00317$:
	ld	a,-23 (ix)
	ld	-30 (ix),a
	ld	a,-22 (ix)
	ld	-29 (ix),a
	ld	a,-26 (ix)
	ld	-6 (ix),a
00309$:
	ld	a,-10 (ix)
	ld	-10 (ix),a
	ld	a,-9 (ix)
	ld	-9 (ix),a
	ld	a,-30 (ix)
	ld	-23 (ix),a
	ld	a,-29 (ix)
	ld	-22 (ix),a
	ld	a,-19 (ix)
	ld	-19 (ix),a
00215$:
	ld	h,-19 (ix)
	dec	-19 (ix)
	ld	a,h
	or	a, a
	jr	Z,00318$
;../printf_large.c:839: lsd = !lsd;
	ld	a,-32 (ix)
	xor	a, #0x01
	ld	-32 (ix),a
;../printf_large.c:840: if (!lsd)
	bit	0,-32 (ix)
	jr	NZ,00213$
;../printf_large.c:842: pstore++;
	inc	-10 (ix)
	jr	NZ,00591$
	inc	-9 (ix)
00591$:
;../printf_large.c:843: value.byte[4] = *pstore >> 4;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	rlca
	rlca
	rlca
	rlca
	and	a,#0x0F
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),a
	jr	00214$
00213$:
;../printf_large.c:847: value.byte[4] = *pstore & 0x0F;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	a,(hl)
	and	a, #0x0F
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	(hl),a
00214$:
;../printf_large.c:850: output_digit( value.byte[4], lower_case, output_char, p );
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	d,(hl)
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	a,-40 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_output_digit
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;../printf_large.c:851: charsOutputted++;
	inc	-23 (ix)
	jr	NZ,00215$
	inc	-22 (ix)
	jr	00215$
00318$:
	ld	a,-23 (ix)
	ld	-30 (ix),a
	ld	a,-22 (ix)
	ld	-29 (ix),a
;../printf_large.c:856: if (left_justify)
	bit	0,-38 (ix)
	jp	Z,00231$
;../printf_large.c:858: while (width-- > 0)
	ld	e,-23 (ix)
	ld	d,-22 (ix)
	ld	a,-6 (ix)
	ld	-10 (ix),a
00218$:
	ld	h,-10 (ix)
	dec	-10 (ix)
	ld	a,h
	or	a, a
	jp	Z,00231$
;../printf_large.c:860: OUTPUT_CHAR(' ', p);
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,#0x20
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	pop	de
	inc	de
	ld	-30 (ix),e
	ld	-29 (ix),d
	jr	00218$
00229$:
;../printf_large.c:868: OUTPUT_CHAR( c, p );
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	a,-3 (ix)
	push	af
	inc	sp
	ld	l,4 (ix)
	ld	h,5 (ix)
	call	___sdcc_call_hl
	inc	sp
	inc	sp
	inc	sp
	inc	-30 (ix)
	jp	NZ,00231$
	inc	-29 (ix)
	jp	00231$
00233$:
;../printf_large.c:872: return charsOutputted;
	ld	l,-30 (ix)
	ld	h,-29 (ix)
	ld	sp, ix
	pop	ix
	ret
___str_0:
	.ascii "<NO FLOAT>"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
