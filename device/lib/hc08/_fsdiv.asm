;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:31 2022
;--------------------------------------------------------
	.module _fsdiv
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
	.globl ___fsdiv_PARM_2
	.globl ___fsdiv_PARM_1
	.globl ___fsdiv
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___fsdiv_sloc0_1_0:
	.ds 4
___fsdiv_sloc1_1_0:
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
___fsdiv_PARM_1:
	.ds 4
___fsdiv_PARM_2:
	.ds 4
___fsdiv_fl1_1_21:
	.ds 4
___fsdiv_fl2_1_21:
	.ds 4
___fsdiv_result_1_21:
	.ds 4
___fsdiv_mask_1_21:
	.ds 4
___fsdiv_mant1_1_21:
	.ds 4
___fsdiv_mant2_1_21:
	.ds 4
___fsdiv_exp_1_21:
	.ds 2
___fsdiv_sign_1_21:
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
;Allocation info for local variables in function '__fsdiv'
;------------------------------------------------------------
;a1                        Allocated with name '___fsdiv_PARM_1'
;a2                        Allocated with name '___fsdiv_PARM_2'
;fl1                       Allocated with name '___fsdiv_fl1_1_21'
;fl2                       Allocated with name '___fsdiv_fl2_1_21'
;result                    Allocated with name '___fsdiv_result_1_21'
;mask                      Allocated with name '___fsdiv_mask_1_21'
;mant1                     Allocated with name '___fsdiv_mant1_1_21'
;mant2                     Allocated with name '___fsdiv_mant2_1_21'
;exp                       Allocated with name '___fsdiv_exp_1_21'
;sign                      Allocated with name '___fsdiv_sign_1_21'
;sloc0                     Allocated with name '___fsdiv_sloc0_1_0'
;sloc1                     Allocated with name '___fsdiv_sloc1_1_0'
;------------------------------------------------------------
;../_fsdiv.c:274: float __fsdiv (float a1, float a2)
;	-----------------------------------------
;	 function __fsdiv
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___fsdiv:
;../_fsdiv.c:283: fl1.f = a1;
	lda	___fsdiv_PARM_1
	sta	___fsdiv_fl1_1_21
	lda	(___fsdiv_PARM_1 + 1)
	sta	(___fsdiv_fl1_1_21 + 1)
	lda	(___fsdiv_PARM_1 + 2)
	sta	(___fsdiv_fl1_1_21 + 2)
	lda	(___fsdiv_PARM_1 + 3)
	sta	(___fsdiv_fl1_1_21 + 3)
;../_fsdiv.c:284: fl2.f = a2;
	lda	___fsdiv_PARM_2
	sta	___fsdiv_fl2_1_21
	lda	(___fsdiv_PARM_2 + 1)
	sta	(___fsdiv_fl2_1_21 + 1)
	lda	(___fsdiv_PARM_2 + 2)
	sta	(___fsdiv_fl2_1_21 + 2)
	lda	(___fsdiv_PARM_2 + 3)
	sta	(___fsdiv_fl2_1_21 + 3)
;../_fsdiv.c:287: exp = EXP (fl1.l) ;
	lda	___fsdiv_fl1_1_21
	sta	*___fsdiv_sloc0_1_0
	lda	(___fsdiv_fl1_1_21 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	(___fsdiv_fl1_1_21 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_fl1_1_21 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	*(___fsdiv_sloc0_1_0 + 1)
	ldx	*___fsdiv_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsdiv_sloc0_1_0 + 3)
	stx	*(___fsdiv_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc0_1_0
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc0_1_0
	lda	*(___fsdiv_sloc0_1_0 + 3)
	sta	(___fsdiv_exp_1_21 + 1)
	lda	*(___fsdiv_sloc0_1_0 + 2)
	sta	___fsdiv_exp_1_21
;../_fsdiv.c:288: exp -= EXP (fl2.l);
	lda	___fsdiv_fl2_1_21
	sta	*___fsdiv_sloc0_1_0
	lda	(___fsdiv_fl2_1_21 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	(___fsdiv_fl2_1_21 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_fl2_1_21 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	*(___fsdiv_sloc0_1_0 + 1)
	ldx	*___fsdiv_sloc0_1_0
	lsla
	txa
	rola
	clrx
	rolx
	sta	*(___fsdiv_sloc0_1_0 + 3)
	stx	*(___fsdiv_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc0_1_0
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 2)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc0_1_0
	lda	(___fsdiv_exp_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	___fsdiv_exp_1_21
	sta	*(___fsdiv_sloc1_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsdiv_sloc1_1_0 + 1)
	sta	*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sub	*(___fsdiv_sloc0_1_0 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sbc	*(___fsdiv_sloc0_1_0 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	sbc	*(___fsdiv_sloc0_1_0 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	*___fsdiv_sloc1_1_0
	sbc	*___fsdiv_sloc0_1_0
	sta	*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_exp_1_21 + 1)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	___fsdiv_exp_1_21
;../_fsdiv.c:289: exp += EXCESS;
	ldhx	#___fsdiv_exp_1_21
	lda	1,x
	add	#0x7E
	sta	1,x
	bcc	00164$
	inc	,x
00164$:
;../_fsdiv.c:292: sign = SIGN (fl1.l) ^ SIGN (fl2.l);
	lda	___fsdiv_fl1_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl1_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl1_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl1_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*___fsdiv_sloc1_1_0
	rola
	clra
	rola
	sta	*___fsdiv_sloc1_1_0
	lda	___fsdiv_fl2_1_21
	sta	*___fsdiv_sloc0_1_0
	lda	(___fsdiv_fl2_1_21 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	(___fsdiv_fl2_1_21 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_fl2_1_21 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	*___fsdiv_sloc0_1_0
	rola
	clra
	rola
	eor	*___fsdiv_sloc1_1_0
	sta	___fsdiv_sign_1_21
;../_fsdiv.c:295: if (!fl2.l)
	lda	___fsdiv_fl2_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl2_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl2_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl2_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*___fsdiv_sloc1_1_0
	ora	*(___fsdiv_sloc1_1_0 + 1)
	ora	*(___fsdiv_sloc1_1_0 + 2)
	ora	*(___fsdiv_sloc1_1_0 + 3)
	bne	00102$
;../_fsdiv.c:297: fl2.l = 0x7FC00000;
	lda	#0x7F
	sta	___fsdiv_fl2_1_21
	lda	#0xC0
	sta	(___fsdiv_fl2_1_21 + 1)
	clra
	sta	(___fsdiv_fl2_1_21 + 2)
	sta	(___fsdiv_fl2_1_21 + 3)
;../_fsdiv.c:298: return (fl2.f);
	lda	___fsdiv_fl2_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl2_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl2_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl2_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	mov	*___fsdiv_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(___fsdiv_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fsdiv_sloc1_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 3)
	rts
00102$:
;../_fsdiv.c:302: if (!fl1.l)
	lda	___fsdiv_fl1_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl1_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl1_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl1_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*___fsdiv_sloc1_1_0
	ora	*(___fsdiv_sloc1_1_0 + 1)
	ora	*(___fsdiv_sloc1_1_0 + 2)
	ora	*(___fsdiv_sloc1_1_0 + 3)
	bne	00104$
;../_fsdiv.c:303: return (0);
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00104$:
;../_fsdiv.c:306: mant1 = MANT (fl1.l);
	lda	___fsdiv_fl1_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl1_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl1_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl1_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	and	#0x7F
	sta	*(___fsdiv_sloc1_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_mant1_1_21 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	(___fsdiv_mant1_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	#0x80
	sta	(___fsdiv_mant1_1_21 + 1)
	lda	*___fsdiv_sloc1_1_0
	sta	___fsdiv_mant1_1_21
;../_fsdiv.c:307: mant2 = MANT (fl2.l);
	lda	___fsdiv_fl2_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl2_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl2_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl2_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	and	#0x7F
	sta	*(___fsdiv_sloc1_1_0 + 1)
	mov	#0x00,*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_mant2_1_21 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	(___fsdiv_mant2_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	#0x80
	sta	(___fsdiv_mant2_1_21 + 1)
	lda	*___fsdiv_sloc1_1_0
	sta	___fsdiv_mant2_1_21
;../_fsdiv.c:310: if (mant1 < mant2)
	lda	(___fsdiv_mant1_1_21 + 3)
	sub	(___fsdiv_mant2_1_21 + 3)
	lda	(___fsdiv_mant1_1_21 + 2)
	sbc	(___fsdiv_mant2_1_21 + 2)
	lda	(___fsdiv_mant1_1_21 + 1)
	sbc	(___fsdiv_mant2_1_21 + 1)
	lda	___fsdiv_mant1_1_21
	sbc	___fsdiv_mant2_1_21
	bge	00106$
;../_fsdiv.c:312: mant1 <<= 1;
	lda	(___fsdiv_mant1_1_21 + 3)
	ldx	(___fsdiv_mant1_1_21 + 2)
	lsla
	rolx
	sta	(___fsdiv_mant1_1_21 + 3)
	stx	(___fsdiv_mant1_1_21 + 2)
	lda	(___fsdiv_mant1_1_21 + 1)
	ldx	___fsdiv_mant1_1_21
	rola
	rolx
	sta	(___fsdiv_mant1_1_21 + 1)
	stx	___fsdiv_mant1_1_21
;../_fsdiv.c:313: exp--;
	ldhx	#___fsdiv_exp_1_21
	lda	1,x
	sub	#0x01
	sta	1,x
	lda	,x
	sbc	#0
	sta	,x
00106$:
;../_fsdiv.c:317: mask = 0x1000000;
	ldhx	#___fsdiv_mask_1_21
	lda	#0x01
	sta	,x
	deca
	sta	1,x
	sta	2,x
	sta	3,x
;../_fsdiv.c:318: result = 0;
	ldhx	#___fsdiv_result_1_21
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
;../_fsdiv.c:319: while (mask)
00109$:
	lda	___fsdiv_mask_1_21
	ora	(___fsdiv_mask_1_21 + 1)
	ora	(___fsdiv_mask_1_21 + 2)
	ora	(___fsdiv_mask_1_21 + 3)
	bne	00168$
	jmp	00111$
00168$:
;../_fsdiv.c:321: if (mant1 >= mant2)
	lda	(___fsdiv_mant1_1_21 + 3)
	sub	(___fsdiv_mant2_1_21 + 3)
	lda	(___fsdiv_mant1_1_21 + 2)
	sbc	(___fsdiv_mant2_1_21 + 2)
	lda	(___fsdiv_mant1_1_21 + 1)
	sbc	(___fsdiv_mant2_1_21 + 1)
	lda	___fsdiv_mant1_1_21
	sbc	___fsdiv_mant2_1_21
	blt	00108$
;../_fsdiv.c:323: result |= mask;
	lda	(___fsdiv_result_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	(___fsdiv_result_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_result_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	___fsdiv_result_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	ora	(___fsdiv_mask_1_21 + 3)
	sta	(___fsdiv_result_1_21 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	ora	(___fsdiv_mask_1_21 + 2)
	sta	(___fsdiv_result_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	(___fsdiv_mask_1_21 + 1)
	sta	(___fsdiv_result_1_21 + 1)
	lda	*___fsdiv_sloc1_1_0
	ora	___fsdiv_mask_1_21
	sta	___fsdiv_result_1_21
;../_fsdiv.c:324: mant1 -= mant2;
	ldhx	#___fsdiv_mant1_1_21
	lda	3,x
	sub	(___fsdiv_mant2_1_21 + 3)
	sta	3,x
	lda	2,x
	sbc	(___fsdiv_mant2_1_21 + 2)
	sta	2,x
	lda	1,x
	sbc	(___fsdiv_mant2_1_21 + 1)
	sta	1,x
	lda	,x
	sbc	___fsdiv_mant2_1_21
	sta	,x
00108$:
;../_fsdiv.c:326: mant1 <<= 1;
	lda	(___fsdiv_mant1_1_21 + 3)
	ldx	(___fsdiv_mant1_1_21 + 2)
	lsla
	rolx
	sta	(___fsdiv_mant1_1_21 + 3)
	stx	(___fsdiv_mant1_1_21 + 2)
	lda	(___fsdiv_mant1_1_21 + 1)
	ldx	___fsdiv_mant1_1_21
	rola
	rolx
	sta	(___fsdiv_mant1_1_21 + 1)
	stx	___fsdiv_mant1_1_21
;../_fsdiv.c:327: mask >>= 1;
	lda	(___fsdiv_mask_1_21 + 1)
	ldx	___fsdiv_mask_1_21
	lsrx
	rora
	sta	(___fsdiv_mask_1_21 + 1)
	stx	___fsdiv_mask_1_21
	lda	(___fsdiv_mask_1_21 + 3)
	ldx	(___fsdiv_mask_1_21 + 2)
	rorx
	rora
	sta	(___fsdiv_mask_1_21 + 3)
	stx	(___fsdiv_mask_1_21 + 2)
	jmp	00109$
00111$:
;../_fsdiv.c:331: result += 1;
	ldhx	#___fsdiv_result_1_21
	inc	3,x
	bne	00170$
	inc	2,x
	bne	00170$
	inc	1,x
	bne	00170$
	inc	,x
00170$:
;../_fsdiv.c:334: exp++;
	ldhx	#___fsdiv_exp_1_21
	inc	1,x
	bne	00171$
	inc	,x
00171$:
;../_fsdiv.c:335: result >>= 1;
	lda	(___fsdiv_result_1_21 + 1)
	ldx	___fsdiv_result_1_21
	asrx
	rora
	sta	(___fsdiv_result_1_21 + 1)
	stx	___fsdiv_result_1_21
	lda	(___fsdiv_result_1_21 + 3)
	ldx	(___fsdiv_result_1_21 + 2)
	rorx
	rora
	sta	(___fsdiv_result_1_21 + 3)
	stx	(___fsdiv_result_1_21 + 2)
;../_fsdiv.c:337: result &= ~HIDDEN;
	lda	(___fsdiv_result_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	(___fsdiv_result_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_result_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	___fsdiv_result_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_result_1_21 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	(___fsdiv_result_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	and	#0x7F
	sta	(___fsdiv_result_1_21 + 1)
	lda	*___fsdiv_sloc1_1_0
	sta	___fsdiv_result_1_21
;../_fsdiv.c:340: if (exp >= 0x100)
	lda	(___fsdiv_exp_1_21 + 1)
	sub	#0x00
	lda	___fsdiv_exp_1_21
	sbc	#0x01
	blt	00116$
;../_fsdiv.c:341: fl1.l = (sign ? SIGNBIT : 0) | __INFINITY;
	lda	___fsdiv_sign_1_21
	beq	00120$
	ldhx	#0x8000
	sthx	*___fsdiv_sloc1_1_0
	clrh
	sthx	*(___fsdiv_sloc1_1_0 + 2)
	bra	00121$
00120$:
	clrh
	clrx
	sthx	*___fsdiv_sloc1_1_0
	sthx	*(___fsdiv_sloc1_1_0 + 2)
00121$:
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	#0x80
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	*___fsdiv_sloc1_1_0
	ora	#0x7F
	sta	*___fsdiv_sloc1_1_0
	lda	*___fsdiv_sloc1_1_0
	sta	___fsdiv_fl1_1_21
	lda	*(___fsdiv_sloc1_1_0 + 1)
	sta	(___fsdiv_fl1_1_21 + 1)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	(___fsdiv_fl1_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_fl1_1_21 + 3)
	jmp	00117$
00116$:
;../_fsdiv.c:342: else if (exp < 0)
	lda	(___fsdiv_exp_1_21 + 1)
	sub	#0x00
	lda	___fsdiv_exp_1_21
	sbc	#0x00
	bge	00113$
;../_fsdiv.c:343: fl1.l = 0;
	clra
	sta	___fsdiv_fl1_1_21
	sta	(___fsdiv_fl1_1_21 + 1)
	sta	(___fsdiv_fl1_1_21 + 2)
	sta	(___fsdiv_fl1_1_21 + 3)
	jmp	00117$
00113$:
;../_fsdiv.c:345: fl1.l = PACK (sign ? SIGNBIT : 0 , exp, result);
	lda	___fsdiv_sign_1_21
	beq	00122$
	ldhx	#0x8000
	sthx	*___fsdiv_sloc1_1_0
	clrh
	sthx	*(___fsdiv_sloc1_1_0 + 2)
	bra	00123$
00122$:
	clrh
	clrx
	sthx	*___fsdiv_sloc1_1_0
	sthx	*(___fsdiv_sloc1_1_0 + 2)
00123$:
	lda	(___fsdiv_exp_1_21 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	___fsdiv_exp_1_21
	sta	*(___fsdiv_sloc0_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___fsdiv_sloc0_1_0 + 1)
	sta	*___fsdiv_sloc0_1_0
	lda	*(___fsdiv_sloc0_1_0 + 3)
	ldx	*(___fsdiv_sloc0_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___fsdiv_sloc0_1_0 + 1)
	stx	*___fsdiv_sloc0_1_0
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 3)
	mov	#0x00,*(___fsdiv_sloc0_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 3)
	ora	*(___fsdiv_sloc0_1_0 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	ora	*(___fsdiv_sloc0_1_0 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	*(___fsdiv_sloc0_1_0 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	*___fsdiv_sloc1_1_0
	ora	*___fsdiv_sloc0_1_0
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_result_1_21 + 3)
	sta	*(___fsdiv_sloc0_1_0 + 3)
	lda	(___fsdiv_result_1_21 + 2)
	sta	*(___fsdiv_sloc0_1_0 + 2)
	lda	(___fsdiv_result_1_21 + 1)
	sta	*(___fsdiv_sloc0_1_0 + 1)
	lda	___fsdiv_result_1_21
	sta	*___fsdiv_sloc0_1_0
	lda	*(___fsdiv_sloc1_1_0 + 3)
	ora	*(___fsdiv_sloc0_1_0 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	ora	*(___fsdiv_sloc0_1_0 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 1)
	ora	*(___fsdiv_sloc0_1_0 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	*___fsdiv_sloc1_1_0
	ora	*___fsdiv_sloc0_1_0
	sta	*___fsdiv_sloc1_1_0
	lda	*___fsdiv_sloc1_1_0
	sta	___fsdiv_fl1_1_21
	lda	*(___fsdiv_sloc1_1_0 + 1)
	sta	(___fsdiv_fl1_1_21 + 1)
	lda	*(___fsdiv_sloc1_1_0 + 2)
	sta	(___fsdiv_fl1_1_21 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 3)
	sta	(___fsdiv_fl1_1_21 + 3)
00117$:
;../_fsdiv.c:346: return (fl1.f);
	lda	___fsdiv_fl1_1_21
	sta	*___fsdiv_sloc1_1_0
	lda	(___fsdiv_fl1_1_21 + 1)
	sta	*(___fsdiv_sloc1_1_0 + 1)
	lda	(___fsdiv_fl1_1_21 + 2)
	sta	*(___fsdiv_sloc1_1_0 + 2)
	lda	(___fsdiv_fl1_1_21 + 3)
	sta	*(___fsdiv_sloc1_1_0 + 3)
	mov	*___fsdiv_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(___fsdiv_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___fsdiv_sloc1_1_0 + 2)
	lda	*(___fsdiv_sloc1_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
