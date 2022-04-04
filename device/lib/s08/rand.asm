;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module rand
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
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_rand_sloc0_1_0:
	.ds 4
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
_next:
	.ds 4
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
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
;Allocation info for local variables in function 'rand'
;------------------------------------------------------------
;sloc0                     Allocated with name '_rand_sloc0_1_0'
;------------------------------------------------------------
;../rand.c:33: int rand(void)
;	-----------------------------------------
;	 function rand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_rand:
;../rand.c:35: next = next * 1103515245UL + 12345;
	ldhx	#0x41C6
	sthx	__mullong_PARM_1
	ldhx	#0x4E6D
	sthx	(__mullong_PARM_1 + 2)
	ldhx	_next
	sthx	__mullong_PARM_2
	ldhx	(_next + 2)
	sthx	(__mullong_PARM_2 + 2)
	jsr	__mullong
	sta	*(_rand_sloc0_1_0 + 3)
	stx	*(_rand_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_rand_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_rand_sloc0_1_0
	ldhx	#_next
	lda	*(_rand_sloc0_1_0 + 3)
	add	#0x39
	sta	3,x
	lda	*(_rand_sloc0_1_0 + 2)
	adc	#0x30
	sta	2,x
	lda	*(_rand_sloc0_1_0 + 1)
	adc	#0x00
	sta	1,x
	lda	*_rand_sloc0_1_0
	adc	#0x00
	sta	,x
;../rand.c:36: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
	lda	(_next + 1)
	ldx	_next
	sta	*(_rand_sloc0_1_0 + 3)
	stx	*(_rand_sloc0_1_0 + 2)
	mov	#0x00,*(_rand_sloc0_1_0 + 1)
	mov	#0x00,*_rand_sloc0_1_0
	lda	*(_rand_sloc0_1_0 + 3)
	ldx	*(_rand_sloc0_1_0 + 2)
	psha
	txa
	and	#0x7F
	tax
	pula
	rts
;------------------------------------------------------------
;Allocation info for local variables in function 'srand'
;------------------------------------------------------------
;seed                      Allocated to registers x h 
;------------------------------------------------------------
;../rand.c:39: void srand(unsigned int seed)
;	-----------------------------------------
;	 function srand
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_srand:
	pshx
	tax
	pulh
;../rand.c:41: next = seed;
	stx	(_next + 3)
	pshh
	pula
	sta	(_next + 2)
	clra
	sta	(_next + 1)
	sta	_next
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
__xinit__next:
	.byte #0x00,#0x00,#0x00,#0x01	; 1
	.area CABS    (ABS,CODE)
