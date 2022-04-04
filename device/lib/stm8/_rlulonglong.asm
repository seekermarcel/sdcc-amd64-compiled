;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:12 2022
;--------------------------------------------------------
	.module _rlulonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __rlulonglong
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
;	../_rlulonglong.c: 35: unsigned long long _rlulonglong(unsigned long long l, signed char s)
;	-----------------------------------------
;	 function _rlulonglong
;	-----------------------------------------
__rlulonglong:
	sub	sp, #27
;	../_rlulonglong.c: 37: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
	ldw	x, sp
	addw	x, #30
	ldw	(0x11, sp), x
	ldw	x, (0x11, sp)
	addw	x, #0x0004
	ldw	(0x07, sp), x
;	../_rlulonglong.c: 38: uint16_t *const middle = (uint16_t *)((char *)(&l) + 2);
	ldw	x, (0x11, sp)
	incw	x
	incw	x
	ldw	(0x05, sp), x
;	../_rlulonglong.c: 39: uint32_t *const bottom = (uint32_t *)(&l);
	ldw	y, (0x11, sp)
	ldw	(0x03, sp), y
;	../_rlulonglong.c: 40: uint16_t *const b = (uint16_t *)(&l);
	ldw	y, (0x11, sp)
	ldw	(0x01, sp), y
;	../_rlulonglong.c: 50: (*top) <<= s;
	ld	a, (0x28, sp)
	ld	(0x1b, sp), a
00103$:
;	../_rlulonglong.c: 42: for(;s >= 16; s-= 16)
	ld	a, (0x1b, sp)
	cp	a, #0x10
	jrslt	00101$
;	../_rlulonglong.c: 44: b[3] = b[2];
	ldw	y, (0x01, sp)
	addw	y, #0x0006
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	ldw	(0x0f, sp), x
	ldw	x, (0x0f, sp)
	ldw	x, (x)
	ldw	(y), x
;	../_rlulonglong.c: 45: b[2] = b[1];
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	ldw	(0x09, sp), x
	ldw	x, (0x09, sp)
	ldw	x, (x)
	ldw	y, (0x0f, sp)
	ldw	(y), x
;	../_rlulonglong.c: 46: b[1] = b[0];
	ldw	x, (0x01, sp)
	ldw	x, (x)
	ldw	y, (0x09, sp)
	ldw	(y), x
;	../_rlulonglong.c: 47: b[0] = 0;
	ldw	x, (0x01, sp)
	clr	(0x1, x)
	clr	(x)
;	../_rlulonglong.c: 42: for(;s >= 16; s-= 16)
	ld	a, (0x1b, sp)
	sub	a, #0x10
	ld	(0x1b, sp), a
	jra	00103$
00101$:
;	../_rlulonglong.c: 50: (*top) <<= s;
	ldw	x, (0x07, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, (0x1b, sp)
	jreq	00118$
00117$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00117$
00118$:
	ldw	(0x19, sp), y
	ldw	(0x17, sp), x
	ldw	x, (0x07, sp)
	ldw	y, (0x19, sp)
	ldw	(0x2, x), y
	ldw	y, (0x17, sp)
	ldw	(x), y
;	../_rlulonglong.c: 51: (*top) |= (((uint32_t)((*middle) & 0xffffu) << s) >> 16);
	ldw	x, (0x05, sp)
	ldw	x, (x)
	clrw	y
	ld	a, yl
	push	a
	ld	a, (0x1c, sp)
	jreq	00120$
00119$:
	sllw	x
	rlc	(1, sp)
	rlwa	y
	rlc	a
	rrwa	y
	dec	a
	jrne	00119$
00120$:
	pop	a
	clrw	x
	or	a, (0x1a, sp)
	rlwa	y
	or	a, (0x19, sp)
	ld	yh, a
	ld	a, xl
	or	a, (0x18, sp)
	ld	(0x0c, sp), a
	ld	a, xh
	or	a, (0x17, sp)
	ld	(0x0b, sp), a
	ldw	x, (0x07, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0b, sp)
	ldw	(x), y
;	../_rlulonglong.c: 52: (*bottom) <<= s;
	ldw	x, (0x03, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, (0x1b, sp)
	jreq	00122$
00121$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00121$
00122$:
	ldw	(0x13, sp), x
	ldw	x, (0x03, sp)
	ldw	(0x2, x), y
	ldw	y, (0x13, sp)
	ldw	(x), y
;	../_rlulonglong.c: 54: return(l);
	ldw	x, (0x1e, sp)
	ldw	y, (0x26, sp)
	ldw	(#6, x), y
	ldw	y, (0x24, sp)
	ldw	(#4, x), y
	ldw	y, (0x22, sp)
	ldw	(#2, x), y
	ldw	y, (0x20, sp)
	ldw	(x), y
	addw	sp, #27
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
