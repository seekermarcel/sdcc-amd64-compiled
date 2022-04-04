;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:02 2022
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;../_strncpy.c:33: char *strncpy ( char * d, const char * s, size_t n )
;	---------------------------------
; Function strncpy
; ---------------------------------
_strncpy::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-2
;../_strncpy.c:35: register char * d1 =  d;
	ld	a,4 (ix)
	ld	-2 (ix),a
	ld	a,5 (ix)
	ld	-1 (ix),a
;../_strncpy.c:37: while ( n && *s )
	ex	de, hl
	ld	hl, 10 (sp)
	ex	de, hl
	ld	iy, 8 (sp)
	pop	bc
	push	bc
00102$:
	ld	a,d
	or	a,e
	jr	Z,00114$
	ld	h, 0 (iy)
	ld	a,h
	or	a, a
	jr	Z,00114$
;../_strncpy.c:39: n-- ;
	dec	de
;../_strncpy.c:40: *d++ = *s++ ;
	ld	a,h
	inc	iy
	ld	(bc),a
	inc	bc
	jr	00102$
;../_strncpy.c:42: while ( n-- )
00114$:
00105$:
	ld	h,e
	ld	l,d
	dec	de
	ld	a,l
	or	a,h
	jr	Z,00107$
;../_strncpy.c:44: *d++ = '\0' ;
	xor	a, a
	ld	(bc),a
	inc	bc
	jr	00105$
00107$:
;../_strncpy.c:46: return d1;
	ld	hl, 0 (sp)
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
