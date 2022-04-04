;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:41 2022
;--------------------------------------------------------
	.module atoi
	.optsdcc -mmcs51 --model-small
	
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
_atoi_ret_1_37:
	.ds 2
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
;nptr                      Allocated to registers r5 r6 r7 
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated with name '_atoi_ret_1_37'
;__00020002                Allocated to registers r4 r3 
;c                         Allocated to registers 
;__00020005                Allocated to registers r4 r3 
;c                         Allocated to registers 
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
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	atoi.c:36: int ret = 0;
	clr	a
	mov	_atoi_ret_1_37,a
	mov	(_atoi_ret_1_37 + 1),a
;	atoi.c:39: while (isblank (*nptr))
	mov	ar0,r5
	mov	ar1,r6
	mov	ar2,r7
00101$:
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
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
	inc	r0
	cjne	r0,#0x00,00101$
	inc	r1
	sjmp	00101$
00131$:
	mov	ar5,r0
	mov	ar6,r1
	mov	ar7,r2
;	atoi.c:42: neg = (*nptr == '-');
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	r4,a
	cjne	r4,#0x2D,00151$
	setb	c
	sjmp	00152$
00151$:
	clr	c
00152$:
	mov	_atoi_neg_1_37,c
;	atoi.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r4,#0x2D,00153$
	sjmp	00104$
00153$:
	cjne	r4,#0x2B,00129$
00104$:
;	atoi.c:45: nptr++;
	inc	r5
	cjne	r5,#0x00,00156$
	inc	r6
00156$:
;	atoi.c:47: while (isdigit (*nptr))
00129$:
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
	cjne	r4,#0x30,00157$
00157$:
	jc	00109$
	mov	a,r4
	add	a,#0xff - 0x39
	jc	00109$
;	atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	__mulint_PARM_2,_atoi_ret_1_37
	mov	(__mulint_PARM_2 + 1),(_atoi_ret_1_37 + 1)
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
	mov	a,r1
	add	a,r3
	mov	_atoi_ret_1_37,a
	mov	a,r2
	addc	a,r4
	mov	(_atoi_ret_1_37 + 1),a
	sjmp	00107$
00109$:
;	atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	jnb	_atoi_neg_1_37,00120$
	clr	c
	clr	a
	subb	a,_atoi_ret_1_37
	mov	r6,a
	clr	a
	subb	a,(_atoi_ret_1_37 + 1)
	mov	r7,a
	sjmp	00121$
00120$:
	mov	r6,_atoi_ret_1_37
	mov	r7,(_atoi_ret_1_37 + 1)
00121$:
	mov	dpl,r6
	mov	dph,r7
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
