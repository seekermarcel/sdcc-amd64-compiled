;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:08 2022
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;	../atan2f.c: 34: float atan2f(float x, float y)
;	-----------------------------------------
;	 function atan2f
;	-----------------------------------------
_atan2f:
	sub	sp, #30
;	../atan2f.c: 38: if ((x==0.0) && (y==0.0))
	ldw	x, (0x23, sp)
	jrne	00102$
	ldw	x, (0x21, sp)
	sllw	x
	jrne	00102$
	ldw	x, (0x27, sp)
	jrne	00102$
	ldw	x, (0x25, sp)
	sllw	x
	jrne	00102$
;	../atan2f.c: 40: errno=EDOM;
	ldw	x, #0x0021
	ldw	_errno+0, x
;	../atan2f.c: 41: return 0.0;
	clrw	x
	clrw	y
	jp	00109$
00102$:
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x18, sp), x
	ldw	(0x16, sp), y
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	ldw	(0x1d, sp), x
	ldw	(0x1b, sp), y
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
;	../atan2f.c: 44: if(fabsf(y)>=fabsf(x))
	call	___fslt
	addw	sp, #8
	ld	(0x1a, sp), a
	ldw	x, (0x1d, sp)
	pushw	x
	ldw	x, (0x1d, sp)
	pushw	x
	ldw	x, (0x1c, sp)
	pushw	x
	ldw	x, (0x1c, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	ld	(0x11, sp), a
	tnz	(0x11, sp)
	jrne	00107$
;	../atan2f.c: 46: r=atanf(x/y);
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	ldw	x, (0x27, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	_atanf
	addw	sp, #4
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
;	../atan2f.c: 47: if(y<0.0) r+=(x>=0?PI:-PI);
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jrne	00144$
	jp	00108$
00144$:
	tnz	(0x1a, sp)
	jrne	00111$
	ldw	x, #0x0fdb
	ldw	(0x0b, sp), x
	ldw	x, #0x4049
	ldw	(0x09, sp), x
	jra	00112$
00111$:
	ldw	x, #0x0fdb
	ldw	(0x0b, sp), x
	ldw	x, #0xc049
	ldw	(0x09, sp), x
00112$:
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	ldw	x, (0x13, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x0f, sp), x
	ldw	(0x0d, sp), y
	jra	00108$
00107$:
;	../atan2f.c: 51: r=-atanf(y/x);
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x23, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	ldw	x, (0x2b, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	_atanf
	addw	sp, #4
	exgw	x, y
	sllw	x
	ccf
	rrcw	x
	ldw	(0x03, sp), y
	ldw	(0x01, sp), x
;	../atan2f.c: 52: r+=(x<0.0?-HALF_PI:HALF_PI);
	tnz	(0x1a, sp)
	jreq	00113$
	ldw	x, #0x0fdb
	ldw	y, #0xbfc9
	ldw	(0x05, sp), y
	jra	00114$
00113$:
	ldw	x, #0x0fdb
	ldw	y, #0x3fc9
	ldw	(0x05, sp), y
00114$:
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	ldw	(0x14, sp), x
	ldw	(0x0d, sp), y
	ldw	y, (0x14, sp)
	ldw	(0x0f, sp), y
00108$:
;	../atan2f.c: 54: return r;
	ldw	x, (0x0f, sp)
	ldw	y, (0x0d, sp)
00109$:
	addw	sp, #30
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
