;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module _divuint
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __divuint_PARM_2
	.globl __divuint
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
__divuint_PARM_2:
	.ds 2
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function '_divuint'
;------------------------------------------------------------
;y                         Allocated with name '__divuint_PARM_2'
;x                         Allocated to registers r2 r3 
;reste                     Allocated to registers r4 r5 
;count                     Allocated to registers r6 
;c                         Allocated to registers r7 
;------------------------------------------------------------
;	_divuint.c:155: _divuint (unsigned int x, unsigned int y)
;	-----------------------------------------
;	 function _divuint
;	-----------------------------------------
__divuint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	dpl1,dpl
	mov	dph1,dph
;	_divuint.c:157: unsigned int reste = 0;
;	genAssign: resultIsFar = TRUE
	mov	r4,#0x00
	mov	r5,#0x00
;	_divuint.c:158: unsigned char count = 16;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x10
;	_divuint.c:161: do
00105$:
;	_divuint.c:164: c = MSB_SET(x);
	mov	a,dph1
	rl	a
	anl	a,#0x01
	mov	r7,a
;	_divuint.c:165: x <<= 1;
	mov	r0,dpl1
	mov	a,dph1
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	dpl1,r0
	mov	dph1,r1
;	_divuint.c:166: reste <<= 1;
	mov	ar0,r4
	mov	a,r5
	xch	a,r0
	add	a,acc
	xch	a,r0
	rlc	a
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	ar4,r0
	mov	ar5,r1
;	_divuint.c:167: if (c)
	mov	a,r7
	jz  00102$
00122$:
;	_divuint.c:168: reste |= 1;
	orl	ar4,#0x01
00102$:
;	_divuint.c:170: if (reste >= y)
	mov	dptr,#__divuint_PARM_2
	clr	c
	mov	a,r4
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,r5
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00106$
00123$:
;	_divuint.c:172: reste -= y;
	mov	dptr,#__divuint_PARM_2
	clr	c
	movx	a,@dptr
	mov	b,a
	mov	a,r4
	subb	a,b
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	a,r5
	subb	a,b
	mov	r0,a
;	genAssign: resultIsFar = TRUE
	mov	ar4,r7
	mov	ar5,r0
;	_divuint.c:174: x |= 1;
	orl	dpl1,#0x01
00106$:
;	_divuint.c:177: while (--count);
	mov	a,r6
	dec	a
;	genAssign: resultIsFar = TRUE
	mov  r7,a
	mov  ar6,r7 
	jnz  00105$
00124$:
;	_divuint.c:178: return x;
	mov	dpl,dpl1
	mov	dph,dph1
00108$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
