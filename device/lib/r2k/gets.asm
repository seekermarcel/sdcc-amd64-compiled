;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:07 2022
;--------------------------------------------------------
	.module gets
	.optsdcc -mr2k
	
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
	add	sp, #-2
;../gets.c:35: unsigned int count = 0;
	ld	hl,#0x0000
	ld	0 (sp), hl
;../gets.c:37: while (1)
00109$:
;../gets.c:39: c = getchar ();
	call	_getchar
	ld	b,l
;../gets.c:40: switch(c)
	ld	a,b
	sub	a, #0x08
	jr	Z,00101$
;../gets.c:57: *s = 0;
	ex	de, hl
	ld	hl, 4 (sp)
	ex	de, hl
;../gets.c:40: switch(c)
	ld	a,b
	cp	a,#0x0A
	jr	Z,00105$
	sub	a, #0x0D
	jr	Z,00105$
	jr	00106$
;../gets.c:42: case '\b': /* backspace */
00101$:
;../gets.c:43: if (count)
	ld	hl, #0
	add	hl, sp
	ld	a, (hl)
	inc	hl
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
	ld	hl, 4 (sp)
	dec	hl
	ld	4 (sp), hl
;../gets.c:49: --count;
	ld	hl, 0 (sp)
	dec	hl
	ld	0 (sp), hl
;../gets.c:51: break;
	jr	00109$
;../gets.c:54: case '\r': /* CR or LF */
00105$:
;../gets.c:55: putchar ('\r');
	push	de
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
	pop	de
;../gets.c:57: *s = 0;
	xor	a, a
	ld	(de),a
;../gets.c:58: return s;
	ex	de,hl
	jr	00111$
;../gets.c:60: default:
00106$:
;../gets.c:61: *s++ = c;
	ld	a,b
	ld	(de),a
	inc	de
	ld	iy,#4
	add	iy,sp
	ld	0 (iy),e
	ld	1 (iy),d
;../gets.c:62: ++count;
	ld	iy,#0
	add	iy,sp
	inc	0 (iy)
	jr	NZ,00136$
	inc	1 (iy)
00136$:
;../gets.c:63: putchar (c);
	push	bc
	inc	sp
	call	_putchar
	inc	sp
;../gets.c:65: }
	jp	00109$
00111$:
	add	sp, #2
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
