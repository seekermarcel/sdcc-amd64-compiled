;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module floorf
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
	.globl _floorf
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
;Allocation info for local variables in function 'floorf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -10
;r                         Allocated to stack - sp -16
;sloc0                     Allocated to stack - sp -16
;sloc1                     Allocated to stack - sp -24
;sloc2                     Allocated to stack - sp -20
;------------------------------------------------------------
;../floorf.c:33: float floorf (float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function floorf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 12 bytes.
_floorf:
	ais	#-12
;../floorf.c:36: r=x;
	tsx
	lda	14,x
	sta	___fs2slong_PARM_1
	lda	15,x
	sta	(___fs2slong_PARM_1 + 1)
	lda	16,x
	sta	(___fs2slong_PARM_1 + 2)
	lda	17,x
	sta	(___fs2slong_PARM_1 + 3)
	jsr	___fs2slong
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
;../floorf.c:38: return (r+((r>x)?-1:0));
	tsx
	lda	8,x
	sta	___slong2fs_PARM_1
	lda	9,x
	sta	(___slong2fs_PARM_1 + 1)
	lda	10,x
	sta	(___slong2fs_PARM_1 + 2)
	lda	11,x
	sta	(___slong2fs_PARM_1 + 3)
	jsr	___slong2fs
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
;../floorf.c:37: if (r<=0)
	tsx
	clra
	sub	11,x
	clra
	sbc	10,x
	clra
	sbc	9,x
	clra
	sbc	8,x
	bge	00116$
	jmp	00102$
00116$:
;../floorf.c:38: return (r+((r>x)?-1:0));
	lda	,x
	sta	___fsgt_PARM_1
	lda	1,x
	sta	(___fsgt_PARM_1 + 1)
	lda	2,x
	sta	(___fsgt_PARM_1 + 2)
	lda	3,x
	sta	(___fsgt_PARM_1 + 3)
	lda	14,x
	sta	___fsgt_PARM_2
	lda	15,x
	sta	(___fsgt_PARM_2 + 1)
	lda	16,x
	sta	(___fsgt_PARM_2 + 2)
	lda	17,x
	sta	(___fsgt_PARM_2 + 3)
	jsr	___fsgt
	tsta
	beq	00106$
	lda	#0xFF
	bra	00107$
00106$:
	clra
00107$:
	tsx
	sta	7,x
	rola	
	clra	
	sbc	#0x00
	sta	6,x
	sta	5,x
	sta	4,x
	ldhx	#___slong2fs_PARM_1
	lda	12,s
	add	8,s
	sta	3,x
	lda	11,s
	adc	7,s
	sta	2,x
	lda	10,s
	adc	6,s
	sta	1,x
	lda	9,s
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
	bra	00104$
00102$:
;../floorf.c:40: return r;
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
00104$:
	ais	#12
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
