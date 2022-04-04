;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module _mulint
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
	.globl __mulint_PARM_2
	.globl __mulint
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
__mulint_PARM_2:
	.ds 2
__mulint_a_1_1:
	.ds 2
__mulint_x_1_2:
	.ds 4
__mulint_t_1_2:
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
;Allocation info for local variables in function '_mulint'
;------------------------------------------------------------
;b                         Allocated with name '__mulint_PARM_2'
;a                         Allocated with name '__mulint_a_1_1'
;x                         Allocated with name '__mulint_x_1_2'
;y                         Allocated to registers r4 r5 r2 r3 
;t                         Allocated with name '__mulint_t_1_2'
;------------------------------------------------------------
;	_mulint.c:226: _mulint (int a, int b)
;	-----------------------------------------
;	 function _mulint
;	-----------------------------------------
__mulint:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #__mulint_a_1_1
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	mov	dps,#0
;	_mulint.c:238: x = (union uu *)&a;
	mov	dptr,#__mulint_x_1_2
	mov	a,#__mulint_a_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(__mulint_a_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#(__mulint_a_1_1 >> 16)
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
;	_mulint.c:239: y = (union uu *)&b;
	mov	r4,#__mulint_PARM_2
	mov	r5,#(__mulint_PARM_2 >> 8)
	mov	r2,#(__mulint_PARM_2 >> 16)
	mov	r3,#0x00
;	_mulint.c:243: t.t = (unsigned char)a * (unsigned char)b;
	mov	dptr,#__mulint_a_1_1
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	mov	r7,a
	mov	b,r6
	mov	a,r7
	mul	ab
	mov	r7,a
	mov	r6,b
	mov	dptr,#__mulint_t_1_2
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	_mulint.c:244: t.s.hi += ((unsigned char)a * y->s.hi) + (x->s.hi * (unsigned char)b);
	mov	dptr,#(__mulint_t_1_2 + 0x000001)
	movx	a,@dptr
	mov	r6,a
	mov	dptr,#__mulint_a_1_1
	movx	a,@dptr
	mov	r7,a
	mov	a,#0x01
	add	a,r4
	mov	r0,a
	clr	a
	addc	a,r5
	mov	r1,a
	clr	a
	addc	a,r2
	mov	r2,a
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrget
	mov	r0,a
	mov	b,r7
	mov	a,r0
	mul	ab
	mov	r7,a
	mov	dptr,#__mulint_x_1_2
	movx	a,@dptr
	add	a,#0x01
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#__mulint_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	b,r2
	mov	a,r3
	mul	ab
	mov  r2,a
	add	a,r7
	add	a,r6
	mov  r6,a
	mov  dptr,#(__mulint_t_1_2 + 0x000001)
	movx @dptr,a
;	_mulint.c:246: return t.t;
	mov	dptr,#__mulint_t_1_2
	movx	a,@dptr
	inc	dptr
	mov	dpl1,a
	movx	a,@dptr
	mov	dph1,a
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
