;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _divulonglong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divulonglong
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
;../_divulonglong.c:39: _divulonglong (unsigned long long x, unsigned long long y)
;	---------------------------------
; Function _divulonglong
; ---------------------------------
__divulonglong::
	add	sp, #-8
;../_divulonglong.c:41: unsigned long long reste = 0L;
	xor	a, a
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../_divulonglong.c:42: unsigned char count = 64;
	ld	b,#0x40
;../_divulonglong.c:45: do
00105$:
;../_divulonglong.c:48: c = MSB_SET(x);
	ldhl	sp,#19
	ld	a,(hl)
	rlc	a
	and	a,#0x01
	ld	d,a
;../_divulonglong.c:49: x <<= 1;
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
;../_divulonglong.c:50: reste <<= 1;
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
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_divulonglong.c:51: if (c)
	bit	0,d
	jr	Z,00102$
;../_divulonglong.c:52: reste |= 1L;
	ldhl	sp,#0
	ld	a,(hl)
	set	0, a
	ld	(hl),a
00102$:
;../_divulonglong.c:54: if (reste >= y)
	ldhl	sp,#0
	ld	d, h
	ld	e, l
	ldhl	sp,#20
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
	jp	C,00106$
;../_divulonglong.c:56: reste -= y;
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#20
	sub	a, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#21
	sbc	a, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#22
	sbc	a, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#23
	sbc	a, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#24
	sbc	a, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#25
	sbc	a, (hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#26
	sbc	a, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#27
	sbc	a, (hl)
	ldhl	sp,#7
	ld	(hl),a
;../_divulonglong.c:58: x |= 1L;
	ldhl	sp,#12
	ld	a,(hl)
	set	0, a
	ld	(hl),a
00106$:
;../_divulonglong.c:61: while (--count);
	ld	a,b
	add	a,#0xFF
	ld	b,a
	or	a, a
	jp	NZ,00105$
;../_divulonglong.c:62: return x;
	ld	hl, #10
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ldhl	sp,#12
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
	add	sp, #8
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
