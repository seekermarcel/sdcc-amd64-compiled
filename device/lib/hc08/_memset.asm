;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:33 2022
;--------------------------------------------------------
	.module _memset
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
	.globl _memset_PARM_3
	.globl _memset_PARM_2
	.globl _memset
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memset_sloc0_1_0:
	.ds 2
_memset_sloc1_1_0:
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
_memset_PARM_2:
	.ds 1
_memset_PARM_3:
	.ds 2
_memset_s_1_21:
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
;Allocation info for local variables in function 'memset'
;------------------------------------------------------------
;c                         Allocated with name '_memset_PARM_2'
;n                         Allocated with name '_memset_PARM_3'
;s                         Allocated with name '_memset_s_1_21'
;ret                       Allocated to registers 
;sloc0                     Allocated with name '_memset_sloc0_1_0'
;sloc1                     Allocated with name '_memset_sloc1_1_0'
;------------------------------------------------------------
;../_memset.c:39: void *memset (void *s, unsigned char c, size_t n)
;	-----------------------------------------
;	 function memset
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memset:
	sta	(_memset_s_1_21 + 1)
	stx	_memset_s_1_21
;../_memset.c:44: register unsigned char *ret = s;
	lda	_memset_s_1_21
	psha
	pulh
	ldx	(_memset_s_1_21 + 1)
;../_memset.c:46: while (n--)
	lda	_memset_PARM_3
	sta	*_memset_sloc0_1_0
	lda	(_memset_PARM_3 + 1)
	sta	*(_memset_sloc0_1_0 + 1)
00101$:
	mov	*_memset_sloc0_1_0,*_memset_sloc1_1_0
	mov	*(_memset_sloc0_1_0 + 1),*(_memset_sloc1_1_0 + 1)
	pshx
	pshh
	ldhx	*_memset_sloc0_1_0
	aix	#-1
	sthx	*_memset_sloc0_1_0
	pulh
	pulx
	lda	*(_memset_sloc1_1_0 + 1)
	ora	*_memset_sloc1_1_0
	beq	00103$
;../_memset.c:48: *(unsigned char *) ret = c;
	lda	_memset_PARM_2
	sta	,x
	aix	#1
;../_memset.c:49: ret = ((unsigned char *) ret) + 1;
	bra	00101$
00103$:
;../_memset.c:52: return s;
	ldx	_memset_s_1_21
	lda	(_memset_s_1_21 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
