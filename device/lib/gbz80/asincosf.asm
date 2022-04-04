;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:46 2022
;--------------------------------------------------------
	.module asincosf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _asincosf
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
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
;../asincosf.c:47: float asincosf(float x, bool isacos)
;	---------------------------------
; Function asincosf
; ---------------------------------
_asincosf::
	add	sp, #-31
;../asincosf.c:51: bool quartPI = isacos;
	push	hl
	ldhl	sp,#39
	ld	a,(hl)
	ldhl	sp,#2
	ld	(hl),a
	pop	hl
;../asincosf.c:56: y = fabsf(x);
	ldhl	sp,#35
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#35
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_fabsf
	add	sp, #4
	ld	b,l
	ld	c,h
	ldhl	sp,#27
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../asincosf.c:57: if (y < EPS)
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fslt
	add	sp, #8
	ld	c,e
	ld	a,c
	or	a, a
	jr	Z,00107$
;../asincosf.c:59: r = y;
	ldhl	sp,#27
	ld	d,h
	ld	e,l
	ldhl	sp,#9
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	jp	00108$
00107$:
;../asincosf.c:63: if (y > 0.5)
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jp	Z,00104$
;../asincosf.c:65: quartPI = !isacos;
	ldhl	sp,#0
	ld	a,(hl)
	xor	a, #0x01
	ld	(hl),a
;../asincosf.c:66: if (y > 1.0)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00102$
;../asincosf.c:68: errno = EDOM;
	ld	hl,#_errno
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0x00
;../asincosf.c:69: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00117$
00102$:
;../asincosf.c:71: g = (0.5 - y) + 0.5;
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
;../asincosf.c:72: g = ldexpf(g, -1);
	ld	hl,#0xFFFF
	push	hl
	push	bc
	push	de
	call	_ldexpf
	add	sp, #6
	ld	b,l
	ld	c,h
	ldhl	sp,#5
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../asincosf.c:73: y = sqrtf(g);
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_sqrtf
	add	sp, #4
	ld	c,l
	ld	b,h
;../asincosf.c:74: y = -(y + y);
	push	bc
	push	de
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	push	hl
	ldhl	sp,#21
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#22
	ld	a,(hl)
	xor	a,#0x80
	ldhl	sp,#30
	ld	(hl),a
	ldhl	sp,#19
	ld	a,(hl)
	ldhl	sp,#27
	ld	(hl),a
	ldhl	sp,#20
	ld	a,(hl)
	ldhl	sp,#28
	ld	(hl),a
	ldhl	sp,#21
	ld	a,(hl)
	ldhl	sp,#29
	ld	(hl),a
	jp	00105$
00104$:
;../asincosf.c:78: g = y * y;
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#5
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
00105$:
;../asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
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
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	push	hl
	ldhl	sp,#21
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	hl,#0xC0B1
	push	hl
	ld	hl,#0x8D0B
	push	hl
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x40B3
	push	hl
	ld	hl,#0x50F0
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#33
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ldhl	sp,#9
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
00108$:
;../asincosf.c:82: i = quartPI;
	ldhl	sp,#0
	ld	d,(hl)
;../asincosf.c:85: if (x < 0.0)
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#41
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#41
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;../asincosf.c:86: r = (b[i] + r) + b[i];
	call	___fslt
	add	sp, #8
	ldhl	sp,#21
	ld	(hl),e
	pop	de
	ld	e,#0x00
	sla	d
	rl	e
	sla	d
	rl	e
	ldhl	sp,#27
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../asincosf.c:83: if (isacos)
	ldhl	sp,#37
	bit	0,(hl)
	jp	Z,00115$
;../asincosf.c:85: if (x < 0.0)
	ldhl	sp,#19
	ld	a,(hl)
	or	a, a
	jp	Z,00110$
;../asincosf.c:86: r = (b[i] + r) + b[i];
	ld	de,#_asincosf_b_1_24
	ldhl	sp,#27
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#17
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#13
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	push	hl
	ldhl	sp,#25
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#15
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#15
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	push	hl
	ldhl	sp,#25
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#23
	ld	d,h
	ld	e,l
	ldhl	sp,#1
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	jp	00116$
00110$:
;../asincosf.c:88: r = (a[i] - r) + a[i];
	ld	de,#_asincosf_a_1_24
	ldhl	sp,#27
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#23
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fssub
	add	sp, #8
	push	hl
	ldhl	sp,#15
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	push	hl
	ldhl	sp,#25
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#23
	ld	d,h
	ld	e,l
	ldhl	sp,#1
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	jp	00116$
00115$:
;../asincosf.c:92: r = (a[i] + r) + a[i];
	ld	de,#_asincosf_a_1_24
	ldhl	sp,#27
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#23
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#29
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#1
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../asincosf.c:93: if (x < 0.0)
	ldhl	sp,#19
	ld	a,(hl)
	or	a, a
	jr	Z,00116$
;../asincosf.c:94: r = -r;
	ldhl	sp,#4
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
00116$:
;../asincosf.c:96: return r;
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
00117$:
	add	sp, #31
	ret
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0xDB,#0x0F,#0x49,#0x3F	;  7.853982e-01
	.area _CODE
	.area _CABS (ABS)
