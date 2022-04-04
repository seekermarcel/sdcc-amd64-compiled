;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:32 2022
;--------------------------------------------------------
	.module asincosf
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
	.globl _ldexpf
	.globl _fabsf
	.globl _sqrtf
	.globl _asincosf_PARM_2
	.globl _asincosf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_asincosf_sloc0_1_0:
	.ds 4
_asincosf_sloc1_1_0:
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
;--------------------------------------------------------
; extended address mode data
;--------------------------------------------------------
	.area XSEG
_asincosf_PARM_1:
	.ds 4
_asincosf_PARM_2:
	.ds 1
_asincosf_y_1_24:
	.ds 4
_asincosf_g_1_24:
	.ds 4
_asincosf_r_1_24:
	.ds 4
_asincosf_quartPI_1_24:
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
;Allocation info for local variables in function 'asincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_asincosf_sloc0_1_0'
;sloc1                     Allocated with name '_asincosf_sloc1_1_0'
;x                         Allocated with name '_asincosf_PARM_1'
;isacos                    Allocated with name '_asincosf_PARM_2'
;y                         Allocated with name '_asincosf_y_1_24'
;g                         Allocated with name '_asincosf_g_1_24'
;r                         Allocated with name '_asincosf_r_1_24'
;i                         Allocated to registers x 
;quartPI                   Allocated with name '_asincosf_quartPI_1_24'
;------------------------------------------------------------
;../asincosf.c:47: float asincosf(float x, bool isacos)
;	-----------------------------------------
;	 function asincosf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_asincosf:
;../asincosf.c:51: bool quartPI = isacos;
	lda	_asincosf_PARM_2
	sta	_asincosf_quartPI_1_24
;../asincosf.c:56: y = fabsf(x);
	lda	(_asincosf_PARM_1 + 3)
	psha
	lda	(_asincosf_PARM_1 + 2)
	psha
	lda	(_asincosf_PARM_1 + 1)
	psha
	lda	_asincosf_PARM_1
	psha
	jsr	_fabsf
	sta	*(_asincosf_sloc0_1_0 + 3)
	stx	*(_asincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_asincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_asincosf_sloc0_1_0
	ais	#4
	ldhx	#_asincosf_y_1_24
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
;../asincosf.c:57: if (y < EPS)
	ldhx	#___fslt_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
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
	beq	00107$
;../asincosf.c:59: r = y;
	ldhx	#_asincosf_r_1_24
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jmp	00108$
00107$:
;../asincosf.c:63: if (y > 0.5)
	ldhx	#___fsgt_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsgt_PARM_2
	lda	#0x3F
	sta	,x
	clra
	sta	1,x
	sta	2,x
	sta	3,x
	jsr	___fsgt
	tsta
	bne	00144$
	jmp	00104$
00144$:
;../asincosf.c:65: quartPI = !isacos;
	lda	_asincosf_quartPI_1_24
	eor	#0x01
	sta	_asincosf_quartPI_1_24
;../asincosf.c:66: if (y > 1.0)
	ldhx	#___fsgt_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsgt_PARM_2
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	jsr	___fsgt
	tsta
	beq	00102$
;../asincosf.c:68: errno = EDOM;
	clra
	sta	_errno
	lda	#0x21
	sta	(_errno + 1)
;../asincosf.c:69: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00102$:
;../asincosf.c:71: g = (0.5 - y) + 0.5;
	ldhx	#___fssub_PARM_1
	lda	#0x3F
	sta	,x
	lda	#0x80
	sta	1,x
	clra
	sta	2,x
	sta	3,x
	ldhx	#___fssub_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
;../asincosf.c:72: g = ldexpf(g, -1);
	jsr	___fssub
	sta	(_ldexpf_PARM_1 + 3)
	stx	(_ldexpf_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_ldexpf_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_ldexpf_PARM_1
	lda	#0xFF
	sta	_ldexpf_PARM_2
	sta	(_ldexpf_PARM_2 + 1)
	jsr	_ldexpf
	sta	*(_asincosf_sloc1_1_0 + 3)
	stx	*(_asincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_asincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_asincosf_sloc1_1_0
	ldhx	#_asincosf_g_1_24
	mov	*_asincosf_sloc1_1_0,x+
	mov	*(_asincosf_sloc1_1_0 + 1),x+
	mov	*(_asincosf_sloc1_1_0 + 2),x+
	mov	*(_asincosf_sloc1_1_0 + 3),x+
;../asincosf.c:73: y = sqrtf(g);
	lda	*(_asincosf_sloc1_1_0 + 3)
	psha
	lda	*(_asincosf_sloc1_1_0 + 2)
	psha
	lda	*(_asincosf_sloc1_1_0 + 1)
	psha
	lda	*_asincosf_sloc1_1_0
	psha
	jsr	_sqrtf
	sta	*(_asincosf_sloc1_1_0 + 3)
	stx	*(_asincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_asincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_asincosf_sloc1_1_0
	ais	#4
;../asincosf.c:74: y = -(y + y);
	ldhx	#___fsadd_PARM_1
	mov	*_asincosf_sloc1_1_0,x+
	mov	*(_asincosf_sloc1_1_0 + 1),x+
	mov	*(_asincosf_sloc1_1_0 + 2),x+
	mov	*(_asincosf_sloc1_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	mov	*_asincosf_sloc1_1_0,x+
	mov	*(_asincosf_sloc1_1_0 + 1),x+
	mov	*(_asincosf_sloc1_1_0 + 2),x+
	mov	*(_asincosf_sloc1_1_0 + 3),x+
	jsr	___fsadd
	sta	*(_asincosf_sloc1_1_0 + 3)
	stx	*(_asincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_asincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_asincosf_sloc1_1_0
	lda	*(_asincosf_sloc1_1_0 + 3)
	sta	(_asincosf_y_1_24 + 3)
	lda	*(_asincosf_sloc1_1_0 + 2)
	sta	(_asincosf_y_1_24 + 2)
	lda	*(_asincosf_sloc1_1_0 + 1)
	sta	(_asincosf_y_1_24 + 1)
	lda	*_asincosf_sloc1_1_0
	eor	#0x80
	sta	_asincosf_y_1_24
	bra	00105$
00104$:
;../asincosf.c:78: g = y * y;
	ldhx	#___fsmul_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsmul_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jsr	___fsmul
	sta	(_asincosf_g_1_24 + 3)
	stx	(_asincosf_g_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_asincosf_g_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_asincosf_g_1_24
00105$:
;../asincosf.c:80: r = y + y * ((P(g) * g) / Q(g));
	ldhx	#___fsmul_PARM_1
	lda	#0xBF
	sta	,x
	lda	#0x01
	sta	1,x
	lda	#0x20
	sta	2,x
	lda	#0x65
	sta	3,x
	ldhx	#___fsmul_PARM_2
	lda	_asincosf_g_1_24
	sta	,x
	lda	(_asincosf_g_1_24 + 1)
	sta	1,x
	lda	(_asincosf_g_1_24 + 2)
	sta	2,x
	lda	(_asincosf_g_1_24 + 3)
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
	lda	#0x6F
	sta	1,x
	lda	#0x16
	sta	2,x
	lda	#0x6B
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	#___fsmul_PARM_2
	lda	_asincosf_g_1_24
	sta	,x
	lda	(_asincosf_g_1_24 + 1)
	sta	1,x
	lda	(_asincosf_g_1_24 + 2)
	sta	2,x
	lda	(_asincosf_g_1_24 + 3)
	sta	3,x
	jsr	___fsmul
	sta	*(_asincosf_sloc1_1_0 + 3)
	stx	*(_asincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_asincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_asincosf_sloc1_1_0
	ldhx	#_asincosf_g_1_24
	mov	,x+,*_asincosf_sloc0_1_0
	mov	,x+,*(_asincosf_sloc0_1_0 + 1)
	mov	,x+,*(_asincosf_sloc0_1_0 + 2)
	mov	,x+,*(_asincosf_sloc0_1_0 + 3)
	ldhx	#___fsadd_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	lda	#0xC0
	sta	,x
	lda	#0xB1
	sta	1,x
	lda	#0x8D
	sta	2,x
	lda	#0x0B
	sta	3,x
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	#___fsmul_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	lda	#0x40
	sta	,x
	lda	#0xB3
	sta	1,x
	lda	#0x50
	sta	2,x
	lda	#0xF0
	sta	3,x
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	ldhx	#___fsdiv_PARM_1
	mov	*_asincosf_sloc1_1_0,x+
	mov	*(_asincosf_sloc1_1_0 + 1),x+
	mov	*(_asincosf_sloc1_1_0 + 2),x+
	mov	*(_asincosf_sloc1_1_0 + 3),x+
	jsr	___fsdiv
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	ldhx	#___fsmul_PARM_1
	lda	_asincosf_y_1_24
	sta	,x
	lda	(_asincosf_y_1_24 + 1)
	sta	1,x
	lda	(_asincosf_y_1_24 + 2)
	sta	2,x
	lda	(_asincosf_y_1_24 + 3)
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	lda	_asincosf_y_1_24
	sta	,x
	lda	(_asincosf_y_1_24 + 1)
	sta	1,x
	lda	(_asincosf_y_1_24 + 2)
	sta	2,x
	lda	(_asincosf_y_1_24 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(_asincosf_r_1_24 + 3)
	stx	(_asincosf_r_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_asincosf_r_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_asincosf_r_1_24
00108$:
;../asincosf.c:82: i = quartPI;
	ldx	_asincosf_quartPI_1_24
;../asincosf.c:85: if (x < 0.0)
	lda	_asincosf_PARM_1
	sta	___fslt_PARM_1
	lda	(_asincosf_PARM_1 + 1)
	sta	(___fslt_PARM_1 + 1)
	lda	(_asincosf_PARM_1 + 2)
	sta	(___fslt_PARM_1 + 2)
	lda	(_asincosf_PARM_1 + 3)
	sta	(___fslt_PARM_1 + 3)
	clra
	sta	___fslt_PARM_2
	sta	(___fslt_PARM_2 + 1)
	sta	(___fslt_PARM_2 + 2)
	sta	(___fslt_PARM_2 + 3)
;../asincosf.c:86: r = (b[i] + r) + b[i];
	pshx
	jsr	___fslt
	sta	*_asincosf_sloc1_1_0
	pulx
	txa
	ldx	#0x04
	mul
	pshx
	pulh
	tax
;../asincosf.c:83: if (isacos)
	lda	_asincosf_PARM_2
	bne	00146$
	jmp	00115$
00146$:
;../asincosf.c:85: if (x < 0.0)
	tst	*_asincosf_sloc1_1_0
	beq	00110$
;../asincosf.c:86: r = (b[i] + r) + b[i];
	lda	(_asincosf_b_1_24),x
	sta	*_asincosf_sloc0_1_0
	lda	(_asincosf_b_1_24+1),x
	sta	*(_asincosf_sloc0_1_0 + 1)
	lda	(_asincosf_b_1_24+2),x
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	(_asincosf_b_1_24+3),x
	sta	*(_asincosf_sloc0_1_0 + 3)
	ldhx	#___fsadd_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	lda	_asincosf_r_1_24
	sta	,x
	lda	(_asincosf_r_1_24 + 1)
	sta	1,x
	lda	(_asincosf_r_1_24 + 2)
	sta	2,x
	lda	(_asincosf_r_1_24 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jsr	___fsadd
	sta	(_asincosf_r_1_24 + 3)
	stx	(_asincosf_r_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_asincosf_r_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_asincosf_r_1_24
	jmp	00116$
00110$:
;../asincosf.c:88: r = (a[i] - r) + a[i];
	lda	(_asincosf_a_1_24),x
	sta	*_asincosf_sloc0_1_0
	lda	(_asincosf_a_1_24+1),x
	sta	*(_asincosf_sloc0_1_0 + 1)
	lda	(_asincosf_a_1_24+2),x
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	(_asincosf_a_1_24+3),x
	sta	*(_asincosf_sloc0_1_0 + 3)
	ldhx	#___fssub_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fssub_PARM_2
	lda	_asincosf_r_1_24
	sta	,x
	lda	(_asincosf_r_1_24 + 1)
	sta	1,x
	lda	(_asincosf_r_1_24 + 2)
	sta	2,x
	lda	(_asincosf_r_1_24 + 3)
	sta	3,x
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jsr	___fsadd
	sta	(_asincosf_r_1_24 + 3)
	stx	(_asincosf_r_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_asincosf_r_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_asincosf_r_1_24
	bra	00116$
00115$:
;../asincosf.c:92: r = (a[i] + r) + a[i];
	lda	(_asincosf_a_1_24),x
	sta	*_asincosf_sloc0_1_0
	lda	(_asincosf_a_1_24+1),x
	sta	*(_asincosf_sloc0_1_0 + 1)
	lda	(_asincosf_a_1_24+2),x
	sta	*(_asincosf_sloc0_1_0 + 2)
	lda	(_asincosf_a_1_24+3),x
	sta	*(_asincosf_sloc0_1_0 + 3)
	ldhx	#___fsadd_PARM_1
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	ldhx	#___fsadd_PARM_2
	lda	_asincosf_r_1_24
	sta	,x
	lda	(_asincosf_r_1_24 + 1)
	sta	1,x
	lda	(_asincosf_r_1_24 + 2)
	sta	2,x
	lda	(_asincosf_r_1_24 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#___fsadd_PARM_2
	mov	*_asincosf_sloc0_1_0,x+
	mov	*(_asincosf_sloc0_1_0 + 1),x+
	mov	*(_asincosf_sloc0_1_0 + 2),x+
	mov	*(_asincosf_sloc0_1_0 + 3),x+
	jsr	___fsadd
	sta	(_asincosf_r_1_24 + 3)
	stx	(_asincosf_r_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_asincosf_r_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_asincosf_r_1_24
;../asincosf.c:93: if (x < 0.0)
	tst	*_asincosf_sloc1_1_0
	beq	00116$
;../asincosf.c:94: r = -r;
	lda	_asincosf_r_1_24
	eor	#0x80
	sta	_asincosf_r_1_24
00116$:
;../asincosf.c:96: return r;
	lda	_asincosf_r_1_24
	sta	*___SDCC_hc08_ret3
	lda	(_asincosf_r_1_24 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_asincosf_r_1_24 + 2)
	lda	(_asincosf_r_1_24 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
_asincosf_a_1_24:
	.byte #0x00,#0x00,#0x00,#0x00	;  0.000000e+00
	.byte #0x3F,#0x49,#0x0F,#0xDB	;  7.853982e-01
_asincosf_b_1_24:
	.byte #0x3F,#0xC9,#0x0F,#0xDB	;  1.570796e+00
	.byte #0x3F,#0x49,#0x0F,#0xDB	;  7.853982e-01
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
