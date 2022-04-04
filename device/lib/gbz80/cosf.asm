;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module cosf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
	.globl _cosf
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
;../cosf.c:36: float cosf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function cosf
; ---------------------------------
_cosf::
;../cosf.c:38: if (x==0.0) return 1.0;
	ldhl	sp,#5
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
;../cosf.c:39: return sincosf(x, 1);
	ld	a,#0x01
	push	af
	inc	sp
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sincosf
	add	sp, #5
	ld	b,l
	ld	c,h
	ret
	.area _CODE
	.area _CABS (ABS)
