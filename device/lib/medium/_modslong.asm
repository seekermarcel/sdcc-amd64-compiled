;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:43 2022
;--------------------------------------------------------
	.module _modslong
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __modslong_PARM_2
	.globl __modslong
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
__modslong_sloc0_1_0:
	.ds 4
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
__modslong_PARM_2:
	.ds 4
__modslong_r_1_2:
	.ds 4
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;Allocation info for local variables in function '_modslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslong_sloc0_1_0'
;------------------------------------------------------------
;	_modslong.c:259: _modslong (long a, long b)
;	-----------------------------------------
;	 function _modslong
;	-----------------------------------------
__modslong:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
;	_modslong.c:263: r = (unsigned long)(a < 0 ? -a : a) % (unsigned long)(b < 0 ? -b : b);
	mov	r7,a
	rlc	a
	clr	a
	rlc	a
	mov	r3,a
	jz	00106$
	clr	c
	clr	a
	subb	a,r4
	mov	__modslong_sloc0_1_0,a
	clr	a
	subb	a,r5
	mov	(__modslong_sloc0_1_0 + 1),a
	clr	a
	subb	a,r6
	mov	(__modslong_sloc0_1_0 + 2),a
	clr	a
	subb	a,r7
	mov	(__modslong_sloc0_1_0 + 3),a
	sjmp	00107$
00106$:
	mov	__modslong_sloc0_1_0,r4
	mov	(__modslong_sloc0_1_0 + 1),r5
	mov	(__modslong_sloc0_1_0 + 2),r6
	mov	(__modslong_sloc0_1_0 + 3),r7
00107$:
	mov	r4,__modslong_sloc0_1_0
	mov	r5,(__modslong_sloc0_1_0 + 1)
	mov	r6,(__modslong_sloc0_1_0 + 2)
	mov	r7,(__modslong_sloc0_1_0 + 3)
	mov	r0,#(__modslong_PARM_2 + 3)
	movx	a,@r0
	jnb	acc.7,00108$
	mov	r0,#__modslong_PARM_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	__modslong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	(__modslong_sloc0_1_0 + 3),a
	sjmp	00109$
00108$:
	mov	r0,#__modslong_PARM_2
	movx	a,@r0
	mov	__modslong_sloc0_1_0,a
	inc	r0
	movx	a,@r0
	mov	(__modslong_sloc0_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(__modslong_sloc0_1_0 + 2),a
	inc	r0
	movx	a,@r0
	mov	(__modslong_sloc0_1_0 + 3),a
00109$:
	mov	r0,#__modulong_PARM_2
	mov	a,__modslong_sloc0_1_0
	movx	@r0,a
	inc	r0
	mov	a,(__modslong_sloc0_1_0 + 1)
	movx	@r0,a
	inc	r0
	mov	a,(__modslong_sloc0_1_0 + 2)
	movx	@r0,a
	inc	r0
	mov	a,(__modslong_sloc0_1_0 + 3)
	movx	@r0,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	push	ar3
	lcall	__modulong
	mov	r0,#__modslong_r_1_2
	push	acc
	mov	a,dpl
	movx	@r0,a
	inc	r0
	mov	a,dph
	movx	@r0,a
	inc	r0
	mov	a,b
	movx	@r0,a
	pop	acc
	inc	r0
	movx	@r0,a
	pop	ar3
;	_modslong.c:265: if (a < 0)
	mov	a,r3
	jz	00102$
;	_modslong.c:266: return -r;
	mov	r0,#__modslong_r_1_2
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r2,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r3,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	ret
00102$:
;	_modslong.c:268: return r;
	mov	r0,#__modslong_r_1_2
	movx	a,@r0
	mov	dpl,a
	inc	r0
	movx	a,@r0
	mov	dph,a
	inc	r0
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
