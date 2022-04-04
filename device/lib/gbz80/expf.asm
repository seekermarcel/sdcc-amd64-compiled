;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module expf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ldexpf
	.globl _expf
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
;../expf.c:330: float expf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function expf
; ---------------------------------
_expf::
	add	sp, #-27
;../expf.c:336: if(x>=0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
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
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	NZ,00102$
;../expf.c:337: { y=x;  sign=0; }
	ldhl	sp,#29
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
	ldhl	sp,#0
	ld	(hl),#0x00
	jp	00103$
00102$:
;../expf.c:339: { y=-x; sign=1; }
	ldhl	sp,#32
	ld	a,(hl)
	xor	a,#0x80
	ldhl	sp,#26
	ld	(hl),a
	ldhl	sp,#29
	ld	a,(hl)
	ldhl	sp,#23
	ld	(hl),a
	ldhl	sp,#30
	ld	a,(hl)
	ldhl	sp,#24
	ld	(hl),a
	ldhl	sp,#31
	ld	a,(hl)
	ldhl	sp,#25
	ld	(hl-),a
	dec	hl
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
	ldhl	sp,#0
	ld	(hl),#0x01
00103$:
;../expf.c:341: if(y<EXPEPS) return 1.0;
	ld	hl,#0x33D6
	push	hl
	ld	hl,#0xBF95
	push	hl
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
	call	___fslt
	add	sp, #8
	ld	c,e
	ld	a,c
	or	a, a
	jr	Z,00105$
	ld	de,#0x0000
	ld	hl,#0x3F80
	jp	00118$
00105$:
;../expf.c:343: if(y>BIGX)
	ld	hl,#0x42B1
	push	hl
	ld	hl,#0x7218
	push	hl
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00110$
;../expf.c:345: if(sign)
	ldhl	sp,#0
	bit	0,(hl)
	jr	Z,00107$
;../expf.c:347: errno=ERANGE;
	ld	hl,#_errno
	ld	(hl),#0x22
	inc	hl
	ld	(hl),#0x00
;../expf.c:349: ;
	ld	de,#0xFFFF
	ld	hl,#0x7F7F
	jp	00118$
00107$:
;../expf.c:353: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00118$
00110$:
;../expf.c:357: z=y*K1;
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#3
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3FB8
	push	hl
	ld	hl,#0xAA3B
	push	hl
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#23
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../expf.c:358: n=z;
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fs2sint
	add	sp, #4
	ldhl	sp,#21
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../expf.c:360: if(n<0) --n;
	dec	hl
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00148$
	bit	7, d
	jr	NZ,00149$
	cp	a, a
	jr	00149$
00148$:
	bit	7, d
	jr	Z,00149$
	scf
00149$:
	jr	NC,00112$
	ldhl	sp,#22
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
00112$:
;../expf.c:361: if(z-n>=0.5) ++n;
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	c,l
	ld	b,h
	push	bc
	push	de
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
	ld	c,l
	ld	b,h
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	push	bc
	push	de
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	NZ,00114$
	ldhl	sp,#21
	inc	(hl)
	jr	NZ,00150$
	inc	hl
	inc	(hl)
00150$:
00114$:
;../expf.c:362: xn=n;
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___sint2fs
	add	sp, #2
	ld	b,l
	ld	c,h
	ldhl	sp,#17
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../expf.c:363: g=((y-xn*C1))-xn*C2;
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#19
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3F31
	push	hl
	ld	hl,#0x8000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
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
	call	___fssub
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
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
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
	ld	b,l
	ld	c,h
	ldhl	sp,#13
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../expf.c:364: z=g*g;
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#15
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
;../expf.c:365: r=P(z)*g;
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
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
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
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#23
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../expf.c:366: r=0.5+(r/(Q(z)-r));
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
	push	bc
	push	de
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
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
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
	call	___fsdiv
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#9
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../expf.c:368: n++;
	ldhl	sp,#22
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
;../expf.c:369: z=ldexpf(r, n);
	push	bc
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_ldexpf
	add	sp, #6
	ld	c,l
	ld	b,h
;../expf.c:370: if(sign)
	ldhl	sp,#0
	bit	0,(hl)
	jr	Z,00116$
;../expf.c:371: return 1.0/z;
	push	bc
	push	de
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	b,l
	ld	c,h
	jr	00118$
00116$:
;../expf.c:373: return z;
	ld	l,c
	ld	h,b
00118$:
	add	sp, #27
	ret
	.area _CODE
	.area _CABS (ABS)
