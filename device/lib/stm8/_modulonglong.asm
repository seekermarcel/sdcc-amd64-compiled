;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:14 2022
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong
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
;	../_modulonglong.c: 38: _modulonglong (unsigned long long a, unsigned long long b)
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
__modulonglong:
	sub	sp, #34
;	../_modulonglong.c: 40: unsigned char count = 0;
	clr	a
	ld	xl, a
;	../_modulonglong.c: 42: while (!MSB_SET(b))
	clr	(0x01, sp)
00103$:
	ld	a, (0x2f, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00138$
	jp	00117$
00138$:
;	../_modulonglong.c: 44: b <<= 1;
	ldw	y, (0x35, sp)
	ldw	(0x21, sp), y
	ldw	y, (0x33, sp)
	ldw	(0x1f, sp), y
	ldw	y, (0x31, sp)
	ldw	(0x1d, sp), y
	ldw	y, (0x2f, sp)
	sll	(0x22, sp)
	rlc	(0x21, sp)
	rlc	(0x20, sp)
	rlc	(0x1f, sp)
	rlc	(0x1e, sp)
	rlc	(0x1d, sp)
	rlcw	y
	ldw	(0x2f, sp), y
	ldw	y, (0x21, sp)
	ldw	(0x35, sp), y
	ldw	y, (0x1f, sp)
	ldw	(0x33, sp), y
	ldw	y, (0x1d, sp)
	ldw	(0x31, sp), y
;	../_modulonglong.c: 45: if (b > a)
	ld	a, (0x2e, sp)
	cp	a, (0x36, sp)
	ld	a, (0x2d, sp)
	sbc	a, (0x35, sp)
	ld	a, (0x2c, sp)
	sbc	a, (0x34, sp)
	ld	a, (0x2b, sp)
	sbc	a, (0x33, sp)
	ld	a, (0x2a, sp)
	sbc	a, (0x32, sp)
	ld	a, (0x29, sp)
	sbc	a, (0x31, sp)
	ld	a, (0x28, sp)
	sbc	a, (0x30, sp)
	ld	a, (0x27, sp)
	sbc	a, (0x2f, sp)
	jrnc	00102$
;	../_modulonglong.c: 47: b >>=1;
	ldw	y, (0x35, sp)
	ldw	(0x10, sp), y
	ldw	y, (0x33, sp)
	ldw	(0x0e, sp), y
	ldw	y, (0x31, sp)
	ldw	(0x0c, sp), y
	ldw	y, (0x2f, sp)
	srlw	y
	rrc	(0x0c, sp)
	rrc	(0x0d, sp)
	rrc	(0x0e, sp)
	rrc	(0x0f, sp)
	rrc	(0x10, sp)
	rrc	(0x11, sp)
	ldw	(0x2f, sp), y
	ldw	y, (0x10, sp)
	ldw	(0x35, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x33, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x31, sp), y
;	../_modulonglong.c: 48: break;
	jra	00117$
00102$:
;	../_modulonglong.c: 50: count++;
	inc	(0x01, sp)
	ld	a, (0x01, sp)
	ld	xl, a
	jp	00103$
;	../_modulonglong.c: 52: do
00117$:
	exg	a, xl
	ld	(0x1a, sp), a
	exg	a, xl
00108$:
;	../_modulonglong.c: 54: if (a >= b)
	ldw	x, (0x2d, sp)
	cpw	x, (0x35, sp)
	ld	a, (0x2c, sp)
	sbc	a, (0x34, sp)
	ld	a, (0x2b, sp)
	sbc	a, (0x33, sp)
	ld	a, (0x2a, sp)
	sbc	a, (0x32, sp)
	ld	a, (0x29, sp)
	sbc	a, (0x31, sp)
	ld	a, (0x28, sp)
	sbc	a, (0x30, sp)
	ld	a, (0x27, sp)
	sbc	a, (0x2f, sp)
	jrc	00107$
;	../_modulonglong.c: 55: a -= b;
	ldw	y, (0x2d, sp)
	subw	y, (0x35, sp)
	ld	a, (0x2c, sp)
	sbc	a, (0x34, sp)
	ld	(0x17, sp), a
	ld	a, (0x2b, sp)
	sbc	a, (0x33, sp)
	push	a
	ld	a, (0x2b, sp)
	sbc	a, (0x33, sp)
	ld	xl, a
	ld	a, (0x2a, sp)
	sbc	a, (0x32, sp)
	ld	xh, a
	ld	a, (0x29, sp)
	sbc	a, (0x31, sp)
	ld	(0x14, sp), a
	ld	a, (0x28, sp)
	sbc	a, (0x30, sp)
	ld	(0x13, sp), a
	pop	a
	ldw	(0x2d, sp), y
	ld	(0x2b, sp), a
	ldw	(0x29, sp), x
	ldw	y, (0x12, sp)
	ldw	(0x27, sp), y
	ld	a, (0x17, sp)
	ld	(0x2c, sp), a
00107$:
;	../_modulonglong.c: 56: b >>= 1;
	ldw	y, (0x35, sp)
	ldw	(0x08, sp), y
	ld	a, (0x2f, sp)
	ld	(0x02, sp), a
	ldw	y, (0x33, sp)
	ldw	x, (0x31, sp)
	ld	a, (0x30, sp)
	srl	(0x02, sp)
	rrc	a
	rrcw	x
	rrcw	y
	rrc	(0x08, sp)
	rrc	(0x09, sp)
	ldw	(0x33, sp), y
	ldw	(0x31, sp), x
	ld	(0x30, sp), a
	ldw	y, (0x08, sp)
	ldw	(0x35, sp), y
	ld	a, (0x02, sp)
	ld	(0x2f, sp), a
;	../_modulonglong.c: 58: while (count--);
	ld	a, (0x1a, sp)
	dec	(0x1a, sp)
	tnz	a
	jreq	00141$
	jp	00108$
00141$:
;	../_modulonglong.c: 60: return a;
	ldw	x, (0x25, sp)
	ldw	y, (0x2d, sp)
	ldw	(#6, x), y
	ldw	y, (0x2b, sp)
	ldw	(#4, x), y
	ldw	y, (0x29, sp)
	ldw	(#2, x), y
	ldw	y, (0x27, sp)
	ldw	(x), y
	addw	sp, #34
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
