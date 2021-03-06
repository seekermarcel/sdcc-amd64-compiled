;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:10 2022
;--------------------------------------------------------
	.module modff
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _modff
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
;	../modff.c: 33: float modff(float x, float * y)
;	-----------------------------------------
;	 function modff
;	-----------------------------------------
_modff:
	sub	sp, #6
;	../modff.c: 35: *y=(long)x;
	ldw	y, (0x0d, sp)
	ldw	(0x05, sp), y
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fs2slong
	addw	sp, #4
	pushw	x
	pushw	y
	call	___slong2fs
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	x, (0x05, sp)
	ld	a, (0x04, sp)
	ld	(0x3, x), a
	ld	a, (0x03, sp)
	ld	(0x2, x), a
	ldw	(x), y
;	../modff.c: 36: return (x-*y);
	ldw	x, (0x03, sp)
	pushw	x
	pushw	y
	ldw	x, (0x0f, sp)
	pushw	x
	ldw	x, (0x0f, sp)
	pushw	x
	call	___fssub
	addw	sp, #14
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
