;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _fs2schar
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2slong
	.globl ___fs2schar
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
;../_fs2schar.c:87: signed char __fs2schar (float f)
;	---------------------------------
; Function __fs2schar
; ---------------------------------
___fs2schar::
	add	sp, #-4
;../_fs2schar.c:89: signed long sl=__fs2slong(f);
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
;../_fs2schar.c:90: if (sl>=SCHAR_MAX)
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0x7F
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
;../_fs2schar.c:91: return SCHAR_MAX;
	ld	e,#0x7F
	jr	00105$
00102$:
;../_fs2schar.c:92: if (sl<=SCHAR_MIN)
	ldhl	sp,#0
	ld	a,#0x80
	sub	a, (hl)
	inc	hl
	ld	a,#0xFF
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
;../_fs2schar.c:93: return -SCHAR_MIN;
	ld	e,#0x80
	jr	00105$
00104$:
;../_fs2schar.c:94: return sl;
	ldhl	sp,#0
	ld	e,(hl)
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
