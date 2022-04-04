;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:39 2022
;--------------------------------------------------------
	.cs08
	.module assert
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
	.globl __assert
	.globl _printf
	.globl __assert_PARM_3
	.globl __assert_PARM_2
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
__assert_PARM_2:
	.ds 2
__assert_PARM_3:
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
;Allocation info for local variables in function '_assert'
;------------------------------------------------------------
;filename                  Allocated with name '__assert_PARM_2'
;linenumber                Allocated with name '__assert_PARM_3'
;expr                      Allocated to registers x h 
;------------------------------------------------------------
;../assert.c:32: void _assert(char *expr, const char *filename, unsigned int linenumber)
;	-----------------------------------------
;	 function _assert
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
__assert:
	pshx
	tax
	pulh
;../assert.c:34: printf("Assert(%s) failed at line %u in file %s.\n",
	lda	(__assert_PARM_2 + 1)
	psha
	lda	__assert_PARM_2
	psha
	lda	(__assert_PARM_3 + 1)
	psha
	lda	__assert_PARM_3
	psha
	pshx
	pshh
	lda	#___str_0
	psha
	lda	#>___str_0
	psha
	jsr	_printf
	ais	#8
;../assert.c:36: while(1);
00102$:
	bra	00102$
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0A
	.db 0x00
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
