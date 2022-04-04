;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strtok
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strtok
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_strtok_s_1_22:
	.ds 2
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
;../_strtok.c:36: char * strtok ( char * str, const char * control )
;	---------------------------------
; Function strtok
; ---------------------------------
_strtok::
;../_strtok.c:41: if ( str )
	ldhl	sp,#3
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00102$
;../_strtok.c:42: s = str;
	ld	a,(hl+)
	ld	e, (hl)
	ld	hl,#_strtok_s_1_22
	ld	(hl+),a
	ld	(hl),e
00102$:
;../_strtok.c:43: if ( !s )
	ld	hl,#_strtok_s_1_22 + 1
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00108$
;../_strtok.c:44: return NULL;
	ld	de,#0x0000
	ret
;../_strtok.c:46: while (*s) {
00108$:
	ld	hl,#_strtok_s_1_22 + 1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	or	a, a
	jr	Z,00110$
;../_strtok.c:47: if (strchr(control,*s))
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	de
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strchr
	add	sp, #4
	ld	a,d
	or	a,e
	jr	Z,00110$
;../_strtok.c:48: s++;
	ld	hl,#_strtok_s_1_22
	inc	(hl)
	jr	NZ,00108$
	inc	hl
	inc	(hl)
	jr	00108$
;../_strtok.c:50: break;
00110$:
;../_strtok.c:53: s1 = s;
	ld	hl,#_strtok_s_1_22 + 1
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../_strtok.c:55: while (*s) {
00113$:
;../_strtok.c:46: while (*s) {
	ld	hl,#_strtok_s_1_22 + 1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
;../_strtok.c:55: while (*s) {
	or	a, a
	jp	Z,00115$
;../_strtok.c:56: if (strchr(control,*s)) {
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strchr
	add	sp, #4
	pop	bc
	ld	a,d
	or	a,e
	jr	Z,00112$
;../_strtok.c:57: *s++ = '\0';
	ld	hl,#_strtok_s_1_22 + 1
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	ld	(de),a
	dec	hl
	inc	(hl)
	jr	NZ,00158$
	inc	hl
	inc	(hl)
00158$:
;../_strtok.c:58: return s1;
	ld	e, c
	ld	d, b
	ret
00112$:
;../_strtok.c:60: s++ ;
	ld	hl,#_strtok_s_1_22
	inc	(hl)
	jp	NZ,00113$
	inc	hl
	inc	(hl)
	jp	00113$
00115$:
;../_strtok.c:63: s = NULL;
	ld	hl,#_strtok_s_1_22
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../_strtok.c:65: if (*s1)
	ld	a,(bc)
	or	a, a
	jr	Z,00117$
;../_strtok.c:66: return s1;
	ld	e, c
	ld	d, b
	ret
00117$:
;../_strtok.c:68: return NULL;
	ld	de,#0x0000
	ret
	.area _CODE
	.area _CABS (ABS)
