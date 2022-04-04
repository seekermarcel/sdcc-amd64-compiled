;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module _mullong
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
	.globl __mullong_PARM_2
	.globl __mullong
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
__mullong_PARM_2:
	.ds 4
__mullong_a_1_1:
	.ds 4
__mullong_t_1_2:
	.ds 4
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
;Allocation info for local variables in function '_mullong'
;------------------------------------------------------------
;b                         Allocated with name '__mullong_PARM_2'
;a                         Allocated with name '__mullong_a_1_1'
;t                         Allocated with name '__mullong_t_1_2'
;------------------------------------------------------------
;	_mullong.c:734: _mullong (long a, long b)
;	-----------------------------------------
;	 function _mullong
;	-----------------------------------------
__mullong:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #__mullong_a_1_1
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	_mullong.c:738: t.i.hi = bcast(a)->b.b0 * bcast(b)->b.b2;           // A
	mov dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r2,a
	mov	r3,#__mullong_PARM_2
	mov	r4,#(__mullong_PARM_2 >> 8)
	mov	r5,#(__mullong_PARM_2 >> 16)
	mov	dpx,r5
	mov	dph,r4
	mov	dpl,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	b,r2
	mov	a,r3
	mul	ab
	mov	r2,a
	mov	r4,b
	mov	dptr,#(__mullong_t_1_2 + 0x000002)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_mullong.c:739: t.i.lo = bcast(a)->b.b0 * bcast(b)->b.b0;           // A
	mov dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r2,a
	mov dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	r3,a
	mov	b,r2
	mov	a,r3
	mul	ab
	mov	r2,a
	mov	r4,b
	mov	dptr,#__mullong_t_1_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	_mullong.c:740: t.b.b3 += bcast(a)->b.b3 * bcast(b)->b.b0;          // G
	mov	dptr,#(__mullong_t_1_2 + 0x000003)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#__mullong_a_1_1
	mov	r4,#(__mullong_a_1_1 >> 8)
	mov	r5,#(__mullong_a_1_1 >> 16)
	mov	dpx,r5
	mov	dph,r4
	mov	dpl,r3
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	r4,a
	mov	b,r3
	mov	a,r4
	mul	ab
	mov  r3,a
	add	a,r2
	mov  r2,a
	mov  dptr,#(__mullong_t_1_2 + 0x000003)
	movx @dptr,a
;	_mullong.c:741: t.b.b3 += bcast(a)->b.b2 * bcast(b)->b.b1;          // F
	mov	dptr,#(__mullong_t_1_2 + 0x000003)
	movx	a,@dptr
	mov	r2,a
	mov	r3,#__mullong_a_1_1
	mov	r4,#(__mullong_a_1_1 >> 8)
	mov	r5,#(__mullong_a_1_1 >> 16)
	mov	dpx,r5
	mov	dph,r4
	mov	dpl,r3
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	mov	r4,#__mullong_PARM_2
	mov	r5,#(__mullong_PARM_2 >> 8)
	mov	r6,#(__mullong_PARM_2 >> 16)
	mov	dpx,r6
	mov	dph,r5
	mov	dpl,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	b,r3
	mov	a,r4
	mul	ab
	mov  r3,a
	add	a,r2
	mov  r2,a
	mov  dptr,#(__mullong_t_1_2 + 0x000003)
	movx @dptr,a
;	_mullong.c:742: t.i.hi += bcast(a)->b.b2 * bcast(b)->b.b0;          // E <- b lost in .lst
	mov	dptr,#(__mullong_t_1_2 + 0x000002)
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	mov	r3,a
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	r6,#(__mullong_a_1_1 >> 16)
	mov	dpx,r6
	mov	dph,r5
	mov	dpl,r4
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	r5,a
	mov	b,r4
	mov	a,r5
	mul	ab
	mov	r4,a
	mov	r6,b
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#(__mullong_t_1_2 + 0x000002)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_mullong.c:744: t.i.hi += bcast(a)->b.b1 * bcast(b)->b.b1;          // D <- b lost in .lst
	mov	dptr,#(__mullong_t_1_2 + 0x000002)
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	mov	r3,a
	mov	r4,#__mullong_a_1_1
	mov	r5,#(__mullong_a_1_1 >> 8)
	mov	r6,#(__mullong_a_1_1 >> 16)
	mov	dpx,r6
	mov	dph,r5
	mov	dpl,r4
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	r5,#__mullong_PARM_2
	mov	r6,#(__mullong_PARM_2 >> 8)
	mov	r7,#(__mullong_PARM_2 >> 16)
	mov	dpx,r7
	mov	dph,r6
	mov	dpl,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	b,r4
	mov	a,r5
	mul	ab
	mov	r4,a
	mov	r6,b
	add	a,r2
	mov	r2,a
	mov	a,r6
	addc	a,r3
	mov	r3,a
	mov	dptr,#(__mullong_t_1_2 + 0x000002)
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	_mullong.c:746: bcast(a)->bi.b3 = bcast(a)->b.b1 * bcast(b)->b.b2;  // C
	mov	r2,#__mullong_a_1_1
	mov	r3,#(__mullong_a_1_1 >> 8)
	mov	r4,#(__mullong_a_1_1 >> 16)
	mov	a,#0x03
	add	a,r2
	mov	dpl1,a
	clr	a
	addc	a,r3
	mov	dph1,a
	clr	a
	addc	a,r4
	mov	dpx1,a
	mov	r5,#__mullong_a_1_1
	mov	r6,#(__mullong_a_1_1 >> 8)
	mov	r7,#(__mullong_a_1_1 >> 16)
	mov	dpx,r7
	mov	dph,r6
	mov	dpl,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	r6,#__mullong_PARM_2
	mov	r7,#(__mullong_PARM_2 >> 8)
	mov	r0,#(__mullong_PARM_2 >> 16)
	mov	dpx,r0
	mov	dph,r7
	mov	dpl,r6
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	b,r5
	mov	a,r6
	mul	ab
	mov  r5,a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	_mullong.c:747: bcast(a)->bi.i12 = bcast(a)->b.b1 * bcast(b)->b.b0; // C
	mov	r2,#__mullong_a_1_1
	mov	r3,#(__mullong_a_1_1 >> 8)
	mov	r4,#(__mullong_a_1_1 >> 16)
	mov	a,#0x01
	add	a,r2
	mov	dpl1,a
	clr	a
	addc	a,r3
	mov	dph1,a
	clr	a
	addc	a,r4
	mov	dpx1,a
	mov	r5,#__mullong_a_1_1
	mov	r6,#(__mullong_a_1_1 >> 8)
	mov	r7,#(__mullong_a_1_1 >> 16)
	mov	dpx,r7
	mov	dph,r6
	mov	dpl,r5
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	r6,a
	mov	b,r5
	mov	a,r6
	mul	ab
	mov	r5,a
	mov	r7,b
	inc	dps
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dps,#0
;	_mullong.c:749: bcast(b)->bi.b3 = bcast(a)->b.b0 * bcast(b)->b.b3;  // B
	mov	r2,#__mullong_PARM_2
	mov	r3,#(__mullong_PARM_2 >> 8)
	mov	r4,#(__mullong_PARM_2 >> 16)
	mov	a,#0x03
	add	a,r2
	mov	dpl1,a
	clr	a
	addc	a,r3
	mov	dph1,a
	clr	a
	addc	a,r4
	mov	dpx1,a
	mov dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r5,a
	mov	r6,#__mullong_PARM_2
	mov	r7,#(__mullong_PARM_2 >> 8)
	mov	r0,#(__mullong_PARM_2 >> 16)
	mov	dpx,r0
	mov	dph,r7
	mov	dpl,r6
	inc	dptr
	inc	dptr
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	b,r5
	mov	a,r6
	mul	ab
	mov  r5,a
	inc	dps
	movx	@dptr,a
	mov	dps,#0
;	_mullong.c:750: bcast(b)->bi.i12 = bcast(a)->b.b0 * bcast(b)->b.b1; // B
	mov	r2,#__mullong_PARM_2
	mov	r3,#(__mullong_PARM_2 >> 8)
	mov	r4,#(__mullong_PARM_2 >> 16)
	mov	a,#0x01
	add	a,r2
	mov	dpl1,a
	clr	a
	addc	a,r3
	mov	dph1,a
	clr	a
	addc	a,r4
	mov	dpx1,a
	mov dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r5,a
	mov	r6,#__mullong_PARM_2
	mov	r7,#(__mullong_PARM_2 >> 8)
	mov	r0,#(__mullong_PARM_2 >> 16)
	mov	dpx,r0
	mov	dph,r7
	mov	dpl,r6
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	mov	b,r5
	mov	a,r6
	mul	ab
	mov	r5,a
	mov	r7,b
	inc	dps
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dps,#0
;	_mullong.c:752: bcast(b)->bi.b0 = 0;                                // B
	mov dptr,#__mullong_PARM_2
;	_mullong.c:753: bcast(a)->bi.b0 = 0;                                // C
	clr   a
	movx  @dptr,a
	mov   dptr,#__mullong_a_1_1
	movx  @dptr,a
;	_mullong.c:754: t.l += a;
	mov	dptr,#__mullong_t_1_2
	movx	a,@dptr
	inc	dptr
	mov	r2,a
	movx	a,@dptr
	inc	dptr
	mov	r3,a
	movx	a,@dptr
	inc	dptr
	mov	r4,a
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#__mullong_a_1_1
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r0
	addc	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	dptr,#__mullong_t_1_2
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_mullong.c:756: return t.l + b;
	mov	dptr,#__mullong_t_1_2
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	inc	dptr
	movx	a,@dptr
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r0
	addc	a,r4
	mov	r4,a
	mov	a,r1
	addc	a,r5
	mov	r5,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
