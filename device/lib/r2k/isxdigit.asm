;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:00 2022
;--------------------------------------------------------
	.module isxdigit
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;../isxdigit.c:33: int isxdigit (int c)
;	---------------------------------
; Function isxdigit
; ---------------------------------
_isxdigit::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../isxdigit.c:35: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
	ld	hl, 5 (sp)
	ld	de, #0x8030
	add	hl, hl
	ccf
	rr	hl
	sbc	hl, de
	jr	C,00111$
	ld	a,#0x39
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P,00104$
00111$:
	ld	hl, 5 (sp)
	ld	de, #0x8061
	add	hl, hl
	ccf
	rr	hl
	sbc	hl, de
	jr	C,00108$
	ld	a,#0x66
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P,00104$
00108$:
	ld	hl, 5 (sp)
	ld	de, #0x8041
	add	hl, hl
	ccf
	rr	hl
	sbc	hl, de
	jr	C,00103$
	ld	a,#0x46
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	P,00104$
00103$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	inc	sp
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
