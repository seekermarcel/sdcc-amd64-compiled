;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module logf
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
	.globl _frexpf
	.globl _logf
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
;Allocation info for local variables in function 'logf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -20
;Rz                        Allocated to stack - sp -26
;f                         Allocated to stack - sp -30
;z                         Allocated to stack - sp -34
;w                         Allocated to stack - sp -38
;znum                      Allocated to stack - sp -38
;zden                      Allocated to stack - sp -42
;xn                        Allocated to stack - sp -50
;n                         Allocated to stack - sp -44
;sloc0                     Allocated to stack - sp -34
;sloc1                     Allocated to stack - sp -26
;sloc2                     Allocated to stack - sp -30
;------------------------------------------------------------
;../logf.c:216: float logf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function logf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 22 bytes.
_logf:
	ais	#-22
;../logf.c:226: if (x<=0.0)
	tsx
	ldhx	#___fsgt_PARM_1
	lda	25,s
	sta	,x
	lda	26,s
	sta	1,x
	lda	27,s
	sta	2,x
	lda	28,s
	sta	3,x
	ldhx	#___fsgt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fsgt
	tsta
	bne	00102$
;../logf.c:228: errno=EDOM;
	clra
	sta	_errno
	lda	#0x21
	sta	(_errno + 1)
;../logf.c:229: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00106$
00102$:
;../logf.c:231: f=frexpf(x, &n);
	tsx
	stx	(_frexpf_PARM_2 + 1)
	pshh
	pula
	sta	_frexpf_PARM_2
	tsx
	ldhx	#_frexpf_PARM_1
	lda	25,s
	sta	,x
	lda	26,s
	sta	1,x
	lda	27,s
	sta	2,x
	lda	28,s
	sta	3,x
	jsr	_frexpf
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
;../logf.c:232: znum=f-0.5;
	tsx
	ldhx	#___fssub_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	ldhx	#___fssub_PARM_2
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fssub
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	tsx
	lda	18,x
	sta	6,x
	lda	19,x
	sta	7,x
	lda	20,x
	sta	8,x
	lda	21,x
	sta	9,x
;../logf.c:233: if (f>C0)
	ldhx	#___fsgt_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	ldhx	#___fsgt_PARM_2
	lda	#0x3F
	sta	,x
	lda	#0x35
	sta	1,x
	lda	#0x04
	sta	2,x
	lda	#0xF3
	sta	3,x
	jsr	___fsgt
	tsta
	bne	00117$
	jmp	00104$
00117$:
;../logf.c:235: znum-=0.5;
	tsx
	ldhx	#___fssub_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	ldhx	#___fssub_PARM_2
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fssub
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../logf.c:236: zden=(f*0.5)+0.5;
	ldhx	#___fsmul_PARM_1
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
	bra	00105$
00104$:
;../logf.c:240: n--;
	tsx
	lda	1,x
	sub	#0x01
	sta	1,x
	lda	,x
	sbc	#0
	sta	,x
;../logf.c:241: zden=znum*0.5+0.5;
	ldhx	#___fsmul_PARM_1
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
00105$:
;../logf.c:243: z=znum/zden;
	tsx
	ldhx	#___fsdiv_PARM_1
	lda	7,s
	sta	,x
	lda	8,s
	sta	1,x
	lda	9,s
	sta	2,x
	lda	10,s
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	3,s
	sta	,x
	lda	4,s
	sta	1,x
	lda	5,s
	sta	2,x
	lda	6,s
	sta	3,x
;../logf.c:244: w=z*z;
	jsr	___fsdiv
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	tsx
	ldhx	#___fsmul_PARM_1
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
;../logf.c:246: Rz=z+z*(w*A(w)/B(w));
	jsr	___fsmul
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	ldhx	#___fsmul_PARM_1
	lda	#0xBF
	sta	,x
	lda	#0x0D
	sta	1,x
	lda	#0x7E
	sta	2,x
	lda	#0x3D
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	ldhx	#___fsadd_PARM_1
	lda	11,s
	sta	,x
	lda	12,s
	sta	1,x
	lda	13,s
	sta	2,x
	lda	14,s
	sta	3,x
	ldhx	#___fsadd_PARM_2
	lda	#0xC0
	sta	,x
	lda	#0xD4
	sta	1,x
	lda	#0x3F
	sta	2,x
	lda	#0x3A
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
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
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
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
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
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
;../logf.c:247: xn=n;
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	1,x
	ldx	,x
	jsr	___sint2fs
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
;../logf.c:248: return ((xn*C2+Rz)+xn*C1);
	ldhx	#___fsmul_PARM_1
	lda	#0xB9
	sta	,x
	lda	#0x5E
	sta	1,x
	lda	#0x80
	sta	2,x
	lda	#0x83
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	tsx
	ldhx	#___fsadd_PARM_2
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	ldhx	#___fsmul_PARM_1
	lda	#0x3F
	sta	,x
	lda	#0x31
	sta	1,x
	lda	#0x80
	sta	2,x
	clra
	sta	3,x
	tsx
	ldhx	#___fsmul_PARM_2
	lda	19,s
	sta	,x
	lda	20,s
	sta	1,x
	lda	21,s
	sta	2,x
	lda	22,s
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
	lda	15,s
	sta	,x
	lda	16,s
	sta	1,x
	lda	17,s
	sta	2,x
	lda	18,s
	sta	3,x
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	14,x
	sta	*___SDCC_hc08_ret3
	lda	15,x
	sta	*___SDCC_hc08_ret2
	ldx	16,x
	lda	18,s
00106$:
	ais	#22
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
