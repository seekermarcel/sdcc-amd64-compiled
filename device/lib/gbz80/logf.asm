;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:45 2022
;--------------------------------------------------------
	.module logf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _frexpf
	.globl _logf
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
;../logf.c:216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function logf
; ---------------------------------
_logf::
	add	sp, #-26
;../logf.c:226: if (x<=0.0)
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#34
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#34
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	NZ,00102$
;../logf.c:228: errno=EDOM;
	ld	hl,#_errno
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0x00
;../logf.c:229: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00106$
00102$:
;../logf.c:231: f=frexpf(x, &n);
	ldhl	sp,#0
	ld	e,l
	ld	d,h
	push	de
	ldhl	sp,#32
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#32
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_frexpf
	add	sp, #6
	ld	b,l
	ld	c,h
	ldhl	sp,#14
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../logf.c:232: znum=f-0.5;
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
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
	call	___fssub
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../logf.c:233: if (f>C0)
	ld	hl,#0x3F35
	push	hl
	ld	hl,#0x04F3
	push	hl
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jp	Z,00104$
;../logf.c:235: znum-=0.5;
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
	push	hl
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
	call	___fssub
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../logf.c:236: zden=(f*0.5)+0.5;
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
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
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
	ld	c,e
	ld	b,d
	ld	e,l
	ld	d,h
	jp	00105$
00104$:
;../logf.c:240: n--;
	pop	de
	push	de
	dec	de
	inc	sp
	inc	sp
	push	de
;../logf.c:241: zden=znum*0.5+0.5;
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
	ld	hl,#0x3F00
	push	hl
	ld	hl,#0x0000
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
	ld	c,e
	ld	b,d
	ld	e,l
	ld	d,h
00105$:
;../logf.c:243: z=znum/zden;
	push	de
	push	bc
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
;../logf.c:244: w=z*z;
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
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
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
;../logf.c:246: Rz=z+z*(w*A(w)/B(w));
	push	bc
	push	de
	push	bc
	push	de
	ld	hl,#0xBF0D
	push	hl
	ld	hl,#0x7E3D
	push	hl
	call	___fsmul
	add	sp, #8
	push	hl
	ldhl	sp,#28
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
	ld	hl,#0xC0D4
	push	hl
	ld	hl,#0x3F3A
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#28
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#28
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
	call	___fsmul
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
	ldhl	sp,#18
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../logf.c:247: xn=n;
	pop	hl
	push	hl
	push	hl
	call	___sint2fs
	add	sp, #2
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
;../logf.c:248: return ((xn*C2+Rz)+xn*C1);
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
	ld	hl,#0xB95E
	push	hl
	ld	hl,#0x8083
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
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
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	push	hl
	ldhl	sp,#24
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
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
	ldhl	sp,#28
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#28
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
00106$:
	add	sp, #26
	ret
	.area _CODE
	.area _CABS (ABS)
