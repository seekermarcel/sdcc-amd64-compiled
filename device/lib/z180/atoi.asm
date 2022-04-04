;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:43 2022
;--------------------------------------------------------
	.hd64
	.module atoi
	.optsdcc -mz180
	
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
	dec	sp
	dec	sp
	dec	sp
	dec	sp
;../atoi.c:36: int ret = 0;
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
;../atoi.c:39: while (isblank (*nptr))
	ld	e,4 (ix)
	ld	d,5 (ix)
00101$:
	ld	a,(de)
	ld	h,a
	ld	l,a
	rla
	sbc	a, a
	ld	b,a
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	ld	a,l
	cp	a,#0x20
	jr	Z,00115$
	sub	a, #0x09
	jr	NZ,00131$
00115$:
;../atoi.c:40: nptr++;
	inc	de
	jr	00101$
00131$:
	ld	4 (ix),e
	ld	5 (ix),d
;../atoi.c:42: neg = (*nptr == '-');
	ld	a,h
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
	ld	a,h
	sub	a, #0x2B
	jr	NZ,00129$
00104$:
;../atoi.c:45: nptr++;
	inc	de
	ld	4 (ix),e
	ld	5 (ix),d
;../atoi.c:47: while (isdigit (*nptr))
00129$:
	ld	c,4 (ix)
	ld	b,5 (ix)
00107$:
	ld	a,(bc)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ld	l, e
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a,l
	sub	a, #0x30
	jr	C,00109$
	ld	a,#0x39
	sub	a, l
	jr	C,00109$
;../atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	push	de
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	pop	de
	inc	bc
	ld	a,e
	add	a,#0xD0
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	add	hl,de
	ld	-3 (ix),l
	ld	-2 (ix),h
	jr	00107$
00109$:
;../atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	bit	0,-4 (ix)
	jr	Z,00120$
	xor	a, a
	sub	a, -3 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	b,a
	jr	00121$
00120$:
	ld	l,-3 (ix)
	ld	b,-2 (ix)
00121$:
	ld	h, b
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
