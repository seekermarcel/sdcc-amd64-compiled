;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:06 2022
;--------------------------------------------------------
	.module tancotf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _tancotf
	.globl _fabsf
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
;	../tancotf.c: 53: float tancotf(float x, bool iscotan)
;	-----------------------------------------
;	 function tancotf
;	-----------------------------------------
_tancotf:
	sub	sp, #72
;	../tancotf.c: 58: if (fabsf(x) > YMAX)
	ldw	x, (0x4d, sp)
	pushw	x
	ldw	x, (0x4d, sp)
	pushw	x
	call	_fabsf
	addw	sp, #4
	push	#0x00
	push	#0x08
	push	#0xc9
	push	#0x45
	pushw	x
	pushw	y
	call	___fsgt
	addw	sp, #8
	ld	(0x1b, sp), a
	tnz	(0x1b, sp)
	jreq	00102$
;	../tancotf.c: 60: errno = ERANGE;
	ldw	x, #0x0022
	ldw	_errno+0, x
;	../tancotf.c: 61: return 0.0;
	clrw	x
	clrw	y
	jp	00115$
00102$:
;	../tancotf.c: 65: n=(x*TWO_O_PI+(x>0.0?0.5:-0.5)); /*works for +-x*/
	ldw	x, (0x4d, sp)
	pushw	x
	ldw	x, (0x4d, sp)
	pushw	x
	push	#0x83
	push	#0xf9
	push	#0x22
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	ldw	(0x3f, sp), x
	ldw	(0x3d, sp), y
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x51, sp)
	pushw	x
	ldw	x, (0x51, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jreq	00117$
	clrw	x
	ldw	(0x19, sp), x
	ldw	x, #0x3f00
	ldw	(0x17, sp), x
	jra	00118$
00117$:
	clrw	x
	ldw	(0x19, sp), x
	ldw	x, #0xbf00
	ldw	(0x17, sp), x
00118$:
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x43, sp)
	pushw	x
	ldw	x, (0x43, sp)
	pushw	x
	call	___fsadd
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2sint
	addw	sp, #4
	ldw	(0x01, sp), x
;	../tancotf.c: 66: xn=n;
	ldw	x, (0x01, sp)
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
;	../tancotf.c: 68: xnum=(int)x;
	ldw	x, (0x4d, sp)
	pushw	x
	ldw	x, (0x4d, sp)
	pushw	x
	call	___fs2sint
	addw	sp, #4
	pushw	x
	call	___sint2fs
	addw	sp, #2
	ldw	(0x47, sp), x
	ldw	(0x45, sp), y
;	../tancotf.c: 69: xden=x-xnum;
	ldw	x, (0x47, sp)
	pushw	x
	ldw	x, (0x47, sp)
	pushw	x
	ldw	x, (0x51, sp)
	pushw	x
	ldw	x, (0x51, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x2f, sp), x
	ldw	(0x2d, sp), y
;	../tancotf.c: 70: f=((xnum-xn*C1)+xden)-xn*C2;
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	clrw	x
	pushw	x
	push	#0xc9
	push	#0x3f
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x4b, sp)
	pushw	x
	ldw	x, (0x4b, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x33, sp), x
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	ldw	x, (0x37, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x37, sp), x
	ldw	(0x35, sp), y
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	push	#0x22
	push	#0xaa
	push	#0xfd
	push	#0x39
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	ldw	x, (0x3b, sp)
	pushw	x
	ldw	x, (0x3b, sp)
	pushw	x
	call	___fssub
	addw	sp, #8
	ldw	(0x15, sp), x
	ldw	(0x13, sp), y
;	../tancotf.c: 72: if (fabsf(f) < EPS)
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
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
	ld	(0x28, sp), a
	tnz	(0x28, sp)
	jreq	00104$
;	../tancotf.c: 74: xnum = f;
	ldw	y, (0x15, sp)
	ldw	(0x09, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x07, sp), y
;	../tancotf.c: 75: xden = 1.0;
	clrw	x
	ldw	(0x05, sp), x
	ldw	x, #0x3f80
	ldw	(0x03, sp), x
	jp	00105$
00104$:
;	../tancotf.c: 79: g = f*f;
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	ldw	x, (0x19, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x11, sp), x
	ldw	(0x0f, sp), y
;	../tancotf.c: 80: xnum = P(f,g);
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	push	#0xb8
	push	#0x33
	push	#0xc4
	push	#0xbd
	call	___fsmul
	addw	sp, #8
	ldw	(0x26, sp), x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x2a, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x3b, sp), x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x15, sp)
	pushw	x
	ldw	x, (0x3f, sp)
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x09, sp), x
	ldw	(0x07, sp), y
;	../tancotf.c: 81: xden = Q(g);
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	push	#0x75
	push	#0x33
	push	#0x1f
	push	#0x3c
	call	___fsmul
	addw	sp, #8
	push	#0xaf
	push	#0xb7
	push	#0xdb
	push	#0xbe
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x2b, sp), x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x2f, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0x80
	push	#0x3f
	pushw	x
	pushw	y
	call	___fsadd
	addw	sp, #8
	ldw	(0x22, sp), x
	ldw	(0x03, sp), y
	ldw	y, (0x22, sp)
	ldw	(0x05, sp), y
00105$:
;	../tancotf.c: 84: if(n&1)
	ld	a, (0x02, sp)
	srl	a
	jrnc	00113$
;	../tancotf.c: 87: if(iscotan) return (-xnum/xden);
	tnz	(0x4f, sp)
	jreq	00107$
	ldw	y, (0x09, sp)
	ldw	(0x1e, sp), y
	ldw	y, (0x07, sp)
	sllw	y
	ccf
	rrcw	y
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x22, sp)
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00107$:
;	../tancotf.c: 88: else return (-xden/xnum);
	ldw	y, (0x05, sp)
	ldw	(0x43, sp), y
	ldw	y, (0x03, sp)
	sllw	y
	ccf
	rrcw	y
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x47, sp)
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00113$:
;	../tancotf.c: 92: if(iscotan) return (xden/xnum);
	tnz	(0x4f, sp)
	jreq	00110$
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	jra	00115$
00110$:
;	../tancotf.c: 93: else return (xnum/xden);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
00115$:
	addw	sp, #72
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
