;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:00 2022
;--------------------------------------------------------
	.module _fslt
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fslt
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
;	../_fslt.c: 108: char __fslt (float a1, float a2)
;	-----------------------------------------
;	 function __fslt
;	-----------------------------------------
___fslt:
	sub	sp, #52
;	../_fslt.c: 112: fl1.f = a1;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x39, sp)
	ldw	(0x2, x), y
	ldw	y, (0x37, sp)
	ldw	(x), y
;	../_fslt.c: 113: fl2.f = a2;
	ldw	x, sp
	incw	x
	ldw	y, (0x3d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3b, sp)
	ldw	(x), y
;	../_fslt.c: 115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	(0x19, sp), a
	ldw	x, (x)
	ldw	(0x17, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x16, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ldw	(0x13, sp), x
	or	a, (0x19, sp)
	ld	xh, a
	ld	a, yl
	or	a, (0x16, sp)
	ld	xl, a
	ld	a, (0x18, sp)
	or	a, (0x14, sp)
	ld	yl, a
	ld	a, (0x17, sp)
	or	a, (0x13, sp)
	and	a, #0x7f
	ld	(0x2b, sp), a
	ldw	(0x2d, sp), x
	exg	a, yl
	ld	(0x2c, sp), a
	exg	a, yl
	ldw	x, (0x2d, sp)
	jrne	00102$
	ldw	x, (0x2b, sp)
	jrne	00102$
;	../_fslt.c: 116: return (0);
	clr	a
	jp	00110$
00102$:
;	../_fslt.c: 118: if (fl1.l<0 && fl2.l<0) {
	ldw	x, sp
	addw	x, #5
	ldw	(0x27, sp), x
	ldw	x, (0x27, sp)
	ld	a, (0x3, x)
	ld	(0x26, sp), a
	ld	a, (0x2, x)
	ld	(0x25, sp), a
	ldw	x, (x)
	ldw	(0x23, sp), x
	tnz	(0x23, sp)
	jrpl	00106$
	ldw	x, sp
	incw	x
	ldw	(0x29, sp), x
	ldw	x, (0x29, sp)
	ld	a, (0x3, x)
	ld	(0x34, sp), a
	ld	a, (0x2, x)
	ld	(0x33, sp), a
	ldw	x, (x)
	ldw	(0x31, sp), x
	tnz	(0x31, sp)
	jrpl	00106$
;	../_fslt.c: 119: if (fl2.l < fl1.l)
	ldw	x, sp
	incw	x
	ldw	(0x2f, sp), x
	ldw	x, (0x2f, sp)
	ld	a, (0x3, x)
	ld	(0x0c, sp), a
	ld	a, (0x2, x)
	ld	(0x0b, sp), a
	ldw	x, (x)
	ldw	(0x09, sp), x
	ldw	x, sp
	addw	x, #5
	ldw	(0x11, sp), x
	ldw	x, (0x11, sp)
	ld	a, (0x3, x)
	ld	(0x10, sp), a
	ld	a, (0x2, x)
	ld	(0x0f, sp), a
	ldw	x, (x)
	ldw	(0x0d, sp), x
	ldw	x, (0x0b, sp)
	cpw	x, (0x0f, sp)
	ld	a, (0x0a, sp)
	sbc	a, (0x0e, sp)
	ld	a, (0x09, sp)
	sbc	a, (0x0d, sp)
	jrsge	00104$
;	../_fslt.c: 120: return (1);
	ld	a, #0x01
	jra	00110$
00104$:
;	../_fslt.c: 121: return (0);
	clr	a
	jra	00110$
00106$:
;	../_fslt.c: 124: if (fl1.l < fl2.l)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x22, sp), a
	ld	a, (0x2, x)
	ld	(0x21, sp), a
	ldw	x, (x)
	ldw	(0x1f, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x1e, sp), a
	ld	a, (0x2, x)
	ld	(0x1d, sp), a
	ldw	x, (x)
	ldw	(0x1b, sp), x
	ldw	x, (0x21, sp)
	cpw	x, (0x1d, sp)
	ld	a, (0x20, sp)
	sbc	a, (0x1c, sp)
	ld	a, (0x1f, sp)
	sbc	a, (0x1b, sp)
	jrsge	00109$
;	../_fslt.c: 125: return (1);
	ld	a, #0x01
;	../_fslt.c: 126: return (0);
	.byte 0x21
00109$:
	clr	a
00110$:
	addw	sp, #52
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
