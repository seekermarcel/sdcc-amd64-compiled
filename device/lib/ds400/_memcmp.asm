;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:30 2022
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mds400 --model-flat24
	
;--------------------------------------------------------
; CPU specific extensions
;--------------------------------------------------------
	.DS80C390
	.amode	2	; 24 bit flat addressing
dpl	=	0x82
dph	=	0x83
dpl1	=	0x84
dph1	=	0x85
dps	=	0x86
dpx	=	0x93
dpx1	=	0x95
esp	=	0x9B
ap	=	0x9C
acc1	=	0x9C
mcnt0	=	0xD1
mcnt1	=	0xD2
ma	=	0xD3
mb	=	0xD4
mc	=	0xD5
acon	=	0x9D
F1	=	0xD1	; user flag
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
	.area REG_BANK_3	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
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
_memcmp_PARM_2:
	.ds 4
_memcmp_PARM_3:
	.ds 2
_memcmp_sloc0_1_0:
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;buf2                      Allocated with name '_memcmp_PARM_2'
;count                     Allocated with name '_memcmp_PARM_3'
;buf1                      Allocated to registers r2 r3 r4 r5 
;sloc0                     Allocated with name '_memcmp_sloc0_1_0'
;------------------------------------------------------------
;	_memcmp.c:31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	_memcmp.c:33: if (!count)
	mov	dptr,#_memcmp_PARM_3
	movx	a,@dptr
	mov	b,a
	inc	dptr
	movx	a,@dptr
	orl	a,b
	jnz  00112$
00122$:
;	_memcmp.c:34: return(0);
	mov  dptr,#0x0000
	ljmp	00107$
;	_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	mov	dptr,#_memcmp_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
00104$:
	dec	r6
	cjne	r6,#0xFF,00123$
	dec	r7
00123$:
	mov	a,r6
	orl	a,r7
	jnz	00124$
	ljmp	00106$
00124$:
	push	ar6
	push	ar7
;	genAssign: resultIsFar = FALSE
	mov	ar0,r2
	mov	ar1,r3
	mov	ar6,r4
	mov	ar7,r5
	mov	dpl,r0
	mov	dph,r1
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_memcmp_PARM_2
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memcmp_sloc0_1_0
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	inc	dptr
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov     dps, #1
	mov     dptr, #_memcmp_sloc0_1_0
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	inc	dptr
	movx	a,@dptr
	mov	dpx,a
	inc	dptr
	movx	a,@dptr
	mov	b,a
	mov	dps,#0
	lcall	__gptrget
	mov	r7,a
	mov	a,r6
	cjne	a,ar7,00125$
	sjmp	00126$
00125$:
	pop	ar7
	pop	ar6
	sjmp 00106$
00126$:
	pop	ar7
	pop	ar6
;	_memcmp.c:37: buf1 = (char *)buf1 + 1;
	push	ar6
	push	ar7
;	genAssign: resultIsFar = FALSE
	mov	ar0,r2
	mov	ar1,r3
	mov	ar6,r4
	mov	ar7,r5
	inc	r0
	cjne	r0,#0x00,00127$
	inc	r1
	cjne	r1,#0x00,00127$
	inc	r6
00127$:
	mov	ar2,r0
	mov	ar3,r1
	mov	ar4,r6
	mov	ar5,r7
;	_memcmp.c:38: buf2 = (char *)buf2 + 1;
	mov	dptr,#_memcmp_sloc0_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	r6
	cjne	r6,#0x00,00128$
	inc	r7
	cjne	r7,#0x00,00128$
	inc	r0
00128$:
	mov	dptr,#_memcmp_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	inc	dptr
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	pop	ar7
	pop	ar6
	ljmp	00104$
00106$:
;	_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
;	genAssign: resultIsFar = FALSE
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	__gptrget
	mov	r2,a
	mov	r3,#0x00
	mov	dptr,#_memcmp_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	mov	r5,#0x00
	clr	c
	mov	a,r2
	subb	a,r4
	mov	dpl,a
	mov	a,r3
	subb	a,r5
	mov	dph,a
00107$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
