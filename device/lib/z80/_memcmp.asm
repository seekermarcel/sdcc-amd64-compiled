;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:28 2022
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;../_memcmp.c:31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	---------------------------------
; Function memcmp
; ---------------------------------
_memcmp::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;../_memcmp.c:33: if (!count)
	ld	a,9 (ix)
	or	a,8 (ix)
	jr	NZ,00112$
;../_memcmp.c:34: return(0);
	ld	hl,#0x0000
	jr	00107$
;../_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	ld	e,8 (ix)
	ld	d,9 (ix)
00104$:
	dec	de
	ld	a,d
	or	a,e
	jr	Z,00106$
	ld	c,4 (ix)
	ld	b,5 (ix)
	push	bc
	pop	iy
	ld	a, 0 (iy)
	ld	-2 (ix),a
	ld	c,6 (ix)
	ld	b,7 (ix)
	ld	a,(bc)
	ld	-1 (ix),a
	ld	a,-2 (ix)
	sub	a, -1 (ix)
	jr	NZ,00106$
;../_memcmp.c:37: buf1 = (char *)buf1 + 1;
	inc	iy
	push	iy
	pop	af
	ld	5 (ix),a
	push	iy
	dec	sp
	pop	af
	inc	sp
	ld	4 (ix),a
;../_memcmp.c:38: buf2 = (char *)buf2 + 1;
	inc	bc
	ld	6 (ix),c
	ld	7 (ix),b
	jr	00104$
00106$:
;../_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,(hl)
	ld	d,#0x00
	ld	l,6 (ix)
	ld	h,7 (ix)
	ld	l,(hl)
	ld	h,#0x00
	ld	a,e
	sub	a, l
	ld	l,a
	ld	a,d
	sbc	a, h
	ld	h,a
00107$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
