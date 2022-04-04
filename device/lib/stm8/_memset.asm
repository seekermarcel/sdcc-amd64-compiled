;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _memset
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;	../_memset.c: 41: void *memset (void *s, int c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
_memset:
	sub	sp, #4
;	../_memset.c: 44: register unsigned char *ret = s;
	ldw	x, (0x07, sp)
;	../_memset.c: 46: while (n--)
	ldw	y, (0x0b, sp)
	ldw	(0x03, sp), y
00101$:
	ldw	y, (0x03, sp)
	ldw	(0x01, sp), y
	ldw	y, (0x03, sp)
	decw	y
	ldw	(0x03, sp), y
	ldw	y, (0x01, sp)
	jreq	00103$
;	../_memset.c: 48: *(unsigned char *) ret = c;
	ld	a, (0x0a, sp)
	ld	(x), a
;	../_memset.c: 49: ret = ((unsigned char *) ret) + 1;
	incw	x
	jra	00101$
00103$:
;	../_memset.c: 52: return s;
	ldw	x, (0x07, sp)
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
