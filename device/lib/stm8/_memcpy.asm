;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _memcpy
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;	../_memcpy.c: 36: void * memcpy (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
_memcpy:
	sub	sp, #8
;	../_memcpy.c: 38: void * ret = dst;
	ldw	y, (0x0b, sp)
	ldw	(0x01, sp), y
;	../_memcpy.c: 39: char * d = dst;
	ldw	y, (0x0b, sp)
;	../_memcpy.c: 40: const char * s = src;
	ldw	x, (0x0d, sp)
;	../_memcpy.c: 45: while (acount--) {
	ldw	(0x03, sp), x
	ldw	(0x07, sp), y
	ldw	y, (0x0f, sp)
00101$:
	ldw	(0x05, sp), y
	decw	y
	ldw	x, (0x05, sp)
	jreq	00103$
;	../_memcpy.c: 46: *d++ = *s++;
	ldw	x, (0x03, sp)
	ld	a, (x)
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	x, (0x07, sp)
	ld	(x), a
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
	jra	00101$
00103$:
;	../_memcpy.c: 49: return(ret);
	ldw	x, (0x01, sp)
	addw	sp, #8
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
