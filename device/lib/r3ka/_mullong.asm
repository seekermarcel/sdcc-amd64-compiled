;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:17 2022
;--------------------------------------------------------
	.r3k
	.module _mullong
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
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
;../_mullong.c:734: _mullong (long a, long b)
;	---------------------------------
; Function _mullong
; ---------------------------------
__mullong::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-14
;../_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	ld	hl,#0x0000
	add	hl,sp
	ld	4 (sp), hl
	ex	de, hl
	ld	hl, 4 (sp)
	ex	de, hl
	inc	de
	inc	de
	ld	hl,#0x0012
	add	hl,sp
	ld	12 (sp), hl
	ld	hl, 12 (sp)
	ld	b,(hl)
	ld	hl,#0x0016
	add	hl,sp
	ld	10 (sp), hl
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	ld	c,(hl)
	push	de
	ld	e,b
	ld	d,#0x00
	ld	b,d
	mul
	pop	de
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	ld	hl, 12 (sp)
	ld	e,(hl)
	ld	hl, 10 (sp)
	ld	c,(hl)
	ld	d,#0x00
	ld	b,d
	mul
	ld	hl, 4 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	ld	hl,#0x0003
	add	hl,sp
	ld	4 (sp), hl
	ld	hl, 4 (sp)
	ld	d,(hl)
	ld	hl, 12 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	ld	c,(hl)
	mul
	ld	a,d
	add	a, c
	ld	hl, 4 (sp)
	ld	(hl),a
;../_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	ld	hl, 4 (sp)
	ld	d,(hl)
	ld	hl, 12 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	inc	hl
	ld	c,(hl)
	mul
	ld	a,d
	add	a, c
	ld	hl, 4 (sp)
	ld	(hl),a
;../_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	ld	hl,#0x0002
	add	hl,sp
	ld	4 (sp), hl
	ld	hl, 4 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 12 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	ld	h,(hl)
	push	bc
	ld	c, h
	ld	d, #0x00
	ld	b, d
	mul
	ld	l, c
	ld	h, b
	pop	bc
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	hl, 4 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	ld	hl, 4 (sp)
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 12 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	inc	hl
	ld	h,(hl)
	push	bc
	ld	c, h
	ld	d, #0x00
	ld	b, d
	mul
	ld	l, c
	ld	h, b
	pop	bc
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	hl, 4 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	ld	hl, 12 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 12 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	ld	c,(hl)
	mul
	ld	hl, 4 (sp)
	ld	(hl),c
;../_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	ld	hl, 12 (sp)
	inc	hl
	ld	4 (sp), hl
	ld	hl, 12 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 10 (sp)
	ld	c,(hl)
	ld	d,#0x00
	ld	b,d
	mul
	ld	hl, 4 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	ld	hl, 10 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 12 (sp)
	ld	e,(hl)
	ld	iy, 10 (sp)
	ld	c,3 (iy)
	mul
	ld	hl, 4 (sp)
	ld	(hl),c
;../_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	ld	hl, 10 (sp)
	inc	hl
	ld	4 (sp), hl
	ld	hl, 12 (sp)
	ld	e,(hl)
	ld	hl, 10 (sp)
	inc	hl
	ld	c,(hl)
	ld	d,#0x00
	ld	b,d
	mul
	ld	hl, 4 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	ld	hl, 10 (sp)
	ld	(hl),#0x00
;../_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	ld	hl, 12 (sp)
	ld	(hl),#0x00
;../_mullong.c:754: t.l += a;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	push	de
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	pop	de
	ld	h,4 (ix)
	ld	l,5 (ix)
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,-8 (ix)
	add	a, h
	ld	-8 (ix),a
	ld	a,-7 (ix)
	adc	a, l
	ld	-7 (ix),a
	ld	a,-6 (ix)
	adc	a, c
	ld	-6 (ix),a
	ld	a,-5 (ix)
	adc	a, b
	ld	-5 (ix),a
	push	de
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../_mullong.c:756: return t.l + b;
	pop	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	inc	hl
	ld	a,(hl)
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	e,10 (ix)
	ld	d,11 (ix)
	ld	a,-8 (ix)
	add	a, l
	ld	l,a
	ld	a,-7 (ix)
	adc	a, h
	ld	h,a
	ld	a,-6 (ix)
	adc	a, e
	ld	e,a
	ld	a,-5 (ix)
	adc	a, d
	ld	d,a
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
