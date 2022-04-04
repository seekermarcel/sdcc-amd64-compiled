;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:44 2022
;--------------------------------------------------------
	.hd64
	.module _strchr
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;../_strchr.c:36: char * strchr ( const char * string, int ch )
;	---------------------------------
; Function strchr
; ---------------------------------
_strchr::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;../_strchr.c:39: while (*string && *string != ch)
	ld	c,4 (ix)
	ld	b,5 (ix)
00102$:
	ld	a,(bc)
	ld	-1 (ix), a
	ld	d, a
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	e,a
	ld	a,6 (ix)
	sub	a, d
	jr	NZ,00126$
	ld	a,7 (ix)
	sub	a, e
	jr	NZ,00126$
	ld	a,#0x01
	jr	00127$
00126$:
	xor	a,a
00127$:
	ld	d,a
	ld	a,-1 (ix)
	or	a, a
	jr	Z,00104$
	ld	a,d
	or	a, a
	jr	NZ,00104$
;../_strchr.c:40: string++;
	inc	bc
	jr	00102$
00104$:
;../_strchr.c:42: if (*string == ch)
	ld	a,d
	or	a, a
	jr	Z,00106$
;../_strchr.c:43: return(string);
	ld	l, c
	ld	h, b
	jr	00107$
00106$:
;../_strchr.c:44: return ( NULL );
	ld	hl,#0x0000
00107$:
	inc	sp
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
