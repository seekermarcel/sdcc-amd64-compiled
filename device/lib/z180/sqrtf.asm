;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:39 2022
;--------------------------------------------------------
	.hd64
	.module sqrtf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf
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
;../sqrtf.c:37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function sqrtf
; ---------------------------------
_sqrtf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;../sqrtf.c:42: if (x==0.0) return x;
	ld	a,7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00107$
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	e,6 (ix)
	ld	d,7 (ix)
	jp	00111$
00107$:
;../sqrtf.c:43: else if (x==1.0) return 1.0;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fseq
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	a,l
	or	a, a
	jr	Z,00104$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00111$
00104$:
;../sqrtf.c:44: else if (x<0.0)
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
	call	___fslt
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	a,l
	or	a, a
	jr	Z,00108$
;../sqrtf.c:46: errno=EDOM;
	ld	hl,#0x0021
	ld	(_errno),hl
;../sqrtf.c:47: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00111$
00108$:
;../sqrtf.c:49: f=frexpf(x, &n);
	ld	hl,#0x0000
	add	hl,sp
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_frexpf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../sqrtf.c:50: y=0.41731+0.59016*f; /*Educated guess*/
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	hl,#0x3F17
	push	hl
	ld	hl,#0x14BA
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
	ld	hl,#0x3ED5
	push	hl
	ld	hl,#0xA9A8
	push	hl
	push	de
	push	bc
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
;../sqrtf.c:52: y+=f/y;
	push	bc
	push	de
	push	de
	push	bc
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fsdiv
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	pop	de
	pop	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ex	de, hl
;../sqrtf.c:53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	push	hl
	push	de
	ld	bc,#0xFFFE
	push	bc
	push	hl
	push	de
	call	_ldexpf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fsdiv
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ex	de, hl
	push	hl
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
;../sqrtf.c:55: if (n&1)
	bit	0, -10 (ix)
	jr	Z,00110$
;../sqrtf.c:57: y*=0.7071067812;
	push	de
	push	bc
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
;../sqrtf.c:58: ++n;
	inc	-10 (ix)
	jr	NZ,00135$
	inc	-9 (ix)
00135$:
00110$:
;../sqrtf.c:60: return ldexpf(y, n/2);
	pop	hl
	push	hl
	bit	7, h
	jr	Z,00113$
	inc	hl
00113$:
	sra	h
	rr	l
	push	hl
	push	de
	push	bc
	call	_ldexpf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
00111$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
