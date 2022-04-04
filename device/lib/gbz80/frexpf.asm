;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module frexpf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;../frexpf.c:34: float frexpf(float x, int *pw2)
;	---------------------------------
; Function frexpf
; ---------------------------------
_frexpf::
	add	sp, #-14
;../frexpf.c:39: fl.f=x;
	ldhl	sp,#4
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
;../frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	ldhl	sp,#4
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
	ld	(hl),a
	push	af
	ldhl	sp,#10
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
	ldhl	sp,#8
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../frexpf.c:42: i -= 0x7e;
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, #0x7E
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	push	af
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	sbc	a, #0x00
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
;../frexpf.c:43: *pw2 = i;
	ldhl	sp,#21
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,b
	ld	(de),a
	inc	de
	ld	a,c
	ld	(de),a
;../frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
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
	ld	(hl),a
	ldhl	sp,#8
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ldhl	sp,#8
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	and	a, #0x7F
	inc	hl
	ld	(hl),a
	ld	a,c
	and	a, #0x80
	inc	hl
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
;../frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
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
	ld	(hl),a
	ld	a,(hl)
	or	a, #0x3F
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
;../frexpf.c:46: return(fl.f);
	ldhl	sp,#4
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
