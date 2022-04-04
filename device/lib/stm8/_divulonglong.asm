;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:13 2022
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong
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
;	../_divulonglong.c: 39: _divulonglong (unsigned long long x, unsigned long long y)
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
__divulonglong:
	sub	sp, #50
;	../_divulonglong.c: 41: unsigned long long reste = 0L;
	clrw	x
	ldw	(0x09, sp), x
	ldw	(0x07, sp), x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
;	../_divulonglong.c: 42: unsigned char count = 64;
	ld	a, #0x40
	ld	(0x02, sp), a
;	../_divulonglong.c: 45: do
00105$:
;	../_divulonglong.c: 48: c = MSB_SET(x);
	ld	a, (0x37, sp)
	sll	a
	clr	a
	rlc	a
	ld	(0x01, sp), a
;	../_divulonglong.c: 49: x <<= 1;
	ldw	y, (0x3d, sp)
	ldw	(0x31, sp), y
	ld	a, (0x37, sp)
	ld	(0x2b, sp), a
	ldw	y, (0x3b, sp)
	ldw	x, (0x39, sp)
	ld	a, (0x38, sp)
	sll	(0x32, sp)
	rlc	(0x31, sp)
	rlcw	y
	rlcw	x
	rlc	a
	rlc	(0x2b, sp)
	ldw	(0x3b, sp), y
	ldw	(0x39, sp), x
	ld	(0x38, sp), a
	ldw	y, (0x31, sp)
	ldw	(0x3d, sp), y
	ld	a, (0x2b, sp)
	ld	(0x37, sp), a
;	../_divulonglong.c: 50: reste <<= 1;
	ldw	y, (0x09, sp)
	ldw	(0x19, sp), y
	ld	a, (0x07, sp)
	ldw	y, (0x05, sp)
	ldw	x, (0x03, sp)
	push	a
	ld	a, (0x09, sp)
	ld	(0x19, sp), a
	pop	a
	sll	(0x1a, sp)
	rlc	(0x19, sp)
	rlc	(0x18, sp)
	rlc	a
	rlcw	y
	rlcw	x
	ld	(0x07, sp), a
	ldw	(0x05, sp), y
	ldw	(0x03, sp), x
	ldw	y, (0x19, sp)
	ldw	(0x09, sp), y
	ld	a, (0x18, sp)
	ld	(0x08, sp), a
;	../_divulonglong.c: 51: if (c)
	tnz	(0x01, sp)
	jreq	00102$
;	../_divulonglong.c: 52: reste |= 1L;
	ld	a, (0x0a, sp)
	or	a, #0x01
	ld	(0x22, sp), a
	ld	a, (0x09, sp)
	ld	(0x21, sp), a
	ld	a, (0x08, sp)
	ld	(0x20, sp), a
	ld	a, (0x07, sp)
	push	a
	ld	a, (0x07, sp)
	ld	yl, a
	ld	a, (0x06, sp)
	ld	yh, a
	ld	a, (0x05, sp)
	ld	xl, a
	ld	a, (0x04, sp)
	ld	xh, a
	pop	a
	ld	(0x07, sp), a
	ldw	(0x05, sp), y
	ldw	(0x03, sp), x
	ldw	y, (0x21, sp)
	ldw	(0x09, sp), y
	ld	a, (0x20, sp)
	ld	(0x08, sp), a
00102$:
;	../_divulonglong.c: 54: if (reste >= y)
	ldw	x, (0x09, sp)
	cpw	x, (0x45, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x44, sp)
	ld	a, (0x07, sp)
	sbc	a, (0x43, sp)
	ld	a, (0x06, sp)
	sbc	a, (0x42, sp)
	ld	a, (0x05, sp)
	sbc	a, (0x41, sp)
	ld	a, (0x04, sp)
	sbc	a, (0x40, sp)
	ld	a, (0x03, sp)
	sbc	a, (0x3f, sp)
	jrc	00106$
;	../_divulonglong.c: 56: reste -= y;
	ldw	y, (0x09, sp)
	subw	y, (0x45, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x44, sp)
	ld	(0x28, sp), a
	ld	a, (0x07, sp)
	sbc	a, (0x43, sp)
	push	a
	ld	a, (0x07, sp)
	sbc	a, (0x43, sp)
	ld	xl, a
	ld	a, (0x06, sp)
	sbc	a, (0x42, sp)
	ld	xh, a
	ld	a, (0x05, sp)
	sbc	a, (0x41, sp)
	ld	(0x25, sp), a
	ld	a, (0x04, sp)
	sbc	a, (0x40, sp)
	ld	(0x24, sp), a
	pop	a
	ldw	(0x09, sp), y
	ld	(0x07, sp), a
	ldw	(0x05, sp), x
	ldw	y, (0x23, sp)
	ldw	(0x03, sp), y
	ld	a, (0x28, sp)
	ld	(0x08, sp), a
;	../_divulonglong.c: 58: x |= 1L;
	ldw	x, (0x3d, sp)
	srlw	x
	scf
	rlcw	x
	ld	a, (0x3c, sp)
	ld	(0x10, sp), a
	ld	a, (0x3b, sp)
	ld	(0x0f, sp), a
	ld	a, (0x3a, sp)
	ld	(0x0e, sp), a
	ld	a, (0x39, sp)
	push	a
	ld	a, (0x39, sp)
	ld	yl, a
	ld	a, (0x38, sp)
	ld	yh, a
	pop	a
	ldw	(0x3d, sp), x
	ld	(0x39, sp), a
	ldw	(0x37, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x3b, sp), y
	ld	a, (0x0e, sp)
	ld	(0x3a, sp), a
00106$:
;	../_divulonglong.c: 61: while (--count);
	ld	a, (0x02, sp)
	dec	a
	ld	(0x02, sp), a
	tnz	a
	jreq	00128$
	jp	00105$
00128$:
;	../_divulonglong.c: 62: return x;
	ldw	x, (0x35, sp)
	ldw	y, (0x3d, sp)
	ldw	(#6, x), y
	ldw	y, (0x3b, sp)
	ldw	(#4, x), y
	ldw	y, (0x39, sp)
	ldw	(#2, x), y
	ldw	y, (0x37, sp)
	ldw	(x), y
	addw	sp, #50
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
