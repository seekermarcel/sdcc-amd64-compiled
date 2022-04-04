;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:53 2022
;--------------------------------------------------------
	.module _fs2uchar
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fs2ulong
	.globl ___fs2uchar
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_fs2uchar.c: 51: unsigned char __fs2uchar (float f)
;	-----------------------------------------
;	 function __fs2uchar
;	-----------------------------------------
___fs2uchar:
;	../_fs2uchar.c: 53: unsigned long ul=__fs2ulong(f);
	ldw	x, (0x05, sp)
	pushw	x
	ldw	x, (0x05, sp)
	pushw	x
	call	___fs2ulong
	addw	sp, #4
;	../_fs2uchar.c: 54: if (ul>=UCHAR_MAX) return UCHAR_MAX;
	cpw	x, #0x00ff
	ld	a, yl
	sbc	a, #0x00
	ld	a, yh
	sbc	a, #0x00
	jrc	00102$
	ld	a, #0xff
;	../_fs2uchar.c: 55: return ul;
	.byte 0x21
00102$:
	ld	a, xl
00103$:
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
