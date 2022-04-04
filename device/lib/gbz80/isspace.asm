;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isspace
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isspace
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
;../isspace.c:37: int isspace (int c)
;	---------------------------------
; Function isspace
; ---------------------------------
_isspace::
;../isspace.c:39: return (c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t' || c == '\v');
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x20
	jr	NZ,00142$
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00104$
00142$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0C
	jr	NZ,00143$
	inc	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00104$
00143$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0A
	jr	NZ,00144$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
00144$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0D
	jr	NZ,00145$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
00145$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x09
	jr	NZ,00146$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
00146$:
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0B
	jr	NZ,00147$
	inc	hl
	ld	a,(hl)
	or	a, a
	jr	Z,00104$
00147$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ret
	.area _CODE
	.area _CABS (ABS)
