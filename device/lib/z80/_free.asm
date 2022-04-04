;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:29 2022
;--------------------------------------------------------
	.module _free
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl __sdcc_prev_memheader
	.globl _free
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
__sdcc_prev_memheader::
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
;../_free.c:62: _sdcc_find_memheader(void * p)
;	---------------------------------
; Function _sdcc_find_memheader
; ---------------------------------
__sdcc_find_memheader::
;../_free.c:65: if (!p)
	ld	hl, #2+1
	add	hl, sp
	ld	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
;../_free.c:66: return NULL;
	ld	hl,#0x0000
	ret
00102$:
;../_free.c:67: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	pop	bc
	pop	de
	push	de
	push	bc
	ld	a,e
	add	a,#0xFA
	ld	e,a
	ld	a,d
	adc	a,#0xFF
	ld	d,a
;../_free.c:68: _sdcc_prev_memheader = pthis->prev;
	ld	l, e
	ld	h, d
	inc	hl
	inc	hl
	ld	a,(hl)
	ld	iy,#__sdcc_prev_memheader
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#__sdcc_prev_memheader + 1),a
;../_free.c:70: return (pthis);
	ex	de,hl
	ret
;../_free.c:74: free (void *p)
;	---------------------------------
; Function free
; ---------------------------------
_free::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;../_free.c:78: if ( p ) //For allocated pointers only!
	ld	a,5 (ix)
	or	a,4 (ix)
	jr	Z,00108$
;../_free.c:95: }
	ld	a,i
	di
	push	af
;../_free.c:81: pthis = (MEMHEADER * )((char *)  p - HEADER_SIZE); //to start of header
	ld	a, 4 (ix)
	ld	h, 5 (ix)
	add	a,#0xFA
	ld	c,a
	ld	a,h
	adc	a,#0xFF
	ld	b,a
;../_free.c:82: if ( pthis->prev ) // For the regular header
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,d
	or	a,e
	jr	Z,00104$
;../_free.c:84: prev_header = pthis->prev;
;../_free.c:85: prev_header->next = pthis->next;
	ld	a,(bc)
	ld	-2 (ix),a
	inc	bc
	ld	a,(bc)
	ld	-1 (ix),a
	dec	bc
	ld	l, e
	ld	h, d
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;../_free.c:86: if (pthis->next)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	or	a,h
	jr	Z,00105$
;../_free.c:88: pthis->next->prev = prev_header;
	inc	hl
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	jr	00105$
00104$:
;../_free.c:93: pthis->len = 0; //For the first header
	ld	hl,#0x0004
	add	hl,bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
00105$:
	pop	af
	jp	PO,00123$
	ei
00123$:
00108$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
