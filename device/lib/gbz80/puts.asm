;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:51 2022
;--------------------------------------------------------
	.module puts
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _puts
	.globl _putchar
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
;../puts.c:31: int puts (char *s)
;	---------------------------------
; Function puts
; ---------------------------------
_puts::
	add	sp, #-3
;../puts.c:34: while (*s){
	ldhl	sp,#5
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
	ld	bc,#0x0000
00101$:
	pop	de
	push	de
	ld	a,(de)
	ldhl	sp,#2
	ld	(hl),a
;../puts.c:36: i++;
	inc	bc
;../puts.c:34: while (*s){
	ld	a,(hl)
	or	a, a
	jr	Z,00103$
;../puts.c:35: putchar(*s++);
	ld	a,(hl-)
	dec	hl
	inc	(hl)
	jr	NZ,00115$
	inc	hl
	inc	(hl)
00115$:
	push	bc
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;../puts.c:36: i++;
	jr	00101$
00103$:
;../puts.c:38: putchar('\n');
	push	bc
	ld	a,#0x0A
	push	af
	inc	sp
	call	_putchar
	inc	sp
	pop	bc
;../puts.c:39: return i+1;
	ld	e, c
	ld	d, b
	add	sp, #3
	ret
	.area _CODE
	.area _CABS (ABS)
