;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:19 2022
;--------------------------------------------------------
	.r3k
	.module strxfrm
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strlen
	.globl _strxfrm
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
;../strxfrm.c:31: size_t strxfrm(char *dest, const char *src, size_t n)
;	---------------------------------
; Function strxfrm
; ---------------------------------
_strxfrm::
;../strxfrm.c:33: strncpy(dest, src, n);
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	ld	hl, 6 (sp)
	push	hl
	call	_strncpy
	add	sp, #6
;../strxfrm.c:34: return(strlen(src) + 1);
	ld	hl, 4 (sp)
	push	hl
	call	_strlen
	add	sp, #2
	inc	hl
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
