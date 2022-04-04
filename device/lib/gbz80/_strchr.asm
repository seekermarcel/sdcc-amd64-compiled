;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strchr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
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
;../_strchr.c:36: char * strchr ( const char * string, int ch )
;	---------------------------------
; Function strchr
; ---------------------------------
_strchr::
	dec	sp
;../_strchr.c:39: while (*string && *string != ch)
	ldhl	sp,#4
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00102$:
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
	ld	d,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	e,a
	ldhl	sp,#5
	ld	a,(hl)
	sub	a, d
	jr	NZ,00126$
	inc	hl
	ld	a,(hl)
	sub	a, e
	jr	NZ,00126$
	ld	a,#0x01
	jr	00127$
00126$:
	xor	a,a
00127$:
	ld	d,a
	ldhl	sp,#0
	ld	a,(hl)
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
	ld	e, c
	ld	d, b
	jr	00107$
00106$:
;../_strchr.c:44: return ( NULL );
	ld	de,#0x0000
00107$:
	inc	sp
	ret
	.area _CODE
	.area _CABS (ABS)
