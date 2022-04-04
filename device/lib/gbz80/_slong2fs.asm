;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _slong2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs
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
;../_slong2fs.c:79: float __slong2fs (signed long sl) {
;	---------------------------------
; Function __slong2fs
; ---------------------------------
___slong2fs::
	add	sp, #-4
;../_slong2fs.c:80: if (sl<0) 
	ldhl	sp,#6
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
	jr	Z,00110$
	bit	7, d
	jr	NZ,00111$
	cp	a, a
	jr	00111$
00110$:
	bit	7, d
	jr	Z,00111$
	scf
00111$:
	jp	NC,00102$
;../_slong2fs.c:81: return -__ulong2fs(-sl);
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#6
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	ldhl	sp,#10
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
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___ulong2fs
	add	sp, #4
	push	hl
	ldhl	sp,#2
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#3
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	ldhl	sp,#0
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl),a
	pop	de
	push	de
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jr	00104$
00102$:
;../_slong2fs.c:83: return __ulong2fs(sl);
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___ulong2fs
	add	sp, #4
	ld	b,l
	ld	c,h
00104$:
	add	sp, #4
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
