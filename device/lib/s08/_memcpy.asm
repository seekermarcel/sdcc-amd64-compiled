;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _memcpy
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
	.globl _memcpy_PARM_3
	.globl _memcpy_PARM_2
	.globl _memcpy
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memcpy_sloc0_1_0:
	.ds 2
_memcpy_sloc1_1_0:
	.ds 2
_memcpy_sloc2_1_0:
	.ds 2
_memcpy_sloc3_1_0:
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
_memcpy_PARM_2:
	.ds 2
_memcpy_PARM_3:
	.ds 2
_memcpy_ret_1_22:
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
;Allocation info for local variables in function 'memcpy'
;------------------------------------------------------------
;src                       Allocated with name '_memcpy_PARM_2'
;acount                    Allocated with name '_memcpy_PARM_3'
;dst                       Allocated to registers a x 
;ret                       Allocated with name '_memcpy_ret_1_22'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memcpy_sloc0_1_0'
;sloc1                     Allocated with name '_memcpy_sloc1_1_0'
;sloc2                     Allocated with name '_memcpy_sloc2_1_0'
;sloc3                     Allocated with name '_memcpy_sloc3_1_0'
;------------------------------------------------------------
;../_memcpy.c:36: void * memcpy (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memcpy
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memcpy:
;../_memcpy.c:38: void * ret = dst;
	stx	_memcpy_ret_1_22
	sta	(_memcpy_ret_1_22 + 1)
;../_memcpy.c:39: char * d = dst;
	sta	*(_memcpy_sloc0_1_0 + 1)
	stx	*_memcpy_sloc0_1_0
;../_memcpy.c:40: const char * s = src;
	ldhx	_memcpy_PARM_2
	sthx	*_memcpy_sloc1_1_0
;../_memcpy.c:45: while (acount--) {
	ldhx	_memcpy_PARM_3
	sthx	*_memcpy_sloc2_1_0
00101$:
	mov	*_memcpy_sloc2_1_0,*_memcpy_sloc3_1_0
	mov	*(_memcpy_sloc2_1_0 + 1),*(_memcpy_sloc3_1_0 + 1)
	ldhx	*_memcpy_sloc2_1_0
	aix	#-1
	sthx	*_memcpy_sloc2_1_0
	lda	*(_memcpy_sloc3_1_0 + 1)
	ora	*_memcpy_sloc3_1_0
	beq	00103$
;../_memcpy.c:46: *d++ = *s++;
	ldhx	*_memcpy_sloc1_1_0
	lda	,x
	aix	#1
	sthx	*_memcpy_sloc1_1_0
	ldhx	*_memcpy_sloc0_1_0
	sta	,x
	aix	#1
	sthx	*_memcpy_sloc0_1_0
	bra	00101$
00103$:
;../_memcpy.c:49: return(ret);
	ldx	_memcpy_ret_1_22
	lda	(_memcpy_ret_1_22 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
