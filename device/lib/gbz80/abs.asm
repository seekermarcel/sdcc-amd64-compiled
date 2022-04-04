;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module abs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _abs
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
;../abs.c:54: int abs(int j)
;	---------------------------------
; Function abs
; ---------------------------------
_abs::
;../abs.c:56: return (j < 0) ? -j : j;
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00109$
	bit	7, d
	jr	NZ,00110$
	cp	a, a
	jr	00110$
00109$:
	bit	7, d
	jr	Z,00110$
	scf
00110$:
	jr	NC,00103$
	xor	a, a
	ldhl	sp,#2
	sub	a, (hl)
	ld	c,a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	b,a
	jr	00104$
00103$:
	pop	de
	pop	bc
	push	bc
	push	de
00104$:
	ld	e, c
	ld	d, b
	ret
	.area _CODE
	.area _CABS (ABS)
