;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module logf
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
;sloc0                     Allocated to stack - sp -26
;sloc1                     Allocated to stack - sp -34
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
	lda	24,x
	sta	___fsgt_PARM_1
	lda	25,x
	sta	(___fsgt_PARM_1 + 1)
	lda	26,x
	sta	(___fsgt_PARM_1 + 2)
	lda	27,x
	sta	(___fsgt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fsgt_PARM_2
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	bne	00102$
;../logf.c:228: errno=EDOM;
	ldhx	#0x0021
	sthx	_errno
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
	lda	24,x
	sta	_frexpf_PARM_1
	lda	25,x
	sta	(_frexpf_PARM_1 + 1)
	lda	26,x
	sta	(_frexpf_PARM_1 + 2)
	lda	27,x
	sta	(_frexpf_PARM_1 + 3)
	jsr	_frexpf
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
;../logf.c:232: znum=f-0.5;
	tsx
	lda	18,x
	sta	___fssub_PARM_1
	lda	19,x
	sta	(___fssub_PARM_1 + 1)
	lda	20,x
	sta	(___fssub_PARM_1 + 2)
	lda	21,x
	sta	(___fssub_PARM_1 + 3)
	ldhx	#0x3F00
	sthx	___fssub_PARM_2
	clrh
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	10,x
	sta	6,x
	lda	11,x
	sta	7,x
	lda	12,x
	sta	8,x
	lda	13,x
	sta	9,x
;../logf.c:233: if (f>C0)
	lda	18,x
	sta	___fsgt_PARM_1
	lda	19,x
	sta	(___fsgt_PARM_1 + 1)
	lda	20,x
	sta	(___fsgt_PARM_1 + 2)
	lda	21,x
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x3F35
	sthx	___fsgt_PARM_2
	ldhx	#0x04F3
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	bne	00117$
	jmp	00104$
00117$:
;../logf.c:235: znum-=0.5;
	tsx
	lda	10,x
	sta	___fssub_PARM_1
	lda	11,x
	sta	(___fssub_PARM_1 + 1)
	lda	12,x
	sta	(___fssub_PARM_1 + 2)
	lda	13,x
	sta	(___fssub_PARM_1 + 3)
	ldhx	#0x3F00
	sthx	___fssub_PARM_2
	clrh
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../logf.c:236: zden=(f*0.5)+0.5;
	ldhx	#0x3F00
	sthx	___fsmul_PARM_1
	clrh
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	18,x
	sta	___fsmul_PARM_2
	lda	19,x
	sta	(___fsmul_PARM_2 + 1)
	lda	20,x
	sta	(___fsmul_PARM_2 + 2)
	lda	21,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3F00
	sthx	___fsadd_PARM_2
	clrh
	sthx	(___fsadd_PARM_2 + 2)
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
	ldhx	#0x3F00
	sthx	___fsmul_PARM_1
	clrh
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
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3F00
	sthx	___fsadd_PARM_2
	clrh
	sthx	(___fsadd_PARM_2 + 2)
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
	lda	6,x
	sta	___fsdiv_PARM_1
	lda	7,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	8,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	9,x
	sta	(___fsdiv_PARM_1 + 3)
	lda	2,x
	sta	___fsdiv_PARM_2
	lda	3,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	4,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	5,x
	sta	(___fsdiv_PARM_2 + 3)
;../logf.c:244: w=z*z;
	jsr	___fsdiv
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	10,x
	sta	___fsmul_PARM_1
	lda	11,x
	sta	(___fsmul_PARM_1 + 1)
	lda	12,x
	sta	(___fsmul_PARM_1 + 2)
	lda	13,x
	sta	(___fsmul_PARM_1 + 3)
	lda	10,x
	sta	___fsmul_PARM_2
	lda	11,x
	sta	(___fsmul_PARM_2 + 1)
	lda	12,x
	sta	(___fsmul_PARM_2 + 2)
	lda	13,x
	sta	(___fsmul_PARM_2 + 3)
;../logf.c:246: Rz=z+z*(w*A(w)/B(w));
	jsr	___fsmul
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	ldhx	#0xBF0D
	sthx	___fsmul_PARM_1
	ldhx	#0x7E3D
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	18,x
	sta	___fsmul_PARM_2
	lda	19,x
	sta	(___fsmul_PARM_2 + 1)
	lda	20,x
	sta	(___fsmul_PARM_2 + 2)
	lda	21,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	18,x
	sta	___fsadd_PARM_1
	lda	19,x
	sta	(___fsadd_PARM_1 + 1)
	lda	20,x
	sta	(___fsadd_PARM_1 + 2)
	lda	21,x
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0xC0D4
	sthx	___fsadd_PARM_2
	ldhx	#0x3F3A
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	lda	14,x
	sta	___fsdiv_PARM_1
	lda	15,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	16,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	17,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	tsx
	lda	10,x
	sta	___fsmul_PARM_1
	lda	11,x
	sta	(___fsmul_PARM_1 + 1)
	lda	12,x
	sta	(___fsmul_PARM_1 + 2)
	lda	13,x
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
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
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
;../logf.c:248: return ((xn*C2+Rz)+xn*C1);
	ldhx	#0xB95E
	sthx	___fsmul_PARM_1
	ldhx	#0x8083
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
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	tsx
	lda	14,x
	sta	___fsadd_PARM_2
	lda	15,x
	sta	(___fsadd_PARM_2 + 1)
	lda	16,x
	sta	(___fsadd_PARM_2 + 2)
	lda	17,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	ldhx	#0x3F31
	sthx	___fsmul_PARM_1
	ldhx	#0x8000
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
