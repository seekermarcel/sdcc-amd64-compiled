;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:56 2022
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
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
;	../_fsadd.c: 170: float __fsadd (float a1, float a2)
;	-----------------------------------------
;	 function __fsadd
;	-----------------------------------------
___fsadd:
	sub	sp, #90
;	../_fsadd.c: 178: pfl2 = (long _AUTOMEM *)&a2;
	ldw	x, sp
	addw	x, #97
;	../_fsadd.c: 179: exp2 = EXP (*pfl2);
	ld	a, (0x3, x)
	ld	(0x2b, sp), a
	ld	a, (0x2, x)
	ld	(0x2a, sp), a
	ldw	x, (x)
	ldw	(0x28, sp), x
	ldw	y, (0x2a, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x28, sp)
	ldw	(0x12, sp), y
	ldw	y, (0x14, sp)
	ldw	x, (0x12, sp)
	ld	a, #0x17
00221$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00221$
	clr	a
	ld	yh, a
	clrw	x
	ldw	(0x04, sp), y
;	../_fsadd.c: 180: mant2 = MANT (*pfl2) << 4;
	ldw	y, (0x14, sp)
	ld	a, (0x13, sp)
	and	a, #0x7f
	ld	xh, a
	clr	a
	ld	xl, a
	sllw	x
	scf
	rrcw	x
	swapw	x
	ld	a, #0x04
00223$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00223$
	ldw	(0x0c, sp), y
	ldw	(0x0a, sp), x
;	../_fsadd.c: 181: if (SIGN (*pfl2))
	ld	a, (0x12, sp)
	sll	a
	clr	a
	rlc	a
	tnz	a
	jreq	00102$
;	../_fsadd.c: 182: mant2 = -mant2;
	ldw	y, (0x0c, sp)
	negw	y
	clr	a
	sbc	a, (0x0b, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x0a, sp)
	ld	xh, a
	ldw	(0x0c, sp), y
	ldw	(0x0a, sp), x
00102$:
;	../_fsadd.c: 184: if (!*pfl2)
	ldw	x, (0x2a, sp)
	jrne	00104$
	ldw	x, (0x28, sp)
	jrne	00104$
;	../_fsadd.c: 185: return (a1);
	ldw	x, (0x5f, sp)
	ldw	y, (0x5d, sp)
	jp	00137$
00104$:
;	../_fsadd.c: 187: pfl1 = (long _AUTOMEM *)&a1;
	ldw	x, sp
	addw	x, #93
	ldw	(0x08, sp), x
;	../_fsadd.c: 188: exp1 = EXP (*pfl1);
	ldw	x, (0x08, sp)
	ld	a, (0x3, x)
	ld	(0x35, sp), a
	ld	a, (0x2, x)
	ld	(0x34, sp), a
	ldw	x, (x)
	ldw	(0x32, sp), x
	ldw	y, (0x34, sp)
	ldw	(0x59, sp), y
	ldw	y, (0x32, sp)
	ldw	(0x57, sp), y
	ldw	y, (0x59, sp)
	ldw	x, (0x57, sp)
	ld	a, #0x17
00228$:
	srlw	x
	rrcw	y
	dec	a
	jrne	00228$
	clr	a
	ld	yh, a
	clrw	x
	ldw	(0x16, sp), y
;	../_fsadd.c: 189: mant1 = MANT (*pfl1) << 4;
	ldw	y, (0x59, sp)
	ld	a, (0x58, sp)
	and	a, #0x7f
	ld	xh, a
	clr	a
	ld	xl, a
	sllw	x
	scf
	rrcw	x
	swapw	x
	ld	a, #0x04
00230$:
	sllw	y
	rlcw	x
	dec	a
	jrne	00230$
	ldw	(0x1c, sp), y
	ldw	(0x1a, sp), x
;	../_fsadd.c: 190: if (SIGN(*pfl1))
	ld	a, (0x57, sp)
	sll	a
	clr	a
	rlc	a
	ld	(0x3a, sp), a
	tnz	(0x3a, sp)
	jreq	00108$
;	../_fsadd.c: 191: if (*pfl1 & 0x80000000)
	tnz	(0x57, sp)
	jrpl	00108$
;	../_fsadd.c: 192: mant1 = -mant1;
	ld	a, (0x1d, sp)
	neg	a
	ld	(0x27, sp), a
	clr	a
	sbc	a, (0x1c, sp)
	ld	(0x26, sp), a
	clr	a
	sbc	a, (0x1b, sp)
	ld	(0x25, sp), a
	clr	a
	sbc	a, (0x1a, sp)
	ld	(0x1a, sp), a
	ldw	y, (0x26, sp)
	ldw	(0x1c, sp), y
	ld	a, (0x25, sp)
	ld	(0x1b, sp), a
00108$:
;	../_fsadd.c: 194: if (!*pfl1)
	ldw	x, (0x34, sp)
	jrne	00110$
	ldw	x, (0x32, sp)
	jrne	00110$
;	../_fsadd.c: 195: return (a2);
	ldw	x, (0x63, sp)
	ldw	y, (0x61, sp)
	jp	00137$
00110$:
;	../_fsadd.c: 197: expd = exp1 - exp2;
	ldw	y, (0x16, sp)
	subw	y, (0x04, sp)
	ldw	(0x18, sp), y
;	../_fsadd.c: 198: if (expd > 25)
	ldw	x, (0x18, sp)
	cpw	x, #0x0019
	jrsle	00112$
;	../_fsadd.c: 199: return (a1);
	ldw	x, (0x5f, sp)
	ldw	y, (0x5d, sp)
	jp	00137$
00112$:
;	../_fsadd.c: 200: if (expd < -25)
	ldw	x, (0x18, sp)
	cpw	x, #0xffe7
	jrsge	00114$
;	../_fsadd.c: 201: return (a2);
	ldw	x, (0x63, sp)
	ldw	y, (0x61, sp)
	jp	00137$
00114$:
;	../_fsadd.c: 203: if (expd < 0)
	tnz	(0x18, sp)
	jrpl	00116$
;	../_fsadd.c: 205: expd = -expd;
	ldw	x, (0x18, sp)
	negw	x
	ldw	(0x02, sp), x
;	../_fsadd.c: 206: exp1 += expd;
	ldw	y, (0x16, sp)
	addw	y, (0x02, sp)
	ldw	(0x16, sp), y
;	../_fsadd.c: 207: mant1 >>= expd;
	ldw	y, (0x1c, sp)
	ldw	x, (0x1a, sp)
	ld	a, (0x03, sp)
	jreq	00240$
00239$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00239$
00240$:
	ldw	(0x1c, sp), y
	ldw	(0x1a, sp), x
	jra	00117$
00116$:
;	../_fsadd.c: 211: mant2 >>= expd;
	ldw	y, (0x0c, sp)
	ldw	x, (0x0a, sp)
	ld	a, (0x19, sp)
	jreq	00242$
00241$:
	sraw	x
	rrcw	y
	dec	a
	jrne	00241$
00242$:
	ldw	(0x0c, sp), y
	ldw	(0x0a, sp), x
00117$:
;	../_fsadd.c: 213: mant1 += mant2;
	ldw	y, (0x1c, sp)
	addw	y, (0x0c, sp)
	ld	a, (0x1b, sp)
	adc	a, (0x0b, sp)
	ld	xl, a
	ld	a, (0x1a, sp)
	adc	a, (0x0a, sp)
	ld	xh, a
	ldw	(0x10, sp), y
	ldw	(0x0e, sp), x
;	../_fsadd.c: 215: sign = false;
	clr	(0x01, sp)
;	../_fsadd.c: 217: if (mant1 < 0)
	tnz	(0x0e, sp)
	jrpl	00121$
;	../_fsadd.c: 219: mant1 = -mant1;
	ldw	y, (0x10, sp)
	negw	y
	clr	a
	sbc	a, (0x0f, sp)
	ld	xl, a
	clr	a
	sbc	a, (0x0e, sp)
	ld	xh, a
	ldw	(0x10, sp), y
	ldw	(0x0e, sp), x
;	../_fsadd.c: 220: sign = true;
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00154$
00121$:
;	../_fsadd.c: 222: else if (!mant1)
	ldw	x, (0x10, sp)
	jrne	00154$
	ldw	x, (0x0e, sp)
	jrne	00154$
;	../_fsadd.c: 223: return (0);
	clrw	x
	clrw	y
	jp	00137$
;	../_fsadd.c: 226: while (mant1 < (HIDDEN<<4)) {
00154$:
	ldw	y, (0x16, sp)
	ldw	(0x1e, sp), y
00123$:
	ldw	y, (0x10, sp)
	ldw	x, (0x0e, sp)
	cpw	y, #0x0000
	ld	a, xl
	sbc	a, #0x00
	ld	a, xh
	sbc	a, #0x08
	jrnc	00157$
;	../_fsadd.c: 227: mant1 <<= 1;
	ldw	y, (0x10, sp)
	ldw	x, (0x0e, sp)
	sllw	y
	rlcw	x
	ldw	(0x10, sp), y
	ldw	(0x0e, sp), x
;	../_fsadd.c: 228: exp1--;
	ldw	x, (0x1e, sp)
	decw	x
	ldw	(0x1e, sp), x
	jra	00123$
;	../_fsadd.c: 232: while (mant1 & 0xf0000000) {
00157$:
	ldw	y, (0x1e, sp)
	ldw	(0x06, sp), y
00128$:
	ldw	y, (0x10, sp)
	ldw	(0x22, sp), y
	ldw	y, (0x0e, sp)
	ldw	(0x20, sp), y
	ld	a, (0x20, sp)
	bcp	a, #0xf0
	jreq	00163$
;	../_fsadd.c: 233: if (mant1&1)
	ld	a, (0x11, sp)
	srl	a
	jrnc	00127$
;	../_fsadd.c: 234: mant1 += 2;
	ldw	y, (0x10, sp)
	addw	y, #0x0002
	ld	a, (0x0f, sp)
	adc	a, #0x00
	ld	xl, a
	ld	a, (0x0e, sp)
	adc	a, #0x00
	ld	xh, a
	ldw	(0x10, sp), y
	ldw	(0x0e, sp), x
00127$:
;	../_fsadd.c: 235: mant1 >>= 1;
	ldw	y, (0x10, sp)
	ldw	x, (0x0e, sp)
	sraw	x
	rrcw	y
	ldw	(0x10, sp), y
	ldw	(0x0e, sp), x
;	../_fsadd.c: 236: exp1++;
	ldw	x, (0x06, sp)
	incw	x
	ldw	(0x06, sp), x
	jra	00128$
00163$:
	ldw	y, (0x06, sp)
	ldw	(0x30, sp), y
;	../_fsadd.c: 240: mant1 &= ~(HIDDEN<<4);
	ldw	y, (0x22, sp)
	ld	a, (0x21, sp)
	ld	xl, a
	ld	a, (0x20, sp)
	and	a, #0xf7
	ld	xh, a
	ldw	(0x4d, sp), y
	ldw	(0x4b, sp), x
;	../_fsadd.c: 243: if (exp1 >= 0x100)
	ldw	x, (0x06, sp)
	cpw	x, #0x0100
	jrslt	00135$
;	../_fsadd.c: 244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	tnz	(0x01, sp)
	jreq	00139$
	clrw	y
	ldw	x, #0xff80
	ldw	(0x2c, sp), x
	jra	00140$
00139$:
	clrw	y
	ldw	x, #0x7f80
	ldw	(0x2c, sp), x
00140$:
	ldw	x, (0x08, sp)
	ldw	(0x2, x), y
	ldw	y, (0x2c, sp)
	ldw	(x), y
	jp	00136$
00135$:
;	../_fsadd.c: 245: else if (exp1 < 0)
	tnz	(0x06, sp)
	jrpl	00132$
;	../_fsadd.c: 246: *pfl1 = 0;
	ldw	x, (0x08, sp)
	clr	(0x3, x)
	clr	(0x2, x)
	clr	(0x1, x)
	clr	(x)
	jp	00136$
00132$:
;	../_fsadd.c: 248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	tnz	(0x01, sp)
	jreq	00141$
	clrw	x
	ldw	(0x3d, sp), x
	ldw	x, #0x8000
	ldw	(0x3b, sp), x
	jra	00142$
00141$:
	clrw	x
	ldw	(0x3d, sp), x
	ldw	(0x3b, sp), x
00142$:
	ldw	y, (0x30, sp)
	ldw	(0x45, sp), y
	ld	a, (0x45, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x44, sp), a
	ld	(0x43, sp), a
	ldw	y, (0x43, sp)
	ldw	(0x47, sp), y
	ldw	x, (0x45, sp)
	ld	a, #0x17
00253$:
	sllw	x
	rlc	(0x48, sp)
	rlc	(0x47, sp)
	dec	a
	jrne	00253$
	ldw	(0x49, sp), x
	ld	a, (0x3e, sp)
	or	a, (0x4a, sp)
	ld	(0x56, sp), a
	ld	a, (0x3d, sp)
	or	a, (0x49, sp)
	ld	(0x55, sp), a
	ld	a, (0x3c, sp)
	or	a, (0x48, sp)
	ld	(0x54, sp), a
	ld	a, (0x3b, sp)
	or	a, (0x47, sp)
	ld	(0x53, sp), a
	ldw	y, (0x4b, sp)
	ldw	(0x36, sp), y
	ldw	x, (0x4d, sp)
	sra	(0x36, sp)
	rrc	(0x37, sp)
	rrcw	x
	sra	(0x36, sp)
	rrc	(0x37, sp)
	rrcw	x
	sra	(0x36, sp)
	rrc	(0x37, sp)
	rrcw	x
	sra	(0x36, sp)
	rrc	(0x37, sp)
	rrcw	x
	ldw	(0x38, sp), x
	ldw	y, (0x38, sp)
	ldw	(0x41, sp), y
	ldw	y, (0x36, sp)
	ldw	(0x3f, sp), y
	ld	a, (0x56, sp)
	or	a, (0x42, sp)
	ld	(0x52, sp), a
	ld	a, (0x55, sp)
	or	a, (0x41, sp)
	ld	(0x51, sp), a
	ld	a, (0x54, sp)
	or	a, (0x40, sp)
	ld	(0x50, sp), a
	ld	a, (0x53, sp)
	or	a, (0x3f, sp)
	ld	(0x4f, sp), a
	ldw	x, (0x08, sp)
	ldw	y, (0x51, sp)
	ldw	(0x2, x), y
	ldw	y, (0x4f, sp)
	ldw	(x), y
00136$:
;	../_fsadd.c: 249: return (a1);
	ldw	x, (0x5f, sp)
	ldw	y, (0x5d, sp)
00137$:
	addw	sp, #90
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
