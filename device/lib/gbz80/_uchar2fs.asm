;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _uchar2fs
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___uchar2fs
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
;../_uchar2fs.c:55: float __uchar2fs (unsigned char uc) {
;	---------------------------------
; Function __uchar2fs
; ---------------------------------
___uchar2fs::
;../_uchar2fs.c:56: return __ulong2fs(uc);
	ldhl	sp,#2
	ld	e,(hl)
	ld	d,#0x00
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
