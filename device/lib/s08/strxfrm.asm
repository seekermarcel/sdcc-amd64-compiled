;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module strxfrm
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
	.globl _strlen
	.globl _strncpy
	.globl _strxfrm_PARM_3
	.globl _strxfrm_PARM_2
	.globl _strxfrm
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
_strxfrm_PARM_2:
	.ds 2
_strxfrm_PARM_3:
	.ds 2
_strxfrm_dest_1_21:
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
;Allocation info for local variables in function 'strxfrm'
;------------------------------------------------------------
;src                       Allocated with name '_strxfrm_PARM_2'
;n                         Allocated with name '_strxfrm_PARM_3'
;dest                      Allocated with name '_strxfrm_dest_1_21'
;------------------------------------------------------------
;../strxfrm.c:31: size_t strxfrm(char *dest, const char *src, size_t n)
;	-----------------------------------------
;	 function strxfrm
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strxfrm:
	sta	(_strxfrm_dest_1_21 + 1)
	stx	_strxfrm_dest_1_21
;../strxfrm.c:33: strncpy(dest, src, n);
	ldhx	_strxfrm_PARM_2
	sthx	_strncpy_PARM_2
	ldhx	_strxfrm_PARM_3
	sthx	_strncpy_PARM_3
	lda	(_strxfrm_dest_1_21 + 1)
	ldx	_strxfrm_dest_1_21
	jsr	_strncpy
;../strxfrm.c:34: return(strlen(src) + 1);
	lda	(_strxfrm_PARM_2 + 1)
	ldx	_strxfrm_PARM_2
	jsr	_strlen
	inca
	bne	00103$
	incx
00103$:
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
