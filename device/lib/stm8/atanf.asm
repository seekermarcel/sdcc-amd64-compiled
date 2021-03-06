;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:08 2022
;--------------------------------------------------------
	.module atanf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../atanf.c: 55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
_atanf:
	sub	sp, #45
;	../atanf.c: 58: int n=0;
	clrw	x
	ldw	(0x01, sp), x
;	../atanf.c: 61: f=fabsf(x);
	ldw	x, (0x32, sp)
	pushw	x
	ldw	x, (0x32, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../atanf.c: 62: if(f>1.0)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00102$
;	../atanf.c: 64: f=1.0/f;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fsdiv
	addw	sp, #8
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../atanf.c: 65: n=2;
	ldw	x, #0x0002
	ldw	(0x01, sp), x
00102$:
;	../atanf.c: 67: if(f>K1)
	push	#0xa3
	push	#0x30
	push	#0x89
	push	#0x3e
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00104$
;	../atanf.c: 69: f=((K2*f-1.0)+f)/(K3+f);
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	push	#0xaf
	push	#0x67
	push	#0x3b
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x3f
	pushw	x
	pushw	y
	call	___fssub
	addw	sp, #8
	ldw	(0x2c, sp), x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x30, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x28, sp), x
	ldw	(0x26, sp), y
	push	#0xd7
	push	#0xb3
	push	#0xdd
	push	#0x3f
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x2c, sp)
	pushw	x
	ldw	x, (0x2c, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../atanf.c: 73: n++;
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
00104$:
;	../atanf.c: 75: if(fabsf(f)<EPS) r=f;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x39
	pushw	x
	pushw	y
	call	___fslt
	addw	sp, #8
	ld	(0x25, sp), a
	tnz	(0x25, sp)
	jreq	00106$
	ldw	y, (0x0d, sp)
	ldw	(0x23, sp), y
	ldw	y, (0x0b, sp)
	ldw	(0x21, sp), y
	jp	00107$
00106$:
;	../atanf.c: 78: g=f*f;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x05, sp), x
	ldw	(0x03, sp), y
;	../atanf.c: 79: r=f+P(g,f)/Q(g);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	push	#0x91
	push	#0x86
	push	#0x50
	push	#0xbd
	call	___fsmul
	addw	sp, #8
	push	#0xf6
	push	#0x10
	push	#0xf1
	push	#0xbe
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x1f, sp), x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x1b, sp), x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x1f, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x17, sp), x
	ldw	(0x15, sp), y
	push	#0xd3
	push	#0xcc
	push	#0xb4
	push	#0x3f
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x1b, sp)
	pushw	x
	ldw	x, (0x1b, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x13, sp), x
	ldw	(0x11, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x23, sp), y
	ldw	y, (0x11, sp)
	ldw	(0x21, sp), y
00107$:
;	../atanf.c: 81: if(n>1) r=-r;
	ldw	x, (0x01, sp)
	cpw	x, #0x0001
	jrsle	00109$
	ldw	y, (0x23, sp)
	ldw	x, (0x21, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x23, sp), y
	ldw	(0x21, sp), x
00109$:
;	../atanf.c: 82: r+=a[n];
	ldw	x, #_atanf_a_1_24+0
	ldw	(0x0f, sp), x
	ldw	x, (0x01, sp)
	sllw	x
	sllw	x
	addw	x, (0x0f, sp)
	ld	a, (0x3, x)
	ld	yl, a
	ld	a, (0x2, x)
	ld	yh, a
	ldw	x, (x)
	pushw	y
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
;	../atanf.c: 83: if(x<0.0) r=-r;
	pushw	y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x38, sp)
	pushw	x
	ldw	x, (0x38, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	popw	y
	tnz	a
	jreq	00111$
	ldw	x, (0x09, sp)
	sllw	y
	ccf
	rrcw	y
	ldw	(0x09, sp), x
00111$:
;	../atanf.c: 84: return r;
	ldw	x, (0x09, sp)
	addw	sp, #45
	ret
	.area CODE
_atanf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x3F,#0x06,#0x0A,#0x92	;  5.235988e-01
	.byte #0x3F,#0xC9,#0x0F,#0xDB	;  1.570796e+00
	.byte #0x3F,#0x86,#0x0A,#0x92	;  1.047198e+00
	.area INITIALIZER
	.area CABS (ABS)
