;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _divulong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulong
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
;../_divulong.c:331: _divulong (unsigned long x, unsigned long y)
;	---------------------------------
; Function _divulong
; ---------------------------------
__divulong::
	add	sp, #-4
;../_divulong.c:333: unsigned long reste = 0L;
	xor	a, a
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../_divulong.c:334: unsigned char count = 32;
	ld	b,#0x20
;../_divulong.c:337: do
00105$:
;../_divulong.c:340: c = MSB_SET(x);
	ldhl	sp,#9
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	ld	d,a
;../_divulong.c:341: x <<= 1;
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
;../_divulong.c:342: reste <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#0
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_divulong.c:343: if (c)
	bit	0,d
	jr	Z,00102$
;../_divulong.c:344: reste |= 1L;
	ldhl	sp,#0
	ld	a,(hl)
	set	0, a
	ld	(hl),a
00102$:
;../_divulong.c:346: if (reste >= y)
	ldhl	sp,#0
	ld	d, h
	ld	e, l
	ldhl	sp,#10
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
	jp	C,00106$
;../_divulong.c:348: reste -= y;
	pop	de
	push	de
	ld	a,e
	ldhl	sp,#10
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#14
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
;../_divulong.c:350: x |= 1L;
	ldhl	sp,#6
	ld	a,(hl)
	set	0, a
	ld	(hl),a
00106$:
;../_divulong.c:353: while (--count);
	ld	a,b
	add	a,#0xFF
	ld	b,a
	or	a, a
	jp	NZ,00105$
;../_divulong.c:354: return x;
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #4
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
