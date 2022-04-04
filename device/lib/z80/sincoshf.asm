;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:24 2022
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
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
;../sincoshf.c:56: float sincoshf(float x, bool iscosh)
;	---------------------------------
; Function sincoshf
; ---------------------------------
_sincoshf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-18
	add	hl,sp
	ld	sp,hl
;../sincoshf.c:62: else { y=x;  sign=0; }
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #22
	add	hl, sp
	ld	bc, #4
	ldir
;../sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
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
	ld	a, l
	or	a, a
	jr	Z,00102$
	ld	a,7 (ix)
	xor	a,#0x80
	ld	d,a
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	e,6 (ix)
	ld	-18 (ix),#0x01
	jr	00103$
00102$:
;../sincoshf.c:62: else { y=x;  sign=0; }
	ld	c,-9 (ix)
	ld	b,-8 (ix)
	ld	e,-7 (ix)
	ld	d,-6 (ix)
	ld	-18 (ix),#0x00
00103$:
;../sincoshf.c:64: if ((y>1.0) || iscosh)
	push	bc
	push	de
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-5 (ix),l
	pop	de
	pop	bc
	ld	a,-5 (ix)
	or	a, a
	jr	NZ,00117$
	bit	0,8 (ix)
	jp	Z,00118$
00117$:
;../sincoshf.c:66: if(y>YBAR)
	push	bc
	push	de
	ld	hl,#0x4110
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-5 (ix),l
	pop	de
	pop	bc
	ld	a,-5 (ix)
	or	a, a
	jp	Z,00110$
;../sincoshf.c:68: w=y-K1;
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x7300
	push	hl
	push	de
	push	bc
	call	___fssub
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
;../sincoshf.c:69: if (w>WMAX)
	push	bc
	push	de
	ld	hl,#0x4233
	push	hl
	ld	hl,#0xBDCF
	push	hl
	push	de
	push	bc
	call	___fsgt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	pop	de
	pop	bc
	or	a, a
	jr	Z,00105$
;../sincoshf.c:71: errno=ERANGE;
	ld	hl,#0x0022
	ld	(_errno),hl
;../sincoshf.c:72: z=HUGE_VALF;
	ld	-4 (ix),#0xFF
	ld	-3 (ix),#0xFF
	ld	-2 (ix),#0x7F
	ld	-1 (ix),#0x7F
	jp	00111$
00105$:
;../sincoshf.c:76: z=expf(w);
	push	de
	push	bc
	call	_expf
	pop	af
	pop	af
	ld	c,l
	ld	b,h
;../sincoshf.c:77: z+=K3*z;
	push	bc
	push	de
	push	de
	push	bc
	ld	hl,#0x3768
	push	hl
	ld	hl,#0x0897
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-10 (ix),d
	ld	-11 (ix),e
	ld	-12 (ix),h
	ld	-13 (ix),l
	pop	de
	pop	bc
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
	jp	00111$
00110$:
;../sincoshf.c:82: z=expf(y);
	push	de
	push	bc
	call	_expf
	pop	af
	pop	af
	ld	c,l
	ld	b,h
;../sincoshf.c:83: w=1.0/z;
	push	bc
	push	de
	push	de
	push	bc
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-10 (ix),d
	ld	-11 (ix),e
	ld	-12 (ix),h
	ld	-13 (ix),l
	pop	de
	pop	bc
	ld	a,-13 (ix)
	ld	-17 (ix),a
	ld	a,-12 (ix)
	ld	-16 (ix),a
	ld	a,-11 (ix)
	ld	-15 (ix),a
	ld	a,-10 (ix)
	ld	-14 (ix),a
;../sincoshf.c:84: if(!iscosh) w=-w;
	bit	0,8 (ix)
	jr	NZ,00108$
	ld	a,-14 (ix)
	xor	a,#0x80
	ld	-14 (ix),a
00108$:
;../sincoshf.c:85: z=(z+w)*0.5;
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
	ex	de, hl
	push	hl
	push	de
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
00111$:
;../sincoshf.c:87: if(sign) z=-z;
	bit	0,-18 (ix)
	jp	Z,00119$
	ld	a,-1 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	jp	00119$
00118$:
;../sincoshf.c:91: if (y<EPS)
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fslt
	pop	af
	pop	af
	pop	af
	pop	af
	ld	a,l
	or	a, a
	jr	Z,00115$
;../sincoshf.c:92: z=x;
	ld	hl, #14
	add	hl, sp
	ex	de, hl
	ld	hl, #9
	add	hl, sp
	ld	bc, #4
	ldir
	jp	00119$
00115$:
;../sincoshf.c:95: z=x*x;
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-13 (ix),l
	ld	-12 (ix),h
	ld	-11 (ix),e
	ld	-10 (ix),d
;../sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	hl,#0xBE42
	push	hl
	ld	hl,#0xE6EA
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	c,l
	ld	b,h
	ld	hl,#0xC0E4
	push	hl
	ld	hl,#0x69F0
	push	hl
	push	de
	push	bc
	call	___fsadd
	pop	af
	pop	af
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	call	___fsmul
	pop	af
	pop	af
	pop	af
	pop	af
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl,#0xC22B
	push	hl
	ld	hl,#0x4F93
	push	hl
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
	ex	de, hl
	push	hl
	push	de
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	call	___fsdiv
	pop	af
	pop	af
	pop	af
	pop	af
	ex	de, hl
	push	hl
	push	de
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
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
00119$:
;../sincoshf.c:99: return z;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
