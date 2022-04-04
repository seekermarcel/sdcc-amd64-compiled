;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:34 2022
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;../_mullonglong.c:35: long long _mullonglong(long long ll, long long lr)
;	---------------------------------
; Function _mullonglong
; ---------------------------------
__mullonglong::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-19
;../_mullonglong.c:37: unsigned long long ret = 0ull;
	xor	a, a
	ld	-18 (ix),a
	ld	-17 (ix),a
	ld	-16 (ix),a
	ld	-15 (ix),a
	ld	-14 (ix),a
	ld	-13 (ix),a
	ld	-12 (ix),a
	ld	-11 (ix),a
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	ld	c,#0x00
00106$:
;../_mullonglong.c:42: unsigned char l = ll >> (i * 8);
	ld	e,c
	ld	d,#0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	af
	ld	a,6 (ix)
	ld	-8 (ix),a
	ld	a,7 (ix)
	ld	-7 (ix),a
	ld	a,8 (ix)
	ld	-6 (ix),a
	ld	a,9 (ix)
	ld	-5 (ix),a
	ld	a,10 (ix)
	ld	-4 (ix),a
	ld	a,11 (ix)
	ld	-3 (ix),a
	ld	a,12 (ix)
	ld	-2 (ix),a
	ld	a,13 (ix)
	ld	-1 (ix),a
	pop	af
	inc	l
	jr	00129$
00128$:
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
00129$:
	dec	l
	jr	NZ,00128$
	ld	b,-8 (ix)
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	ld	-19 (ix),#0x00
00104$:
	ld	l,-19 (ix)
	ld	h,#0x00
	ld	a,l
	add	a, e
	ld	-10 (ix),a
	ld	a,h
	adc	a, d
	ld	-9 (ix),a
	ld	a,-10 (ix)
	sub	a, #0x08
	ld	a,-9 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC,00107$
;../_mullonglong.c:45: unsigned char r = lr >> (j * 8);
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	af
	ld	a,14 (ix)
	ld	-8 (ix),a
	ld	a,15 (ix)
	ld	-7 (ix),a
	ld	a,16 (ix)
	ld	-6 (ix),a
	ld	a,17 (ix)
	ld	-5 (ix),a
	ld	a,18 (ix)
	ld	-4 (ix),a
	ld	a,19 (ix)
	ld	-3 (ix),a
	ld	a,20 (ix)
	ld	-2 (ix),a
	ld	a,21 (ix)
	ld	-1 (ix),a
	pop	af
	inc	l
	jr	00131$
00130$:
	sra	-1 (ix)
	rr	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	rr	-5 (ix)
	rr	-6 (ix)
	rr	-7 (ix)
	rr	-8 (ix)
00131$:
	dec	l
	jr	NZ,00130$
	ld	h,-8 (ix)
;../_mullonglong.c:46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	push	de
	push	bc
	ld	e,b
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00132$:
	add	hl,hl
	jr	NC,00133$
	add	hl,de
00133$:
	djnz	00132$
	pop	bc
	pop	de
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
	ld	-4 (ix),#0x00
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	ld	hl, 9 (sp)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	af
	pop	af
	inc	l
	jr	00135$
00134$:
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	rl	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
00135$:
	dec	l
	jr	NZ,00134$
	ld	a,-18 (ix)
	add	a, -8 (ix)
	ld	-18 (ix),a
	ld	a,-17 (ix)
	adc	a, -7 (ix)
	ld	-17 (ix),a
	ld	a,-16 (ix)
	adc	a, -6 (ix)
	ld	-16 (ix),a
	ld	a,-15 (ix)
	adc	a, -5 (ix)
	ld	-15 (ix),a
	ld	a,-14 (ix)
	adc	a, -4 (ix)
	ld	-14 (ix),a
	ld	a,-13 (ix)
	adc	a, -3 (ix)
	ld	-13 (ix),a
	ld	a,-12 (ix)
	adc	a, -2 (ix)
	ld	-12 (ix),a
	ld	a,-11 (ix)
	adc	a, -1 (ix)
	ld	-11 (ix),a
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	-19 (ix)
	jp	00104$
00107$:
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	inc	c
	ld	a,c
	sub	a, #0x08
	jp	C,00106$
;../_mullonglong.c:50: return(ret);
	ld	hl, #23
	add	hl, sp
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #1
	add	hl, sp
	ld	bc, #8
	ldir
	ld	sp, ix
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
