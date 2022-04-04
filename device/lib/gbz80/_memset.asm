;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _memset
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
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
;../_memset.c:41: void *memset (void *s, int c, size_t n)
;	---------------------------------
; Function memset
; ---------------------------------
_memset::
	add	sp, #-4
;../_memset.c:44: register unsigned char *ret = s;
	ldhl	sp,#6
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
;../_memset.c:46: while (n--)
	ldhl	sp,#11
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00101$:
	inc	sp
	inc	sp
	push	bc
	dec	bc
	ldhl	sp,#1
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00103$
;../_memset.c:48: *(unsigned char *) ret = c;
	ldhl	sp,#8
	ld	a,(hl)
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;../_memset.c:49: ret = ((unsigned char *) ret) + 1;
	dec	hl
	inc	(hl)
	jr	NZ,00101$
	inc	hl
	inc	(hl)
	jr	00101$
00103$:
;../_memset.c:52: return s;
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	add	sp, #4
	ret
	.area _CODE
	.area _CABS (ABS)
