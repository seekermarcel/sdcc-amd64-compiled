;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _realloc
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
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
	.globl _realloc_PARM_2
	.globl _realloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_realloc_sloc0_1_0:
	.ds 2
_realloc_sloc1_1_0:
	.ds 2
_realloc_sloc2_1_0:
	.ds 2
_realloc_sloc3_1_0:
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
_realloc_PARM_2:
	.ds 2
_realloc_p_1_26:
	.ds 2
_realloc_pthis_1_27:
	.ds 2
_realloc_pnew_1_27:
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
;Allocation info for local variables in function 'realloc'
;------------------------------------------------------------
;sloc0                     Allocated with name '_realloc_sloc0_1_0'
;sloc1                     Allocated with name '_realloc_sloc1_1_0'
;sloc2                     Allocated with name '_realloc_sloc2_1_0'
;sloc3                     Allocated with name '_realloc_sloc3_1_0'
;size                      Allocated with name '_realloc_PARM_2'
;p                         Allocated with name '_realloc_p_1_26'
;pthis                     Allocated with name '_realloc_pthis_1_27'
;pnew                      Allocated with name '_realloc_pnew_1_27'
;ret                       Allocated to registers a x 
;------------------------------------------------------------
;../_realloc.c:84: void __xdata * realloc (void * p, size_t size)
;	-----------------------------------------
;	 function realloc
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_realloc:
	sta	(_realloc_p_1_26 + 1)
	stx	_realloc_p_1_26
;../_realloc.c:92: pthis = _sdcc_find_memheader(p);
	ldhx	_realloc_p_1_26
	sthx	*_realloc_sloc0_1_0
	lda	*(_realloc_sloc0_1_0 + 1)
	ldx	*_realloc_sloc0_1_0
	jsr	__sdcc_find_memheader
	sta	(_realloc_pthis_1_27 + 1)
	stx	_realloc_pthis_1_27
;../_realloc.c:93: if (pthis)
	lda	_realloc_pthis_1_27
	ora	(_realloc_pthis_1_27 + 1)
	bne	00142$
	jmp	00114$
00142$:
;../_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	lda	#0xFB
	sub	(_realloc_PARM_2 + 1)
	lda	#0xFF
	sbc	_realloc_PARM_2
	bcc	00111$
;../_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	clrx
	txa
	rts
00111$:
;../_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	ldhx	_realloc_PARM_2
	aix	#4
	sthx	_realloc_PARM_2
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ldhx	_realloc_pthis_1_27
	lda	,x
	sta	*_realloc_sloc1_1_0
	lda	1,x
	sta	*(_realloc_sloc1_1_0 + 1)
	ldhx	*_realloc_sloc1_1_0
	lda	(_realloc_pthis_1_27 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
	lda	_realloc_pthis_1_27
	sta	*_realloc_sloc2_1_0
	txa
	sub	*(_realloc_sloc2_1_0 + 1)
	tax
	pshh
	pula
	sbc	*_realloc_sloc2_1_0
	psha
	pulh
;../_realloc.c:105: pthis->len = size;
	lda	_realloc_pthis_1_27
	sta	*_realloc_sloc2_1_0
	lda	(_realloc_pthis_1_27 + 1)
	sta	*(_realloc_sloc2_1_0 + 1)
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	cphx	_realloc_PARM_2
	bcs	00108$
;../_realloc.c:105: pthis->len = size;
	ldhx	*_realloc_sloc2_1_0
	lda	_realloc_PARM_2
	sta	2,x
	lda	(_realloc_PARM_2 + 1)
	sta	3,x
;../_realloc.c:106: ret = p;
	ldx	*_realloc_sloc0_1_0
	lda	*(_realloc_sloc0_1_0 + 1)
	rts
00108$:
;../_realloc.c:110: if ((_sdcc_prev_memheader) &&
	lda	__sdcc_prev_memheader
	ora	(__sdcc_prev_memheader + 1)
	bne	00145$
	jmp	00104$
00145$:
;../_realloc.c:111: ((((unsigned int)pthis->next) -
	ldhx	*_realloc_sloc1_1_0
;../_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	lda	(__sdcc_prev_memheader + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	lda	__sdcc_prev_memheader
	sta	*_realloc_sloc1_1_0
	txa
	sub	*(_realloc_sloc1_1_0 + 1)
	sta	*(_realloc_sloc1_1_0 + 1)
	pshh
	pula
	sbc	*_realloc_sloc1_1_0
	sta	*_realloc_sloc1_1_0
;../_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	ldhx	__sdcc_prev_memheader
	sthx	*_realloc_sloc0_1_0
	ldhx	*_realloc_sloc0_1_0
	lda	2,x
	sta	*_realloc_sloc3_1_0
	lda	3,x
	sta	*(_realloc_sloc3_1_0 + 1)
	lda	*(_realloc_sloc1_1_0 + 1)
	sub	*(_realloc_sloc3_1_0 + 1)
	tax
	lda	*_realloc_sloc1_1_0
	sbc	*_realloc_sloc3_1_0
	psha
	pulh
	cphx	_realloc_PARM_2
	bcs	00104$
;../_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	ldhx	__sdcc_prev_memheader
	txa
	add	*(_realloc_sloc3_1_0 + 1)
	psha
	pshh
	pula
	adc	*_realloc_sloc3_1_0
	tax
	pula
	sta	(_realloc_pnew_1_27 + 1)
	stx	_realloc_pnew_1_27
;../_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	ldhx	*_realloc_sloc0_1_0
	lda	_realloc_pnew_1_27
	sta	,x
	lda	(_realloc_pnew_1_27 + 1)
	sta	1,x
;../_realloc.c:122: memmove(pnew, pthis, pthis->len);
	ldhx	_realloc_pnew_1_27
	sthx	*_realloc_sloc3_1_0
	ldhx	_realloc_pthis_1_27
	sthx	_memmove_PARM_2
	ldhx	*_realloc_sloc2_1_0
	ldhx	2,x
	sthx	_memmove_PARM_3
	lda	*(_realloc_sloc3_1_0 + 1)
	ldx	*_realloc_sloc3_1_0
	jsr	_memmove
;../_realloc.c:123: pnew->len = size;
	ldhx	_realloc_pnew_1_27
	lda	_realloc_PARM_2
	sta	2,x
	lda	(_realloc_PARM_2 + 1)
	sta	3,x
;../_realloc.c:124: ret = MEM(pnew);
	ldhx	_realloc_pnew_1_27
	aix	#4
	txa
	pshh
	pulx
	rts
00104$:
;../_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	ldhx	_realloc_PARM_2
	aix	#-4
	txa
	pshh
	pulx
	jsr	_malloc
;../_realloc.c:129: if (ret)
	tsta
	bne	00147$
	tstx
00147$:
	beq	00115$
;../_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	sta	*(_realloc_sloc3_1_0 + 1)
	stx	*_realloc_sloc3_1_0
	pshx
	ldhx	_realloc_pthis_1_27
	aix	#4
	sthx	*_realloc_sloc1_1_0
	pulx
	psha
	lda	*(_realloc_sloc1_1_0 + 1)
	sta	(_memcpy_PARM_2 + 1)
	lda	*_realloc_sloc1_1_0
	sta	_memcpy_PARM_2
	pula
	pshx
	ldhx	*_realloc_sloc2_1_0
	psha
	lda	2,x
	sta	*_realloc_sloc2_1_0
	lda	3,x
	sta	*(_realloc_sloc2_1_0 + 1)
	pula
	pulx
	pshx
	ldhx	*_realloc_sloc2_1_0
	aix	#-4
	sthx	_memcpy_PARM_3
	pulx
	psha
	pshx
	lda	*(_realloc_sloc3_1_0 + 1)
	ldx	*_realloc_sloc3_1_0
	jsr	_memcpy
	pulx
	pula
;../_realloc.c:132: free(p);
	psha
	pshx
	lda	(_realloc_p_1_26 + 1)
	ldx	_realloc_p_1_26
	jsr	_free
	pulx
	pula
	rts
00114$:
;../_realloc.c:140: ret = malloc(size);
	lda	(_realloc_PARM_2 + 1)
	ldx	_realloc_PARM_2
	jsr	_malloc
00115$:
;../_realloc.c:143: return ret;
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
