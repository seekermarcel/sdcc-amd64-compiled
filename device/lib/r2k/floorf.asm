;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:59 2022
;--------------------------------------------------------
	.module floorf
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _floorf
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
;../floorf.c:33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function floorf
; ---------------------------------
_floorf::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-9
;../floorf.c:36: r=x;
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	call	___fs2slong
	add	sp, #4
	ld	-9 (ix),l
	ld	-8 (ix),h
	ld	-7 (ix),e
	ld	-6 (ix),d
;../floorf.c:38: return (r+((r>x)?-1:0));
	ld	hl, 2 (sp)
	push	hl
	ld	hl, 2 (sp)
	push	hl
	call	___slong2fs
	add	sp, #4
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
;../floorf.c:37: if (r<=0)
	xor	a, a
	cp	a, -9 (ix)
	sbc	a, -8 (ix)
	ld	a,#0x00
	sbc	a, -7 (ix)
	ld	a,#0x00
	sbc	a, -6 (ix)
	jp	PO, 00116$
	xor	a, #0x80
00116$:
	jp	M,00102$
;../floorf.c:38: return (r+((r>x)?-1:0));
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00106$
	ld	-1 (ix),#0xFF
	jr	00107$
00106$:
	ld	-1 (ix),#0x00
00107$:
	ld	l,-1 (ix)
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	h,a
	ld	e,a
	ld	d,a
	ld	a,-9 (ix)
	add	a, l
	ld	l,a
	ld	a,-8 (ix)
	adc	a, h
	ld	h,a
	ld	a,-7 (ix)
	adc	a, e
	ld	e,a
	ld	a,-6 (ix)
	adc	a, d
	ld	d,a
	push	de
	push	hl
	call	___slong2fs
	add	sp, #4
	jr	00104$
00102$:
;../floorf.c:40: return r;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
00104$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
