;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:31 2022
;--------------------------------------------------------
	.module _memmove
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
	.globl _memmove_PARM_3
	.globl _memmove_PARM_2
	.globl _memmove
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
_memmove_PARM_2:
	.ds 4
_memmove_PARM_3:
	.ds 2
_memmove_dst_1_21:
	.ds 4
_memmove_ret_1_22:
	.ds 4
_memmove_d_1_22:
	.ds 4
_memmove_sloc0_1_0:
	.ds 2
_memmove_sloc1_1_0:
	.ds 4
_memmove_sloc2_1_0:
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
;Allocation info for local variables in function 'memmove'
;------------------------------------------------------------
;src                       Allocated with name '_memmove_PARM_2'
;acount                    Allocated with name '_memmove_PARM_3'
;dst                       Allocated with name '_memmove_dst_1_21'
;ret                       Allocated with name '_memmove_ret_1_22'
;d                         Allocated with name '_memmove_d_1_22'
;s                         Allocated to registers r6 r7 r0 r1 
;sloc0                     Allocated with name '_memmove_sloc0_1_0'
;sloc1                     Allocated with name '_memmove_sloc1_1_0'
;sloc2                     Allocated with name '_memmove_sloc2_1_0'
;------------------------------------------------------------
;	_memmove.c:40: void * memmove (void * dst, const void * src, size_t acount)
;	-----------------------------------------
;	 function memmove
;	-----------------------------------------
_memmove:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_memmove_dst_1_21
	mov	a,dpl
	movx	@dptr,a
	inc	dptr
	mov	a,dph
	movx	@dptr,a
	inc	dptr
	mov	a,dpx
	movx	@dptr,a
	inc	dptr
	mov	a,b
	movx	@dptr,a
	mov	dps,#0
;	_memmove.c:42: void * ret = dst;
	mov	dptr,#_memmove_dst_1_21
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_memmove_ret_1_22
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
	mov	dps,#0
;	_memmove.c:46: if ((uintptr_t)src < (uintptr_t)dst) {
	mov	dptr,#_memmove_PARM_2
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	mov	dptr,#_memmove_sloc0_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	mov	dptr,#_memmove_dst_1_21
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	mov	r7,a
	mov	dptr,#_memmove_sloc0_1_0
	clr	c
	movx	a,@dptr
	subb	a,r0
	inc	dptr
	movx	a,@dptr
	subb	a,r1
	jc	00129$
	ljmp	00108$
00129$:
;	_memmove.c:50: d = ((char *)dst)+acount-1;
	mov	dptr,#_memmove_dst_1_21
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
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	add	a,r6
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	dec	r6
	cjne	r6,#0xFF,00130$
	dec	r7
	cjne	r7,#0xFF,00130$
	dec	r0
00130$:
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_memmove_d_1_22
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
;	_memmove.c:51: s = ((char *)src)+acount-1;
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	mov	ar0,r4
	mov	ar1,r5
	mov	dptr,#_memmove_PARM_3
	movx	a,@dptr
	add	a,r6
	mov	r6,a
	inc	dptr
	movx	a,@dptr
	addc	a,r7
	mov	r7,a
	clr	a
	addc	a,r0
	mov	r0,a
	dec	r6
	cjne	r6,#0xFF,00131$
	dec	r7
	cjne	r7,#0xFF,00131$
	dec	r0
00131$:
;	genAssign: resultIsFar = TRUE
;	_memmove.c:52: while (acount--) {
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_memmove_sloc2_1_0
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
	mov	dptr,#_memmove_d_1_22
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
	mov	dptr,#_memmove_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
00101$:
;	genAssign: resultIsFar = FALSE
	mov	ar6,r2
	mov	ar7,r3
	dec	r2
	cjne	r2,#0xFF,00132$
	dec	r3
00132$:
	mov	a,r6
	orl	a,r7
	jnz	00133$
	ljmp	00109$
00133$:
;	_memmove.c:53: *d-- = *s--;
	mov	dptr,#_memmove_sloc2_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r6,a
	mov	dptr,#_memmove_sloc2_1_0
	movx	a,@dptr
	add	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dpl,r4
	mov	dph,r5
	mov	dpx,r0
	mov	b,r1
	mov	a,r6
	lcall	__gptrput
	dec	r4
	cjne	r4,#0xFF,00134$
	dec	r5
	cjne	r5,#0xFF,00134$
	dec	r0
00134$:
	sjmp 00101$
00108$:
;	_memmove.c:60: d = dst;
	mov	dptr,#_memmove_dst_1_21
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
;	_memmove.c:61: s = src;
;	genAssign: resultIsFar = FALSE
	mov	dptr,#_memmove_sloc1_1_0
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	_memmove.c:62: while (acount--) {
	mov	dptr,#_memmove_PARM_3
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
00104$:
;	genAssign: resultIsFar = FALSE
	mov	ar2,r4
	mov	ar3,r5
	dec	r4
	cjne	r4,#0xFF,00135$
	dec	r5
00135$:
	mov	a,r2
	orl	a,r3
	jz  00109$
00136$:
;	_memmove.c:63: *d++ = *s++;
	mov	dptr,#_memmove_sloc1_1_0
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	push	acc
	inc	dptr
	movx	a,@dptr
	mov	b,a
	pop	dpx
	pop	dph
	pop	dpl
	lcall	__gptrget
	mov	r2,a
	mov	dptr,#_memmove_sloc1_1_0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	mov	a,r2
	lcall	__gptrput
	inc	dptr
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	sjmp 00104$
00109$:
;	_memmove.c:67: return(ret);
	mov     dps, #1
	mov     dptr, #_memmove_ret_1_22
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
00110$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
