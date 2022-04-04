;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module _moduint
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
	.globl __moduint_PARM_2
	.globl __moduint
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
__moduint_PARM_2:
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b                         Allocated with name '__moduint_PARM_2'
;a                         Allocated to registers r2 r3 
;count                     Allocated to registers r4 
;------------------------------------------------------------
;	_moduint.c:173: _moduint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
__moduint:
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
;	_moduint.c:175: unsigned char count = 0;
;	genAssign: resultIsFar = TRUE
	mov	r4,#0x00
;	_moduint.c:177: while (!MSB_SET(b))
;	genAssign: resultIsFar = FALSE
	mov	r5,#0x00
00103$:
	mov	dptr,#__moduint_PARM_2
	inc	dptr
	movx	a,@dptr
	rl	a
	anl	a,#0x01
	mov  r6,a
	jnz  00117$
00132$:
;	_moduint.c:179: b <<= 1;
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	xch	a,r6
	add	a,acc
	xch	a,r6
	rlc	a
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__moduint_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_moduint.c:180: if (b > a)
	mov	dptr,#__moduint_PARM_2
	clr	c
	mov	a,dpl1
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,dph1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jnc  00102$
00133$:
;	_moduint.c:182: b >>=1;
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r6
	rrc	a
	xch	a,r6
	mov	r7,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__moduint_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	_moduint.c:183: break;
	sjmp 00117$
00102$:
;	_moduint.c:185: count++;
	inc	r5
;	genAssign: resultIsFar = TRUE
	mov	ar4,r5
;	_moduint.c:187: do
	sjmp 00103$
00117$:
;	genAssign: resultIsFar = FALSE
00108$:
;	_moduint.c:189: if (a >= b)
	mov	dptr,#__moduint_PARM_2
	clr	c
	mov	a,dpl1
	xch	a, b
	movx	a,@dptr
	xch	a, b
	subb	a,b
	mov	a,dph1
	xch	a, b
	inc	dptr
	movx	a,@dptr
	xch	a, b
	subb	a,b
	jc   00107$
00134$:
;	_moduint.c:190: a -= b;
	mov	dptr,#__moduint_PARM_2
	clr	c
	movx	a,@dptr
	mov	b,a
	mov	a,dpl1
	subb	a,b
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	a,dph1
	subb	a,b
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dpl1,r5
	mov	dph1,r6
00107$:
;	_moduint.c:191: b >>= 1;
	mov	dptr,#__moduint_PARM_2
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	clr	c
	rrc	a
	xch	a,r5
	rrc	a
	xch	a,r5
	mov	r6,a
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__moduint_PARM_2
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_moduint.c:193: while (count--);
;	genAssign: resultIsFar = FALSE
	mov	ar5,r4
	dec	r4
	mov	a,r5
	jnz  00108$
00135$:
;	_moduint.c:194: return a;
	mov	dpl,dpl1
	mov	dph,dph1
00111$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
