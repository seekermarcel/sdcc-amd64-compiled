;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:15 2022
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;	../_strcmp.c: 34: int strcmp ( const char * asrc, const char * adst )
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
	sub	sp, #11
;	../_strcmp.c: 40: const char * src = asrc;
	ldw	y, (0x0e, sp)
	ldw	(0x03, sp), y
;	../_strcmp.c: 41: const char * dst = adst;
	ldw	y, (0x10, sp)
	ldw	(0x01, sp), y
;	../_strcmp.c: 43: while( ! (*src - *dst) && *dst)
00102$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ldw	y, (0x01, sp)
	ld	a, (y)
	ld	(0x05, sp), a
	ld	a, (0x05, sp)
	ld	(0x0b, sp), a
	ld	a, (0x0b, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0a, sp), a
	subw	x, (0x0a, sp)
	ldw	(0x08, sp), x
	ldw	x, (0x08, sp)
	jrne	00104$
	tnz	(0x05, sp)
	jreq	00104$
;	../_strcmp.c: 44: ++src, ++dst;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x06, sp), x
	ldw	y, (0x06, sp)
	ldw	(0x03, sp), y
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	jra	00102$
00104$:
;	../_strcmp.c: 46: return *src - *dst;
	ldw	x, (0x08, sp)
	addw	sp, #11
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
