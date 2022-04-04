;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:15 2022
;--------------------------------------------------------
	.module atol
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
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
;	../atol.c: 34: long int atol(const char *nptr)
;	-----------------------------------------
;	 function atol
;	-----------------------------------------
_atol:
	sub	sp, #22
;	../atol.c: 36: long int ret = 0;
	clrw	x
	ldw	(0x04, sp), x
	ldw	(0x02, sp), x
;	../atol.c: 39: while (isblank (*nptr))
	ldw	y, (0x19, sp)
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
;	../atol.c: 40: nptr++;
	ldw	x, (0x09, sp)
	incw	x
	ldw	(0x09, sp), x
	jra	00101$
00131$:
	ldw	y, (0x09, sp)
	ldw	(0x19, sp), y
;	../atol.c: 42: neg = (*nptr == '-');
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
;	../atol.c: 44: if (*nptr == '-' || *nptr == '+')
	tnz	a
	jrne	00104$
	ld	a, (0x08, sp)
	cp	a, #0x2b
	jrne	00129$
00104$:
;	../atol.c: 45: nptr++;
	incw	x
	ldw	(0x19, sp), x
;	../atol.c: 47: while (isdigit (*nptr))
00129$:
	ldw	y, (0x19, sp)
	ldw	(0x06, sp), y
00107$:
	ldw	x, (0x06, sp)
	ld	a, (x)
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	ldw	y, x
	ld	a, xl
;	./../../include/ctype.h: 62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	cp	a, #0x30
	jrc	00109$
	cp	a, #0x39
	jrugt	00109$
;	../atol.c: 48: ret = ret * 10 + (*(nptr++) - '0');
	pushw	x
	ldw	y, (0x06, sp)
	pushw	y
	ldw	y, (0x06, sp)
	pushw	y
	push	#0x0a
	push	#0x00
	push	#0x00
	push	#0x00
	call	__mullong
	addw	sp, #8
	ldw	(0x17, sp), x
	ldw	(0x15, sp), y
	popw	x
	ldw	y, (0x06, sp)
	incw	y
	ldw	(0x06, sp), y
	subw	x, #0x0030
	ldw	(0x11, sp), x
	clrw	x
	tnz	(0x11, sp)
	jrpl	00169$
	decw	x
00169$:
	ldw	y, (0x11, sp)
	addw	y, (0x15, sp)
	ld	a, xl
	adc	a, (0x14, sp)
	rlwa	x
	adc	a, (0x13, sp)
	ld	xh, a
	ldw	(0x04, sp), y
	ldw	(0x02, sp), x
	jra	00107$
00109$:
;	../atol.c: 50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	tnz	(0x01, sp)
	jreq	00120$
	ldw	x, (0x04, sp)
	negw	x
	clr	a
	sbc	a, (0x03, sp)
	ld	yl, a
	clr	a
	sbc	a, (0x02, sp)
	ld	yh, a
	ldw	(0x0d, sp), x
	jra	00121$
00120$:
	ldw	y, (0x04, sp)
	ldw	(0x0d, sp), y
	ldw	y, (0x02, sp)
00121$:
	ldw	x, (0x0d, sp)
	addw	sp, #22
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
