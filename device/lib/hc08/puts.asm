;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:35 2022
;--------------------------------------------------------
	.module puts
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
	.globl _puts
	.globl _putchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DSEG    (PAG)
_puts_sloc0_1_0:
	.ds 2
_puts_sloc1_1_0:
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
;Allocation info for local variables in function 'puts'
;------------------------------------------------------------
;sloc0                     Allocated with name '_puts_sloc0_1_0'
;sloc1                     Allocated with name '_puts_sloc1_1_0'
;s                         Allocated to registers 
;i                         Allocated to registers 
;------------------------------------------------------------
;../puts.c:31: int puts (char *s)
;	-----------------------------------------
;	 function puts
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_puts:
	sta	*(_puts_sloc0_1_0 + 1)
	stx	*_puts_sloc0_1_0
;../puts.c:34: while (*s){
	clrh
	clrx
00101$:
	pshx
	pshh
	ldhx	*_puts_sloc0_1_0
	lda	,x
	pulh
	pulx
;../puts.c:36: i++;
	aix	#1
	sthx	*_puts_sloc1_1_0
;../puts.c:34: while (*s){
	tsta
	beq	00103$
;../puts.c:35: putchar(*s++);
	ldhx	*_puts_sloc0_1_0
	aix	#1
	sthx	*_puts_sloc0_1_0
	jsr	_putchar
;../puts.c:36: i++;
	ldhx	*_puts_sloc1_1_0
	bra	00101$
00103$:
;../puts.c:38: putchar('\n');
	lda	#0x0A
	jsr	_putchar
;../puts.c:39: return i+1;
	ldx	*_puts_sloc1_1_0
	lda	*(_puts_sloc1_1_0 + 1)
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
