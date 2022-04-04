;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _fs2uint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uint
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
;../_fs2uint.c:54: unsigned int __fs2uint (float f)
;	---------------------------------
; Function __fs2uint
; ---------------------------------
___fs2uint::
	add	sp, #-4
;../_fs2uint.c:56: unsigned long ul=__fs2ulong(f);
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
	call	___fs2ulong
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
;../_fs2uint.c:57: if (ul>=UINT_MAX) return UINT_MAX;
	ldhl	sp,#0
	ld	a, (hl)
	sub	a, #0xFF
	inc	hl
	ld	a, (hl)
	sbc	a, #0xFF
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	C,00102$
	ld	de,#0xFFFF
	jr	00103$
00102$:
;../_fs2uint.c:58: return ul;
	pop	de
	push	de
00103$:
	add	sp, #4
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
