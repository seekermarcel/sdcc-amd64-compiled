;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:58 2022
;--------------------------------------------------------
	.module asinf
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _asinf
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
;../asinf.c:36: float asinf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function asinf
; ---------------------------------
_asinf::
;../asinf.c:38: if (x == 1.0) return  HALF_PI;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00108$
	ld	hl,#0x0FDB
	ld	de,#0x3FC9
	ret
00108$:
;../asinf.c:39: else if (x ==-1.0) return -HALF_PI;
	ld	hl,#0xBF80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00105$
	ld	hl,#0x0FDB
	ld	de,#0xBFC9
	ret
00105$:
;../asinf.c:40: else if (x == 0.0) return 0.0;
	ld	iy,#2
	add	iy,sp
	ld	a,3 (iy)
	res	7, a
	or	a, 2 (iy)
	or	a, 1 (iy)
	or	a,0 (iy)
	jr	NZ,00102$
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	ret
00102$:
;../asinf.c:41: else               return asincosf(x, false);
	xor	a, a
	push	af
	inc	sp
	ld	hl, 5 (sp)
	push	hl
	ld	hl, 5 (sp)
	push	hl
	call	_asincosf
	add	sp, #5
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
