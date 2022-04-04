;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:52 2022
;--------------------------------------------------------
	.module _strlen
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
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
;../_strlen.c:35: size_t strlen ( const char * str )
;	---------------------------------
; Function strlen
; ---------------------------------
_strlen::
	add	sp, #-2
;../_strlen.c:39: while (*str++)
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00101$:
	ld	a,(bc)
	inc	bc
	or	a, a
	jr	Z,00103$
;../_strlen.c:40: i++ ;
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00101$
	inc	hl
	inc	(hl)
	jr	00101$
00103$:
;../_strlen.c:42: return i;
	pop	de
	push	de
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
