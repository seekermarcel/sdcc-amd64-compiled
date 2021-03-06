;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.module _strlen
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
	.globl _strlen
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strlen_sloc0_1_0:
	.ds 2
_strlen_sloc1_1_0:
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
;Allocation info for local variables in function 'strlen'
;------------------------------------------------------------
;str                       Allocated to registers 
;i                         Allocated to registers a x 
;sloc0                     Allocated with name '_strlen_sloc0_1_0'
;sloc1                     Allocated with name '_strlen_sloc1_1_0'
;------------------------------------------------------------
;../_strlen.c:35: size_t strlen ( const char * str )
;	-----------------------------------------
;	 function strlen
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strlen:
	sta	*(_strlen_sloc0_1_0 + 1)
	stx	*_strlen_sloc0_1_0
;../_strlen.c:39: while (*str++)
	clrx
	txa
00101$:
	pshx
	ldhx	*_strlen_sloc0_1_0
	psha
	lda	,x
	sta	*_strlen_sloc1_1_0
	aix	#1
	sthx	*_strlen_sloc0_1_0
	pula
	pulx
	tst	*_strlen_sloc1_1_0
	beq	00103$
;../_strlen.c:40: i++ ;
	inca
	bne	00116$
	incx
00116$:
	bra	00101$
00103$:
;../_strlen.c:42: return i;
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
