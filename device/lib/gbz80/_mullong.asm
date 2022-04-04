;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _mullong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	add	sp, #-16
;../_mullong.c:714: bcast(a)->i.hi *= bcast(b)->i.lo;
	ldhl	sp,#18
	ld	a,l
	ld	d,h
	ldhl	sp,#14
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ldhl	sp,#12
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#10
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#22
	ld	a,l
	ld	d,h
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	e, b
	ld	d, c
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	push	bc
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mulint
	add	sp, #4
	ld	b,e
	ld	c,d
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_mullong.c:715: bcast(a)->i.hi += bcast(b)->i.hi * bcast(a)->i.lo;
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ldhl	sp,#10
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#12
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#6
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#14
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	e, b
	ld	d, c
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	push	bc
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mulint
	add	sp, #4
	ld	c,e
	ld	b,d
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:718: bcast(a)->i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ldhl	sp,#6
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#10
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	ldhl	sp,#12
	ld	(hl),a
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	push	af
	inc	sp
	ldhl	sp,#13
	ld	a,(hl)
	push	af
	inc	sp
	call	__muluchar
	add	sp, #2
	ld	c, e
	ld	b, d
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_mullong.c:720: i12 = bcast(b)->b.b0 * bcast(a)->b.b1;
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#6
	ld	(hl),a
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	push	af
	inc	sp
	ldhl	sp,#7
	ld	a,(hl)
	push	af
	inc	sp
	call	__muluchar
	add	sp, #2
	inc	sp
	inc	sp
	push	de
;../_mullong.c:721: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1;
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ldhl	sp,#6
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#10
	ld	(hl-),a
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	a,(bc)
	push	af
	inc	sp
	inc	hl
	ld	a,(hl)
	push	af
	inc	sp
	call	__muluchar
	add	sp, #2
	ld	b,e
	ld	c,d
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_mullong.c:724: bcast(b)->b.b3 = ((bcast(b)->bi.i12 += i12) < i12);
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	inc	bc
	ldhl	sp,#6
	ld	(hl),c
	inc	hl
	ld	(hl),b
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	hl
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	pop	hl
	push	hl
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#0
	ld	a,c
	sub	a, (hl)
	inc	hl
	ld	a,b
	sbc	a, (hl)
	ld	a,#0x00
	rla
	ld	b,a
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
;../_mullong.c:726: bcast(a)->i.lo  = bcast(a)->b.b0 * bcast(b)->b.b0;
	ldhl	sp,#14
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ldhl	sp,#6
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	d,a
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	push	af
	inc	sp
	push	de
	inc	sp
	call	__muluchar
	add	sp, #2
	ld	b,e
	ld	c,d
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_mullong.c:728: bcast(b)->bi.b0 = 0;
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	ld	(de),a
;../_mullong.c:730: return a + b;
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#22
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#5
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#23
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#26
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#5
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #16
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
