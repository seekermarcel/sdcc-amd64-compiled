;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:33 2022
;--------------------------------------------------------
	.module _strchr
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
_strchr_PARM_2:
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
;Allocation info for local variables in function 'strchr'
;------------------------------------------------------------
;ch                        Allocated with name '_strchr_PARM_2'
;string                    Allocated to registers 
;sloc0                     Allocated with name '_strchr_sloc0_1_0'
;------------------------------------------------------------
;../_strchr.c:34: char * strchr ( const char * string, char ch )
;	-----------------------------------------
;	 function strchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strchr:
	pshx
	tax
	pulh
;../_strchr.c:39: while (*string && *string != ch)
00102$:
	lda	,x
	sta	*_strchr_sloc0_1_0
	lda	*_strchr_sloc0_1_0
	cmp	_strchr_PARM_2
	beq	00127$
	clra
	bra	00126$
00127$:
	lda	#0x01
00126$:
	tst	*_strchr_sloc0_1_0
	beq	00104$
	tsta
	bne	00104$
;../_strchr.c:40: string++;
	aix	#1
	bra	00102$
00104$:
;../_strchr.c:42: if (*string == ch)
	tsta
	beq	00106$
;../_strchr.c:43: return(string);
	pshx
	pshh
	pulx
	pula
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
