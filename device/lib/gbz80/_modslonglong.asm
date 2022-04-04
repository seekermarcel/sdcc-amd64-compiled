;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _modslonglong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslonglong
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
;../_modslonglong.c:36: _modslonglong (long long numerator, long long denominator)
;	---------------------------------
; Function _modslonglong
; ---------------------------------
__modslonglong::
	add	sp, #-24
;../_modslonglong.c:38: bool numeratorneg = (numerator < 0);
	ldhl	sp,#28
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
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
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
	jr	Z,00121$
	bit	7, d
	jr	NZ,00122$
	cp	a, a
	jr	00122$
00121$:
	bit	7, d
	jr	Z,00122$
	scf
00122$:
	ld	a,#0x00
	rla
	ld	b,a
;../_modslonglong.c:39: bool denominatorneg = (denominator < 0);
	ldhl	sp,#36
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
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
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
	jr	Z,00123$
	bit	7, d
	jr	NZ,00124$
	cp	a, a
	jr	00124$
00123$:
	bit	7, d
	jr	Z,00124$
	scf
00124$:
	ld	a,#0x00
	rla
	ld	c,a
;../_modslonglong.c:42: if (numeratorneg)
	bit	0,b
	jp	Z,00102$
;../_modslonglong.c:43: numerator = -numerator;
	xor	a, a
	ldhl	sp,#28
	sub	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
00102$:
;../_modslonglong.c:44: if (denominatorneg)
	bit	0,c
	jp	Z,00104$
;../_modslonglong.c:45: denominator = -denominator;
	xor	a, a
	ldhl	sp,#36
	sub	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	(hl),a
00104$:
;../_modslonglong.c:47: r = (unsigned long long)numerator % (unsigned long long)denominator;
	push	hl
	ldhl	sp,#30
	ld	a,(hl)
	ldhl	sp,#18
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#31
	ld	a,(hl)
	ldhl	sp,#19
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#20
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#33
	ld	a,(hl)
	ldhl	sp,#21
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#34
	ld	a,(hl)
	ldhl	sp,#22
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#35
	ld	a,(hl)
	ldhl	sp,#23
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#36
	ld	a,(hl)
	ldhl	sp,#24
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#37
	ld	a,(hl)
	ldhl	sp,#25
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#38
	ld	a,(hl)
	ldhl	sp,#10
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#39
	ld	a,(hl)
	ldhl	sp,#11
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#40
	ld	a,(hl)
	ldhl	sp,#12
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#41
	ld	a,(hl)
	ldhl	sp,#13
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#42
	ld	a,(hl)
	ldhl	sp,#14
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#43
	ld	a,(hl)
	ldhl	sp,#15
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#44
	ld	a,(hl)
	ldhl	sp,#16
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#45
	ld	a,(hl)
	ldhl	sp,#17
	ld	(hl),a
	pop	hl
	push	bc
	ldhl	sp,#17
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	ldhl	sp,#33
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	ld	a,(hl)
	push	af
	inc	sp
	ld	hl,#0x0012
	add	hl, sp
	push	hl
	call	__modulonglong
	add	sp, #18
	pop	bc
;../_modslonglong.c:49: return ((numeratorneg ^ denominatorneg) ? -r : r);
	ld	a,b
	xor	a, c
	bit	0,a
	jp	Z,00107$
	xor	a, a
	ldhl	sp,#0
	sub	a, (hl)
	push	af
	ldhl	sp,#10
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#3
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#11
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#4
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#12
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#5
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#13
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#6
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#14
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#7
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#15
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#8
	pop	af
	sbc	a, (hl)
	push	af
	ldhl	sp,#16
	pop	af
	ld	(hl),a
	ld	a, #0x00
	push	af
	ldhl	sp,#9
	pop	af
	sbc	a, (hl)
	ldhl	sp,#15
	ld	(hl),a
	jp	00108$
00107$:
	push	hl
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#10
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#11
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#12
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#5
	ld	a,(hl)
	ldhl	sp,#13
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#6
	ld	a,(hl)
	ldhl	sp,#14
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#7
	ld	a,(hl)
	ldhl	sp,#15
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#8
	ld	a,(hl)
	ldhl	sp,#16
	ld	(hl),a
	pop	hl
	push	hl
	ldhl	sp,#9
	ld	a,(hl)
	ldhl	sp,#17
	ld	(hl),a
	pop	hl
00108$:
	ld	hl, #26
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ldhl	sp,#8
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
	add	sp, #24
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
