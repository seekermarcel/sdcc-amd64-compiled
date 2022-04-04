;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:33 2022
;--------------------------------------------------------
	.module _ltoa
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __ltoa
	.globl __ultoa
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
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
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-37
	add	hl,sp
	ld	sp,hl
;../_ltoa.c:61: do {
	ld	hl,#0x0001
	add	hl,sp
	ld	c,l
	ld	b,h
	ld	-37 (ix),#0x20
00103$:
;../_ltoa.c:62: unsigned char c = '0' + (value % radix);
	ld	a,10 (ix)
	ld	-4 (ix),a
	ld	-3 (ix),#0x00
	ld	-2 (ix),#0x00
	ld	-1 (ix),#0x00
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__modulong
	pop	af
	pop	af
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	d,a
;../_ltoa.c:63: if (c > (unsigned char)'9')
	ld	a,#0x39
	sub	a, d
	jr	NC,00102$
;../_ltoa.c:64: c += 'A' - '9' - 1;
	ld	a,d
	add	a, #0x07
	ld	d,a
00102$:
;../_ltoa.c:65: buffer[--index] = c;
	dec	-37 (ix)
	ld	l,-37 (ix)
	ld	h,#0x00
	add	hl,bc
	ld	(hl),d
;../_ltoa.c:66: value /= radix;
	push	bc
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__divulong
	pop	af
	pop	af
	pop	af
	pop	af
	pop	bc
	ld	4 (ix),l
	ld	5 (ix),h
	ld	6 (ix),e
;../_ltoa.c:67: } while (value);
	ld	7 (ix), d
	ld	a, d
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jp	NZ,00103$
;../_ltoa.c:69: do {
	ld	e,8 (ix)
	ld	d,9 (ix)
	push	de
	pop	iy
	ld	d,-37 (ix)
00106$:
;../_ltoa.c:70: *string++ = buffer[index];
	ld	l,d
	ld	h,#0x00
	add	hl,bc
	ld	a,(hl)
	ld	0 (iy), a
	inc	iy
;../_ltoa.c:71: } while ( ++index != NUMBER_OF_DIGITS );
	inc	d
	ld	a,d
	sub	a, #0x20
	jr	NZ,00106$
;../_ltoa.c:73: *string = 0;  /* string terminator */
	ld	0 (iy), #0x00
	ld	sp, ix
	pop	ix
	ret
;../_ltoa.c:76: void _ltoa(long value, char* string, unsigned char radix)
;	---------------------------------
; Function _ltoa
; ---------------------------------
__ltoa::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_ltoa.c:78: if (value < 0 && radix == 10) {
	bit	7, 7 (ix)
	jr	Z,00102$
	ld	a,10 (ix)
	sub	a, #0x0A
	jr	NZ,00102$
;../_ltoa.c:79: *string++ = '-';
	ld	l,8 (ix)
	ld	h,9 (ix)
	ld	(hl),#0x2D
	inc	hl
	ld	8 (ix),l
	ld	9 (ix),h
;../_ltoa.c:80: value = -value;
	xor	a, a
	sub	a, 4 (ix)
	ld	4 (ix),a
	ld	a, #0x00
	sbc	a, 5 (ix)
	ld	5 (ix),a
	ld	a, #0x00
	sbc	a, 6 (ix)
	ld	6 (ix),a
	ld	a, #0x00
	sbc	a, 7 (ix)
	ld	7 (ix),a
00102$:
;../_ltoa.c:82: _ultoa(value, string, radix);
	ld	a,10 (ix)
	push	af
	inc	sp
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__ultoa
	ld	hl,#7
	add	hl,sp
	ld	sp,hl
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
