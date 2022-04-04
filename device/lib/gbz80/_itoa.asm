;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module _itoa
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __itoa
	.globl __uitoa
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
;../_itoa.c:40: void _uitoa(unsigned int value, char* string, unsigned char radix)
;	---------------------------------
; Function _uitoa
; ---------------------------------
__uitoa::
	add	sp, #-6
;../_itoa.c:45: do {
	ldhl	sp,#2
	ld	(hl),#0x00
00103$:
;../_itoa.c:46: string[index] = '0' + (value % radix);
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#2
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#12
	ld	a,(hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),#0x00
	push	bc
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__moduint
	add	sp, #4
	pop	bc
	ld	a,e
	add	a, #0x30
	ldhl	sp,#3
	ld	(hl),a
	ld	a,(hl)
	ld	(bc),a
;../_itoa.c:47: if (string[index] > '9')
	ld	a,(hl)
	ld	e,a
	ld	a,#0x39
	ld	d,a
	ld	a,#0x39
	sub	a, (hl)
	bit	7, e
	jr	Z,00133$
	bit	7, d
	jr	NZ,00134$
	cp	a, a
	jr	00134$
00133$:
	bit	7, d
	jr	Z,00134$
	scf
00134$:
	jr	NC,00102$
;../_itoa.c:48: string[index] += 'A' - '9' - 1;
	ld	a,(bc)
	add	a, #0x07
	ld	(bc),a
00102$:
;../_itoa.c:49: value /= radix;
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__divuint
	add	sp, #4
	ldhl	sp,#8
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_itoa.c:50: ++index;
	ldhl	sp,#2
	inc	(hl)
;../_itoa.c:51: } while (value != 0);
	ldhl	sp,#9
	ld	a,(hl-)
	or	a,(hl)
	jp	NZ,00103$
;../_itoa.c:54: string[index--] = '\0';
	ldhl	sp,#2
	ld	a,(hl)
	add	a,#0xFF
	inc	hl
	ld	(hl),a
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#2
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	xor	a, a
	ld	(bc),a
;../_itoa.c:57: while (index > i) {
	ldhl	sp,#1
	ld	(hl),#0x00
00106$:
	ldhl	sp,#3
	ld	a,(hl)
	ld	e,a
	dec	hl
	dec	hl
	ld	a,(hl)
	ld	d,a
	ld	a,(hl+)
	inc	hl
	sub	a, (hl)
	bit	7, e
	jr	Z,00135$
	bit	7, d
	jr	NZ,00136$
	cp	a, a
	jr	00136$
00135$:
	bit	7, d
	jr	Z,00136$
	scf
00136$:
	jp	NC,00109$
;../_itoa.c:58: char tmp = string[i];
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#1
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#0
	ld	(hl),a
;../_itoa.c:59: string[i] = string[index];
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#3
	ld	l,(hl)
	ld	h,#0x00
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,(bc)
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
;../_itoa.c:60: string[index] = tmp;
	ldhl	sp,#0
	ld	a,(hl)
	ld	(bc),a
;../_itoa.c:61: ++i;
	inc	hl
	inc	(hl)
;../_itoa.c:62: --index;
	inc	hl
	inc	hl
	dec	(hl)
	jp	00106$
00109$:
	add	sp, #6
	ret
;../_itoa.c:66: void _itoa(int value, char* string, unsigned char radix)
;	---------------------------------
; Function _itoa
; ---------------------------------
__itoa::
;../_itoa.c:68: if (value < 0 && radix == 10) {
	ldhl	sp,#2
	ld	a, (hl)
	sub	a, #0x00
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
	jr	NC,00102$
	ldhl	sp,#6
	ld	a,(hl)
	sub	a, #0x0A
	jr	NZ,00102$
;../_itoa.c:69: *string++ = '-';
	ldhl	sp,#5
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
;../_itoa.c:70: value = -value;
	ldhl	sp,#2
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	(hl-),a
	ld	(hl),e
00102$:
;../_itoa.c:72: _uitoa(value, string, radix);
	ldhl	sp,#6
	ld	a,(hl)
	push	af
	inc	sp
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#5
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__uitoa
	add	sp, #5
	ret
	.area _CODE
	.area _CABS (ABS)
