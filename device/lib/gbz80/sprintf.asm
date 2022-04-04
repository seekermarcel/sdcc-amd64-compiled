;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:52 2022
;--------------------------------------------------------
	.module sprintf
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf
	.globl _sprintf
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
;../sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	---------------------------------
; Function put_char_to_string
; ---------------------------------
_put_char_to_string:
	add	sp, #-4
;../sprintf.c:36: char **buf = (char **)p;
	ldhl	sp,#7
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../sprintf.c:37: *(*buf)++ = c;
	pop	de
	push	de
	ld	a,(de)
	inc	hl
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	pop	hl
	push	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#6
	ld	a,(hl)
	ld	(de),a
	add	sp, #4
	ret
;../sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	---------------------------------
; Function vsprintf
; ---------------------------------
_vsprintf::
;../sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	ldhl	sp,#2
	ld	e,l
	ld	d,h
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	add	sp, #8
;../sprintf.c:45: *buf = 0;
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	xor	a, a
	ld	(bc),a
;../sprintf.c:46: return i;
	ret
;../sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	---------------------------------
; Function sprintf
; ---------------------------------
_sprintf::
;../sprintf.c:55: va_start (arg, format);
	ldhl	sp,#4
	ld	c,l
	ld	b,h
	inc	bc
	inc	bc
;../sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	ldhl	sp,#2
	ld	e,l
	ld	d,h
	push	bc
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	de
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	add	sp, #8
;../sprintf.c:57: *buf = 0;
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	xor	a, a
	ld	(bc),a
;../sprintf.c:60: return i;
	ret
	.area _CODE
	.area _CABS (ABS)
