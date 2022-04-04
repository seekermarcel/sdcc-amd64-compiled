;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:39 2022
;--------------------------------------------------------
	.cs08
	.module _itoa
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
	.globl __itoa
	.globl __uitoa
	.globl __itoa_PARM_3
	.globl __itoa_PARM_2
	.globl __uitoa_PARM_3
	.globl __uitoa_PARM_2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__uitoa_sloc0_1_0:
	.ds 2
__uitoa_sloc1_1_0:
	.ds 2
__uitoa_sloc2_1_0:
	.ds 2
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
__uitoa_PARM_2:
	.ds 2
__uitoa_PARM_3:
	.ds 1
__uitoa_value_1_1:
	.ds 2
__uitoa_tmp_2_4:
	.ds 1
__itoa_PARM_2:
	.ds 2
__itoa_PARM_3:
	.ds 1
__itoa_value_1_5:
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
;Allocation info for local variables in function '_uitoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '__uitoa_sloc0_1_0'
;sloc1                     Allocated with name '__uitoa_sloc1_1_0'
;sloc2                     Allocated with name '__uitoa_sloc2_1_0'
;string                    Allocated with name '__uitoa_PARM_2'
;radix                     Allocated with name '__uitoa_PARM_3'
;value                     Allocated with name '__uitoa_value_1_1'
;index                     Allocated to registers 
;i                         Allocated to registers 
;tmp                       Allocated with name '__uitoa_tmp_2_4'
;------------------------------------------------------------
;../_itoa.c:40: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _uitoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__uitoa:
	sta	(__uitoa_value_1_1 + 1)
	stx	__uitoa_value_1_1
;../_itoa.c:45: do {
	clrh
00103$:
;../_itoa.c:46: string[index] = '0' + (value % radix);
	pshh
	pula
	add	(__uitoa_PARM_2 + 1)
	sta	*(__uitoa_sloc0_1_0 + 1)
	clra
	adc	__uitoa_PARM_2
	sta	*__uitoa_sloc0_1_0
	lda	__uitoa_PARM_3
	sta	*(__uitoa_sloc1_1_0 + 1)
	mov	#0x00,*__uitoa_sloc1_1_0
	lda	*__uitoa_sloc1_1_0
	sta	__moduint_PARM_2
	lda	*(__uitoa_sloc1_1_0 + 1)
	sta	(__moduint_PARM_2 + 1)
	pshh
	lda	(__uitoa_value_1_1 + 1)
	ldx	__uitoa_value_1_1
	jsr	__moduint
	pulh
	add	#0x30
	pshh
	ldhx	*__uitoa_sloc0_1_0
	sta	,x
	pulh
;../_itoa.c:47: if (string[index] > '9')
	cmp	#0x39
	ble	00102$
;../_itoa.c:48: string[index] += 'A' - '9' - 1;
	pshh
	ldhx	*__uitoa_sloc0_1_0
	lda	,x
	pulh
	add	#0x07
	pshh
	ldhx	*__uitoa_sloc0_1_0
	sta	,x
	pulh
00102$:
;../_itoa.c:49: value /= radix;
	lda	*__uitoa_sloc1_1_0
	sta	__divuint_PARM_2
	lda	*(__uitoa_sloc1_1_0 + 1)
	sta	(__divuint_PARM_2 + 1)
	pshh
	lda	(__uitoa_value_1_1 + 1)
	ldx	__uitoa_value_1_1
	jsr	__divuint
	sta	(__uitoa_value_1_1 + 1)
	stx	__uitoa_value_1_1
	pulh
;../_itoa.c:50: ++index;
	pshh
	inc	1,s
	pulh
;../_itoa.c:51: } while (value != 0);
	lda	__uitoa_value_1_1
	ora	(__uitoa_value_1_1 + 1)
	bne	00103$
;../_itoa.c:54: string[index--] = '\0';
	pshh
	pula
	sub	#0x01
	sta	*__uitoa_sloc1_1_0
	pshh
	pula
	add	(__uitoa_PARM_2 + 1)
	tax
	clra
	adc	__uitoa_PARM_2
	psha
	pulh
	clra
	sta	,x
;../_itoa.c:57: while (index > i) {
	tax
00106$:
	cpx	*__uitoa_sloc1_1_0
	bge	00109$
;../_itoa.c:58: char tmp = string[i];
	txa
	add	(__uitoa_PARM_2 + 1)
	sta	*(__uitoa_sloc0_1_0 + 1)
	clra
	adc	__uitoa_PARM_2
	sta	*__uitoa_sloc0_1_0
	pshx
	ldhx	*__uitoa_sloc0_1_0
	lda	,x
	sta	__uitoa_tmp_2_4
	pulx
;../_itoa.c:59: string[i] = string[index];
	lda	*__uitoa_sloc1_1_0
	add	(__uitoa_PARM_2 + 1)
	sta	*(__uitoa_sloc2_1_0 + 1)
	lda	#0x00
	adc	__uitoa_PARM_2
	sta	*__uitoa_sloc2_1_0
	pshx
	ldhx	*__uitoa_sloc2_1_0
	lda	,x
	pulx
	pshx
	ldhx	*__uitoa_sloc0_1_0
	sta	,x
	pulx
;../_itoa.c:60: string[index] = tmp;
	pshx
	ldhx	*__uitoa_sloc2_1_0
	lda	__uitoa_tmp_2_4
	sta	,x
	pulx
;../_itoa.c:61: ++i;
	aix	#1
;../_itoa.c:62: --index;
	dec	*__uitoa_sloc1_1_0
	bra	00106$
00109$:
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_itoa'
;------------------------------------------------------------
;string                    Allocated with name '__itoa_PARM_2'
;radix                     Allocated with name '__itoa_PARM_3'
;value                     Allocated with name '__itoa_value_1_5'
;------------------------------------------------------------
;../_itoa.c:66: void _itoa(int value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _itoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__itoa:
	sta	(__itoa_value_1_5 + 1)
	stx	__itoa_value_1_5
;../_itoa.c:68: if (value < 0 && radix == 10) {
	lda	__itoa_value_1_5
	sub	#0x00
	bge	00102$
	lda	__itoa_PARM_3
	cmp	#0x0A
	bne	00102$
;../_itoa.c:69: *string++ = '-';
	ldhx	__itoa_PARM_2
	pshx
	pshh
	lda	#0x2D
	sta	,x
	pulh
	pulx
	aix	#1
	sthx	__itoa_PARM_2
;../_itoa.c:70: value = -value;
	clra
	sub	(__itoa_value_1_5 + 1)
	sta	(__itoa_value_1_5 + 1)
	clra
	sbc	__itoa_value_1_5
	sta	__itoa_value_1_5
00102$:
;../_itoa.c:72: _uitoa(value, string, radix);
	ldhx	__itoa_PARM_2
	sthx	__uitoa_PARM_2
	lda	__itoa_PARM_3
	sta	__uitoa_PARM_3
	lda	(__itoa_value_1_5 + 1)
	ldx	__itoa_value_1_5
	jmp	__uitoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
