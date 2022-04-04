;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:09 2022
;--------------------------------------------------------
	.module sincoshf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sincoshf
	.globl _expf
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
;	../sincoshf.c: 56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
	sub	sp, #40
;	../sincoshf.c: 62: else { y=x;  sign=0; }
	ldw	y, (0x2d, sp)
	ldw	(0x14, sp), y
	ldw	y, (0x2b, sp)
	ldw	(0x12, sp), y
;	../sincoshf.c: 61: if (x<0.0) { y=-x; sign=1; }
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	ld	(0x1f, sp), a
	tnz	(0x1f, sp)
	jreq	00102$
	ldw	y, (0x2d, sp)
	ldw	x, (0x2b, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x0c, sp), y
	ldw	(0x0a, sp), x
	ld	a, #0x01
	ld	(0x01, sp), a
	jra	00103$
00102$:
;	../sincoshf.c: 62: else { y=x;  sign=0; }
	ldw	y, (0x14, sp)
	ldw	(0x0c, sp), y
	ldw	y, (0x12, sp)
	ldw	(0x0a, sp), y
	clr	(0x01, sp)
00103$:
;	../sincoshf.c: 64: if ((y>1.0) || iscosh)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x24, sp), a
	tnz	(0x24, sp)
	jrne	00117$
	tnz	(0x2f, sp)
	jrne	00153$
	jp	00118$
00153$:
00117$:
;	../sincoshf.c: 66: if(y>YBAR)
	clrw	x
	pushw	x
	push	#0x10
	push	#0x41
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x1a, sp), a
	tnz	(0x1a, sp)
	jreq	00110$
;	../sincoshf.c: 68: w=y-K1;
	push	#0x00
	push	#0x73
	push	#0x31
	push	#0x3f
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
;	../sincoshf.c: 69: if (w>WMAX)
	pushw	x
	pushw	y
	push	#0xcf
	push	#0xbd
	push	#0x33
	push	#0x42
	pushw	x
	pushw	y
	call	___fsgt
	addw	sp, #8
	popw	y
	popw	x
	tnz	a
	jreq	00105$
;	../sincoshf.c: 71: errno=ERANGE;
	ldw	x, #0x0022
	ldw	_errno+0, x
;	../sincoshf.c: 72: z=HUGE_VALF;
	ldw	x, #0xffff
	ldw	(0x27, sp), x
	ldw	x, #0x7f7f
	ldw	(0x25, sp), x
	jp	00111$
00105$:
;	../sincoshf.c: 76: z=expf(w);
	pushw	x
	pushw	y
	call	_expf
	addw	sp, #4
	ldw	(0x10, sp), x
	ldw	(0x0e, sp), y
;	../sincoshf.c: 77: z+=K3*z;
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	push	#0x97
	push	#0x08
	push	#0x68
	push	#0x37
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x27, sp), x
	ldw	(0x25, sp), y
	jra	00111$
00110$:
;	../sincoshf.c: 82: z=expf(y);
	ldw	x, (0x0c, sp)
	pushw	x
	ldw	x, (0x0c, sp)
	pushw	x
	call	_expf
	addw	sp, #4
	ldw	(0x04, sp), x
	ldw	(0x02, sp), y
;	../sincoshf.c: 83: w=1.0/z;
	ldw	x, (0x04, sp)
	pushw	x
	ldw	x, (0x04, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fsdiv
	addw	sp, #8
	exgw	x, y
	ldw	(0x08, sp), y
;	../sincoshf.c: 84: if(!iscosh) w=-w;
	tnz	(0x2f, sp)
	jrne	00108$
	ldw	y, (0x08, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x08, sp), y
00108$:
;	../sincoshf.c: 85: z=(z+w)*0.5;
	ldw	y, (0x08, sp)
	pushw	y
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	(0x27, sp), x
	ldw	(0x25, sp), y
00111$:
;	../sincoshf.c: 87: if(sign) z=-z;
	tnz	(0x01, sp)
	jrne	00157$
	jp	00119$
00157$:
	ldw	y, (0x27, sp)
	ldw	x, (0x25, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x27, sp), y
	ldw	(0x25, sp), x
	jp	00119$
00118$:
;	../sincoshf.c: 91: if (y<EPS)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x39
	ldw	x, (0x10, sp)
	pushw	x
	ldw	x, (0x10, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00115$
;	../sincoshf.c: 92: z=x;
	ldw	y, (0x14, sp)
	ldw	(0x27, sp), y
	ldw	y, (0x12, sp)
	ldw	(0x25, sp), y
	jp	00119$
00115$:
;	../sincoshf.c: 95: z=x*x;
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x2d, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x18, sp), x
	ldw	(0x16, sp), y
;	../sincoshf.c: 96: z=x+x*z*P(z)/Q(z);
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x1d, sp), x
	ldw	(0x1b, sp), y
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	push	#0xea
	push	#0xe6
	push	#0x42
	push	#0xbe
	call	___fsmul
	addw	sp, #8
	push	#0xf0
	push	#0x69
	push	#0xe4
	push	#0xc0
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x21, sp)
	pushw	x
	ldw	x, (0x21, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x22, sp), x
	ldw	(0x20, sp), y
	push	#0x93
	push	#0x4f
	push	#0x2b
	push	#0xc2
	ldw	x, (0x1c, sp)
	pushw	x
	ldw	x, (0x1c, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x26, sp)
	pushw	x
	ldw	x, (0x26, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x31, sp)
	pushw	x
	ldw	x, (0x31, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x27, sp), x
	ldw	(0x25, sp), y
00119$:
;	../sincoshf.c: 99: return z;
	ldw	x, (0x27, sp)
	ldw	y, (0x25, sp)
	addw	sp, #40
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
