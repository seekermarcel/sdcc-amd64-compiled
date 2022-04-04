;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _rrslonglong
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
	.globl __rrslonglong_PARM_2
	.globl __rrslonglong_PARM_1
	.globl __rrslonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrslonglong_sloc0_1_0:
	.ds 1
__rrslonglong_sloc1_1_0:
	.ds 4
__rrslonglong_sloc2_1_0:
	.ds 4
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
__rrslonglong_PARM_1:
	.ds 8
__rrslonglong_PARM_2:
	.ds 1
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
;Allocation info for local variables in function '_rrslonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rrslonglong_PARM_1'
;s                         Allocated with name '__rrslonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rrslonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrslonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rrslonglong_sloc2_1_0'
;------------------------------------------------------------
;../_rrslonglong.c:35: long long _rrslonglong(long long l, signed char s)
;	-----------------------------------------
;	 function _rrslonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrslonglong:
;../_rrslonglong.c:37: int32_t *top = (uint32_t *)((char *)(&l) + 4);
;../_rrslonglong.c:38: uint16_t *middle = (uint16_t *)((char *)(&l) + 3);
;../_rrslonglong.c:39: uint32_t *bottom = (uint32_t *)(&l);
;../_rrslonglong.c:40: uint16_t *b = (uint16_t *)(&l);
;../_rrslonglong.c:50: (*bottom) >>= s;
	lda	__rrslonglong_PARM_2
	sta	*__rrslonglong_sloc0_1_0
00103$:
;../_rrslonglong.c:42: for(;s >= 16; s-= 16)
	lda	*__rrslonglong_sloc0_1_0
	cmp	#0x10
	blt	00101$
;../_rrslonglong.c:44: b[0] = b[1];
	ldhx	(__rrslonglong_PARM_1 + 0x0002)
	sthx	__rrslonglong_PARM_1
;../_rrslonglong.c:45: b[1] = b[2];
	ldhx	(__rrslonglong_PARM_1 + 0x0004)
	sthx	(__rrslonglong_PARM_1 + 0x0002)
;../_rrslonglong.c:46: b[2] = b[3];
	ldhx	(__rrslonglong_PARM_1 + 0x0006)
	sthx	(__rrslonglong_PARM_1 + 0x0004)
;../_rrslonglong.c:47: b[3] = (b[3] & 0x8000) ? 0xffff : 0x000000;
	lda	(__rrslonglong_PARM_1 + 0x0006)
	ldx	((__rrslonglong_PARM_1 + 0x0006) + 1)
	tsta
	bpl     00107$
	ldhx	#0xFFFF
	bra	00108$
00107$:
	clrh
	clrx
00108$:
	sthx	(__rrslonglong_PARM_1 + 0x0006)
;../_rrslonglong.c:42: for(;s >= 16; s-= 16)
	lda	*__rrslonglong_sloc0_1_0
	sub	#0x10
	sta	*__rrslonglong_sloc0_1_0
	bra	00103$
00101$:
;../_rrslonglong.c:50: (*bottom) >>= s;
	lda	__rrslonglong_PARM_1
	sta	*__rrslonglong_sloc1_1_0
	lda	(__rrslonglong_PARM_1 + 1)
	sta	*(__rrslonglong_sloc1_1_0 + 1)
	lda	(__rrslonglong_PARM_1 + 2)
	sta	*(__rrslonglong_sloc1_1_0 + 2)
	lda	(__rrslonglong_PARM_1 + 3)
	sta	*(__rrslonglong_sloc1_1_0 + 3)
	ldx	*__rrslonglong_sloc0_1_0
	beq	00125$
00124$:
	lsr	*__rrslonglong_sloc1_1_0
	ror	*(__rrslonglong_sloc1_1_0 + 1)
	ror	*(__rrslonglong_sloc1_1_0 + 2)
	ror	*(__rrslonglong_sloc1_1_0 + 3)
	dbnzx	00124$
00125$:
	lda	*__rrslonglong_sloc1_1_0
	sta	__rrslonglong_PARM_1
	lda	*(__rrslonglong_sloc1_1_0 + 1)
	sta	(__rrslonglong_PARM_1 + 1)
	lda	*(__rrslonglong_sloc1_1_0 + 2)
	sta	(__rrslonglong_PARM_1 + 2)
	lda	*(__rrslonglong_sloc1_1_0 + 3)
	sta	(__rrslonglong_PARM_1 + 3)
;../_rrslonglong.c:51: (*bottom) |= ((uint32_t)((*middle) >> s) << 16);
	ldhx	(__rrslonglong_PARM_1 + 0x0003)
	lda	*__rrslonglong_sloc0_1_0
	beq	00127$
00126$:
	pshh
	lsr	1,s
	pulh
	rorx
	dbnza	00126$
00127$:
	stx	*(__rrslonglong_sloc2_1_0 + 3)
	pshh
	pula
	sta	*(__rrslonglong_sloc2_1_0 + 2)
	mov	#0x00,*(__rrslonglong_sloc2_1_0 + 1)
	mov	#0x00,*__rrslonglong_sloc2_1_0
	mov	*(__rrslonglong_sloc2_1_0 + 2),*__rrslonglong_sloc2_1_0
	mov	*(__rrslonglong_sloc2_1_0 + 3),*(__rrslonglong_sloc2_1_0 + 1)
	mov	#0x00,*(__rrslonglong_sloc2_1_0 + 3)
	mov	#0x00,*(__rrslonglong_sloc2_1_0 + 2)
	lda	*(__rrslonglong_sloc1_1_0 + 3)
	ora	*(__rrslonglong_sloc2_1_0 + 3)
	sta	*(__rrslonglong_sloc2_1_0 + 3)
	lda	*(__rrslonglong_sloc1_1_0 + 2)
	ora	*(__rrslonglong_sloc2_1_0 + 2)
	sta	*(__rrslonglong_sloc2_1_0 + 2)
	lda	*(__rrslonglong_sloc1_1_0 + 1)
	ora	*(__rrslonglong_sloc2_1_0 + 1)
	sta	*(__rrslonglong_sloc2_1_0 + 1)
	lda	*__rrslonglong_sloc1_1_0
	ora	*__rrslonglong_sloc2_1_0
	sta	*__rrslonglong_sloc2_1_0
	lda	*__rrslonglong_sloc2_1_0
	sta	__rrslonglong_PARM_1
	lda	*(__rrslonglong_sloc2_1_0 + 1)
	sta	(__rrslonglong_PARM_1 + 1)
	lda	*(__rrslonglong_sloc2_1_0 + 2)
	sta	(__rrslonglong_PARM_1 + 2)
	lda	*(__rrslonglong_sloc2_1_0 + 3)
	sta	(__rrslonglong_PARM_1 + 3)
;../_rrslonglong.c:52: (*top) |= (((*middle) & 0xffff0000) >> s);
	lda	(__rrslonglong_PARM_1 + 0x0004)
	sta	*__rrslonglong_sloc2_1_0
	lda	((__rrslonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rrslonglong_sloc2_1_0 + 1)
	lda	((__rrslonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rrslonglong_sloc2_1_0 + 2)
	lda	((__rrslonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rrslonglong_sloc2_1_0 + 3)
	ldhx	(__rrslonglong_PARM_1 + 0x0003)
	stx	*(__rrslonglong_sloc1_1_0 + 3)
	pshh
	pula
	sta	*(__rrslonglong_sloc1_1_0 + 2)
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 1)
	mov	#0x00,*__rrslonglong_sloc1_1_0
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 3)
	mov	#0x00,*(__rrslonglong_sloc1_1_0 + 2)
	ldx	*__rrslonglong_sloc0_1_0
	beq	00129$
00128$:
	lsr	*__rrslonglong_sloc1_1_0
	ror	*(__rrslonglong_sloc1_1_0 + 1)
	ror	*(__rrslonglong_sloc1_1_0 + 2)
	ror	*(__rrslonglong_sloc1_1_0 + 3)
	dbnzx	00128$
00129$:
	lda	*(__rrslonglong_sloc2_1_0 + 3)
	ora	*(__rrslonglong_sloc1_1_0 + 3)
	sta	*(__rrslonglong_sloc2_1_0 + 3)
	lda	*(__rrslonglong_sloc2_1_0 + 2)
	ora	*(__rrslonglong_sloc1_1_0 + 2)
	sta	*(__rrslonglong_sloc2_1_0 + 2)
	lda	*(__rrslonglong_sloc2_1_0 + 1)
	ora	*(__rrslonglong_sloc1_1_0 + 1)
	sta	*(__rrslonglong_sloc2_1_0 + 1)
	lda	*__rrslonglong_sloc2_1_0
	ora	*__rrslonglong_sloc1_1_0
	sta	*__rrslonglong_sloc2_1_0
	lda	*__rrslonglong_sloc2_1_0
	sta	(__rrslonglong_PARM_1 + 0x0004)
	lda	*(__rrslonglong_sloc2_1_0 + 1)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 1)
	lda	*(__rrslonglong_sloc2_1_0 + 2)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rrslonglong_sloc2_1_0 + 3)
	sta	((__rrslonglong_PARM_1 + 0x0004) + 3)
;../_rrslonglong.c:54: return(l);
	lda	__rrslonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__rrslonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__rrslonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__rrslonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__rrslonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__rrslonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__rrslonglong_PARM_1 + 6)
	lda	(__rrslonglong_PARM_1 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
