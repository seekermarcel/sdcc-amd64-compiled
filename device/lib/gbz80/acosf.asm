;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:46 2022
;--------------------------------------------------------
	.module acosf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _acosf
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
;../acosf.c:36: float acosf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function acosf
; ---------------------------------
_acosf::
;../acosf.c:38: if (x == 1.0) return 0.0;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00108$
	ld	de,#0x0000
	ld	hl,#0x0000
	ret
00108$:
;../acosf.c:39: else if (x ==-1.0) return PI;
	ld	hl,#0xBF80
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00105$
	ld	de,#0x0FDB
	ld	hl,#0x4049
	ret
00105$:
;../acosf.c:40: else if (x == 0.0) return HALF_PI;
	ldhl	sp,#5
	ld	a,(hl)
	res	7, a
	dec	hl
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
	ld	de,#0x0FDB
	ld	hl,#0x3FC9
	ret
00102$:
;../acosf.c:41: else               return asincosf(x, true);
	ld	a,#0x01
	push	af
	inc	sp
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_asincosf
	add	sp, #5
	ld	b,l
	ld	c,h
	ret
	.area _CODE
	.area _CABS (ABS)
