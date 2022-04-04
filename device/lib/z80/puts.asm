;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:32 2022
;--------------------------------------------------------
	.module puts
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
	.globl _putchar
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
;../puts.c:31: int puts (char *s)
;	---------------------------------
; Function puts
; ---------------------------------
_puts::
	push	ix
	ld	ix,#0
	add	ix,sp
;../puts.c:34: while (*s){
	ld	l,4 (ix)
	ld	h,5 (ix)
	ld	de,#0x0000
00101$:
	ld	b,(hl)
;../puts.c:36: i++;
	inc	de
;../puts.c:34: while (*s){
	ld	a,b
	or	a, a
	jr	Z,00103$
;../puts.c:35: putchar(*s++);
	inc	hl
	push	hl
	push	de
	push	bc
	inc	sp
	call	_putchar
	inc	sp
	pop	de
	pop	hl
;../puts.c:36: i++;
	jr	00101$
00103$:
;../puts.c:38: putchar('\n');
	push	de
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
;../puts.c:39: return i+1;
	pop	hl
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
