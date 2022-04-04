;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:37 2022
;--------------------------------------------------------
	.cs08
	.module _strtok
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
	.globl _strchr
	.globl _strtok_PARM_2
	.globl _strtok
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
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
_strtok_PARM_2:
	.ds 2
_strtok_s_1_22:
	.ds 2
_strtok_s1_1_22:
	.ds 2
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
;Allocation info for local variables in function 'strtok'
;------------------------------------------------------------
;control                   Allocated with name '_strtok_PARM_2'
;str                       Allocated to registers x h 
;s                         Allocated with name '_strtok_s_1_22'
;s1                        Allocated with name '_strtok_s1_1_22'
;------------------------------------------------------------
;../_strtok.c:36: char * strtok ( char * str, const char * control )
;	-----------------------------------------
;	 function strtok
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_strtok:
	pshx
	tax
	pulh
;../_strtok.c:41: if ( str )
	cphx	#0x00
	beq	00102$
;../_strtok.c:42: s = str;
	sthx	_strtok_s_1_22
00102$:
;../_strtok.c:43: if ( !s )
	lda	_strtok_s_1_22
	ora	(_strtok_s_1_22 + 1)
	bne	00108$
;../_strtok.c:44: return NULL;
	clra
	tax
	rts
;../_strtok.c:46: while (*s) {
00108$:
	ldhx	_strtok_s_1_22
	lda	,x
	tsta
	beq	00110$
;../_strtok.c:47: if (strchr(control,*s))
	sta	(_strchr_PARM_2 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	_strchr_PARM_2
	lda	(_strtok_PARM_2 + 1)
	ldx	_strtok_PARM_2
	jsr	_strchr
	tsta
	bne	00160$
	tstx
00160$:
	beq	00110$
;../_strtok.c:48: s++;
	ldhx	_strtok_s_1_22
	aix	#1
	sthx	_strtok_s_1_22
	bra	00108$
;../_strtok.c:50: break;
00110$:
;../_strtok.c:53: s1 = s;
	ldhx	_strtok_s_1_22
	sthx	_strtok_s1_1_22
;../_strtok.c:55: while (*s) {
00113$:
	ldhx	_strtok_s_1_22
	lda	,x
	tsta
	beq	00115$
;../_strtok.c:56: if (strchr(control,*s)) {
	sta	(_strchr_PARM_2 + 1)
	rola	
	clra	
	sbc	#0x00
	sta	_strchr_PARM_2
	lda	(_strtok_PARM_2 + 1)
	ldx	_strtok_PARM_2
	jsr	_strchr
	tsta
	bne	00163$
	tstx
00163$:
	beq	00112$
;../_strtok.c:57: *s++ = '\0';
	ldhx	_strtok_s_1_22
	clra
	sta	,x
	ldhx	_strtok_s_1_22
	aix	#1
	sthx	_strtok_s_1_22
;../_strtok.c:58: return s1;
	ldx	_strtok_s1_1_22
	lda	(_strtok_s1_1_22 + 1)
	rts
00112$:
;../_strtok.c:60: s++ ;
	ldhx	_strtok_s_1_22
	aix	#1
	sthx	_strtok_s_1_22
	bra	00113$
00115$:
;../_strtok.c:63: s = NULL;
	clrh
	clrx
	sthx	_strtok_s_1_22
;../_strtok.c:65: if (*s1)
	ldhx	_strtok_s1_1_22
	ldx	,x
	beq	00117$
;../_strtok.c:66: return s1;
	ldx	_strtok_s1_1_22
	lda	(_strtok_s1_1_22 + 1)
	rts
00117$:
;../_strtok.c:68: return NULL;
	clra
	tax
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
