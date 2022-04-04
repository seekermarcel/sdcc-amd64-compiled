;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:12 2022
;--------------------------------------------------------
	.module _rlslonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlslonglong
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
;	../_rlslonglong.c: 35: long long _rlslonglong(long long l, signed char s)
;	-----------------------------------------
;	 function _rlslonglong
;	-----------------------------------------
__rlslonglong:
	sub	sp, #16
;	../_rlslonglong.c: 37: return((unsigned long long)(l) << s);
	ldw	y, (0x17, sp)
	ldw	(0x03, sp), y
	ld	a, (0x15, sp)
	ld	(0x01, sp), a
	ldw	x, (0x1b, sp)
	ldw	y, (0x19, sp)
	ld	a, (0x16, sp)
	ldw	(0x0f, sp), x
	ld	(0x0a, sp), a
	ld	a, (0x01, sp)
	ld	(0x09, sp), a
	ldw	x, (0x03, sp)
	ld	a, (0x1d, sp)
	jreq	00104$
00103$:
	sll	(0x10, sp)
	rlc	(0x0f, sp)
	rlcw	y
	rlcw	x
	rlc	(0x0a, sp)
	rlc	(0x09, sp)
	dec	a
	jrne	00103$
00104$:
	pushw	x
	ldw	x, (0x15, sp)
	ld	a, (0x12, sp)
	ld	(#7, x), a
	ld	a, (0x11, sp)
	ld	(#6, x), a
	ldw	(#4, x), y
	ld	a, (#2, sp)
	ld	(#3, x), a
	ld	a, (#1, sp)
	ld	(#2, x), a
	ldw	y, (0x0b, sp)
	ldw	(x), y
	addw	sp, #18
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
