;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _rrulonglong
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
	.globl __rrulonglong_PARM_2
	.globl __rrulonglong_PARM_1
	.globl __rrulonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
;--------------------------------------------------------
; overlayable items in ram 
;--------------------------------------------------------
	.area	OSEG    (PAG, OVR)
__rrulonglong_sloc0_1_0:
	.ds 1
__rrulonglong_sloc1_1_0:
	.ds 4
__rrulonglong_sloc2_1_0:
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
__rrulonglong_PARM_1:
	.ds 8
__rrulonglong_PARM_2:
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
;Allocation info for local variables in function '_rrulonglong'
;------------------------------------------------------------
;l                         Allocated with name '__rrulonglong_PARM_1'
;s                         Allocated with name '__rrulonglong_PARM_2'
;top                       Allocated to registers 
;middle                    Allocated to registers 
;bottom                    Allocated to registers 
;b                         Allocated to registers 
;sloc0                     Allocated with name '__rrulonglong_sloc0_1_0'
;sloc1                     Allocated with name '__rrulonglong_sloc1_1_0'
;sloc2                     Allocated with name '__rrulonglong_sloc2_1_0'
;------------------------------------------------------------
;../_rrulonglong.c:35: unsigned long long _rrulonglong(unsigned long long l, signed char s)
;	-----------------------------------------
;	 function _rrulonglong
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__rrulonglong:
;../_rrulonglong.c:37: uint32_t *const top = (uint32_t *)((char *)(&l) + 4);
;../_rrulonglong.c:38: uint16_t *const middle = (uint16_t *)((char *)(&l) + 3);
;../_rrulonglong.c:39: uint32_t *const bottom = (uint32_t *)(&l);
;../_rrulonglong.c:40: uint16_t *const b = (uint16_t *)(&l);
;../_rrulonglong.c:50: (*bottom) >>= s;
	lda	__rrulonglong_PARM_2
	sta	*__rrulonglong_sloc0_1_0
00103$:
;../_rrulonglong.c:42: for(;s >= 16; s -= 16)
	lda	*__rrulonglong_sloc0_1_0
	cmp	#0x10
	blt	00101$
;../_rrulonglong.c:44: b[0] = b[1];
	ldhx	(__rrulonglong_PARM_1 + 0x0002)
	sthx	__rrulonglong_PARM_1
;../_rrulonglong.c:45: b[1] = b[2];
	ldhx	(__rrulonglong_PARM_1 + 0x0004)
	sthx	(__rrulonglong_PARM_1 + 0x0002)
;../_rrulonglong.c:46: b[2] = b[3];
	ldhx	(__rrulonglong_PARM_1 + 0x0006)
	sthx	(__rrulonglong_PARM_1 + 0x0004)
;../_rrulonglong.c:47: b[3] = 0x000000;
	clra
	sta	(__rrulonglong_PARM_1 + 0x0006)
	sta	((__rrulonglong_PARM_1 + 0x0006) + 1)
;../_rrulonglong.c:42: for(;s >= 16; s -= 16)
	lda	*__rrulonglong_sloc0_1_0
	sub	#0x10
	sta	*__rrulonglong_sloc0_1_0
	bra	00103$
00101$:
;../_rrulonglong.c:50: (*bottom) >>= s;
	lda	__rrulonglong_PARM_1
	sta	*__rrulonglong_sloc1_1_0
	lda	(__rrulonglong_PARM_1 + 1)
	sta	*(__rrulonglong_sloc1_1_0 + 1)
	lda	(__rrulonglong_PARM_1 + 2)
	sta	*(__rrulonglong_sloc1_1_0 + 2)
	lda	(__rrulonglong_PARM_1 + 3)
	sta	*(__rrulonglong_sloc1_1_0 + 3)
	ldx	*__rrulonglong_sloc0_1_0
	beq	00118$
00117$:
	lsr	*__rrulonglong_sloc1_1_0
	ror	*(__rrulonglong_sloc1_1_0 + 1)
	ror	*(__rrulonglong_sloc1_1_0 + 2)
	ror	*(__rrulonglong_sloc1_1_0 + 3)
	dbnzx	00117$
00118$:
	lda	*__rrulonglong_sloc1_1_0
	sta	__rrulonglong_PARM_1
	lda	*(__rrulonglong_sloc1_1_0 + 1)
	sta	(__rrulonglong_PARM_1 + 1)
	lda	*(__rrulonglong_sloc1_1_0 + 2)
	sta	(__rrulonglong_PARM_1 + 2)
	lda	*(__rrulonglong_sloc1_1_0 + 3)
	sta	(__rrulonglong_PARM_1 + 3)
;../_rrulonglong.c:51: (*middle) |= (((*middle) & 0xffff0000ul) >> s);
	ldhx	(__rrulonglong_PARM_1 + 0x0003)
	stx	*(__rrulonglong_sloc1_1_0 + 3)
	pshh
	pula
	sta	*(__rrulonglong_sloc1_1_0 + 2)
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 1)
	mov	#0x00,*__rrulonglong_sloc1_1_0
	mov	#0x00,*(__rrulonglong_sloc2_1_0 + 3)
	mov	#0x00,*(__rrulonglong_sloc2_1_0 + 2)
	mov	*(__rrulonglong_sloc1_1_0 + 1),*(__rrulonglong_sloc2_1_0 + 1)
	mov	*__rrulonglong_sloc1_1_0,*__rrulonglong_sloc2_1_0
	ldx	*__rrulonglong_sloc0_1_0
	beq	00120$
00119$:
	lsr	*__rrulonglong_sloc2_1_0
	ror	*(__rrulonglong_sloc2_1_0 + 1)
	ror	*(__rrulonglong_sloc2_1_0 + 2)
	ror	*(__rrulonglong_sloc2_1_0 + 3)
	dbnzx	00119$
00120$:
	lda	*(__rrulonglong_sloc1_1_0 + 3)
	ora	*(__rrulonglong_sloc2_1_0 + 3)
	sta	*(__rrulonglong_sloc2_1_0 + 3)
	lda	*(__rrulonglong_sloc1_1_0 + 2)
	ora	*(__rrulonglong_sloc2_1_0 + 2)
	sta	*(__rrulonglong_sloc2_1_0 + 2)
	lda	*(__rrulonglong_sloc1_1_0 + 1)
	ora	*(__rrulonglong_sloc2_1_0 + 1)
	sta	*(__rrulonglong_sloc2_1_0 + 1)
	lda	*__rrulonglong_sloc1_1_0
	ora	*__rrulonglong_sloc2_1_0
	sta	*__rrulonglong_sloc2_1_0
	ldx	*(__rrulonglong_sloc2_1_0 + 3)
	lda	*(__rrulonglong_sloc2_1_0 + 2)
	psha
	pulh
	sthx	(__rrulonglong_PARM_1 + 0x0003)
;../_rrulonglong.c:52: (*top) |= (((*middle) & 0xffff0000ul) >> s);
	lda	(__rrulonglong_PARM_1 + 0x0004)
	sta	*__rrulonglong_sloc2_1_0
	lda	((__rrulonglong_PARM_1 + 0x0004) + 1)
	sta	*(__rrulonglong_sloc2_1_0 + 1)
	lda	((__rrulonglong_PARM_1 + 0x0004) + 2)
	sta	*(__rrulonglong_sloc2_1_0 + 2)
	lda	((__rrulonglong_PARM_1 + 0x0004) + 3)
	sta	*(__rrulonglong_sloc2_1_0 + 3)
	stx	*(__rrulonglong_sloc1_1_0 + 3)
	pshh
	pula
	sta	*(__rrulonglong_sloc1_1_0 + 2)
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 1)
	mov	#0x00,*__rrulonglong_sloc1_1_0
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 3)
	mov	#0x00,*(__rrulonglong_sloc1_1_0 + 2)
	ldx	*__rrulonglong_sloc0_1_0
	beq	00122$
00121$:
	lsr	*__rrulonglong_sloc1_1_0
	ror	*(__rrulonglong_sloc1_1_0 + 1)
	ror	*(__rrulonglong_sloc1_1_0 + 2)
	ror	*(__rrulonglong_sloc1_1_0 + 3)
	dbnzx	00121$
00122$:
	lda	*(__rrulonglong_sloc2_1_0 + 3)
	ora	*(__rrulonglong_sloc1_1_0 + 3)
	sta	*(__rrulonglong_sloc2_1_0 + 3)
	lda	*(__rrulonglong_sloc2_1_0 + 2)
	ora	*(__rrulonglong_sloc1_1_0 + 2)
	sta	*(__rrulonglong_sloc2_1_0 + 2)
	lda	*(__rrulonglong_sloc2_1_0 + 1)
	ora	*(__rrulonglong_sloc1_1_0 + 1)
	sta	*(__rrulonglong_sloc2_1_0 + 1)
	lda	*__rrulonglong_sloc2_1_0
	ora	*__rrulonglong_sloc1_1_0
	sta	*__rrulonglong_sloc2_1_0
	lda	*__rrulonglong_sloc2_1_0
	sta	(__rrulonglong_PARM_1 + 0x0004)
	lda	*(__rrulonglong_sloc2_1_0 + 1)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 1)
	lda	*(__rrulonglong_sloc2_1_0 + 2)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 2)
	lda	*(__rrulonglong_sloc2_1_0 + 3)
	sta	((__rrulonglong_PARM_1 + 0x0004) + 3)
;../_rrulonglong.c:54: return(l);
	lda	__rrulonglong_PARM_1
	sta	*___SDCC_hc08_ret7
	lda	(__rrulonglong_PARM_1 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__rrulonglong_PARM_1 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__rrulonglong_PARM_1 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__rrulonglong_PARM_1 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__rrulonglong_PARM_1 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__rrulonglong_PARM_1 + 6)
	lda	(__rrulonglong_PARM_1 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
