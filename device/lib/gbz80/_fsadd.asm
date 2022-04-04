;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module _fsadd
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsadd
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
;../_fsadd.c:170: float __fsadd (float a1, float a2)
;	---------------------------------
; Function __fsadd
; ---------------------------------
___fsadd::
	add	sp, #-31
;../_fsadd.c:178: pfl2 = (long _AUTOMEM *)&a2;
	ldhl	sp,#37
	ld	a,l
	ld	d,h
	ldhl	sp,#25
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	(hl),e
;../_fsadd.c:179: exp2 = EXP (*pfl2);
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#27
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#27
	ld	d,h
	ld	e,l
	ldhl	sp,#17
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	push	af
	ldhl	sp,#19
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x17
00221$:
	srl	b
	rr	c
	rr	e
	rr	d
	dec	a
	jr	NZ,00221$
	ld	e,#0x00
	ld	bc,#0x0000
	ldhl	sp,#1
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_fsadd.c:180: mant2 = MANT (*pfl2) << 4;
	ldhl	sp,#17
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	res	7, b
	ld	c,#0x00
	ld	a,b
	set	7, a
	ld	b,a
	push	af
	ldhl	sp,#11
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
	pop	af
	ld	a,#0x04
00223$:
	ldhl	sp,#9
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ,00223$
;../_fsadd.c:181: if (SIGN (*pfl2))
	ldhl	sp,#20
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	jr	Z,00102$
;../_fsadd.c:182: mant2 = -mant2;
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#9
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
00102$:
;../_fsadd.c:184: if (!*pfl2)
	ldhl	sp,#30
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00104$
;../_fsadd.c:185: return (a1);
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00137$
00104$:
;../_fsadd.c:187: pfl1 = (long _AUTOMEM *)&a1;
	ldhl	sp,#33
	ld	d,l
	ld	e,h
	ldhl	sp,#7
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_fsadd.c:188: exp1 = EXP (*pfl1);
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#17
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#17
	ld	d,h
	ld	e,l
	ldhl	sp,#27
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	push	af
	ldhl	sp,#29
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x17
00225$:
	srl	b
	rr	c
	rr	e
	rr	d
	dec	a
	jr	NZ,00225$
	ld	e,#0x00
	ld	bc,#0x0000
	ldhl	sp,#25
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_fsadd.c:189: mant1 = MANT (*pfl1) << 4;
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	res	7, b
	ld	c,#0x00
	ld	a,b
	set	7, a
	ld	b,a
	push	af
	ldhl	sp,#23
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
	pop	af
	ld	a,#0x04
00227$:
	ldhl	sp,#21
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ,00227$
;../_fsadd.c:190: if (SIGN(*pfl1))
	ldhl	sp,#30
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	jr	Z,00108$
;../_fsadd.c:191: if (*pfl1 & 0x80000000)
	bit	7, (hl)
	jr	Z,00108$
;../_fsadd.c:192: mant1 = -mant1;
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#21
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
00108$:
;../_fsadd.c:194: if (!*pfl1)
	ldhl	sp,#20
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00110$
;../_fsadd.c:195: return (a2);
	ldhl	sp,#38
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00137$
00110$:
;../_fsadd.c:197: expd = exp1 - exp2;
	ldhl	sp,#26
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#1
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
;../_fsadd.c:198: if (expd > 25)
	ld	a,b
	ld	e,a
	ld	a,#0x00
	ld	d,a
	ld	a,#0x19
	cp	a, c
	ld	a,#0x00
	sbc	a, b
	bit	7, e
	jr	Z,00230$
	bit	7, d
	jr	NZ,00231$
	cp	a, a
	jr	00231$
00230$:
	bit	7, d
	jr	Z,00231$
	scf
00231$:
	jr	NC,00112$
;../_fsadd.c:199: return (a1);
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00137$
00112$:
;../_fsadd.c:200: if (expd < -25)
	ld	a,#0xFF
	ld	e,a
	ld	a,b
	ld	d,a
	ld	a,c
	sub	a, #0xE7
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x7F
	jr	NC,00114$
;../_fsadd.c:201: return (a2);
	ldhl	sp,#38
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00137$
00114$:
;../_fsadd.c:203: if (expd < 0)
	ld	a,#0x00
	ld	e,a
	ld	a,b
	ld	d,a
	bit	7, b
	jp	Z,00116$
;../_fsadd.c:205: expd = -expd;
	xor	a, a
	sub	a, c
	ld	c,a
	ld	a, #0x00
	sbc	a, b
	ld	b,a
;../_fsadd.c:206: exp1 += expd;
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#25
	ld	(hl+),a
	ld	(hl),d
;../_fsadd.c:207: mant1 >>= expd;
	push	af
	pop	af
	inc	c
	jr	00233$
00232$:
	ldhl	sp,#24
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
00233$:
	dec	c
	jr	NZ,00232$
	jr	00117$
00116$:
;../_fsadd.c:211: mant2 >>= expd;
	push	af
	pop	af
	inc	c
	jr	00235$
00234$:
	ldhl	sp,#12
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
00235$:
	dec	c
	jr	NZ,00234$
00117$:
;../_fsadd.c:213: mant1 += mant2;
	ldhl	sp,#22
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#9
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#24
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#26
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#13
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#24
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#13
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../_fsadd.c:215: sign = false;
	ldhl	sp,#0
	ld	(hl),#0x00
;../_fsadd.c:217: if (mant1 < 0)
	ldhl	sp,#13
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00236$
	bit	7, d
	jr	NZ,00237$
	cp	a, a
	jr	00237$
00236$:
	bit	7, d
	jr	Z,00237$
	scf
00237$:
	jr	NC,00121$
;../_fsadd.c:219: mant1 = -mant1;
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#13
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
;../_fsadd.c:220: sign = true;
	ldhl	sp,#0
	ld	(hl),#0x01
	jr	00154$
00121$:
;../_fsadd.c:222: else if (!mant1)
	ldhl	sp,#16
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00154$
;../_fsadd.c:223: return (0);
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00137$
;../_fsadd.c:226: while (mant1 < (HIDDEN<<4)) {
00154$:
	ldhl	sp,#26
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00123$:
	ldhl	sp,#13
	ld	d,h
	ld	e,l
	ldhl	sp,#21
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#21
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x08
	jr	NC,00157$
;../_fsadd.c:227: mant1 <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#13
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_fsadd.c:228: exp1--;
	dec	bc
	jp	00123$
;../_fsadd.c:232: while (mant1 & 0xf0000000) {
00157$:
	ldhl	sp,#3
	ld	(hl),c
	inc	hl
	ld	(hl),b
00128$:
	ldhl	sp,#13
	ld	d,h
	ld	e,l
	ldhl	sp,#21
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#24
	ld	a,(hl)
	and	a, #0xF0
	jp	Z,00163$
;../_fsadd.c:233: if (mant1&1)
	ldhl	sp,#13
	bit	0, (hl)
	jr	Z,00127$
;../_fsadd.c:234: mant1 += 2;
	ldhl	sp,#14
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x02
	ld	e,a
	ld	a,d
	adc	a, #0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#18
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a, #0x00
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	(hl-),a
	ld	(hl),e
00127$:
;../_fsadd.c:235: mant1 >>= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#16
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_fsadd.c:236: exp1++;
	ldhl	sp,#3
	inc	(hl)
	jp	NZ,00128$
	inc	hl
	inc	(hl)
	jp	00128$
00163$:
	ldhl	sp,#3
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#17
	ld	(hl+),a
	ld	(hl),e
;../_fsadd.c:240: mant1 &= ~(HIDDEN<<4);
	ldhl	sp,#24
	ld	a,(hl)
	res	3, a
	ld	(hl),a
;../_fsadd.c:243: if (exp1 >= 0x100)
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x01
	ld	d, (hl)
	ld	a,#0x01
	ld	e, a
	bit	7, e
	jr	Z,00245$
	bit	7, d
	jr	NZ,00246$
	cp	a, a
	jr	00246$
00245$:
	bit	7, d
	jr	Z,00246$
	scf
00246$:
	jp	C,00135$
;../_fsadd.c:244: *pfl1 = (sign ? (SIGNBIT | __INFINITY) : __INFINITY);
	ldhl	sp,#0
	bit	0,(hl)
	jr	Z,00139$
	ldhl	sp,#27
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0xFF
	jr	00140$
00139$:
	ldhl	sp,#27
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	inc	hl
	ld	(hl),#0x7F
00140$:
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#27
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	jp	00136$
00135$:
;../_fsadd.c:245: else if (exp1 < 0)
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00247$
	bit	7, d
	jr	NZ,00248$
	cp	a, a
	jr	00248$
00247$:
	bit	7, d
	jr	Z,00248$
	scf
00248$:
	jr	NC,00132$
;../_fsadd.c:246: *pfl1 = 0;
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jp	00136$
00132$:
;../_fsadd.c:248: *pfl1 = PACK (sign ? SIGNBIT : 0 , exp1, mant1>>4);
	ldhl	sp,#0
	bit	0,(hl)
	jr	Z,00141$
	ldhl	sp,#27
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	jr	00142$
00141$:
	xor	a, a
	ldhl	sp,#27
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
00142$:
	ldhl	sp,#17
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	b,a
	ld	c,a
	ld	a,#0x17
00249$:
	sla	e
	rl	d
	rl	b
	rl	c
	dec	a
	jr	NZ,00249$
	ldhl	sp,#27
	ld	a,(hl)
	or	a, e
	ldhl	sp,#17
	ld	(hl),a
	ldhl	sp,#28
	ld	a,(hl)
	or	a, d
	ldhl	sp,#18
	ld	(hl),a
	ldhl	sp,#29
	ld	a,(hl)
	or	a, b
	ldhl	sp,#19
	ld	(hl),a
	ldhl	sp,#30
	ld	a,(hl)
	or	a, c
	ldhl	sp,#20
	ld	(hl),a
	push	af
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x04
00251$:
	sra	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00251$
	ldhl	sp,#17
	ld	a,(hl)
	or	a, e
	ldhl	sp,#21
	ld	(hl),a
	ldhl	sp,#18
	ld	a,(hl)
	or	a, d
	ldhl	sp,#22
	ld	(hl),a
	ldhl	sp,#19
	ld	a,(hl)
	or	a, c
	ldhl	sp,#23
	ld	(hl),a
	ldhl	sp,#20
	ld	a,(hl)
	or	a, b
	ldhl	sp,#24
	ld	(hl),a
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#21
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
00136$:
;../_fsadd.c:249: return (a1);
	ldhl	sp,#34
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00137$:
	add	sp, #31
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
