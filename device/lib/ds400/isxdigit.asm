;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module isxdigit
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
	.globl _isxdigit
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
;Allocation info for local variables in function 'isxdigit'
;------------------------------------------------------------
;c                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	isxdigit.c:33: int isxdigit (int c)
;	-----------------------------------------
;	 function isxdigit
;	-----------------------------------------
_isxdigit:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	isxdigit.c:35: return (c >= '0' && c <= '9' || c >= 'a' && c <= 'f' || c >= 'A' && c <= 'F');
	clr	c
	mov	a,dpl
	subb	a,#0x30
	mov	a,dph
	xrl	a,#0x80
	subb	a,#0x80
	jc   00111$
00127$:
	clr	c
	mov	a,#0x39
	subb	a,dpl
	clr	a
	xrl	a,#0x80
	mov	b,dph
	xrl	b,#0x80
	subb	a,b
	jnc  00104$
00128$:
00111$:
	clr	c
	mov	a,dpl
	subb	a,#0x61
	mov	a,dph
	xrl	a,#0x80
	subb	a,#0x80
	jc   00108$
00129$:
	clr	c
	mov	a,#0x66
	subb	a,dpl
	clr	a
	xrl	a,#0x80
	mov	b,dph
	xrl	b,#0x80
	subb	a,b
	jnc  00104$
00130$:
00108$:
	clr	c
	mov	a,dpl
	subb	a,#0x41
	mov	a,dph
	xrl	a,#0x80
	subb	a,#0x80
	jc   00103$
00131$:
	clr	c
	mov	a,#0x46
	subb	a,dpl
	clr	a
	xrl	a,#0x80
	mov	b,dph
	xrl	b,#0x80
	subb	a,b
	jnc  00104$
00132$:
00103$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
	sjmp 00105$
00104$:
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x01
00105$:
	mov	dpl1,r2
	mov	a,r2
	rlc	a
	subb	a,acc
	mov	dph1,a
	mov	dpl,dpl1
	mov	dph,dph1
00101$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
