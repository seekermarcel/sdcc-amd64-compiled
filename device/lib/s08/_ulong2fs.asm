;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.cs08
	.module _ulong2fs
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
	.globl ___ulong2fs_PARM_1
	.globl ___ulong2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
___ulong2fs_sloc0_1_0:
	.ds 2
___ulong2fs_sloc1_1_0:
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
___ulong2fs_PARM_1:
	.ds 4
___ulong2fs_fl_1_21:
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
;Allocation info for local variables in function '__ulong2fs'
;------------------------------------------------------------
;a                         Allocated with name '___ulong2fs_PARM_1'
;exp                       Allocated to registers x h 
;fl                        Allocated with name '___ulong2fs_fl_1_21'
;sloc0                     Allocated with name '___ulong2fs_sloc0_1_0'
;sloc1                     Allocated with name '___ulong2fs_sloc1_1_0'
;------------------------------------------------------------
;../_ulong2fs.c:83: float __ulong2fs (unsigned long a )
;	-----------------------------------------
;	 function __ulong2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___ulong2fs:
;../_ulong2fs.c:88: if (!a)
	lda	___ulong2fs_PARM_1
	ora	(___ulong2fs_PARM_1 + 1)
	ora	(___ulong2fs_PARM_1 + 2)
	ora	(___ulong2fs_PARM_1 + 3)
	bne	00115$
;../_ulong2fs.c:90: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
;../_ulong2fs.c:93: while (a & NORM) 
00115$:
	ldhx	#0x0096
00103$:
	lda	___ulong2fs_PARM_1
	beq	00117$
;../_ulong2fs.c:96: a >>= 1;
	pshx
	lda	(___ulong2fs_PARM_1 + 1)
	ldx	___ulong2fs_PARM_1
	lsrx
	rora
	sta	(___ulong2fs_PARM_1 + 1)
	stx	___ulong2fs_PARM_1
	lda	(___ulong2fs_PARM_1 + 3)
	ldx	(___ulong2fs_PARM_1 + 2)
	rorx
	rora
	sta	(___ulong2fs_PARM_1 + 3)
	stx	(___ulong2fs_PARM_1 + 2)
	pulx
;../_ulong2fs.c:97: exp++;
	aix	#1
	bra	00103$
;../_ulong2fs.c:100: while (a < HIDDEN)
00117$:
	sthx	*___ulong2fs_sloc0_1_0
00106$:
	lda	(___ulong2fs_PARM_1 + 1)
	sub	#0x80
	lda	___ulong2fs_PARM_1
	sbc	#0x00
	bcc	00120$
;../_ulong2fs.c:102: a <<= 1;
	lda	(___ulong2fs_PARM_1 + 3)
	ldx	(___ulong2fs_PARM_1 + 2)
	lsla
	rolx
	sta	(___ulong2fs_PARM_1 + 3)
	stx	(___ulong2fs_PARM_1 + 2)
	lda	(___ulong2fs_PARM_1 + 1)
	ldx	___ulong2fs_PARM_1
	rola
	rolx
	sta	(___ulong2fs_PARM_1 + 1)
	stx	___ulong2fs_PARM_1
;../_ulong2fs.c:103: exp--;
	ldhx	*___ulong2fs_sloc0_1_0
	aix	#-1
	sthx	*___ulong2fs_sloc0_1_0
	bra	00106$
00120$:
	ldhx	*___ulong2fs_sloc0_1_0
;../_ulong2fs.c:107: if ((a&0x7fffff)==0x7fffff) {
	lda	(___ulong2fs_PARM_1 + 3)
	sta	*(___ulong2fs_sloc1_1_0 + 3)
	lda	(___ulong2fs_PARM_1 + 2)
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	lda	(___ulong2fs_PARM_1 + 1)
	and	#0x7F
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	mov	#0x00,*___ulong2fs_sloc1_1_0
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	cmp	#0xFF
	bne	00142$
	lda	*(___ulong2fs_sloc1_1_0 + 2)
	cmp	#0xFF
	bne	00142$
	lda	*(___ulong2fs_sloc1_1_0 + 1)
	cmp	#0x7F
	bne	00142$
	lda	*___ulong2fs_sloc1_1_0
	cbeqa	#0x00,00143$
00142$:
	bra	00110$
00143$:
;../_ulong2fs.c:108: a=0;
	clrh
	clrx
	sthx	___ulong2fs_PARM_1
	sthx	(___ulong2fs_PARM_1 + 2)
;../_ulong2fs.c:109: exp++;
	ldhx	*___ulong2fs_sloc0_1_0
	aix	#1
00110$:
;../_ulong2fs.c:113: a &= ~HIDDEN ;
	lda	(___ulong2fs_PARM_1 + 1)
	and	#0x7F
	sta	(___ulong2fs_PARM_1 + 1)
;../_ulong2fs.c:115: fl.l = PACK(0,(unsigned long)exp, a);
	stx	*(___ulong2fs_sloc1_1_0 + 3)
	pshh
	pula
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	sta	*___ulong2fs_sloc1_1_0
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	ldx	*(___ulong2fs_sloc1_1_0 + 2)
	lsrx
	rora
	tax
	clra
	rora
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	stx	*___ulong2fs_sloc1_1_0
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 3)
	mov	#0x00,*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	ora	(___ulong2fs_PARM_1 + 3)
	sta	*(___ulong2fs_sloc1_1_0 + 3)
	lda	*(___ulong2fs_sloc1_1_0 + 2)
	ora	(___ulong2fs_PARM_1 + 2)
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 1)
	ora	(___ulong2fs_PARM_1 + 1)
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	lda	*___ulong2fs_sloc1_1_0
	ora	___ulong2fs_PARM_1
	sta	*___ulong2fs_sloc1_1_0
	lda	*___ulong2fs_sloc1_1_0
	sta	___ulong2fs_fl_1_21
	lda	*(___ulong2fs_sloc1_1_0 + 1)
	sta	(___ulong2fs_fl_1_21 + 1)
	lda	*(___ulong2fs_sloc1_1_0 + 2)
	sta	(___ulong2fs_fl_1_21 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	sta	(___ulong2fs_fl_1_21 + 3)
;../_ulong2fs.c:117: return (fl.f);
	lda	___ulong2fs_fl_1_21
	sta	*___ulong2fs_sloc1_1_0
	lda	(___ulong2fs_fl_1_21 + 1)
	sta	*(___ulong2fs_sloc1_1_0 + 1)
	lda	(___ulong2fs_fl_1_21 + 2)
	sta	*(___ulong2fs_sloc1_1_0 + 2)
	lda	(___ulong2fs_fl_1_21 + 3)
	sta	*(___ulong2fs_sloc1_1_0 + 3)
	mov	*___ulong2fs_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(___ulong2fs_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___ulong2fs_sloc1_1_0 + 2)
	lda	*(___ulong2fs_sloc1_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
