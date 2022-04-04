;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strncpy
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncpy
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
;../_strncpy.c:33: char *strncpy ( char * d, const char * s, size_t n )
;	---------------------------------
; Function strncpy
; ---------------------------------
_strncpy::
	add	sp, #-7
;../_strncpy.c:35: register char * d1 =  d;
	ldhl	sp,#9
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_strncpy.c:37: while ( n && *s )
	ldhl	sp,#14
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ldhl	sp,#11
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#0
	ld	a,(hl+)
	ld	e, (hl)
	inc	hl
	inc	hl
	ld	(hl+),a
	ld	(hl),e
00102$:
	ld	a,b
	or	a,c
	jr	Z,00114$
	ldhl	sp,#6
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#2
	ld	(hl),a
	ld	a,(hl)
	or	a, a
	jr	Z,00114$
;../_strncpy.c:39: n-- ;
	dec	bc
;../_strncpy.c:40: *d++ = *s++ ;
	ld	a,(hl)
	ldhl	sp,#5
	inc	(hl)
	jr	NZ,00132$
	inc	hl
	inc	(hl)
00132$:
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
	dec	hl
	inc	(hl)
	jr	NZ,00102$
	inc	hl
	inc	(hl)
	jp	00102$
;../_strncpy.c:42: while ( n-- )
00114$:
00105$:
	ldhl	sp,#5
	ld	(hl),c
	inc	hl
	ld	(hl),b
	dec	bc
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00107$
;../_strncpy.c:44: *d++ = '\0' ;
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),#0x00
	ldhl	sp,#3
	inc	(hl)
	jr	NZ,00105$
	inc	hl
	inc	(hl)
	jr	00105$
00107$:
;../_strncpy.c:46: return d1;
	pop	de
	push	de
	add	sp, #7
	ret
	.area _CODE
	.area _CABS (ABS)
