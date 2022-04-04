;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module atoi
	.optsdcc -ms08
	
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CONST   (CODE)
	.area DSEG    (PAG)
	.area OSEG    (PAG, OVR)
	.area XSEG
	.area XISEG
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atoi_sloc0_1_0:
	.ds 1
_atoi_sloc1_1_0:
	.ds 2
_atoi_sloc2_1_0:
	.ds 2
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
;--------------------------------------------------------
; absolute ram data
;--------------------------------------------------------
	.area IABS    (ABS)
	.area IABS    (ABS)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_atoi_ret_1_37:
	.ds 2
_atoi_neg_1_37:
	.ds 1
_atoi___00020002_3_39:
	.ds 2
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
;sloc0                     Allocated with name '_atoi_sloc0_1_0'
;sloc1                     Allocated with name '_atoi_sloc1_1_0'
;sloc2                     Allocated with name '_atoi_sloc2_1_0'
;nptr                      Allocated to registers x h 
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated with name '_atoi_ret_1_37'
;neg                       Allocated with name '_atoi_neg_1_37'
;__00020002                Allocated with name '_atoi___00020002_3_39'
;c                         Allocated to registers 
;__00020005                Allocated to registers x h 
;c                         Allocated to registers 
;------------------------------------------------------------
;../atoi.c:34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_atoi:
	pshx
	tax
	pulh
;../atoi.c:36: int ret = 0;
	clra
	sta	_atoi_ret_1_37
	sta	(_atoi_ret_1_37 + 1)
;../atoi.c:39: while (isblank (*nptr))
00101$:
	lda	,x
	sta	*_atoi_sloc0_1_0
	lda	*_atoi_sloc0_1_0
	sta	(_atoi___00020002_3_39 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	_atoi___00020002_3_39
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	lda	(_atoi___00020002_3_39 + 1)
	cbeqa	#0x20,00115$
	cmp	#0x09
	bne	00131$
00115$:
;../atoi.c:40: nptr++;
	aix	#1
	bra	00101$
00131$:
;../atoi.c:42: neg = (*nptr == '-');
	lda	*_atoi_sloc0_1_0
	cbeqa	#0x2D,00157$
	clra
	bra	00156$
00157$:
	lda	#0x01
00156$:
	sta	_atoi_neg_1_37
;../atoi.c:44: if (*nptr == '-' || *nptr == '+')
	tsta
	bne	00104$
	lda	*_atoi_sloc0_1_0
	cmp	#0x2B
	bne	00129$
00104$:
;../atoi.c:45: nptr++;
	aix	#1
;../atoi.c:47: while (isdigit (*nptr))
00129$:
	sthx	*_atoi_sloc1_1_0
00107$:
	ldhx	*_atoi_sloc1_1_0
	lda	,x
	sta	*(_atoi_sloc2_1_0 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	*_atoi_sloc2_1_0
	ldhx	*_atoi_sloc2_1_0
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cpx	#0x30
	bcs	00109$
	cpx	#0x39
	bhi	00109$
;../atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	ldhx	_atoi_ret_1_37
	sthx	__mulint_PARM_2
	lda	#0x0A
	clrx
	jsr	__mulint
	pshx
	ldhx	*_atoi_sloc1_1_0
	aix	#1
	sthx	*_atoi_sloc1_1_0
	pulx
	pshx
	ldhx	*_atoi_sloc2_1_0
	aix	#-48
	sthx	*_atoi_sloc2_1_0
	pulx
	add	*(_atoi_sloc2_1_0 + 1)
	sta	(_atoi_ret_1_37 + 1)
	txa
	adc	*_atoi_sloc2_1_0
	sta	_atoi_ret_1_37
	bra	00107$
00109$:
;../atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	lda	_atoi_neg_1_37
	beq	00120$
	clra
	sub	(_atoi_ret_1_37 + 1)
	psha
	clra
	sbc	_atoi_ret_1_37
	tax
	pula
	rts
00120$:
	ldx	_atoi_ret_1_37
	lda	(_atoi_ret_1_37 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
