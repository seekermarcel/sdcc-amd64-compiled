;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module toupper
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _toupper
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
;../toupper.c:33: int toupper (int c)
;	---------------------------------
; Function toupper
; ---------------------------------
_toupper::
	add	sp, #-2
;../toupper.c:35: return (islower (c) ? c + ('A' - 'a') : c);
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;./../../include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	ldhl	sp,#1
	ld	(hl),c
	ld	a,(hl)
	sub	a, #0x61
	jr	C,00104$
	ld	a,#0x7A
	sub	a, (hl)
	jr	C,00104$
;../toupper.c:35: return (islower (c) ? c + ('A' - 'a') : c);
	ld	hl,#0xFFE0
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
