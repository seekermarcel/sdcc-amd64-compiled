;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _divulonglong
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
	.globl __divulonglong_PARM_2
	.globl __divulonglong_PARM_1
	.globl __divulonglong
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
__divulonglong_PARM_1:
	.ds 8
__divulonglong_PARM_2:
	.ds 8
__divulonglong_reste_1_2:
	.ds 8
__divulonglong_count_1_2:
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
;Allocation info for local variables in function '_divulonglong'
;------------------------------------------------------------
;x                         Allocated with name '__divulonglong_PARM_1'
;y                         Allocated with name '__divulonglong_PARM_2'
;reste                     Allocated with name '__divulonglong_reste_1_2'
;count                     Allocated with name '__divulonglong_count_1_2'
;c                         Allocated to registers a 
;------------------------------------------------------------
;../_divulonglong.c:39: _divulonglong (unsigned long long x, unsigned long long y)
;	-----------------------------------------
;	 function _divulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divulonglong:
;../_divulonglong.c:41: unsigned long long reste = 0L;
	clrh
	clrx
	sthx	__divulonglong_reste_1_2
	sthx	(__divulonglong_reste_1_2 + 2)
	sthx	(__divulonglong_reste_1_2 + 4)
	sthx	(__divulonglong_reste_1_2 + 6)
;../_divulonglong.c:42: unsigned char count = 64;
	lda	#0x40
	sta	__divulonglong_count_1_2
;../_divulonglong.c:45: do
00105$:
;../_divulonglong.c:48: c = MSB_SET(x);
	lda	__divulonglong_PARM_1
	rola
	clra
	rola
;../_divulonglong.c:49: x <<= 1;
	ldhx	__divulonglong_PARM_1
	sthx	__rlulonglong_PARM_1
	ldhx	(__divulonglong_PARM_1 + 2)
	sthx	(__rlulonglong_PARM_1 + 2)
	ldhx	(__divulonglong_PARM_1 + 4)
	sthx	(__rlulonglong_PARM_1 + 4)
	ldhx	(__divulonglong_PARM_1 + 6)
	sthx	(__rlulonglong_PARM_1 + 6)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	psha
	jsr	__rlulonglong
	sta	(__divulonglong_PARM_1 + 7)
	stx	(__divulonglong_PARM_1 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__divulonglong_PARM_1 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__divulonglong_PARM_1 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__divulonglong_PARM_1 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__divulonglong_PARM_1 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__divulonglong_PARM_1 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__divulonglong_PARM_1
	pula
;../_divulonglong.c:50: reste <<= 1;
	ldhx	__divulonglong_reste_1_2
	sthx	__rlulonglong_PARM_1
	ldhx	(__divulonglong_reste_1_2 + 2)
	sthx	(__rlulonglong_PARM_1 + 2)
	ldhx	(__divulonglong_reste_1_2 + 4)
	sthx	(__rlulonglong_PARM_1 + 4)
	ldhx	(__divulonglong_reste_1_2 + 6)
	sthx	(__rlulonglong_PARM_1 + 6)
	ldx	#0x01
	stx	__rlulonglong_PARM_2
	psha
	jsr	__rlulonglong
	sta	(__divulonglong_reste_1_2 + 7)
	stx	(__divulonglong_reste_1_2 + 6)
	lda	*___SDCC_hc08_ret2
	sta	(__divulonglong_reste_1_2 + 5)
	lda	*___SDCC_hc08_ret3
	sta	(__divulonglong_reste_1_2 + 4)
	lda	*___SDCC_hc08_ret4
	sta	(__divulonglong_reste_1_2 + 3)
	lda	*___SDCC_hc08_ret5
	sta	(__divulonglong_reste_1_2 + 2)
	lda	*___SDCC_hc08_ret6
	sta	(__divulonglong_reste_1_2 + 1)
	lda	*___SDCC_hc08_ret7
	sta	__divulonglong_reste_1_2
	pula
;../_divulonglong.c:51: if (c)
	tsta
	beq	00102$
;../_divulonglong.c:52: reste |= 1L;
	lda	(__divulonglong_reste_1_2 + 7)
	ora	#0x01
	sta	(__divulonglong_reste_1_2 + 7)
00102$:
;../_divulonglong.c:54: if (reste >= y)
	lda	(__divulonglong_reste_1_2 + 7)
	sub	(__divulonglong_PARM_2 + 7)
	lda	(__divulonglong_reste_1_2 + 6)
	sbc	(__divulonglong_PARM_2 + 6)
	lda	(__divulonglong_reste_1_2 + 5)
	sbc	(__divulonglong_PARM_2 + 5)
	lda	(__divulonglong_reste_1_2 + 4)
	sbc	(__divulonglong_PARM_2 + 4)
	lda	(__divulonglong_reste_1_2 + 3)
	sbc	(__divulonglong_PARM_2 + 3)
	lda	(__divulonglong_reste_1_2 + 2)
	sbc	(__divulonglong_PARM_2 + 2)
	lda	(__divulonglong_reste_1_2 + 1)
	sbc	(__divulonglong_PARM_2 + 1)
	lda	__divulonglong_reste_1_2
	sbc	__divulonglong_PARM_2
	bcs	00106$
;../_divulonglong.c:56: reste -= y;
	ldhx	#__divulonglong_reste_1_2
	lda	7,x
	sub	(__divulonglong_PARM_2 + 7)
	sta	7,x
	lda	6,x
	sbc	(__divulonglong_PARM_2 + 6)
	sta	6,x
	lda	5,x
	sbc	(__divulonglong_PARM_2 + 5)
	sta	5,x
	lda	4,x
	sbc	(__divulonglong_PARM_2 + 4)
	sta	4,x
	lda	3,x
	sbc	(__divulonglong_PARM_2 + 3)
	sta	3,x
	lda	2,x
	sbc	(__divulonglong_PARM_2 + 2)
	sta	2,x
	lda	1,x
	sbc	(__divulonglong_PARM_2 + 1)
	sta	1,x
	lda	,x
	sbc	__divulonglong_PARM_2
	sta	,x
;../_divulonglong.c:58: x |= 1L;
	lda	(__divulonglong_PARM_1 + 7)
	ora	#0x01
	sta	(__divulonglong_PARM_1 + 7)
00106$:
;../_divulonglong.c:61: while (--count);
	lda	__divulonglong_count_1_2
	sub	#0x01
	sta	__divulonglong_count_1_2
	tsta
	beq	00128$
	jmp	00105$
00128$:
;../_divulonglong.c:62: return x;
	lda	__divulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__divulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__divulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__divulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__divulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__divulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__divulonglong_PARM_1 + 6)
	lda	(__divulonglong_PARM_1 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
