;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _modslong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong
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
;../_modslong.c:259: _modslong (long a, long b)
;	---------------------------------
; Function _modslong
; ---------------------------------
__modslong::
	add	sp, #-13
;../_modslong.c:263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	ldhl	sp,#15
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
	ldhl	sp,#12
	ld	(hl),a
	ld	a,(hl)
	or	a, a
	jr	Z,00106$
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#15
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	ldhl	sp,#19
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	jr	00107$
00106$:
	ldhl	sp,#15
	ld	d,h
	ld	e,l
	ldhl	sp,#8
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
	ldhl	sp,#19
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
	jr	NC,00108$
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#19
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
	ldhl	sp,#23
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
	ldhl	sp,#19
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
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#0
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_modslong.c:265: if (a < 0)
	ldhl	sp,#12
	ld	a,(hl)
	or	a, a
	jp	Z,00102$
;../_modslong.c:266: return -r;
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
;../_modslong.c:268: return r;
	pop	de
	push	de
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00104$:
	add	sp, #13
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
