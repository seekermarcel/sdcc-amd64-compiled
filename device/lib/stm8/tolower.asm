;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:14 2022
;--------------------------------------------------------
	.module tolower
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tolower
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../tolower.c: 33: int tolower (int c)
;	-----------------------------------------
;	 function tolower
;	-----------------------------------------
_tolower:
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
	ldw	x, (0x03, sp)
;	./../../include/ctype.h: 80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ld	a, xl
	cp	a, #0x41
	jrc	00104$
	cp	a, #0x5a
	jrugt	00104$
;	../tolower.c: 35: return (isupper (c) ? c + ('a' - 'A') : c);
	addw	x, #0x0020
00104$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
