;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module _mullonglong
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
	.globl __mullonglong_PARM_2
	.globl __mullonglong_PARM_1
	.globl __mullonglong
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__mullonglong_sloc0_1_0:
	.ds 1
__mullonglong_sloc1_1_0:
	.ds 8
__mullonglong_sloc2_1_0:
	.ds 2
__mullonglong_sloc3_1_0:
	.ds 8
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
__mullonglong_PARM_1:
	.ds 8
__mullonglong_PARM_2:
	.ds 8
__mullonglong_ret_1_2:
	.ds 8
__mullonglong_l_2_3:
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
;Allocation info for local variables in function '_mullonglong'
;------------------------------------------------------------
;sloc0                     Allocated with name '__mullonglong_sloc0_1_0'
;sloc1                     Allocated with name '__mullonglong_sloc1_1_0'
;sloc2                     Allocated with name '__mullonglong_sloc2_1_0'
;sloc3                     Allocated with name '__mullonglong_sloc3_1_0'
;ll                        Allocated with name '__mullonglong_PARM_1'
;lr                        Allocated with name '__mullonglong_PARM_2'
;ret                       Allocated with name '__mullonglong_ret_1_2'
;i                         Allocated to registers 
;j                         Allocated to registers 
;l                         Allocated with name '__mullonglong_l_2_3'
;r                         Allocated to registers x 
;------------------------------------------------------------
;../_mullonglong.c:35: long long _mullonglong(long long ll, long long lr)
;	-----------------------------------------
;	 function _mullonglong
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
__mullonglong:
;../_mullonglong.c:37: unsigned long long ret = 0ull;
	clrh
	clrx
	sthx	__mullonglong_ret_1_2
	sthx	(__mullonglong_ret_1_2 + 2)
	sthx	(__mullonglong_ret_1_2 + 4)
	sthx	(__mullonglong_ret_1_2 + 6)
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	stx	*__mullonglong_sloc0_1_0
00106$:
;../_mullonglong.c:42: unsigned char l = ll >> (i * 8);
	lda	*__mullonglong_sloc0_1_0
	ldx	#0x08
	mul
	sta	__rrslonglong_PARM_2
	ldhx	__mullonglong_PARM_1
	sthx	__rrslonglong_PARM_1
	ldhx	(__mullonglong_PARM_1 + 2)
	sthx	(__rrslonglong_PARM_1 + 2)
	ldhx	(__mullonglong_PARM_1 + 4)
	sthx	(__rrslonglong_PARM_1 + 4)
	ldhx	(__mullonglong_PARM_1 + 6)
	sthx	(__rrslonglong_PARM_1 + 6)
	jsr	__rrslonglong
	sta	*(__mullonglong_sloc1_1_0 + 7)
	stx	*(__mullonglong_sloc1_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__mullonglong_sloc1_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__mullonglong_sloc1_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__mullonglong_sloc1_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__mullonglong_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__mullonglong_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__mullonglong_sloc1_1_0
	lda	*(__mullonglong_sloc1_1_0 + 7)
	sta	__mullonglong_l_2_3
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	mov	#0x00,*__mullonglong_sloc1_1_0
00104$:
	mov	*__mullonglong_sloc0_1_0,*(__mullonglong_sloc2_1_0 + 1)
	mov	#0x00,*__mullonglong_sloc2_1_0
	lda	*__mullonglong_sloc1_1_0
	clrx
	add	*(__mullonglong_sloc2_1_0 + 1)
	sta	*(__mullonglong_sloc2_1_0 + 1)
	txa
	adc	*__mullonglong_sloc2_1_0
	sta	*__mullonglong_sloc2_1_0
	ldhx	*__mullonglong_sloc2_1_0
	cphx	#0x0008
	blt	00128$
	jmp	00107$
00128$:
;../_mullonglong.c:45: unsigned char r = lr >> (j * 8);
	lda	*__mullonglong_sloc1_1_0
	ldx	#0x08
	mul
	sta	__rrslonglong_PARM_2
	ldhx	__mullonglong_PARM_2
	sthx	__rrslonglong_PARM_1
	ldhx	(__mullonglong_PARM_2 + 2)
	sthx	(__rrslonglong_PARM_1 + 2)
	ldhx	(__mullonglong_PARM_2 + 4)
	sthx	(__rrslonglong_PARM_1 + 4)
	ldhx	(__mullonglong_PARM_2 + 6)
	sthx	(__rrslonglong_PARM_1 + 6)
	jsr	__rrslonglong
	sta	*(__mullonglong_sloc3_1_0 + 7)
	stx	*(__mullonglong_sloc3_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__mullonglong_sloc3_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__mullonglong_sloc3_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__mullonglong_sloc3_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__mullonglong_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__mullonglong_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__mullonglong_sloc3_1_0
	ldx	*(__mullonglong_sloc3_1_0 + 7)
;../_mullonglong.c:46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	lda	__mullonglong_l_2_3
	mul
	pshx
	pulh
	tax
	stx	(__rlulonglong_PARM_1 + 7)
	pshh
	pula
	sta	(__rlulonglong_PARM_1 + 6)
	clra
	sta	(__rlulonglong_PARM_1 + 5)
	sta	(__rlulonglong_PARM_1 + 4)
	sta	(__rlulonglong_PARM_1 + 3)
	sta	(__rlulonglong_PARM_1 + 2)
	sta	(__rlulonglong_PARM_1 + 1)
	sta	__rlulonglong_PARM_1
	lda	*(__mullonglong_sloc2_1_0 + 1)
	lsla	
	lsla	
	lsla	
	sta	__rlulonglong_PARM_2
	jsr	__rlulonglong
	sta	*(__mullonglong_sloc3_1_0 + 7)
	stx	*(__mullonglong_sloc3_1_0 + 6)
	mov	*___SDCC_hc08_ret2,*(__mullonglong_sloc3_1_0 + 5)
	mov	*___SDCC_hc08_ret3,*(__mullonglong_sloc3_1_0 + 4)
	mov	*___SDCC_hc08_ret4,*(__mullonglong_sloc3_1_0 + 3)
	mov	*___SDCC_hc08_ret5,*(__mullonglong_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret6,*(__mullonglong_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret7,*__mullonglong_sloc3_1_0
	ldhx	#__mullonglong_ret_1_2
	lda	7,x
	add	*(__mullonglong_sloc3_1_0 + 7)
	sta	7,x
	lda	6,x
	adc	*(__mullonglong_sloc3_1_0 + 6)
	sta	6,x
	lda	5,x
	adc	*(__mullonglong_sloc3_1_0 + 5)
	sta	5,x
	lda	4,x
	adc	*(__mullonglong_sloc3_1_0 + 4)
	sta	4,x
	lda	3,x
	adc	*(__mullonglong_sloc3_1_0 + 3)
	sta	3,x
	lda	2,x
	adc	*(__mullonglong_sloc3_1_0 + 2)
	sta	2,x
	lda	1,x
	adc	*(__mullonglong_sloc3_1_0 + 1)
	sta	1,x
	lda	,x
	adc	*__mullonglong_sloc3_1_0
	sta	,x
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	inc	*__mullonglong_sloc1_1_0
	jmp	00104$
00107$:
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	inc	*__mullonglong_sloc0_1_0
	lda	*__mullonglong_sloc0_1_0
	cmp	#0x08
	bcc	00129$
	jmp	00106$
00129$:
;../_mullonglong.c:50: return(ret);
	lda	__mullonglong_ret_1_2
	sta	*___SDCC_hc08_ret7
	lda	(__mullonglong_ret_1_2 + 1)
	sta	*___SDCC_hc08_ret6
	lda	(__mullonglong_ret_1_2 + 2)
	sta	*___SDCC_hc08_ret5
	lda	(__mullonglong_ret_1_2 + 3)
	sta	*___SDCC_hc08_ret4
	lda	(__mullonglong_ret_1_2 + 4)
	sta	*___SDCC_hc08_ret3
	lda	(__mullonglong_ret_1_2 + 5)
	sta	*___SDCC_hc08_ret2
	ldx	(__mullonglong_ret_1_2 + 6)
	lda	(__mullonglong_ret_1_2 + 7)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
