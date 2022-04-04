;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module powf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf
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
;../powf.c:35: float powf(float x, float y)
;	---------------------------------
; Function powf
; ---------------------------------
_powf::
;../powf.c:37: if(y == 0.0) return 1.0;
	ldhl	sp,#9
	ld	a,(hl)
	res	7, a
	dec	hl
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
	ld	de,#0x0000
	ld	hl,#0x3F80
	ret
00102$:
;../powf.c:38: if(y == 1.0) return x;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00104$
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
00104$:
;../powf.c:39: if(x <= 0.0) return 0.0;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	NZ,00106$
	ld	de,#0x0000
	ld	hl,#0x0000
	ret
00106$:
;../powf.c:40: return expf(logf(x) * y);
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_logf
	add	sp, #4
	ld	c,l
	ld	b,h
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
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	call	_expf
	add	sp, #4
	ld	b,l
	ld	c,h
	ret
	.area _CODE
	.area _CABS (ABS)
