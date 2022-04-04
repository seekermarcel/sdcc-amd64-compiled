;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module atoi
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
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
;../atoi.c:34: int atoi(const char *nptr)
;	---------------------------------
; Function atoi
; ---------------------------------
_atoi::
	add	sp, #-11
;../atoi.c:36: int ret = 0;
	ldhl	sp,#3
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../atoi.c:39: while (isblank (*nptr))
	ldhl	sp,#14
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
;../atoi.c:40: nptr++;
	inc	bc
	jr	00101$
00131$:
	ldhl	sp,#13
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../atoi.c:42: neg = (*nptr == '-');
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
;../atoi.c:44: if (*nptr == '-' || *nptr == '+')
	bit	0,a
	jr	NZ,00104$
	ld	a,d
	sub	a, #0x2B
	jr	NZ,00129$
00104$:
;../atoi.c:45: nptr++;
	inc	bc
	ldhl	sp,#13
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../atoi.c:47: while (isdigit (*nptr))
00129$:
	ldhl	sp,#13
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#7
	ld	(hl+),a
	ld	(hl),e
00107$:
	ldhl	sp,#8
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
;../atoi.c:48: ret = ret * 10 + (*(nptr++) - '0');
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	a,l
	ld	d,h
	ldhl	sp,#9
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#7
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
	ldhl	sp,#9
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#3
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00107$
00109$:
;../atoi.c:50: return (neg ? -ret : ret); // Since -INT_MIN is INT_MIN in sdcc, the result value always turns out ok.
	ldhl	sp,#2
	bit	0,(hl)
	jr	Z,00120$
	xor	a, a
	inc	hl
	sub	a, (hl)
	ld	b,a
	ld	a, #0x00
	inc	hl
	sbc	a, (hl)
	ld	c,a
	jr	00121$
00120$:
	ldhl	sp,#3
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
00121$:
	ld	e, b
	ld	d, c
	add	sp, #11
	ret
	.area _CODE
	.area _CABS (ABS)
