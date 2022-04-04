;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:38 2022
;--------------------------------------------------------
	.hd64
	.module ldexpf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;../ldexpf.c:34: float ldexpf(float x, int pw2)
;	---------------------------------
; Function ldexpf
; ---------------------------------
_ldexpf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;../ldexpf.c:39: fl.f = x;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0010
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	ld	hl,#0x0000
	add	hl,sp
	ld	e,l
	ld	d,h
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	ld	h,a
	ld	a,#0x17
00103$:
	sra	h
	rr	l
	rr	b
	rr	c
	dec	a
	jr	NZ,00103$
	ld	-8 (ix),c
	ld	-7 (ix),#0x00
	ld	-6 (ix),#0x00
	ld	-5 (ix),#0x00
;../ldexpf.c:42: e+=pw2;
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	a,9 (ix)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,-8 (ix)
	add	a, l
	ld	l,a
	ld	a,-7 (ix)
	adc	a, h
	ld	a,-6 (ix)
	adc	a, c
	ld	a,-5 (ix)
	adc	a, b
;../ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	ld	h,#0x00
	ld	bc,#0x0000
	push	af
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),c
	ld	-5 (ix),b
	pop	af
	ld	a,#0x17
00105$:
	sla	-8 (ix)
	rl	-7 (ix)
	rl	-6 (ix)
	rl	-5 (ix)
	dec	a
	jr	NZ,00105$
	ld	l, e
	ld	h, d
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	inc	hl
	ld	a,(hl)
	dec	hl
	ld	l,(hl)
	ld	h,a
	ld	-4 (ix),c
	ld	-3 (ix),b
	ld	a,l
	and	a, #0x7F
	ld	-2 (ix),a
	ld	a,h
	and	a, #0x80
	ld	-1 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	b,-6 (ix)
	ld	c,-5 (ix)
	ld	a,-4 (ix)
	or	a, l
	ld	-4 (ix),a
	ld	a,-3 (ix)
	or	a, h
	ld	-3 (ix),a
	ld	a,-2 (ix)
	or	a, b
	ld	-2 (ix),a
	ld	a,-1 (ix)
	or	a, c
	ld	-1 (ix),a
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../ldexpf.c:45: return(fl.f);
	ld	hl,#0x0000
	add	hl,sp
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,b
	ld	h,c
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
