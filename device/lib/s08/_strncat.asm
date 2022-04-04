;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _strncat
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
	.globl _strncat_PARM_3
	.globl _strncat_PARM_2
	.globl _strncat
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_strncat_sloc0_1_0:
	.ds 2
_strncat_sloc1_1_0:
	.ds 2
_strncat_sloc2_1_0:
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
_strncat_PARM_2:
	.ds 2
_strncat_PARM_3:
	.ds 2
_strncat_front_1_21:
	.ds 2
_strncat_start_1_22:
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
;Allocation info for local variables in function 'strncat'
;------------------------------------------------------------
;back                      Allocated with name '_strncat_PARM_2'
;count                     Allocated with name '_strncat_PARM_3'
;front                     Allocated with name '_strncat_front_1_21'
;start                     Allocated with name '_strncat_start_1_22'
;sloc0                     Allocated with name '_strncat_sloc0_1_0'
;sloc1                     Allocated with name '_strncat_sloc1_1_0'
;sloc2                     Allocated with name '_strncat_sloc2_1_0'
;------------------------------------------------------------
;../_strncat.c:31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_strncat:
	pshx
	tax
	pulh
;../_strncat.c:33: char *start = front;
	sthx	_strncat_start_1_22
;../_strncat.c:35: while (*front++);
00101$:
	lda	,x
	aix	#1
	tsta
	bne	00101$
;../_strncat.c:37: front--;
	aix	#-1
	sthx	_strncat_front_1_21
;../_strncat.c:39: while (count--)
	ldhx	_strncat_PARM_2
	sthx	*_strncat_sloc0_1_0
	ldhx	_strncat_front_1_21
	sthx	*_strncat_sloc1_1_0
	ldhx	_strncat_PARM_3
00106$:
	sthx	*_strncat_sloc2_1_0
	aix	#-1
	lda	*(_strncat_sloc2_1_0 + 1)
	ora	*_strncat_sloc2_1_0
	beq	00108$
;../_strncat.c:40: if (!(*front++ = *back++))
	pshx
	pshh
	ldhx	*_strncat_sloc0_1_0
	lda	,x
	aix	#1
	sthx	*_strncat_sloc0_1_0
	pulh
	pulx
	pshx
	pshh
	ldhx	*_strncat_sloc1_1_0
	sta	,x
	aix	#1
	sthx	*_strncat_sloc1_1_0
	pulh
	pulx
	psha
	lda	*_strncat_sloc1_1_0
	sta	_strncat_front_1_21
	lda	*(_strncat_sloc1_1_0 + 1)
	sta	(_strncat_front_1_21 + 1)
	pula
	tsta
	bne	00106$
;../_strncat.c:41: return(start);
	ldx	_strncat_start_1_22
	lda	(_strncat_start_1_22 + 1)
	rts
00108$:
;../_strncat.c:43: *front = '\0';
	ldhx	_strncat_front_1_21
	clra
	sta	,x
;../_strncat.c:44: return(start);
	ldx	_strncat_start_1_22
	lda	(_strncat_start_1_22 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
