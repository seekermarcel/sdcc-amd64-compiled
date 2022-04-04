;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;../_fs2ulong.c:103: __fs2ulong (float a1)
;	---------------------------------
; Function __fs2ulong
; ---------------------------------
___fs2ulong::
	add	sp, #-14
;../_fs2ulong.c:109: fl1.f = a1;
	ldhl	sp,#6
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
;../_fs2ulong.c:111: if (!fl1.l || SIGN(fl1.l))
	ldhl	sp,#6
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#10
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
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	Z,00101$
	ldhl	sp,#6
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#10
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
	ldhl	sp,#10
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,c
	rlc	a
	and	a,#0x01
	jr	Z,00102$
00101$:
;../_fs2ulong.c:112: return (0);
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00104$
00102$:
;../_fs2ulong.c:114: exp = EXP (fl1.l) - EXCESS - 24;
	ldhl	sp,#6
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#10
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
	ldhl	sp,#10
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00110$:
	srl	b
	rr	c
	rr	e
	rr	d
	dec	a
	jr	NZ,00110$
	ldhl	sp,#10
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, #0x96
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#15
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
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),e
;../_fs2ulong.c:115: l = MANT (fl1.l);
	ldhl	sp,#6
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#10
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
	ldhl	sp,#10
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	res	7, b
	ld	c,#0x00
	ldhl	sp,#0
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl+),a
	ld	(hl),c
;../_fs2ulong.c:117: l >>= -exp;
	xor	a, a
	inc	hl
	sub	a, (hl)
	ld	b,a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	c,a
	push	af
	pop	af
	inc	b
	jr	00113$
00112$:
	ldhl	sp,#3
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
00113$:
	dec	b
	jr	NZ,00112$
;../_fs2ulong.c:119: return l;
	pop	de
	push	de
	inc	hl
	inc	hl
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
