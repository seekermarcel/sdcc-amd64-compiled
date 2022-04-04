;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:25 2022
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mz80
	
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
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;../_mullong.c:714: bcast(a)->i.hi *= bcast(b)->i.lo;
	ld	hl,#0x000A
	add	hl,sp
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ex	(sp), hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x000E
	add	hl,sp
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	hl
	push	de
	call	__mulint
	pop	af
	pop	af
	ld	d,l
	ld	e,h
	pop	bc
	pop	hl
	push	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:715: bcast(a)->i.hi += bcast(b)->i.hi * bcast(a)->i.lo;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ex	(sp), hl
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	-2 (ix),a
	inc	hl
	ld	a,(hl)
	ld	-1 (ix),a
	pop	de
	pop	hl
	push	hl
	push	de
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	bc
	push	hl
	push	de
	call	__mulint
	pop	af
	pop	af
	pop	bc
	ld	a,-2 (ix)
	add	a, l
	ld	d,a
	ld	a,-1 (ix)
	adc	a, h
	ld	e,a
	pop	hl
	push	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_mullong.c:718: bcast(a)->i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,(hl)
	ld	-6 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	ld	h,(hl)
	push	de
	push	bc
	ld	e,-6 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00103$:
	add	hl,hl
	jr	NC,00104$
	add	hl,de
00104$:
	djnz	00103$
	pop	bc
	pop	de
	add	hl,de
	ex	de,hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_mullong.c:720: i12 = bcast(b)->b.b0 * bcast(a)->b.b1;
	pop	de
	pop	hl
	push	hl
	push	de
	ld	e,(hl)
	ld	l, c
	ld	h, b
	inc	hl
	ld	h,(hl)
	push	bc
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00105$:
	add	hl,hl
	jr	NC,00106$
	add	hl,de
00106$:
	djnz	00105$
	pop	bc
	ex	de,hl
;../_mullong.c:721: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	push	hl
	pop	iy
	ld	l, c
	ld	h, b
	ld	a,(hl)
	ld	-2 (ix),a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	ld	a,(hl)
	push	de
	push	bc
	ld	e,a
	ld	h,-2 (ix)
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00107$:
	add	hl,hl
	jr	NC,00108$
	add	hl,de
00108$:
	djnz	00107$
	pop	bc
	pop	de
	ld	0 (iy),l
	ld	1 (iy),h
;../_mullong.c:724: bcast(b)->b.b3 = ((bcast(b)->bi.i12 += i12) < i12);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	push	hl
	pop	iy
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	0 (iy),l
	ld	1 (iy),h
	cp	a, a
	sbc	hl, de
	ld	a,#0x00
	rla
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
;../_mullong.c:726: bcast(a)->i.lo  = bcast(a)->b.b0 * bcast(b)->b.b0;
	ld	e, c
	ld	d, b
	ld	a,(bc)
	ld	c,a
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	h,(hl)
	push	de
	ld	e,c
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00109$:
	add	hl,hl
	jr	NC,00110$
	add	hl,de
00110$:
	djnz	00109$
	pop	de
	ld	c,l
	ld	b,h
	ld	a,c
	ld	(de),a
	inc	de
	ld	a,b
	ld	(de),a
;../_mullong.c:728: bcast(b)->bi.b0 = 0;
	pop	bc
	pop	hl
	push	hl
	push	bc
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
