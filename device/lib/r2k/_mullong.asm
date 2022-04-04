;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:00 2022
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mr2k
	
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
;../_mullong.c:710: _mullong (long a, long b)
;	---------------------------------
; Function _mullong
; ---------------------------------
__mullong::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-8
;../_mullong.c:714: bcast(a)->i.hi *= bcast(b)->i.lo;
	ld	hl,#0x000C
	add	hl,sp
	ld	2 (sp), hl
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0010
	add	hl,sp
	ld	0 (sp), hl
	ld	hl, 0 (sp)
	ld	hl, 0 (hl)
	push	hl
	push	de
	call	__mulint
	add	sp, #4
	ld	d,l
	ld	e,h
	ld	hl, 4 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:715: bcast(a)->i.hi += bcast(b)->i.hi * bcast(a)->i.lo;
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 0 (sp)
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl, 2 (sp)
	ld	hl, 0 (hl)
	push	bc
	push	hl
	push	de
	call	__mulint
	add	sp, #4
	pop	bc
	add	hl,bc
	ld	d,l
	ld	e,h
	ld	hl, 4 (sp)
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:718: bcast(a)->i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 2 (sp)
	inc	hl
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	hl, 2 (sp)
	inc	hl
	ld	e,(hl)
	ld	hl, 0 (sp)
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
;../_mullong.c:720: i12 = bcast(b)->b.b0 * bcast(a)->b.b1;
	ld	hl, 0 (sp)
	ld	e,(hl)
	ld	hl, 2 (sp)
	inc	hl
	ld	c,(hl)
	ld	d,#0x00
	ld	b,d
	mul
	ld	e,c
	ld	d,b
;../_mullong.c:721: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1;
	ld	hl, 0 (sp)
	inc	hl
	ld	4 (sp), hl
	ld	hl, 2 (sp)
	ld	b,(hl)
	ld	hl, 0 (sp)
	inc	hl
	ld	c,(hl)
	push	de
	ld	e,b
	ld	d,#0x00
	ld	b,d
	mul
	pop	de
	ld	hl, 4 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:724: bcast(b)->b.b3 = ((bcast(b)->bi.i12 += i12) < i12);
	ld	hl, 0 (sp)
	inc	hl
	inc	hl
	inc	hl
	ld	4 (sp), hl
	ld	hl, 0 (sp)
	inc	hl
	ld	6 (sp), hl
	ld	hl, 0 (sp)
	ld	hl, 1 (hl)
	add	hl,de
	ld	c,l
	ld	b,h
	ld	hl, 6 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,c
	sub	a, e
	ld	a,b
	sbc	a, d
	ld	a,#0x00
	rla
	ld	hl, 4 (sp)
	ld	(hl),a
;../_mullong.c:726: bcast(a)->i.lo  = bcast(a)->b.b0 * bcast(b)->b.b0;
	ld	hl, 2 (sp)
	ld	6 (sp), hl
	ld	hl, 2 (sp)
	ld	e,(hl)
	ld	hl, 0 (sp)
	ld	c,(hl)
	ld	d,#0x00
	ld	b,d
	mul
	ld	hl, 6 (sp)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:728: bcast(b)->bi.b0 = 0;
	ld	hl, 0 (sp)
	ld	(hl),#0x00
;../_mullong.c:730: return a + b;
	ld	a,4 (ix)
	add	a, 8 (ix)
	ld	l,a
	ld	a,5 (ix)
	adc	a, 9 (ix)
	ld	h,a
	ld	a,6 (ix)
	adc	a, 10 (ix)
	ld	e,a
	ld	a,7 (ix)
	adc	a, 11 (ix)
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
