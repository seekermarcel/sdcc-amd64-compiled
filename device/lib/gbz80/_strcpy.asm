;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:52 2022
;--------------------------------------------------------
	.module _strcpy
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcpy
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
;../_strcpy.c:34: char * strcpy ( char * d, const char * s )
;	---------------------------------
; Function strcpy
; ---------------------------------
_strcpy::
	add	sp, #-2
;../_strcpy.c:37: register char * to = d;
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../_strcpy.c:38: register const char * from = s;
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_strcpy.c:40: while (*to++ = *from++) ;
00101$:
	pop	de
	push	de
	ld	a,(de)
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00115$
	inc	hl
	inc	(hl)
00115$:
	ld	(bc),a
	inc	bc
	or	a, a
	jr	NZ,00101$
;../_strcpy.c:42: return d;
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
