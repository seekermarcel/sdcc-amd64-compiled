;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _moduint
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
	.globl __moduint_PARM_2
	.globl __moduint
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__moduint_sloc0_1_0:
	.ds 1
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
__moduint_PARM_2:
	.ds 2
__moduint_count_1_2:
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
;Allocation info for local variables in function '_moduint'
;------------------------------------------------------------
;b                         Allocated with name '__moduint_PARM_2'
;a                         Allocated to registers x h 
;count                     Allocated with name '__moduint_count_1_2'
;sloc0                     Allocated with name '__moduint_sloc0_1_0'
;------------------------------------------------------------
;../_moduint.c:173: _moduint (unsigned int a, unsigned int b)
;	-----------------------------------------
;	 function _moduint
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__moduint:
	pshx
	tax
	pulh
;../_moduint.c:175: unsigned char count = 0;
	clra
	sta	__moduint_count_1_2
;../_moduint.c:177: while (!MSB_SET(b))
00103$:
	psha
	lda	__moduint_PARM_2
	rola
	clra
	rola
	sta	*__moduint_sloc0_1_0
	pula
	tst	*__moduint_sloc0_1_0
	bne	00117$
;../_moduint.c:179: b <<= 1;
	psha
	pshx
	lda	(__moduint_PARM_2 + 1)
	ldx	__moduint_PARM_2
	lsla
	rolx
	sta	(__moduint_PARM_2 + 1)
	stx	__moduint_PARM_2
	pulx
	pula
;../_moduint.c:180: if (b > a)
	cphx	__moduint_PARM_2
	bcc	00102$
;../_moduint.c:182: b >>=1;
	pshx
	lda	(__moduint_PARM_2 + 1)
	ldx	__moduint_PARM_2
	lsrx
	rora
	sta	(__moduint_PARM_2 + 1)
	stx	__moduint_PARM_2
	pulx
;../_moduint.c:183: break;
	bra	00117$
00102$:
;../_moduint.c:185: count++;
	inca
	sta	__moduint_count_1_2
	bra	00103$
;../_moduint.c:187: do
00117$:
	lda	__moduint_count_1_2
00108$:
;../_moduint.c:189: if (a >= b)
	cphx	__moduint_PARM_2
	bcs	00107$
;../_moduint.c:190: a -= b;
	psha
	txa
	sub	(__moduint_PARM_2 + 1)
	tax
	pshh
	pula
	sbc	__moduint_PARM_2
	psha
	pulh
	pula
00107$:
;../_moduint.c:191: b >>= 1;
	psha
	pshx
	lda	(__moduint_PARM_2 + 1)
	ldx	__moduint_PARM_2
	lsrx
	rora
	sta	(__moduint_PARM_2 + 1)
	stx	__moduint_PARM_2
	pulx
	pula
;../_moduint.c:193: while (count--);
	sta	*__moduint_sloc0_1_0
	deca
	tst	*__moduint_sloc0_1_0
	bne	00108$
;../_moduint.c:194: return a;
	pshx
	pshh
	pulx
	pula
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
