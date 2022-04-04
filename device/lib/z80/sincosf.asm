;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:22 2022
;--------------------------------------------------------
	.module sincosf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincosf
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
;../sincosf.c:50: float sincosf(float x, bool iscos)
;	---------------------------------
; Function sincosf
; ---------------------------------
_sincosf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-28
	add	hl,sp
	ld	sp,hl
;../sincosf.c:56: if(iscos)
	bit	0,8 (ix)
	jr	Z,00105$
;../sincosf.c:58: y=fabsf(x)+HALF_PI;
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
	ld	hl,#0x3FC9
	push	hl
	ld	hl,#0x0FDB
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-8 (ix),l
	ld	-7 (ix),h
	ld	-6 (ix),e
	ld	-5 (ix),d
;../sincosf.c:59: sign=0;
	ld	-28 (ix),#0x00
	jr	00106$
00105$:
;../sincosf.c:63: if(x<0.0)
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
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00102$
;../sincosf.c:64: { y=-x; sign=1; }
	ld	a,7 (ix)
	xor	a,#0x80
	ld	-5 (ix),a
	ld	a,4 (ix)
	ld	-8 (ix),a
	ld	a,5 (ix)
	ld	-7 (ix),a
	ld	a,6 (ix)
	ld	-6 (ix),a
	ld	-28 (ix),#0x01
	jr	00106$
00102$:
;../sincosf.c:66: { y=x; sign=0; }
	ld	hl, #20
	add	hl, sp
	ex	de, hl
	ld	hl, #32
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-28 (ix),#0x00
00106$:
;../sincosf.c:69: if(y>YMAX)
	ld	hl,#0x4649
	push	hl
	ld	hl,#0x0C00
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-9 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00108$
;../sincosf.c:71: errno=ERANGE;
	ld	hl,#0x0022
	ld	(_errno),hl
;../sincosf.c:72: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00115$
00108$:
;../sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	hl,#0x3EA2
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
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
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
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	call	___fs2sint
	pop	af
	pop	af
	ld	-26 (ix),h
	ld	-27 (ix), l
	ld	e, l
	ld	d,-26 (ix)
;../sincosf.c:79: if(N&1) sign=!sign;
	bit	0, e
	jr	Z,00110$
	ld	a,-28 (ix)
	xor	a, #0x01
	ld	-28 (ix),a
00110$:
;../sincosf.c:81: XN=N;
	push	de
	call	___sint2fs
	pop	af
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
;../sincosf.c:83: if(iscos) XN-=0.5;
	bit	0,8 (ix)
	jr	Z,00112$
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-5 (ix),d
	ld	-6 (ix),e
	ld	-7 (ix),h
	ld	-8 (ix),l
	ld	hl, #3
	add	hl, sp
	ex	de, hl
	ld	hl, #20
	add	hl, sp
	ld	bc, #4
	ldir
00112$:
;../sincosf.c:85: y=fabsf(x);
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
;../sincosf.c:86: r=(int)y;
	push	bc
	push	de
	push	de
	push	bc
	call	___fs2sint
	pop	af
	ex	(sp),hl
	call	___sint2fs
	pop	af
	ld	-14 (ix),d
	ld	-15 (ix),e
	ld	-16 (ix),h
	ld	-17 (ix),l
	pop	de
	pop	bc
	ld	a,-17 (ix)
	ld	-8 (ix),a
	ld	a,-16 (ix)
	ld	-7 (ix),a
	ld	a,-15 (ix)
	ld	-6 (ix),a
	ld	a,-14 (ix)
	ld	-5 (ix),a
;../sincosf.c:87: g=y-r;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	push	de
	push	bc
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	ld	hl,#0x4049
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
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
	ld	c,l
	ld	b,h
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	de
	push	bc
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
	ld	hl,#0x3A7D
	push	hl
	ld	hl,#0xAA22
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
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
	ld	-10 (ix),d
	ld	-11 (ix),e
	ld	-12 (ix),h
	ld	-13 (ix),l
;../sincosf.c:90: g=f*f;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
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
;../sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	ld	hl,#0x337F
	push	hl
	ld	hl,#0xFFF3
	push	hl
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix), l
	ld	a, l
	or	a, a
	jp	Z,00114$
;../sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	hl,#0x362E
	push	hl
	ld	hl,#0x9C5B
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0xB94F
	push	hl
	ld	hl,#0xB222
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
	ld	hl,#0x3C08
	push	hl
	ld	hl,#0x873E
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
	ld	hl,#0xBE2A
	push	hl
	ld	hl,#0xAAA4
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
	ex	de, hl
;../sincosf.c:94: f+=f*r;
	push	hl
	push	de
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
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
	ld	hl, #15
	add	hl, sp
	ex	de, hl
	ld	hl, #24
	add	hl, sp
	ld	bc, #4
	ldir
00114$:
;../sincosf.c:96: return (sign?-f:f);
	bit	0,-28 (ix)
	jr	Z,00117$
	ld	a,-10 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	ld	a,-13 (ix)
	ld	-4 (ix),a
	ld	a,-12 (ix)
	ld	-3 (ix),a
	ld	a,-11 (ix)
	ld	-2 (ix),a
	jr	00118$
00117$:
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	hl, #15
	add	hl, sp
	ld	bc, #4
	ldir
00118$:
	ld	l,-4 (ix)
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
