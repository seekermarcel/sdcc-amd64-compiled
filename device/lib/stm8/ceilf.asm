;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:10 2022
;--------------------------------------------------------
	.module ceilf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
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
;	../ceilf.c: 33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
_ceilf:
	sub	sp, #16
;	../ceilf.c: 36: r=x;
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	call	___fs2slong
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	(0x01, sp), y
;	../ceilf.c: 38: return r;
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	call	___slong2fs
	addw	sp, #4
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
;	../ceilf.c: 37: if (r<0)
	tnz	(0x01, sp)
	jrpl	00102$
;	../ceilf.c: 38: return r;
	ldw	x, (0x0f, sp)
	ldw	y, (0x0d, sp)
	jra	00104$
00102$:
;	../ceilf.c: 40: return (r+((r<x)?1:0));
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00106$
	ld	a, #0x01
	.byte 0x21
00106$:
	clr	a
00107$:
	clrw	x
	ld	xl, a
	ldw	(0x07, sp), x
	clrw	x
	tnz	(0x07, sp)
	jrpl	00118$
	decw	x
00118$:
	ldw	y, (0x07, sp)
	addw	y, (0x03, sp)
	ld	a, xl
	adc	a, (0x02, sp)
	rlwa	x
	adc	a, (0x01, sp)
	ld	xh, a
	pushw	y
	pushw	x
	call	___slong2fs
	addw	sp, #4
	ldw	(0x0b, sp), x
	ldw	x, (0x0b, sp)
00104$:
	addw	sp, #16
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
