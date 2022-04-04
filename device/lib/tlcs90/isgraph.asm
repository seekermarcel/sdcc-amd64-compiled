;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:35 2022
;--------------------------------------------------------
	.module isgraph
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isgraph
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
;../isgraph.c:33: int isgraph (int c)
;	---------------------------------
; Function isgraph
; ---------------------------------
_isgraph::
	dec	sp
;../isgraph.c:35: return (c > ' ' && c <= '~');
	ld	a,#0x20
	ld	iy,#3
	add	iy,sp
	cp	a, 0 (iy)
	ld	a,#0x00
	sbc	a, 1 (iy)
	jp	PO, 00110$
	xor	a, #0x80
00110$:
	jp	P,00103$
	ld	a,#0x7E
	ld	iy,#3
	add	iy,sp
	cp	a, 0 (iy)
	ld	a,#0x00
	sbc	a, 1 (iy)
	jp	PO, 00111$
	xor	a, #0x80
00111$:
	jp	P,00104$
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
