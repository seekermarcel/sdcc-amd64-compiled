;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:13 2022
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;	../_mullonglong.c: 35: long long _mullonglong(long long ll, long long lr)
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
__mullonglong:
	sub	sp, #58
;	../_mullonglong.c: 37: unsigned long long ret = 0ull;
	clrw	x
	ldw	(0x09, sp), x
	ldw	(0x07, sp), x
	ldw	(0x05, sp), x
	ldw	(0x03, sp), x
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
	clr	a
00106$:
;	../_mullonglong.c: 42: unsigned char l = ll >> (i * 8);
	ld	(0x26, sp), a
	clr	(0x25, sp)
	ldw	x, (0x25, sp)
	sllw	x
	sllw	x
	sllw	x
	push	a
	ldw	y, (0x44, sp)
	ldw	(0x34, sp), y
	ldw	y, (0x42, sp)
	ldw	(0x32, sp), y
	ldw	y, (0x46, sp)
	ld	a, (0x40, sp)
	ld	xh, a
	ld	a, (0x41, sp)
	ld	(0x31, sp), a
	ld	a, xl
	tnz	a
	jreq	00129$
00128$:
	rlwa	x
	sra	a
	rrwa	x
	rrc	(0x31, sp)
	rrc	(0x32, sp)
	rrc	(0x33, sp)
	rrc	(0x34, sp)
	rrc	(0x35, sp)
	rrcw	y
	dec	a
	jrne	00128$
00129$:
	pop	a
	exg	a, yl
	ld	(0x01, sp), a
	exg	a, yl
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
	clr	(0x02, sp)
00104$:
	push	a
	ld	a, (0x03, sp)
	ld	(0x3b, sp), a
	pop	a
	clr	(0x39, sp)
	ldw	x, (0x25, sp)
	addw	x, (0x39, sp)
	cpw	x, #0x0008
	jrslt	00130$
	jp	00107$
00130$:
;	../_mullonglong.c: 45: unsigned char r = lr >> (j * 8);
	ldw	y, (0x39, sp)
	sllw	y
	sllw	y
	sllw	y
	ldw	(0x0b, sp), y
	push	a
	ldw	y, (0x4c, sp)
	ldw	(0x2c, sp), y
	ldw	y, (0x4a, sp)
	ldw	(0x2a, sp), y
	ldw	y, (0x48, sp)
	ldw	(0x28, sp), y
	ldw	y, (0x4e, sp)
	ld	a, (0x0d, sp)
	jreq	00132$
00131$:
	sra	(0x28, sp)
	rrc	(0x29, sp)
	rrc	(0x2a, sp)
	rrc	(0x2b, sp)
	rrc	(0x2c, sp)
	rrc	(0x2d, sp)
	rrcw	y
	dec	a
	jrne	00131$
00132$:
	ld	a, (0x02, sp)
	mul	y, a
	pop	a
	ldw	(0x13, sp), y
	clr	(0x12, sp)
	clr	(0x11, sp)
	clr	(0x10, sp)
	clr	(0x0f, sp)
	clrw	y
	sllw	x
	sllw	x
	sllw	x
	ldw	(0x37, sp), x
	push	a
	ldw	(0x16, sp), y
	ldw	y, (0x12, sp)
	ldw	(0x1a, sp), y
	ldw	y, (0x14, sp)
	ldw	x, (0x10, sp)
	ld	a, (0x39, sp)
	jreq	00134$
00133$:
	sllw	y
	rlc	(0x1b, sp)
	rlc	(0x1a, sp)
	rlcw	x
	rlc	(0x17, sp)
	rlc	(0x16, sp)
	dec	a
	jrne	00133$
00134$:
	pop	a
	addw	y, (0x09, sp)
	push	a
	ld	a, (0x1b, sp)
	adc	a, (0x09, sp)
	ld	(0x23, sp), a
	ld	a, (0x1a, sp)
	adc	a, (0x08, sp)
	ld	(0x22, sp), a
	ld	a, xl
	adc	a, (0x07, sp)
	ld	(0x21, sp), a
	ld	a, xh
	adc	a, (0x06, sp)
	ld	(0x20, sp), a
	ld	a, (0x17, sp)
	adc	a, (0x05, sp)
	ld	xl, a
	ld	a, (0x16, sp)
	adc	a, (0x04, sp)
	ld	xh, a
	pop	a
	ldw	(0x09, sp), y
	ldw	(0x03, sp), x
	ldw	y, (0x21, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x1f, sp)
	ldw	(0x05, sp), y
;	../_mullonglong.c: 43: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	(0x02, sp)
	jp	00104$
00107$:
;	../_mullonglong.c: 40: for (i = 0; i < sizeof (long long); i++)
	inc	a
	cp	a, #0x08
	jrnc	00135$
	jp	00106$
00135$:
;	../_mullonglong.c: 50: return(ret);
	ldw	x, (0x3d, sp)
	ldw	y, (0x09, sp)
	ldw	(#6, x), y
	ldw	y, (0x07, sp)
	ldw	(#4, x), y
	ldw	y, (0x05, sp)
	ldw	(#2, x), y
	ldw	y, (0x03, sp)
	ldw	(x), y
	addw	sp, #58
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
