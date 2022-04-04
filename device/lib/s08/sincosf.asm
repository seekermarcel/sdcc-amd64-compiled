;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:36 2022
;--------------------------------------------------------
	.cs08
	.module sincosf
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
	.globl _sincosf
	.globl _fabsf
	.globl _sincosf_PARM_2
	.globl _sincosf_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_sincosf_sloc0_1_0:
	.ds 4
_sincosf_sloc1_1_0:
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
_sincosf_PARM_1:
	.ds 4
_sincosf_PARM_2:
	.ds 1
_sincosf_y_1_24:
	.ds 4
_sincosf_f_1_24:
	.ds 4
_sincosf_XN_1_24:
	.ds 4
_sincosf_sign_1_24:
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
;Allocation info for local variables in function 'sincosf'
;------------------------------------------------------------
;sloc0                     Allocated with name '_sincosf_sloc0_1_0'
;sloc1                     Allocated with name '_sincosf_sloc1_1_0'
;x                         Allocated with name '_sincosf_PARM_1'
;iscos                     Allocated with name '_sincosf_PARM_2'
;y                         Allocated with name '_sincosf_y_1_24'
;f                         Allocated with name '_sincosf_f_1_24'
;r                         Allocated with name '_sincosf_r_1_24'
;g                         Allocated with name '_sincosf_g_1_24'
;XN                        Allocated with name '_sincosf_XN_1_24'
;N                         Allocated to registers a x 
;sign                      Allocated with name '_sincosf_sign_1_24'
;------------------------------------------------------------
;../sincosf.c:50: float sincosf(float x, bool iscos)
;	-----------------------------------------
;	 function sincosf
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_sincosf:
;../sincosf.c:56: if(iscos)
	lda	_sincosf_PARM_2
	beq	00105$
;../sincosf.c:58: y=fabsf(x)+HALF_PI;
	lda	(_sincosf_PARM_1 + 3)
	psha
	lda	(_sincosf_PARM_1 + 2)
	psha
	lda	(_sincosf_PARM_1 + 1)
	psha
	lda	_sincosf_PARM_1
	psha
	jsr	_fabsf
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ais	#4
	ldhx	#0x3FC9
	sthx	___fsadd_PARM_2
	ldhx	#0x0FDB
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(_sincosf_y_1_24 + 3)
	stx	(_sincosf_y_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_y_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_y_1_24
;../sincosf.c:59: sign=0;
	clra
	sta	_sincosf_sign_1_24
	bra	00106$
00105$:
;../sincosf.c:63: if(x<0.0)
	ldhx	_sincosf_PARM_1
	sthx	___fslt_PARM_1
	ldhx	(_sincosf_PARM_1 + 2)
	sthx	(___fslt_PARM_1 + 2)
	clrh
	clrx
	sthx	___fslt_PARM_2
	sthx	(___fslt_PARM_2 + 2)
	jsr	___fslt
	tsta
	beq	00102$
;../sincosf.c:64: { y=-x; sign=1; }
	lda	(_sincosf_PARM_1 + 3)
	sta	(_sincosf_y_1_24 + 3)
	lda	(_sincosf_PARM_1 + 2)
	sta	(_sincosf_y_1_24 + 2)
	lda	(_sincosf_PARM_1 + 1)
	sta	(_sincosf_y_1_24 + 1)
	lda	_sincosf_PARM_1
	eor	#0x80
	sta	_sincosf_y_1_24
	lda	#0x01
	sta	_sincosf_sign_1_24
	bra	00106$
00102$:
;../sincosf.c:66: { y=x; sign=0; }
	ldhx	_sincosf_PARM_1
	sthx	_sincosf_y_1_24
	ldhx	(_sincosf_PARM_1 + 2)
	sthx	(_sincosf_y_1_24 + 2)
	clra
	sta	_sincosf_sign_1_24
00106$:
;../sincosf.c:69: if(y>YMAX)
	ldhx	_sincosf_y_1_24
	sthx	___fsgt_PARM_1
	ldhx	(_sincosf_y_1_24 + 2)
	sthx	(___fsgt_PARM_1 + 2)
	ldhx	#0x4649
	sthx	___fsgt_PARM_2
	ldhx	#0x0C00
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	beq	00108$
;../sincosf.c:71: errno=ERANGE;
	ldhx	#0x0022
	sthx	_errno
;../sincosf.c:72: return 0.0;
	clra
	tax
	sta	*___SDCC_hc08_ret2
	sta	*___SDCC_hc08_ret3
	rts
00108$:
;../sincosf.c:76: N=((y*iPI)+0.5); /*y is positive*/
	ldhx	#0x3EA2
	sthx	___fsmul_PARM_1
	ldhx	#0xF983
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_y_1_24
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_y_1_24 + 2)
	sthx	(___fsmul_PARM_2 + 2)
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
	sta	(___fs2sint_PARM_1 + 3)
	stx	(___fs2sint_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fs2sint_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fs2sint_PARM_1
	jsr	___fs2sint
;../sincosf.c:79: if(N&1) sign=!sign;
	psha
	bit	#0x01
	pula
	beq	00110$
	psha
	lda	_sincosf_sign_1_24
	eor	#0x01
	sta	_sincosf_sign_1_24
	pula
00110$:
;../sincosf.c:81: XN=N;
	jsr	___sint2fs
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	lda	*_sincosf_sloc0_1_0
	sta	_sincosf_XN_1_24
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(_sincosf_XN_1_24 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(_sincosf_XN_1_24 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(_sincosf_XN_1_24 + 3)
;../sincosf.c:83: if(iscos) XN-=0.5;
	lda	_sincosf_PARM_2
	beq	00112$
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	ldhx	#0x3F00
	sthx	___fssub_PARM_2
	clrh
	sthx	(___fssub_PARM_2 + 2)
	jsr	___fssub
	sta	(_sincosf_XN_1_24 + 3)
	stx	(_sincosf_XN_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_XN_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_XN_1_24
00112$:
;../sincosf.c:85: y=fabsf(x);
	lda	(_sincosf_PARM_1 + 3)
	psha
	lda	(_sincosf_PARM_1 + 2)
	psha
	lda	(_sincosf_PARM_1 + 1)
	psha
	lda	_sincosf_PARM_1
	psha
	jsr	_fabsf
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	ais	#4
;../sincosf.c:86: r=(int)y;
	lda	*_sincosf_sloc0_1_0
	sta	___fs2sint_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fs2sint_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fs2sint_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fs2sint_PARM_1 + 3)
	jsr	___fs2sint
	jsr	___sint2fs
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
;../sincosf.c:87: g=y-r;
	lda	*_sincosf_sloc0_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_2 + 3)
;../sincosf.c:88: f=((r-XN*C1)+g)-XN*C2;
	jsr	___fssub
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	ldhx	#0x4049
	sthx	___fsmul_PARM_1
	clrh
	clrx
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_XN_1_24
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_XN_1_24 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsadd_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsadd_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsadd_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsadd_PARM_2 + 3)
	jsr	___fsadd
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
	ldhx	#0x3A7D
	sthx	___fsmul_PARM_1
	ldhx	#0xAA22
	sthx	(___fsmul_PARM_1 + 2)
	ldhx	_sincosf_XN_1_24
	sthx	___fsmul_PARM_2
	ldhx	(_sincosf_XN_1_24 + 2)
	sthx	(___fsmul_PARM_2 + 2)
	jsr	___fsmul
	sta	(___fssub_PARM_2 + 3)
	stx	(___fssub_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fssub_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fssub_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fssub_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fssub_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fssub_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fssub_PARM_1 + 3)
	jsr	___fssub
	sta	*(_sincosf_sloc1_1_0 + 3)
	stx	*(_sincosf_sloc1_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc1_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc1_1_0
	lda	*_sincosf_sloc1_1_0
	sta	_sincosf_f_1_24
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(_sincosf_f_1_24 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(_sincosf_f_1_24 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(_sincosf_f_1_24 + 3)
;../sincosf.c:90: g=f*f;
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;../sincosf.c:91: if(g>EPS2) //Used to be if(fabsf(f)>EPS)
	jsr	___fsmul
	sta	*(_sincosf_sloc0_1_0 + 3)
	stx	*(_sincosf_sloc0_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_sincosf_sloc0_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_sincosf_sloc0_1_0
	lda	*_sincosf_sloc0_1_0
	sta	___fsgt_PARM_1
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsgt_PARM_1 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsgt_PARM_1 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsgt_PARM_1 + 3)
	ldhx	#0x337F
	sthx	___fsgt_PARM_2
	ldhx	#0xFFF3
	sthx	(___fsgt_PARM_2 + 2)
	jsr	___fsgt
	tsta
	bne	00153$
	jmp	00114$
00153$:
;../sincosf.c:93: r=(((r4*g+r3)*g+r2)*g+r1)*g;
	ldhx	#0x362E
	sthx	___fsmul_PARM_1
	ldhx	#0x9C5B
	sthx	(___fsmul_PARM_1 + 2)
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xB94F
	sthx	___fsadd_PARM_2
	ldhx	#0xB222
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0x3C08
	sthx	___fsadd_PARM_2
	ldhx	#0x873E
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_1 + 3)
	stx	(___fsadd_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_1
	ldhx	#0xBE2A
	sthx	___fsadd_PARM_2
	ldhx	#0xAAA4
	sthx	(___fsadd_PARM_2 + 2)
	jsr	___fsadd
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	lda	*_sincosf_sloc0_1_0
	sta	___fsmul_PARM_2
	lda	*(_sincosf_sloc0_1_0 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	*(_sincosf_sloc0_1_0 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	*(_sincosf_sloc0_1_0 + 3)
	sta	(___fsmul_PARM_2 + 3)
;../sincosf.c:94: f+=f*r;
	jsr	___fsmul
	sta	(___fsmul_PARM_2 + 3)
	stx	(___fsmul_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fsmul_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsmul_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsmul_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsmul_PARM_1 + 3)
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	lda	*_sincosf_sloc1_1_0
	sta	___fsadd_PARM_1
	lda	*(_sincosf_sloc1_1_0 + 1)
	sta	(___fsadd_PARM_1 + 1)
	lda	*(_sincosf_sloc1_1_0 + 2)
	sta	(___fsadd_PARM_1 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	sta	(___fsadd_PARM_1 + 3)
	jsr	___fsadd
	sta	(_sincosf_f_1_24 + 3)
	stx	(_sincosf_f_1_24 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_sincosf_f_1_24 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_sincosf_f_1_24
00114$:
;../sincosf.c:96: return (sign?-f:f);
	lda	_sincosf_sign_1_24
	beq	00117$
	lda	(_sincosf_f_1_24 + 3)
	sta	*(_sincosf_sloc1_1_0 + 3)
	lda	(_sincosf_f_1_24 + 2)
	sta	*(_sincosf_sloc1_1_0 + 2)
	lda	(_sincosf_f_1_24 + 1)
	sta	*(_sincosf_sloc1_1_0 + 1)
	lda	_sincosf_f_1_24
	eor	#0x80
	sta	*_sincosf_sloc1_1_0
	bra	00118$
00117$:
	ldhx	_sincosf_f_1_24
	sthx	*_sincosf_sloc1_1_0
	ldhx	(_sincosf_f_1_24 + 2)
	sthx	*(_sincosf_sloc1_1_0 + 2)
00118$:
	mov	*_sincosf_sloc1_1_0,*___SDCC_hc08_ret3
	mov	*(_sincosf_sloc1_1_0 + 1),*___SDCC_hc08_ret2
	ldx	*(_sincosf_sloc1_1_0 + 2)
	lda	*(_sincosf_sloc1_1_0 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
