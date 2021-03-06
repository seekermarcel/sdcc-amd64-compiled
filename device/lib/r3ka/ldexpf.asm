;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:12 2022
;--------------------------------------------------------
	.r3k
	.module ldexpf
	.optsdcc -mr3ka
	
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
	add	sp, #-14
;../ldexpf.c:39: fl.f = x;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0012
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../ldexpf.c:41: e=(fl.l >> 23) & 0x000000ff;
	ld	hl,#0x0000
	add	hl,sp
	ld	8 (sp), hl
	ld	hl, 8 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x17
00103$:
	sra	b
	rr	c
	rr	de
	dec	a
	jr	NZ,00103$
	ld	-4 (ix),e
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
;../ldexpf.c:42: e+=pw2;
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	a,9 (ix)
	rla
	sbc	a, a
	ld	e,a
	ld	d,a
	ld	a,-4 (ix)
	add	a, l
	ld	l,a
	ld	a,-3 (ix)
	adc	a, h
	ld	a,-2 (ix)
	adc	a, e
	ld	a,-1 (ix)
	adc	a, d
;../ldexpf.c:43: fl.l= ((e & 0xff) << 23) | (fl.l & 0x807fffff);
	ld	h,#0x00
	ld	de,#0x0000
	push	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
	pop	af
	ld	a,#0x17
00105$:
	sla	-4 (ix)
	rl	-3 (ix)
	rl	-2 (ix)
	rl	-1 (ix)
	dec	a
	jr	NZ,00105$
	ld	hl, 8 (sp)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	-10 (ix),e
	ld	-9 (ix),d
	ld	a,c
	and	a, #0x7F
	ld	-8 (ix),a
	ld	a,b
	and	a, #0x80
	ld	-7 (ix),a
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,e
	or	a, -10 (ix)
	ld	e,a
	ld	a,d
	or	a, -9 (ix)
	ld	d,a
	ld	a,l
	or	a, -8 (ix)
	ld	b,a
	ld	a,h
	or	a, -7 (ix)
	ld	c,a
	ld	hl, 8 (sp)
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
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
