;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module isspace
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
	.globl _isspace
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
_isspace_c_1_21:
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
;Allocation info for local variables in function 'isspace'
;------------------------------------------------------------
;c                         Allocated with name '_isspace_c_1_21'
;------------------------------------------------------------
;../isspace.c:37: int isspace (int c)
;	-----------------------------------------
;	 function isspace
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isspace:
	sta	(_isspace_c_1_21 + 1)
	stx	_isspace_c_1_21
;../isspace.c:39: return (c == ' ' || c == '\f' || c == '\n' || c == '\r' || c == '\t' || c == '\v');
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x20
	bne	00142$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00142$:
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x0C
	bne	00143$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00143$:
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x0A
	bne	00144$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00144$:
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x0D
	bne	00145$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00145$:
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x09
	bne	00146$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00146$:
	lda	(_isspace_c_1_21 + 1)
	cmp	#0x0B
	bne	00147$
	lda	_isspace_c_1_21
	cbeqa	#0x00,00104$
00147$:
	clra
	bra	00105$
00104$:
	lda	#0x01
00105$:
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
