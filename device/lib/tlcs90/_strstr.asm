;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:36 2022
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mtlcs90
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;../_strstr.c:31: char * strstr ( const char * str1, const char * str2 )
;	---------------------------------
; Function strstr
; ---------------------------------
_strstr::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-10
;../_strstr.c:33: const char * cp = str1;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strstr.c:37: if ( !*str2 )
	ld	a,6 (ix)
	ld	-10 (ix),a
	ld	a,7 (ix)
	ld	-9 (ix),a
	pop	hl
	push	hl
	ld	a,(hl)
	ld	-8 (ix), a
	or	a, a
	jr	NZ,00122$
;../_strstr.c:38: return str1;
	ld	l, c
	ld	h, b
	jp	00113$
;../_strstr.c:40: while (*cp)
00122$:
	ld	e, c
	ld	d, b
00110$:
	ld	a,(de)
	or	a, a
	jp	Z,00112$
;../_strstr.c:43: s2 = str2;
	ld	a,-10 (ix)
	ld	-7 (ix),a
	ld	a,-9 (ix)
	ld	-6 (ix),a
;../_strstr.c:45: while ( *s1 && *s2 && !(*s1-*s2) )
	ld	-5 (ix),e
	ld	-4 (ix),d
00105$:
	ld	hl, 5 (sp)
	ld	a,(hl)
	ld	-8 (ix),a
	ld	hl, 3 (sp)
	ld	a,(hl)
	ld	-1 (ix),a
	ld	a,-8 (ix)
	or	a, a
	jp	Z,00107$
	ld	a,-1 (ix)
	or	a, a
	jp	Z,00107$
	ld	a,-8 (ix)
	ld	-3 (ix),a
	ld	a,-8 (ix)
	rla
	sbc	a, a
	ld	-2 (ix),a
	ld	h,-1 (ix)
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	l,a
	ld	a,-3 (ix)
	sub	a, h
	ld	h,a
	ld	a,-2 (ix)
	sbc	a, l
	or	a,h
	jr	NZ,00107$
;../_strstr.c:46: s1++, s2++;
	inc	-5 (ix)
	jr	NZ,00148$
	inc	-4 (ix)
00148$:
	inc	-7 (ix)
	jp	NZ,00105$
	inc	-6 (ix)
	jp	00105$
00107$:
;../_strstr.c:48: if (!*s2)
	ld	a,-1 (ix)
	or	a, a
	jr	NZ,00109$
;../_strstr.c:49: return( (char*)cp );
	ld	l, c
	ld	h, b
	jr	00113$
00109$:
;../_strstr.c:51: cp++;
	inc	de
	ld	c, e
	ld	b, d
	jp	00110$
00112$:
;../_strstr.c:54: return (NULL) ;
	ld	hl,#0x0000
00113$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
