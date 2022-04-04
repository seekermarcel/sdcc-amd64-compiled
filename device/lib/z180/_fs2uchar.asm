;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:35 2022
;--------------------------------------------------------
	.hd64
	.module _fs2uchar
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uchar
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
;../_fs2uchar.c:51: unsigned char __fs2uchar (float f)
;	---------------------------------
; Function __fs2uchar
; ---------------------------------
___fs2uchar::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_fs2uchar.c:53: unsigned long ul=__fs2ulong(f);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fs2ulong
	inc	sp
	inc	sp
	inc	sp
	inc	sp
;../_fs2uchar.c:54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
	ld	a,l
	sub	a, #0xFF
	ld	a,h
	sbc	a, #0x00
	ld	a,e
	sbc	a, #0x00
	ld	a,d
	sbc	a, #0x00
	jr	C,00102$
	ld	l,#0xFF
;../_fs2uchar.c:55: return ul;
00102$:
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