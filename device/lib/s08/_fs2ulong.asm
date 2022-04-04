;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.cs08
	.module _fs2ulong
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
	.globl ___fs2ulong_PARM_1
	.globl ___fs2ulong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fs2ulong_sloc0_1_0:
	.ds 4
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
___fs2ulong_PARM_1:
	.ds 4
___fs2ulong_fl1_1_21:
	.ds 4
___fs2ulong_exp_1_21:
	.ds 2
___fs2ulong_l_1_21:
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
;Allocation info for local variables in function '__fs2ulong'
;------------------------------------------------------------
;a1                        Allocated with name '___fs2ulong_PARM_1'
;fl1                       Allocated with name '___fs2ulong_fl1_1_21'
;exp                       Allocated with name '___fs2ulong_exp_1_21'
;l                         Allocated with name '___fs2ulong_l_1_21'
;sloc0                     Allocated with name '___fs2ulong_sloc0_1_0'
;------------------------------------------------------------
;../_fs2ulong.c:103: __fs2ulong (float a1)
;	-----------------------------------------
;	 function __fs2ulong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fs2ulong:
;../_fs2ulong.c:109: fl1.f = a1;
	lda	___fs2ulong_PARM_1
	sta	___fs2ulong_fl1_1_21
	lda	(___fs2ulong_PARM_1 + 1)
	sta	(___fs2ulong_fl1_1_21 + 1)
	lda	(___fs2ulong_PARM_1 + 2)
	sta	(___fs2ulong_fl1_1_21 + 2)
	lda	(___fs2ulong_PARM_1 + 3)
	sta	(___fs2ulong_fl1_1_21 + 3)
;../_fs2ulong.c:111: if (!fl1.l || SIGN(fl1.l))
	lda	___fs2ulong_fl1_1_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_1_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_1_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_1_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*___fs2ulong_sloc0_1_0
	ora	*(___fs2ulong_sloc0_1_0 + 1)
	ora	*(___fs2ulong_sloc0_1_0 + 2)
	ora	*(___fs2ulong_sloc0_1_0 + 3)
	beq	00101$
	lda	___fs2ulong_fl1_1_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_1_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_1_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_1_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*___fs2ulong_sloc0_1_0
	rola
	clra
	rola
	tsta
	beq	00102$
00101$:
;../_fs2ulong.c:112: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../_fs2ulong.c:114: exp = EXP (fl1.l) - EXCESS - 24;
	lda	___fs2ulong_fl1_1_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_1_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_1_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_1_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	ldx	*___fs2ulong_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	stx	*(___fs2ulong_sloc0_1_0 + 2)
	mov	#0x00,*(___fs2ulong_sloc0_1_0 + 1)
	mov	#0x00,*___fs2ulong_sloc0_1_0
	mov	#0x00,*(___fs2ulong_sloc0_1_0 + 2)
	mov	#0x00,*(___fs2ulong_sloc0_1_0 + 1)
	mov	#0x00,*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sub	#0x96
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sbc	#0x00
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	sbc	#0x00
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	*___fs2ulong_sloc0_1_0
	sbc	#0x00
	sta	*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_exp_1_21 + 1)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	___fs2ulong_exp_1_21
;../_fs2ulong.c:115: l = MANT (fl1.l);
	lda	___fs2ulong_fl1_1_21
	sta	*___fs2ulong_sloc0_1_0
	lda	(___fs2ulong_fl1_1_21 + 1)
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	lda	(___fs2ulong_fl1_1_21 + 2)
	sta	*(___fs2ulong_sloc0_1_0 + 2)
	lda	(___fs2ulong_fl1_1_21 + 3)
	sta	*(___fs2ulong_sloc0_1_0 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	and	#0x7F
	sta	*(___fs2ulong_sloc0_1_0 + 1)
	mov	#0x00,*___fs2ulong_sloc0_1_0
	lda	*(___fs2ulong_sloc0_1_0 + 3)
	sta	(___fs2ulong_l_1_21 + 3)
	lda	*(___fs2ulong_sloc0_1_0 + 2)
	sta	(___fs2ulong_l_1_21 + 2)
	lda	*(___fs2ulong_sloc0_1_0 + 1)
	ora	#0x80
	sta	(___fs2ulong_l_1_21 + 1)
	lda	*___fs2ulong_sloc0_1_0
	sta	___fs2ulong_l_1_21
;../_fs2ulong.c:117: l >>= -exp;
	clra
	sub	(___fs2ulong_exp_1_21 + 1)
	tax
	clra
	sbc	___fs2ulong_exp_1_21
	psha
	pulh
	lda	(___fs2ulong_l_1_21 + 3)
	psha
	lda	(___fs2ulong_l_1_21 + 2)
	psha
	lda	(___fs2ulong_l_1_21 + 1)
	psha
	lda	___fs2ulong_l_1_21
	psha
	tstx
	beq	00113$
00112$:
	asr	1,s
	ror	2,s
	ror	3,s
	ror	4,s
	dbnzx	00112$
00113$:
	ldx	4,s
	stx	(___fs2ulong_l_1_21 + 3)
	psha
	lda	4,s
	sta	(___fs2ulong_l_1_21 + 2)
	lda	3,s
	sta	(___fs2ulong_l_1_21 + 1)
	lda	2,s
	sta	___fs2ulong_l_1_21
	pula
	ais	#4
;../_fs2ulong.c:119: return l;
	lda	___fs2ulong_l_1_21
	sta	*___SDCC_hc08_ret3
	lda	(___fs2ulong_l_1_21 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(___fs2ulong_l_1_21 + 2)
	lda	(___fs2ulong_l_1_21 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
