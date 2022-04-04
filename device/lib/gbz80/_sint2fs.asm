;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _sint2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___slong2fs
	.globl ___sint2fs
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
;../_sint2fs.c:54: float __sint2fs (signed int si) {
;	---------------------------------
; Function __sint2fs
; ---------------------------------
___sint2fs::
;../_sint2fs.c:55: return __slong2fs(si);
	ldhl	sp,#2
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	push	bc
	push	de
	call	___slong2fs
	add	sp, #4
	ld	b,l
	ld	c,h
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
