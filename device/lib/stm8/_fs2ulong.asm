;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:54 2022
;--------------------------------------------------------
	.module _fs2ulong
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
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
;	../_fs2ulong.c: 103: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
___fs2ulong:
	sub	sp, #12
;	../_fs2ulong.c: 109: fl1.f = a1;
	ldw	x, sp
	addw	x, #7
	ldw	y, (0x11, sp)
	ldw	(0x2, x), y
	ldw	y, (0x0f, sp)
	ldw	(x), y
;	../_fs2ulong.c: 111: if (!fl1.l || SIGN(fl1.l))
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	tnzw	y
	jrne	00110$
	tnzw	x
	jreq	00101$
00110$:
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	rlwa	x
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00102$
00101$:
;	../_fs2ulong.c: 112: return (0);
	clrw	x
	clrw	y
	jra	00104$
00102$:
;	../_fs2ulong.c: 114: exp = EXP (fl1.l) - EXCESS - 24;
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, #0x17
00112$:
	srlw	x
	rrc	(1, sp)
	exg	a, yl
	rrc	a
	exg	a, yl
	dec	a
	jrne	00112$
	pop	a
	clr	a
	ld	yh, a
	clrw	x
	subw	y, #0x0096
	ld	a, xl
	sbc	a, #0x00
	rlwa	x
	sbc	a, #0x00
	ldw	(0x05, sp), y
;	../_fs2ulong.c: 115: l = MANT (fl1.l);
	ldw	x, sp
	addw	x, #7
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	rlwa	x
	sllw	x
	srlw	x
	clr	a
	push	a
	sllw	x
	scf
	rrcw	x
	pop	a
	exg	a, yl
	ld	(0x04, sp), a
	exg	a, yl
	ldw	(0x02, sp), x
	ld	(0x01, sp), a
;	../_fs2ulong.c: 117: l >>= -exp;
	ld	a, (0x06, sp)
	neg	a
	ld	(0x0c, sp), a
	clr	a
	sbc	a, (0x05, sp)
	ldw	y, (0x03, sp)
	ldw	x, (0x01, sp)
	ld	a, (0x0c, sp)
	jreq	00115$
00114$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00114$
00115$:
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	../_fs2ulong.c: 119: return l;
	ldw	x, (0x03, sp)
	ldw	y, (0x01, sp)
00104$:
	addw	sp, #12
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
