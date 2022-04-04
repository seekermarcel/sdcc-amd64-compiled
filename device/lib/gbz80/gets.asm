;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module gets
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl _getchar
	.globl _gets
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
;../gets.c:32: gets (char *s)
;	---------------------------------
; Function gets
; ---------------------------------
_gets::
	add	sp, #-3
;../gets.c:35: unsigned int count = 0;
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	call	_getchar
	ldhl	sp,#2
	ld	(hl),e
;../gets.c:40: switch(c)
	ld	a,(hl)
	sub	a, #0x08
	jr	Z,00101$
;../gets.c:57: *s = 0;
	ldhl	sp,#6
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../gets.c:40: switch(c)
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0A
	jp	Z,00105$
	ldhl	sp,#2
	ld	a,(hl)
	sub	a, #0x0D
	jp	Z,00105$
	jp	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	ldhl	sp,#1
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00109$
;../gets.c:45: putchar ('\b');
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:46: putchar (' ');
	ld	a,#0x20
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:47: putchar ('\b');
	ld	a,#0x08
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:48: --s;
	ldhl	sp,#6
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../gets.c:49: --count;
	pop	de
	push	de
	dec	de
	inc	sp
	inc	sp
	push	de
;../gets.c:51: break;
	jp	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	push	bc
	ld	a,#0x0D
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;../gets.c:56: putchar ('\n');
	push	bc
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;../gets.c:57: *s = 0;
	xor	a, a
	ld	(bc),a
;../gets.c:58: return s;
	ld	e, c
	ld	d, b
	jr	00111$
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ldhl	sp,#2
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	ldhl	sp,#5
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../gets.c:62: ++count;
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00136$
	inc	hl
	inc	(hl)
00136$:
;../gets.c:63: putchar (c);
	ldhl	sp,#2
	ld	a,(hl)
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:65: }
	jp	00109$
00111$:
	add	sp, #3
	ret
	.area _CODE
	.area _CABS (ABS)
