;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _modulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulong
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
;../_modulong.c:340: _modulong (unsigned long a, unsigned long b)
;	---------------------------------
; Function _modulong
; ---------------------------------
__modulong::
;../_modulong.c:342: unsigned char count = 0;
	ld	b,#0x00
;../_modulong.c:344: while (!MSB_SET(b))
	ld	c,#0x00
00103$:
	ldhl	sp,#9
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	jp	NZ,00117$
;../_modulong.c:346: b <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#6
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_modulong.c:347: if (b > a)
	ldhl	sp,#2
	ld	d, h
	ld	e, l
	ldhl	sp,#6
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
	jr	NC,00102$
;../_modulong.c:349: b >>=1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#9
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_modulong.c:350: break;
	jr	00117$
00102$:
;../_modulong.c:352: count++;
	inc	c
	ld	b,c
	jp	00103$
;../_modulong.c:354: do
00117$:
00108$:
;../_modulong.c:356: if (a >= b)
	ldhl	sp,#2
	ld	d, h
	ld	e, l
	ldhl	sp,#6
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
	jp	C,00107$
;../_modulong.c:357: a -= b;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#6
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#5
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#10
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#5
	ld	(hl-),a
	ld	(hl),e
00107$:
;../_modulong.c:358: b >>= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#9
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_modulong.c:360: while (count--);
	ld	c,b
	dec	b
	ld	a,c
	or	a, a
	jp	NZ,00108$
;../_modulong.c:362: return a;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
