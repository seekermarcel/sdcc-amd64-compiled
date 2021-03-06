;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:37 2022
;--------------------------------------------------------
	.hd64
	.module fabsf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
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
;../fabsf.c:34: float fabsf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function fabsf
; ---------------------------------
_fabsf::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	dec	sp
	dec	sp
	dec	sp
;../fabsf.c:38: fl.f = x;
	ld	hl,#0x0000
	add	hl,sp
	ex	de,hl
	ld	hl, #0x0008
	add	hl, sp
	ld	bc, #0x0004
	ldir
;../fabsf.c:39: fl.l &= 0x7fffffff;
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	pop	hl
	res	7, b
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../fabsf.c:40: return fl.f;
	ld	hl,#0x0000
	add	hl,sp
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,b
	ld	h,c
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
