;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;	../_memchr.c: 31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
_memchr:
	sub	sp, #4
;	../_memchr.c: 33: unsigned char *p = (unsigned char *)s;
	ldw	y, (0x07, sp)
	ldw	(0x03, sp), y
;	../_memchr.c: 34: unsigned char *end = p + n;
	ldw	y, (0x03, sp)
	addw	y, (0x0b, sp)
	ldw	(0x01, sp), y
;	../_memchr.c: 38: return(0);
	ldw	y, (0x03, sp)
00105$:
;	../_memchr.c: 35: for(; p != end; p++)
	ldw	x, y
	cpw	x, (0x01, sp)
	jreq	00103$
;	../_memchr.c: 36: if(*p == c)
	ld	a, (y)
	clrw	x
	ld	xl, a
	cpw	x, (0x09, sp)
	jrne	00106$
;	../_memchr.c: 37: return((void *)p);
	ldw	x, (0x03, sp)
	jra	00107$
00106$:
;	../_memchr.c: 35: for(; p != end; p++)
	incw	y
	ldw	(0x03, sp), y
	jra	00105$
00103$:
;	../_memchr.c: 38: return(0);
	clrw	x
00107$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
