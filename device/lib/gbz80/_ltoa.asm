;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
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
;../_ltoa.c:56: void _ultoa(unsigned long value, char* string, unsigned char radix)
;	---------------------------------
; Function _ultoa
; ---------------------------------
__ultoa::
	add	sp, #-41
;../_ltoa.c:61: do {
	ldhl	sp,#1
	ld	a,l
	ld	d,h
	ldhl	sp,#37
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#0
	ld	(hl),#0x20
00103$:
;../_ltoa.c:62: unsigned char c = '0' + (value % radix);
	ldhl	sp,#49
	ld	a,(hl)
	ldhl	sp,#33
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#35
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__modulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ld	a,e
	add	a, #0x30
	ld	b,a
;../_ltoa.c:63: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, b
	jr	NC,00102$
;../_ltoa.c:64: c += 'A' - '9' - 1;
	ld	a,b
	add	a, #0x07
	ld	b,a
00102$:
;../_ltoa.c:65: buffer[--index] = c;
	ldhl	sp,#0
	dec	(hl)
	ldhl	sp,#38
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#39
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	(hl),b
;../_ltoa.c:66: value /= radix;
	ldhl	sp,#35
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#35
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#49
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divulong
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#43
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_ltoa.c:67: } while (value);
	ld	a,(hl-)
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jp	NZ,00103$
;../_ltoa.c:69: do {
	ldhl	sp,#48
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00106$:
;../_ltoa.c:70: *string++ = buffer[index];
	ldhl	sp,#38
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#0
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#39
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	(bc),a
	inc	bc
;../_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	ldhl	sp,#0
	inc	(hl)
	ld	a,(hl)
	sub	a, #0x20
	jr	NZ,00106$
;../_ltoa.c:73: *string = 0;  /* string terminator */
	xor	a, a
	ld	(bc),a
	add	sp, #41
	ret
;../_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	---------------------------------
; Function _ltoa
; ---------------------------------
__ltoa::
;../_ltoa.c:78: if (value < 0 && radix == 10) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	inc	hl
	ld	a, (hl)
	sbc	a, #0x00
	ld	d, (hl)
	ld	a,#0x00
	ld	e, a
	bit	7, e
	jr	Z,00114$
	bit	7, d
	jr	NZ,00115$
	cp	a, a
	jr	00115$
00114$:
	bit	7, d
	jr	Z,00115$
	scf
00115$:
	jp	NC,00102$
	ldhl	sp,#8
	ld	a,(hl)
	sub	a, #0x0A
	jp	NZ,00102$
;../_ltoa.c:79: *string++ = '-';
	ldhl	sp,#7
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,#0x2D
	ld	(bc),a
	inc	bc
	dec	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_ltoa.c:80: value = -value;
	ld	de,#0x0000
	ld	a,e
	ldhl	sp,#2
	sub	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	push	af
	ld	(hl-),a
	ld	(hl),e
	ld	de,#0x0000
	inc	hl
	inc	hl
	pop	af
	ld	a,e
	sbc	a, (hl)
	ld	e,a
	ld	a,d
	inc	hl
	sbc	a, (hl)
	ld	(hl-),a
	ld	(hl),e
00102$:
;../_ltoa.c:82: _ultoa(value, string, radix);
	ldhl	sp,#8
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
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
	call	__ultoa
	add	sp, #7
	ret
	.area _CODE
	.area _CABS (ABS)
