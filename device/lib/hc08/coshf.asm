;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module coshf
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
	.globl _sincoshf
	.globl _coshf
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
;Allocation info for local variables in function 'coshf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -8
;------------------------------------------------------------
;../coshf.c:36: float coshf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function coshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_coshf:
	ais	#-4
;../coshf.c:38: return sincoshf(x, 1);
	tsx
	ldhx	#_sincoshf_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	lda	#0x01
	sta	_sincoshf_PARM_2
	jsr	_sincoshf
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
	ais	#4
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)