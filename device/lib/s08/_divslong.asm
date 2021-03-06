;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _divslong
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
	.globl __divslong_PARM_2
	.globl __divslong_PARM_1
	.globl __divslong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__divslong_sloc0_1_0:
	.ds 1
__divslong_sloc1_1_0:
	.ds 4
__divslong_sloc2_1_0:
	.ds 1
__divslong_sloc3_1_0:
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
__divslong_PARM_1:
	.ds 4
__divslong_PARM_2:
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
;Allocation info for local variables in function '_divslong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__divslong_sloc0_1_0'
;sloc1                     Allocated with name '__divslong_sloc1_1_0'
;sloc2                     Allocated with name '__divslong_sloc2_1_0'
;sloc3                     Allocated with name '__divslong_sloc3_1_0'
;x                         Allocated with name '__divslong_PARM_1'
;y                         Allocated with name '__divslong_PARM_2'
;r                         Allocated with name '__divslong_r_1_2'
;------------------------------------------------------------
;../_divslong.c:259: _divslong (long x, long y)
;	-----------------------------------------
;	 function _divslong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__divslong:
;../_divslong.c:263: r = (unsigned long)(x < 0 ? -x : x) / (unsigned long)(y < 0 ? -y : y);
	lda	__divslong_PARM_1
	sub	#0x00
	blt	00122$
	clra
	bra	00123$
00122$:
	lda	#0x01
00123$:
	sta	*__divslong_sloc0_1_0
	tst	*__divslong_sloc0_1_0
	beq	00106$
	clra
	sub	(__divslong_PARM_1 + 3)
	sta	*(__divslong_sloc1_1_0 + 3)
	clra
	sbc	(__divslong_PARM_1 + 2)
	sta	*(__divslong_sloc1_1_0 + 2)
	clra
	sbc	(__divslong_PARM_1 + 1)
	sta	*(__divslong_sloc1_1_0 + 1)
	clra
	sbc	__divslong_PARM_1
	sta	*__divslong_sloc1_1_0
	bra	00107$
00106$:
	ldhx	__divslong_PARM_1
	sthx	*__divslong_sloc1_1_0
	ldhx	(__divslong_PARM_1 + 2)
	sthx	*(__divslong_sloc1_1_0 + 2)
00107$:
	lda	__divslong_PARM_2
	sub	#0x00
	blt	00125$
	clra
	bra	00126$
00125$:
	lda	#0x01
00126$:
	sta	*__divslong_sloc2_1_0
	tst	*__divslong_sloc2_1_0
	beq	00108$
	clra
	sub	(__divslong_PARM_2 + 3)
	sta	*(__divslong_sloc3_1_0 + 3)
	clra
	sbc	(__divslong_PARM_2 + 2)
	sta	*(__divslong_sloc3_1_0 + 2)
	clra
	sbc	(__divslong_PARM_2 + 1)
	sta	*(__divslong_sloc3_1_0 + 1)
	clra
	sbc	__divslong_PARM_2
	sta	*__divslong_sloc3_1_0
	bra	00109$
00108$:
	ldhx	__divslong_PARM_2
	sthx	*__divslong_sloc3_1_0
	ldhx	(__divslong_PARM_2 + 2)
	sthx	*(__divslong_sloc3_1_0 + 2)
00109$:
	lda	*(__divslong_sloc3_1_0 + 3)
	sta	(__divulong_PARM_2 + 3)
	lda	*(__divslong_sloc3_1_0 + 2)
	sta	(__divulong_PARM_2 + 2)
	lda	*(__divslong_sloc3_1_0 + 1)
	sta	(__divulong_PARM_2 + 1)
	lda	*__divslong_sloc3_1_0
	sta	__divulong_PARM_2
	lda	*__divslong_sloc1_1_0
	sta	__divulong_PARM_1
	lda	*(__divslong_sloc1_1_0 + 1)
	sta	(__divulong_PARM_1 + 1)
	lda	*(__divslong_sloc1_1_0 + 2)
	sta	(__divulong_PARM_1 + 2)
	lda	*(__divslong_sloc1_1_0 + 3)
	sta	(__divulong_PARM_1 + 3)
;../_divslong.c:264: if ((x < 0) ^ (y < 0))
	jsr	__divulong
	sta	*(__divslong_sloc3_1_0 + 3)
	stx	*(__divslong_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(__divslong_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*__divslong_sloc3_1_0
	lda	*__divslong_sloc0_1_0
	eor	*__divslong_sloc2_1_0
	beq	00102$
;../_divslong.c:265: return -r;
	clra
	sub	*(__divslong_sloc3_1_0 + 3)
	sta	*(__divslong_sloc1_1_0 + 3)
	clra
	sbc	*(__divslong_sloc3_1_0 + 2)
	sta	*(__divslong_sloc1_1_0 + 2)
	clra
	sbc	*(__divslong_sloc3_1_0 + 1)
	sta	*(__divslong_sloc1_1_0 + 1)
	clra
	sbc	*__divslong_sloc3_1_0
	sta	*__divslong_sloc1_1_0
	mov	*__divslong_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(__divslong_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__divslong_sloc1_1_0 + 2)
	lda	*(__divslong_sloc1_1_0 + 3)
	rts
00102$:
;../_divslong.c:267: return r;
	mov	*__divslong_sloc3_1_0,*___SDCC_hc08_ret3
	mov	*(__divslong_sloc3_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(__divslong_sloc3_1_0 + 2)
	lda	*(__divslong_sloc3_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
