;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:14 2022
;--------------------------------------------------------
	.module isalnum
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
	.globl _isalnum
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
;	../isalnum.c: 37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
_isalnum:
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	ldw	x, (0x03, sp)
	pushw	x
	call	_isalpha
	addw	sp, #2
	tnzw	x
	jrne	00105$
	ldw	x, (0x03, sp)
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a, xl
	cp	a, #0x30
	jrc	00109$
	cp	a, #0x39
	jrule	00105$
00109$:
;	../isalnum.c: 39: return (isalpha (c) || isdigit (c));
	clr	a
	jra	00106$
00105$:
	ld	a, #0x01
00106$:
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
