;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module asinf
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
	.globl _asincosf
	.globl _asinf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
;Allocation info for local variables in function 'asinf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -2
;sloc0                     Allocated to stack - sp -8
;------------------------------------------------------------
;../asinf.c:36: float asinf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function asinf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 4 bytes.
_asinf:
	ais	#-4
;../asinf.c:38: if (x == 1.0) return  HALF_PI;
	tsx
	ldhx	#___fseq_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	ldhx	#___fseq_PARM_2
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fseq
	tsta
	beq	00108$
	lda	#0xDB
	ldx	#0x0F
	mov	#0xC9,*___SDCC_hc08_ret2
	mov	#0x3F,*___SDCC_hc08_ret3
	jmp	00110$
00108$:
;../asinf.c:39: else if (x ==-1.0) return -HALF_PI;
	tsx
	ldhx	#___fseq_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	ldhx	#___fseq_PARM_2
	lda	#0xBF
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fseq
	tsta
	beq	00105$
	lda	#0xDB
	ldx	#0x0F
	mov	#0xC9,*___SDCC_hc08_ret2
	mov	#0xBF,*___SDCC_hc08_ret3
	bra	00110$
00105$:
;../asinf.c:40: else if (x == 0.0) return 0.0;
	tsx
	lda	6,x
	and	#0x7F
	ora	7,x
	ora	8,x
	ora	9,x
	bne	00102$
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	bra	00110$
00102$:
;../asinf.c:41: else               return asincosf(x, false);
	tsx
	ldhx	#_asincosf_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	clra
	sta	_asincosf_PARM_2
	jsr	_asincosf
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
00110$:
	ais	#4
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
