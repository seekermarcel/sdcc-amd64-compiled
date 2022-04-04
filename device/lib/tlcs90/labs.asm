;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:35 2022
;--------------------------------------------------------
	.module labs
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _labs
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
;../labs.c:63: long int labs(long int j)
;	---------------------------------
; Function labs
; ---------------------------------
_labs::
;../labs.c:65: return (j < 0) ? -j : j;
	ld	iy,#2
	add	iy,sp
	bit	7,3 (iy)
	jr	Z,00103$
	xor	a, a
	sub	a, 0 (iy)
	ld	l,a
	ld	a, #0x00
	sbc	a, 1 (iy)
	ld	h,a
	ld	a, #0x00
	sbc	a, 2 (iy)
	ld	e,a
	ld	a, #0x00
	sbc	a, 3 (iy)
	ld	d,a
	ret
00103$:
	ld	iy,#2
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	e,2 (iy)
	ld	d,3 (iy)
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
