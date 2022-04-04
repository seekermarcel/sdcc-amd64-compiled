;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:01 2022
;--------------------------------------------------------
	.module atoi
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;../atoi.c:34: int atoi(const char *nptr)
;	---------------------------------
; Function atoi
; ---------------------------------
_atoi::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../atoi.c:36: int ret = 0;
	ld	bc,#0x0000
;../atoi.c:39: while (isblank (*nptr))
	ld	hl, 8 (sp)
00101$:
	ld	a,(hl)
	ld	-1 (ix), a
	ld	d, a
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	e,a
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	ld	a,d
	cp	a,#0x20
	jr	Z,00115$
	sub	a, #0x09
	jr	NZ,00131$
00115$:
;../atoi.c:40: nptr++;
	inc	hl
	jr	00101$
00131$:
	ld	8 (sp), hl
;../atoi.c:42: neg = (*nptr == '-');
	ld	a,-1 (ix)
	sub	a, #0x2D
	jr	NZ,00157$
	ld	a,#0x01
	jr	00158$
00157$:
	xor	a,a
00158$:
	ld	-4 (ix),a
;../atoi.c:44: if (*nptr == '-' || *nptr == '+')
	bit	0,a
	jr	NZ,00104$
	ld	a,-1 (ix)
	sub	a, #0x2B
	jr	NZ,00129$
00104$:
;../atoi.c:45: nptr++;
	inc	hl
	ld	8 (sp), hl
;../atoi.c:47: while (isdigit (*nptr))
00129$:
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
00107$:
	ld	a,(de)
	ld	-3 (ix),a
	rla
	sbc	a, a
	ld	-2 (ix),a
	ld	hl, 1 (sp)
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a,l
	sub	a, #0x30
	jr	C,00109$
	ld	a,#0x39
	sub	a, l
	jr	C,00109$
;../atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	inc	de
	ld	a,-3 (ix)
	add	a,#0xD0
	ld	c,a
	ld	a,-2 (ix)
	adc	a,#0xFF
	ld	b,a
	add	hl,bc
	ld	c, l
	ld	b, h
	jr	00107$
00109$:
;../atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	bit	0,-4 (ix)
	jr	Z,00120$
	xor	a, a
	sub	a, c
	ld	l,a
	ld	a, #0x00
	sbc	a, b
	ld	h,a
	jr	00121$
00120$:
	ld	l, c
	ld	h, b
00121$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
