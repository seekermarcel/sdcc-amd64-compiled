;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:34 2022
;--------------------------------------------------------
	.hd64
	.module _slong2fs
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
	.globl ___slong2fs
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
;../_slong2fs.c:79: float __slong2fs (signed long sl) {
;	---------------------------------
; Function __slong2fs
; ---------------------------------
___slong2fs::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_slong2fs.c:80: if (sl<0) 
	bit	7, 7 (ix)
	jr	Z,00102$
;../_slong2fs.c:81: return -__ulong2fs(-sl);
	xor	a, a
	sub	a, 4 (ix)
	ld	l,a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	h,a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	e,a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	d,a
	push	de
	push	hl
	call	___ulong2fs
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	a,d
	xor	a,#0x80
	ld	d,a
	jr	00104$
00102$:
;../_slong2fs.c:83: return __ulong2fs(sl);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___ulong2fs
	inc	sp
	inc	sp
	inc	sp
	inc	sp
00104$:
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
