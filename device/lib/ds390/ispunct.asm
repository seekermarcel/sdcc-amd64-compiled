;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:26 2022
;--------------------------------------------------------
	.module ispunct
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
	.globl _isalnum
	.globl _isspace
	.globl _isprint
	.globl _ispunct
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
;Allocation info for local variables in function 'ispunct'
;------------------------------------------------------------
;c                         Allocated to registers r2 r3 
;------------------------------------------------------------
;	ispunct.c:33: int ispunct (int c)
;	-----------------------------------------
;	 function ispunct
;	-----------------------------------------
_ispunct:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
;	ispunct.c:35: return (isprint (c) && !isspace (c) && !isalnum (c));
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	_isprint
	pop	ar3
	pop	ar2
	mov	a,dpl
	orl	a,dph
	jz  00103$
00114$:
	push	ar2
	push	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	_isspace
	pop	ar3
	pop	ar2
	mov	a,dpl
	orl	a,dph
	jnz  00103$
00115$:
	mov	dpl,r2
	mov	dph,r3
	lcall	_isalnum
	mov	a,dpl
	orl	a,dph
	jz  00104$
00116$:
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
