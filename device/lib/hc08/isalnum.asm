;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module isalnum
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
	.globl _isalpha
	.globl _isalnum
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_isalnum_sloc0_1_0:
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
;Allocation info for local variables in function 'isalnum'
;------------------------------------------------------------
;sloc0                     Allocated with name '_isalnum_sloc0_1_0'
;c                         Allocated to registers a x 
;__00010001                Allocated to registers 
;__00020002                Allocated to registers 
;c                         Allocated to registers 
;------------------------------------------------------------
;../isalnum.c:37: int isalnum (int c)
;	-----------------------------------------
;	 function isalnum
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_isalnum:
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	psha
	pshx
	jsr	_isalpha
	sta	*(_isalnum_sloc0_1_0 + 1)
	stx	*_isalnum_sloc0_1_0
	pulx
	pula
	tst	*(_isalnum_sloc0_1_0 + 1)
	bne	00119$
	tst	*_isalnum_sloc0_1_0
00119$:
	bne	00105$
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cmp	#0x30
	bcs	00109$
	cmp	#0x39
	bls	00105$
00109$:
;../isalnum.c:39: return (isalpha (c) || isdigit (c));
	clra
	bra	00106$
00105$:
	lda	#0x01
00106$:
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
