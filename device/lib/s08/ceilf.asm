;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module ceilf
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
	.globl _ceilf
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
;Allocation info for local variables in function 'ceilf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -6
;r                         Allocated to stack - sp -12
;sloc0                     Allocated to stack - sp -16
;sloc1                     Allocated to stack - sp -12
;------------------------------------------------------------
;../ceilf.c:33: float ceilf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function ceilf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 8 bytes.
_ceilf:
	ais	#-8
;../ceilf.c:36: r=x;
	tsx
	lda	10,x
	sta	___fs2slong_PARM_1
	lda	11,x
	sta	(___fs2slong_PARM_1 + 1)
	lda	12,x
	sta	(___fs2slong_PARM_1 + 2)
	lda	13,x
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
;../ceilf.c:38: return r;
	tsx
	lda	,x
	sta	___slong2fs_PARM_1
	lda	1,x
	sta	(___slong2fs_PARM_1 + 1)
	lda	2,x
	sta	(___slong2fs_PARM_1 + 2)
	lda	3,x
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
;../ceilf.c:37: if (r<0)
	tsx
	lda	,x
	sub	#0x00
	bge	00102$
;../ceilf.c:38: return r;
	lda	4,x
	sta	*___SDCC_hc08_ret3
	lda	5,x
	sta	*___SDCC_hc08_ret2
	ldx	6,x
	lda	8,s
	jmp	00104$
00102$:
;../ceilf.c:40: return (r+((r<x)?1:0));
	tsx
	lda	4,x
	sta	___fslt_PARM_1
	lda	5,x
	sta	(___fslt_PARM_1 + 1)
	lda	6,x
	sta	(___fslt_PARM_1 + 2)
	lda	7,x
	sta	(___fslt_PARM_1 + 3)
	lda	10,x
	sta	___fslt_PARM_2
	lda	11,x
	sta	(___fslt_PARM_2 + 1)
	lda	12,x
	sta	(___fslt_PARM_2 + 2)
	lda	13,x
	sta	(___fslt_PARM_2 + 3)
	jsr	___fslt
	tsta
	beq	00106$
	lda	#0x01
	bra	00107$
00106$:
	clra
00107$:
	clrx
	sta	8,s
	txa
	sta	7,s
	rola	
	clra	
	sbc	#0x00
	sta	6,s
	sta	5,s
	tsx
	ldhx	#___slong2fs_PARM_1
	lda	4,s
	add	8,s
	sta	3,x
	lda	3,s
	adc	7,s
	sta	2,x
	lda	2,s
	adc	6,s
	sta	1,x
	lda	1,s
	adc	5,s
	sta	,x
	jsr	___slong2fs
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
	tsx
	lda	4,x
	sta	*___SDCC_hc08_ret3
	lda	5,x
	sta	*___SDCC_hc08_ret2
	ldx	6,x
	lda	8,s
00104$:
	ais	#8
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
