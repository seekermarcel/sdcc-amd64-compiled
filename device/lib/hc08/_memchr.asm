;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:33 2022
;--------------------------------------------------------
	.module _memchr
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
	.globl _memchr_PARM_3
	.globl _memchr_PARM_2
	.globl _memchr
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memchr_sloc0_1_0:
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
_memchr_PARM_2:
	.ds 2
_memchr_PARM_3:
	.ds 2
_memchr_p_1_22:
	.ds 2
_memchr_end_1_22:
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
;Allocation info for local variables in function 'memchr'
;------------------------------------------------------------
;c                         Allocated with name '_memchr_PARM_2'
;n                         Allocated with name '_memchr_PARM_3'
;s                         Allocated to registers a x 
;p                         Allocated with name '_memchr_p_1_22'
;end                       Allocated with name '_memchr_end_1_22'
;sloc0                     Allocated with name '_memchr_sloc0_1_0'
;------------------------------------------------------------
;../_memchr.c:31: void *memchr(const void *s, int c, size_t n)
;	-----------------------------------------
;	 function memchr
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_memchr:
;../_memchr.c:33: unsigned char *p = (unsigned char *)s;
	sta	(_memchr_p_1_22 + 1)
	stx	_memchr_p_1_22
;../_memchr.c:34: unsigned char *end = p + n;
	ldhx	#_memchr_end_1_22
	lda	(_memchr_p_1_22 + 1)
	add	(_memchr_PARM_3 + 1)
	sta	1,x
	lda	_memchr_p_1_22
	adc	_memchr_PARM_3
	sta	,x
;../_memchr.c:38: return(0);
	lda	_memchr_p_1_22
	psha
	pulh
	ldx	(_memchr_p_1_22 + 1)
00105$:
;../_memchr.c:35: for(; p != end; p++)
	cpx	(_memchr_end_1_22 + 1)
	bne	00121$
	pshh
	pula
	cmp	_memchr_end_1_22
	beq	00103$
00121$:
;../_memchr.c:36: if(*p == c)
	lda	,x
	sta	*(_memchr_sloc0_1_0 + 1)
	mov	#0x00,*_memchr_sloc0_1_0
	lda	*(_memchr_sloc0_1_0 + 1)
	cmp	(_memchr_PARM_2 + 1)
	bne	00122$
	lda	*_memchr_sloc0_1_0
	cmp	_memchr_PARM_2
	beq	00123$
00122$:
	bra	00106$
00123$:
;../_memchr.c:37: return((void *)p);
	lda	(_memchr_p_1_22 + 1)
	ldx	_memchr_p_1_22
	rts
00106$:
;../_memchr.c:35: for(; p != end; p++)
	aix	#1
	pshh
	pula
	sta	_memchr_p_1_22
	stx	(_memchr_p_1_22 + 1)
	bra	00105$
00103$:
;../_memchr.c:38: return(0);
	clra
	tax
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
