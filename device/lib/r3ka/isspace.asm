;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:18 2022
;--------------------------------------------------------
	.r3k
	.module isspace
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;../isspace.c:37: int isspace (int c)
;	---------------------------------
; Function isspace
; ---------------------------------
_isspace::
	push	ix
	ld	ix,#0
	add	ix,sp
;../isspace.c:39: return (c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t' || c == '\v');
	ld	a,4 (ix)
	sub	a, #0x20
	jr	NZ,00142$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00142$:
	ld	a,4 (ix)
	sub	a, #0x0C
	jr	NZ,00143$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00143$:
	ld	a,4 (ix)
	sub	a, #0x0A
	jr	NZ,00144$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00144$:
	ld	a,4 (ix)
	sub	a, #0x0D
	jr	NZ,00145$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00145$:
	ld	a,4 (ix)
	sub	a, #0x09
	jr	NZ,00146$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00146$:
	ld	a,4 (ix)
	sub	a, #0x0B
	jr	NZ,00147$
	ld	a,5 (ix)
	or	a, a
	jr	Z,00104$
00147$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
