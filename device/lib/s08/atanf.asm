;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module atanf
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
	.globl _fabsf
	.globl _atanf
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
;Allocation info for local variables in function 'atanf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -16
;f                         Allocated to stack - sp -30
;r                         Allocated to stack - sp -34
;g                         Allocated to stack - sp -30
;n                         Allocated to stack - sp -36
;sloc0                     Allocated to stack - sp -22
;sloc1                     Allocated to stack - sp -26
;------------------------------------------------------------
;../atanf.c:55: float atanf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function atanf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_atanf:
	ais	#-18
;../atanf.c:58: int n=0;
	tsx
	clrh
	clrx
	sthx	1,s
;../atanf.c:61: f=fabsf(x);
	tsx
	lda	23,x
	psha
	lda	22,x
	psha
	lda	21,x
	psha
	lda	20,x
	psha
	jsr	_fabsf
	sta	22,s
	stx	21,s
	lda	*___SDCC_hc08_ret2
	sta	20,s
	lda	*___SDCC_hc08_ret3
	sta	19,s
	ais	#4
	tsx
	lda	14,x
	sta	6,x
	lda	15,x
	sta	7,x
	lda	16,x
	sta	8,x
	lda	17,x
	sta	9,x
;../atanf.c:62: if(f>1.0)
	lda	14,x
	sta	___fsgt_PARM_1
	lda	15,x
	sta	(___fsgt_PARM_1 + 1)
	lda	16,x
	sta	(___fsgt_PARM_1 + 2)
	lda	17,x
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x3F80
	sthx	___fsgt_PARM_2
	clrh
	clrx
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	beq	00102$
;../atanf.c:64: f=1.0/f;
	ldhx	#0x3F80
	sthx	___fsdiv_PARM_1
	clrh
	clrx
	sthx	(___fsdiv_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsdiv_PARM_2
	lda	15,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	16,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	17,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../atanf.c:65: n=2;
	tsx
	ldhx	#0x0002
	sthx	1,s
00102$:
;../atanf.c:67: if(f>K1)
	tsx
	lda	6,x
	sta	___fsgt_PARM_1
	lda	7,x
	sta	(___fsgt_PARM_1 + 1)
	lda	8,x
	sta	(___fsgt_PARM_1 + 2)
	lda	9,x
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x3E89
	sthx	___fsgt_PARM_2
	ldhx	#0x30A3
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	bne	00135$
	jmp	00104$
00135$:
;../atanf.c:69: f=((K2*f-1.0)+f)/(K3+f);
	ldhx	#0x3F3B
	sthx	___fsmul_PARM_1
	ldhx	#0x67AF
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
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	ldhx	#0x3F80
	sthx	___fssub_PARM_2
	clrh
	clrx
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	tsx
	lda	6,x
	sta	___fsadd_PARM_2
	lda	7,x
	sta	(___fsadd_PARM_2 + 1)
	lda	8,x
	sta	(___fsadd_PARM_2 + 2)
	lda	9,x
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	tsx
	lda	6,x
	sta	___fsadd_PARM_1
	lda	7,x
	sta	(___fsadd_PARM_1 + 1)
	lda	8,x
	sta	(___fsadd_PARM_1 + 2)
	lda	9,x
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0x3FDD
	sthx	___fsadd_PARM_2
	ldhx	#0xB3D7
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
	sta	10,s
	stx	9,s
	lda	*___SDCC_hc08_ret2
	sta	8,s
	lda	*___SDCC_hc08_ret3
	sta	7,s
;../atanf.c:73: n++;
	tsx
	inc	1,x
	bne	00136$
	inc	,x
00136$:
00104$:
;../atanf.c:75: if(fabsf(f)<EPS) r=f;
	tsx
	lda	9,x
	psha
	lda	8,x
	psha
	lda	7,x
	psha
	lda	6,x
	psha
	jsr	_fabsf
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ais	#4
	ldhx	#0x3980
	sthx	___fslt_PARM_2
	clrh
	clrx
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00106$
	tsx
	lda	6,x
	sta	2,x
	lda	7,x
	sta	3,x
	lda	8,x
	sta	4,x
	lda	9,x
	sta	5,x
	jmp	00107$
00106$:
;../atanf.c:78: g=f*f;
	tsx
	lda	6,x
	sta	___fsmul_PARM_1
	lda	7,x
	sta	(___fsmul_PARM_1 + 1)
	lda	8,x
	sta	(___fsmul_PARM_1 + 2)
	lda	9,x
	sta	(___fsmul_PARM_1 + 3)
	lda	6,x
	sta	___fsmul_PARM_2
	lda	7,x
	sta	(___fsmul_PARM_2 + 1)
	lda	8,x
	sta	(___fsmul_PARM_2 + 2)
	lda	9,x
	sta	(___fsmul_PARM_2 + 3)
;../atanf.c:79: r=f+P(g,f)/Q(g);
	jsr	___fsmul
	sta	18,s
	stx	17,s
	lda	*___SDCC_hc08_ret2
	sta	16,s
	lda	*___SDCC_hc08_ret3
	sta	15,s
	ldhx	#0xBD50
	sthx	___fsmul_PARM_1
	ldhx	#0x8691
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xBEF1
	sthx	___fsadd_PARM_2
	ldhx	#0x10F6
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	lda	14,x
	sta	___fsmul_PARM_2
	lda	15,x
	sta	(___fsmul_PARM_2 + 1)
	lda	16,x
	sta	(___fsmul_PARM_2 + 2)
	lda	17,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
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
	sta	14,s
	stx	13,s
	lda	*___SDCC_hc08_ret2
	sta	12,s
	lda	*___SDCC_hc08_ret3
	sta	11,s
	tsx
	lda	14,x
	sta	___fsadd_PARM_1
	lda	15,x
	sta	(___fsadd_PARM_1 + 1)
	lda	16,x
	sta	(___fsadd_PARM_1 + 2)
	lda	17,x
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0x3FB4
	sthx	___fsadd_PARM_2
	ldhx	#0xCCD3
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	lda	10,x
	sta	___fsdiv_PARM_1
	lda	11,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	12,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	13,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	tsx
	lda	6,x
	sta	___fsadd_PARM_1
	lda	7,x
	sta	(___fsadd_PARM_1 + 1)
	lda	8,x
	sta	(___fsadd_PARM_1 + 2)
	lda	9,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
00107$:
;../atanf.c:81: if(n>1) r=-r;
	tsx
	lda	#0x01
	sub	1,x
	clra
	sbc	,x
	bge	00109$
	lda	2,x
	eor	#0x80
	sta	2,x
00109$:
;../atanf.c:82: r+=a[n];
	lda	2,s
	ldx	1,s
	lsla
	rolx
	lsla
	rolx
	pshx
	pulh
	tax
	lda	(_atanf_a_1_24),x
	sta	___fsadd_PARM_2
	lda	(_atanf_a_1_24+1),x
	sta	(___fsadd_PARM_2 + 1)
	lda	(_atanf_a_1_24+2),x
	sta	(___fsadd_PARM_2 + 2)
	lda	(_atanf_a_1_24+3),x
	sta	(___fsadd_PARM_2 + 3)
	tsx
	lda	2,x
	sta	___fsadd_PARM_1
	lda	3,x
	sta	(___fsadd_PARM_1 + 1)
	lda	4,x
	sta	(___fsadd_PARM_1 + 2)
	lda	5,x
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	6,s
	stx	5,s
	lda	*___SDCC_hc08_ret2
	sta	4,s
	lda	*___SDCC_hc08_ret3
	sta	3,s
;../atanf.c:83: if(x<0.0) r=-r;
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
	beq	00111$
	tsx
	lda	2,x
	eor	#0x80
	sta	2,x
00111$:
;../atanf.c:84: return r;
	tsx
	lda	2,x
	sta	*___SDCC_hc08_ret3
	lda	3,x
	sta	*___SDCC_hc08_ret2
	ldx	4,x
	lda	6,s
	ais	#18
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
_atanf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x3F,#0x06,#0x0A,#0x92	;  5.235988e-01
	.byte #0x3F,#0xC9,#0x0F,#0xDB	;  1.570796e+00
	.byte #0x3F,#0x86,#0x0A,#0x92	;  1.047198e+00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
