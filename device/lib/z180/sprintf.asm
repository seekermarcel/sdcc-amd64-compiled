;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:51 2022
;--------------------------------------------------------
	.hd64
	.module sprintf
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __print_format
	.globl _vsprintf
	.globl _sprintf
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
;../sprintf.c:34: put_char_to_string (char c, void* p) _REENTRANT
;	---------------------------------
; Function put_char_to_string
; ---------------------------------
_put_char_to_string:
	push	ix
	ld	ix,#0
	add	ix,sp
;../sprintf.c:36: char **buf = (char **)p;
	ld	l,5 (ix)
	ld	h,6 (ix)
;../sprintf.c:37: *(*buf)++ = c;
	push	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	hl
	ld	c, e
	ld	b, d
	inc	bc
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ld	a,4 (ix)
	ld	(de),a
	pop	ix
	ret
;../sprintf.c:41: vsprintf (char *buf, const char *format, va_list ap)
;	---------------------------------
; Function vsprintf
; ---------------------------------
_vsprintf::
;../sprintf.c:44: i = _print_format (put_char_to_string, &buf, format, ap);
	ld	hl,#0x0002
	add	hl,sp
	ld	iy,#6
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	push	bc
	ld	iy,#6
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	push	bc
	push	hl
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	d,l
	ld	e,h
;../sprintf.c:45: *buf = 0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl),#0x00
;../sprintf.c:46: return i;
	ld	l, d
	ld	h, e
	ret
;../sprintf.c:50: sprintf (char *buf, const char *format, ...)
;	---------------------------------
; Function sprintf
; ---------------------------------
_sprintf::
	push	ix
	ld	ix,#0
	add	ix,sp
;../sprintf.c:55: va_start (arg, format);
	ld	hl,#0x0006+1+1
	add	hl,sp
	ld	d,l
	ld	e,h
;../sprintf.c:56: i = _print_format (put_char_to_string, &buf, format, arg);
	ld	hl,#0x0004
	add	hl,sp
	ld	c, d
	ld	b, e
	push	bc
	ld	c,6 (ix)
	ld	b,7 (ix)
	push	bc
	push	hl
	ld	hl,#_put_char_to_string
	push	hl
	call	__print_format
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	inc	sp
	ld	d,l
	ld	e,h
;../sprintf.c:57: *buf = 0;
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	(hl),#0x00
;../sprintf.c:60: return i;
	ld	l, d
	ld	h, e
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
