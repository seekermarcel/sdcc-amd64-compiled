;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;../_memchr.c:31: void *memchr(const void *s, int c, size_t n)
;	---------------------------------
; Function memchr
; ---------------------------------
_memchr::
	add	sp, #-4
;../_memchr.c:33: unsigned char *p = (unsigned char *)s;
	ldhl	sp,#6
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
;../_memchr.c:34: unsigned char *end = p + n;
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	b,l
	ld	c,h
	ldhl	sp,#0
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_memchr.c:38: return(0);
	pop	de
	pop	bc
	push	bc
	push	de
00105$:
;../_memchr.c:35: for(; p != end; p++)
	ldhl	sp,#0
	ld	a,(hl)
	sub	a, c
	jr	NZ,00121$
	inc	hl
	ld	a,(hl)
	sub	a, b
	jr	Z,00103$
00121$:
;../_memchr.c:36: if(*p == c)
	ld	a,(bc)
	ld	d,a
	ld	e,#0x00
	ldhl	sp,#8
	ld	a,(hl)
	sub	a, d
	jr	NZ,00106$
	inc	hl
	ld	a,(hl)
	sub	a, e
	jr	NZ,00106$
;../_memchr.c:37: return((void *)p);
	pop	bc
	pop	de
	push	de
	push	bc
	jr	00107$
00106$:
;../_memchr.c:35: for(; p != end; p++)
	inc	bc
	ldhl	sp,#2
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jr	00105$
00103$:
;../_memchr.c:38: return(0);
	ld	de,#0x0000
00107$:
	add	sp, #4
	ret
	.area _CODE
	.area _CABS (ABS)
