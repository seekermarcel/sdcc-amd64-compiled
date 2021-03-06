;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:16 2022
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;	../_strncat.c: 31: char * strncat ( char * front, const char * back, size_t count )
;	-----------------------------------------
;	 function strncat
;	-----------------------------------------
_strncat:
	sub	sp, #12
;	../_strncat.c: 33: char *start = front;
	ldw	y, (0x0f, sp)
	ldw	(0x01, sp), y
;	../_strncat.c: 35: while (*front++);
	ldw	x, (0x01, sp)
00101$:
	ld	a, (x)
	incw	x
	tnz	a
	jrne	00101$
;	../_strncat.c: 37: front--;
	decw	x
	ldw	(0x0f, sp), x
;	../_strncat.c: 39: while (count--)
	ldw	y, (0x11, sp)
	ldw	(0x07, sp), y
	ldw	y, (0x0f, sp)
	ldw	(0x03, sp), y
	ldw	y, (0x13, sp)
	ldw	(0x05, sp), y
00106$:
	ldw	y, (0x05, sp)
	ldw	(0x0b, sp), y
	ldw	x, (0x05, sp)
	decw	x
	ldw	(0x05, sp), x
	ldw	x, (0x0b, sp)
	jreq	00108$
;	../_strncat.c: 40: if (!(*front++ = *back++))
	ldw	x, (0x07, sp)
	ld	a, (x)
	ldw	x, (0x07, sp)
	incw	x
	ldw	(0x07, sp), x
	ldw	x, (0x03, sp)
	ld	(x), a
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	y, (0x03, sp)
	ldw	(0x0f, sp), y
	tnz	a
	jrne	00106$
;	../_strncat.c: 41: return(start);
	ldw	x, (0x01, sp)
	jra	00109$
00108$:
;	../_strncat.c: 43: *front = '\0';
	ldw	y, (0x0f, sp)
	ldw	(0x09, sp), y
	ldw	x, (0x09, sp)
	clr	(x)
;	../_strncat.c: 44: return(start);
	ldw	x, (0x01, sp)
00109$:
	addw	sp, #12
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
