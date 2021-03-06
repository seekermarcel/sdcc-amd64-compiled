;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:08 2022
;--------------------------------------------------------
	.module vprintf
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _putchar
	.globl __print_format
	.globl _vprintf
	.globl _printf
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
;../vprintf.c:34: put_char_to_stdout (char c, void* p) _REENTRANT
;	---------------------------------
; Function put_char_to_stdout
; ---------------------------------
_put_char_to_stdout:
;../vprintf.c:37: putchar (c);
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_putchar
	inc	sp
	ret
;../vprintf.c:41: vprintf (const char *format, va_list ap)
;	---------------------------------
; Function vprintf
; ---------------------------------
_vprintf::
;../vprintf.c:43: return _print_format (put_char_to_stdout, NULL, format, ap);
	ld	hl, 4 (sp)
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl,#_put_char_to_stdout
	push	hl
	call	__print_format
	add	sp, #8
	ret
;../vprintf.c:47: printf (const char *format, ...)
;	---------------------------------
; Function printf
; ---------------------------------
_printf::
;../vprintf.c:52: va_start (arg, format);
	ld	hl,#0x0002+1+1
	add	hl,sp
;../vprintf.c:53: i = _print_format (put_char_to_stdout, NULL, format, arg);
	push	hl
	ld	hl, 4 (sp)
	push	hl
	ld	hl,#0x0000
	push	hl
	ld	hl,#_put_char_to_stdout
	push	hl
	call	__print_format
	add	sp, #8
;../vprintf.c:56: return i;
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
