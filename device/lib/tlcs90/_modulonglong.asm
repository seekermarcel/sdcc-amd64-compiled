;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:35 2022
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong
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
;../_modulonglong.c:38: _modulonglong (unsigned long long a, unsigned long long b)
;	---------------------------------
; Function _modulonglong
; ---------------------------------
__modulonglong::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_modulonglong.c:40: unsigned char count = 0;
;../_modulonglong.c:42: while (!MSB_SET(b))
	ld	de,#0x0000
00103$:
	ld	a,21 (ix)
	rlc	a
	and	a,#0x01
	jp	NZ,00117$
;../_modulonglong.c:44: b <<= 1;
	push	af
	pop	af
	sla	14 (ix)
	rl	15 (ix)
	rl	16 (ix)
	rl	17 (ix)
	rl	18 (ix)
	rl	19 (ix)
	rl	20 (ix)
	rl	21 (ix)
;../_modulonglong.c:45: if (b > a)
	ld	a,6 (ix)
	sub	a, 14 (ix)
	ld	a,7 (ix)
	sbc	a, 15 (ix)
	ld	a,8 (ix)
	sbc	a, 16 (ix)
	ld	a,9 (ix)
	sbc	a, 17 (ix)
	ld	a,10 (ix)
	sbc	a, 18 (ix)
	ld	a,11 (ix)
	sbc	a, 19 (ix)
	ld	a,12 (ix)
	sbc	a, 20 (ix)
	ld	a,13 (ix)
	sbc	a, 21 (ix)
	jr	NC,00102$
;../_modulonglong.c:47: b >>=1;
	push	af
	pop	af
	srl	21 (ix)
	rr	20 (ix)
	rr	19 (ix)
	rr	18 (ix)
	rr	17 (ix)
	rr	16 (ix)
	rr	15 (ix)
	rr	14 (ix)
;../_modulonglong.c:48: break;
	jr	00117$
00102$:
;../_modulonglong.c:50: count++;
	inc	e
	ld	d,e
	jp	00103$
;../_modulonglong.c:52: do
00117$:
00108$:
;../_modulonglong.c:54: if (a >= b)
	ld	a,6 (ix)
	sub	a, 14 (ix)
	ld	a,7 (ix)
	sbc	a, 15 (ix)
	ld	a,8 (ix)
	sbc	a, 16 (ix)
	ld	a,9 (ix)
	sbc	a, 17 (ix)
	ld	a,10 (ix)
	sbc	a, 18 (ix)
	ld	a,11 (ix)
	sbc	a, 19 (ix)
	ld	a,12 (ix)
	sbc	a, 20 (ix)
	ld	a,13 (ix)
	sbc	a, 21 (ix)
	jp	C,00107$
;../_modulonglong.c:55: a -= b;
	ld	a,6 (ix)
	sub	a, 14 (ix)
	ld	6 (ix),a
	ld	a,7 (ix)
	sbc	a, 15 (ix)
	ld	7 (ix),a
	ld	a,8 (ix)
	sbc	a, 16 (ix)
	ld	8 (ix),a
	ld	a,9 (ix)
	sbc	a, 17 (ix)
	ld	9 (ix),a
	ld	a,10 (ix)
	sbc	a, 18 (ix)
	ld	10 (ix),a
	ld	a,11 (ix)
	sbc	a, 19 (ix)
	ld	11 (ix),a
	ld	a,12 (ix)
	sbc	a, 20 (ix)
	ld	12 (ix),a
	ld	a,13 (ix)
	sbc	a, 21 (ix)
	ld	13 (ix),a
00107$:
;../_modulonglong.c:56: b >>= 1;
	push	af
	pop	af
	srl	21 (ix)
	rr	20 (ix)
	rr	19 (ix)
	rr	18 (ix)
	rr	17 (ix)
	rr	16 (ix)
	rr	15 (ix)
	rr	14 (ix)
;../_modulonglong.c:58: while (count--);
	ld	h,d
	dec	d
	ld	a,h
	or	a, a
	jp	NZ,00108$
;../_modulonglong.c:60: return a;
	ld	hl, #4
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #6
	add	hl, sp
	ld	bc, #8
	ldir
	pop	ix
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
