;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:24 2022
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;../atan2f.c:34: float atan2f(float x, float y)
;	---------------------------------
; Function atan2f
; ---------------------------------
_atan2f::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
;../atan2f.c:38: if ((x==0.0) && (y==0.0))
	ld	a,7 (ix)
	res	7, a
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00102$
	ld	a,11 (ix)
	res	7, a
	or	a, 10 (ix)
	or	a, 9 (ix)
	or	a,8 (ix)
	jr	NZ,00102$
;../atan2f.c:40: errno=EDOM;
	ld	hl,#0x0021
	ld	(_errno),hl
;../atan2f.c:41: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00109$
00102$:
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	_fabsf
	pop	af
	pop	af
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_fabsf
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
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
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	call	___fslt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fslt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a, l
	pop	bc
	ld	b,a
	or	a, a
	jp	NZ,00107$
;../atan2f.c:46: r=atanf(x/y);
	push	bc
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	_atanf
	pop	af
	pop	af
	pop	bc
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	bc
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	___fslt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	bc
	or	a, a
	jp	Z,00108$
	ld	a,c
	or	a, a
	jr	NZ,00111$
	ld	de,#0x0FDB
	ld	hl,#0x4049
	jr	00112$
00111$:
	ld	de,#0x0FDB
	ld	hl,#0xC049
00112$:
	push	hl
	push	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
	jr	00108$
00107$:
;../atan2f.c:51: r=-atanf(y/x);
	push	bc
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	_atanf
	pop	af
	pop	af
	pop	bc
	ld	a,d
	xor	a,#0x80
	ld	d,a
	ld	-12 (ix),l
	ld	-11 (ix),h
	ld	-10 (ix),e
	ld	-9 (ix),d
;../atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	ld	a,c
	or	a, a
	jr	Z,00113$
	ld	de,#0x0FDB
	ld	hl,#0xBFC9
	jr	00114$
00113$:
	ld	de,#0x0FDB
	ld	hl,#0x3FC9
00114$:
	push	hl
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
00108$:
;../atan2f.c:54: return r;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
00109$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
