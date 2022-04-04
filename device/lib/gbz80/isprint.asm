;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isprint
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isprint
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
;../isprint.c:33: int isprint (int c)
;	---------------------------------
; Function isprint
; ---------------------------------
_isprint::
	dec	sp
;../isprint.c:35: return (c >= ' ' && c <= '~');
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x20
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00110$
	bit	7, d
	jr	NZ,00111$
	cp	a, a
	jr	00111$
00110$:
	bit	7, d
	jr	Z,00111$
	scf
00111$:
	jr	C,00103$
	ldhl	sp,#3
	ld	a,#0x7E
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00112$
	bit	7, d
	jr	NZ,00113$
	cp	a, a
	jr	00113$
00112$:
	bit	7, d
	jr	Z,00113$
	scf
00113$:
	jr	NC,00104$
00103$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
