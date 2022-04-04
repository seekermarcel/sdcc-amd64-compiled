;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:10:39 2022
;--------------------------------------------------------
	.cs08
	.module gets
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
	.globl _putchar
	.globl _getchar
	.globl _gets
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
_gets_s_1_12:
	.ds 2
_gets_count_1_13:
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
;Allocation info for local variables in function 'gets'
;------------------------------------------------------------
;s                         Allocated with name '_gets_s_1_12'
;c                         Allocated to registers a 
;count                     Allocated with name '_gets_count_1_13'
;------------------------------------------------------------
;../gets.c:32: gets (char *s)
;	-----------------------------------------
;	 function gets
;	-----------------------------------------
;	Register assignment is optimal.
;	Stack space usage: 0 bytes.
_gets:
	sta	(_gets_s_1_12 + 1)
	stx	_gets_s_1_12
;../gets.c:35: unsigned int count = 0;
	clrh
	clrx
	sthx	_gets_count_1_13
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	jsr	_getchar
;../gets.c:40: switch(c)
	cbeqa	#0x08,00101$
	cbeqa	#0x0A,00105$
	cbeqa	#0x0D,00105$
	bra	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	lda	_gets_count_1_13
	ora	(_gets_count_1_13 + 1)
	beq	00109$
;../gets.c:45: putchar ('\b');
	lda	#0x08
	jsr	_putchar
;../gets.c:46: putchar (' ');
	lda	#0x20
	jsr	_putchar
;../gets.c:47: putchar ('\b');
	lda	#0x08
	jsr	_putchar
;../gets.c:48: --s;
	ldhx	_gets_s_1_12
	aix	#-1
	sthx	_gets_s_1_12
;../gets.c:49: --count;
	ldhx	_gets_count_1_13
	aix	#-1
	sthx	_gets_count_1_13
;../gets.c:51: break;
	bra	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	lda	#0x0D
	jsr	_putchar
;../gets.c:56: putchar ('\n');
	lda	#0x0A
	jsr	_putchar
;../gets.c:57: *s = 0;
	ldhx	_gets_s_1_12
	clra
	sta	,x
;../gets.c:58: return s;
	ldx	_gets_s_1_12
	lda	(_gets_s_1_12 + 1)
	rts
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ldhx	_gets_s_1_12
	sta	,x
	aix	#1
	sthx	_gets_s_1_12
;../gets.c:62: ++count;
	ldhx	_gets_count_1_13
	aix	#1
	sthx	_gets_count_1_13
;../gets.c:63: putchar (c);
	jsr	_putchar
;../gets.c:65: }
	bra	00109$
	rts
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
