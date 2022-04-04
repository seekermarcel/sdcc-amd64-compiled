;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:43 2022
;--------------------------------------------------------
	.module atol
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
_atol_sloc0_1_0:
	.ds 3
_atol_sloc1_1_0:
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
_atol_neg_1_37:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
_atol_ret_1_37:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;------------------------------------------------------------
;	atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r4,dpl
	mov	r3,dph
	mov	r2,b
;	atol.c:36: long int ret = 0;
	mov	r0,#_atol_ret_1_37
	clr	a
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
	inc	r0
	movx	@r0,a
;	atol.c:39: while (isblank (*nptr))
	mov	ar5,r4
	mov	ar6,r3
	mov	ar7,r2
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00147$
	sjmp	00115$
00147$:
	cjne	r4,#0x09,00131$
00115$:
;	atol.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
	sjmp	00101$
00131$:
	mov	ar4,r5
	mov	ar3,r6
	mov	ar2,r7
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r7,a
	cjne	r7,#0x2D,00151$
	setb	c
	sjmp	00152$
00151$:
	clr	c
00152$:
	mov	_atol_neg_1_37,c
;	atol.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r7,#0x2D,00153$
	sjmp	00104$
00153$:
	cjne	r7,#0x2B,00129$
00104$:
;	atol.c:45: nptr++;
	inc	r4
	cjne	r4,#0x00,00156$
	inc	r3
00156$:
;	atol.c:47: while (isdigit (*nptr))
00129$:
	mov	_atol_sloc0_1_0,r4
	mov	(_atol_sloc0_1_0 + 1),r3
	mov	(_atol_sloc0_1_0 + 2),r2
00107$:
	mov	dpl,_atol_sloc0_1_0
	mov	dph,(_atol_sloc0_1_0 + 1)
	mov	b,(_atol_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00157$
00157$:
	jc	00109$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00109$
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	r0,#_atol_ret_1_37
	mov	r1,#__mullong_PARM_2
	movx	a,@r0
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	inc	r0
	movx	a,@r0
	inc	r1
	movx	@r1,a
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	lcall	__mullong
	mov	_atol_sloc1_1_0,dpl
	mov	(_atol_sloc1_1_0 + 1),dph
	mov	(_atol_sloc1_1_0 + 2),b
	mov	(_atol_sloc1_1_0 + 3),a
	mov	dpl,_atol_sloc0_1_0
	mov	dph,(_atol_sloc0_1_0 + 1)
	mov	b,(_atol_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	_atol_sloc0_1_0,dpl
	mov	(_atol_sloc0_1_0 + 1),dph
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r5
	addc	a,#0xFF
	mov	r5,a
	mov	ar4,r6
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	r7,a
	mov	r0,#_atol_ret_1_37
	mov	a,r4
	add	a,_atol_sloc1_1_0
	movx	@r0,a
	mov	a,r5
	addc	a,(_atol_sloc1_1_0 + 1)
	inc	r0
	movx	@r0,a
	mov	a,r6
	addc	a,(_atol_sloc1_1_0 + 2)
	inc	r0
	movx	@r0,a
	mov	a,r7
	addc	a,(_atol_sloc1_1_0 + 3)
	inc	r0
	movx	@r0,a
	ljmp	00107$
00109$:
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	jnb	_atol_neg_1_37,00120$
	mov	r0,#_atol_ret_1_37
	movx	a,@r0
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r4,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r5,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r6,a
	inc	r0
	movx	a,@r0
	cpl	a
	addc	a,#0x00
	mov	r7,a
	sjmp	00121$
00120$:
	mov	r0,#_atol_ret_1_37
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r5,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	inc	r0
	movx	a,@r0
	mov	r7,a
00121$:
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
