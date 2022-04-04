;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:39 2022
;--------------------------------------------------------
	.cs08
	.module _ltoa
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
	.globl __ltoa
	.globl __ultoa
	.globl __ltoa_PARM_3
	.globl __ltoa_PARM_2
	.globl __ltoa_PARM_1
	.globl __ultoa_PARM_3
	.globl __ultoa_PARM_2
	.globl __ultoa_PARM_1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
__ultoa_sloc0_1_0:
	.ds 1
__ultoa_sloc1_1_0:
	.ds 4
__ultoa_sloc2_1_0:
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
__ultoa_PARM_1:
	.ds 4
__ultoa_PARM_2:
	.ds 2
__ultoa_PARM_3:
	.ds 1
__ultoa_buffer_1_2:
	.ds 32
__ltoa_PARM_1:
	.ds 4
__ltoa_PARM_2:
	.ds 2
__ltoa_PARM_3:
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
;Allocation info for local variables in function '_ultoa'
;------------------------------------------------------------
;sloc0                     Allocated with name '__ultoa_sloc0_1_0'
;sloc1                     Allocated with name '__ultoa_sloc1_1_0'
;sloc2                     Allocated with name '__ultoa_sloc2_1_0'
;value                     Allocated with name '__ultoa_PARM_1'
;string                    Allocated with name '__ultoa_PARM_2'
;radix                     Allocated with name '__ultoa_PARM_3'
;buffer                    Allocated with name '__ultoa_buffer_1_2'
;index                     Allocated to registers 
;c                         Allocated to registers a 
;------------------------------------------------------------
;../_ltoa.c:56: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ultoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__ultoa:
;../_ltoa.c:61: do {
	mov	#0x20,*__ultoa_sloc0_1_0
00103$:
;../_ltoa.c:62: unsigned char c = '0' + (value % radix);
	lda	__ultoa_PARM_3
	sta	*(__ultoa_sloc1_1_0 + 3)
	mov	#0x00,*(__ultoa_sloc1_1_0 + 2)
	mov	#0x00,*(__ultoa_sloc1_1_0 + 1)
	mov	#0x00,*__ultoa_sloc1_1_0
	ldhx	__ultoa_PARM_1
	sthx	__modulong_PARM_1
	ldhx	(__ultoa_PARM_1 + 2)
	sthx	(__modulong_PARM_1 + 2)
	lda	*__ultoa_sloc1_1_0
	sta	__modulong_PARM_2
	lda	*(__ultoa_sloc1_1_0 + 1)
	sta	(__modulong_PARM_2 + 1)
	lda	*(__ultoa_sloc1_1_0 + 2)
	sta	(__modulong_PARM_2 + 2)
	lda	*(__ultoa_sloc1_1_0 + 3)
	sta	(__modulong_PARM_2 + 3)
	jsr	__modulong
	sta	*(__ultoa_sloc2_1_0 + 3)
	stx	*(__ultoa_sloc2_1_0 + 2)
	mov	*___SDCC_hc08_ret2,*(__ultoa_sloc2_1_0 + 1)
	mov	*___SDCC_hc08_ret3,*__ultoa_sloc2_1_0
	lda	*(__ultoa_sloc2_1_0 + 3)
	add	#0x30
;../_ltoa.c:63: if (c > (unsigned char)'9')
	cmp	#0x39
	bls	00102$
;../_ltoa.c:64: c += 'A' - '9' - 1;
	add	#0x07
00102$:
;../_ltoa.c:65: buffer[--index] = c;
	dec	*__ultoa_sloc0_1_0
	ldx	*__ultoa_sloc0_1_0
	clrh
	sta	(__ultoa_buffer_1_2),x
;../_ltoa.c:66: value /= radix;
	ldhx	__ultoa_PARM_1
	sthx	__divulong_PARM_1
	ldhx	(__ultoa_PARM_1 + 2)
	sthx	(__divulong_PARM_1 + 2)
	lda	*__ultoa_sloc1_1_0
	sta	__divulong_PARM_2
	lda	*(__ultoa_sloc1_1_0 + 1)
	sta	(__divulong_PARM_2 + 1)
	lda	*(__ultoa_sloc1_1_0 + 2)
	sta	(__divulong_PARM_2 + 2)
	lda	*(__ultoa_sloc1_1_0 + 3)
	sta	(__divulong_PARM_2 + 3)
	jsr	__divulong
	sta	(__ultoa_PARM_1 + 3)
	stx	(__ultoa_PARM_1 + 2)
	lda	*___SDCC_hc08_ret2
	sta	(__ultoa_PARM_1 + 1)
	lda	*___SDCC_hc08_ret3
	sta	__ultoa_PARM_1
;../_ltoa.c:67: } while (value);
	lda	__ultoa_PARM_1
	ora	(__ultoa_PARM_1 + 1)
	ora	(__ultoa_PARM_1 + 2)
	ora	(__ultoa_PARM_1 + 3)
	beq	00133$
	jmp	00103$
00133$:
;../_ltoa.c:69: do {
	ldhx	__ultoa_PARM_2
	lda	*__ultoa_sloc0_1_0
00106$:
;../_ltoa.c:70: *string++ = buffer[index];
	sta	*(__ultoa_sloc2_1_0 + 1)
	mov	#0x00,*__ultoa_sloc2_1_0
	pshx
	pshh
	ldhx	*__ultoa_sloc2_1_0
	psha
	lda	(__ultoa_buffer_1_2),x
	sta	*__ultoa_sloc2_1_0
	pula
	pulh
	pulx
	psha
	lda	*__ultoa_sloc2_1_0
	sta	,x
	aix	#1
	pula
;../_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inca
	cmp	#0x20
	bne	00106$
;../_ltoa.c:73: *string = 0;  /* string terminator */
	clra
	sta	,x
	rts
;------------------------------------------------------------
;Allocation info for local variables in function '_ltoa'
;------------------------------------------------------------
;value                     Allocated with name '__ltoa_PARM_1'
;string                    Allocated with name '__ltoa_PARM_2'
;radix                     Allocated with name '__ltoa_PARM_3'
;------------------------------------------------------------
;../_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	-----------------------------------------
;	 function _ltoa
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__ltoa:
;../_ltoa.c:78: if (value < 0 && radix == 10) {
	lda	__ltoa_PARM_1
	sub	#0x00
	bge	00102$
	lda	__ltoa_PARM_3
	cmp	#0x0A
	bne	00102$
;../_ltoa.c:79: *string++ = '-';
	ldhx	__ltoa_PARM_2
	pshx
	pshh
	lda	#0x2D
	sta	,x
	pulh
	pulx
	aix	#1
	sthx	__ltoa_PARM_2
;../_ltoa.c:80: value = -value;
	clra
	sub	(__ltoa_PARM_1 + 3)
	sta	(__ltoa_PARM_1 + 3)
	clra
	sbc	(__ltoa_PARM_1 + 2)
	sta	(__ltoa_PARM_1 + 2)
	clra
	sbc	(__ltoa_PARM_1 + 1)
	sta	(__ltoa_PARM_1 + 1)
	clra
	sbc	__ltoa_PARM_1
	sta	__ltoa_PARM_1
00102$:
;../_ltoa.c:82: _ultoa(value, string, radix);
	ldhx	__ltoa_PARM_1
	sthx	__ultoa_PARM_1
	ldhx	(__ltoa_PARM_1 + 2)
	sthx	(__ultoa_PARM_1 + 2)
	ldhx	__ltoa_PARM_2
	sthx	__ultoa_PARM_2
	lda	__ltoa_PARM_3
	sta	__ultoa_PARM_3
	jmp	__ultoa
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
