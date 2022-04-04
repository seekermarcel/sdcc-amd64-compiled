;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _modulong
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
	.globl __modulong_PARM_2
	.globl __modulong_PARM_1
	.globl __modulong
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
__modulong_PARM_1:
	.ds 4
__modulong_PARM_2:
	.ds 4
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
;Allocation info for local variables in function '_modulong'
;------------------------------------------------------------
;a                         Allocated with name '__modulong_PARM_1'
;b                         Allocated with name '__modulong_PARM_2'
;count                     Allocated to registers h 
;------------------------------------------------------------
;../_modulong.c:340: _modulong (unsigned long a, unsigned long b)
;	-----------------------------------------
;	 function _modulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modulong:
;../_modulong.c:342: unsigned char count = 0;
	clrh
;../_modulong.c:344: while (!MSB_SET(b))
	clrx
00103$:
	lda	__modulong_PARM_2
	rola
	clra
	rola
	tsta
	bne	00117$
;../_modulong.c:346: b <<= 1;
	pshx
	lda	(__modulong_PARM_2 + 3)
	ldx	(__modulong_PARM_2 + 2)
	lsla
	rolx
	sta	(__modulong_PARM_2 + 3)
	stx	(__modulong_PARM_2 + 2)
	lda	(__modulong_PARM_2 + 1)
	ldx	__modulong_PARM_2
	rola
	rolx
	sta	(__modulong_PARM_2 + 1)
	stx	__modulong_PARM_2
	pulx
;../_modulong.c:347: if (b > a)
	lda	(__modulong_PARM_1 + 3)
	sub	(__modulong_PARM_2 + 3)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	lda	__modulong_PARM_1
	sbc	__modulong_PARM_2
	bcc	00102$
;../_modulong.c:349: b >>=1;
	lda	(__modulong_PARM_2 + 1)
	ldx	__modulong_PARM_2
	lsrx
	rora
	sta	(__modulong_PARM_2 + 1)
	stx	__modulong_PARM_2
	lda	(__modulong_PARM_2 + 3)
	ldx	(__modulong_PARM_2 + 2)
	rorx
	rora
	sta	(__modulong_PARM_2 + 3)
	stx	(__modulong_PARM_2 + 2)
;../_modulong.c:350: break;
	bra	00117$
00102$:
;../_modulong.c:352: count++;
	aix	#1
	pshx
	pulh
	bra	00103$
;../_modulong.c:354: do
00117$:
	pshh
	pulx
00108$:
;../_modulong.c:356: if (a >= b)
	lda	(__modulong_PARM_1 + 3)
	sub	(__modulong_PARM_2 + 3)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	lda	__modulong_PARM_1
	sbc	__modulong_PARM_2
	bcs	00107$
;../_modulong.c:357: a -= b;
	lda	(__modulong_PARM_1 + 3)
	sub	(__modulong_PARM_2 + 3)
	sta	(__modulong_PARM_1 + 3)
	lda	(__modulong_PARM_1 + 2)
	sbc	(__modulong_PARM_2 + 2)
	sta	(__modulong_PARM_1 + 2)
	lda	(__modulong_PARM_1 + 1)
	sbc	(__modulong_PARM_2 + 1)
	sta	(__modulong_PARM_1 + 1)
	lda	__modulong_PARM_1
	sbc	__modulong_PARM_2
	sta	__modulong_PARM_1
00107$:
;../_modulong.c:358: b >>= 1;
	pshx
	lda	(__modulong_PARM_2 + 1)
	ldx	__modulong_PARM_2
	lsrx
	rora
	sta	(__modulong_PARM_2 + 1)
	stx	__modulong_PARM_2
	lda	(__modulong_PARM_2 + 3)
	ldx	(__modulong_PARM_2 + 2)
	rorx
	rora
	sta	(__modulong_PARM_2 + 3)
	stx	(__modulong_PARM_2 + 2)
	pulx
;../_modulong.c:360: while (count--);
	txa
	decx
	tsta
	bne	00108$
;../_modulong.c:362: return a;
	lda	__modulong_PARM_1
	sta	*___SDCC_hc08_ret3
	lda	(__modulong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(__modulong_PARM_1 + 2)
	lda	(__modulong_PARM_1 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
