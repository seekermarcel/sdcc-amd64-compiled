;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _fs2sint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2sint
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
;../_fs2sint.c:81: signed int __fs2sint (float f)
;	---------------------------------
; Function __fs2sint
; ---------------------------------
___fs2sint::
	add	sp, #-4
;../_fs2sint.c:83: signed long sl=__fs2slong(f);
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
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
;../_fs2sint.c:84: if (sl>=INT_MAX)
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0xFF
	inc	hl
	ld	a, (hl)
	sbc	a, #0x7F
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
	jr	Z,00115$
	bit	7, d
	jr	NZ,00116$
	cp	a, a
	jr	00116$
00115$:
	bit	7, d
	jr	Z,00116$
	scf
00116$:
	jr	C,00102$
;../_fs2sint.c:85: return INT_MAX;
	ld	de,#0x7FFF
	jr	00105$
00102$:
;../_fs2sint.c:86: if (sl<=INT_MIN)
	ldhl	sp,#0
	ld	a,#0x00
	sub	a, (hl)
	inc	hl
	ld	a,#0x80
	sbc	a, (hl)
	inc	hl
	ld	a,#0xFF
	sbc	a, (hl)
	inc	hl
	ld	a,#0xFF
	sbc	a, (hl)
	ld	a,#0xFF
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00117$
	bit	7, d
	jr	NZ,00118$
	cp	a, a
	jr	00118$
00117$:
	bit	7, d
	jr	Z,00118$
	scf
00118$:
	jr	C,00104$
;../_fs2sint.c:87: return -INT_MIN;
	ld	de,#0x8000
	jr	00105$
00104$:
;../_fs2sint.c:88: return sl;
	pop	de
	push	de
00105$:
	add	sp, #4
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
