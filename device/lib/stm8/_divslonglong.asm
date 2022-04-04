;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:13 2022
;--------------------------------------------------------
	.module _divslonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslonglong
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
;	../_divslonglong.c: 36: _divslonglong (long long numerator, long long denominator)
;	-----------------------------------------
;	 function _divslonglong
;	-----------------------------------------
__divslonglong:
	sub	sp, #58
;	../_divslonglong.c: 38: bool numeratorneg = (numerator < 0);
	tnz	(0x3f, sp)
	jrmi	00121$
	clr	a
	jra	00122$
00121$:
	ld	a, #0x01
00122$:
	ld	(0x09, sp), a
;	../_divslonglong.c: 39: bool denominatorneg = (denominator < 0);
	tnz	(0x47, sp)
	jrmi	00123$
	clr	a
	jra	00124$
00123$:
	ld	a, #0x01
00124$:
;	../_divslonglong.c: 42: if (numeratorneg)
	tnz	(0x09, sp)
	jreq	00102$
;	../_divslonglong.c: 43: numerator = -numerator;
	ldw	y, (0x45, sp)
	negw	y
	push	a
	clr	a
	sbc	a, (0x45, sp)
	ld	(0x10, sp), a
	clr	a
	sbc	a, (0x44, sp)
	ld	(0x0f, sp), a
	clr	a
	sbc	a, (0x43, sp)
	ld	(0x0e, sp), a
	clr	a
	sbc	a, (0x42, sp)
	ld	(0x0d, sp), a
	clr	a
	sbc	a, (0x41, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x40, sp)
	ld	xh, a
	pop	a
	ldw	(0x45, sp), y
	ldw	(0x3f, sp), x
	ldw	y, (0x0e, sp)
	ldw	(0x43, sp), y
	ldw	y, (0x0c, sp)
	ldw	(0x41, sp), y
00102$:
;	../_divslonglong.c: 44: if (denominatorneg)
	tnz	a
	jreq	00104$
;	../_divslonglong.c: 45: denominator = -denominator;
	ldw	y, (0x4d, sp)
	negw	y
	push	a
	clr	a
	sbc	a, (0x4d, sp)
	ld	(0x19, sp), a
	clr	a
	sbc	a, (0x4c, sp)
	ld	(0x18, sp), a
	clr	a
	sbc	a, (0x4b, sp)
	ld	(0x17, sp), a
	clr	a
	sbc	a, (0x4a, sp)
	ld	(0x16, sp), a
	clr	a
	sbc	a, (0x49, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x48, sp)
	ld	xh, a
	pop	a
	ldw	(0x4d, sp), y
	ldw	(0x47, sp), x
	ldw	y, (0x17, sp)
	ldw	(0x4b, sp), y
	ldw	y, (0x15, sp)
	ldw	(0x49, sp), y
00104$:
;	../_divslonglong.c: 47: d = (unsigned long long)numerator / (unsigned long long)denominator;
	ldw	y, (0x45, sp)
	ldw	(0x29, sp), y
	ldw	y, (0x43, sp)
	ldw	(0x27, sp), y
	ldw	y, (0x41, sp)
	ldw	(0x25, sp), y
	ldw	y, (0x3f, sp)
	ldw	x, (0x4d, sp)
	ldw	(0x21, sp), x
	ldw	x, (0x4b, sp)
	ldw	(0x1f, sp), x
	ldw	x, (0x49, sp)
	ldw	(0x1d, sp), x
	ldw	x, (0x47, sp)
	ldw	(0x1b, sp), x
	push	a
	ldw	x, (0x22, sp)
	pushw	x
	ldw	x, (0x22, sp)
	pushw	x
	ldw	x, (0x22, sp)
	pushw	x
	ldw	x, (0x22, sp)
	pushw	x
	ldw	x, (0x32, sp)
	pushw	x
	ldw	x, (0x32, sp)
	pushw	x
	ldw	x, (0x32, sp)
	pushw	x
	pushw	y
	ldw	x, sp
	addw	x, #18
	pushw	x
	call	__divulonglong
	addw	sp, #18
	pop	a
	ldw	y, (0x06, sp)
	ldw	(0x06, sp), y
	ldw	y, (0x03, sp)
	ldw	(0x03, sp), y
;	../_divslonglong.c: 49: return ((numeratorneg ^ denominatorneg) ? -d : d);
	xor	a, (0x09, sp)
	ld	(0x12, sp), a
	tnz	(0x12, sp)
	jreq	00107$
	ld	a, (0x08, sp)
	neg	a
	ld	(0x3a, sp), a
	clr	a
	sbc	a, (0x07, sp)
	ld	(0x39, sp), a
	clr	a
	sbc	a, (0x06, sp)
	ld	(0x38, sp), a
	clr	a
	sbc	a, (0x05, sp)
	ld	(0x37, sp), a
	clr	a
	sbc	a, (0x04, sp)
	ld	(0x36, sp), a
	clr	a
	sbc	a, (0x03, sp)
	ld	(0x35, sp), a
	clr	a
	sbc	a, (0x02, sp)
	ld	(0x34, sp), a
	clr	a
	sbc	a, (0x01, sp)
	ld	(0x33, sp), a
	ldw	y, (0x39, sp)
	ldw	(0x31, sp), y
	ldw	y, (0x37, sp)
	ldw	(0x2f, sp), y
	ldw	y, (0x35, sp)
	ldw	(0x2d, sp), y
	ldw	y, (0x33, sp)
	ldw	(0x2b, sp), y
	jra	00108$
00107$:
	ldw	y, (0x07, sp)
	ldw	(0x31, sp), y
	ldw	y, (0x05, sp)
	ldw	(0x2f, sp), y
	ldw	y, (0x03, sp)
	ldw	(0x2d, sp), y
	ldw	y, (0x01, sp)
	ldw	(0x2b, sp), y
00108$:
	ldw	x, (0x3d, sp)
	ldw	y, (0x31, sp)
	ldw	(#6, x), y
	ldw	y, (0x2f, sp)
	ldw	(#4, x), y
	ldw	y, (0x2d, sp)
	ldw	(#2, x), y
	ldw	y, (0x2b, sp)
	ldw	(x), y
	addw	sp, #58
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
