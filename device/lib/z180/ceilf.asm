;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:42 2022
;--------------------------------------------------------
	.hd64
	.module ceilf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ceilf
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
;../ceilf.c:33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function ceilf
; ---------------------------------
_ceilf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;../ceilf.c:36: r=x;
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fs2slong
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../ceilf.c:38: return r;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___slong2fs
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
;../ceilf.c:37: if (r<0)
	bit	7, -5 (ix)
	jr	Z,00102$
;../ceilf.c:38: return r;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jr	00104$
00102$:
;../ceilf.c:40: return (r+((r<x)?1:0));
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fslt
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-4 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00106$
	ld	-4 (ix),#0x01
	jr	00107$
00106$:
	ld	-4 (ix),#0x00
00107$:
	ld	l,-4 (ix)
	ld	h,#0x00
	ld	a,h
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	a,-8 (ix)
	add	a, l
	ld	l,a
	ld	a,-7 (ix)
	adc	a, h
	ld	h,a
	ld	a,-6 (ix)
	adc	a, e
	ld	e,a
	ld	a,-5 (ix)
	adc	a, d
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	inc	sp
	inc	sp
	inc	sp
	inc	sp
00104$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
