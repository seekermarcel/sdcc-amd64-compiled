;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:19 2022
;--------------------------------------------------------
	.r3k
	.module _strpbrk
	.optsdcc -mr3ka
	
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
	add	sp, #-2
;../_strpbrk.c:33: char *ret = NULL;
	ld	hl,#0x0000
	ld	0 (sp), hl
;../_strpbrk.c:36: while (ch = *control) {
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
00105$:
	ld	a,(de)
;../_strpbrk.c:37: char * p = strchr(string, ch);
	ld	c,a
	or	a,a
	jr	Z,00107$
	rla
	sbc	a, a
	ld	hl, 6 (sp)
00128$:
	ld	a, (hl)
	cp	a, c
	jr	Z,00127$
	or	a, a
	inc	hl
	jr	NZ, 00128$
	ld	l, a
	ld	h, a
00127$:
;../_strpbrk.c:38: if (p != NULL && (ret == NULL || p < ret)) {
	ld	a,h
	or	a,l
	jr	Z,00102$
	ld	a,-1 (ix)
	or	a,-2 (ix)
	jr	Z,00101$
	ld	a,l
	sub	a, -2 (ix)
	ld	a,h
	sbc	a, -1 (ix)
	jr	NC,00102$
00101$:
;../_strpbrk.c:39: ret = p;
	ld	0 (sp), hl
00102$:
;../_strpbrk.c:41: control++;
	inc	de
	jr	00105$
00107$:
;../_strpbrk.c:44: return (ret);
	ld	hl, 0 (sp)
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
