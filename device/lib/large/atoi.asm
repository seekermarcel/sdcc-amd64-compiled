;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:46 2022
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
_atoi_neg_1_37:
	.ds 1
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_atoi_nptr_1_36:
	.ds 3
_atoi_ret_1_37:
	.ds 2
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;nptr                      Allocated with name '_atoi_nptr_1_36'
;__00010004                Allocated with name '_atoi___00010004_4_43'
;__00010001                Allocated with name '_atoi___00010001_4_40'
;ret                       Allocated with name '_atoi_ret_1_37'
;__00020002                Allocated with name '_atoi___00020002_3_39'
;c                         Allocated with name '_atoi_c_3_39'
;__00020005                Allocated with name '_atoi___00020005_3_42'
;c                         Allocated with name '_atoi_c_3_42'
;------------------------------------------------------------
;	atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_atoi_nptr_1_36
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atoi.c:36: int ret = 0;
	mov	dptr,#_atoi_ret_1_37
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	atoi.c:39: while (isblank (*nptr))
	mov	dptr,#_atoi_nptr_1_36
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
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
;	atoi.c:40: nptr++;
	inc	r5
	cjne	r5,#0x00,00150$
	inc	r6
00150$:
	mov	dptr,#_atoi_nptr_1_36
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	sjmp	00101$
00131$:
	mov	dptr,#_atoi_nptr_1_36
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atoi.c:42: neg = (*nptr == '-');
	mov	ar2,r5
	mov	ar3,r6
	mov	ar4,r7
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
	mov	_atoi_neg_1_37,c
;	atoi.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r7,#0x2D,00153$
	sjmp	00104$
00153$:
	cjne	r7,#0x2B,00129$
00104$:
;	atoi.c:45: nptr++;
	mov	dptr,#_atoi_nptr_1_36
	mov	a,#0x01
	add	a,r2
	movx	@dptr,a
	clr	a
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
;	atoi.c:47: while (isdigit (*nptr))
00129$:
	mov	dptr,#_atoi_nptr_1_36
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r4,#0x30,00156$
00156$:
	jc	00132$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00132$
;	atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	dptr,#_atoi_ret_1_37
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	mov	dptr,#__mulint_PARM_2
	mov	a,r3
	movx	@dptr,a
	mov	a,r4
	inc	dptr
	movx	@dptr,a
	mov	dptr,#0x000A
	push	ar7
	push	ar6
	push	ar5
	lcall	__mulint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r2,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	dptr,#_atoi_nptr_1_36
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	mov	a,r2
	mov	r1,a
	rlc	a
	subb	a,acc
	mov	r2,a
	mov	a,r1
	add	a,#0xD0
	mov	r1,a
	mov	a,r2
	addc	a,#0xFF
	mov	r2,a
	mov	dptr,#_atoi_ret_1_37
	mov	a,r1
	add	a,r3
	movx	@dptr,a
	mov	a,r2
	addc	a,r4
	inc	dptr
	movx	@dptr,a
	sjmp	00107$
00132$:
	mov	dptr,#_atoi_nptr_1_36
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	jnb	_atoi_neg_1_37,00120$
	mov	dptr,#_atoi_ret_1_37
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	clr	c
	clr	a
	subb	a,r6
	mov	r6,a
	clr	a
	subb	a,r7
	mov	r7,a
	sjmp	00121$
00120$:
	mov	dptr,#_atoi_ret_1_37
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00121$:
	mov	dpl,r6
	mov	dph,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
