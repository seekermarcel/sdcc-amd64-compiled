;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _uint2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uint2fs
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
;../_uint2fs.c:54: float __uint2fs (unsigned int ui) {
;	---------------------------------
; Function __uint2fs
; ---------------------------------
___uint2fs::
;../_uint2fs.c:55: return __ulong2fs(ui);
	ldhl	sp,#2
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	bc,#0x0000
	push	bc
	push	de
	call	___ulong2fs
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
