;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:18 2022
;--------------------------------------------------------
	.r3k
	.module _strcmp
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp
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
;../_strcmp.c:34: int strcmp ( const char * asrc, const char * adst )
;	---------------------------------
; Function strcmp
; ---------------------------------
_strcmp::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../_strcmp.c:40: const char * src = asrc;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strcmp.c:41: const char * dst = adst;
	ld	iy, 7 (sp)
;../_strcmp.c:43: while( ! (*src - *dst) && *dst)
00102$:
	ld	a,(bc)
	ld	d,a
	rla
	sbc	a, a
	ld	e,a
	ld	a, 0 (iy)
	ld	-1 (ix), a
	ld	l, a
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	h,a
	ld	a,d
	sub	a, l
	ld	l,a
	ld	a,e
	sbc	a, h
	ld	h,a
	or	a,l
	jr	NZ,00104$
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00104$
;../_strcmp.c:44: ++src, ++dst;
	inc	bc
	inc	iy
	jr	00102$
00104$:
;../_strcmp.c:46: return *src - *dst;
	inc	sp
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
