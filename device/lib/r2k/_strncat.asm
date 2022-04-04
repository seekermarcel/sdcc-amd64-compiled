;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:01 2022
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;../_strncat.c:31: char * strncat ( char * front, const char * back, size_t count )
;	---------------------------------
; Function strncat
; ---------------------------------
_strncat::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-5
;../_strncat.c:33: char *start = front;
	ld	c,4 (ix)
	ld	b,5 (ix)
;../_strncat.c:35: while (*front++);
	ld	l, c
	ld	h, b
00101$:
	ld	a,(hl)
	inc	hl
	or	a, a
	jr	NZ,00101$
;../_strncat.c:37: front--;
	ld	a,l
	add	a,#0xFF
	ld	4 (ix),a
	ld	a,h
	adc	a,#0xFF
	ld	5 (ix),a
;../_strncat.c:39: while (count--)
	ld	a,6 (ix)
	ld	-5 (ix),a
	ld	a,7 (ix)
	ld	-4 (ix),a
	ex	de, hl
	ld	hl, 9 (sp)
	ex	de, hl
	ld	a,8 (ix)
	ld	-2 (ix),a
	ld	a,9 (ix)
	ld	-1 (ix),a
00106$:
	ld	hl, 3 (sp)
	ld	a,-2 (ix)
	add	a,#0xFF
	ld	-2 (ix),a
	ld	a,-1 (ix)
	adc	a,#0xFF
	ld	-1 (ix),a
	ld	a,h
	or	a,l
	jr	Z,00108$
;../_strncat.c:40: if (!(*front++ = *back++))
	ld	hl, 0 (sp)
	ld	a,(hl)
	ld	-3 (ix),a
	inc	-5 (ix)
	jr	NZ,00132$
	inc	-4 (ix)
00132$:
	ld	a,-3 (ix)
	ld	(de),a
	inc	de
	ld	4 (ix),e
	ld	5 (ix),d
	ld	a,-3 (ix)
	or	a, a
	jr	NZ,00106$
;../_strncat.c:41: return(start);
	ld	l, c
	ld	h, b
	jr	00109$
00108$:
;../_strncat.c:43: *front = '\0';
	ld	hl, 9 (sp)
	ld	(hl),#0x00
;../_strncat.c:44: return(start);
	ld	l, c
	ld	h, b
00109$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
