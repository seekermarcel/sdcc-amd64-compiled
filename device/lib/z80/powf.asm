;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:21 2022
;--------------------------------------------------------
	.module powf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf
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
;../powf.c:35: float powf(float x, float y)
;	---------------------------------
; Function powf
; ---------------------------------
_powf::
	push	ix
	ld	ix,#0
	add	ix,sp
;../powf.c:37: if(y == 0.0) return 1.0;
	ld	a,11 (ix)
	res	7, a
	or	a, 10 (ix)
	or	a, 9 (ix)
	or	a,8 (ix)
	jr	NZ,00102$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00107$
00102$:
;../powf.c:38: if(y == 1.0) return x;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	___fseq
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00104$
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	jr	00107$
00104$:
;../powf.c:39: if(x <= 0.0) return 0.0;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	NZ,00106$
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jr	00107$
00106$:
;../powf.c:40: return expf(logf(x) * y);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_logf
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	push	de
	push	bc
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	_expf
	pop	af
	pop	af
00107$:
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
