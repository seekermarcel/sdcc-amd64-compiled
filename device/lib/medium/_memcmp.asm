;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:44 2022
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mmcs51 --model-medium
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp_PARM_3
	.globl _memcmp_PARM_2
	.globl _memcmp
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
_memcmp_sloc0_1_0:
	.ds 3
_memcmp_sloc1_1_0:
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
_memcmp_PARM_2:
	.ds 3
_memcmp_PARM_3:
	.ds 2
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
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
;Allocation info for local variables in function 'memcmp'
;------------------------------------------------------------
;sloc0                     Allocated with name '_memcmp_sloc0_1_0'
;sloc1                     Allocated with name '_memcmp_sloc1_1_0'
;------------------------------------------------------------
;	_memcmp.c:31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	-----------------------------------------
;	 function memcmp
;	-----------------------------------------
_memcmp:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	_memcmp.c:33: if (!count)
	mov	r0,#_memcmp_PARM_3
	movx	a,@r0
	mov	b,a
	inc	r0
	movx	a,@r0
	orl	a,b
	jnz	00112$
;	_memcmp.c:34: return(0);
	mov	dptr,#0x0000
	ret
;	_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	mov	r0,#_memcmp_PARM_3
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
00104$:
	dec	r3
	cjne	r3,#0xFF,00123$
	dec	r4
00123$:
	mov	a,r3
	orl	a,r4
	jz	00106$
	push	ar3
	push	ar4
	mov	_memcmp_sloc0_1_0,r5
	mov	(_memcmp_sloc0_1_0 + 1),r6
	mov	(_memcmp_sloc0_1_0 + 2),r7
	mov	dpl,_memcmp_sloc0_1_0
	mov	dph,(_memcmp_sloc0_1_0 + 1)
	mov	b,(_memcmp_sloc0_1_0 + 2)
	lcall	__gptrget
	mov	r2,a
	mov	r0,#_memcmp_PARM_2
	movx	a,@r0
	mov	_memcmp_sloc1_1_0,a
	inc	r0
	movx	a,@r0
	mov	(_memcmp_sloc1_1_0 + 1),a
	inc	r0
	movx	a,@r0
	mov	(_memcmp_sloc1_1_0 + 2),a
	mov	dpl,_memcmp_sloc1_1_0
	mov	dph,(_memcmp_sloc1_1_0 + 1)
	mov	b,(_memcmp_sloc1_1_0 + 2)
	lcall	__gptrget
	mov	r4,a
	mov	a,r2
	cjne	a,ar4,00125$
	sjmp	00126$
00125$:
	pop	ar4
	pop	ar3
	sjmp	00106$
00126$:
;	_memcmp.c:37: buf1 = (char *)buf1 + 1;
	mov	a,#0x01
	add	a,_memcmp_sloc0_1_0
	mov	r2,a
	clr	a
	addc	a,(_memcmp_sloc0_1_0 + 1)
	mov	r3,a
	mov	r4,(_memcmp_sloc0_1_0 + 2)
	mov	ar5,r2
	mov	ar6,r3
	mov	ar7,r4
;	_memcmp.c:38: buf2 = (char *)buf2 + 1;
	mov	a,#0x01
	add	a,_memcmp_sloc1_1_0
	mov	r2,a
	clr	a
	addc	a,(_memcmp_sloc1_1_0 + 1)
	mov	r3,a
	mov	r4,(_memcmp_sloc1_1_0 + 2)
	mov	r0,#_memcmp_PARM_2
	mov	a,r2
	movx	@r0,a
	inc	r0
	mov	a,r3
	movx	@r0,a
	inc	r0
	mov	a,r4
	movx	@r0,a
	pop	ar4
	pop	ar3
	sjmp	00104$
00106$:
;	_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r5,a
	mov	r7,#0x00
	mov	r0,#_memcmp_PARM_2
	movx	a,@r0
	mov	r3,a
	inc	r0
	movx	a,@r0
	mov	r4,a
	inc	r0
	movx	a,@r0
	mov	r6,a
	mov	dpl,r3
	mov	dph,r4
	mov	b,r6
	lcall	__gptrget
	mov	r3,a
	mov	r6,#0x00
	mov	a,r5
	clr	c
	subb	a,r3
	mov	dpl,a
	mov	a,r7
	subb	a,r6
	mov	dph,a
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
