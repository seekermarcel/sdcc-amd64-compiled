;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module tanhf
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
	.globl _fabsf
	.globl _expf
	.globl _tanhf
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
;Allocation info for local variables in function 'tanhf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -14
;f                         Allocated to stack - sp -20
;g                         Allocated to stack - sp -24
;r                         Allocated to stack - sp -32
;sloc0                     Allocated to stack - sp -20
;sloc1                     Allocated to stack - sp -24
;sloc2                     Allocated to stack - sp -28
;------------------------------------------------------------
;../tanhf.c:50: float tanhf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function tanhf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 16 bytes.
_tanhf:
	ais	#-16
;../tanhf.c:54: f=fabsf(x);
	tsx
	lda	21,x
	psha
	lda	20,x
	psha
	lda	19,x
	psha
	lda	18,x
	psha
	jsr	_fabsf
	sta	20,s
	stx	19,s
	lda	*___SDCC_hc08_ret2
	sta	18,s
	lda	*___SDCC_hc08_ret3
	sta	17,s
	ais	#4
;../tanhf.c:55: if(f>SBIG) r=1.0;
	tsx
	ldhx	#___fsgt_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	ldhx	#___fsgt_PARM_2
	lda	#0x41
	sta	,x
	lda	#0x10
	sta	1,x
	lda	#0x2C
	sta	2,x
	lda	#0xB0
	sta	3,x
	jsr	___fsgt
	tsta
	beq	00108$
	tsx
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jmp	00109$
00108$:
;../tanhf.c:56: else if(f>K1)
	tsx
	ldhx	#___fsgt_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	ldhx	#___fsgt_PARM_2
	lda	#0x3F
	sta	,x
	lda	#0x0C
	sta	1,x
	lda	#0x9F
	sta	2,x
	lda	#0x54
	sta	3,x
	jsr	___fsgt
	tsta
	bne	00131$
	jmp	00105$
00131$:
;../tanhf.c:58: r=0.5-1.0/(expf(f+f)+1.0);
	tsx
	ldhx	#___fsadd_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	tsx
	ldhx	#___fsadd_PARM_2
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	jsr	___fsadd
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	tsx
	lda	11,x
	psha
	lda	10,x
	psha
	lda	9,x
	psha
	lda	8,x
	psha
	jsr	_expf
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ais	#4
	ldhx	#___fsadd_PARM_2
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	ldhx	#___fsdiv_PARM_1
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fsdiv
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	ldhx	#___fssub_PARM_1
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
;../tanhf.c:59: r+=r;
	jsr	___fssub
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	tsx
	ldhx	#___fsadd_PARM_1
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	tsx
	ldhx	#___fsadd_PARM_2
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	jsr	___fsadd
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
	jmp	00109$
00105$:
;../tanhf.c:61: else if(f<EPS) r=f;
	tsx
	ldhx	#___fslt_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	ldhx	#___fslt_PARM_2
	lda	#0x39
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00102$
	tsx
	lda	12,x
	sta	,x
	lda	13,x
	sta	1,x
	lda	14,x
	sta	2,x
	lda	15,x
	sta	3,x
	jmp	00109$
00102$:
;../tanhf.c:64: g=f*f;
	tsx
	ldhx	#___fsmul_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
;../tanhf.c:65: r=f+f*(P(g)/Q(g));
	jsr	___fsmul
	sta	12,s
	stx	11,s
	lda	*___SDCC_hc08_ret2
	sta	10,s
	lda	*___SDCC_hc08_ret3
	sta	9,s
	ldhx	#___fsmul_PARM_1
	lda	#0xBB
	sta	,x
	lda	#0x7B
	sta	1,x
	lda	#0x11
	sta	2,x
	lda	#0xB2
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0xBF
	sta	,x
	lda	#0x52
	sta	1,x
	lda	#0xE2
	sta	2,x
	lda	#0xC6
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	ldhx	#___fsmul_PARM_2
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	jsr	___fsmul
	sta	8,s
	stx	7,s
	lda	*___SDCC_hc08_ret2
	sta	6,s
	lda	*___SDCC_hc08_ret3
	sta	5,s
	tsx
	ldhx	#___fsadd_PARM_1
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	ldhx	#___fsadd_PARM_2
	lda	#0x40
	sta	,x
	lda	#0x1E
	sta	1,x
	lda	#0x2A
	sta	2,x
	lda	#0x1A
	sta	3,x
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	5,s
	sta	,x
	lda	6,s
	sta	1,x
	lda	7,s
	sta	2,x
	lda	8,s
	sta	3,x
	jsr	___fsdiv
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	tsx
	ldhx	#___fsmul_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	ldhx	#___fsadd_PARM_1
	lda	13,s
	sta	,x
	lda	14,s
	sta	1,x
	lda	15,s
	sta	2,x
	lda	16,s
	sta	3,x
	jsr	___fsadd
	sta	4,s
	stx	3,s
	lda	*___SDCC_hc08_ret2
	sta	2,s
	lda	*___SDCC_hc08_ret3
	sta	1,s
00109$:
;../tanhf.c:67: if(x<0.0) r=-r;
	tsx
	ldhx	#___fslt_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	beq	00111$
	tsx
	lda	,x
	eor	#0x80
	sta	,x
00111$:
;../tanhf.c:68: return r;
	tsx
	lda	,x
	sta	*___SDCC_hc08_ret3
	lda	1,x
	sta	*___SDCC_hc08_ret2
	ldx	2,x
	lda	4,s
	ais	#16
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
