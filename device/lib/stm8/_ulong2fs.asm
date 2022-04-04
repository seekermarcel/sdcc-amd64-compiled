;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:53 2022
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;	../_ulong2fs.c: 83: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
___ulong2fs:
	sub	sp, #18
;	../_ulong2fs.c: 88: if (!a)
	ldw	x, (0x17, sp)
	jrne	00115$
	ldw	x, (0x15, sp)
	jrne	00115$
;	../_ulong2fs.c: 90: return 0.0;
	clrw	x
	clrw	y
	jp	00111$
;	../_ulong2fs.c: 93: while (a & NORM) 
00115$:
	ldw	x, #0x0096
00103$:
	tnz	(0x15, sp)
	jreq	00117$
;	../_ulong2fs.c: 96: a >>= 1;
	ldw	y, (0x17, sp)
	ldw	(0x0b, sp), y
	ldw	y, (0x15, sp)
	srlw	y
	rrc	(0x0b, sp)
	rrc	(0x0c, sp)
	ldw	(0x15, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x17, sp), y
;	../_ulong2fs.c: 97: exp++;
	incw	x
	jra	00103$
;	../_ulong2fs.c: 100: while (a < HIDDEN)
00117$:
	ldw	(0x05, sp), x
00106$:
	ldw	x, (0x17, sp)
	cpw	x, #0x0000
	ld	a, (0x16, sp)
	sbc	a, #0x80
	ld	a, (0x15, sp)
	sbc	a, #0x00
	jrnc	00120$
;	../_ulong2fs.c: 102: a <<= 1;
	ldw	y, (0x17, sp)
	ldw	x, (0x15, sp)
	sllw	y
	rlcw	x
	ldw	(0x17, sp), y
	ldw	(0x15, sp), x
;	../_ulong2fs.c: 103: exp--;
	ldw	x, (0x05, sp)
	decw	x
	ldw	(0x05, sp), x
	jra	00106$
00120$:
	ldw	y, (0x05, sp)
	ldw	(0x0d, sp), y
;	../_ulong2fs.c: 107: if ((a&0x7fffff)==0x7fffff) {
	ldw	y, (0x17, sp)
	ld	a, (0x16, sp)
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	xh, a
	pushw	x
	cpw	y, #0xffff
	popw	x
	jrne	00110$
	cpw	x, #0x007f
	jrne	00110$
;	../_ulong2fs.c: 108: a=0;
	clrw	x
	ldw	(0x17, sp), x
	ldw	(0x15, sp), x
;	../_ulong2fs.c: 109: exp++;
	ldw	x, (0x05, sp)
	incw	x
	ldw	(0x0d, sp), x
00110$:
;	../_ulong2fs.c: 113: a &= ~HIDDEN ;
	ldw	y, (0x17, sp)
	ld	a, (0x16, sp)
	and	a, #0x7f
	ld	xl, a
	ld	a, (0x15, sp)
	ld	xh, a
	ldw	(0x17, sp), y
	ldw	(0x15, sp), x
;	../_ulong2fs.c: 115: fl.l = PACK(0,(unsigned long)exp, a);
	ldw	x, sp
	incw	x
	ldw	(0x07, sp), x
	ldw	x, (0x0d, sp)
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	yl, a
	push	a
	ld	a, #0x17
00146$:
	sllw	x
	exg	a, yl
	rlc	a
	exg	a, yl
	rlc	(1, sp)
	dec	a
	jrne	00146$
	pop	a
	or	a, (0x15, sp)
	ld	(0x0f, sp), a
	ld	a, xl
	or	a, (0x18, sp)
	rlwa	x
	or	a, (0x17, sp)
	ld	xh, a
	ld	a, yl
	or	a, (0x16, sp)
	ld	(0x10, sp), a
	ldw	y, (0x07, sp)
	ldw	(0x2, y), x
	ldw	x, (0x0f, sp)
	ldw	(y), x
;	../_ulong2fs.c: 117: return (fl.f);
	ldw	x, sp
	incw	x
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
00111$:
	addw	sp, #18
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
