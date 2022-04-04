;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strncmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncmp
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
;../_strncmp.c:31: int strncmp ( const char * first, const char * last, size_t count )
;	---------------------------------
; Function strncmp
; ---------------------------------
_strncmp::
	add	sp, #-5
;../_strncmp.c:33: if (!count)
	ldhl	sp,#12
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00114$
;../_strncmp.c:34: return(0);
	ld	de,#0x0000
	jp	00108$
;../_strncmp.c:36: while (--count && *first && *first == *last) {
00114$:
	ldhl	sp,#7
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#10
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
00105$:
	ldhl	sp,#4
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	dec	hl
	dec	hl
	ld	(hl),a
	ld	a,(bc)
	ld	d,a
	ldhl	sp,#4
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00107$
	ldhl	sp,#0
	ld	a,(hl)
	or	a, a
	jr	Z,00107$
	ld	a,(hl)
	sub	a, d
	jr	NZ,00107$
;../_strncmp.c:37: first++;
	ldhl	sp,#1
	inc	(hl)
	jr	NZ,00133$
	inc	hl
	inc	(hl)
00133$:
;../_strncmp.c:38: last++;
	inc	bc
	jp	00105$
00107$:
;../_strncmp.c:41: return( *first - *last );
	ldhl	sp,#0
	ld	b,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	c,a
	ldhl	sp,#3
	ld	(hl),d
	ld	a,d
	rla
	sbc	a, a
	inc	hl
	ld	(hl),a
	ld	e, b
	ld	d, c
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	c,a
	ld	b,e
	ld	e, b
	ld	d, c
00108$:
	add	sp, #5
	ret
	.area _CODE
	.area _CABS (ABS)
