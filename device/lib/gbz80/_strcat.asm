;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strcat
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcat
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
	add	sp, #-2
;../_strcat.c:33: char * cp = dst;
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
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
	ldhl	sp,#6
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
00104$:
	pop	de
	push	de
	ld	a,(de)
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00127$
	inc	hl
	inc	(hl)
00127$:
	ld	(bc),a
	inc	bc
	or	a, a
	jr	NZ,00104$
;../_strcat.c:40: return( dst );                  /* return dst */
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
