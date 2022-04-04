;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:59 2022
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq
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
;	../_fseq.c: 83: __fseq (float a1, float a2)
;	-----------------------------------------
;	 function __fseq
;	-----------------------------------------
___fseq:
	sub	sp, #28
;	../_fseq.c: 87: fl1.f = a1;
	ldw	x, sp
	addw	x, #5
	ldw	y, (0x21, sp)
	ldw	(0x2, x), y
	ldw	y, (0x1f, sp)
	ldw	(x), y
;	../_fseq.c: 88: fl2.f = a2;
	ldw	x, sp
	incw	x
	ldw	y, (0x25, sp)
	ldw	(0x2, x), y
	ldw	y, (0x23, sp)
	ldw	(x), y
;	../_fseq.c: 90: if (fl1.l == fl2.l)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ldw	(0x19, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	(0x10, sp), a
	ld	a, (0x2, x)
	ld	(0x0f, sp), a
	ldw	x, (x)
	ldw	(0x0d, sp), x
	ldw	x, y
	cpw	x, (0x0f, sp)
	jrne	00102$
	ldw	x, (0x19, sp)
	cpw	x, (0x0d, sp)
	jrne	00102$
;	../_fseq.c: 91: return (1);
	ld	a, #0x01
	jra	00105$
00102$:
;	../_fseq.c: 92: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	ldw	x, sp
	addw	x, #5
	ld	a, (0x3, x)
	ld	(0x18, sp), a
	ld	a, (0x2, x)
	ld	(0x17, sp), a
	ldw	x, (x)
	ldw	(0x15, sp), x
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	push	a
	ld	a, (0x2, x)
	ld	(0x14, sp), a
	ldw	x, (x)
	pop	a
	or	a, (0x18, sp)
	ld	(0x0c, sp), a
	ld	a, (0x13, sp)
	or	a, (0x17, sp)
	ld	(0x0b, sp), a
	ld	a, xl
	or	a, (0x16, sp)
	rlwa	x
	or	a, (0x15, sp)
	ld	xh, a
	ldw	y, (0x0b, sp)
	sllw	x
	srlw	x
	tnzw	y
	jrne	00104$
	tnzw	x
	jrne	00104$
;	../_fseq.c: 93: return (1);
	ld	a, #0x01
;	../_fseq.c: 94: return (0);
	.byte 0x21
00104$:
	clr	a
00105$:
	addw	sp, #28
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
