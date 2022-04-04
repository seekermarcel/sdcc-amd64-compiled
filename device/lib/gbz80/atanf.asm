;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:46 2022
;--------------------------------------------------------
	.module atanf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
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
;../atanf.c:55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	---------------------------------
; Function atanf
; ---------------------------------
_atanf::
	add	sp, #-22
;../atanf.c:58: int n=0;
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../atanf.c:61: f=fabsf(x);
	ldhl	sp,#26
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#26
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_fabsf
	add	sp, #4
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
;../atanf.c:62: if(f>1.0)
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jp	Z,00102$
;../atanf.c:64: f=1.0/f;
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
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
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
;../atanf.c:65: n=2;
	ldhl	sp,#0
	ld	(hl),#0x02
	inc	hl
	ld	(hl),#0x00
00102$:
;../atanf.c:67: if(f>K1)
	ld	hl,#0x3E89
	push	hl
	ld	hl,#0x30A3
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
	call	___fsgt
	add	sp, #8
	ld	a,e
	or	a, a
	jp	Z,00104$
;../atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
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
	ld	hl,#0x3F3B
	push	hl
	ld	hl,#0x67AF
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0x3F80
	push	hl
	ld	hl,#0x0000
	push	hl
	push	bc
	push	de
	call	___fssub
	add	sp, #8
	ld	c,l
	ld	b,h
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
	push	hl
	ldhl	sp,#20
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	hl,#0x3FDD
	push	hl
	ld	hl,#0xB3D7
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
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#24
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#24
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
;../atanf.c:73: n++;
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00134$
	inc	hl
	inc	(hl)
00134$:
00104$:
;../atanf.c:75: if(fabsf(f)<EPS) r=f;
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
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
	ld	hl,#0x3980
	push	hl
	ld	hl,#0x0000
	push	hl
	push	bc
	push	de
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00106$
	ldhl	sp,#10
	ld	d,h
	ld	e,l
	ldhl	sp,#18
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
	jp	00107$
00106$:
;../atanf.c:78: g=f*f;
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
;../atanf.c:79: r=f+P(g,f)/Q(g);
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
	ld	hl,#0xBD50
	push	hl
	ld	hl,#0x8691
	push	hl
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	ld	hl,#0xBEF1
	push	hl
	ld	hl,#0x10F6
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
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
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
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
	call	___fsmul
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
	ld	hl,#0x3FB4
	push	hl
	ld	hl,#0xCCD3
	push	hl
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
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
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
	ldhl	sp,#18
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
00107$:
;../atanf.c:81: if(n>1) r=-r;
	ldhl	sp,#0
	ld	a,#0x01
	sub	a, (hl)
	inc	hl
	ld	a,#0x00
	sbc	a, (hl)
	ld	a,#0x00
	ld	d, a
	ld	e, (hl)
	bit	7, e
	jr	Z,00135$
	bit	7, d
	jr	NZ,00136$
	cp	a, a
	jr	00136$
00135$:
	bit	7, d
	jr	Z,00136$
	scf
00136$:
	jr	NC,00109$
	ldhl	sp,#21
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
00109$:
;../atanf.c:82: r+=a[n];
	pop	bc
	push	bc
	sla	c
	rl	b
	sla	c
	rl	b
	ld	hl,#_atanf_a_1_24
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	e, c
	ld	d, b
	ld	a,(de)
	ldhl	sp,#14
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#24
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#24
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
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
	ldhl	sp,#14
	ld	d,h
	ld	e,l
	ldhl	sp,#6
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
;../atanf.c:83: if(x<0.0) r=-r;
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#30
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#30
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,e
	or	a, a
	jr	Z,00111$
	ldhl	sp,#9
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
00111$:
;../atanf.c:84: return r;
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #22
	ret
_atanf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x92,#0x0A,#0x06,#0x3F	;  5.235988e-01
	.byte #0xDB,#0x0F,#0xC9,#0x3F	;  1.570796e+00
	.byte #0x92,#0x0A,#0x86,#0x3F	;  1.047198e+00
	.area _CODE
	.area _CABS (ABS)
