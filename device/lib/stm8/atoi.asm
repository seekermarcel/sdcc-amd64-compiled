;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:14 2022
;--------------------------------------------------------
	.module atoi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;	../atoi.c: 34: int atoi(const char *nptr)
;	-----------------------------------------
;	 function atoi
;	-----------------------------------------
_atoi:
	sub	sp, #10
;	../atoi.c: 36: int ret = 0;
	clrw	x
	ldw	(0x02, sp), x
;	../atoi.c: 39: while (isblank (*nptr))
	ldw	y, (0x0d, sp)
	ldw	(0x09, sp), y
00101$:
	ldw	x, (0x09, sp)
	ld	a, (x)
	ld	(0x08, sp), a
	ld	a, (0x08, sp)
	ld	xh, a
	rlc	a
	clr	a
	sbc	a, #0x00
;	./../../include/ctype.h: 53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	ld	a, xh
	cp	a, #0x20
	jreq	00115$
	cp	a, #0x09
	jrne	00131$
00115$:
;	../atoi.c: 40: nptr++;
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x09, sp), x
	jra	00101$
00131$:
	ldw	y, (0x09, sp)
	ldw	(0x0d, sp), y
;	../atoi.c: 42: neg = (*nptr == '-');
	ldw	x, (0x09, sp)
	ld	a, (0x08, sp)
	cp	a, #0x2d
	jrne	00161$
	ld	a, #0x01
	.byte 0x21
00161$:
	clr	a
00162$:
	ld	(0x01, sp), a
;	../atoi.c: 44: if (*nptr == '-' || *nptr == '+')
	tnz	a
	jrne	00104$
	ld	a, (0x08, sp)
	cp	a, #0x2b
	jrne	00129$
00104$:
;	../atoi.c: 45: nptr++;
	incw	x
	ldw	(0x0d, sp), x
;	../atoi.c: 47: while (isdigit (*nptr))
00129$:
	ldw	x, (0x0d, sp)
00107$:
	ld	a, (x)
	ld	(0x05, sp), a
	ld	a, (0x05, sp)
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x04, sp), a
	ldw	y, (0x04, sp)
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	ld	a, yl
	cp	a, #0x30
	jrc	00109$
	cp	a, #0x39
	jrugt	00109$
;	../atoi.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	pushw	x
	ldw	y, (0x04, sp)
	pushw	y
	push	#0x0a
	push	#0x00
	call	__mulint
	addw	sp, #4
	ldw	(0x08, sp), x
	popw	x
	incw	x
	ldw	y, (0x04, sp)
	subw	y, #0x0030
	addw	y, (0x06, sp)
	ldw	(0x02, sp), y
	jra	00107$
00109$:
;	../atoi.c: 50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	tnz	(0x01, sp)
	jreq	00120$
	ldw	x, (0x02, sp)
	negw	x
	jra	00121$
00120$:
	ldw	x, (0x02, sp)
00121$:
	addw	sp, #10
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
