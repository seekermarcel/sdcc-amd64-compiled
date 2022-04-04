;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:45 2022
;--------------------------------------------------------
	.hd64
	.module _memcpy
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
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
;../_memcpy.c:36: void * memcpy (void * dst, const void * src, size_t acount)
;	---------------------------------
; Function memcpy
; ---------------------------------
_memcpy::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
;../_memcpy.c:38: void * ret = dst;
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
;../_memcpy.c:39: char * d = dst;
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
;../_memcpy.c:40: const char * s = src;
	ld	e,6 (ix)
	ld	d,7 (ix)
;../_memcpy.c:45: while (acount--) {
	ld	c,8 (ix)
	ld	b,9 (ix)
00101$:
	ld	h,c
	ld	l,b
	dec	bc
	ld	a,l
	or	a,h
	jr	Z,00103$
;../_memcpy.c:46: *d++ = *s++;
	ld	a,(de)
	inc	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),a
	inc	-2 (ix)
	jr	NZ,00101$
	inc	-1 (ix)
	jr	00101$
00103$:
;../_memcpy.c:49: return(ret);
	pop	hl
	push	hl
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
