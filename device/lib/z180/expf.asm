;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:38 2022
;--------------------------------------------------------
	.hd64
	.module expf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
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
;../expf.c:330: float expf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function expf
; ---------------------------------
_expf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-30
	add	hl,sp
	ld	sp,hl
;../expf.c:336: if(x>=0.0)
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
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00102$
;../expf.c:337: { y=x;  sign=0; }
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #34
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-30 (ix),#0x00
	jr	00103$
00102$:
;../expf.c:339: { y=-x; sign=1; }
	ld	a,7 (ix)
	xor	a,#0x80
	ld	-2 (ix),a
	ld	a,4 (ix)
	ld	-5 (ix),a
	ld	a,5 (ix)
	ld	-4 (ix),a
	ld	a,6 (ix)
	ld	-3 (ix),a
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #25
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-30 (ix),#0x01
00103$:
;../expf.c:341: if(y<EXPEPS) return 1.0;
	ld	hl,#0x33D6
	push	hl
	ld	hl,#0xBF95
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
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
	ld	-5 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00105$
	ld	hl,#0x0000
	ld	de,#0x3F80
	jp	00118$
00105$:
;../expf.c:343: if(y>BIGX)
	ld	hl,#0x42B1
	push	hl
	ld	hl,#0x7218
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	call	___fsgt
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
	jr	Z,00110$
;../expf.c:345: if(sign)
	bit	0,-30 (ix)
	jr	Z,00107$
;../expf.c:347: errno=ERANGE;
	ld	hl,#0x0022
	ld	(_errno),hl
;../expf.c:349: ;
	ld	hl,#0xFFFF
	ld	de,#0x7F7F
	jp	00118$
00107$:
;../expf.c:353: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00118$
00110$:
;../expf.c:357: z=y*K1;
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	ld	hl,#0x3FB8
	push	hl
	ld	hl,#0xAA3B
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
	ld	-22 (ix),d
	ld	-23 (ix),e
	ld	-24 (ix),h
	ld	-25 (ix),l
	ld	hl, #25
	add	hl, sp
	ex	de, hl
	ld	hl, #5
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:358: n=z;
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	___fs2sint
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-12 (ix),h
	ld	-13 (ix), l
	ld	-7 (ix), l
	ld	a,-12 (ix)
	ld	-6 (ix),a
;../expf.c:360: if(n<0) --n;
	bit	7, -6 (ix)
	jr	Z,00112$
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	dec	hl
	ld	-7 (ix),l
	ld	-6 (ix),h
00112$:
;../expf.c:361: if(z-n>=0.5) ++n;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	___sint2fs
	inc	sp
	inc	sp
	ex	de, hl
	push	hl
	push	de
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	___fssub
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
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fslt
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-5 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00114$
	inc	-7 (ix)
	jr	NZ,00148$
	inc	-6 (ix)
00148$:
00114$:
;../expf.c:362: xn=n;
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	call	___sint2fs
	inc	sp
	inc	sp
	ld	c,l
	ld	b,h
;../expf.c:363: g=((y-xn*C1))-xn*C2;
	push	bc
	push	de
	push	de
	push	bc
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x8000
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
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-27 (ix)
	ld	h,-26 (ix)
	push	hl
	ld	l,-29 (ix)
	ld	h,-28 (ix)
	push	hl
	call	___fssub
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	pop	de
	pop	bc
	push	de
	push	bc
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
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
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	___fssub
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-14 (ix),d
	ld	-15 (ix),e
	ld	-16 (ix),h
	ld	-17 (ix),l
;../expf.c:364: z=g*g;
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
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, #5
	add	hl, sp
	ex	de, hl
	ld	hl, #19
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:365: r=P(z)*g;
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	ld	hl,#0x3B88
	push	hl
	ld	hl,#0x5308
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
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl,#0x3E80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
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
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	l,-15 (ix)
	ld	h,-14 (ix)
	push	hl
	ld	l,-17 (ix)
	ld	h,-16 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
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
	ld	-18 (ix),d
	ld	-19 (ix),e
	ld	-20 (ix),h
	ld	-21 (ix),l
	ld	hl, #19
	add	hl, sp
	ex	de, hl
	ld	hl, #9
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:366: r=0.5+(r/(Q(z)-r));
	ld	l,-23 (ix)
	ld	h,-22 (ix)
	push	hl
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	push	hl
	ld	hl,#0x3D4C
	push	hl
	ld	hl,#0xBF5B
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
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
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
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	call	___fssub
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix),l
	ld	l,-3 (ix)
	ld	h,-2 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
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
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
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
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #19
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:368: n++;
	ld	a,-7 (ix)
	add	a, #0x01
	ld	-13 (ix),a
	ld	a,-6 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
;../expf.c:369: z=ldexpf(r, n);
	ld	l,-13 (ix)
	ld	h,-12 (ix)
	push	hl
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	call	_ldexpf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-8 (ix),d
	ld	-9 (ix),e
	ld	-10 (ix),h
	ld	-11 (ix),l
;../expf.c:370: if(sign)
	bit	0,-30 (ix)
	jr	Z,00116$
;../expf.c:371: return 1.0/z;
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
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
	ld	-2 (ix),d
	ld	-3 (ix),e
	ld	-4 (ix),h
	ld	-5 (ix), l
	ld	h,-4 (ix)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	jr	00118$
00116$:
;../expf.c:373: return z;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	ld	e,-9 (ix)
	ld	d,-8 (ix)
00118$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
