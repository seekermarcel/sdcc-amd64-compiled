;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module floorf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../floorf.c:33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function floorf
; ---------------------------------
_floorf::
	add	sp, #-12
;../floorf.c:36: r=x;
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fs2slong
	add	sp, #4
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
;../floorf.c:38: return (r+((r>x)?-1:0));
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___slong2fs
	add	sp, #4
	push	hl
	ldhl	sp,#10
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../floorf.c:37: if (r<=0)
	ldhl	sp,#0
	ld	a,#0x00
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00116$
	bit	7, d
	jr	NZ,00117$
	cp	a, a
	jr	00117$
00116$:
	bit	7, d
	jr	Z,00117$
	scf
00117$:
	jp	C,00102$
;../floorf.c:38: return (r+((r>x)?-1:0));
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00106$
	ld	a,#0xFF
	jr	00107$
00106$:
	ld	a,#0x00
00107$:
	ldhl	sp,#4
	ld	(hl),a
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
	pop	de
	push	de
	ld	a,e
	ldhl	sp,#4
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___slong2fs
	add	sp, #4
	ld	b,l
	ld	c,h
	jr	00104$
00102$:
;../floorf.c:40: return r;
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00104$:
	add	sp, #12
	ret
	.area _CODE
	.area _CABS (ABS)
