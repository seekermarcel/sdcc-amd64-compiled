;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:43 2022
;--------------------------------------------------------
	.hd64
	.module _mullong
	.optsdcc -mz180
	
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
	ld	hl,#-14
	add	hl,sp
	ld	sp,hl
;../_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl,#0x0002
	add	hl,de
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	hl,#0x0012
	add	hl,sp
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	ld	hl,#0x0016
	add	hl,sp
	ld	-10 (ix),l
	ld	-9 (ix),h
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	inc	hl
	ld	b, (hl)
	mlt	bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	c,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	b, (hl)
	mlt	bc
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	ld	hl,#0x0003
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ld	d,a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	h,(hl)
	push	de
	ld	l, e
	mlt	hl
	pop	de
	ld	a,d
	add	a, l
	ld	(bc),a
;../_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	ld	a,(bc)
	ld	d,a
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	e,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	ld	h,(hl)
	push	de
	ld	l, e
	mlt	hl
	pop	de
	ld	a,d
	add	a, l
	ld	(bc),a
;../_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	ld	hl,#0x0002
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	h,(hl)
	push	de
	ld	l, -4 (ix)
	mlt	hl
	pop	de
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	l, e
	ld	h, d
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	a,(hl)
	ld	-4 (ix),a
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	ld	h,(hl)
	push	de
	ld	l, -4 (ix)
	mlt	hl
	pop	de
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	inc	de
	inc	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	b,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	inc	hl
	ld	c,(hl)
	mlt	bc
	ld	a,c
	ld	(de),a
;../_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	inc	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	ld	b,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	c,(hl)
	mlt	bc
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	inc	de
	inc	de
	inc	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	c,(hl)
	mlt	bc
	ld	a,c
	ld	(de),a
;../_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	ld	e,-10 (ix)
	ld	d,-9 (ix)
	inc	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	b,(hl)
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	inc	hl
	ld	c,(hl)
	mlt	bc
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	(hl),#0x00
;../_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	ld	l,-2 (ix)
	ld	h,-1 (ix)
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
