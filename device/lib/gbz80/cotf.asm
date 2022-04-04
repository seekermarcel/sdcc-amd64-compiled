;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module cotf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
	.globl _cotf
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
;../cotf.c:37: float cotf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function cotf
; ---------------------------------
_cotf::
;../cotf.c:41: y=fabsf(x);
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
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
;../cotf.c:42: if (y<1.0E-30) //This one requires more thinking...
	ld	hl,#0x0DA2
	push	hl
	ld	hl,#0x4260
	push	hl
	push	bc
	push	de
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jp	Z,00105$
;../cotf.c:44: errno = ERANGE;
	ld	hl,#_errno
	ld	(hl),#0x22
	inc	hl
	ld	(hl),#0x00
;../cotf.c:45: if (x<0.0)
	ld	hl,#0x0000
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
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00102$
;../cotf.c:46: return -HUGE_VALF;
	ld	de,#0xFFFF
	ld	hl,#0xFF7F
	ret
00102$:
;../cotf.c:48: return +HUGE_VALF;
	ld	de,#0xFFFF
	ld	hl,#0x7F7F
	ret
00105$:
;../cotf.c:50: return tancotf(x, 1);
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
	call	_tancotf
	add	sp, #5
	ld	b,l
	ld	c,h
	ret
	.area _CODE
	.area _CABS (ABS)
