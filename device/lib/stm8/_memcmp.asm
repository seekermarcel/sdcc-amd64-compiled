;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;	../_memcmp.c: 31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	sub	sp, #5
;	../_memcmp.c: 33: if (!count)
	ldw	x, (0x0c, sp)
	jrne	00112$
;	../_memcmp.c: 34: return(0);
	clrw	x
	jra	00107$
;	../_memcmp.c: 36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	ldw	y, (0x0c, sp)
	ldw	(0x04, sp), y
00104$:
	ldw	x, (0x04, sp)
	decw	x
	ldw	(0x04, sp), x
	ldw	x, (0x04, sp)
	jreq	00106$
	ldw	y, (0x08, sp)
	ld	a, (y)
	ldw	x, (0x0a, sp)
	push	a
	ld	a, (x)
	ld	(0x04, sp), a
	pop	a
	cp	a, (0x03, sp)
	jrne	00106$
;	../_memcmp.c: 37: buf1 = (char *)buf1 + 1;
	incw	y
	ldw	(0x08, sp), y
;	../_memcmp.c: 38: buf2 = (char *)buf2 + 1;
	incw	x
	ldw	(0x0a, sp), x
	jra	00104$
00106$:
;	../_memcmp.c: 41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	ldw	x, (0x08, sp)
	ld	a, (x)
	clrw	x
	ld	xl, a
	ldw	y, (0x0a, sp)
	ld	a, (y)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	subw	x, (0x01, sp)
00107$:
	addw	sp, #5
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
