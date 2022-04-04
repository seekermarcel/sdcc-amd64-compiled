;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strrchr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strrchr
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
;../_strrchr.c:34: char * strrchr ( const char * string, int ch )
;	---------------------------------
; Function strrchr
; ---------------------------------
_strrchr::
	add	sp, #-2
;../_strrchr.c:37: const char * start = string;
	ldhl	sp,#4
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_strrchr.c:39: while (*string++)                       /* find end of string */
	pop	bc
	push	bc
00101$:
	ld	a,(bc)
	inc	bc
	or	a, a
	jr	NZ,00101$
;../_strrchr.c:42: while (--string != start && *string != ch)
00105$:
	dec	bc
	ld	a,(bc)
	ld	d,a
	rla
	sbc	a, a
	ld	e,a
	ldhl	sp,#6
	ld	a,(hl)
	sub	a, d
	jr	NZ,00133$
	inc	hl
	ld	a,(hl)
	sub	a, e
	jr	NZ,00133$
	ld	a,#0x01
	jr	00134$
00133$:
	xor	a,a
00134$:
	ld	d,a
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, c
	jr	NZ,00135$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jr	Z,00107$
00135$:
	ld	a,d
	or	a, a
	jr	Z,00105$
00107$:
;../_strrchr.c:45: if (*string == ch)                      /* char found ? */
	ld	a,d
	or	a, a
	jr	Z,00109$
;../_strrchr.c:46: return( (char *)string );
	ld	e, c
	ld	d, b
	jr	00110$
00109$:
;../_strrchr.c:48: return (NULL) ;
	ld	de,#0x0000
00110$:
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
