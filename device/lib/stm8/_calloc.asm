;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _calloc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _malloc
	.globl _calloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_calloc.c: 45: void __xdata * calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
_calloc:
	sub	sp, #2
;	../_calloc.c: 49: ptr = malloc(nmemb * size);
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	__mulint
	addw	sp, #4
	ldw	(0x01, sp), x
	ldw	x, (0x01, sp)
	pushw	x
	call	_malloc
	addw	sp, #2
;	../_calloc.c: 50: if (ptr)
	tnzw	x
	jreq	00102$
;	../_calloc.c: 52: memset(ptr, 0, nmemb * size);
	pushw	x
	ldw	y, (0x03, sp)
	pushw	y
	push	#0x00
	push	#0x00
	pushw	x
	call	_memset
	addw	sp, #6
	popw	x
00102$:
;	../_calloc.c: 54: return ptr;
	addw	sp, #2
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
