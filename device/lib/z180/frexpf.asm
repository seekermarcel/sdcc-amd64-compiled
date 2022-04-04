;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:38 2022
;--------------------------------------------------------
	.hd64
	.module frexpf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
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
;../frexpf.c:34: float frexpf(float x, int *pw2)
;	---------------------------------
; Function frexpf
; ---------------------------------
_frexpf::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
;../frexpf.c:39: fl.f=x;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../frexpf.c:41: i  = ( fl.l >> 23) & 0x000000ff;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,#0x17
00103$:
	sra	b
	rr	c
	rr	d
	rr	e
	dec	a
	jr	NZ,00103$
	ld	d,#0x00
	ld	bc,#0x0000
;../frexpf.c:42: i -= 0x7e;
	ld	a,e
	add	a,#0x82
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
	ld	a,c
	adc	a,#0xFF
	ld	a,b
	adc	a,#0xFF
;../frexpf.c:43: *pw2 = i;
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	pop	iy
	pop	hl
	ld	0 (iy),e
	ld	1 (iy),d
;../frexpf.c:44: fl.l &= 0x807fffff; /* strip all exponent bits */
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	res	7, c
	ld	a,b
	and	a, #0x80
	ld	b,a
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	hl
	dec	hl
	dec	hl
;../frexpf.c:45: fl.l |= 0x3f000000; /* mantissa between 0.5 and 1 */
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	ld	a,b
	or	a, #0x3F
	ld	b,a
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../frexpf.c:46: return(fl.f);
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
