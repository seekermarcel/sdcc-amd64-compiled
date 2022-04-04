;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;../_ulong2fs.c:83: float __ulong2fs (unsigned long a )
;	---------------------------------
; Function __ulong2fs
; ---------------------------------
___ulong2fs::
	add	sp, #-14
;../_ulong2fs.c:88: if (!a)
	ldhl	sp,#19
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00115$
;../_ulong2fs.c:90: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00111$
;../_ulong2fs.c:93: while (a & NORM) 
00115$:
	ld	bc,#0x0096
00103$:
	ldhl	sp,#19
	ld	a,(hl)
	or	a, a
	jr	Z,00117$
;../_ulong2fs.c:96: a >>= 1;
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
;../_ulong2fs.c:97: exp++;
	inc	bc
	jr	00103$
;../_ulong2fs.c:100: while (a < HIDDEN)
00117$:
00106$:
	ldhl	sp,#16
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x80
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	jr	NC,00120$
;../_ulong2fs.c:102: a <<= 1;
	push	af
	pop	af
	ld	a,#0x01
	ldhl	sp,#16
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
;../_ulong2fs.c:103: exp--;
	dec	bc
	jr	00106$
00120$:
	ldhl	sp,#12
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_ulong2fs.c:107: if ((a&0x7fffff)==0x7fffff) {
	ldhl	sp,#16
	ld	a,(hl)
	ldhl	sp,#8
	ld	(hl),a
	ldhl	sp,#17
	ld	a,(hl)
	ldhl	sp,#9
	ld	(hl),a
	ldhl	sp,#18
	ld	a,(hl)
	and	a, #0x7F
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),#0x00
	ldhl	sp,#8
	ld	a,(hl)
	inc	a
	jr	NZ,00110$
	inc	hl
	ld	a,(hl)
	inc	a
	jr	NZ,00110$
	inc	hl
	ld	a,(hl)
	sub	a, #0x7F
	jr	NZ,00110$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	NZ,00110$
;../_ulong2fs.c:108: a=0;
	xor	a, a
	ldhl	sp,#16
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../_ulong2fs.c:109: exp++;
	inc	bc
	ldhl	sp,#12
	ld	(hl),c
	inc	hl
	ld	(hl),b
00110$:
;../_ulong2fs.c:113: a &= ~HIDDEN ;
	ldhl	sp,#18
	ld	a,(hl)
	res	7, a
	ld	(hl),a
;../_ulong2fs.c:115: fl.l = PACK(0,(unsigned long)exp, a);
	ldhl	sp,#0
	ld	a,l
	ld	d,h
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#12
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,#0x17
00146$:
	sla	d
	rl	e
	rl	c
	rl	b
	dec	a
	jr	NZ,00146$
	ld	a,d
	ldhl	sp,#16
	or	a, (hl)
	ldhl	sp,#4
	ld	(hl),a
	ld	a,e
	ldhl	sp,#17
	or	a, (hl)
	ldhl	sp,#5
	ld	(hl),a
	ld	a,c
	ldhl	sp,#18
	or	a, (hl)
	ldhl	sp,#6
	ld	(hl),a
	ld	a,b
	ldhl	sp,#19
	or	a, (hl)
	ldhl	sp,#7
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#4
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
;../_ulong2fs.c:117: return (fl.f);
	ldhl	sp,#0
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#4
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
00111$:
	add	sp, #14
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
