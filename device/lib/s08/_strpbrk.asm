;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _strpbrk
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
	.globl _strchr
	.globl _strpbrk_PARM_2
	.globl _strpbrk
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_strpbrk_sloc0_1_0:
	.ds 2
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
_strpbrk_PARM_2:
	.ds 2
_strpbrk_string_1_21:
	.ds 2
_strpbrk_ret_1_22:
	.ds 2
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
;Allocation info for local variables in function 'strpbrk'
;------------------------------------------------------------
;ch                        Allocated to registers a 
;sloc0                     Allocated with name '_strpbrk_sloc0_1_0'
;control                   Allocated with name '_strpbrk_PARM_2'
;string                    Allocated with name '_strpbrk_string_1_21'
;ret                       Allocated with name '_strpbrk_ret_1_22'
;p                         Allocated to registers x h 
;------------------------------------------------------------
;../_strpbrk.c:31: char * strpbrk ( const char * string, const char * control )
;	-----------------------------------------
;	 function strpbrk
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strpbrk:
	sta	(_strpbrk_string_1_21 + 1)
	stx	_strpbrk_string_1_21
;../_strpbrk.c:33: char *ret = NULL;
	clrh
	clrx
	sthx	_strpbrk_ret_1_22
;../_strpbrk.c:36: while (ch = *control) {
	ldhx	_strpbrk_PARM_2
	sthx	*_strpbrk_sloc0_1_0
00105$:
	ldhx	*_strpbrk_sloc0_1_0
	ldx	,x
	txa
	tstx
	beq	00107$
;../_strpbrk.c:37: char * p = strchr(string, ch);
	sta	(_strchr_PARM_2 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	_strchr_PARM_2
	lda	(_strpbrk_string_1_21 + 1)
	ldx	_strpbrk_string_1_21
	jsr	_strchr
	psha
	pshx
	pulh
	pulx
;../_strpbrk.c:38: if (p != NULL && (ret == NULL || p < ret)) {
	cphx	#0x00
	beq	00102$
	lda	_strpbrk_ret_1_22
	ora	(_strpbrk_ret_1_22 + 1)
	beq	00101$
	cphx	_strpbrk_ret_1_22
	bcc	00102$
00101$:
;../_strpbrk.c:39: ret = p;
	sthx	_strpbrk_ret_1_22
00102$:
;../_strpbrk.c:41: control++;
	ldhx	*_strpbrk_sloc0_1_0
	aix	#1
	sthx	*_strpbrk_sloc0_1_0
	bra	00105$
00107$:
;../_strpbrk.c:44: return (ret);
	ldx	_strpbrk_ret_1_22
	lda	(_strpbrk_ret_1_22 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
