;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:47 2022
;--------------------------------------------------------
	.module _strcmp
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcmp_PARM_2
	.globl _strcmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
_strcmp_sloc0_1_0:
	.ds 3
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_strcmp_PARM_2:
	.ds 3
_strcmp_asrc_1_21:
	.ds 3
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
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
;Allocation info for local variables in function 'strcmp'
;------------------------------------------------------------
;adst                      Allocated with name '_strcmp_PARM_2'
;asrc                      Allocated with name '_strcmp_asrc_1_21'
;ret                       Allocated to registers r2 r3 
;sloc0                     Allocated with name '_strcmp_sloc0_1_0'
;------------------------------------------------------------
;	_strcmp.c:34: int strcmp ( const char * asrc, const char * adst )
;	-----------------------------------------
;	 function strcmp
;	-----------------------------------------
_strcmp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r7,b
	mov	r6,dph
	mov	a,dpl
	mov	dptr,#_strcmp_asrc_1_21
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strcmp.c:50: while( ! (ret = *(unsigned char *)asrc - *(unsigned char *)adst) && *adst)
	mov	dptr,#_strcmp_asrc_1_21
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_strcmp_PARM_2
	movx	a,@dptr
	mov	_strcmp_sloc0_1_0,a
	inc	dptr
	movx	a,@dptr
	mov	(_strcmp_sloc0_1_0 + 1),a
	inc	dptr
	movx	a,@dptr
	mov	(_strcmp_sloc0_1_0 + 2),a
00102$:
	mov	ar0,r5
	mov	ar1,r6
	mov	ar4,r7
	mov	dpl,r0
	mov	dph,r1
	mov	b,r4
	lcall	__gptrget
	mov	r0,a
	mov	r4,#0x00
	mov	r1,_strcmp_sloc0_1_0
	mov	r2,(_strcmp_sloc0_1_0 + 1)
	mov	r3,(_strcmp_sloc0_1_0 + 2)
	mov	dpl,r1
	mov	dph,r2
	mov	b,r3
	lcall	__gptrget
	mov	r1,a
	mov	r3,#0x00
	mov	a,r0
	clr	c
	subb	a,r1
	mov	r0,a
	mov	a,r4
	subb	a,r3
	mov	r4,a
	mov	ar2,r0
	mov	ar3,r4
	mov	a,r0
	orl	a,r4
	jnz	00110$
	mov	dpl,_strcmp_sloc0_1_0
	mov	dph,(_strcmp_sloc0_1_0 + 1)
	mov	b,(_strcmp_sloc0_1_0 + 2)
	lcall	__gptrget
	jz	00110$
;	_strcmp.c:51: ++asrc, ++adst;
	inc	r5
	cjne	r5,#0x00,00119$
	inc	r6
00119$:
	mov	dptr,#_strcmp_asrc_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
	inc	_strcmp_sloc0_1_0
	clr	a
	cjne	a,_strcmp_sloc0_1_0,00102$
	inc	(_strcmp_sloc0_1_0 + 1)
	sjmp	00102$
00110$:
	mov	dptr,#_strcmp_asrc_1_21
	mov	a,r5
	movx	@dptr,a
	mov	a,r6
	inc	dptr
	movx	@dptr,a
	mov	a,r7
	inc	dptr
	movx	@dptr,a
;	_strcmp.c:53: return( ret );
	mov	dpl,r2
	mov	dph,r3
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
