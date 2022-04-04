;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module ldexpf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;../ldexpf.c:34: float ldexpf(float x, int pw2)
;	---------------------------------
; Function ldexpf
; ---------------------------------
_ldexpf::
	add	sp, #-14
;../ldexpf.c:39: fl.f = x;
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	ldhl	sp,#16
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	ldhl	sp,#0
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#4
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
	push	af
	ldhl	sp,#6
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	pop	af
	ld	a,#0x17
00103$:
	sra	c
	rr	b
	rr	e
	rr	d
	dec	a
	jr	NZ,00103$
	ldhl	sp,#4
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../ldexpf.c:42: e+=pw2;
	ldhl	sp,#20
	ld	a,(hl)
	ldhl	sp,#8
	ld	(hl),a
	ldhl	sp,#21
	ld	a,(hl)
	ldhl	sp,#9
	ld	(hl),a
	ldhl	sp,#21
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),a
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#8
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
	ldhl	sp,#12
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	ld	e,#0x00
	ld	bc,#0x0000
	push	af
	ldhl	sp,#10
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	pop	af
	ld	a,#0x17
00105$:
	ldhl	sp,#8
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ,00105$
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#4
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
	ldhl	sp,#4
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ldhl	sp,#4
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,c
	and	a, #0x7F
	inc	hl
	ld	(hl),a
	ld	a,b
	and	a, #0x80
	inc	hl
	ld	(hl+),a
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,d
	ldhl	sp,#4
	or	a, (hl)
	ldhl	sp,#8
	ld	(hl),a
	ld	a,e
	ldhl	sp,#5
	or	a, (hl)
	ldhl	sp,#9
	ld	(hl),a
	ld	a,b
	ldhl	sp,#6
	or	a, (hl)
	ldhl	sp,#10
	ld	(hl),a
	ld	a,c
	ldhl	sp,#7
	or	a, (hl)
	ldhl	sp,#11
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../ldexpf.c:45: return(fl.f);
	ldhl	sp,#0
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#8
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #14
	ret
	.area _CODE
	.area _CABS (ABS)
