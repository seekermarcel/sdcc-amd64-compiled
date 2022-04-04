;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:29 2022
;--------------------------------------------------------
	.module sincoshf
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
	.globl _sincoshf
	.globl _expf
	.globl _sincoshf_PARM_2
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
_sincoshf_PARM_2:
	.ds 1
_sincoshf_x_1_23:
	.ds 4
_sincoshf_z_1_24:
	.ds 4
_sincoshf_sloc0_1_0:
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
;Allocation info for local variables in function 'sincoshf'
;------------------------------------------------------------
;iscosh                    Allocated with name '_sincoshf_PARM_2'
;x                         Allocated with name '_sincoshf_x_1_23'
;y                         Allocated to registers r6 r7 r0 r1 
;w                         Allocated to registers r3 r4 r5 r6 
;z                         Allocated with name '_sincoshf_z_1_24'
;sign                      Allocated to registers r2 
;sloc0                     Allocated with name '_sincoshf_sloc0_1_0'
;------------------------------------------------------------
;	sincoshf.c:56: float sincoshf(float x, bool iscosh)
;	-----------------------------------------
;	 function sincoshf
;	-----------------------------------------
_sincoshf:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
	mov     dps, #1
	mov     dptr, #_sincoshf_x_1_23
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
;	sincoshf.c:61: if (x<0.0) { y=-x; sign=1; }
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
	inc	dps
	mov	dptr,#_sincoshf_x_1_23
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
	jz  00102$
00144$:
	mov	dptr,#_sincoshf_x_1_23
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
	cpl	acc[7]
	mov	r1,a
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x01
	sjmp 00103$
00102$:
;	sincoshf.c:62: else { y=x;  sign=0; }
	mov	dptr,#_sincoshf_x_1_23
;	genAssign: resultIsFar = TRUE
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
;	genAssign: resultIsFar = FALSE
	mov	r2,#0x00
00103$:
;	sincoshf.c:64: if ((y>1.0) || iscosh)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsgt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	push	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsgt
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar2
	mov	a,dpl
	jnz  00117$
00145$:
	mov	dptr,#_sincoshf_PARM_2
	movx	a,@dptr
	jnz	00146$
	ljmp	00118$
00146$:
00117$:
;	sincoshf.c:66: if(y>YBAR)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsgt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x10
	movx	@dptr,a
	inc	dptr
	mov	a,#0x41
	movx	@dptr,a
	push	ar2
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsgt
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
	pop	ar2
	mov	a,dpl
	jnz	00147$
	ljmp	00110$
00147$:
;	sincoshf.c:68: w=y-K1;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fssub_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x73
	movx	@dptr,a
	inc	dptr
	mov	a,#0x31
	movx	@dptr,a
	inc	dptr
	mov	a,#0x3F
	movx	@dptr,a
	push	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fssub
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = FALSE
;	sincoshf.c:69: if (w>WMAX)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsgt_PARM_2
	mov	a,#0xCF
	movx	@dptr,a
	inc	dptr
	mov	a,#0xBD
	movx	@dptr,a
	inc	dptr
	mov	a,#0x33
	movx	@dptr,a
	inc	dptr
	mov	a,#0x42
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	___fsgt
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
	mov	a,dpl
	jz  00105$
00148$:
;	sincoshf.c:71: errno=ERANGE;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_errno
	mov	a,#0x22
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
;	sincoshf.c:72: z=HUGE_VALF;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
	mov  a,#0xFF
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	inc	dptr
	mov  a,#0x7F
	movx @dptr,a
	inc  dptr
	movx @dptr,a
	ljmp	00111$
00105$:
;	sincoshf.c:76: z=expf(w);
	push	ar2
	mov	dpl,r3
	mov	dph,r4
	mov	dpx,r5
	mov	b,r6
	lcall	_expf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	sincoshf.c:77: z+=K3*z;
	mov	dptr,#_sincoshf_z_1_24
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
	mov	dptr,#0x680897
	mov	b,#0x37
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar2
	inc	dps
	mov	dptr,#_sincoshf_z_1_24
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
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	ljmp	00111$
00110$:
;	sincoshf.c:82: z=expf(y);
	push	ar2
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	_expf
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
;	sincoshf.c:83: w=1.0/z;
	mov	dptr,#_sincoshf_z_1_24
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#___fsdiv_PARM_2
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
	mov  dptr,#0x0000
	mov	dpx,#0x80
	mov	b,#0x3F
	lcall	___fsdiv
	mov     dps, #1
	mov     dptr, #_sincoshf_sloc0_1_0
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
	pop	ar2
	mov	dptr,#_sincoshf_sloc0_1_0
;	genAssign: resultIsFar = FALSE
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
	mov	r6,a
;	sincoshf.c:84: if(!iscosh) w=-w;
	mov	dptr,#_sincoshf_PARM_2
	movx	a,@dptr
	jnz  00108$
00149$:
	mov	a,r6
	cpl	acc[7]
	mov	r6,a
00108$:
;	sincoshf.c:85: z=(z+w)*0.5;
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar2
	inc	dps
	mov	dptr,#_sincoshf_z_1_24
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
	lcall	___fsadd
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsmul_PARM_2
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
	push	ar2
	mov  dptr,#0x0000
	mov	b,#0x3F
	lcall	___fsmul
	mov	r3,dpl
	mov	r4,dph
	mov	r5,dpx
	mov	r6,b
	pop	ar2
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
	inc	dptr
	mov	a,r6
	movx	@dptr,a
00111$:
;	sincoshf.c:87: if(sign) z=-z;
	mov	a,r2
	jnz	00150$
	ljmp	00119$
00150$:
	mov	dptr,#_sincoshf_z_1_24
	mov	dps, #1
	mov	dptr, #_sincoshf_z_1_24
	dec	dps
	movx	a,@dptr
	inc	dps
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	inc	dps
	inc	dptr
	movx	@dptr,a
	dec	dps
	inc	dptr
	movx	a,@dptr
	cpl	acc[7]
	inc	dps
	inc	dptr
	movx	@dptr,a
	mov	dps,#0
	ljmp	00119$
00118$:
;	sincoshf.c:91: if (y<EPS)
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fslt_PARM_2
	clr	a
	movx	@dptr,a
	inc	dptr
	clr	a
	movx	@dptr,a
	inc	dptr
	mov	a,#0x80
	movx	@dptr,a
	inc	dptr
	mov	a,#0x39
	movx	@dptr,a
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fslt
	mov	a,dpl
	jz  00115$
00151$:
;	sincoshf.c:92: z=x;
	mov	dptr,#_sincoshf_x_1_23
;	genAssign: resultIsFar = TRUE
	mov	dps,#0x21
	mov	dptr,#_sincoshf_z_1_24
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
	ljmp	00119$
00115$:
;	sincoshf.c:95: z=x*x;
	mov	dptr,#_sincoshf_x_1_23
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
	mov	dps, #1
	mov	dptr,#_sincoshf_x_1_23
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
	mov	dptr,#_sincoshf_z_1_24
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
;	sincoshf.c:96: z=x+x*z*P(z)/Q(z);
	mov	dptr,#_sincoshf_z_1_24
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
	mov	dps, #1
	mov	dptr,#_sincoshf_x_1_23
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
	mov	dptr,#_sincoshf_z_1_24
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
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dptr,#0x42E6EA
	mov	b,#0xBE
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0xF0
	movx	@dptr,a
	inc	dptr
	mov	a,#0x69
	movx	@dptr,a
	inc	dptr
	mov	a,#0xE4
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC0
	movx	@dptr,a
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
	pop	ar1
	pop	ar0
	pop	ar7
	pop	ar6
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
	mov	dpl,r6
	mov	dph,r7
	mov	dpx,r0
	mov	b,r1
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
	mov	a,#0x93
	movx	@dptr,a
	inc	dptr
	mov	a,#0x4F
	movx	@dptr,a
	inc	dptr
	mov	a,#0x2B
	movx	@dptr,a
	inc	dptr
	mov	a,#0xC2
	movx	@dptr,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	inc	dps
	mov	dptr,#_sincoshf_z_1_24
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
	lcall	___fsadd
	mov	r6,dpl
	mov	r7,dph
	mov	r0,dpx
	mov	r1,b
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
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
	mov	dpl,r2
	mov	dph,r3
	mov	dpx,r4
	mov	b,r5
	lcall	___fsdiv
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#___fsadd_PARM_2
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
	inc	dps
	mov	dptr,#_sincoshf_x_1_23
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
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,dpx
	mov	r5,b
;	genAssign: resultIsFar = TRUE
	mov	dptr,#_sincoshf_z_1_24
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
00119$:
;	sincoshf.c:99: return z;
	mov     dps, #1
	mov     dptr, #_sincoshf_z_1_24
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
00121$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
