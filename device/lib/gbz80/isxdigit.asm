;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isxdigit
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isxdigit
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
;../isxdigit.c:33: int isxdigit (int c)
;	---------------------------------
; Function isxdigit
; ---------------------------------
_isxdigit::
	dec	sp
;../isxdigit.c:35: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x30
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00130$
	bit	7, d
	jr	NZ,00131$
	cp	a, a
	jr	00131$
00130$:
	bit	7, d
	jr	Z,00131$
	scf
00131$:
	jr	C,00111$
	ldhl	sp,#3
	ld	a,#0x39
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00132$
	bit	7, d
	jr	NZ,00133$
	cp	a, a
	jr	00133$
00132$:
	bit	7, d
	jr	Z,00133$
	scf
00133$:
	jp	NC,00104$
00111$:
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x61
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00134$
	bit	7, d
	jr	NZ,00135$
	cp	a, a
	jr	00135$
00134$:
	bit	7, d
	jr	Z,00135$
	scf
00135$:
	jr	C,00108$
	ldhl	sp,#3
	ld	a,#0x66
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00136$
	bit	7, d
	jr	NZ,00137$
	cp	a, a
	jr	00137$
00136$:
	bit	7, d
	jr	Z,00137$
	scf
00137$:
	jp	NC,00104$
00108$:
	ldhl	sp,#3
	ld	a, (hl)
	sub	a, #0x41
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00138$
	bit	7, d
	jr	NZ,00139$
	cp	a, a
	jr	00139$
00138$:
	bit	7, d
	jr	Z,00139$
	scf
00139$:
	jr	C,00103$
	ldhl	sp,#3
	ld	a,#0x46
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00140$
	bit	7, d
	jr	NZ,00141$
	cp	a, a
	jr	00141$
00140$:
	bit	7, d
	jr	Z,00141$
	scf
00141$:
	jr	NC,00104$
00103$:
	ld	a,#0x00
	jr	00105$
00104$:
	ld	a,#0x01
00105$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
