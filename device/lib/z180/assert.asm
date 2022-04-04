;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:50 2022
;--------------------------------------------------------
	.hd64
	.module assert
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __assert
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
;../assert.c:32: void _assert(char *expr, const char *filename, unsigned int linenumber)
;	---------------------------------
; Function _assert
; ---------------------------------
__assert::
;../assert.c:34: printf("Assert(%s) failed at line %u in file %s.\n",
	ld	hl,#___str_0
	ld	iy,#4
	add	iy,sp
	ld	c,0 (iy)
	ld	b,1 (iy)
	push	bc
	ld	iy,#8
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
	call	_printf
	ld	hl,#8
	add	hl,sp
	ld	sp,hl
;../assert.c:36: while(1);
00102$:
	jr	00102$
___str_0:
	.ascii "Assert(%s) failed at line %u in file %s."
	.db 0x0A
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
