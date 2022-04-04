;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _free
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
__sdcc_prev_memheader::
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
;../_free.c:62: _sdcc_find_memheader(void * p)
;	---------------------------------
; Function _sdcc_find_memheader
; ---------------------------------
__sdcc_find_memheader::
	add	sp, #-2
;../_free.c:65: if (!p)
	ldhl	sp,#5
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00102$
;../_free.c:66: return NULL;
	ld	de,#0x0000
	jr	00103$
00102$:
;../_free.c:67: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
;../_free.c:68: _sdcc_prev_memheader = pthis->prev;
	ld	hl,#0x0002
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	pop	de
	push	de
	ld	a,(de)
	ld	hl,#__sdcc_prev_memheader
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../_free.c:70: return (pthis);
	ld	e, c
	ld	d, b
00103$:
	add	sp, #2
	ret
;../_free.c:74: free (void *p)
;	---------------------------------
; Function free
; ---------------------------------
_free::
	add	sp, #-4
;../_free.c:78: if ( p ) //For allocated pointers only!
	ldhl	sp,#7
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00108$
;../_free.c:95: }
	di
;../_free.c:81: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ldhl	sp,#2
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_free.c:82: if ( pthis->prev ) // For the regular header
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ld	e, c
	ld	d, b
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
	or	a,b
	jp	Z,00104$
;../_free.c:84: prev_header = pthis->prev;
	ldhl	sp,#0
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_free.c:85: prev_header->next = pthis->next;
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	inc	de
	ld	a,(de)
	ld	c,a
	pop	hl
	push	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_free.c:86: if (pthis->next)
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	or	a,c
	jr	Z,00105$
;../_free.c:88: pthis->next->prev = prev_header;
	inc	bc
	inc	bc
	ldhl	sp,#0
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
	jr	00105$
00104$:
;../_free.c:93: pthis->len = 0; //For the first header
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	b,l
	ld	c,h
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
00105$:
	ei
00108$:
	add	sp, #4
	ret
	.area _CODE
	.area _CABS (ABS)
