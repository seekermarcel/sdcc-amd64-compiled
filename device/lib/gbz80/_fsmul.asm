;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:44 2022
;--------------------------------------------------------
	.module _fsmul
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fsmul
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
;../_fsmul.c:241: float __fsmul (float a1, float a2) {
;	---------------------------------
; Function __fsmul
; ---------------------------------
___fsmul::
	add	sp, #-23
;../_fsmul.c:247: fl1.f = a1;
	ldhl	sp,#11
	ld	e,l
	ld	d,h
	ldhl	sp,#25
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
;../_fsmul.c:248: fl2.f = a2;
	ldhl	sp,#7
	ld	e,l
	ld	d,h
	ldhl	sp,#29
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
;../_fsmul.c:250: if (!fl1.l || !fl2.l)
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	jr	Z,00101$
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	jr	NZ,00102$
00101$:
;../_fsmul.c:251: return (0);
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00113$
00102$:
;../_fsmul.c:254: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	ldhl	sp,#19
	ld	(hl),a
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	inc	hl
	xor	a, (hl)
	ldhl	sp,#0
	ld	(hl),a
;../_fsmul.c:255: exp = EXP (fl1.l) - EXCESS;
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	ldhl	sp,#17
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	pop	af
	ld	a,#0x17
00143$:
	srl	c
	rr	b
	rr	e
	rr	d
	dec	a
	jr	NZ,00143$
	ldhl	sp,#15
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a, #0x7E
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#20
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	sbc	a, #0x00
	ld	e,a
	ld	a,d
	sbc	a, #0x00
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
;../_fsmul.c:256: exp += EXP (fl2.l);
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	ldhl	sp,#17
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	pop	af
	ld	a,#0x17
00145$:
	srl	c
	rr	b
	rr	e
	rr	d
	dec	a
	jr	NZ,00145$
	ldhl	sp,#15
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#1
	ld	a,(hl)
	ldhl	sp,#19
	ld	(hl),a
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#20
	ld	(hl),a
	ldhl	sp,#2
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#21
	ld	(hl+),a
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#15
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#24
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
;../_fsmul.c:258: fl1.l = MANT (fl1.l);
	ldhl	sp,#11
	ld	a,l
	ld	d,h
	ldhl	sp,#15
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ldhl	sp,#19
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	res	7, b
	ld	c,#0x00
	dec	hl
	dec	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl+),a
	ld	(hl),c
	ldhl	sp,#16
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
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
;../_fsmul.c:259: fl2.l = MANT (fl2.l);
	ldhl	sp,#7
	ld	a,l
	ld	d,h
	ldhl	sp,#15
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ldhl	sp,#19
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	b,(hl)
	res	7, b
	ld	c,#0x00
	dec	hl
	dec	hl
	ld	(hl),d
	inc	hl
	ld	(hl),e
	ld	a,b
	set	7, a
	inc	hl
	ld	(hl+),a
	ld	(hl),c
	ldhl	sp,#16
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
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
;../_fsmul.c:262: result = (fl1.l >> 8) * (fl2.l >> 8);
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	pop	af
	ld	a,#0x08
00147$:
	ldhl	sp,#18
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00147$
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ldhl	sp,#21
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x08
00149$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00149$
	push	bc
	push	de
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mullong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#3
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_fsmul.c:263: result += ((fl1.l & (unsigned long) 0xFF) * (fl2.l >> 8)) >> 8;
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ldhl	sp,#21
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x08
00151$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00151$
	push	bc
	push	de
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mullong
	add	sp, #8
	ld	b,l
	ld	c,h
	push	af
	ldhl	sp,#17
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
	pop	af
	ld	a,#0x08
00153$:
	ldhl	sp,#18
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00153$
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#15
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#6
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#6
	ld	(hl-),a
	ld	(hl),e
;../_fsmul.c:264: result += ((fl2.l & (unsigned long) 0xFF) * (fl1.l >> 8)) >> 8;
	ldhl	sp,#7
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#19
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
	ldhl	sp,#21
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	af
	ld	a,#0x08
00155$:
	srl	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00155$
	push	bc
	push	de
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mullong
	add	sp, #8
	ld	b,l
	ld	c,h
	push	af
	ldhl	sp,#17
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
	pop	af
	ld	a,#0x08
00157$:
	ldhl	sp,#18
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00157$
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#15
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ldhl	sp,#6
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ldhl	sp,#6
	ld	(hl-),a
	ld	(hl),e
;../_fsmul.c:267: result += 0x40;
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x40
	ld	e,a
	ld	a,d
	adc	a, #0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#8
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
;../_fsmul.c:269: if (result & SIGNBIT)
	inc	hl
	bit	7, (hl)
	jp	Z,00105$
;../_fsmul.c:272: result += 0x40;
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	add	a, #0x40
	ld	e,a
	ld	a,d
	adc	a, #0x00
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#8
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
;../_fsmul.c:273: result >>= 8;
	push	af
	pop	af
	ld	a,#0x08
00160$:
	ldhl	sp,#6
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00160$
	jr	00106$
00105$:
;../_fsmul.c:277: result >>= 7;
	push	af
	pop	af
	ld	a,#0x07
00162$:
	ldhl	sp,#6
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	a
	jr	NZ,00162$
;../_fsmul.c:278: exp--;
	dec	hl
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
;../_fsmul.c:281: result &= ~HIDDEN;
	ldhl	sp,#5
	ld	a,(hl)
	res	7, a
	ld	(hl),a
;../_fsmul.c:284: if (exp >= 0x100)
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
	jr	Z,00164$
	bit	7, d
	jr	NZ,00165$
	cp	a, a
	jr	00165$
00164$:
	bit	7, d
	jr	Z,00165$
	scf
00165$:
	jp	C,00111$
;../_fsmul.c:285: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	ldhl	sp,#11
	ld	a,l
	ld	d,h
	ldhl	sp,#15
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	Z,00115$
	ld	d,#0x00
	ld	e,#0x00
	ld	b,#0x00
	ld	c,#0x80
	jr	00116$
00115$:
	ld	d,#0x00
	ld	e,#0x00
	ld	b,#0x00
	ld	c,#0x00
00116$:
	ldhl	sp,#19
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
	ld	(hl),a
	ldhl	sp,#16
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
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
	jp	00112$
00111$:
;../_fsmul.c:286: else if (exp < 0)
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
	jr	Z,00166$
	bit	7, d
	jr	NZ,00167$
	cp	a, a
	jr	00167$
00166$:
	bit	7, d
	jr	Z,00167$
	scf
00167$:
	jr	NC,00108$
;../_fsmul.c:287: fl1.l = 0;
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jp	00112$
00108$:
;../_fsmul.c:289: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	ldhl	sp,#11
	ld	a,l
	ld	d,h
	ldhl	sp,#15
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	Z,00117$
	ldhl	sp,#19
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x80
	jr	00118$
00117$:
	xor	a, a
	ldhl	sp,#19
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
00118$:
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
00168$:
	sla	e
	rl	d
	rl	c
	rl	b
	dec	a
	jr	NZ,00168$
	ld	a,e
	ldhl	sp,#19
	or	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	or	a, (hl)
	ld	d,a
	ld	a,c
	inc	hl
	or	a, (hl)
	ld	c,a
	ld	a,b
	inc	hl
	or	a, (hl)
	ld	b,a
	ld	a,e
	ldhl	sp,#3
	or	a, (hl)
	ldhl	sp,#19
	ld	(hl),a
	ld	a,d
	ldhl	sp,#4
	or	a, (hl)
	ldhl	sp,#20
	ld	(hl),a
	ld	a,c
	ldhl	sp,#5
	or	a, (hl)
	ldhl	sp,#21
	ld	(hl),a
	ld	a,b
	ldhl	sp,#6
	or	a, (hl)
	ldhl	sp,#22
	ld	(hl),a
	ldhl	sp,#16
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#19
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
00112$:
;../_fsmul.c:290: return (fl1.f);
	ldhl	sp,#11
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#15
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
00113$:
	add	sp, #23
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
