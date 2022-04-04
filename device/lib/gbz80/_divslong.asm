;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _divslong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;../_divslong.c:259: _divslong (long x, long y)
;	---------------------------------
; Function _divslong
; ---------------------------------
__divslong::
	add	sp, #-14
;../_divslong.c:263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	ldhl	sp,#16
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00122$
	bit	7, d
	jr	NZ,00123$
	cp	a, a
	jr	00123$
00122$:
	bit	7, d
	jr	Z,00123$
	scf
00123$:
	ld	a,#0x00
	rla
	ldhl	sp,#13
	ld	(hl),a
	ld	a,(hl)
	or	a, a
	jr	Z,00106$
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#16
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#12
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	ldhl	sp,#20
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#12
	ld	(hl-),a
	ld	(hl),e
	jr	00107$
00106$:
	ldhl	sp,#16
	ld	d,h
	ld	e,l
	ldhl	sp,#9
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
00107$:
	ldhl	sp,#20
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00124$
	bit	7, d
	jr	NZ,00125$
	cp	a, a
	jr	00125$
00124$:
	bit	7, d
	jr	Z,00125$
	scf
00125$:
	ld	a,#0x00
	rla
	ldhl	sp,#8
	ld	(hl),a
	ld	a,(hl)
	or	a, a
	jr	Z,00108$
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#20
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#7
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	ldhl	sp,#24
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#7
	ld	(hl-),a
	ld	(hl),e
	jr	00109$
00108$:
	ldhl	sp,#20
	ld	d,h
	ld	e,l
	ldhl	sp,#4
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
00109$:
	ldhl	sp,#4
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	push	bc
	push	de
	ldhl	sp,#15
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#15
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divulong
	add	sp, #8
	ld	c,l
	ld	b,h
	ldhl	sp,#0
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_divslong.c:264: if ((x < 0) ^ (y < 0))
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#8
	xor	a,(hl)
	jp	Z,00102$
;../_divslong.c:265: return -r;
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#0
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#7
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	dec	hl
	dec	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#7
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
	jr	00104$
00102$:
;../_divslong.c:267: return r;
	pop	de
	push	de
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00104$:
	add	sp, #14
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
