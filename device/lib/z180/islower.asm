;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:43 2022
;--------------------------------------------------------
	.hd64
	.module islower
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _islower
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
;./../../include/ctype.h:69: inline int islower (int c)
;	---------------------------------
; Function islower
; ---------------------------------
_islower::
	dec	sp
;./../../include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	ld	iy,#3
	add	iy,sp
	ld	h,0 (iy)
	ld	a,h
	sub	a, #0x61
	jr	C,00103$
	ld	a,#0x7A
	sub	a, h
	jr	NC,00104$
00103$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
