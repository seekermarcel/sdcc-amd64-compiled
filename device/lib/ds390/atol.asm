;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:26 2022
;--------------------------------------------------------
	.module atol
	.optsdcc -mds390 --model-flat24
	
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
	.globl _atol
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
_atol_ret_1_37:
	.ds 4
_atol_sloc1_1_0:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;nptr                      Allocated to registers r6 r7 r0 r1 
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated with name '_atol_ret_1_37'
;__00020002                Allocated to registers r6 r7 
;c                         Allocated to registers 
;__00020005                Allocated to registers r6 r7 
;c                         Allocated to registers 
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;------------------------------------------------------------
;	atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	atol.c:36: long int ret = 0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_atol_ret_1_37
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	atol.c:39: while (isblank (*nptr))
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
00101$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r6,a
	rlc	a
	subb	a,acc
	mov	r7,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r6,#0x20,00147$
	sjmp 00115$
00147$:
	cjne r6,#0x09,00131$
00149$:
00115$:
;	atol.c:40: nptr++;
	inc	r2
	cjne	r2,#0x00,00150$
	inc	r3
	cjne	r3,#0x00,00150$
	inc	r4
00150$:
	sjmp 00101$
00131$:
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
;	atol.c:42: neg = (*nptr == '-');
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	clr     a
	cjne    r2,#0x2D,00151$
	inc     a
00151$:
00152$:
	add	a,#0xFF
	mov	_atol_neg_1_37,c
;	atol.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r2,#0x2D,00153$
	sjmp 00104$
00153$:
	cjne r2,#0x2B,00129$
00155$:
00104$:
;	atol.c:45: nptr++;
	inc	r6
	cjne	r6,#0x00,00156$
	inc	r7
	cjne	r7,#0x00,00156$
	inc	r0
00156$:
;	atol.c:47: while (isdigit (*nptr))
00129$:
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
00107$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r6,a
	rlc	a
	subb	a,acc
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	mov	ar7,r6
	cjne	r7,#0x30,00157$
00157$:
	jnc	00158$
	ljmp	00109$
00158$:
	clr	c
	mov	a,#0x39
	subb	a,r7
	jnc	00159$
	ljmp	00109$
00159$:
;	atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	mov	dptr,#_atol_ret_1_37
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#__mullong_PARM_2
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dps,#0
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x00000A
	mov	b,#0x00
	lcall	__mullong
	mov     dps, #1
	mov     dptr, #_atol_sloc1_1_0
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
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r6,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	mov	a,r6
	rlc	a
	subb	a,acc
	mov	r7,a
	mov	a,r6
	add	a,#0xD0
	mov	r6,a
	mov	a,r7
	addc	a,#0xFF
	mov  r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
	mov	r1,a
	mov	dptr,#_atol_sloc1_1_0
	mov	dps, #1
	mov	dptr, #_atol_ret_1_37
	dec	dps
	movx	a,@dptr
	add	a,r6
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r7
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r0
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,r1
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	ljmp	00107$
00109$:
;	atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	jnb  _atol_neg_1_37,00120$
00160$:
	mov	dptr,#_atol_ret_1_37
	movx	a,@dptr
	setb	c
	cpl	a
	addc	a,#0x00
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	cpl	a
	addc	a,#0x00
	mov	r5,a
	sjmp 00121$
00120$:
	mov	dptr,#_atol_ret_1_37
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00121$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00112$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
