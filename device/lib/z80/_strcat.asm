;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:26 2022
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
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
;../_strcat.c:31: char * strcat ( char * dst, const char * src )
;	---------------------------------
; Function strcat
; ---------------------------------
_strcat::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_strcat.c:33: char * cp = dst;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strcat.c:35: while( *cp )
00101$:
	ld	a,(bc)
	or	a, a
	jr	Z,00111$
;../_strcat.c:36: cp++;                   /* find end of dst */
	inc	bc
	jr	00101$
;../_strcat.c:38: while( *cp++ = *src++ ) ;       /* Copy src to end of dst */
00111$:
	ld	e,6 (ix)
	ld	d,7 (ix)
00104$:
	ld	a,(de)
	inc	de
	ld	(bc),a
	inc	bc
	or	a, a
	jr	NZ,00104$
;../_strcat.c:40: return( dst );                  /* return dst */
	ld	l,4 (ix)
	ld	h,5 (ix)
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
