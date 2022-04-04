;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:17 2022
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;	../_strstr.c: 31: char * strstr ( const char * str1, const char * str2 )
;	-----------------------------------------
;	 function strstr
;	-----------------------------------------
_strstr:
	sub	sp, #15
;	../_strstr.c: 33: const char * cp = str1;
	ldw	y, (0x12, sp)
	ldw	(0x05, sp), y
;	../_strstr.c: 37: if ( !*str2 )
	ldw	y, (0x14, sp)
	ldw	(0x01, sp), y
	ldw	x, (0x01, sp)
	ld	a, (x)
	ld	(0x0f, sp), a
	tnz	(0x0f, sp)
	jrne	00122$
;	../_strstr.c: 38: return str1;
	ldw	x, (0x05, sp)
	jra	00113$
;	../_strstr.c: 40: while (*cp)
00122$:
	ldw	y, (0x05, sp)
	ldw	(0x03, sp), y
00110$:
	ldw	x, (0x03, sp)
	ld	a, (x)
	tnz	a
	jreq	00112$
;	../_strstr.c: 43: s2 = str2;
	ldw	y, (0x01, sp)
;	../_strstr.c: 45: while ( *s1 && *s2 && !(*s1-*s2) )
	ldw	x, (0x03, sp)
	ldw	(0x0d, sp), x
	ldw	(0x0b, sp), y
00105$:
	ldw	x, (0x0d, sp)
	ld	a, (x)
	ld	(0x0a, sp), a
	ldw	x, (0x0b, sp)
	ld	a, (x)
	ld	(0x09, sp), a
	tnz	(0x0a, sp)
	jreq	00107$
	tnz	(0x09, sp)
	jreq	00107$
	ld	a, (0x0a, sp)
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ld	a, (0x09, sp)
	ld	(0x08, sp), a
	ld	a, (0x08, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x07, sp), a
	subw	x, (0x07, sp)
	tnzw	x
	jrne	00107$
;	../_strstr.c: 46: s1++, s2++;
	ldw	x, (0x0d, sp)
	incw	x
	ldw	(0x0d, sp), x
	ldw	x, (0x0b, sp)
	incw	x
	ldw	(0x0b, sp), x
	jra	00105$
00107$:
;	../_strstr.c: 48: if (!*s2)
	tnz	(0x09, sp)
	jrne	00109$
;	../_strstr.c: 49: return( (char*)cp );
	ldw	x, (0x05, sp)
	jra	00113$
00109$:
;	../_strstr.c: 51: cp++;
	ldw	x, (0x03, sp)
	incw	x
	ldw	(0x03, sp), x
	ldw	y, (0x03, sp)
	ldw	(0x05, sp), y
	jra	00110$
00112$:
;	../_strstr.c: 54: return (NULL) ;
	clrw	x
00113$:
	addw	sp, #15
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
