;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:16 2022
;--------------------------------------------------------
	.module _strspn
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strspn
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
;	../_strspn.c: 31: size_t strspn ( const char * string, const char * control )
;	-----------------------------------------
;	 function strspn
;	-----------------------------------------
_strspn:
	sub	sp, #4
;	../_strspn.c: 36: while (ch = *string) {
	clrw	x
	ldw	(0x01, sp), x
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
00104$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	ld	xl, a
	tnz	a
	jreq	00106$
;	../_strspn.c: 37: if ( strchr(control,ch) )
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	_strchr
	addw	sp, #4
	tnzw	x
	jreq	00106$
;	../_strspn.c: 38: count++ ;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
;	../_strspn.c: 41: string++ ;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	jra	00104$
00106$:
;	../_strspn.c: 44: return count ;
	ldw	x, (0x01, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
