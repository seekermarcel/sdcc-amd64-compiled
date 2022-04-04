;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:32 2022
;--------------------------------------------------------
	.module gets
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _gets
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
;../gets.c:32: gets (char *s)
;	---------------------------------
; Function gets
; ---------------------------------
_gets::
	dec	sp
;../gets.c:35: unsigned int count = 0;
	ld	de,#0x0000
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	push	de
	call	_getchar
	pop	de
	ld	iy,#0
	add	iy,sp
	ld	0 (iy),l
;../gets.c:40: switch(c)
	ld	a,0 (iy)
	sub	a, #0x08
	jr	Z,00101$
;../gets.c:57: *s = 0;
	ld	hl, #3
	add	hl, sp
	ld	b, (hl)
	inc	hl
	ld	c, (hl)
;../gets.c:40: switch(c)
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	sub	a, #0x0A
	jr	Z,00105$
	ld	a,0 (iy)
	sub	a, #0x0D
	jr	Z,00105$
	jr	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	ld	a,d
	or	a,e
	jr	Z,00109$
;../gets.c:45: putchar ('\b');
	push	de
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
	ld	a,#0x20
	push	af
	inc	sp
	call	_putchar
	inc	sp
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	de
;../gets.c:48: --s;
	ld	iy,#3
	add	iy,sp
	ld	l,0 (iy)
	ld	h,1 (iy)
	dec	hl
	ld	0 (iy),l
	ld	1 (iy),h
;../gets.c:49: --count;
	dec	de
;../gets.c:51: break;
	jr	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	push	bc
	ld	a,#0x0D
	push	af
	inc	sp
	call	_putchar
	inc	sp
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;../gets.c:57: *s = 0;
	ld	l, b
	ld	h, c
	ld	(hl),#0x00
;../gets.c:58: return s;
	ld	l, b
	ld	h, c
	jr	00111$
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ld	l, b
	ld	h, c
	ld	iy,#0
	add	iy,sp
	ld	a,0 (iy)
	ld	(hl),a
	ld	a,b
	ld	hl,#3
	add	hl,sp
	add	a, #0x01
	ld	(hl),a
	ld	a,c
	adc	a, #0x00
	inc	hl
	ld	(hl),a
;../gets.c:62: ++count;
	inc	de
;../gets.c:63: putchar (c);
	push	de
	ld	a,0 (iy)
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	de
;../gets.c:65: }
	jp	00109$
00111$:
	inc	sp
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
