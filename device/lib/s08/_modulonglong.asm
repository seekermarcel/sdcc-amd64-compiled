;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _modulonglong
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
	.globl __modulonglong_PARM_2
	.globl __modulonglong_PARM_1
	.globl __modulonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
__modulonglong_PARM_1:
	.ds 8
__modulonglong_PARM_2:
	.ds 8
__modulonglong_count_1_2:
	.ds 1
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
;Allocation info for local variables in function '_modulonglong'
;------------------------------------------------------------
;a                         Allocated with name '__modulonglong_PARM_1'
;b                         Allocated with name '__modulonglong_PARM_2'
;count                     Allocated with name '__modulonglong_count_1_2'
;------------------------------------------------------------
;../_modulonglong.c:38: _modulonglong (unsigned long long a, unsigned long long b)
;	-----------------------------------------
;	 function _modulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulonglong:
;../_modulonglong.c:40: unsigned char count = 0;
	clra
	sta	__modulonglong_count_1_2
;../_modulonglong.c:42: while (!MSB_SET(b))
00103$:
	psha
	lda	__modulonglong_PARM_2
	rola
	clra
	rola
	tax
	pula
	tstx
	beq	00138$
	jmp	00117$
00138$:
;../_modulonglong.c:44: b <<= 1;
	ldhx	__modulonglong_PARM_2
	sthx	__rlulonglong_PARM_1
	ldhx	(__modulonglong_PARM_2 + 2)
	sthx	(__rlulonglong_PARM_1 + 2)
	ldhx	(__modulonglong_PARM_2 + 4)
	sthx	(__rlulonglong_PARM_1 + 4)
	ldhx	(__modulonglong_PARM_2 + 6)
	sthx	(__rlulonglong_PARM_1 + 6)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	psha
	jsr	__rlulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
;../_modulonglong.c:45: if (b > a)
	lda	(__modulonglong_PARM_1 + 7)
	sub	(__modulonglong_PARM_2 + 7)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	__modulonglong_PARM_1
	sbc	__modulonglong_PARM_2
	pula
	bcc	00102$
;../_modulonglong.c:47: b >>=1;
	ldhx	__modulonglong_PARM_2
	sthx	__rrulonglong_PARM_1
	ldhx	(__modulonglong_PARM_2 + 2)
	sthx	(__rrulonglong_PARM_1 + 2)
	ldhx	(__modulonglong_PARM_2 + 4)
	sthx	(__rrulonglong_PARM_1 + 4)
	ldhx	(__modulonglong_PARM_2 + 6)
	sthx	(__rrulonglong_PARM_1 + 6)
	lda	#0x01
	sta	__rrulonglong_PARM_2
	jsr	__rrulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
;../_modulonglong.c:48: break;
	bra	00117$
00102$:
;../_modulonglong.c:50: count++;
	inca
	sta	__modulonglong_count_1_2
	jmp	00103$
;../_modulonglong.c:52: do
00117$:
	lda	__modulonglong_count_1_2
00108$:
;../_modulonglong.c:54: if (a >= b)
	psha
	lda	(__modulonglong_PARM_1 + 7)
	sub	(__modulonglong_PARM_2 + 7)
	lda	(__modulonglong_PARM_1 + 6)
	sbc	(__modulonglong_PARM_2 + 6)
	lda	(__modulonglong_PARM_1 + 5)
	sbc	(__modulonglong_PARM_2 + 5)
	lda	(__modulonglong_PARM_1 + 4)
	sbc	(__modulonglong_PARM_2 + 4)
	lda	(__modulonglong_PARM_1 + 3)
	sbc	(__modulonglong_PARM_2 + 3)
	lda	(__modulonglong_PARM_1 + 2)
	sbc	(__modulonglong_PARM_2 + 2)
	lda	(__modulonglong_PARM_1 + 1)
	sbc	(__modulonglong_PARM_2 + 1)
	lda	__modulonglong_PARM_1
	sbc	__modulonglong_PARM_2
	pula
	bcs	00107$
;../_modulonglong.c:55: a -= b;
	ldhx	#__modulonglong_PARM_1
	psha
	lda	7,x
	sub	(__modulonglong_PARM_2 + 7)
	sta	7,x
	lda	6,x
	sbc	(__modulonglong_PARM_2 + 6)
	sta	6,x
	lda	5,x
	sbc	(__modulonglong_PARM_2 + 5)
	sta	5,x
	lda	4,x
	sbc	(__modulonglong_PARM_2 + 4)
	sta	4,x
	lda	3,x
	sbc	(__modulonglong_PARM_2 + 3)
	sta	3,x
	lda	2,x
	sbc	(__modulonglong_PARM_2 + 2)
	sta	2,x
	lda	1,x
	sbc	(__modulonglong_PARM_2 + 1)
	sta	1,x
	lda	,x
	sbc	__modulonglong_PARM_2
	sta	,x
	pula
00107$:
;../_modulonglong.c:56: b >>= 1;
	ldhx	__modulonglong_PARM_2
	sthx	__rrulonglong_PARM_1
	ldhx	(__modulonglong_PARM_2 + 2)
	sthx	(__rrulonglong_PARM_1 + 2)
	ldhx	(__modulonglong_PARM_2 + 4)
	sthx	(__rrulonglong_PARM_1 + 4)
	ldhx	(__modulonglong_PARM_2 + 6)
	sthx	(__rrulonglong_PARM_1 + 6)
	ldx	#0x01
	stx	__rrulonglong_PARM_2
	psha
	jsr	__rrulonglong
	sta	(__modulonglong_PARM_2 + 7)
	stx	(__modulonglong_PARM_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__modulonglong_PARM_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__modulonglong_PARM_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__modulonglong_PARM_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__modulonglong_PARM_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__modulonglong_PARM_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__modulonglong_PARM_2
	pula
;../_modulonglong.c:58: while (count--);
	tax
	deca
	tstx
	beq	00141$
	jmp	00108$
00141$:
;../_modulonglong.c:60: return a;
	lda	__modulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__modulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__modulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__modulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__modulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__modulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__modulonglong_PARM_1 + 6)
	lda	(__modulonglong_PARM_1 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
