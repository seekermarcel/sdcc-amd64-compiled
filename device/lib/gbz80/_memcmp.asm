;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _memcmp
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcmp
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
;../_memcmp.c:31: int memcmp (const void * buf1, const void * buf2, size_t count)
;	---------------------------------
; Function memcmp
; ---------------------------------
_memcmp::
	add	sp, #-6
;../_memcmp.c:33: if (!count)
	ldhl	sp,#13
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00112$
;../_memcmp.c:34: return(0);
	ld	de,#0x0000
	jp	00107$
;../_memcmp.c:36: while ( --count && *((char *)buf1) == *((char *)buf2) ) {
00112$:
	ldhl	sp,#12
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#1
	ld	(hl+),a
	ld	(hl),e
00104$:
	ldhl	sp,#2
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00106$
	ldhl	sp,#9
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	ldhl	sp,#0
	ld	(hl),a
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	inc	hl
	ld	(hl),a
	ldhl	sp,#0
	ld	a,(hl)
	ldhl	sp,#5
	sub	a, (hl)
	jr	NZ,00106$
;../_memcmp.c:37: buf1 = (char *)buf1 + 1;
	inc	bc
	ldhl	sp,#8
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_memcmp.c:38: buf2 = (char *)buf2 + 1;
	ldhl	sp,#4
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	ldhl	sp,#10
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00104$
00106$:
;../_memcmp.c:41: return( *((unsigned char *)buf1) - *((unsigned char *)buf2) );
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	b,a
	ld	c,#0x00
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl),#0x00
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
00107$:
	add	sp, #6
	ret
	.area _CODE
	.area _CABS (ABS)
