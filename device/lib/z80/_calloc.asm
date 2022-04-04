;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:28 2022
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _malloc
	.globl _calloc
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
;../_calloc.c:45: void __xdata * calloc (size_t nmemb, size_t size)
;	---------------------------------
; Function calloc
; ---------------------------------
_calloc::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_calloc.c:49: ptr = malloc(nmemb * size);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__mulint
	pop	af
	pop	af
	ex	de,hl
	push	de
	push	de
	call	_malloc
	pop	af
	pop	de
;../_calloc.c:50: if (ptr)
	ld	a,h
	or	a,l
	jr	Z,00102$
;../_calloc.c:52: memset(ptr, 0, nmemb * size);
	push	hl
	push	de
	ld	bc,#0x0000
	push	bc
	push	hl
	call	_memset
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	hl
00102$:
;../_calloc.c:54: return ptr;
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
