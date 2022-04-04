;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _fsgt
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
	.globl ___fsgt_PARM_2
	.globl ___fsgt_PARM_1
	.globl ___fsgt
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsgt_sloc0_1_0:
	.ds 4
___fsgt_sloc1_1_0:
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
___fsgt_PARM_1:
	.ds 4
___fsgt_PARM_2:
	.ds 4
___fsgt_fl1_1_21:
	.ds 4
___fsgt_fl2_1_21:
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
;Allocation info for local variables in function '__fsgt'
;------------------------------------------------------------
;a1                        Allocated with name '___fsgt_PARM_1'
;a2                        Allocated with name '___fsgt_PARM_2'
;fl1                       Allocated with name '___fsgt_fl1_1_21'
;fl2                       Allocated with name '___fsgt_fl2_1_21'
;sloc0                     Allocated with name '___fsgt_sloc0_1_0'
;sloc1                     Allocated with name '___fsgt_sloc1_1_0'
;------------------------------------------------------------
;../_fsgt.c:108: char __fsgt (float a1, float a2)
;	-----------------------------------------
;	 function __fsgt
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsgt:
;../_fsgt.c:112: fl1.f = a1;
	lda	___fsgt_PARM_1
	sta	___fsgt_fl1_1_21
	lda	(___fsgt_PARM_1 + 1)
	sta	(___fsgt_fl1_1_21 + 1)
	lda	(___fsgt_PARM_1 + 2)
	sta	(___fsgt_fl1_1_21 + 2)
	lda	(___fsgt_PARM_1 + 3)
	sta	(___fsgt_fl1_1_21 + 3)
;../_fsgt.c:113: fl2.f = a2;
	lda	___fsgt_PARM_2
	sta	___fsgt_fl2_1_21
	lda	(___fsgt_PARM_2 + 1)
	sta	(___fsgt_fl2_1_21 + 1)
	lda	(___fsgt_PARM_2 + 2)
	sta	(___fsgt_fl2_1_21 + 2)
	lda	(___fsgt_PARM_2 + 3)
	sta	(___fsgt_fl2_1_21 + 3)
;../_fsgt.c:115: if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)
	lda	___fsgt_fl1_1_21
	sta	*___fsgt_sloc0_1_0
	lda	(___fsgt_fl1_1_21 + 1)
	sta	*(___fsgt_sloc0_1_0 + 1)
	lda	(___fsgt_fl1_1_21 + 2)
	sta	*(___fsgt_sloc0_1_0 + 2)
	lda	(___fsgt_fl1_1_21 + 3)
	sta	*(___fsgt_sloc0_1_0 + 3)
	lda	___fsgt_fl2_1_21
	sta	*___fsgt_sloc1_1_0
	lda	(___fsgt_fl2_1_21 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	(___fsgt_fl2_1_21 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	(___fsgt_fl2_1_21 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 3)
	ora	*(___fsgt_sloc1_1_0 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 2)
	ora	*(___fsgt_sloc1_1_0 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	*(___fsgt_sloc0_1_0 + 1)
	ora	*(___fsgt_sloc1_1_0 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	*___fsgt_sloc0_1_0
	ora	*___fsgt_sloc1_1_0
	sta	*___fsgt_sloc1_1_0
	tst	*(___fsgt_sloc1_1_0 + 3)
	bne	00132$
	tst	*(___fsgt_sloc1_1_0 + 2)
	bne	00132$
	tst	*(___fsgt_sloc1_1_0 + 1)
	bne	00132$
	lda	*___fsgt_sloc1_1_0
	bit	#0x7F
00132$:
	bne	00102$
;../_fsgt.c:116: return (0);
	clra
	rts
00102$:
;../_fsgt.c:118: if (fl1.l<0 && fl2.l<0) {
	lda	___fsgt_fl1_1_21
	sta	*___fsgt_sloc1_1_0
	lda	(___fsgt_fl1_1_21 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	(___fsgt_fl1_1_21 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	(___fsgt_fl1_1_21 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	*___fsgt_sloc1_1_0
	sub	#0x00
	bge	00106$
	lda	___fsgt_fl2_1_21
	sta	*___fsgt_sloc1_1_0
	lda	(___fsgt_fl2_1_21 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	(___fsgt_fl2_1_21 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	(___fsgt_fl2_1_21 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	*___fsgt_sloc1_1_0
	sub	#0x00
	bge	00106$
;../_fsgt.c:119: if (fl2.l > fl1.l)
	lda	___fsgt_fl2_1_21
	sta	*___fsgt_sloc1_1_0
	lda	(___fsgt_fl2_1_21 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	(___fsgt_fl2_1_21 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	(___fsgt_fl2_1_21 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	___fsgt_fl1_1_21
	sta	*___fsgt_sloc0_1_0
	lda	(___fsgt_fl1_1_21 + 1)
	sta	*(___fsgt_sloc0_1_0 + 1)
	lda	(___fsgt_fl1_1_21 + 2)
	sta	*(___fsgt_sloc0_1_0 + 2)
	lda	(___fsgt_fl1_1_21 + 3)
	sta	*(___fsgt_sloc0_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 3)
	sub	*(___fsgt_sloc1_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 2)
	sbc	*(___fsgt_sloc1_1_0 + 2)
	lda	*(___fsgt_sloc0_1_0 + 1)
	sbc	*(___fsgt_sloc1_1_0 + 1)
	lda	*___fsgt_sloc0_1_0
	sbc	*___fsgt_sloc1_1_0
	bge	00104$
;../_fsgt.c:120: return (1);
	lda	#0x01
	rts
00104$:
;../_fsgt.c:121: return (0);
	clra
	rts
00106$:
;../_fsgt.c:124: if (fl1.l > fl2.l)
	lda	___fsgt_fl1_1_21
	sta	*___fsgt_sloc1_1_0
	lda	(___fsgt_fl1_1_21 + 1)
	sta	*(___fsgt_sloc1_1_0 + 1)
	lda	(___fsgt_fl1_1_21 + 2)
	sta	*(___fsgt_sloc1_1_0 + 2)
	lda	(___fsgt_fl1_1_21 + 3)
	sta	*(___fsgt_sloc1_1_0 + 3)
	lda	___fsgt_fl2_1_21
	sta	*___fsgt_sloc0_1_0
	lda	(___fsgt_fl2_1_21 + 1)
	sta	*(___fsgt_sloc0_1_0 + 1)
	lda	(___fsgt_fl2_1_21 + 2)
	sta	*(___fsgt_sloc0_1_0 + 2)
	lda	(___fsgt_fl2_1_21 + 3)
	sta	*(___fsgt_sloc0_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 3)
	sub	*(___fsgt_sloc1_1_0 + 3)
	lda	*(___fsgt_sloc0_1_0 + 2)
	sbc	*(___fsgt_sloc1_1_0 + 2)
	lda	*(___fsgt_sloc0_1_0 + 1)
	sbc	*(___fsgt_sloc1_1_0 + 1)
	lda	*___fsgt_sloc0_1_0
	sbc	*___fsgt_sloc1_1_0
	bge	00109$
;../_fsgt.c:125: return (1);
	lda	#0x01
	rts
00109$:
;../_fsgt.c:126: return (0);
	clra
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
