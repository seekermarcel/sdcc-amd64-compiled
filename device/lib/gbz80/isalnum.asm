;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isalnum
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
	.globl _isalnum
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
;../isalnum.c:37: int isalnum (int c)
;	---------------------------------
; Function isalnum
; ---------------------------------
_isalnum::
	dec	sp
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_isalpha
	add	sp, #2
	ld	a,d
	or	a,e
	jr	NZ,00105$
	ldhl	sp,#4
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a,c
	sub	a, #0x30
	jr	C,00109$
	ld	a,#0x39
	sub	a, c
	jr	NC,00105$
00109$:
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	ld	a,#0x00
	jr	00106$
00105$:
	ld	a,#0x01
00106$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
