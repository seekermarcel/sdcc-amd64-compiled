;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module _fsneq
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsneq
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
;../_fsneq.c:80: char __fsneq (float a1, float a2)
;	---------------------------------
; Function __fsneq
; ---------------------------------
___fsneq::
	add	sp, #-16
;../_fsneq.c:84: fl1.f = a1;
	ldhl	sp,#4
	ld	e,l
	ld	d,h
	ldhl	sp,#18
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
;../_fsneq.c:85: fl2.f = a2;
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	ldhl	sp,#22
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
;../_fsneq.c:87: if (fl1.l == fl2.l)
	ldhl	sp,#4
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#12
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
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#8
	sub	a, (hl)
	jr	NZ,00102$
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#9
	sub	a, (hl)
	jr	NZ,00102$
	ldhl	sp,#14
	ld	a,(hl)
	ldhl	sp,#10
	sub	a, (hl)
	jr	NZ,00102$
	ldhl	sp,#15
	ld	a,(hl)
	ldhl	sp,#11
;../_fsneq.c:88: return (0);
	sub	a,(hl)
	jr	NZ,00102$
	ld	e,a
	jp	00105$
00102$:
;../_fsneq.c:89: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
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
	ld	(hl),a
	ldhl	sp,#0
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#12
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
	ld	a,(hl)
	ldhl	sp,#12
	or	a, (hl)
	ld	d,a
	ldhl	sp,#9
	ld	a,(hl)
	ldhl	sp,#13
	or	a, (hl)
	ld	e,a
	ldhl	sp,#10
	ld	a,(hl)
	ldhl	sp,#14
	or	a, (hl)
	ld	b,a
	ldhl	sp,#11
	ld	a,(hl)
	ldhl	sp,#15
	or	a, (hl)
	ld	c,a
	ld	a,d
	or	a, a
	jr	NZ,00104$
	ld	a,e
	or	a, a
	jr	NZ,00104$
	ld	a,b
	or	a, a
	jr	NZ,00104$
	ld	a,c
;../_fsneq.c:90: return (0);
	and	a,#0x7F
	jr	NZ,00104$
	ld	e,a
	jr	00105$
00104$:
;../_fsneq.c:91: return (1);
	ld	e,#0x01
00105$:
	add	sp, #16
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
