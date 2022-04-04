;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module atol
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atol
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../atol.c:34: long int atol(const char *nptr)
;	---------------------------------
; Function atol
; ---------------------------------
_atol::
	add	sp, #-19
;../atol.c:36: long int ret = 0;
	xor	a, a
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../atol.c:39: while (isblank (*nptr))
	ldhl	sp,#22
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00101$:
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#0
	ld	(hl),d
	ld	a,d
	rla
	sbc	a, a
	inc	hl
;./../../include/ctype.h:53: return ((unsigned char)c == ' ' || (unsigned char)c == '\t');
	ld	(hl-),a
	ld	e,(hl)
	ld	a,e
	cp	a,#0x20
	jr	Z,00115$
	sub	a, #0x09
	jr	NZ,00131$
00115$:
;../atol.c:40: nptr++;
	inc	bc
	jr	00101$
00131$:
	ldhl	sp,#21
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../atol.c:42: neg = (*nptr == '-');
	ld	a,d
	sub	a, #0x2D
	jr	NZ,00157$
	ld	a,#0x01
	jr	00158$
00157$:
	xor	a,a
00158$:
	ldhl	sp,#2
	ld	(hl),a
;../atol.c:44: if (*nptr == '-' || *nptr == '+')
	bit	0,a
	jr	NZ,00104$
	ld	a,d
	sub	a, #0x2B
	jr	NZ,00129$
00104$:
;../atol.c:45: nptr++;
	inc	bc
	ldhl	sp,#21
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../atol.c:47: while (isdigit (*nptr))
00129$:
	ldhl	sp,#21
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#17
	ld	(hl+),a
	ld	(hl),e
00107$:
	ldhl	sp,#18
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	rla
	sbc	a, a
	ld	b,a
	ld	d,c
	ld	e,b
;./../../include/ctype.h:62: return ((unsigned char)c >= '0' && (unsigned char)c <= '9');
	dec	hl
	dec	hl
	ld	(hl),d
	ld	a,(hl)
	sub	a, #0x30
	jp	C,00109$
	ld	a,#0x39
	sub	a, (hl)
	jp	C,00109$
;../atol.c:48: ret = ret * 10 + (*(nptr++) - '0');
	push	bc
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#7
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x000A
	push	hl
	call	__mullong
	add	sp, #8
	push	hl
	ldhl	sp,#15
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	bc
	ldhl	sp,#17
	inc	(hl)
	jr	NZ,00161$
	inc	hl
	inc	(hl)
00161$:
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ldhl	sp,#7
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,b
	rla
	sbc	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	ldhl	sp,#7
	add	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#16
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#11
	pop	af
	ld	a,e
	adc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	adc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
	dec	hl
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#3
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	jp	00107$
00109$:
;../atol.c:50: return (neg ? -ret : ret); // Since -LONG_MIN is LONG_MIN in sdcc, the result value always turns out ok.
	ldhl	sp,#2
	bit	0,(hl)
	jr	Z,00120$
	ld	de,#0x0000
	ld	a,e
	inc	hl
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ldhl	sp,#10
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	dec	hl
	dec	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ldhl	sp,#10
	ld	(hl-),a
	ld	(hl),e
	jr	00121$
00120$:
	ldhl	sp,#3
	ld	d,h
	ld	e,l
	ldhl	sp,#7
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
00121$:
	ldhl	sp,#8
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #19
	ret
	.area _CODE
	.area _CABS (ABS)
