;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:29 2022
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
;	../_memmove.c: 40: void * memmove (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
	sub	sp, #22
;	../_memmove.c: 42: void * ret = dst;
	ldw	y, (0x19, sp)
	ldw	(0x01, sp), y
;	../_memmove.c: 46: if ((uintptr_t)src < (uintptr_t)dst) {
	ldw	y, (0x1b, sp)
	ldw	x, (0x19, sp)
	ldw	(0x03, sp), x
;	../_memmove.c: 50: d = ((char *)dst)+acount-1;
	ldw	x, (0x19, sp)
	ldw	(0x09, sp), x
;	../_memmove.c: 51: s = ((char *)src)+acount-1;
	ldw	x, (0x1b, sp)
	ldw	(0x07, sp), x
;	../_memmove.c: 52: while (acount--) {
	ldw	x, (0x1d, sp)
	ldw	(0x05, sp), x
;	../_memmove.c: 46: if ((uintptr_t)src < (uintptr_t)dst) {
	ldw	x, y
	cpw	x, (0x03, sp)
	jrnc	00108$
;	../_memmove.c: 50: d = ((char *)dst)+acount-1;
	ldw	y, (0x09, sp)
	addw	y, (0x1d, sp)
	decw	y
;	../_memmove.c: 51: s = ((char *)src)+acount-1;
	ldw	x, (0x07, sp)
	addw	x, (0x1d, sp)
	decw	x
;	../_memmove.c: 52: while (acount--) {
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
	ldw	y, (0x05, sp)
00101$:
	ldw	(0x15, sp), y
	decw	y
	ldw	x, (0x15, sp)
	jreq	00109$
;	../_memmove.c: 53: *d-- = *s--;
	ldw	x, (0x0d, sp)
	ld	a, (x)
	ldw	x, (0x0d, sp)
	decw	x
	ldw	(0x0d, sp), x
	ldw	x, (0x0b, sp)
	ld	(x), a
	ldw	x, (0x0b, sp)
	decw	x
	ldw	(0x0b, sp), x
	jra	00101$
00108$:
;	../_memmove.c: 60: d = dst;
	ldw	y, (0x09, sp)
;	../_memmove.c: 61: s = src;
	ldw	x, (0x07, sp)
;	../_memmove.c: 62: while (acount--) {
	ldw	(0x13, sp), x
	ldw	(0x11, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x0f, sp), y
00104$:
	ldw	y, (0x0f, sp)
	ldw	x, (0x0f, sp)
	decw	x
	ldw	(0x0f, sp), x
	tnzw	y
	jreq	00109$
;	../_memmove.c: 63: *d++ = *s++;
	ldw	x, (0x13, sp)
	ld	a, (x)
	ldw	x, (0x13, sp)
	incw	x
	ldw	(0x13, sp), x
	ldw	x, (0x11, sp)
	ld	(x), a
	ldw	x, (0x11, sp)
	incw	x
	ldw	(0x11, sp), x
	jra	00104$
00109$:
;	../_memmove.c: 67: return(ret);
	ldw	x, (0x01, sp)
	addw	sp, #22
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
