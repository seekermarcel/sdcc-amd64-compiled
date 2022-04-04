;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:26 2022
;--------------------------------------------------------
	.module atoi
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
	.globl _atoi
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
	.ds 4
_atoi_sloc0_1_0:
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
;Allocation info for local variables in function 'atoi'
;------------------------------------------------------------
;nptr                      Allocated with name '_atoi_nptr_1_36'
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated to registers r6 r7 
;__00020002                Allocated to registers r4 r5 
;c                         Allocated to registers 
;__00020005                Allocated to registers r0 r1 
;c                         Allocated to registers 
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;------------------------------------------------------------
;	atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_atoi_nptr_1_36
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
;	atoi.c:36: int ret = 0;
;	genAssign: resultIsFar = TRUE
	mov	r6,#0x00
	mov	r7,#0x00
;	atoi.c:39: while (isblank (*nptr))
	mov	dptr,#_atoi_nptr_1_36
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00101$:
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrget
	mov  r4,a
	rlc	a
	subb	a,acc
	mov	r5,a
;	../../device/include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	cjne	r4,#0x20,00147$
	sjmp 00115$
00147$:
	cjne r4,#0x09,00131$
00149$:
00115$:
;	atoi.c:40: nptr++;
	inc	r0
	cjne	r0,#0x00,00150$
	inc	r1
	cjne	r1,#0x00,00150$
	inc	r2
00150$:
	sjmp 00101$
00131$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_atoi_nptr_1_36
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	atoi.c:42: neg = (*nptr == '-');
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r2
	mov	b,r3
	lcall	__gptrget
	mov	r2,a
	clr     a
	cjne    r2,#0x2D,00151$
	inc     a
00151$:
00152$:
	add	a,#0xFF
	mov	_atoi_neg_1_37,c
;	atoi.c:44: if (*nptr == '-' || *nptr == '+')
	cjne	r2,#0x2D,00153$
	sjmp 00104$
00153$:
	cjne r2,#0x2B,00129$
00155$:
00104$:
;	atoi.c:45: nptr++;
	mov	dptr,#_atoi_nptr_1_36
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
;	atoi.c:47: while (isdigit (*nptr))
00129$:
	mov	dptr,#_atoi_nptr_1_36
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
00107$:
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov  r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
;	../../device/include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cjne	r0,#0x30,00156$
00156$:
	jc   00109$
00157$:
	clr	c
	mov	a,#0x39
	subb	a,r0
	jc   00109$
00158$:
;	atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
;	genAssign: resultIsFar = TRUE
	mov	dptr,#__mulint_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov  dptr,#0x000A
	lcall	__mulint
	mov	a,dpl
	mov	b,dph
	mov	dptr,#_atoi_sloc0_1_0
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r0,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	mov	a,r0
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,#0xD0
	mov	r0,a
	mov	a,r1
	addc	a,#0xFF
	mov	r1,a
	mov	dptr,#_atoi_sloc0_1_0
	movx	a,@dptr
	add	a,r0
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,r1
	mov	r7,a
	ljmp	00107$
00109$:
;	atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	jnb  _atoi_neg_1_37,00120$
00159$:
	clr	c
	clr	a
	subb	a,r6
	mov	dpl,a
	clr	a
	subb	a,r7
	mov	dph,a
	sjmp 00121$
00120$:
;	genAssign: resultIsFar = FALSE
	mov	dpl,r6
	mov	dph,r7
00121$:
00112$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
