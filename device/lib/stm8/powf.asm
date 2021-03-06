;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:02 2022
;--------------------------------------------------------
	.module powf
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _logf
	.globl _expf
	.globl _powf
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
;	../powf.c: 35: float powf(float x, float y)
;	-----------------------------------------
;	 function powf
;	-----------------------------------------
_powf:
	sub	sp, #4
;	../powf.c: 37: if(y == 0.0) return 1.0;
	ldw	x, (0x0d, sp)
	jrne	00102$
	ldw	x, (0x0b, sp)
	sllw	x
	jrne	00102$
	clrw	x
	ldw	y, #0x3f80
	jra	00107$
00102$:
;	../powf.c: 38: if(y == 1.0) return x;
	clrw	x
	pushw	x
	push	#0x80
	push	#0x3f
	ldw	x, (0x11, sp)
	pushw	x
	ldw	x, (0x11, sp)
	pushw	x
	call	___fseq
	addw	sp, #8
	tnz	a
	jreq	00104$
	ldw	x, (0x09, sp)
	ldw	y, (0x07, sp)
	jra	00107$
00104$:
;	../powf.c: 39: if(x <= 0.0) return 0.0;
	clrw	x
	pushw	x
	clrw	x
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___fsgt
	addw	sp, #8
	tnz	a
	jrne	00106$
	clrw	x
	clrw	y
	jra	00107$
00106$:
;	../powf.c: 40: return expf(logf(x) * y);
	ldw	x, (0x09, sp)
	pushw	x
	ldw	x, (0x09, sp)
	pushw	x
	call	_logf
	addw	sp, #4
	ldw	(0x03, sp), x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x07, sp)
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	pushw	x
	pushw	y
	call	_expf
	addw	sp, #4
00107$:
	addw	sp, #4
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
