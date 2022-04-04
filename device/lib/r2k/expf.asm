;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:56 2022
;--------------------------------------------------------
	.module expf
	.optsdcc -mr2k
	
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
	add	sp, #-34
;../expf.c:336: if(x>=0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 44 (sp)
	push	hl
	ld	hl, 44 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-11 (ix), l
	ld	a, l
	or	a, a
	jr	NZ,00102$
;../expf.c:337: { y=x;  sign=0; }
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #38
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-34 (ix),#0x00
	jr	00103$
00102$:
;../expf.c:339: { y=-x; sign=1; }
	ld	a,7 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
	ld	a,6 (ix)
	ld	-2 (ix),a
	ld	hl, #1
	add	hl, sp
	ex	de, hl
	ld	hl, #30
	add	hl, sp
	ld	bc, #4
	ldir
	ld	-34 (ix),#0x01
00103$:
;../expf.c:341: if(y<EXPEPS) return 1.0;
	ld	hl,#0x33D6
	push	hl
	ld	hl,#0xBF95
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-4 (ix), l
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
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	Z,00110$
;../expf.c:345: if(sign)
	bit	0,-34 (ix)
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
	ld	hl, 3 (sp)
	push	hl
	ld	hl, 3 (sp)
	push	hl
	ld	hl,#0x3FB8
	push	hl
	ld	hl,#0xAA3B
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-26 (ix),d
	ld	-27 (ix),e
	ld	-28 (ix),h
	ld	-29 (ix),l
	ld	hl, #30
	add	hl, sp
	ex	de, hl
	ld	hl, #5
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:358: n=z;
	ld	hl, 32 (sp)
	push	hl
	ld	hl, 32 (sp)
	push	hl
	call	___fs2sint
	add	sp, #4
	ld	-12 (ix),h
	ld	-13 (ix), l
	ld	-6 (ix), l
	ld	a,-12 (ix)
	ld	-5 (ix),a
;../expf.c:360: if(n<0) --n;
	bit	7, -5 (ix)
	jr	Z,00112$
	ld	hl, 28 (sp)
	dec	hl
	ld	28 (sp), hl
00112$:
;../expf.c:361: if(z-n>=0.5) ++n;
	ld	hl, 28 (sp)
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl, 26 (sp)
	push	hl
	ld	hl, 26 (sp)
	push	hl
	ld	hl, 36 (sp)
	push	hl
	ld	hl, 36 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,l
	or	a, a
	jr	NZ,00114$
	inc	-6 (ix)
	jr	NZ,00148$
	inc	-5 (ix)
00148$:
00114$:
;../expf.c:362: xn=n;
	ld	hl, 28 (sp)
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	-17 (ix),l
	ld	-16 (ix),h
	ld	-15 (ix),e
	ld	-14 (ix),d
;../expf.c:363: g=((y-xn*C1))-xn*C2;
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x8000
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	-18 (ix),d
	ld	-19 (ix),e
	ld	-20 (ix),h
	ld	-21 (ix),l
;../expf.c:364: z=g*g;
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	ld	hl, 19 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-29 (ix),l
	ld	-28 (ix),h
	ld	-27 (ix),e
	ld	-26 (ix),d
;../expf.c:365: r=P(z)*g;
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x3B88
	push	hl
	ld	hl,#0x5308
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3E80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 15 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-22 (ix),d
	ld	-23 (ix),e
	ld	-24 (ix),h
	ld	-25 (ix),l
	ld	hl, #24
	add	hl, sp
	ex	de, hl
	ld	hl, #9
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:366: r=0.5+(r/(Q(z)-r));
	ld	hl, 7 (sp)
	push	hl
	ld	hl, 7 (sp)
	push	hl
	ld	hl,#0x3D4C
	push	hl
	ld	hl,#0xBF5B
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 26 (sp)
	push	hl
	ld	hl, 26 (sp)
	push	hl
	push	de
	push	bc
	call	___fssub
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 30 (sp)
	push	hl
	ld	hl, 30 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
	ld	hl, #9
	add	hl, sp
	ex	de, hl
	ld	hl, #24
	add	hl, sp
	ld	bc, #4
	ldir
;../expf.c:368: n++;
	ld	a,-6 (ix)
	add	a, #0x01
	ld	-13 (ix),a
	ld	a,-5 (ix)
	adc	a, #0x00
	ld	-12 (ix),a
;../expf.c:369: z=ldexpf(r, n);
	ld	hl, 21 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	ld	hl, 13 (sp)
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	-7 (ix),d
	ld	-8 (ix),e
	ld	-9 (ix),h
	ld	-10 (ix),l
;../expf.c:370: if(sign)
	bit	0,-34 (ix)
	jr	Z,00116$
;../expf.c:371: return 1.0/z;
	ld	hl, 26 (sp)
	push	hl
	ld	hl, 26 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	-1 (ix),d
	ld	-2 (ix),e
	ld	-3 (ix),h
	ld	-4 (ix), l
	ld	h,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jr	00118$
00116$:
;../expf.c:373: return z;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	ld	e,-8 (ix)
	ld	d,-7 (ix)
00118$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
