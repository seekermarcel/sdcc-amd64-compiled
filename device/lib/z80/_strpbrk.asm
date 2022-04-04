;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:27 2022
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strpbrk
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
;../_strpbrk.c:31: char * strpbrk ( const char * string, const char * control )
;	---------------------------------
; Function strpbrk
; ---------------------------------
_strpbrk::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;../_strpbrk.c:33: char *ret = NULL;
	ld	hl,#0x0000
	ex	(sp), hl
;../_strpbrk.c:36: while (ch = *control) {
	ld	l,6 (ix)
	ld	h,7 (ix)
00105$:
	ld	a,(hl)
;../_strpbrk.c:37: char * p = strchr(string, ch);
	ld	c,a
	or	a,a
	jr	Z,00107$
	rla
	sbc	a, a
	ld	e,4 (ix)
	ld	d,5 (ix)
00128$:
	ld	a, (de)
	cp	a, c
	jr	Z,00127$
	or	a, a
	inc	de
	jr	NZ, 00128$
	ld	e, a
	ld	d, a
00127$:
;../_strpbrk.c:38: if (p != NULL && (ret == NULL || p < ret)) {
	ld	a,d
	or	a,e
	jr	Z,00102$
	ld	a,-1 (ix)
	or	a,-2 (ix)
	jr	Z,00101$
	ld	a,e
	sub	a, -2 (ix)
	ld	a,d
	sbc	a, -1 (ix)
	jr	NC,00102$
00101$:
;../_strpbrk.c:39: ret = p;
	inc	sp
	inc	sp
	push	de
00102$:
;../_strpbrk.c:41: control++;
	inc	hl
	jr	00105$
00107$:
;../_strpbrk.c:44: return (ret);
	pop	hl
	push	hl
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
