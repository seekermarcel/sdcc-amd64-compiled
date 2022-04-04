;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:59 2022
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;	../_fsmul.c: 241: float __fsmul (float a1, float a2) {
;	-----------------------------------------
;	 function __fsmul
;	-----------------------------------------
___fsmul:
	sub	sp, #124
;	../_fsmul.c: 247: fl1.f = a1;
	ldw	x, sp
	addw	x, #12
	ldw	y, (0x81, sp)
	ldw	(0x2, x), y
	ldw	y, (0x7f, sp)
	ldw	(x), y
;	../_fsmul.c: 248: fl2.f = a2;
	ldw	x, sp
	addw	x, #8
	ldw	y, (0x85, sp)
	ldw	(0x2, x), y
	ldw	y, (0x83, sp)
	ldw	(x), y
;	../_fsmul.c: 250: if (!fl1.l || !fl2.l)
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x6d, sp), a
	ld	a, (0x2, x)
	ld	(0x6c, sp), a
	ldw	x, (x)
	ldw	(0x6a, sp), x
	ldw	x, (0x6c, sp)
	jrne	00143$
	ldw	x, (0x6a, sp)
	jreq	00101$
00143$:
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x5d, sp), a
	ld	a, (0x2, x)
	ld	(0x5c, sp), a
	ldw	x, (x)
	ldw	y, (0x5c, sp)
	jrne	00102$
	tnzw	x
	jrne	00102$
00101$:
;	../_fsmul.c: 251: return (0);
	clrw	x
	clrw	y
	jp	00113$
00102$:
;	../_fsmul.c: 254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x1b, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	ld	(0x7c, sp), a
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x59, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	a, xh
	sll	a
	clr	a
	rlc	a
	xor	a, (0x7c, sp)
	ld	(0x01, sp), a
;	../_fsmul.c: 255: exp = EXP (fl1.l) - EXCESS;
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, #0x17
00146$:
	srlw	x
	rrc	(1, sp)
	exg	a, yl
	rrc	a
	exg	a, yl
	dec	a
	jrne	00146$
	pop	a
	clr	a
	ld	yh, a
	clrw	x
	subw	y, #0x007e
	ld	a, xl
	sbc	a, #0x00
	rlwa	x
	sbc	a, #0x00
	ldw	(0x02, sp), y
;	../_fsmul.c: 256: exp += EXP (fl2.l);
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ldw	x, (x)
	push	a
	ld	a, #0x17
00148$:
	srlw	x
	rrc	(1, sp)
	exg	a, yl
	rrc	a
	exg	a, yl
	dec	a
	jrne	00148$
	pop	a
	clr	a
	clr	(0x21, sp)
	clr	(0x20, sp)
	ldw	x, (0x02, sp)
	ldw	(0x2e, sp), x
	clrw	x
	tnz	(0x2e, sp)
	jrpl	00150$
	decw	x
00150$:
	ld	yh, a
	addw	y, (0x2e, sp)
	ld	a, xl
	adc	a, (0x21, sp)
	rlwa	x
	adc	a, (0x20, sp)
	ldw	(0x02, sp), y
;	../_fsmul.c: 258: fl1.l = MANT (fl1.l);
	ldw	x, sp
	addw	x, #12
	ldw	(0x32, sp), x
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	(0x3c, sp), a
	ld	a, xl
	or	a, #0x80
	ld	(0x3d, sp), a
	ldw	x, (0x32, sp)
	ldw	(0x2, x), y
	ldw	y, (0x3c, sp)
	ldw	(x), y
;	../_fsmul.c: 259: fl2.l = MANT (fl2.l);
	ldw	x, sp
	addw	x, #8
	ldw	(0x44, sp), x
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	ld	a, xl
	and	a, #0x7f
	ld	xl, a
	clr	a
	ld	(0x46, sp), a
	ld	a, xl
	or	a, #0x80
	ld	(0x47, sp), a
	ldw	x, (0x44, sp)
	ldw	(0x2, x), y
	ldw	y, (0x46, sp)
	ldw	(x), y
;	../_fsmul.c: 262: result = (fl1.l >> 8) * (fl2.l >> 8);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x4d, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	ld	(0x61, sp), a
	clr	(0x5e, sp)
	ldw	y, sp
	addw	y, #8
	ld	a, (0x3, y)
	ld	(0x43, sp), a
	ld	a, (0x2, y)
	ldw	y, (y)
	ldw	(0x15, sp), y
	ld	yl, a
	clr	(0x14, sp)
	ld	a, yl
	push	a
	ldw	y, (0x16, sp)
	pushw	y
	ld	a, (0x17, sp)
	push	a
	ld	a, (0x65, sp)
	push	a
	pushw	x
	ld	a, (0x65, sp)
	push	a
	call	__mullong
	addw	sp, #8
	ldw	(0x06, sp), x
	ldw	(0x04, sp), y
;	../_fsmul.c: 263: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yh, a
	ld	a, (0x2, x)
	ldw	x, (x)
	clr	(0x12, sp)
	clr	(0x11, sp)
	clr	(0x10, sp)
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	(0x73, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	clr	(0x74, sp)
	push	a
	pushw	x
	ld	a, (0x77, sp)
	push	a
	ld	a, yh
	push	a
	ldw	x, (0x16, sp)
	pushw	x
	ld	a, (0x17, sp)
	push	a
	call	__mullong
	addw	sp, #8
	ld	a, xh
	ld	xl, a
	clr	a
	rlwa	x
	ld	a, yl
	rrwa	x
	addw	x, (0x06, sp)
	push	a
	ld	a, yh
	adc	a, (0x06, sp)
	ld	yl, a
	pop	a
	adc	a, (0x04, sp)
	ld	yh, a
	ldw	(0x06, sp), x
	ldw	(0x04, sp), y
;	../_fsmul.c: 264: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	ldw	x, sp
	addw	x, #8
	ld	a, (0x3, x)
	ld	yh, a
	ld	a, (0x2, x)
	ldw	x, (x)
	clr	(0x7a, sp)
	clr	(0x79, sp)
	clr	(0x78, sp)
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	(0x55, sp), a
	ld	a, (0x2, x)
	ldw	x, (x)
	clr	(0x24, sp)
	push	a
	pushw	x
	ld	a, (0x27, sp)
	push	a
	ld	a, yh
	push	a
	ldw	x, (0x7e, sp)
	pushw	x
	ld	a, (0x7f, sp)
	push	a
	call	__mullong
	addw	sp, #8
	ld	a, xh
	ld	xl, a
	clr	a
	rlwa	x
	ld	a, yl
	rrwa	x
	addw	x, (0x06, sp)
	push	a
	ld	a, yh
	adc	a, (0x06, sp)
	ld	yl, a
	pop	a
	adc	a, (0x04, sp)
	ld	yh, a
	ldw	(0x06, sp), x
	ldw	(0x04, sp), y
;	../_fsmul.c: 267: result += 0x40;
	ldw	y, (0x06, sp)
	addw	y, #0x0040
	ld	a, (0x05, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x04, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 269: if (result & SIGNBIT)
	tnz	(0x04, sp)
	jrpl	00105$
;	../_fsmul.c: 272: result += 0x40;
	ldw	y, (0x06, sp)
	addw	y, #0x0040
	ld	a, (0x05, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x04, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 273: result >>= 8;
	ldw	y, (0x05, sp)
	ld	a, (0x04, sp)
	ld	xl, a
	clr	a
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
	jra	00106$
00105$:
;	../_fsmul.c: 277: result >>= 7;
	ldw	y, (0x06, sp)
	ldw	x, (0x04, sp)
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	srlw	x
	rrcw	y
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 278: exp--;
	ldw	x, (0x02, sp)
	decw	x
	ldw	(0x02, sp), x
00106$:
;	../_fsmul.c: 281: result &= ~HIDDEN;
	ldw	y, (0x06, sp)
	ld	a, (0x05, sp)
	and	a, #0x7f
	ld	xl, a
	ld	a, (0x04, sp)
	ld	xh, a
	ldw	(0x06, sp), y
	ldw	(0x04, sp), x
;	../_fsmul.c: 284: if (exp >= 0x100)
	ldw	x, (0x02, sp)
	cpw	x, #0x0100
	jrslt	00111$
;	../_fsmul.c: 285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ldw	x, sp
	addw	x, #12
	ldw	(0x30, sp), x
	tnz	(0x01, sp)
	jreq	00115$
	clrw	y
	clr	(0x39, sp)
	ld	a, #0x80
	jra	00116$
00115$:
	clrw	y
	clr	(0x39, sp)
	clr	a
00116$:
	or	a, #0x7f
	ld	(0x66, sp), a
	ld	a, (0x39, sp)
	or	a, #0x80
	ld	(0x67, sp), a
	ldw	x, (0x30, sp)
	ldw	(0x2, x), y
	ldw	y, (0x66, sp)
	ldw	(x), y
	jra	00112$
00111$:
;	../_fsmul.c: 286: else if (exp < 0)
	tnz	(0x02, sp)
	jrpl	00108$
;	../_fsmul.c: 287: fl1.l = 0;
	ldw	x, sp
	addw	x, #12
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	jra	00112$
00108$:
;	../_fsmul.c: 289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ldw	x, sp
	addw	x, #12
	ldw	(0x6e, sp), x
	tnz	(0x01, sp)
	jreq	00117$
	clrw	x
	ldw	(0x1e, sp), x
	ldw	x, #0x8000
	ldw	(0x1c, sp), x
	jra	00118$
00117$:
	clrw	x
	ldw	(0x1e, sp), x
	ldw	(0x1c, sp), x
00118$:
	ldw	x, (0x02, sp)
	ld	a, xh
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x29, sp), a
	ld	(0x34, sp), a
	ld	a, (0x29, sp)
	push	a
	ld	a, #0x17
00156$:
	sllw	x
	rlc	(1, sp)
	rlc	(0x35, sp)
	dec	a
	jrne	00156$
	pop	a
	or	a, (0x1d, sp)
	ld	(0x4f, sp), a
	ld	a, xl
	or	a, (0x1f, sp)
	rlwa	x
	or	a, (0x1e, sp)
	ld	xh, a
	ld	a, (0x34, sp)
	or	a, (0x1c, sp)
	or	a, (0x04, sp)
	ld	(0x62, sp), a
	ld	a, xl
	or	a, (0x07, sp)
	ld	yl, a
	ld	a, xh
	or	a, (0x06, sp)
	ld	yh, a
	ld	a, (0x4f, sp)
	or	a, (0x05, sp)
	ld	(0x63, sp), a
	ldw	x, (0x6e, sp)
	ldw	(0x2, x), y
	ldw	y, (0x62, sp)
	ldw	(x), y
00112$:
;	../_fsmul.c: 290: return (fl1.f);
	ldw	x, sp
	addw	x, #12
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	exgw	x, y
00113$:
	addw	sp, #124
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
