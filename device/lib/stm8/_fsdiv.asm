;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:57 2022
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;	../_fsdiv.c: 274: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
___fsdiv:
	sub	sp, #72
;	../_fsdiv.c: 283: fl1.f = a1;
	ldw	x, sp
	addw	x, #24
	ldw	y, (0x4d, sp)
	ldw	(0x2, x), y
	ldw	y, (0x4b, sp)
	ldw	(x), y
;	../_fsdiv.c: 284: fl2.f = a2;
	ldw	x, sp
	addw	x, #20
	ldw	y, (0x51, sp)
	ldw	(0x2, x), y
	ldw	y, (0x4f, sp)
	ldw	(x), y
;	../_fsdiv.c: 287: exp = EXP (fl1.l) ;
	ldw	x, sp
	addw	x, #24
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, #0x17
00164$:
	srlw	x
	rrc	(1, sp)
	exg	a, yl
	rrc	a
	exg	a, yl
	dec	a
	jrne	00164$
	pop	a
	clr	a
	ld	yh, a
	clrw	x
	ldw	(0x02, sp), y
;	../_fsdiv.c: 288: exp -= EXP (fl2.l);
	ldw	x, sp
	addw	x, #20
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, #0x17
00166$:
	srlw	x
	rrc	(1, sp)
	exg	a, yl
	rrc	a
	exg	a, yl
	dec	a
	jrne	00166$
	pop	a
	clr	(0x43, sp)
	clr	(0x42, sp)
	clr	(0x41, sp)
	ldw	x, (0x02, sp)
	ldw	(0x1e, sp), x
	clrw	x
	tnz	(0x1e, sp)
	jrpl	00168$
	decw	x
00168$:
	ld	a, (0x1f, sp)
	pushw	y
	sub	a, (#2, sp)
	popw	y
	ld	yl, a
	ld	a, (0x1e, sp)
	sbc	a, (0x43, sp)
	ld	yh, a
	ld	a, xl
	sbc	a, (0x42, sp)
	rlwa	x
	sbc	a, (0x41, sp)
	ldw	(0x02, sp), y
;	../_fsdiv.c: 289: exp += EXCESS;
	ldw	x, (0x02, sp)
	addw	x, #0x007e
	ldw	(0x02, sp), x
;	../_fsdiv.c: 292: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ldw	x, sp
	addw	x, #24
	ld	a, (0x3, x)
	ld	yh, a
	ld	a, (0x2, x)
	ldw	x, (x)
	rlwa	x
	sll	a
	clr	a
	rlc	a
	ld	(0x2a, sp), a
	ldw	x, sp
	addw	x, #20
	ld	a, (0x3, x)
	ld	yh, a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	xor	a, (0x2a, sp)
	ld	(0x01, sp), a
;	../_fsdiv.c: 295: if (!fl2.l)
	ldw	x, sp
	addw	x, #20
	ld	a, (0x3, x)
	ld	(0x38, sp), a
	ld	a, (0x2, x)
	ld	(0x37, sp), a
	ldw	x, (x)
	ldw	(0x35, sp), x
	ldw	x, (0x37, sp)
	jrne	00102$
	ldw	x, (0x35, sp)
	jrne	00102$
;	../_fsdiv.c: 297: fl2.l = 0x7FC00000;
	ldw	x, sp
	addw	x, #20
	clr	(0x3, x)
	clr	(0x2, x)
	ldw	y, #0x7fc0
	ldw	(x), y
;	../_fsdiv.c: 298: return (fl2.f);
	ldw	x, sp
	addw	x, #20
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
	jp	00118$
00102$:
;	../_fsdiv.c: 302: if (!fl1.l)
	ldw	x, sp
	addw	x, #24
	ld	a, (0x3, x)
	ld	(0x25, sp), a
	ld	a, (0x2, x)
	ld	(0x24, sp), a
	ldw	x, (x)
	ldw	y, (0x24, sp)
	jrne	00104$
	tnzw	x
	jrne	00104$
;	../_fsdiv.c: 303: return (0);
	clrw	x
	clrw	y
	jp	00118$
00104$:
;	../_fsdiv.c: 306: mant1 = MANT (fl1.l);
	ldw	x, sp
	addw	x, #24
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
	ld	(0x0b, sp), a
	exg	a, yl
	ldw	(0x09, sp), x
	ld	(0x08, sp), a
;	../_fsdiv.c: 307: mant2 = MANT (fl2.l);
	ldw	x, sp
	addw	x, #20
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
	ld	(0x07, sp), a
	exg	a, yl
	ldw	(0x05, sp), x
	ld	(0x04, sp), a
;	../_fsdiv.c: 310: if (mant1 < mant2)
	ldw	x, (0x0a, sp)
	cpw	x, (0x06, sp)
	ld	a, (0x09, sp)
	sbc	a, (0x05, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x04, sp)
	jrsge	00106$
;	../_fsdiv.c: 312: mant1 <<= 1;
	ldw	y, (0x0a, sp)
	ldw	x, (0x08, sp)
	sllw	y
	rlcw	x
	ldw	(0x0a, sp), y
	ldw	(0x08, sp), x
;	../_fsdiv.c: 313: exp--;
	ldw	x, (0x02, sp)
	decw	x
	ldw	(0x02, sp), x
00106$:
;	../_fsdiv.c: 317: mask = 0x1000000;
	clrw	x
	ldw	(0x0e, sp), x
	ldw	x, #0x0100
	ldw	(0x0c, sp), x
;	../_fsdiv.c: 318: result = 0;
	clrw	x
	ldw	(0x12, sp), x
	ldw	(0x10, sp), x
;	../_fsdiv.c: 319: while (mask)
00109$:
	ldw	x, (0x0e, sp)
	jrne	00174$
	ldw	x, (0x0c, sp)
	jreq	00111$
00174$:
;	../_fsdiv.c: 321: if (mant1 >= mant2)
	ldw	x, (0x0a, sp)
	cpw	x, (0x06, sp)
	ld	a, (0x09, sp)
	sbc	a, (0x05, sp)
	ld	a, (0x08, sp)
	sbc	a, (0x04, sp)
	jrslt	00108$
;	../_fsdiv.c: 323: result |= mask;
	ldw	y, (0x12, sp)
	ldw	x, (0x10, sp)
	ld	a, yl
	or	a, (0x0f, sp)
	rlwa	y
	or	a, (0x0e, sp)
	ld	yh, a
	ld	a, xl
	or	a, (0x0d, sp)
	rlwa	x
	or	a, (0x0c, sp)
	ld	xh, a
	ldw	(0x12, sp), y
	ldw	(0x10, sp), x
;	../_fsdiv.c: 324: mant1 -= mant2;
	ldw	y, (0x0a, sp)
	subw	y, (0x06, sp)
	ld	a, (0x09, sp)
	sbc	a, (0x05, sp)
	ld	xl, a
	ld	a, (0x08, sp)
	sbc	a, (0x04, sp)
	ld	xh, a
	ldw	(0x0a, sp), y
	ldw	(0x08, sp), x
00108$:
;	../_fsdiv.c: 326: mant1 <<= 1;
	ldw	y, (0x0a, sp)
	ldw	x, (0x08, sp)
	sllw	y
	rlcw	x
	ldw	(0x0a, sp), y
	ldw	(0x08, sp), x
;	../_fsdiv.c: 327: mask >>= 1;
	ldw	y, (0x0e, sp)
	ldw	x, (0x0c, sp)
	srlw	x
	rrcw	y
	ldw	(0x0e, sp), y
	ldw	(0x0c, sp), x
	jra	00109$
00111$:
;	../_fsdiv.c: 331: result += 1;
	ldw	y, (0x12, sp)
	addw	y, #0x0001
	ld	a, (0x11, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x10, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x12, sp), y
	ldw	(0x10, sp), x
;	../_fsdiv.c: 334: exp++;
	ldw	x, (0x02, sp)
	incw	x
	ldw	(0x02, sp), x
;	../_fsdiv.c: 335: result >>= 1;
	ldw	y, (0x12, sp)
	ldw	x, (0x10, sp)
	sraw	x
	rrcw	y
	ldw	(0x12, sp), y
	ldw	(0x10, sp), x
;	../_fsdiv.c: 337: result &= ~HIDDEN;
	ldw	y, (0x12, sp)
	ldw	x, (0x10, sp)
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	ldw	(0x12, sp), y
	ldw	(0x10, sp), x
;	../_fsdiv.c: 340: if (exp >= 0x100)
	ldw	x, (0x02, sp)
	cpw	x, #0x0100
	jrslt	00116$
;	../_fsdiv.c: 341: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ldw	x, sp
	addw	x, #24
	ldw	(0x33, sp), x
	tnz	(0x01, sp)
	jreq	00120$
	clrw	y
	clr	(0x3a, sp)
	ld	a, #0x80
	jra	00121$
00120$:
	clrw	y
	clr	(0x3a, sp)
	clr	a
00121$:
	or	a, #0x7f
	ld	(0x3d, sp), a
	ld	a, (0x3a, sp)
	or	a, #0x80
	ld	(0x3e, sp), a
	ldw	x, (0x33, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3d, sp)
	ldw	(x), y
	jra	00117$
00116$:
;	../_fsdiv.c: 342: else if (exp < 0)
	tnz	(0x02, sp)
	jrpl	00113$
;	../_fsdiv.c: 343: fl1.l = 0;
	ldw	x, sp
	addw	x, #24
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	jra	00117$
00113$:
;	../_fsdiv.c: 345: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ldw	x, sp
	addw	x, #24
	ldw	(0x20, sp), x
	tnz	(0x01, sp)
	jreq	00122$
	clrw	x
	ldw	(0x31, sp), x
	ldw	x, #0x8000
	ldw	(0x2f, sp), x
	jra	00123$
00122$:
	clrw	x
	ldw	(0x31, sp), x
	ldw	(0x2f, sp), x
00123$:
	ldw	y, (0x02, sp)
	clrw	x
	tnzw	y
	jrpl	00180$
	decw	x
00180$:
	ld	a, #0x17
00181$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00181$
	ld	a, yl
	or	a, (0x32, sp)
	ld	(0x2e, sp), a
	ld	a, yh
	or	a, (0x31, sp)
	ld	(0x2d, sp), a
	ld	a, xl
	or	a, (0x30, sp)
	ld	(0x2c, sp), a
	ld	a, xh
	or	a, (0x2f, sp)
	ldw	y, (0x12, sp)
	ldw	(0x47, sp), y
	ldw	x, (0x10, sp)
	pushw	x
	or	a, (1, sp)
	popw	x
	ld	(0x26, sp), a
	ld	a, (0x2e, sp)
	or	a, (0x48, sp)
	ld	yl, a
	ld	a, (0x2d, sp)
	or	a, (0x47, sp)
	ld	yh, a
	pushw	x
	ld	a, (0x2e, sp)
	or	a, (2, sp)
	popw	x
	ld	(0x27, sp), a
	ldw	x, (0x20, sp)
	ldw	(0x2, x), y
	ldw	y, (0x26, sp)
	ldw	(x), y
00117$:
;	../_fsdiv.c: 346: return (fl1.f);
	ldw	x, sp
	addw	x, #24
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
00118$:
	addw	sp, #72
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
