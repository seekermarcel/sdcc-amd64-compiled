;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:35 2022
;--------------------------------------------------------
	.module tolower
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tolower
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
;../tolower.c:33: int tolower (int c)
;	---------------------------------
; Function tolower
; ---------------------------------
_tolower::
	dec	sp
;../tolower.c:35: return (isupper (c) ? c + ('a' - 'A') : c);
	ld	hl, 3 (sp)
;./../../include/ctype.h:80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ld	d,l
	ld	a,d
	sub	a, #0x41
	jr	C,00104$
	ld	a,#0x5A
	sub	a, d
	jr	C,00104$
;../tolower.c:35: return (isupper (c) ? c + ('a' - 'A') : c);
	ld	bc,#0x0020
	add	hl,bc
00104$:
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
