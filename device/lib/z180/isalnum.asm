;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:43 2022
;--------------------------------------------------------
	.hd64
	.module isalnum
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
	.globl _isalnum
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
;../isalnum.c:37: int isalnum (int c)
;	---------------------------------
; Function isalnum
; ---------------------------------
_isalnum::
	dec	sp
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_isalpha
	inc	sp
	inc	sp
	ld	a,h
	or	a,l
	jr	NZ,00105$
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a,l
	sub	a, #0x30
	jr	C,00109$
	ld	a,#0x39
	sub	a, l
	jr	NC,00105$
00109$:
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	ld	a,#0x00
	jr	00106$
00105$:
	ld	a,#0x01
00106$:
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
