;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:33 2022
;--------------------------------------------------------
	.module _strncpy
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
	.globl _strncpy_PARM_3
	.globl _strncpy_PARM_2
	.globl _strncpy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncpy_sloc0_1_0:
	.ds 2
_strncpy_sloc1_1_0:
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
_strncpy_PARM_2:
	.ds 2
_strncpy_PARM_3:
	.ds 2
_strncpy_d1_1_22:
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
;Allocation info for local variables in function 'strncpy'
;------------------------------------------------------------
;s                         Allocated with name '_strncpy_PARM_2'
;n                         Allocated with name '_strncpy_PARM_3'
;d                         Allocated to registers x h 
;d1                        Allocated with name '_strncpy_d1_1_22'
;sloc0                     Allocated with name '_strncpy_sloc0_1_0'
;sloc1                     Allocated with name '_strncpy_sloc1_1_0'
;------------------------------------------------------------
;../_strncpy.c:33: char *strncpy ( char * d, const char * s, size_t n )
;	-----------------------------------------
;	 function strncpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strncpy:
	pshx
	tax
	pulh
;../_strncpy.c:35: register char * d1 =  d;
	pshh
	pula
	sta	_strncpy_d1_1_22
	stx	(_strncpy_d1_1_22 + 1)
;../_strncpy.c:37: while ( n && *s )
	lda	_strncpy_PARM_3
	sta	*_strncpy_sloc0_1_0
	lda	(_strncpy_PARM_3 + 1)
	sta	*(_strncpy_sloc0_1_0 + 1)
	lda	_strncpy_PARM_2
	sta	*_strncpy_sloc1_1_0
	lda	(_strncpy_PARM_2 + 1)
	sta	*(_strncpy_sloc1_1_0 + 1)
00102$:
	lda	*(_strncpy_sloc0_1_0 + 1)
	ora	*_strncpy_sloc0_1_0
	beq	00114$
	pshx
	pshh
	ldhx	*_strncpy_sloc1_1_0
	lda	,x
	pulh
	pulx
	tsta
	beq	00114$
;../_strncpy.c:39: n-- ;
	pshx
	pshh
	ldhx	*_strncpy_sloc0_1_0
	aix	#-1
	sthx	*_strncpy_sloc0_1_0
	pulh
	pulx
;../_strncpy.c:40: *d++ = *s++ ;
	pshx
	pshh
	ldhx	*_strncpy_sloc1_1_0
	aix	#1
	sthx	*_strncpy_sloc1_1_0
	pulh
	pulx
	sta	,x
	aix	#1
	bra	00102$
;../_strncpy.c:42: while ( n-- )
00114$:
	mov	*_strncpy_sloc0_1_0,*_strncpy_sloc1_1_0
	mov	*(_strncpy_sloc0_1_0 + 1),*(_strncpy_sloc1_1_0 + 1)
00105$:
	mov	*_strncpy_sloc1_1_0,*_strncpy_sloc0_1_0
	mov	*(_strncpy_sloc1_1_0 + 1),*(_strncpy_sloc0_1_0 + 1)
	pshx
	pshh
	ldhx	*_strncpy_sloc1_1_0
	aix	#-1
	sthx	*_strncpy_sloc1_1_0
	pulh
	pulx
	lda	*(_strncpy_sloc0_1_0 + 1)
	ora	*_strncpy_sloc0_1_0
	beq	00107$
;../_strncpy.c:44: *d++ = '\0' ;
	clra
	sta	,x
	aix	#1
	bra	00105$
00107$:
;../_strncpy.c:46: return d1;
	ldx	_strncpy_d1_1_22
	lda	(_strncpy_d1_1_22 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
