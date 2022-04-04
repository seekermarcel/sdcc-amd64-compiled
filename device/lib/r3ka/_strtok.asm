;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:19 2022
;--------------------------------------------------------
	.r3k
	.module _strtok
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strtok
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_strtok_s_1_22:
	.ds 2
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
;../_strtok.c:36: char * strtok ( char * str, const char * control )
;	---------------------------------
; Function strtok
; ---------------------------------
_strtok::
;../_strtok.c:41: if ( str )
	ld	iy,#2
	add	iy,sp
	ld	a,1 (iy)
	or	a,0 (iy)
	jr	Z,00102$
;../_strtok.c:42: s = str;
	ld	a,0 (iy)
	ld	(#_strtok_s_1_22 + 0),a
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	ld	(#_strtok_s_1_22 + 1),a
00102$:
;../_strtok.c:43: if ( !s )
	ld	a,(#_strtok_s_1_22 + 1)
	ld	iy,#_strtok_s_1_22
	or	a,0 (iy)
	jr	NZ,00108$
;../_strtok.c:44: return NULL;
	ld	hl,#0x0000
	ret
;../_strtok.c:46: while (*s) {
00108$:
	ld	hl,(_strtok_s_1_22)
	ld	a,(hl)
	or	a, a
	jr	Z,00110$
;../_strtok.c:47: if (strchr(control,*s))
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	ld	hl, 4 (sp)
00158$:
	ld	a, (hl)
	cp	a, e
	jr	Z,00157$
	or	a, a
	inc	hl
	jr	NZ, 00158$
	ld	l, a
	ld	h, a
00157$:
	ld	a,h
	or	a,l
	jr	Z,00110$
;../_strtok.c:48: s++;
	ld	iy,#_strtok_s_1_22
	inc	0 (iy)
	jr	NZ,00108$
	ld	iy,#_strtok_s_1_22
	inc	1 (iy)
	jr	00108$
;../_strtok.c:50: break;
00110$:
;../_strtok.c:53: s1 = s;
	ld	de,(_strtok_s_1_22)
;../_strtok.c:55: while (*s) {
00113$:
;../_strtok.c:46: while (*s) {
	ld	hl,(_strtok_s_1_22)
	ld	a,(hl)
;../_strtok.c:55: while (*s) {
	or	a, a
	jr	Z,00115$
;../_strtok.c:56: if (strchr(control,*s)) {
	ld	b,a
	rla
	sbc	a, a
	ld	hl, 4 (sp)
00161$:
	ld	a, (hl)
	cp	a, b
	jr	Z,00160$
	or	a, a
	inc	hl
	jr	NZ, 00161$
	ld	l, a
	ld	h, a
00160$:
	ld	a,h
	or	a,l
	jr	Z,00112$
;../_strtok.c:57: *s++ = '\0';
	ld	hl,(_strtok_s_1_22)
	ld	(hl),#0x00
	ld	iy,#_strtok_s_1_22
	inc	0 (iy)
	jr	NZ,00162$
	ld	iy,#_strtok_s_1_22
	inc	1 (iy)
00162$:
;../_strtok.c:58: return s1;
	ex	de,hl
	ret
00112$:
;../_strtok.c:60: s++ ;
	ld	iy,#_strtok_s_1_22
	inc	0 (iy)
	jr	NZ,00113$
	ld	iy,#_strtok_s_1_22
	inc	1 (iy)
	jr	00113$
00115$:
;../_strtok.c:63: s = NULL;
	ld	hl,#0x0000
	ld	(_strtok_s_1_22),hl
;../_strtok.c:65: if (*s1)
	ld	a,(de)
	or	a, a
	jr	Z,00117$
;../_strtok.c:66: return s1;
	ex	de,hl
	ret
00117$:
;../_strtok.c:68: return NULL;
	ld	hl,#0x0000
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
