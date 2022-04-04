;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;../_fslt.c:108: char __fslt (float a1, float a2)
;	---------------------------------
; Function __fslt
; ---------------------------------
___fslt::
	add	sp, #-16
;../_fslt.c:112: fl1.f = a1;
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
;../_fslt.c:113: fl2.f = a2;
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
;../_fslt.c:115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
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
	or	a, (hl)
	ld	d,a
	ldhl	sp,#13
	ld	a,(hl)
	ldhl	sp,#9
	or	a, (hl)
	ld	e,a
	ldhl	sp,#14
	ld	a,(hl)
	ldhl	sp,#10
	or	a, (hl)
	ld	b,a
	ldhl	sp,#15
	ld	a,(hl)
	ldhl	sp,#11
	or	a, (hl)
	ld	c,a
	ld	a,d
	or	a, a
	jr	NZ,00102$
	ld	a,e
	or	a, a
	jr	NZ,00102$
	ld	a,b
	or	a, a
	jr	NZ,00102$
	ld	a,c
;../_fslt.c:116: return (0);
	and	a,#0x7F
	jr	NZ,00102$
	ld	e,a
	jp	00110$
00102$:
;../_fslt.c:118: if (fl1.l<0 && fl2.l<0) {
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
	ldhl	sp,#8
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
	jr	Z,00134$
	bit	7, d
	jr	NZ,00135$
	cp	a, a
	jr	00135$
00134$:
	bit	7, d
	jr	Z,00135$
	scf
00135$:
	jp	NC,00106$
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
	ld	(hl),a
	ldhl	sp,#8
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
	jr	Z,00136$
	bit	7, d
	jr	NZ,00137$
	cp	a, a
	jr	00137$
00136$:
	bit	7, d
	jr	Z,00137$
	scf
00137$:
	jp	NC,00106$
;../_fslt.c:119: if (fl2.l < fl1.l)
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
	ld	(hl),a
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
	ldhl	sp,#8
	ld	d, h
	ld	e, l
	ldhl	sp,#12
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00138$
	bit	7, d
	jr	NZ,00139$
	cp	a, a
	jr	00139$
00138$:
	bit	7, d
	jr	Z,00139$
	scf
00139$:
	jr	NC,00104$
;../_fslt.c:120: return (1);
	ld	e,#0x01
	jp	00110$
00104$:
;../_fslt.c:121: return (0);
	ld	e,#0x00
	jp	00110$
00106$:
;../_fslt.c:124: if (fl1.l < fl2.l)
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
	ld	d, h
	ld	e, l
	ldhl	sp,#12
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00140$
	bit	7, d
	jr	NZ,00141$
	cp	a, a
	jr	00141$
00140$:
	bit	7, d
	jr	Z,00141$
	scf
00141$:
	jr	NC,00109$
;../_fslt.c:125: return (1);
	ld	e,#0x01
	jr	00110$
00109$:
;../_fslt.c:126: return (0);
	ld	e,#0x00
00110$:
	add	sp, #16
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
