;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:29 2022
;--------------------------------------------------------
	.module _fssub
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fssub
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
;../_fssub.c:73: float __fssub (float a1, float a2)
;	---------------------------------
; Function __fssub
; ---------------------------------
___fssub::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_fssub.c:75: float neg = -a1;
	ld	a,7 (ix)
	xor	a,#0x80
	ld	b,a
	ld	e,4 (ix)
	ld	d,5 (ix)
	ld	c,6 (ix)
;../_fssub.c:76: return -(neg + a2);
	ld	hl, 10 (sp)
	push	hl
	ld	hl, 10 (sp)
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	a,d
	xor	a,#0x80
	ld	d,a
	pop	ix
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
