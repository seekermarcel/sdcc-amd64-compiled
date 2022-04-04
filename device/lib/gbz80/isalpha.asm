;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module isalpha
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isalpha
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
;../isalpha.c:37: int isalpha (int c)
;	---------------------------------
; Function isalpha
; ---------------------------------
_isalpha::
	dec	sp
;../isalpha.c:39: return (isupper (c) || islower (c));
	ldhl	sp,#4
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;./../../include/ctype.h:80: return ((unsigned char)c >= 'A' && (unsigned char)c <= 'Z');
	ld	a,c
	sub	a, #0x41
	jr	C,00110$
	ld	a,#0x5A
	sub	a, c
	jr	NC,00106$
00110$:
;./../../include/ctype.h:71: return ((unsigned char)c >= 'a' && (unsigned char)c <= 'z');
	ld	a,c
	sub	a, #0x61
	jr	C,00113$
	ld	a,#0x7A
	sub	a, c
	jr	NC,00106$
00113$:
;../isalpha.c:39: return (isupper (c) || islower (c));
	ld	a,#0x00
	jr	00107$
00106$:
	ld	a,#0x01
00107$:
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
