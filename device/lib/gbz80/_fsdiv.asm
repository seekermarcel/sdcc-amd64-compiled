;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module _fsdiv
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsdiv
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
;../_fsdiv.c:274: float __fsdiv (float a1, float a2)
;	---------------------------------
; Function __fsdiv
; ---------------------------------
___fsdiv::
	add	sp, #-35
;../_fsdiv.c:283: fl1.f = a1;
	ldhl	sp,#23
	ld	e,l
	ld	d,h
	ldhl	sp,#37
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
;../_fsdiv.c:284: fl2.f = a2;
	ldhl	sp,#19
	ld	e,l
	ld	d,h
	ldhl	sp,#41
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
;../_fsdiv.c:287: exp = EXP (fl1.l) ;
	ldhl	sp,#23
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
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
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,#0x17
00164$:
	srl	c
	rr	b
	rr	d
	rr	e
	dec	a
	jr	NZ,00164$
	ld	d,#0x00
	ld	b,#0x00
	ld	c,#0x00
	ldhl	sp,#1
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_fsdiv.c:288: exp -= EXP (fl2.l);
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
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
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00166$:
	srl	b
	rr	c
	rr	e
	rr	d
	dec	a
	jr	NZ,00166$
	ldhl	sp,#27
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#1
	ld	a,(hl)
	ldhl	sp,#31
	ld	(hl),a
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#32
	ld	(hl),a
	ldhl	sp,#2
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#33
	ld	(hl+),a
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#27
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#34
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#36
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#31
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#34
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
;../_fsdiv.c:289: exp += EXCESS;
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x007E
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),d
;../_fsdiv.c:292: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ldhl	sp,#23
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#31
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
	ldhl	sp,#31
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,c
	rlc	a
	and	a,#0x01
	ldhl	sp,#31
	ld	(hl),a
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
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
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ld	a,c
	rlc	a
	and	a,#0x01
	inc	hl
	xor	a, (hl)
	ldhl	sp,#0
	ld	(hl),a
;../_fsdiv.c:295: if (!fl2.l)
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#31
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
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00102$
;../_fsdiv.c:297: fl2.l = 0x7FC00000;
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0xC0
	inc	hl
	ld	(hl),#0x7F
;../_fsdiv.c:298: return (fl2.f);
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#31
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00118$
00102$:
;../_fsdiv.c:302: if (!fl1.l)
	ldhl	sp,#23
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
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
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00104$
;../_fsdiv.c:303: return (0);
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00118$
00104$:
;../_fsdiv.c:306: mant1 = MANT (fl1.l);
	ldhl	sp,#23
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#31
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
	ldhl	sp,#31
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	res	7, b
	ld	c,#0x00
	ldhl	sp,#7
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl+),a
	ld	(hl),c
;../_fsdiv.c:307: mant2 = MANT (fl2.l);
	ldhl	sp,#19
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#31
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
	ldhl	sp,#31
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	res	7, b
	ld	c,#0x00
	ldhl	sp,#3
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl+),a
	ld	(hl),c
;../_fsdiv.c:310: if (mant1 < mant2)
	inc	hl
	ld	d, h
	ld	e, l
	ldhl	sp,#3
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00168$
	bit	7, d
	jr	NZ,00169$
	cp	a, a
	jr	00169$
00168$:
	bit	7, d
	jr	Z,00169$
	scf
00169$:
	jr	NC,00106$
;../_fsdiv.c:312: mant1 <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#7
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_fsdiv.c:313: exp--;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00106$:
;../_fsdiv.c:317: mask = 0x1000000;
	ldhl	sp,#11
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x01
;../_fsdiv.c:318: result = 0;
	xor	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../_fsdiv.c:319: while (mask)
00109$:
	ldhl	sp,#14
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	Z,00111$
;../_fsdiv.c:321: if (mant1 >= mant2)
	ldhl	sp,#7
	ld	d, h
	ld	e, l
	ldhl	sp,#3
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	ld	a, (de)
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00172$
	bit	7, d
	jr	NZ,00173$
	cp	a, a
	jr	00173$
00172$:
	bit	7, d
	jr	Z,00173$
	scf
00173$:
	jp	C,00108$
;../_fsdiv.c:323: result |= mask;
	ldhl	sp,#15
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,d
	ldhl	sp,#11
	or	a, (hl)
	ld	d,a
	ld	a,e
	inc	hl
	or	a, (hl)
	ld	e,a
	ld	a,c
	inc	hl
	or	a, (hl)
	ld	c,a
	ld	a,b
	inc	hl
	or	a, (hl)
	ld	b,a
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_fsdiv.c:324: mant1 -= mant2;
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#3
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#10
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#12
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#7
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#10
	ld	(hl-),a
	ld	(hl),e
00108$:
;../_fsdiv.c:326: mant1 <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#7
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_fsdiv.c:327: mask >>= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#14
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	jp	00109$
00111$:
;../_fsdiv.c:331: result += 1;
	ldhl	sp,#15
	inc	(hl)
	jr	NZ,00178$
	inc	hl
	inc	(hl)
	jr	NZ,00178$
	inc	hl
	inc	(hl)
	jr	NZ,00178$
	inc	hl
	inc	(hl)
00178$:
;../_fsdiv.c:334: exp++;
	ldhl	sp,#1
	inc	(hl)
	jr	NZ,00179$
	inc	hl
	inc	(hl)
00179$:
;../_fsdiv.c:335: result >>= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#18
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_fsdiv.c:337: result &= ~HIDDEN;
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ldhl	sp,#15
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	and	a, #0x7F
	inc	hl
	ld	(hl+),a
	ld	(hl),c
;../_fsdiv.c:340: if (exp >= 0x100)
	ldhl	sp,#1
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x01
	ld	d, (hl)
	ld	a,#0x01
	ld	e, a
	bit	7, e
	jr	Z,00182$
	bit	7, d
	jr	NZ,00183$
	cp	a, a
	jr	00183$
00182$:
	bit	7, d
	jr	Z,00183$
	scf
00183$:
	jp	C,00116$
;../_fsdiv.c:341: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ldhl	sp,#23
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	Z,00120$
	ld	d,#0x00
	ld	e,#0x00
	ld	b,#0x00
	ld	c,#0x80
	jr	00121$
00120$:
	ld	d,#0x00
	ld	e,#0x00
	ld	b,#0x00
	ld	c,#0x00
00121$:
	ldhl	sp,#27
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl),a
	ld	a,c
	or	a, #0x7F
	inc	hl
	ld	(hl+),a
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
	jp	00117$
00116$:
;../_fsdiv.c:342: else if (exp < 0)
	ldhl	sp,#1
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00184$
	bit	7, d
	jr	NZ,00185$
	cp	a, a
	jr	00185$
00184$:
	bit	7, d
	jr	Z,00185$
	scf
00185$:
	jr	NC,00113$
;../_fsdiv.c:343: fl1.l = 0;
	ldhl	sp,#23
	ld	b,l
	ld	c,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jp	00117$
00113$:
;../_fsdiv.c:345: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ldhl	sp,#23
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	Z,00122$
	ldhl	sp,#27
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	jr	00123$
00122$:
	xor	a, a
	ldhl	sp,#27
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
00123$:
	ldhl	sp,#1
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,#0x17
00186$:
	sla	e
	rl	d
	rl	c
	rl	b
	dec	a
	jr	NZ,00186$
	ldhl	sp,#27
	ld	a,(hl)
	or	a, e
	ld	(hl+),a
	ld	a,(hl)
	or	a, d
	ld	(hl+),a
	ld	a,(hl)
	or	a, c
	ld	(hl+),a
	ld	a,(hl)
	or	a, b
	ld	(hl),a
	ldhl	sp,#15
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	ldhl	sp,#27
	ld	a,(hl)
	or	a, d
	ld	(hl+),a
	ld	a,(hl)
	or	a, e
	ld	(hl+),a
	ld	a,(hl)
	or	a, b
	ld	(hl+),a
	ld	a,(hl)
	or	a, c
	ld	(hl+),a
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
00117$:
;../_fsdiv.c:346: return (fl1.f);
	ldhl	sp,#23
	ld	a,l
	ld	d,h
	ldhl	sp,#31
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00118$:
	add	sp, #35
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
