;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:23 2022
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
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
;../tancotf.c:53: float tancotf(float x, bool iscotan)
;	---------------------------------
; Function tancotf
; ---------------------------------
_tancotf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-35
	add	hl,sp
	ld	sp,hl
;../tancotf.c:58: if (fabsf(x) > YMAX)
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_fabsf
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x45C9
	push	hl
	ld	hl,#0x0800
	push	hl
	push	de
	push	bc
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-13 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00102$
;../tancotf.c:60: errno = ERANGE;
	ld	hl,#0x0022
	ld	(_errno),hl
;../tancotf.c:61: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00115$
00102$:
;../tancotf.c:65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	hl,#0x3F22
	push	hl
	ld	hl,#0xF983
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
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
	jr	Z,00117$
	ld	bc,#0x0000
	ld	hl,#0x3F00
	jr	00118$
00117$:
	ld	bc,#0x0000
	ld	hl,#0xBF00
00118$:
	push	hl
	push	bc
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	push	de
	push	hl
	call	___fs2sint
	pop	af
	pop	af
	inc	sp
	inc	sp
	push	hl
;../tancotf.c:66: xn=n;
	pop	hl
	push	hl
	push	hl
	call	___sint2fs
	pop	af
	ld	-22 (ix),d
	ld	-23 (ix),e
	ld	-24 (ix),h
	ld	-25 (ix),l
;../tancotf.c:68: xnum=(int)x;
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fs2sint
	pop	af
	pop	af
	ld	-7 (ix),h
	ld	-8 (ix), l
	ld	h,-7 (ix)
	push	hl
	call	___sint2fs
	pop	af
	ld	-26 (ix),d
	ld	-27 (ix),e
	ld	-28 (ix),h
	ld	-29 (ix),l
	ld	hl, #27
	add	hl, sp
	ex	de, hl
	ld	hl, #6
	add	hl, sp
	ld	bc, #4
	ldir
;../tancotf.c:69: xden=x-xnum;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-30 (ix),d
	ld	-31 (ix),e
	ld	-32 (ix),h
	ld	-33 (ix),l
	ld	hl, #23
	add	hl, sp
	ex	de, hl
	ld	hl, #2
	add	hl, sp
	ld	bc, #4
	ldir
;../tancotf.c:70: f=((xnum-xn*C1)+xden)-xn*C2;
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	ld	hl,#0x3FC9
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
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
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
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
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	ld	hl,#0x39FD
	push	hl
	ld	hl,#0xAA22
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-14 (ix),d
	ld	-15 (ix),e
	ld	-16 (ix),h
	ld	-17 (ix),l
;../tancotf.c:72: if (fabsf(f) < EPS)
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	call	_fabsf
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix),l
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fslt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00104$
;../tancotf.c:74: xnum = f;
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	hl, #18
	add	hl, sp
	ld	bc, #4
	ldir
;../tancotf.c:75: xden = 1.0;
	ld	-33 (ix),#0x00
	ld	-32 (ix),#0x00
	ld	-31 (ix),#0x80
	ld	-30 (ix),#0x3F
	jp	00105$
00104$:
;../tancotf.c:79: g = f*f;
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
;../tancotf.c:80: xnum = P(f,g);
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	hl,#0xBDC4
	push	hl
	ld	hl,#0x33B8
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	push	de
	push	bc
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-29 (ix),l
	ld	-28 (ix),h
	ld	-27 (ix),e
	ld	-26 (ix),d
;../tancotf.c:81: xden = Q(g);
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	hl,#0x3C1F
	push	hl
	ld	hl,#0x3375
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0xBEDB
	push	hl
	ld	hl,#0xB7AF
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	push	de
	push	bc
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-33 (ix),l
	ld	-32 (ix),h
	ld	-31 (ix),e
	ld	-30 (ix),d
00105$:
;../tancotf.c:84: if(n&1)
	bit	0, -35 (ix)
	jp	Z,00113$
;../tancotf.c:87: if(iscotan) return (-xnum/xden);
	bit	0,8 (ix)
	jr	Z,00107$
	ld	a,-26 (ix)
	xor	a,#0x80
	ld	b,a
	ld	e,-29 (ix)
	ld	d,-28 (ix)
	ld	c,-27 (ix)
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	push	hl
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	push	hl
	push	bc
	push	de
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	jp	00115$
00107$:
;../tancotf.c:88: else return (-xden/xnum);
	ld	a,-30 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	ld	a,-33 (ix)
	ld	-4 (ix),a
	ld	a,-32 (ix)
	ld	-3 (ix),a
	ld	a,-31 (ix)
	ld	-2 (ix),a
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix), l
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jr	00115$
00113$:
;../tancotf.c:92: if(iscotan) return (xden/xnum);
	bit	0,8 (ix)
	jr	Z,00110$
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	push	hl
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	jr	00115$
00110$:
;../tancotf.c:93: else return (xnum/xden);
	ld	l,-31 (ix)
	ld	h,-30 (ix)
	push	hl
	ld	l,-33 (ix)
	ld	h,-32 (ix)
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix), l
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
00115$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
