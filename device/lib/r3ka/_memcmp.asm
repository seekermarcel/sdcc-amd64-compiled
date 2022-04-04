;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:20 2022
;--------------------------------------------------------
	.r3k
	.module _memcmp
	.optsdcc -mr3ka
	
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
	add	sp, #-4
;../_memcmp.c:33: if (!count)
	ld	a,9 (ix)
	or	a,8 (ix)
	jr	NZ,00112$
;../_memcmp.c:34: return(0);
	ld	hl,#0x0000
	jr	00107$
;../_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	ex	de, hl
	ld	hl, 12 (sp)
	ex	de, hl
00104$:
	dec	de
	ld	a,d
	or	a,e
	jr	Z,00106$
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
	ld	hl, 0 (sp)
	ld	b,(hl)
	ld	a,6 (ix)
	ld	-2 (ix),a
	ld	a,7 (ix)
	ld	-1 (ix),a
	ld	hl, 2 (sp)
	ld	c,(hl)
	ld	a,b
	sub	a, c
	jr	NZ,00106$
;../_memcmp.c:37: buf1 = (char *)buf1 + 1;
	ld	hl, 0 (sp)
	inc	hl
	ld	8 (sp), hl
;../_memcmp.c:38: buf2 = (char *)buf2 + 1;
	ld	hl, 2 (sp)
	inc	hl
	ld	10 (sp), hl
	jr	00104$
00106$:
;../_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	ld	hl, 8 (sp)
	ld	e,(hl)
	ld	d,#0x00
	ld	hl, 10 (sp)
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
