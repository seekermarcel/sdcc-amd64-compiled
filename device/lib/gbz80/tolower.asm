;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module tolower
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tolower
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
;../tolower.c:33: int tolower (int c)
;	---------------------------------
; Function tolower
; ---------------------------------
_tolower::
	add	sp, #-2
;../tolower.c:35: return (isupper (c) ? c + ('a' - 'A') : c);
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;./../../include/ctype.h:80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ldhl	sp,#1
	ld	(hl),c
	ld	a,(hl)
	sub	a, #0x41
	jr	C,00104$
	ld	a,#0x5A
	sub	a, (hl)
	jr	C,00104$
;../tolower.c:35: return (isupper (c) ? c + ('a' - 'A') : c);
	ld	hl,#0x0020
	add	hl,bc
	ld	c,l
	ld	b,h
00104$:
	ld	e, c
	ld	d, b
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
