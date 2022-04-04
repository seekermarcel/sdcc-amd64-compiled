;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _strchr
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
	.globl _strchr_PARM_2
	.globl _strchr
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strchr_sloc0_1_0:
	.ds 2
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
_strchr_PARM_2:
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strchr_PARM_2'
;string                    Allocated to registers 
;sloc0                     Allocated with name '_strchr_sloc0_1_0'
;------------------------------------------------------------
;../_strchr.c:36: char * strchr ( const char * string, int ch )
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strchr:
	sta	*(_strchr_sloc0_1_0 + 1)
	stx	*_strchr_sloc0_1_0
;../_strchr.c:39: while (*string && *string != ch)
00102$:
	ldhx	*_strchr_sloc0_1_0
	lda	,x
	tax
	psha
	rola	
	clra	
	sbc	#0x00
	psha
	pulh
	pula
	cphx	_strchr_PARM_2
	psha
	beq	00127$
	clra
	bra	00126$
00127$:
	lda	#0x01
00126$:
	tax
	pula
	tsta
	beq	00104$
	tstx
	bne	00104$
;../_strchr.c:40: string++;
	ldhx	*_strchr_sloc0_1_0
	aix	#1
	sthx	*_strchr_sloc0_1_0
	bra	00102$
00104$:
;../_strchr.c:42: if (*string == ch)
	tstx
	beq	00106$
;../_strchr.c:43: return(string);
	ldx	*_strchr_sloc0_1_0
	lda	*(_strchr_sloc0_1_0 + 1)
	rts
00106$:
;../_strchr.c:44: return ( NULL );
	clra
	tax
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
