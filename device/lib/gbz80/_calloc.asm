;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc
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
;../_calloc.c:45: void __xdata * calloc (size_t nmemb, size_t size)
;	---------------------------------
; Function calloc
; ---------------------------------
_calloc::
;../_calloc.c:49: ptr = malloc(nmemb * size);
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__mulint
	add	sp, #4
	ld	c,e
	ld	b,d
	push	bc
	push	bc
	call	_malloc
	add	sp, #2
	pop	bc
;../_calloc.c:50: if (ptr)
	ld	a,d
	or	a,e
	ret	Z
;../_calloc.c:52: memset(ptr, 0, nmemb * size);
	push	de
	push	bc
	ld	hl,#0x0000
	push	hl
	push	de
	call	_memset
	add	sp, #6
	pop	de
;../_calloc.c:54: return ptr;
	ret
	.area _CODE
	.area _CABS (ABS)
