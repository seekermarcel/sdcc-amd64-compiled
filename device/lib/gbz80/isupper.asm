;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isupper
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isupper
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
;./../../include/ctype.h:78: inline int isupper (int c)
;	---------------------------------
; Function isupper
; ---------------------------------
_isupper::
	dec	sp
;./../../include/ctype.h:80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ldhl	sp,#3
	ld	b,(hl)
	ld	a,b
	sub	a, #0x41
	jr	C,00103$
	ld	a,#0x5A
	sub	a, b
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
