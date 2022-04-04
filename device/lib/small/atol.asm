;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:41 2022
;--------------------------------------------------------
	.module atol
	.optsdcc -mmcs51 --model-small
	
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
_atol_nptr_1_36:
	.ds 3
_atol_ret_1_37:
	.ds 4
_atol___00020002_3_39:
	.ds 2
_atol___00020005_3_42:
	.ds 2
_atol_sloc0_1_0:
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
;nptr                      Allocated with name '_atol_nptr_1_36'
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated with name '_atol_ret_1_37'
;__00020002                Allocated with name '_atol___00020002_3_39'
;c                         Allocated to registers 
;__00020005                Allocated with name '_atol___00020005_3_42'
;c                         Allocated to registers 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
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
	mov	_atol_nptr_1_36,dpl
	mov	(_atol_nptr_1_36 + 1),dph
	mov	(_atol_nptr_1_36 + 2),b
;	atol.c:36: long int ret = 0;
	clr	a
	mov	_atol_ret_1_37,a
	mov	(_atol_ret_1_37 + 1),a
	mov	(_atol_ret_1_37 + 2),a
	mov	(_atol_ret_1_37 + 3),a
;	atol.c:39: while (isblank (*nptr))
	mov	r0,_atol_nptr_1_36
	mov	r6,(_atol_nptr_1_36 + 1)
	mov	r7,(_atol_nptr_1_36 + 2)
00101$:
	mov	dpl,r0
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	_atol___00020002_3_39,r5
	rlc	a
	subb	a,acc
	mov	(_atol___00020002_3_39 + 1),a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	mov	r5,_atol___00020002_3_39
	cjne	r5,#0x20,00147$
	sjmp	00115$
00147$:
	cjne	r5,#0x09,00131$
00115$:
;	atol.c:40: nptr++;
	inc	r0
	cjne	r0,#0x00,00101$
	inc	r6
	sjmp	00101$
00131$:
	mov	_atol_nptr_1_36,r0
	mov	(_atol_nptr_1_36 + 1),r6
	mov	(_atol_nptr_1_36 + 2),r7
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r0
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
	inc	_atol_nptr_1_36
	clr	a
	cjne	a,_atol_nptr_1_36,00156$
	inc	(_atol_nptr_1_36 + 1)
00156$:
;	atol.c:47: while (isdigit (*nptr))
00129$:
	mov	r5,_atol_nptr_1_36
	mov	r6,(_atol_nptr_1_36 + 1)
	mov	r7,(_atol_nptr_1_36 + 2)
00107$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	mov	_atol___00020005_3_42,r0
	rlc	a
	subb	a,acc
	mov	(_atol___00020005_3_42 + 1),a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	mov	r0,_atol___00020005_3_42
	cjne	r0,#0x30,00157$
00157$:
	jc	00109$
	mov	a,r0
	add	a,#0xff - 0x39
	jc	00109$
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	__mullong_PARM_2,_atol_ret_1_37
	mov	(__mullong_PARM_2 + 1),(_atol_ret_1_37 + 1)
	mov	(__mullong_PARM_2 + 2),(_atol_ret_1_37 + 2)
	mov	(__mullong_PARM_2 + 3),(_atol_ret_1_37 + 3)
	mov	dptr,#(0x0A&0x00ff)
	clr	a
	mov	b,a
	push	ar7
	push	ar6
	push	ar5
	lcall	__mullong
	mov	_atol_sloc0_1_0,dpl
	mov	(_atol_sloc0_1_0 + 1),dph
	mov	(_atol_sloc0_1_0 + 2),b
	mov	(_atol_sloc0_1_0 + 3),a
	pop	ar5
	pop	ar6
	pop	ar7
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r5,dpl
	mov	r6,dph
	mov	a,r0
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r0
	add	a,#0xD0
	mov	r0,a
	mov	a,r4
	addc	a,#0xFF
	mov	r4,a
	rlc	a
	subb	a,acc
	mov	r3,a
	mov	r2,a
	mov	a,r0
	add	a,_atol_sloc0_1_0
	mov	_atol_ret_1_37,a
	mov	a,r4
	addc	a,(_atol_sloc0_1_0 + 1)
	mov	(_atol_ret_1_37 + 1),a
	mov	a,r3
	addc	a,(_atol_sloc0_1_0 + 2)
	mov	(_atol_ret_1_37 + 2),a
	mov	a,r2
	addc	a,(_atol_sloc0_1_0 + 3)
	mov	(_atol_ret_1_37 + 3),a
	ljmp	00107$
00109$:
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	jnb	_atol_neg_1_37,00120$
	clr	c
	clr	a
	subb	a,_atol_ret_1_37
	mov	r4,a
	clr	a
	subb	a,(_atol_ret_1_37 + 1)
	mov	r5,a
	clr	a
	subb	a,(_atol_ret_1_37 + 2)
	mov	r6,a
	clr	a
	subb	a,(_atol_ret_1_37 + 3)
	mov	r7,a
	sjmp	00121$
00120$:
	mov	r4,_atol_ret_1_37
	mov	r5,(_atol_ret_1_37 + 1)
	mov	r6,(_atol_ret_1_37 + 2)
	mov	r7,(_atol_ret_1_37 + 3)
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
