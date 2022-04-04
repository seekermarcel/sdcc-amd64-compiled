;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../_strcmp.c:34: int strcmp ( const char * asrc, const char * adst )
;	---------------------------------
; Function strcmp
; ---------------------------------
_strcmp::
	add	sp, #-7
;../_strcmp.c:40: const char * src = asrc;
	ldhl	sp,#10
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../_strcmp.c:41: const char * dst = adst;
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_strcmp.c:43: while( ! (*src - *dst) && *dst)
00102$:
	ld	a,(bc)
	ldhl	sp,#5
	ld	(hl),a
	rla
	sbc	a, a
	inc	hl
	ld	(hl),a
	pop	de
	push	de
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,(hl-)
	dec	hl
	ld	(hl+),a
	inc	hl
	ld	a,(hl)
	rla
	sbc	a, a
	dec	hl
	ld	(hl),a
	ldhl	sp,#6
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ldhl	sp,#3
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00104$
	inc	hl
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
;../_strcmp.c:44: ++src, ++dst;
	inc	bc
	ldhl	sp,#0
	inc	(hl)
	jp	NZ,00102$
	inc	hl
	inc	(hl)
	jp	00102$
00104$:
;../_strcmp.c:46: return *src - *dst;
	pop	bc
	pop	de
	push	de
	push	bc
	add	sp, #7
	ret
	.area _CODE
	.area _CABS (ABS)
