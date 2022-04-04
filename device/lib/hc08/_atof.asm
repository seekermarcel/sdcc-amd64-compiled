;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:31 2022
;--------------------------------------------------------
	.module _atof
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
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_atof_sloc0_1_0:
	.ds 2
_atof_sloc1_1_0:
	.ds 2
_atof_sloc2_1_0:
	.ds 2
_atof_sloc3_1_0:
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
_atof_value_1_37:
	.ds 4
_atof_fraction_1_37:
	.ds 4
_atof_sign_1_37:
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
;Allocation info for local variables in function 'atof'
;------------------------------------------------------------
;sloc0                     Allocated with name '_atof_sloc0_1_0'
;sloc1                     Allocated with name '_atof_sloc1_1_0'
;sloc2                     Allocated with name '_atof_sloc2_1_0'
;sloc3                     Allocated with name '_atof_sloc3_1_0'
;s                         Allocated to registers 
;value                     Allocated with name '_atof_value_1_37'
;fraction                  Allocated with name '_atof_fraction_1_37'
;iexp                      Allocated to registers x 
;sign                      Allocated with name '_atof_sign_1_37'
;------------------------------------------------------------
;../_atof.c:33: float atof(const char * s)
;	-----------------------------------------
;	 function atof
;	-----------------------------------------
;	Register assignment might be sub-optimal.
;	Stack space usage: 0 bytes.
_atof:
	sta	*(_atof_sloc0_1_0 + 1)
	stx	*_atof_sloc0_1_0
;../_atof.c:40: while (isspace(*s)) s++;
00101$:
	ldhx	*_atof_sloc0_1_0
	lda	,x
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	jsr	_isspace
	pshx
	ldhx	*_atof_sloc0_1_0
	aix	#1
	sthx	*_atof_sloc1_1_0
	pulx
	tsta
	bne	00190$
	tstx
00190$:
	beq	00145$
	mov	*_atof_sloc1_1_0,*_atof_sloc0_1_0
	mov	*(_atof_sloc1_1_0 + 1),*(_atof_sloc0_1_0 + 1)
	bra	00101$
00145$:
	ldhx	*_atof_sloc0_1_0
;../_atof.c:43: if (*s == '-')
	pshx
	pshh
	ldhx	*_atof_sloc0_1_0
	lda	,x
	pulh
	pulx
	cmp	#0x2D
	bne	00107$
;../_atof.c:45: sign=1;
	lda	#0x01
	sta	_atof_sign_1_37
;../_atof.c:46: s++;
	ldhx	*_atof_sloc1_1_0
	bra	00108$
00107$:
;../_atof.c:50: sign=0;
	psha
	clra
	sta	_atof_sign_1_37
	pula
;../_atof.c:51: if (*s == '+') s++;
	cmp	#0x2B
	bne	00108$
	ldhx	*_atof_sloc1_1_0
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	clra
	sta	_atof_value_1_37
	sta	(_atof_value_1_37 + 1)
	sta	(_atof_value_1_37 + 2)
	sta	(_atof_value_1_37 + 3)
	sthx	*_atof_sloc1_1_0
00124$:
	ldhx	*_atof_sloc1_1_0
	lda	,x
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	jsr	_isdigit
	sta	*(_atof_sloc0_1_0 + 1)
	stx	*_atof_sloc0_1_0
	ldhx	*_atof_sloc1_1_0
	ldx	,x
	pshx
	ldhx	*_atof_sloc1_1_0
	aix	#1
	sthx	*_atof_sloc2_1_0
	pulx
	lda	*(_atof_sloc0_1_0 + 1)
	ora	*_atof_sloc0_1_0
	bne	00194$
	jmp	00146$
00194$:
;../_atof.c:57: value=10.0*value+(*s-'0');
	lda	#0x41
	sta	___fsmul_PARM_1
	lda	#0x20
	sta	(___fsmul_PARM_1 + 1)
	clra
	sta	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_value_1_37
	sta	___fsmul_PARM_2
	lda	(_atof_value_1_37 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_1_37 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_1_37 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	*(_atof_sloc3_1_0 + 3)
	stx	*(_atof_sloc3_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(_atof_sloc3_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*_atof_sloc3_1_0
	pulx
	txa
	rola	
	clra	
	sbc	#0x00
	psha
	pulh
	aix	#-48
	txa
	pshh
	pulx
	jsr	___sint2fs
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	mov	*_atof_sloc3_1_0,x+
	mov	*(_atof_sloc3_1_0 + 1),x+
	mov	*(_atof_sloc3_1_0 + 2),x+
	mov	*(_atof_sloc3_1_0 + 3),x+
	jsr	___fsadd
	sta	(_atof_value_1_37 + 3)
	stx	(_atof_value_1_37 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_37 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_37
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	mov	*_atof_sloc2_1_0,*_atof_sloc1_1_0
	mov	*(_atof_sloc2_1_0 + 1),*(_atof_sloc1_1_0 + 1)
	jmp	00124$
00146$:
	mov	*_atof_sloc1_1_0,*_atof_sloc3_1_0
	mov	*(_atof_sloc1_1_0 + 1),*(_atof_sloc3_1_0 + 1)
;../_atof.c:61: if (*s == '.')
	cpx	#0x2E
	beq	00195$
	jmp	00112$
00195$:
;../_atof.c:63: s++;
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ldhx	#_atof_fraction_1_37
	lda	#0x3D
	sta	,x
	lda	#0xCC
	sta	1,x
	sta	2,x
	inca
	sta	3,x
00127$:
	ldhx	*_atof_sloc2_1_0
	lda	,x
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	jsr	_isdigit
	tsta
	bne	00196$
	tstx
00196$:
	bne	00197$
	jmp	00147$
00197$:
;../_atof.c:66: value+=(*s-'0')*fraction;
	ldhx	*_atof_sloc2_1_0
	lda	,x
	aix	#1
	sthx	*_atof_sloc2_1_0
	tax
	rola	
	clra	
	sbc	#0x00
	psha
	pulh
	aix	#-48
	txa
	pshh
	pulx
	jsr	___sint2fs
	sta	(___fsmul_PARM_1 + 3)
	stx	(___fsmul_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsmul_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsmul_PARM_1
	ldhx	#___fsmul_PARM_2
	lda	_atof_fraction_1_37
	sta	,x
	lda	(_atof_fraction_1_37 + 1)
	sta	1,x
	lda	(_atof_fraction_1_37 + 2)
	sta	2,x
	lda	(_atof_fraction_1_37 + 3)
	sta	3,x
	jsr	___fsmul
	sta	(___fsadd_PARM_2 + 3)
	stx	(___fsadd_PARM_2 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(___fsadd_PARM_2 + 1)
	lda	*___SDCC_hc08_ret3
	sta	___fsadd_PARM_2
	ldhx	#___fsadd_PARM_1
	lda	_atof_value_1_37
	sta	,x
	lda	(_atof_value_1_37 + 1)
	sta	1,x
	lda	(_atof_value_1_37 + 2)
	sta	2,x
	lda	(_atof_value_1_37 + 3)
	sta	3,x
	jsr	___fsadd
	sta	(_atof_value_1_37 + 3)
	stx	(_atof_value_1_37 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_37 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_37
;../_atof.c:67: fraction*=0.1;
	ldhx	#___fsmul_PARM_1
	lda	#0x3D
	sta	,x
	lda	#0xCC
	sta	1,x
	sta	2,x
	inca
	sta	3,x
	ldhx	#___fsmul_PARM_2
	lda	_atof_fraction_1_37
	sta	,x
	lda	(_atof_fraction_1_37 + 1)
	sta	1,x
	lda	(_atof_fraction_1_37 + 2)
	sta	2,x
	lda	(_atof_fraction_1_37 + 3)
	sta	3,x
	jsr	___fsmul
	sta	(_atof_fraction_1_37 + 3)
	stx	(_atof_fraction_1_37 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_fraction_1_37 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_fraction_1_37
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	jmp	00127$
00147$:
	mov	*_atof_sloc2_1_0,*_atof_sloc3_1_0
	mov	*(_atof_sloc2_1_0 + 1),*(_atof_sloc3_1_0 + 1)
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ldhx	*_atof_sloc3_1_0
	lda	,x
	psha
	rola	
	clra	
	sbc	#0x00
	tax
	pula
	jsr	_toupper
	cmp	#0x45
	bne	00198$
	cpx	#0x00
	beq	00199$
00198$:
	jmp	00120$
00199$:
;../_atof.c:74: s++;
	ldhx	*_atof_sloc3_1_0
	aix	#1
;../_atof.c:75: iexp=(signed char)atoi(s);
	txa
	pshh
	pulx
	jsr	_atoi
	psha
	pshx
	pulh
	pulx
;../_atof.c:77: while(iexp!=0)
00116$:
	tstx
	bne	00200$
	jmp	00120$
00200$:
;../_atof.c:79: if(iexp<0)
	cpx	#0x00
	bge	00114$
;../_atof.c:81: value*=0.1;
	lda	#0x3D
	sta	___fsmul_PARM_1
	lda	#0xCC
	sta	(___fsmul_PARM_1 + 1)
	sta	(___fsmul_PARM_1 + 2)
	inca
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_value_1_37
	sta	___fsmul_PARM_2
	lda	(_atof_value_1_37 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_1_37 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_1_37 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(_atof_value_1_37 + 3)
	stx	(_atof_value_1_37 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_37 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_37
	pulx
;../_atof.c:82: iexp++;
	aix	#1
	bra	00116$
00114$:
;../_atof.c:86: value*=10.0;
	lda	#0x41
	sta	___fsmul_PARM_1
	lda	#0x20
	sta	(___fsmul_PARM_1 + 1)
	clra
	sta	(___fsmul_PARM_1 + 2)
	sta	(___fsmul_PARM_1 + 3)
	lda	_atof_value_1_37
	sta	___fsmul_PARM_2
	lda	(_atof_value_1_37 + 1)
	sta	(___fsmul_PARM_2 + 1)
	lda	(_atof_value_1_37 + 2)
	sta	(___fsmul_PARM_2 + 2)
	lda	(_atof_value_1_37 + 3)
	sta	(___fsmul_PARM_2 + 3)
	pshx
	jsr	___fsmul
	sta	(_atof_value_1_37 + 3)
	stx	(_atof_value_1_37 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(_atof_value_1_37 + 1)
	lda	*___SDCC_hc08_ret3
	sta	_atof_value_1_37
	pulx
;../_atof.c:87: iexp--;
	decx
	jmp	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	lda	_atof_sign_1_37
	beq	00122$
	lda	_atof_value_1_37
	eor	#0x80
	sta	_atof_value_1_37
00122$:
;../_atof.c:94: return (value);
	lda	_atof_value_1_37
	sta	*___SDCC_hc08_ret3
	lda	(_atof_value_1_37 + 1)
	sta	*___SDCC_hc08_ret2
	ldx	(_atof_value_1_37 + 2)
	lda	(_atof_value_1_37 + 3)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
