;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:19 2022
;--------------------------------------------------------
	.r3k
	.module _strncmp
	.optsdcc -mr3ka
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;../_strncmp.c:31: int strncmp ( const char * first, const char * last, size_t count )
;	---------------------------------
; Function strncmp
; ---------------------------------
_strncmp::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-6
;../_strncmp.c:33: if (!count)
	ld	a,9 (ix)
	or	a,8 (ix)
	jr	NZ,00114$
;../_strncmp.c:34: return(0);
	ld	hl,#0x0000
	jr	00108$
;../_strncmp.c:36: while (--count && *first && *first == *last) {
00114$:
	ld	a,4 (ix)
	ld	-4 (ix),a
	ld	a,5 (ix)
	ld	-3 (ix),a
	ld	a,6 (ix)
	ld	-2 (ix),a
	ld	a,7 (ix)
	ld	-1 (ix),a
	ld	a,8 (ix)
	ld	-6 (ix),a
	ld	a,9 (ix)
	ld	-5 (ix),a
00105$:
	ld	hl, 0 (sp)
	dec	hl
	ld	0 (sp), hl
	ld	hl, 2 (sp)
	ld	e,(hl)
	ld	hl, 4 (sp)
	ld	c,(hl)
	ld	a,-5 (ix)
	or	a,-6 (ix)
	jr	Z,00107$
	ld	a,e
	or	a, a
	jr	Z,00107$
	ld	a,e
	sub	a, c
	jr	NZ,00107$
;../_strncmp.c:37: first++;
	inc	-4 (ix)
	jr	NZ,00133$
	inc	-3 (ix)
00133$:
;../_strncmp.c:38: last++;
	inc	-2 (ix)
	jr	NZ,00105$
	inc	-1 (ix)
	jr	00105$
00107$:
;../_strncmp.c:41: return( *first - *last );
	ld	a,e
	ld	l,a
	rla
	sbc	a, a
	ld	h,a
	ld	a,c
	rla
	sbc	a, a
	ld	b,a
	cp	a, a
	sbc	hl, bc
00108$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
