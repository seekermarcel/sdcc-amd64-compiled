;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.cs08
	.module _sint2fs
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
	.globl ___slong2fs
	.globl ___sint2fs
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
___sint2fs_sloc0_1_0:
	.ds 4
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
;Allocation info for local variables in function '__sint2fs'
;------------------------------------------------------------
;sloc0                     Allocated with name '___sint2fs_sloc0_1_0'
;si                        Allocated to registers a x 
;------------------------------------------------------------
;../_sint2fs.c:54: float __sint2fs (signed int si) {
;	-----------------------------------------
;	 function __sint2fs
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
___sint2fs:
;../_sint2fs.c:55: return __slong2fs(si);
	sta	(___slong2fs_PARM_1 + 3)
	txa
	sta	(___slong2fs_PARM_1 + 2)
	rola	
	clra	
	sbc	#0x00
	sta	(___slong2fs_PARM_1 + 1)
	sta	___slong2fs_PARM_1
	jsr	___slong2fs
	sta	*(___sint2fs_sloc0_1_0 + 3)
	stx	*(___sint2fs_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(___sint2fs_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*___sint2fs_sloc0_1_0
	mov	*___sint2fs_sloc0_1_0,*___SDCC_hc08_ret3
	mov	*(___sint2fs_sloc0_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(___sint2fs_sloc0_1_0 + 2)
	lda	*(___sint2fs_sloc0_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
