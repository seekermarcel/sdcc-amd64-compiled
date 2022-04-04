;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.module _memmove
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
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 2
_memmove_sloc2_1_0:
	.ds 2
_memmove_sloc3_1_0:
	.ds 2
_memmove_sloc4_1_0:
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
_memmove_PARM_2:
	.ds 2
_memmove_PARM_3:
	.ds 2
_memmove_ret_1_22:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;acount                    Allocated with name '_memmove_PARM_3'
;dst                       Allocated to registers x h 
;ret                       Allocated with name '_memmove_ret_1_22'
;d                         Allocated to registers 
;s                         Allocated to registers 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;sloc3                     Allocated with name '_memmove_sloc3_1_0'
;sloc4                     Allocated with name '_memmove_sloc4_1_0'
;------------------------------------------------------------
;../_memmove.c:40: void * memmove (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_memmove:
	pshx
	tax
	pulh
;../_memmove.c:42: void * ret = dst;
	pshh
	pula
	sta	_memmove_ret_1_22
	stx	(_memmove_ret_1_22 + 1)
;../_memmove.c:46: if ((uintptr_t)src < (uintptr_t)dst) {
	lda	(_memmove_PARM_2 + 1)
	sta	*(_memmove_sloc0_1_0 + 1)
	lda	_memmove_PARM_2
	sta	*_memmove_sloc0_1_0
	stx	*(_memmove_sloc1_1_0 + 1)
	pshh
	pula
	sta	*_memmove_sloc1_1_0
;../_memmove.c:50: d = ((char *)dst)+acount-1;
;../_memmove.c:51: s = ((char *)src)+acount-1;
	lda	(_memmove_PARM_2 + 1)
	sta	*(_memmove_sloc2_1_0 + 1)
	lda	_memmove_PARM_2
	sta	*_memmove_sloc2_1_0
;../_memmove.c:52: while (acount--) {
	lda	_memmove_PARM_3
	sta	*_memmove_sloc3_1_0
	lda	(_memmove_PARM_3 + 1)
	sta	*(_memmove_sloc3_1_0 + 1)
;../_memmove.c:46: if ((uintptr_t)src < (uintptr_t)dst) {
	lda	*(_memmove_sloc0_1_0 + 1)
	sub	*(_memmove_sloc1_1_0 + 1)
	lda	*_memmove_sloc0_1_0
	sbc	*_memmove_sloc1_1_0
	bcc	00108$
;../_memmove.c:50: d = ((char *)dst)+acount-1;
	txa
	add	(_memmove_PARM_3 + 1)
	tax
	pshh
	pula
	adc	_memmove_PARM_3
	psha
	pulh
	aix	#-1
	sthx	*_memmove_sloc1_1_0
;../_memmove.c:51: s = ((char *)src)+acount-1;
	lda	*(_memmove_sloc2_1_0 + 1)
	add	(_memmove_PARM_3 + 1)
	tax
	lda	*_memmove_sloc2_1_0
	adc	_memmove_PARM_3
	psha
	pulh
	aix	#-1
	sthx	*_memmove_sloc0_1_0
;../_memmove.c:52: while (acount--) {
	mov	*_memmove_sloc3_1_0,*_memmove_sloc4_1_0
	mov	*(_memmove_sloc3_1_0 + 1),*(_memmove_sloc4_1_0 + 1)
00101$:
	ldhx	*_memmove_sloc4_1_0
	pshx
	pshh
	ldhx	*_memmove_sloc4_1_0
	aix	#-1
	sthx	*_memmove_sloc4_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00109$
;../_memmove.c:53: *d-- = *s--;
	ldhx	*_memmove_sloc0_1_0
	lda	,x
	ldhx	*_memmove_sloc0_1_0
	aix	#-1
	sthx	*_memmove_sloc0_1_0
	ldhx	*_memmove_sloc1_1_0
	sta	,x
	ldhx	*_memmove_sloc1_1_0
	aix	#-1
	sthx	*_memmove_sloc1_1_0
	bra	00101$
00108$:
;../_memmove.c:60: d = dst;
	sthx	*_memmove_sloc4_1_0
;../_memmove.c:61: s = src;
;../_memmove.c:62: while (acount--) {
00104$:
	ldhx	*_memmove_sloc3_1_0
	pshx
	pshh
	ldhx	*_memmove_sloc3_1_0
	aix	#-1
	sthx	*_memmove_sloc3_1_0
	pulh
	pulx
	cphx	#0x00
	beq	00109$
;../_memmove.c:63: *d++ = *s++;
	ldhx	*_memmove_sloc2_1_0
	lda	,x
	sta	*_memmove_sloc1_1_0
	aix	#1
	sthx	*_memmove_sloc2_1_0
	ldhx	*_memmove_sloc4_1_0
	lda	*_memmove_sloc1_1_0
	sta	,x
	aix	#1
	sthx	*_memmove_sloc4_1_0
	bra	00104$
00109$:
;../_memmove.c:67: return(ret);
	ldx	_memmove_ret_1_22
	lda	(_memmove_ret_1_22 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
