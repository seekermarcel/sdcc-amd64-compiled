;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:10 2022
;--------------------------------------------------------
	.module tanhf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;	../tanhf.c: 50: float tanhf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
_tanhf:
	sub	sp, #49
;	../tanhf.c: 54: f=fabsf(x);
	ldw	x, (0x36, sp)
	pushw	x
	ldw	x, (0x36, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x0b, sp), x
	ldw	(0x09, sp), y
;	../tanhf.c: 55: if(f>SBIG) r=1.0;
	push	#0xb0
	push	#0x2c
	push	#0x10
	push	#0x41
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	ld	(0x15, sp), a
	tnz	(0x15, sp)
	jreq	00108$
	clrw	x
	ldw	(0x24, sp), x
	ldw	x, #0x3f80
	ldw	(0x22, sp), x
	jp	00109$
00108$:
;	../tanhf.c: 56: else if(f>K1)
	push	#0x54
	push	#0x9f
	push	#0x0c
	push	#0x3f
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jrne	00131$
	jp	00105$
00131$:
;	../tanhf.c: 58: r=0.5-1.0/(expf(f+f)+1.0);
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x2c, sp), x
	ldw	(0x2a, sp), y
	ldw	x, (0x2c, sp)
	pushw	x
	ldw	x, (0x2c, sp)
	pushw	x
	call	_expf
	addw	sp, #4
	ldw	(0x18, sp), x
	ldw	(0x16, sp), y
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x1c, sp)
	pushw	x
	ldw	x, (0x1c, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x28, sp), x
	ldw	(0x26, sp), y
	ldw	x, (0x28, sp)
	pushw	x
	ldw	x, (0x28, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	call	___fsdiv
	addw	sp, #8
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0x00
	push	#0x3f
	call	___fssub
	addw	sp, #8
	ldw	(0x30, sp), x
	ldw	(0x2e, sp), y
	ldw	y, (0x30, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x2e, sp)
	ldw	(0x01, sp), y
;	../tanhf.c: 59: r+=r;
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x03, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x1c, sp), x
	ldw	(0x1a, sp), y
	ldw	y, (0x1c, sp)
	ldw	(0x24, sp), y
	ldw	y, (0x1a, sp)
	ldw	(0x22, sp), y
	jp	00109$
00105$:
;	../tanhf.c: 61: else if(f<EPS) r=f;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x39
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00102$
	ldw	y, (0x0b, sp)
	ldw	(0x24, sp), y
	ldw	y, (0x09, sp)
	ldw	(0x22, sp), y
	jp	00109$
00102$:
;	../tanhf.c: 64: g=f*f;
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	../tanhf.c: 65: r=f+f*(P(g)/Q(g));
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	push	#0xb2
	push	#0x11
	push	#0x7b
	push	#0xbb
	call	___fsmul
	addw	sp, #8
	push	#0xc6
	push	#0xe2
	push	#0x52
	push	#0xbf
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x20, sp), x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x24, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x13, sp), x
	ldw	(0x11, sp), y
	push	#0x1a
	push	#0x2a
	push	#0x1e
	push	#0x40
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x17, sp)
	pushw	x
	ldw	x, (0x17, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x24, sp), x
	ldw	(0x22, sp), y
00109$:
;	../tanhf.c: 67: if(x<0.0) r=-r;
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x3a, sp)
	pushw	x
	ldw	x, (0x3a, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00111$
	ldw	y, (0x24, sp)
	ldw	x, (0x22, sp)
	sllw	x
	ccf
	rrcw	x
	ldw	(0x24, sp), y
	ldw	(0x22, sp), x
00111$:
;	../tanhf.c: 68: return r;
	ldw	x, (0x24, sp)
	ldw	y, (0x22, sp)
	addw	sp, #49
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
