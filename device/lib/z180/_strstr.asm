;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:45 2022
;--------------------------------------------------------
	.hd64
	.module _strstr
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;../_strstr.c:31: char * strstr ( const char * str1, const char * str2 )
;	---------------------------------
; Function strstr
; ---------------------------------
_strstr::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-10
	add	hl,sp
	ld	sp,hl
;../_strstr.c:33: const char * cp = str1;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strstr.c:37: if ( !*str2 )
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	a,(de)
	or	a, a
	jr	NZ,00122$
;../_strstr.c:38: return str1;
	ld	l, c
	ld	h, b
	jp	00113$
;../_strstr.c:40: while (*cp)
00122$:
	inc	sp
	inc	sp
	push	bc
00110$:
	pop	hl
	push	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00112$
;../_strstr.c:43: s2 = str2;
	ld	-8 (ix),e
	ld	-7 (ix),d
;../_strstr.c:45: while ( *s1 && *s2 && !(*s1-*s2) )
	ld	a,-10 (ix)
	ld	-2 (ix),a
	ld	a,-9 (ix)
	ld	-1 (ix),a
00105$:
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	a,(hl)
	ld	-5 (ix),a
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	ld	a,(hl)
	ld	-6 (ix),a
	ld	a,-5 (ix)
	or	a, a
	jr	Z,00107$
	ld	a,-6 (ix)
	or	a, a
	jr	Z,00107$
	ld	a,-5 (ix)
	ld	-4 (ix),a
	ld	a,-5 (ix)
	rla
	sbc	a, a
	ld	-3 (ix),a
	ld	h,-6 (ix)
	ld	a,-6 (ix)
	rla
	sbc	a, a
	ld	l,a
	ld	a,-4 (ix)
	sub	a, h
	ld	h,a
	ld	a,-3 (ix)
	sbc	a, l
	or	a,h
	jr	NZ,00107$
;../_strstr.c:46: s1++, s2++;
	inc	-2 (ix)
	jr	NZ,00148$
	inc	-1 (ix)
00148$:
	inc	-8 (ix)
	jr	NZ,00105$
	inc	-7 (ix)
	jr	00105$
00107$:
;../_strstr.c:48: if (!*s2)
	ld	a,-6 (ix)
	or	a, a
	jr	NZ,00109$
;../_strstr.c:49: return( (char*)cp );
	ld	l, c
	ld	h, b
	jr	00113$
00109$:
;../_strstr.c:51: cp++;
	inc	-10 (ix)
	jr	NZ,00150$
	inc	-9 (ix)
00150$:
	pop	bc
	push	bc
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
