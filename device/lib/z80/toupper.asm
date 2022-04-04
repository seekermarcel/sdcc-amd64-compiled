;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:26 2022
;--------------------------------------------------------
	.module toupper
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _toupper
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
;../toupper.c:33: int toupper (int c)
;	---------------------------------
; Function toupper
; ---------------------------------
_toupper::
	dec	sp
;../toupper.c:35: return (islower (c) ? c + ('A' - 'a') : c);
	ld	hl, #3
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
;./../../include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	ld	d,l
	ld	a,d
	sub	a, #0x61
	jr	C,00104$
	ld	a,#0x7A
	sub	a, d
	jr	C,00104$
;../toupper.c:35: return (islower (c) ? c + ('A' - 'a') : c);
	ld	bc,#0xFFE0
	add	hl,bc
00104$:
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
