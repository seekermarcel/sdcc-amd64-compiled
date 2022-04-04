;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module expf
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
;x                         Allocated to stack - sp -17
;n                         Allocated to registers 
;xn                        Allocated to stack - sp -25
;g                         Allocated to stack - sp -29
;r                         Allocated to stack - sp -33
;z                         Allocated to stack - sp -37
;y                         Allocated to stack - sp -37
;sign                      Allocated to stack - sp -38
;sloc0                     Allocated to stack - sp -23
;sloc1                     Allocated to stack - sp -29
;sloc2                     Allocated to stack - sp -27
;------------------------------------------------------------
;../expf.c:330: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 19 bytes.
_expf:
	ais	#-19
;../expf.c:336: if(x>=0.0)
	tsx
	lda	21,x
	sta	___fslt_PARM_1
	lda	22,x
	sta	(___fslt_PARM_1 + 1)
	lda	23,x
	sta	(___fslt_PARM_1 + 2)
	lda	24,x
	sta	(___fslt_PARM_1 + 3)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	bne	00102$
;../expf.c:337: { y=x;  sign=0; }
	tsx
	lda	21,x
	sta	1,x
	lda	22,x
	sta	2,x
	lda	23,x
	sta	3,x
	lda	24,x
	sta	4,x
	clra
	sta	,x
	bra	00103$
00102$:
;../expf.c:339: { y=-x; sign=1; }
	tsx
	lda	24,x
	sta	4,x
	lda	23,x
	sta	3,x
	lda	22,x
	sta	2,x
	lda	21,x
	eor	#0x80
	sta	1,x
	lda	#0x01
	sta	,x
00103$:
;../expf.c:341: if(y<EXPEPS) return 1.0;
	tsx
	lda	1,x
	sta	___fslt_PARM_1
	lda	2,x
	sta	(___fslt_PARM_1 + 1)
	lda	3,x
	sta	(___fslt_PARM_1 + 2)
	lda	4,x
	sta	(___fslt_PARM_1 + 3)
	ldhx	#0x33D6
	sthx	___fslt_PARM_2
	ldhx	#0xBF95
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00105$
	clra
	tax
	mov	#0x80,*___SDCC_hc08_ret2
	mov	#0x3F,*___SDCC_hc08_ret3
	jmp	00118$
00105$:
;../expf.c:343: if(y>BIGX)
	tsx
	lda	1,x
	sta	___fsgt_PARM_1
	lda	2,x
	sta	(___fsgt_PARM_1 + 1)
	lda	3,x
	sta	(___fsgt_PARM_1 + 2)
	lda	4,x
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x42B1
	sthx	___fsgt_PARM_2
	ldhx	#0x7218
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	beq	00110$
;../expf.c:345: if(sign)
	tst	1,s
	beq	00107$
;../expf.c:347: errno=ERANGE;
	ldhx	#0x0022
	sthx	_errno
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
	ldhx	#0x3FB8
	sthx	___fsmul_PARM_1
	ldhx	#0xAA3B
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	1,x
	sta	___fsmul_PARM_2
	lda	2,x
	sta	(___fsmul_PARM_2 + 1)
	lda	3,x
	sta	(___fsmul_PARM_2 + 2)
	lda	4,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:358: n=z;
	jsr	___fsmul
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	tsx
	lda	15,x
	sta	___fs2sint_PARM_1
	lda	16,x
	sta	(___fs2sint_PARM_1 + 1)
	lda	17,x
	sta	(___fs2sint_PARM_1 + 2)
	lda	18,x
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	sta	11,s
	stx	10,s
;../expf.c:360: if(n<0) --n;
	tsx
	lda	9,x
	sub	#0x00
	bge	00112$
	lda	10,x
	sub	#0x01
	sta	10,x
	lda	9,x
	sbc	#0
	sta	9,x
00112$:
;../expf.c:361: if(z-n>=0.5) ++n;
	tsx
	lda	10,x
	ldx	9,x
	jsr	___sint2fs
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	15,x
	sta	___fssub_PARM_1
	lda	16,x
	sta	(___fssub_PARM_1 + 1)
	lda	17,x
	sta	(___fssub_PARM_1 + 2)
	lda	18,x
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	(___fslt_PARM_1 + 3)
	stx	(___fslt_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fslt_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fslt_PARM_1
	ldhx	#0x3F00
	sthx	___fslt_PARM_2
	clrh
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	bne	00114$
	tsx
	inc	10,x
	bne	00154$
	inc	9,x
00154$:
00114$:
;../expf.c:362: xn=n;
	tsx
	lda	10,x
	ldx	9,x
	jsr	___sint2fs
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
;../expf.c:363: g=((y-xn*C1))-xn*C2;
	ldhx	#0x3F31
	sthx	___fsmul_PARM_1
	ldhx	#0x8000
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	15,x
	sta	___fsmul_PARM_2
	lda	16,x
	sta	(___fsmul_PARM_2 + 1)
	lda	17,x
	sta	(___fsmul_PARM_2 + 2)
	lda	18,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	1,x
	sta	___fssub_PARM_1
	lda	2,x
	sta	(___fssub_PARM_1 + 1)
	lda	3,x
	sta	(___fssub_PARM_1 + 2)
	lda	4,x
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	15,s
	stx	14,s
	lda	*___SDCC_hc08_ret2
	sta	13,s
	lda	*___SDCC_hc08_ret3
	sta	12,s
	ldhx	#0xB95E
	sthx	___fsmul_PARM_1
	ldhx	#0x8083
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	15,x
	sta	___fsmul_PARM_2
	lda	16,x
	sta	(___fsmul_PARM_2 + 1)
	lda	17,x
	sta	(___fsmul_PARM_2 + 2)
	lda	18,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	tsx
	lda	11,x
	sta	___fssub_PARM_1
	lda	12,x
	sta	(___fssub_PARM_1 + 1)
	lda	13,x
	sta	(___fssub_PARM_1 + 2)
	lda	14,x
	sta	(___fssub_PARM_1 + 3)
;../expf.c:364: z=g*g;
	jsr	___fssub
	sta	15,s
	stx	14,s
	lda	*___SDCC_hc08_ret2
	sta	13,s
	lda	*___SDCC_hc08_ret3
	sta	12,s
	tsx
	lda	11,x
	sta	___fsmul_PARM_1
	lda	12,x
	sta	(___fsmul_PARM_1 + 1)
	lda	13,x
	sta	(___fsmul_PARM_1 + 2)
	lda	14,x
	sta	(___fsmul_PARM_1 + 3)
	lda	11,x
	sta	___fsmul_PARM_2
	lda	12,x
	sta	(___fsmul_PARM_2 + 1)
	lda	13,x
	sta	(___fsmul_PARM_2 + 2)
	lda	14,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:365: r=P(z)*g;
	jsr	___fsmul
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	ldhx	#0x3B88
	sthx	___fsmul_PARM_1
	ldhx	#0x5308
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	15,x
	sta	___fsmul_PARM_2
	lda	16,x
	sta	(___fsmul_PARM_2 + 1)
	lda	17,x
	sta	(___fsmul_PARM_2 + 2)
	lda	18,x
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3E80
	sthx	___fsadd_PARM_2
	clrh
	clrx
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	tsx
	lda	11,x
	sta	___fsmul_PARM_2
	lda	12,x
	sta	(___fsmul_PARM_2 + 1)
	lda	13,x
	sta	(___fsmul_PARM_2 + 2)
	lda	14,x
	sta	(___fsmul_PARM_2 + 3)
;../expf.c:366: r=0.5+(r/(Q(z)-r));
	jsr	___fsmul
	sta	15,s
	stx	14,s
	lda	*___SDCC_hc08_ret2
	sta	13,s
	lda	*___SDCC_hc08_ret3
	sta	12,s
	ldhx	#0x3D4C
	sthx	___fsmul_PARM_1
	ldhx	#0xBF5B
	sthx	(___fsmul_PARM_1 + 2)
	tsx
	lda	15,x
	sta	___fsmul_PARM_2
	lda	16,x
	sta	(___fsmul_PARM_2 + 1)
	lda	17,x
	sta	(___fsmul_PARM_2 + 2)
	lda	18,x
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
	sta	(___fssub_PARM_1 + 3)
	stx	(___fssub_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_1
	tsx
	lda	11,x
	sta	___fssub_PARM_2
	lda	12,x
	sta	(___fssub_PARM_2 + 1)
	lda	13,x
	sta	(___fssub_PARM_2 + 2)
	lda	14,x
	sta	(___fssub_PARM_2 + 3)
	jsr	___fssub
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	tsx
	lda	11,x
	sta	___fsdiv_PARM_1
	lda	12,x
	sta	(___fsdiv_PARM_1 + 1)
	lda	13,x
	sta	(___fsdiv_PARM_1 + 2)
	lda	14,x
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
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
	sta	9,s
	stx	8,s
	lda	*___SDCC_hc08_ret2
	sta	7,s
	lda	*___SDCC_hc08_ret3
	sta	6,s
;../expf.c:368: n++;
	tsx
	ldhx	#_ldexpf_PARM_2
	lda	11,s
	add	#0x01
	sta	1,x
	lda	10,s
	adc	#0
	sta	,x
;../expf.c:369: z=ldexpf(r, n);
	tsx
	lda	5,x
	sta	_ldexpf_PARM_1
	lda	6,x
	sta	(_ldexpf_PARM_1 + 1)
	lda	7,x
	sta	(_ldexpf_PARM_1 + 2)
	lda	8,x
	sta	(_ldexpf_PARM_1 + 3)
	jsr	_ldexpf
	sta	15,s
	stx	14,s
	lda	*___SDCC_hc08_ret2
	sta	13,s
	lda	*___SDCC_hc08_ret3
	sta	12,s
;../expf.c:370: if(sign)
	tst	1,s
	beq	00116$
;../expf.c:371: return 1.0/z;
	ldhx	#0x3F80
	sthx	___fsdiv_PARM_1
	clrh
	clrx
	sthx	(___fsdiv_PARM_1 + 2)
	tsx
	lda	11,x
	sta	___fsdiv_PARM_2
	lda	12,x
	sta	(___fsdiv_PARM_2 + 1)
	lda	13,x
	sta	(___fsdiv_PARM_2 + 2)
	lda	14,x
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	19,s
	stx	18,s
	lda	*___SDCC_hc08_ret2
	sta	17,s
	lda	*___SDCC_hc08_ret3
	sta	16,s
	tsx
	lda	15,x
	sta	*___SDCC_hc08_ret3
	lda	16,x
	sta	*___SDCC_hc08_ret2
	ldx	17,x
	lda	19,s
	bra	00118$
00116$:
;../expf.c:373: return z;
	tsx
	lda	11,x
	sta	*___SDCC_hc08_ret3
	lda	12,x
	sta	*___SDCC_hc08_ret2
	ldx	13,x
	lda	15,s
00118$:
	ais	#19
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
