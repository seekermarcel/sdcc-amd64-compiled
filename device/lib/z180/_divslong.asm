;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:42 2022
;--------------------------------------------------------
	.hd64
	.module _divslong
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divslong
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
;../_divslong.c:259: _divslong (long x, long y)
;	---------------------------------
; Function _divslong
; ---------------------------------
__divslong::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-9
	add	hl,sp
	ld	sp,hl
;../_divslong.c:263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	ld	a,7 (ix)
	rlca
	and	a,#0x01
	ld	c,a
	or	a, a
	jr	Z,00106$
	xor	a, a
	sub	a, 4 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	d,a
	jr	00107$
00106$:
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
00107$:
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
	ld	a,11 (ix)
	rlca
	and	a,#0x01
	ld	-9 (ix), a
	or	a, a
	jr	Z,00108$
	xor	a, a
	sub	a, 8 (ix)
	ld	-4 (ix),a
	ld	a, #0x00
	sbc	a, 9 (ix)
	ld	-3 (ix),a
	ld	a, #0x00
	sbc	a, 10 (ix)
	ld	-2 (ix),a
	ld	a, #0x00
	sbc	a, 11 (ix)
	ld	-1 (ix),a
	jr	00109$
00108$:
	push	bc
	ld	hl, #7
	add	hl, sp
	ex	de, hl
	ld	hl, #19
	add	hl, sp
	ld	bc, #4
	ldir
	pop	bc
00109$:
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	bc
	push	hl
	push	de
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	__divulong
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	pop	bc
;../_divslong.c:264: if ((x < 0) ^ (y < 0))
	ld	a,c
	xor	a,-9 (ix)
	jr	Z,00102$
;../_divslong.c:265: return -r;
	xor	a, a
	sub	a, l
	ld	l,a
	ld	a, #0x00
	sbc	a, h
	ld	h,a
	ld	a, #0x00
	sbc	a, e
	ld	e,a
	ld	a, #0x00
	sbc	a, d
	ld	d,a
;../_divslong.c:267: return r;
00102$:
	ld	sp, ix
	pop	ix
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
