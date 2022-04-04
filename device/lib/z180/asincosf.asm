;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:40 2022
;--------------------------------------------------------
	.hd64
	.module asincosf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
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
;../asincosf.c:47: float asincosf(float x, bool isacos)
;	---------------------------------
; Function asincosf
; ---------------------------------
_asincosf::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-27
	add	hl,sp
	ld	sp,hl
;../asincosf.c:51: bool quartPI = isacos;
	ld	a,8 (ix)
	ld	-27 (ix),a
;../asincosf.c:56: y = fabsf(x);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_fabsf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-4 (ix),l
	ld	-3 (ix),h
	ld	-2 (ix),e
	ld	-1 (ix),d
;../asincosf.c:57: if (y < EPS)
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
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-13 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00107$
;../asincosf.c:59: r = y;
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	jp	00108$
00107$:
;../asincosf.c:63: if (y > 0.5)
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
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
	jp	Z,00104$
;../asincosf.c:65: quartPI = !isacos;
	ld	a,-27 (ix)
	xor	a, #0x01
	ld	-27 (ix),a
;../asincosf.c:66: if (y > 1.0)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
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
	jr	Z,00102$
;../asincosf.c:68: errno = EDOM;
	ld	hl,#0x0021
	ld	(_errno),hl
;../asincosf.c:69: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00117$
00102$:
;../asincosf.c:71: g = (0.5 - y) + 0.5;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
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
	ld	-18 (ix),d
	ld	-19 (ix),e
	ld	-20 (ix),h
	ld	-21 (ix),l
	ld	hl, #15
	add	hl, sp
	ex	de, hl
	ld	hl, #6
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:72: g = ldexpf(g, -1);
	ld	hl,#0xFFFF
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
	push	hl
	call	_ldexpf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	hl, #15
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:73: y = sqrtf(g);
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	call	_sqrtf
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	hl, #15
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:74: y = -(y + y);
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
	call	___fsadd
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	a,-9 (ix)
	xor	a,#0x80
	ld	-1 (ix),a
	ld	a,-12 (ix)
	ld	-4 (ix),a
	ld	a,-11 (ix)
	ld	-3 (ix),a
	ld	a,-10 (ix)
	ld	-2 (ix),a
	jr	00105$
00104$:
;../asincosf.c:78: g = y * y;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
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
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
00105$:
;../asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	ld	hl,#0xBF01
	push	hl
	ld	hl,#0x2065
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
	ld	hl,#0x3F6F
	push	hl
	ld	hl,#0x166B
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
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	push	de
	push	bc
	call	___fsmul
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-9 (ix),d
	ld	-10 (ix),e
	ld	-11 (ix),h
	ld	-12 (ix),l
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
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
	ld	l,-19 (ix)
	ld	h,-18 (ix)
	push	hl
	ld	l,-21 (ix)
	ld	h,-20 (ix)
	push	hl
	push	de
	push	bc
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
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
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
	push	hl
	push	de
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-12 (ix)
	ld	h,-11 (ix)
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
	call	___fsmul
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
00108$:
;../asincosf.c:82: i = quartPI;
	ld	a,-27 (ix)
	ld	-26 (ix),a
;../asincosf.c:85: if (x < 0.0)
	push	bc
	push	de
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
;../asincosf.c:86: r = (b[i] + r) + b[i];
	call	___fslt
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	-12 (ix),l
	pop	de
	pop	bc
	ld	l,-26 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	-4 (ix),l
	ld	-3 (ix),h
;../asincosf.c:83: if (isacos)
	bit	0,8 (ix)
	jp	Z,00115$
;../asincosf.c:85: if (x < 0.0)
	ld	a,-12 (ix)
	or	a, a
	jr	Z,00110$
;../asincosf.c:86: r = (b[i] + r) + b[i];
	ld	a,-4 (ix)
	add	a, #<(_asincosf_b_1_24)
	ld	h,a
	ld	a,-3 (ix)
	adc	a, #>(_asincosf_b_1_24)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0017
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
	jp	00116$
00110$:
;../asincosf.c:88: r = (a[i] - r) + a[i];
	ld	a,-4 (ix)
	add	a, #<(_asincosf_a_1_24)
	ld	h,a
	ld	a,-3 (ix)
	adc	a, #>(_asincosf_a_1_24)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0017
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
	jr	00116$
00115$:
;../asincosf.c:92: r = (a[i] + r) + a[i];
	ld	a,#<(_asincosf_a_1_24)
	add	a, -4 (ix)
	ld	h,a
	ld	a,#>(_asincosf_a_1_24)
	adc	a, -3 (ix)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0017
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
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
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
;../asincosf.c:93: if (x < 0.0)
	ld	a,-12 (ix)
	or	a, a
	jr	Z,00116$
;../asincosf.c:94: r = -r;
	ld	a,-22 (ix)
	xor	a,#0x80
	ld	-22 (ix),a
00116$:
;../asincosf.c:96: return r;
	ld	l,-25 (ix)
	ld	h,-24 (ix)
	ld	e,-23 (ix)
	ld	d,-22 (ix)
00117$:
	ld	sp, ix
	pop	ix
	ret
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
