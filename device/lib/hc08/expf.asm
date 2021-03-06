;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module expf
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
	.globl _ldexpf
	.globl _expf
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated to stack - sp -16
;n                         Allocated to registers 
;xn                        Allocated to stack - sp -24
;g                         Allocated to stack - sp -28
;r                         Allocated to stack - sp -32
;z                         Allocated to stack - sp -36
;y                         Allocated to stack - sp -36
;sign                      Allocated to registers x 
;sloc0                     Allocated to stack - sp -22
;sloc1                     Allocated to stack - sp -24
;sloc2                     Allocated to stack - sp -28
;------------------------------------------------------------
;../expf.c:330: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 18 bytes.
_expf:
	ais	#-18
;../expf.c:336: if(x>=0.0)
	tsx
	ldhx	#___fslt_PARM_1
	lda	21,s
	sta	,x
	lda	22,s
	sta	1,x
	lda	23,s
	sta	2,x
	lda	24,s
	sta	3,x
	ldhx	#___fslt_PARM_2
	clra
	sta	,x
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fslt
	tsta
	bne	00102$
;../expf.c:337: { y=x;  sign=0; }
	tsx
	lda	20,x
	sta	,x
	lda	21,x
	sta	1,x
	lda	22,x
	sta	2,x
	lda	23,x
	sta	3,x
	clrx
	bra	00103$
00102$:
;../expf.c:339: { y=-x; sign=1; }
	tsx
	lda	23,x
	sta	3,x
	lda	22,x
	sta	2,x
	lda	21,x
	sta	1,x
	lda	20,x
	eor	#0x80
	sta	,x
	ldx	#0x01
00103$:
;../expf.c:341: if(y<EXPEPS) return 1.0;
	lda	1,s
	sta	___fslt_PARM_1
	lda	2,s
	sta	(___fslt_PARM_1 + 1)
	lda	3,s
	sta	(___fslt_PARM_1 + 2)
	lda	4,s
	sta	(___fslt_PARM_1 + 3)
	lda	#0x33
	sta	___fslt_PARM_2
	lda	#0xD6
	sta	(___fslt_PARM_2 + 1)
	lda	#0xBF
	sta	(___fslt_PARM_2 + 2)
	lda	#0x95
	sta	(___fslt_PARM_2 + 3)
	pshx
	jsr	___fslt
	pulx
	tsta
	beq	00105$
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3F,*___SDCC_hc08_ret3
	jmp	00118$
00105$:
;../expf.c:343: if(y>BIGX)
	lda	1,s
	sta	___fsgt_PARM_1
	lda	2,s
	sta	(___fsgt_PARM_1 + 1)
	lda	3,s
	sta	(___fsgt_PARM_1 + 2)
	lda	4,s
	sta	(___fsgt_PARM_1 + 3)
	lda	#0x42
	sta	___fsgt_PARM_2
	lda	#0xB1
	sta	(___fsgt_PARM_2 + 1)
	lda	#0x72
	sta	(___fsgt_PARM_2 + 2)
	lda	#0x18
	sta	(___fsgt_PARM_2 + 3)
	pshx
	jsr	___fsgt
	pulx
	tsta
	beq	00110$
;../expf.c:345: if(sign)
	tstx
	beq	00107$
;../expf.c:347: errno=ERANGE;
	clra
	sta	_errno
	lda	#0x22
	sta	(_errno + 1)
;../expf.c:349: ;
	lda	#0xFF
	tax
	mov	#0x7F,*___SDCC_hc08_ret2
	mov	#0x7F,*___SDCC_hc08_ret3
	jmp	00118$
00107$:
;../expf.c:353: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	jmp	00118$
00110$:
;../expf.c:357: z=y*K1;
	lda	#0x3F
	sta	___fsmul_PARM_1
	lda	#0xB8
	sta	(___fsmul_PARM_1 + 1)
	lda	#0xAA
	sta	(___fsmul_PARM_1 + 2)
	lda	#0x3B
	sta	(___fsmul_PARM_1 + 3)
	lda	1,s
	sta	___fsmul_PARM_2
	lda	2,s
	sta	(___fsmul_PARM_2 + 1)
	lda	3,s
	sta	(___fsmul_PARM_2 + 2)
	lda	4,s
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:358: n=z;
	pshx
	jsr	___fsmul
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	pulx
	lda	15,s
	sta	___fs2sint_PARM_1
	lda	16,s
	sta	(___fs2sint_PARM_1 + 1)
	lda	17,s
	sta	(___fs2sint_PARM_1 + 2)
	lda	18,s
	sta	(___fs2sint_PARM_1 + 3)
	pshx
	jsr	___fs2sint
	sta	15,s
	stx	14,s
	pulx
;../expf.c:360: if(n<0) --n;
	lda	13,s
	sub	#0x00
	bge	00112$
	lda	14,s
	sub	#0x01
	sta	14,s
	lda	13,s
	sbc	#0
	sta	13,s
00112$:
;../expf.c:361: if(z-n>=0.5) ++n;
	pshx
	lda	15,s
	ldx	14,s
	jsr	___sint2fs
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	pulx
	lda	15,s
	sta	___fssub_PARM_1
	lda	16,s
	sta	(___fssub_PARM_1 + 1)
	lda	17,s
	sta	(___fssub_PARM_1 + 2)
	lda	18,s
	sta	(___fssub_PARM_1 + 3)
	pshx
	jsr	___fssub
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	pulx
	lda	#0x3F
	sta	___fslt_PARM_2
	clra
	sta	(___fslt_PARM_2 + 1)
	sta	(___fslt_PARM_2 + 2)
	sta	(___fslt_PARM_2 + 3)
	pshx
	jsr	___fslt
	pulx
	tsta
	bne	00114$
	inc	14,s
	bne	00154$
	inc	13,s
00154$:
00114$:
;../expf.c:362: xn=n;
	pshx
	lda	15,s
	ldx	14,s
	jsr	___sint2fs
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	pulx
;../expf.c:363: g=((y-xn*C1))-xn*C2;
	lda	#0x3F
	sta	___fsmul_PARM_1
	lda	#0x31
	sta	(___fsmul_PARM_1 + 1)
	lda	#0x80
	sta	(___fsmul_PARM_1 + 2)
	clra
	sta	(___fsmul_PARM_1 + 3)
	lda	15,s
	sta	___fsmul_PARM_2
	lda	16,s
	sta	(___fsmul_PARM_2 + 1)
	lda	17,s
	sta	(___fsmul_PARM_2 + 2)
	lda	18,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	pulx
	lda	1,s
	sta	___fssub_PARM_1
	lda	2,s
	sta	(___fssub_PARM_1 + 1)
	lda	3,s
	sta	(___fssub_PARM_1 + 2)
	lda	4,s
	sta	(___fssub_PARM_1 + 3)
	pshx
	jsr	___fssub
	sta	13,s
	stx	12,s
	lda	*___SDCC_hc08_ret2
	sta	11,s
	lda	*___SDCC_hc08_ret3
	sta	10,s
	pulx
	lda	#0xB9
	sta	___fsmul_PARM_1
	lda	#0x5E
	sta	(___fsmul_PARM_1 + 1)
	lda	#0x80
	sta	(___fsmul_PARM_1 + 2)
	lda	#0x83
	sta	(___fsmul_PARM_1 + 3)
	lda	15,s
	sta	___fsmul_PARM_2
	lda	16,s
	sta	(___fsmul_PARM_2 + 1)
	lda	17,s
	sta	(___fsmul_PARM_2 + 2)
	lda	18,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	pulx
	lda	9,s
	sta	___fssub_PARM_1
	lda	10,s
	sta	(___fssub_PARM_1 + 1)
	lda	11,s
	sta	(___fssub_PARM_1 + 2)
	lda	12,s
	sta	(___fssub_PARM_1 + 3)
;../expf.c:364: z=g*g;
	pshx
	jsr	___fssub
	sta	13,s
	stx	12,s
	lda	*___SDCC_hc08_ret2
	sta	11,s
	lda	*___SDCC_hc08_ret3
	sta	10,s
	pulx
	lda	9,s
	sta	___fsmul_PARM_1
	lda	10,s
	sta	(___fsmul_PARM_1 + 1)
	lda	11,s
	sta	(___fsmul_PARM_1 + 2)
	lda	12,s
	sta	(___fsmul_PARM_1 + 3)
	lda	9,s
	sta	___fsmul_PARM_2
	lda	10,s
	sta	(___fsmul_PARM_2 + 1)
	lda	11,s
	sta	(___fsmul_PARM_2 + 2)
	lda	12,s
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:365: r=P(z)*g;
	pshx
	jsr	___fsmul
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	pulx
	lda	#0x3B
	sta	___fsmul_PARM_1
	lda	#0x88
	sta	(___fsmul_PARM_1 + 1)
	lda	#0x53
	sta	(___fsmul_PARM_1 + 2)
	lda	#0x08
	sta	(___fsmul_PARM_1 + 3)
	lda	15,s
	sta	___fsmul_PARM_2
	lda	16,s
	sta	(___fsmul_PARM_2 + 1)
	lda	17,s
	sta	(___fsmul_PARM_2 + 2)
	lda	18,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	pulx
	lda	#0x3E
	sta	___fsadd_PARM_2
	lda	#0x80
	sta	(___fsadd_PARM_2 + 1)
	clra
	sta	(___fsadd_PARM_2 + 2)
	sta	(___fsadd_PARM_2 + 3)
	pshx
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	pulx
	lda	9,s
	sta	___fsmul_PARM_2
	lda	10,s
	sta	(___fsmul_PARM_2 + 1)
	lda	11,s
	sta	(___fsmul_PARM_2 + 2)
	lda	12,s
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:366: r=0.5+(r/(Q(z)-r));
	pshx
	jsr	___fsmul
	sta	13,s
	stx	12,s
	lda	*___SDCC_hc08_ret2
	sta	11,s
	lda	*___SDCC_hc08_ret3
	sta	10,s
	pulx
	lda	#0x3D
	sta	___fsmul_PARM_1
	lda	#0x4C
	sta	(___fsmul_PARM_1 + 1)
	lda	#0xBF
	sta	(___fsmul_PARM_1 + 2)
	lda	#0x5B
	sta	(___fsmul_PARM_1 + 3)
	lda	15,s
	sta	___fsmul_PARM_2
	lda	16,s
	sta	(___fsmul_PARM_2 + 1)
	lda	17,s
	sta	(___fsmul_PARM_2 + 2)
	lda	18,s
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	pulx
	lda	#0x3F
	sta	___fsadd_PARM_2
	clra
	sta	(___fsadd_PARM_2 + 1)
	sta	(___fsadd_PARM_2 + 2)
	sta	(___fsadd_PARM_2 + 3)
	pshx
	jsr	___fsadd
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	pulx
	lda	9,s
	sta	___fssub_PARM_2
	lda	10,s
	sta	(___fssub_PARM_2 + 1)
	lda	11,s
	sta	(___fssub_PARM_2 + 2)
	lda	12,s
	sta	(___fssub_PARM_2 + 3)
	pshx
	jsr	___fssub
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	pulx
	lda	9,s
	sta	___fsdiv_PARM_1
	lda	10,s
	sta	(___fsdiv_PARM_1 + 1)
	lda	11,s
	sta	(___fsdiv_PARM_1 + 2)
	lda	12,s
	sta	(___fsdiv_PARM_1 + 3)
	pshx
	jsr	___fsdiv
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	pulx
	lda	#0x3F
	sta	___fsadd_PARM_2
	clra
	sta	(___fsadd_PARM_2 + 1)
	sta	(___fsadd_PARM_2 + 2)
	sta	(___fsadd_PARM_2 + 3)
	pshx
	jsr	___fsadd
	sta	9,s
	stx	8,s
	lda	*___SDCC_hc08_ret2
	sta	7,s
	lda	*___SDCC_hc08_ret3
	sta	6,s
	pulx
;../expf.c:368: n++;
	lda	14,s
	add	#0x01
	sta	(_ldexpf_PARM_2 + 1)
	lda	13,s
	adc	#0
	sta	_ldexpf_PARM_2
;../expf.c:369: z=ldexpf(r, n);
	lda	5,s
	sta	_ldexpf_PARM_1
	lda	6,s
	sta	(_ldexpf_PARM_1 + 1)
	lda	7,s
	sta	(_ldexpf_PARM_1 + 2)
	lda	8,s
	sta	(_ldexpf_PARM_1 + 3)
	pshx
	jsr	_ldexpf
	sta	13,s
	stx	12,s
	lda	*___SDCC_hc08_ret2
	sta	11,s
	lda	*___SDCC_hc08_ret3
	sta	10,s
	pulx
;../expf.c:370: if(sign)
	tstx
	beq	00116$
;../expf.c:371: return 1.0/z;
	ldhx	#___fsdiv_PARM_1
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	tsx
	ldhx	#___fsdiv_PARM_2
	lda	9,s
	sta	,x
	lda	10,s
	sta	1,x
	lda	11,s
	sta	2,x
	lda	12,s
	sta	3,x
	jsr	___fsdiv
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
	bra	00118$
00116$:
;../expf.c:373: return z;
	tsx
	lda	8,x
	sta	*___SDCC_hc08_ret3
	lda	9,x
	sta	*___SDCC_hc08_ret2
	ldx	10,x
	lda	12,s
00118$:
	ais	#18
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
