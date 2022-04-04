;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module atol
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
	.globl _atol
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atol_sloc0_1_0:
	.ds 1
_atol_sloc1_1_0:
	.ds 2
_atol_sloc2_1_0:
	.ds 2
_atol_sloc3_1_0:
	.ds 4
_atol_sloc4_1_0:
	.ds 4
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
_atol_ret_1_37:
	.ds 4
_atol_neg_1_37:
	.ds 1
_atol___00020002_3_39:
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
;Allocation info for local variables in function 'atol'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atol_sloc0_1_0'
;sloc1                     Allocated with name '_atol_sloc1_1_0'
;sloc2                     Allocated with name '_atol_sloc2_1_0'
;sloc3                     Allocated with name '_atol_sloc3_1_0'
;sloc4                     Allocated with name '_atol_sloc4_1_0'
;nptr                      Allocated to registers x h 
;__00010004                Allocated to registers 
;__00010001                Allocated to registers 
;ret                       Allocated with name '_atol_ret_1_37'
;neg                       Allocated with name '_atol_neg_1_37'
;__00020002                Allocated with name '_atol___00020002_3_39'
;c                         Allocated to registers 
;__00020005                Allocated to registers x h 
;c                         Allocated to registers 
;------------------------------------------------------------
;../atol.c:34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_atol:
	pshx
	tax
	pulh
;../atol.c:36: long int ret = 0;
	clra
	sta	_atol_ret_1_37
	sta	(_atol_ret_1_37 + 1)
	sta	(_atol_ret_1_37 + 2)
	sta	(_atol_ret_1_37 + 3)
;../atol.c:39: while (isblank (*nptr))
00101$:
	lda	,x
	sta	*_atol_sloc0_1_0
	lda	*_atol_sloc0_1_0
	sta	(_atol___00020002_3_39 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	_atol___00020002_3_39
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	lda	(_atol___00020002_3_39 + 1)
	cbeqa	#0x20,00115$
	cmp	#0x09
	bne	00131$
00115$:
;../atol.c:40: nptr++;
	aix	#1
	bra	00101$
00131$:
;../atol.c:42: neg = (*nptr == '-');
	lda	*_atol_sloc0_1_0
	cbeqa	#0x2D,00157$
	clra
	bra	00156$
00157$:
	lda	#0x01
00156$:
	sta	_atol_neg_1_37
;../atol.c:44: if (*nptr == '-' || *nptr == '+')
	tsta
	bne	00104$
	lda	*_atol_sloc0_1_0
	cmp	#0x2B
	bne	00129$
00104$:
;../atol.c:45: nptr++;
	aix	#1
;../atol.c:47: while (isdigit (*nptr))
00129$:
	sthx	*_atol_sloc1_1_0
00107$:
	ldhx	*_atol_sloc1_1_0
	lda	,x
	sta	*(_atol_sloc2_1_0 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	*_atol_sloc2_1_0
	ldhx	*_atol_sloc2_1_0
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cpx	#0x30
	bcs	00109$
	cpx	#0x39
	bhi	00109$
;../atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	clrh
	clrx
	sthx	__mullong_PARM_1
	ldx	#0x0A
	sthx	(__mullong_PARM_1 + 2)
	ldhx	_atol_ret_1_37
	sthx	__mullong_PARM_2
	ldhx	(_atol_ret_1_37 + 2)
	sthx	(__mullong_PARM_2 + 2)
	jsr	__mullong
	sta	*(_atol_sloc3_1_0 + 3)
	stx	*(_atol_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atol_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atol_sloc3_1_0
	ldhx	*_atol_sloc1_1_0
	aix	#1
	sthx	*_atol_sloc1_1_0
	ldhx	*_atol_sloc2_1_0
	aix	#-48
	stx	*(_atol_sloc4_1_0 + 3)
	pshh
	pula
	sta	*(_atol_sloc4_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(_atol_sloc4_1_0 + 1)
	sta	*_atol_sloc4_1_0
	ldhx	#_atol_ret_1_37
	lda	*(_atol_sloc3_1_0 + 3)
	add	*(_atol_sloc4_1_0 + 3)
	sta	3,x
	lda	*(_atol_sloc3_1_0 + 2)
	adc	*(_atol_sloc4_1_0 + 2)
	sta	2,x
	lda	*(_atol_sloc3_1_0 + 1)
	adc	*(_atol_sloc4_1_0 + 1)
	sta	1,x
	lda	*_atol_sloc3_1_0
	adc	*_atol_sloc4_1_0
	sta	,x
	bra	00107$
00109$:
;../atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	lda	_atol_neg_1_37
	beq	00120$
	clra
	sub	(_atol_ret_1_37 + 3)
	sta	*(_atol_sloc4_1_0 + 3)
	clra
	sbc	(_atol_ret_1_37 + 2)
	sta	*(_atol_sloc4_1_0 + 2)
	clra
	sbc	(_atol_ret_1_37 + 1)
	sta	*(_atol_sloc4_1_0 + 1)
	clra
	sbc	_atol_ret_1_37
	sta	*_atol_sloc4_1_0
	bra	00121$
00120$:
	ldhx	_atol_ret_1_37
	sthx	*_atol_sloc4_1_0
	ldhx	(_atol_ret_1_37 + 2)
	sthx	*(_atol_sloc4_1_0 + 2)
00121$:
	mov	*_atol_sloc4_1_0,*___SDCC_hc08_ret3
	mov	*(_atol_sloc4_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_atol_sloc4_1_0 + 2)
	lda	*(_atol_sloc4_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
