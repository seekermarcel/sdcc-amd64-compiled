;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _modulonglong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modulonglong
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
;../_modulonglong.c:38: _modulonglong (unsigned long long a, unsigned long long b)
;	---------------------------------
; Function _modulonglong
; ---------------------------------
__modulonglong::
;../_modulonglong.c:40: unsigned char count = 0;
	ld	b,#0x00
;../_modulonglong.c:42: while (!MSB_SET(b))
	ld	c,#0x00
00103$:
	ldhl	sp,#19
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	jp	NZ,00117$
;../_modulonglong.c:44: b <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#12
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_modulonglong.c:45: if (b > a)
	ldhl	sp,#4
	ld	d, h
	ld	e, l
	ldhl	sp,#12
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
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00102$
;../_modulonglong.c:47: b >>=1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#19
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_modulonglong.c:48: break;
	jr	00117$
00102$:
;../_modulonglong.c:50: count++;
	inc	c
	ld	b,c
	jp	00103$
;../_modulonglong.c:52: do
00117$:
00108$:
;../_modulonglong.c:54: if (a >= b)
	ldhl	sp,#4
	ld	d, h
	ld	e, l
	ldhl	sp,#12
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
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	C,00107$
;../_modulonglong.c:55: a -= b;
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#12
	sub	a, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#13
	sbc	a, (hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#14
	sbc	a, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#15
	sbc	a, (hl)
	ldhl	sp,#7
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#16
	sbc	a, (hl)
	ldhl	sp,#8
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#17
	sbc	a, (hl)
	ldhl	sp,#9
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#18
	sbc	a, (hl)
	ldhl	sp,#10
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#19
	sbc	a, (hl)
	ldhl	sp,#11
	ld	(hl),a
00107$:
;../_modulonglong.c:56: b >>= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#19
	srl	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
;../_modulonglong.c:58: while (count--);
	ld	c,b
	dec	b
	ld	a,c
	or	a, a
	jp	NZ,00108$
;../_modulonglong.c:60: return a;
	ld	hl, #2
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ldhl	sp,#4
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
