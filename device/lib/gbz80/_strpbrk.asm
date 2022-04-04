;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strpbrk
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strpbrk
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
;../_strpbrk.c:31: char * strpbrk ( const char * string, const char * control )
;	---------------------------------
; Function strpbrk
; ---------------------------------
_strpbrk::
	add	sp, #-4
;../_strpbrk.c:33: char *ret = NULL;
	ldhl	sp,#2
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../_strpbrk.c:36: while (ch = *control) {
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00105$:
	ld	a,(bc)
	ld	e,a
	or	a, a
	jp	Z,00107$
;../_strpbrk.c:37: char * p = strchr(string, ch);
	ld	a,e
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strchr
	add	sp, #4
	pop	bc
	inc	sp
	inc	sp
	push	de
;../_strpbrk.c:38: if (p != NULL && (ret == NULL || p < ret)) {
	ldhl	sp,#1
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00102$
	ldhl	sp,#3
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00101$
	dec	hl
	dec	hl
	ld	d, h
	ld	e, l
	inc	hl
	inc	hl
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	NC,00102$
00101$:
;../_strpbrk.c:39: ret = p;
	ldhl	sp,#0
	ld	a,(hl+)
	ld	e, (hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
00102$:
;../_strpbrk.c:41: control++;
	inc	bc
	jp	00105$
00107$:
;../_strpbrk.c:44: return (ret);
	pop	bc
	pop	de
	push	de
	push	bc
	add	sp, #4
	ret
	.area _CODE
	.area _CABS (ABS)
