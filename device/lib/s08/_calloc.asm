;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _calloc
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
	.globl _memset
	.globl _malloc
	.globl _calloc_PARM_2
	.globl _calloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_calloc_sloc0_1_0:
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
_calloc_PARM_2:
	.ds 2
_calloc_nmemb_1_25:
	.ds 2
_calloc_ptr_1_26:
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
;Allocation info for local variables in function 'calloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_calloc_sloc0_1_0'
;size                      Allocated with name '_calloc_PARM_2'
;nmemb                     Allocated with name '_calloc_nmemb_1_25'
;ptr                       Allocated with name '_calloc_ptr_1_26'
;------------------------------------------------------------
;../_calloc.c:45: void __xdata * calloc (size_t nmemb, size_t size)
;	-----------------------------------------
;	 function calloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_calloc:
	sta	(_calloc_nmemb_1_25 + 1)
	stx	_calloc_nmemb_1_25
;../_calloc.c:49: ptr = malloc(nmemb * size);
	ldhx	_calloc_PARM_2
	sthx	__mulint_PARM_2
	lda	(_calloc_nmemb_1_25 + 1)
	ldx	_calloc_nmemb_1_25
	jsr	__mulint
	psha
	pshx
	pulh
	pulx
	pshx
	pshh
	txa
	pshh
	pulx
	jsr	_malloc
	sta	(_calloc_ptr_1_26 + 1)
	stx	_calloc_ptr_1_26
	pulh
	pulx
;../_calloc.c:50: if (ptr)
	lda	_calloc_ptr_1_26
	ora	(_calloc_ptr_1_26 + 1)
	beq	00102$
;../_calloc.c:52: memset(ptr, 0, nmemb * size);
	lda	(_calloc_ptr_1_26 + 1)
	sta	*(_calloc_sloc0_1_0 + 1)
	lda	_calloc_ptr_1_26
	sta	*_calloc_sloc0_1_0
	clra
	sta	_memset_PARM_2
	sta	(_memset_PARM_2 + 1)
	sthx	_memset_PARM_3
	lda	*(_calloc_sloc0_1_0 + 1)
	ldx	*_calloc_sloc0_1_0
	jsr	_memset
00102$:
;../_calloc.c:54: return ptr;
	ldx	_calloc_ptr_1_26
	lda	(_calloc_ptr_1_26 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
