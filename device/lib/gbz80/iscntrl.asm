;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module iscntrl
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _iscntrl
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
;../iscntrl.c:33: int iscntrl (int c)
;	---------------------------------
; Function iscntrl
; ---------------------------------
_iscntrl::
;../iscntrl.c:35: return (c < ' ' || c == 0x7f);
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x20
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00114$
	bit	7, d
	jr	NZ,00115$
	cp	a, a
	jr	00115$
00114$:
	bit	7, d
	jr	Z,00115$
	scf
00115$:
	jr	C,00104$
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x7F
	jr	NZ,00116$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
00116$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ret
	.area _CODE
	.area _CABS (ABS)
