;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:58 2022
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mr2k
	
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
	add	sp, #-27
;../asincosf.c:51: bool quartPI = isacos;
	ld	a,8 (ix)
	ld	-27 (ix),a
;../asincosf.c:56: y = fabsf(x);
	ld	hl, 33 (sp)
	push	hl
	ld	hl, 33 (sp)
	push	hl
	call	_fabsf
	add	sp, #4
	ld	-5 (ix),l
	ld	-4 (ix),h
	ld	-3 (ix),e
	ld	-2 (ix),d
;../asincosf.c:57: if (y < EPS)
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fslt
	add	sp, #8
	ld	-1 (ix), l
	ld	a, l
	or	a, a
	jr	Z,00107$
;../asincosf.c:59: r = y;
	ld	c,-5 (ix)
	ld	b,-4 (ix)
	ld	e,-3 (ix)
	ld	d,-2 (ix)
	jp	00108$
00107$:
;../asincosf.c:63: if (y > 0.5)
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
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
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fsgt
	add	sp, #8
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
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fssub
	add	sp, #8
	ld	-18 (ix),d
	ld	-19 (ix),e
	ld	-20 (ix),h
	ld	-21 (ix),l
	ld	hl, #18
	add	hl, sp
	ex	de, hl
	ld	hl, #6
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:72: g = ldexpf(g, -1);
	ld	hl,#0xFFFF
	push	hl
	ld	hl, 22 (sp)
	push	hl
	ld	hl, 22 (sp)
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, #6
	add	hl, sp
	ex	de, hl
	ld	hl, #18
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:73: y = sqrtf(g);
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	call	_sqrtf
	add	sp, #4
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl, #10
	add	hl, sp
	ex	de, hl
	ld	hl, #18
	add	hl, sp
	ld	bc, #4
	ldir
;../asincosf.c:74: y = -(y + y);
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	a,-6 (ix)
	xor	a,#0x80
	ld	-2 (ix),a
	ld	a,-9 (ix)
	ld	-5 (ix),a
	ld	a,-8 (ix)
	ld	-4 (ix),a
	ld	a,-7 (ix)
	ld	-3 (ix),a
	jr	00105$
00104$:
;../asincosf.c:78: g = y * y;
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ld	-21 (ix),l
	ld	-20 (ix),h
	ld	-19 (ix),e
	ld	-18 (ix),d
00105$:
;../asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	ld	hl,#0xBF01
	push	hl
	ld	hl,#0x2065
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F6F
	push	hl
	ld	hl,#0x166B
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	-6 (ix),d
	ld	-7 (ix),e
	ld	-8 (ix),h
	ld	-9 (ix),l
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
	ld	hl, 12 (sp)
	push	hl
	ld	hl, 12 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 8 (sp)
	push	hl
	ld	hl, 8 (sp)
	push	hl
	push	de
	push	bc
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 24 (sp)
	push	hl
	ld	hl, 24 (sp)
	push	hl
	call	___fsdiv
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fsmul
	add	sp, #8
	ex	de, hl
	push	hl
	push	de
	ld	hl, 28 (sp)
	push	hl
	ld	hl, 28 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
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
	ld	hl, 41 (sp)
	push	hl
	ld	hl, 41 (sp)
	push	hl
;../asincosf.c:86: r = (b[i] + r) + b[i];
	call	___fslt
	add	sp, #8
	ld	-9 (ix),l
	pop	de
	pop	bc
	ld	l,-26 (ix)
	ld	h,#0x00
	add	hl, hl
	add	hl, hl
	ld	22 (sp), hl
;../asincosf.c:83: if (isacos)
	bit	0,8 (ix)
	jp	Z,00115$
;../asincosf.c:85: if (x < 0.0)
	ld	a,-9 (ix)
	or	a, a
	jr	Z,00110$
;../asincosf.c:86: r = (b[i] + r) + b[i];
	ld	a,-5 (ix)
	add	a, #<(_asincosf_b_1_24)
	ld	h,a
	ld	a,-4 (ix)
	adc	a, #>(_asincosf_b_1_24)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0012
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
	jp	00116$
00110$:
;../asincosf.c:88: r = (a[i] - r) + a[i];
	ld	a,-5 (ix)
	add	a, #<(_asincosf_a_1_24)
	ld	h,a
	ld	a,-4 (ix)
	adc	a, #>(_asincosf_a_1_24)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0012
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
	jr	00116$
00115$:
;../asincosf.c:92: r = (a[i] + r) + a[i];
	ld	a,#<(_asincosf_a_1_24)
	add	a, -5 (ix)
	ld	h,a
	ld	a,#>(_asincosf_a_1_24)
	adc	a, -4 (ix)
	ld	l,a
	push	de
	push	bc
	ld	e, h
	ld	d, l
	ld	hl, #0x0012
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl, 20 (sp)
	push	hl
	ld	hl, 20 (sp)
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl, 16 (sp)
	push	hl
	ld	hl, 16 (sp)
	push	hl
	push	de
	push	bc
	call	___fsadd
	add	sp, #8
	ld	-25 (ix),l
	ld	-24 (ix),h
	ld	-23 (ix),e
	ld	-22 (ix),d
;../asincosf.c:93: if (x < 0.0)
	ld	a,-9 (ix)
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
