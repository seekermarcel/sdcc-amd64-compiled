;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module _modslonglong
	.optsdcc -mhc08
	
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
	.globl __modslonglong_PARM_2
	.globl __modslonglong_PARM_1
	.globl __modslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__modslonglong_sloc0_1_0:
	.ds 8
__modslonglong_sloc1_1_0:
	.ds 1
__modslonglong_sloc2_1_0:
	.ds 8
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
__modslonglong_PARM_1:
	.ds 8
__modslonglong_PARM_2:
	.ds 8
__modslonglong_numeratorneg_1_2:
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
;Allocation info for local variables in function '_modslonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__modslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__modslonglong_sloc1_1_0'
;sloc2                     Allocated with name '__modslonglong_sloc2_1_0'
;numerator                 Allocated with name '__modslonglong_PARM_1'
;denominator               Allocated with name '__modslonglong_PARM_2'
;numeratorneg              Allocated with name '__modslonglong_numeratorneg_1_2'
;denominatorneg            Allocated to registers x 
;r                         Allocated with name '__modslonglong_r_1_2'
;------------------------------------------------------------
;../_modslonglong.c:36: _modslonglong (long long numerator, long long denominator)
;	-----------------------------------------
;	 function _modslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__modslonglong:
;../_modslonglong.c:38: bool numeratorneg = (numerator < 0);
	lda	__modslonglong_PARM_1
	sub	#0x00
	blt	00121$
	clra
	bra	00122$
00121$:
	lda	#0x01
00122$:
	sta	__modslonglong_numeratorneg_1_2
;../_modslonglong.c:39: bool denominatorneg = (denominator < 0);
	lda	__modslonglong_PARM_2
	sub	#0x00
	blt	00123$
	clra
	bra	00124$
00123$:
	lda	#0x01
00124$:
	tax
;../_modslonglong.c:42: if (numeratorneg)
	lda	__modslonglong_numeratorneg_1_2
	beq	00102$
;../_modslonglong.c:43: numerator = -numerator;
	clra
	sub	(__modslonglong_PARM_1 + 7)
	sta	(__modslonglong_PARM_1 + 7)
	clra
	sbc	(__modslonglong_PARM_1 + 6)
	sta	(__modslonglong_PARM_1 + 6)
	clra
	sbc	(__modslonglong_PARM_1 + 5)
	sta	(__modslonglong_PARM_1 + 5)
	clra
	sbc	(__modslonglong_PARM_1 + 4)
	sta	(__modslonglong_PARM_1 + 4)
	clra
	sbc	(__modslonglong_PARM_1 + 3)
	sta	(__modslonglong_PARM_1 + 3)
	clra
	sbc	(__modslonglong_PARM_1 + 2)
	sta	(__modslonglong_PARM_1 + 2)
	clra
	sbc	(__modslonglong_PARM_1 + 1)
	sta	(__modslonglong_PARM_1 + 1)
	clra
	sbc	__modslonglong_PARM_1
	sta	__modslonglong_PARM_1
00102$:
;../_modslonglong.c:44: if (denominatorneg)
	tstx
	beq	00104$
;../_modslonglong.c:45: denominator = -denominator;
	clra
	sub	(__modslonglong_PARM_2 + 7)
	sta	(__modslonglong_PARM_2 + 7)
	clra
	sbc	(__modslonglong_PARM_2 + 6)
	sta	(__modslonglong_PARM_2 + 6)
	clra
	sbc	(__modslonglong_PARM_2 + 5)
	sta	(__modslonglong_PARM_2 + 5)
	clra
	sbc	(__modslonglong_PARM_2 + 4)
	sta	(__modslonglong_PARM_2 + 4)
	clra
	sbc	(__modslonglong_PARM_2 + 3)
	sta	(__modslonglong_PARM_2 + 3)
	clra
	sbc	(__modslonglong_PARM_2 + 2)
	sta	(__modslonglong_PARM_2 + 2)
	clra
	sbc	(__modslonglong_PARM_2 + 1)
	sta	(__modslonglong_PARM_2 + 1)
	clra
	sbc	__modslonglong_PARM_2
	sta	__modslonglong_PARM_2
00104$:
;../_modslonglong.c:47: r = (unsigned long long)numerator % (unsigned long long)denominator;
	lda	(__modslonglong_PARM_1 + 7)
	sta	(__modulonglong_PARM_1 + 7)
	lda	(__modslonglong_PARM_1 + 6)
	sta	(__modulonglong_PARM_1 + 6)
	lda	(__modslonglong_PARM_1 + 5)
	sta	(__modulonglong_PARM_1 + 5)
	lda	(__modslonglong_PARM_1 + 4)
	sta	(__modulonglong_PARM_1 + 4)
	lda	(__modslonglong_PARM_1 + 3)
	sta	(__modulonglong_PARM_1 + 3)
	lda	(__modslonglong_PARM_1 + 2)
	sta	(__modulonglong_PARM_1 + 2)
	lda	(__modslonglong_PARM_1 + 1)
	sta	(__modulonglong_PARM_1 + 1)
	lda	__modslonglong_PARM_1
	sta	__modulonglong_PARM_1
	lda	(__modslonglong_PARM_2 + 7)
	sta	(__modulonglong_PARM_2 + 7)
	lda	(__modslonglong_PARM_2 + 6)
	sta	(__modulonglong_PARM_2 + 6)
	lda	(__modslonglong_PARM_2 + 5)
	sta	(__modulonglong_PARM_2 + 5)
	lda	(__modslonglong_PARM_2 + 4)
	sta	(__modulonglong_PARM_2 + 4)
	lda	(__modslonglong_PARM_2 + 3)
	sta	(__modulonglong_PARM_2 + 3)
	lda	(__modslonglong_PARM_2 + 2)
	sta	(__modulonglong_PARM_2 + 2)
	lda	(__modslonglong_PARM_2 + 1)
	sta	(__modulonglong_PARM_2 + 1)
	lda	__modslonglong_PARM_2
	sta	__modulonglong_PARM_2
;../_modslonglong.c:49: return ((numeratorneg ^ denominatorneg) ? -r : r);
	pshx
	jsr	__modulonglong
	sta	*(__modslonglong_sloc0_1_0 + 7)
	stx	*(__modslonglong_sloc0_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__modslonglong_sloc0_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__modslonglong_sloc0_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__modslonglong_sloc0_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__modslonglong_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__modslonglong_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__modslonglong_sloc0_1_0
	pulx
	txa
	eor	__modslonglong_numeratorneg_1_2
	beq	00107$
	clra
	sub	*(__modslonglong_sloc0_1_0 + 7)
	sta	*(__modslonglong_sloc2_1_0 + 7)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 6)
	sta	*(__modslonglong_sloc2_1_0 + 6)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 5)
	sta	*(__modslonglong_sloc2_1_0 + 5)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 4)
	sta	*(__modslonglong_sloc2_1_0 + 4)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 3)
	sta	*(__modslonglong_sloc2_1_0 + 3)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 2)
	sta	*(__modslonglong_sloc2_1_0 + 2)
	clra
	sbc	*(__modslonglong_sloc0_1_0 + 1)
	sta	*(__modslonglong_sloc2_1_0 + 1)
	clra
	sbc	*__modslonglong_sloc0_1_0
	sta	*__modslonglong_sloc2_1_0
	bra	00108$
00107$:
	mov	*__modslonglong_sloc0_1_0,*__modslonglong_sloc2_1_0
	mov	*(__modslonglong_sloc0_1_0 + 1),*(__modslonglong_sloc2_1_0 + 1)
	mov	*(__modslonglong_sloc0_1_0 + 2),*(__modslonglong_sloc2_1_0 + 2)
	mov	*(__modslonglong_sloc0_1_0 + 3),*(__modslonglong_sloc2_1_0 + 3)
	mov	*(__modslonglong_sloc0_1_0 + 4),*(__modslonglong_sloc2_1_0 + 4)
	mov	*(__modslonglong_sloc0_1_0 + 5),*(__modslonglong_sloc2_1_0 + 5)
	mov	*(__modslonglong_sloc0_1_0 + 6),*(__modslonglong_sloc2_1_0 + 6)
	mov	*(__modslonglong_sloc0_1_0 + 7),*(__modslonglong_sloc2_1_0 + 7)
00108$:
	mov	*__modslonglong_sloc2_1_0,*___SDCC_hc08_ret7
	mov	*(__modslonglong_sloc2_1_0 + 1),*___SDCC_hc08_ret6
	mov	*(__modslonglong_sloc2_1_0 + 2),*___SDCC_hc08_ret5
	mov	*(__modslonglong_sloc2_1_0 + 3),*___SDCC_hc08_ret4
	mov	*(__modslonglong_sloc2_1_0 + 4),*___SDCC_hc08_ret3
	mov	*(__modslonglong_sloc2_1_0 + 5),*___SDCC_hc08_ret2
	ldx	*(__modslonglong_sloc2_1_0 + 6)
	lda	*(__modslonglong_sloc2_1_0 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
