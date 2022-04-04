;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module sincoshf
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
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
	.globl _sincoshf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_sincoshf_sloc0_1_0:
	.ds 4
_sincoshf_sloc1_1_0:
	.ds 1
_sincoshf_sloc2_1_0:
	.ds 4
_sincoshf_sloc3_1_0:
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
_sincoshf_PARM_1:
	.ds 4
_sincoshf_PARM_2:
	.ds 1
_sincoshf_y_1_24:
	.ds 4
_sincoshf_w_1_24:
	.ds 4
_sincoshf_z_1_24:
	.ds 4
_sincoshf_sign_1_24:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;sloc1                     Allocated with name '_sincoshf_sloc1_1_0'
;sloc2                     Allocated with name '_sincoshf_sloc2_1_0'
;sloc3                     Allocated with name '_sincoshf_sloc3_1_0'
;x                         Allocated with name '_sincoshf_PARM_1'
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;y                         Allocated with name '_sincoshf_y_1_24'
;w                         Allocated with name '_sincoshf_w_1_24'
;z                         Allocated with name '_sincoshf_z_1_24'
;sign                      Allocated with name '_sincoshf_sign_1_24'
;------------------------------------------------------------
;../sincoshf.c:56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_sincoshf:
;../sincoshf.c:62: else { y=x;  sign=0; }
	ldhx	_sincoshf_PARM_1
	sthx	*_sincoshf_sloc0_1_0
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	*(_sincoshf_sloc0_1_0 + 2)
;../sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
	ldhx	_sincoshf_PARM_1
	sthx	___fslt_PARM_1
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	(___fslt_PARM_1 + 2)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00102$
	lda	(_sincoshf_PARM_1 + 3)
	sta	(_sincoshf_y_1_24 + 3)
	lda	(_sincoshf_PARM_1 + 2)
	sta	(_sincoshf_y_1_24 + 2)
	lda	(_sincoshf_PARM_1 + 1)
	sta	(_sincoshf_y_1_24 + 1)
	lda	_sincoshf_PARM_1
	eor	#0x80
	sta	_sincoshf_y_1_24
	lda	#0x01
	sta	_sincoshf_sign_1_24
	bra	00103$
00102$:
;../sincoshf.c:62: else { y=x;  sign=0; }
	lda	*_sincoshf_sloc0_1_0
	sta	_sincoshf_y_1_24
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(_sincoshf_y_1_24 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(_sincoshf_y_1_24 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(_sincoshf_y_1_24 + 3)
	clra
	sta	_sincoshf_sign_1_24
00103$:
;../sincoshf.c:64: if ((y>1.0) || iscosh)
	ldhx	_sincoshf_y_1_24
	sthx	___fsgt_PARM_1
	ldhx	(_sincoshf_y_1_24 + 2)
	sthx	(___fsgt_PARM_1 + 2)
	ldhx	#0x3F80
	sthx	___fsgt_PARM_2
	clrh
	clrx
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	bne	00117$
	lda	_sincoshf_PARM_2
	bne	00153$
	jmp	00118$
00153$:
00117$:
;../sincoshf.c:66: if(y>YBAR)
	ldhx	_sincoshf_y_1_24
	sthx	___fsgt_PARM_1
	ldhx	(_sincoshf_y_1_24 + 2)
	sthx	(___fsgt_PARM_1 + 2)
	ldhx	#0x4110
	sthx	___fsgt_PARM_2
	clrh
	clrx
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	sta	*_sincoshf_sloc1_1_0
	tst	*_sincoshf_sloc1_1_0
	bne	00154$
	jmp	00110$
00154$:
;../sincoshf.c:68: w=y-K1;
	ldhx	_sincoshf_y_1_24
	sthx	___fssub_PARM_1
	ldhx	(_sincoshf_y_1_24 + 2)
	sthx	(___fssub_PARM_1 + 2)
	ldhx	#0x3F31
	sthx	___fssub_PARM_2
	ldhx	#0x7300
	sthx	(___fssub_PARM_2 + 2)
;../sincoshf.c:69: if (w>WMAX)
	jsr	___fssub
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	lda	*_sincoshf_sloc2_1_0
	sta	___fsgt_PARM_1
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsgt_PARM_1 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsgt_PARM_1 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x4233
	sthx	___fsgt_PARM_2
	ldhx	#0xBDCF
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	beq	00105$
;../sincoshf.c:71: errno=ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../sincoshf.c:72: z=HUGE_VALF;
	ldhx	#0x7F7F
	sthx	_sincoshf_z_1_24
	ldhx	#0xFFFF
	sthx	(_sincoshf_z_1_24 + 2)
	jmp	00111$
00105$:
;../sincoshf.c:76: z=expf(w);
	lda	*(_sincoshf_sloc2_1_0 + 3)
	psha
	lda	*(_sincoshf_sloc2_1_0 + 2)
	psha
	lda	*(_sincoshf_sloc2_1_0 + 1)
	psha
	lda	*_sincoshf_sloc2_1_0
	psha
	jsr	_expf
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	ais	#4
;../sincoshf.c:77: z+=K3*z;
	ldhx	#0x3768
	sthx	___fsmul_PARM_1
	ldhx	#0x0897
	sthx	(___fsmul_PARM_1 + 2)
	lda	*_sincoshf_sloc2_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	lda	*_sincoshf_sloc2_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	(_sincoshf_z_1_24 + 3)
	stx	(_sincoshf_z_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_1_24
	jmp	00111$
00110$:
;../sincoshf.c:82: z=expf(y);
	lda	(_sincoshf_y_1_24 + 3)
	psha
	lda	(_sincoshf_y_1_24 + 2)
	psha
	lda	(_sincoshf_y_1_24 + 1)
	psha
	lda	_sincoshf_y_1_24
	psha
	jsr	_expf
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	ais	#4
;../sincoshf.c:83: w=1.0/z;
	ldhx	#0x3F80
	sthx	___fsdiv_PARM_1
	clrh
	clrx
	sthx	(___fsdiv_PARM_1 + 2)
	lda	*_sincoshf_sloc2_1_0
	sta	___fsdiv_PARM_2
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_2 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_2 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_2 + 3)
	jsr	___fsdiv
	sta	*(_sincoshf_sloc3_1_0 + 3)
	stx	*(_sincoshf_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc3_1_0
	lda	*_sincoshf_sloc3_1_0
	sta	_sincoshf_w_1_24
	lda	*(_sincoshf_sloc3_1_0 + 1)
	sta	(_sincoshf_w_1_24 + 1)
	lda	*(_sincoshf_sloc3_1_0 + 2)
	sta	(_sincoshf_w_1_24 + 2)
	lda	*(_sincoshf_sloc3_1_0 + 3)
	sta	(_sincoshf_w_1_24 + 3)
;../sincoshf.c:84: if(!iscosh) w=-w;
	lda	_sincoshf_PARM_2
	bne	00108$
	lda	*(_sincoshf_sloc3_1_0 + 3)
	sta	(_sincoshf_w_1_24 + 3)
	lda	*(_sincoshf_sloc3_1_0 + 2)
	sta	(_sincoshf_w_1_24 + 2)
	lda	*(_sincoshf_sloc3_1_0 + 1)
	sta	(_sincoshf_w_1_24 + 1)
	lda	*_sincoshf_sloc3_1_0
	eor	#0x80
	sta	_sincoshf_w_1_24
00108$:
;../sincoshf.c:85: z=(z+w)*0.5;
	lda	*_sincoshf_sloc2_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	ldhx	_sincoshf_w_1_24
	sthx	___fsadd_PARM_2
	ldhx	(_sincoshf_w_1_24 + 2)
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	ldhx	#0x3F00
	sthx	___fsmul_PARM_1
	clrh
	sthx	(___fsmul_PARM_1 + 2)
	jsr	___fsmul
	sta	(_sincoshf_z_1_24 + 3)
	stx	(_sincoshf_z_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_1_24
00111$:
;../sincoshf.c:87: if(sign) z=-z;
	lda	_sincoshf_sign_1_24
	bne	00157$
	jmp	00119$
00157$:
	lda	_sincoshf_z_1_24
	eor	#0x80
	sta	_sincoshf_z_1_24
	jmp	00119$
00118$:
;../sincoshf.c:91: if (y<EPS)
	ldhx	_sincoshf_y_1_24
	sthx	___fslt_PARM_1
	ldhx	(_sincoshf_y_1_24 + 2)
	sthx	(___fslt_PARM_1 + 2)
	ldhx	#0x3980
	sthx	___fslt_PARM_2
	clrh
	clrx
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00115$
;../sincoshf.c:92: z=x;
	lda	*_sincoshf_sloc0_1_0
	sta	_sincoshf_z_1_24
	lda	*(_sincoshf_sloc0_1_0 + 1)
	sta	(_sincoshf_z_1_24 + 1)
	lda	*(_sincoshf_sloc0_1_0 + 2)
	sta	(_sincoshf_z_1_24 + 2)
	lda	*(_sincoshf_sloc0_1_0 + 3)
	sta	(_sincoshf_z_1_24 + 3)
	jmp	00119$
00115$:
;../sincoshf.c:95: z=x*x;
	ldhx	_sincoshf_PARM_1
	sthx	___fsmul_PARM_1
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincoshf_PARM_1
	sthx	___fsmul_PARM_2
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	(___fsmul_PARM_2 + 2)
;../sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	jsr	___fsmul
	sta	*(_sincoshf_sloc3_1_0 + 3)
	stx	*(_sincoshf_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc3_1_0
	ldhx	_sincoshf_PARM_1
	sthx	___fsmul_PARM_1
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	(___fsmul_PARM_1 + 2)
	lda	*_sincoshf_sloc3_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc3_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc3_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc3_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	ldhx	#0xBE42
	sthx	___fsmul_PARM_1
	ldhx	#0xE6EA
	sthx	(___fsmul_PARM_1 + 2)
	lda	*_sincoshf_sloc3_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincoshf_sloc3_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincoshf_sloc3_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincoshf_sloc3_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xC0E4
	sthx	___fsadd_PARM_2
	ldhx	#0x69F0
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	lda	*_sincoshf_sloc2_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	*(_sincoshf_sloc2_1_0 + 3)
	stx	*(_sincoshf_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincoshf_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincoshf_sloc2_1_0
	lda	*_sincoshf_sloc3_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincoshf_sloc3_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincoshf_sloc3_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincoshf_sloc3_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	ldhx	#0xC22B
	sthx	___fsadd_PARM_2
	ldhx	#0x4F93
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsdiv_PARM_2 + 3)
	stx	(___fsdiv_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsdiv_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsdiv_PARM_2
	lda	*_sincoshf_sloc2_1_0
	sta	___fsdiv_PARM_1
	lda	*(_sincoshf_sloc2_1_0 + 1)
	sta	(___fsdiv_PARM_1 + 1)
	lda	*(_sincoshf_sloc2_1_0 + 2)
	sta	(___fsdiv_PARM_1 + 2)
	lda	*(_sincoshf_sloc2_1_0 + 3)
	sta	(___fsdiv_PARM_1 + 3)
	jsr	___fsdiv
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	_sincoshf_PARM_1
	sthx	___fsadd_PARM_1
	ldhx	(_sincoshf_PARM_1 + 2)
	sthx	(___fsadd_PARM_1 + 2)
	jsr	___fsadd
	sta	(_sincoshf_z_1_24 + 3)
	stx	(_sincoshf_z_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincoshf_z_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincoshf_z_1_24
00119$:
;../sincoshf.c:99: return z;
	lda	_sincoshf_z_1_24
	sta	*___SDCC_hc08_ret3
	lda	(_sincoshf_z_1_24 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_sincoshf_z_1_24 + 2)
	lda	(_sincoshf_z_1_24 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
