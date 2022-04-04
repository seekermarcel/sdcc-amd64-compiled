;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module sqrtf
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
	.globl _ldexpf
	.globl _frexpf
	.globl _sqrtf
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
;Allocation info for local variables in function 'sqrtf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -16
;f                         Allocated to stack - sp -22
;y                         Allocated to stack - sp -34
;n                         Allocated to stack - sp -36
;sloc0                     Allocated to stack - sp -30
;sloc1                     Allocated to stack - sp -22
;sloc2                     Allocated to stack - sp -26
;------------------------------------------------------------
;../sqrtf.c:37: float sqrtf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function sqrtf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_sqrtf:
	ais	#-18
;../sqrtf.c:42: if (x==0.0) return x;
	tsx
	lda	20,x
	and	#0x7F
	ora	21,x
	ora	22,x
	ora	23,x
	bne	00107$
	lda	20,x
	sta	*___SDCC_hc08_ret3
	lda	21,x
	sta	*___SDCC_hc08_ret2
	ldx	22,x
	lda	24,s
	jmp	00111$
00107$:
;../sqrtf.c:43: else if (x==1.0) return 1.0;
	tsx
	lda	20,x
	sta	___fseq_PARM_1
	lda	21,x
	sta	(___fseq_PARM_1 + 1)
	lda	22,x
	sta	(___fseq_PARM_1 + 2)
	lda	23,x
	sta	(___fseq_PARM_1 + 3)
	ldhx	#0x3F80
	sthx	___fseq_PARM_2
	clrh
	clrx
	sthx	(___fseq_PARM_2 + 2)
	jsr	___fseq
	tsta
	beq	00104$
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3F,*___SDCC_hc08_ret3
	jmp	00111$
00104$:
;../sqrtf.c:44: else if (x<0.0)
	tsx
	lda	20,x
	sta	___fslt_PARM_1
	lda	21,x
	sta	(___fslt_PARM_1 + 1)
	lda	22,x
	sta	(___fslt_PARM_1 + 2)
	lda	23,x
	sta	(___fslt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00108$
;../sqrtf.c:46: errno=EDOM;
	ldhx	#0x0021
	sthx	_errno
;../sqrtf.c:47: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00111$
00108$:
;../sqrtf.c:49: f=frexpf(x, &n);
	tsx
	stx	(_frexpf_PARM_2 + 1)
	pshh
	pula
	sta	_frexpf_PARM_2
	tsx
	lda	20,x
	sta	_frexpf_PARM_1
	lda	21,x
	sta	(_frexpf_PARM_1 + 1)
	lda	22,x
	sta	(_frexpf_PARM_1 + 2)
	lda	23,x
	sta	(_frexpf_PARM_1 + 3)
	jsr	_frexpf
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../sqrtf.c:50: y=0.41731+0.59016*f; /*Educated guess*/
	ldhx	#0x3F17
	sthx	___fsmul_PARM_1
	ldhx	#0x14BA
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	6,x
	sta	___fsmul_PARM_2
	lda	7,x
	sta	(___fsmul_PARM_2 + 1)
	lda	8,x
	sta	(___fsmul_PARM_2 + 2)
	lda	9,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3ED5
	sthx	___fsadd_PARM_2
	ldhx	#0xA9A8
	sthx	(___fsadd_PARM_2 + 2)
;../sqrtf.c:52: y+=f/y;
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	6,x
	sta	___fsdiv_PARM_1
	lda	7,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	8,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	9,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	14,x
	sta	___fsdiv_PARM_2
	lda	15,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	16,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	17,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	lda	14,x
	sta	___fsadd_PARM_1
	lda	15,x
	sta	(___fsadd_PARM_1 + 1)
	lda	16,x
	sta	(___fsadd_PARM_1 + 2)
	lda	17,x
	sta	(___fsadd_PARM_1 + 3)
;../sqrtf.c:53: y=ldexpf(y, -2) + f/y; /*Faster version of 0.25 * y + f/y*/
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	14,x
	sta	_ldexpf_PARM_1
	lda	15,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	16,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	17,x
	sta	(_ldexpf_PARM_1 + 3)
	ldhx	#0xFFFE
	sthx	_ldexpf_PARM_2
	jsr	_ldexpf
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	6,x
	sta	___fsdiv_PARM_1
	lda	7,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	8,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	9,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	14,x
	sta	___fsdiv_PARM_2
	lda	15,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	16,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	17,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	lda	10,x
	sta	___fsadd_PARM_1
	lda	11,x
	sta	(___fsadd_PARM_1 + 1)
	lda	12,x
	sta	(___fsadd_PARM_1 + 2)
	lda	13,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	10,x
	sta	2,x
	lda	11,x
	sta	3,x
	lda	12,x
	sta	4,x
	lda	13,x
	sta	5,x
;../sqrtf.c:55: if (n&1)
	lda	1,x
	bit	#0x01
	beq	00110$
;../sqrtf.c:57: y*=0.7071067812;
	ldhx	#0x3F35
	sthx	___fsmul_PARM_1
	ldhx	#0x04F3
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	10,x
	sta	___fsmul_PARM_2
	lda	11,x
	sta	(___fsmul_PARM_2 + 1)
	lda	12,x
	sta	(___fsmul_PARM_2 + 2)
	lda	13,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
;../sqrtf.c:58: ++n;
	tsx
	inc	1,x
	bne	00139$
	inc	,x
00139$:
00110$:
;../sqrtf.c:60: return ldexpf(y, n/2);
	ldx	1,s
	lda	2,s
	psha
	txa
	sub	#0x00
	pula
	bge	00113$
	inca
	bne	00141$
	incx
00141$:
00113$:
	asrx
	rora
	sta	(_ldexpf_PARM_2 + 1)
	stx	_ldexpf_PARM_2
	tsx
	lda	2,x
	sta	_ldexpf_PARM_1
	lda	3,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	4,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	5,x
	sta	(_ldexpf_PARM_1 + 3)
	jsr	_ldexpf
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	10,x
	sta	*___SDCC_hc08_ret3
	lda	11,x
	sta	*___SDCC_hc08_ret2
	ldx	12,x
	lda	14,s
00111$:
	ais	#18
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
