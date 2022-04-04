;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:28 2022
;--------------------------------------------------------
	.module expf
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
	.globl _ldexpf
	.globl _expf
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
;Allocation info for local variables in function 'expf'
;------------------------------------------------------------
;x                         Allocated to registers r2 r3 r4 r5 
;n                         Allocated to stack - _bp +5
;xn                        Allocated to registers r2 r3 r4 r5 
;g                         Allocated to stack - _bp +7
;r                         Allocated to stack - _bp +11
;z                         Allocated to registers r2 r3 r4 r5 
;y                         Allocated to stack - _bp +15
;sign                      Allocated to stack - _bp +19
;sloc0                     Allocated to stack - _bp +1
;------------------------------------------------------------
;	expf.c:330: float expf(float x) _FLOAT_FUNC_REENTRANT
;	-----------------------------------------
;	 function expf
;	-----------------------------------------
_expf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	push	_bpx
	push	_bpx+1
	mov	_bpx,sp
	mov	_bpx+1,esp
	anl	_bpx+1,#3
	orl	_bpx+1,#0xDC
	mov	a,sp
	add	a,#0x13
	mov	sp,a
	mov	a,esp
	anl	a,#3
	orl	a,#0xDC
	addc	a,#0x00
	mov	esp,a
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	expf.c:336: if(x>=0.0)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fslt
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jnz  00102$
00141$:
;	expf.c:337: { y=x;  sign=0; }
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
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
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xED
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	clr	a
	movx	@dptr,a
	sjmp 00103$
00102$:
;	expf.c:339: { y=-x; sign=1; }
	mov	a,r5
	cpl	acc[7]
	mov	r5,a
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
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
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xED
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	mov	a,#0x01
	movx	@dptr,a
00103$:
;	expf.c:341: if(y<EXPEPS) return 1.0;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	mov	a,#0x95
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xD6
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
	movx	@dptr,a
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	___fslt
	mov	a,dpl
	jz  00105$
00142$:
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3F
	ljmp	00118$
00105$:
;	expf.c:343: if(y>BIGX)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0x18
	movx	@dptr,a
	inc	dptr
	mov	a,#0x72
	movx	@dptr,a
	inc	dptr
	mov	a,#0xB1
	movx	@dptr,a
	inc	dptr
	mov	a,#0x42
	movx	@dptr,a
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	___fsgt
	mov	a,dpl
	jz  00110$
00143$:
;	expf.c:345: if(sign)
	mov	a,_bpx
	clr	c
	subb	a,#0xED
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	movx	a,@dptr
	jz  00107$
00144$:
;	expf.c:347: errno=ERANGE;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	expf.c:349: ;
	mov	dptr,#0x7FFFFF
	mov	b,#0x7F
	ljmp	00118$
00107$:
;	expf.c:353: return 0.0;
	mov  dptr,#0x0000
	mov	b,#0x00
	ljmp	00118$
00110$:
;	expf.c:357: z=y*K1;
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	mov	dptr,#0xB8AA3B
	mov	b,#0x3F
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
;	expf.c:358: n=z;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fs2sint
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	expf.c:360: if(n<0) --n;
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	inc	dptr
	movx	a,@dptr
	jnb  acc[7],00112$
00145$:
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	movx	a,@dptr
	add	a,#0xFF
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0xFF
	mov	r1,a
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
00112$:
;	expf.c:361: if(z-n>=0.5) ++n;
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	lcall	___sint2fs
	mov	r0,dpl
	mov	r1,dph
	mov	r6,dpx
	mov	r7,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	mov	a,r0
	movx	@dptr,a
	inc	dptr
	mov	a,r1
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fslt
	mov	a,dpl
	jnz  00114$
00146$:
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	movx	@dptr,a
00114$:
;	expf.c:362: xn=n;
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
	movx	a,@dptr
	mov	dpl,a
	inc	dptr
	movx	a,@dptr
	mov	dph,a
	mov	dps,#0
	lcall	___sint2fs
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = FALSE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	expf.c:363: g=((y-xn*C1))-xn*C2;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x318000
	mov	b,#0x3F
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,_bpx
	clr	c
	subb	a,#0xF1
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	___fssub
	mov	dpx1,#0xFF
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
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
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	mov	dptr,#0x5E8083
	mov	b,#0xB9
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
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
	mov	dpx1,#0xFF
	mov	dph1,_bpx+1
	mov	dpl1,_bpx
	mov	dps,#1
	inc	dptr
	mov	dps, #1
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
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xF9
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
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
;	expf.c:364: z=g*g;
	mov	a,_bpx
	clr	c
	subb	a,#0xF9
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	mov	a,_bpx
	clr	c
	subb	a,#0xF9
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	expf.c:365: r=P(z)*g;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dptr,#0x885308
	mov	b,#0x3B
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3E
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,_bpx
	clr	c
	subb	a,#0xF9
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsmul_PARM_2
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
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xF5
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
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
;	expf.c:366: r=0.5+(r/(Q(z)-r));
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
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
	mov	dptr,#0x4CBF5B
	mov	b,#0x3D
	lcall	___fsmul
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	mov	a,_bpx
	clr	c
	subb	a,#0xF5
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fssub_PARM_2
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fssub
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
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
	mov	a,_bpx
	clr	c
	subb	a,#0xF5
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	___fsdiv
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	a,_bpx
	clr	c
	subb	a,#0xF5
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
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
;	expf.c:368: n++;
	mov	a,_bpx
	clr	c
	subb	a,#0xFB
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	mov	dps, #1
	mov	dptr, #_ldexpf_PARM_2
	dec	dps
	movx	a,@dptr
	add	a,#0x01
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	addc	a,#0x00
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
;	expf.c:369: z=ldexpf(r, n);
	mov	a,_bpx
	clr	c
	subb	a,#0xF5
	mov	dpl1,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph1,a
	mov	dpx1,#0xFF
	inc	dps
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
	lcall	_ldexpf
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
;	genAssign: resultIsFar = TRUE
	mov	ar2,r6
	mov	ar3,r7
	mov	ar4,r0
	mov	ar5,r1
;	expf.c:370: if(sign)
	mov	a,_bpx
	clr	c
	subb	a,#0xED
	mov	dpl,a
	mov	a,_bpx+1
	subb	a,#0xFF
	mov	dph,a
	mov	dpx,#0xFF
	movx	a,@dptr
	jz  00116$
00147$:
;	expf.c:371: return 1.0/z;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsdiv_PARM_2
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
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3F
	lcall	___fsdiv
	sjmp 00118$
00116$:
;	expf.c:373: return z;
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
00118$:
	mov	sp,_bpx
	mov	esp,_bpx+1
	pop	_bpx+1
	pop	_bpx
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
