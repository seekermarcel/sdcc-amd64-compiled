;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module sqrtf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _frexpf
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
;../sqrtf.c:37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function sqrtf
; ---------------------------------
_sqrtf::
	add	sp, #-14
;../sqrtf.c:42: if (x==0.0) return x;
	ldhl	sp,#19
	ld	a,(hl)
	res	7, a
	dec	hl
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00107$
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	jp	00111$
00107$:
;../sqrtf.c:43: else if (x==1.0) return 1.0;
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fseq
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00104$
	ld	de,#0x0000
	ld	hl,#0x3F80
	jp	00111$
00104$:
;../sqrtf.c:44: else if (x<0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#22
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00108$
;../sqrtf.c:46: errno=EDOM;
	ld	hl,#_errno
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0x00
;../sqrtf.c:47: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00111$
00108$:
;../sqrtf.c:49: f=frexpf(x, &n);
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	push	de
	ldhl	sp,#20
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#20
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_frexpf
	add	sp, #6
	ld	b,l
	ld	c,h
	ldhl	sp,#2
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../sqrtf.c:50: y=0.41731+0.59016*f; /*Educated guess*/
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3F17
	push	hl
	ld	hl,#0x14BA
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3ED5
	push	hl
	ld	hl,#0xA9A8
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
;../sqrtf.c:52: y+=f/y;
	push	bc
	push	de
	push	bc
	push	de
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsdiv
	add	sp, #8
	push	hl
	ldhl	sp,#16
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	pop	bc
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
;../sqrtf.c:53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	push	bc
	push	de
	ld	hl,#0xFFFE
	push	hl
	push	bc
	push	de
	call	_ldexpf
	add	sp, #6
	push	hl
	ldhl	sp,#16
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	pop	bc
	push	bc
	push	de
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
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
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#10
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../sqrtf.c:55: if (n&1)
	ldhl	sp,#0
	bit	0, (hl)
	jp	Z,00110$
;../sqrtf.c:57: y*=0.7071067812;
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
	call	___fsmul
	add	sp, #8
	push	hl
	ldhl	sp,#8
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#6
	ld	d,h
	ld	e,l
	ldhl	sp,#10
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
;../sqrtf.c:58: ++n;
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00135$
	inc	hl
	inc	(hl)
00135$:
00110$:
;../sqrtf.c:60: return ldexpf(y, n/2);
	pop	bc
	push	bc
	ld	a,#0x00
	ld	e,a
	ld	a,b
	ld	d,a
	bit	7, b
	jr	Z,00113$
	inc	bc
00113$:
	sra	b
	rr	c
	push	bc
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#14
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	b,l
	ld	c,h
00111$:
	add	sp, #14
	ret
	.area _CODE
	.area _CABS (ABS)
