;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:37 2022
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mtlcs90
	
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
;../_calloc.c:49: ptr = malloc(nmemb * size);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	__mulint
	add	sp, #4
	ex	de,hl
	push	de
	push	de
	call	_malloc
	add	sp, #2
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
	add	sp, #6
	pop	hl
00102$:
;../_calloc.c:54: return ptr;
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
