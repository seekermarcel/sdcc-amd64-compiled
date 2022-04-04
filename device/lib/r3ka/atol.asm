;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:18 2022
;--------------------------------------------------------
	.r3k
	.module atol
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;../atol.c:34: long int atol(const char *nptr)
;	---------------------------------
; Function atol
; ---------------------------------
_atol::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-10
;../atol.c:36: long int ret = 0;
	xor	a, a
	ld	-9 (ix),a
	ld	-8 (ix),a
	ld	-7 (ix),a
	ld	-6 (ix),a
;../atol.c:39: while (isblank (*nptr))
	ex	de, hl
	ld	hl, 14 (sp)
	ex	de, hl
00101$:
	ld	a,(de)
	ld	c,a
	ld	h,a
	rla
	sbc	a, a
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	ld	a,h
	cp	a,#0x20
	jr	Z,00115$
	sub	a, #0x09
	jr	NZ,00131$
00115$:
;../atol.c:40: nptr++;
	inc	de
	jr	00101$
00131$:
	ld	4 (ix),e
	ld	5 (ix),d
;../atol.c:42: neg = (*nptr == '-');
	ld	l, e
	ld	h, d
	ld	a,c
	sub	a, #0x2D
	jr	NZ,00157$
	ld	a,#0x01
	jr	00158$
00157$:
	xor	a,a
00158$:
	ld	-10 (ix),a
;../atol.c:44: if (*nptr == '-' || *nptr == '+')
	bit	0,a
	jr	NZ,00104$
	ld	a,c
	sub	a, #0x2B
	jr	NZ,00129$
00104$:
;../atol.c:45: nptr++;
	inc	hl
	ld	14 (sp), hl
;../atol.c:47: while (isdigit (*nptr))
00129$:
	ex	de, hl
	ld	hl, 14 (sp)
	ex	de, hl
00107$:
	ld	a,(de)
	ld	c,a
	rla
	sbc	a, a
	ld	b,a
	ld	l, c
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a,l
	sub	a, #0x30
	jr	C,00109$
	ld	a,#0x39
	sub	a, l
	jr	C,00109$
;../atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	push	bc
	push	de
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000A
	push	hl
	call	__mullong
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	pop	de
	pop	bc
	inc	de
	ld	a,c
	add	a,#0xD0
	ld	l,a
	ld	a,b
	adc	a,#0xFF
	ld	h,a
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,-4 (ix)
	add	a, l
	ld	l,a
	ld	a,-3 (ix)
	adc	a, h
	ld	h,a
	ld	a,-2 (ix)
	adc	a, c
	ld	c,a
	ld	a,-1 (ix)
	adc	a, b
	ld	b,a
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-7 (ix),c
	ld	-6 (ix),b
	jr	00107$
00109$:
;../atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	bit	0,-10 (ix)
	jr	Z,00120$
	xor	a, a
	sub	a, -9 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, -8 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, -7 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, -6 (ix)
	ld	d,a
	jr	00121$
00120$:
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	ld	e,-7 (ix)
	ld	d,-6 (ix)
00121$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
