;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:52 2022
;--------------------------------------------------------
	.module _memmove
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memmove
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
;../_memmove.c:40: void * memmove (void * dst, const void * src, size_t acount)
;	---------------------------------
; Function memmove
; ---------------------------------
_memmove::
	add	sp, #-12
;../_memmove.c:42: void * ret = dst;
	ldhl	sp,#14
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_memmove.c:46: if ((uintptr_t)src < (uintptr_t)dst) {
	ldhl	sp,#16
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#14
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),e
;../_memmove.c:50: d = ((char *)dst)+acount-1;
	ldhl	sp,#15
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
;../_memmove.c:51: s = ((char *)src)+acount-1;
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
;../_memmove.c:52: while (acount--) {
	ldhl	sp,#18
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),e
;../_memmove.c:46: if ((uintptr_t)src < (uintptr_t)dst) {
	ldhl	sp,#6
	ld	d, h
	ld	e, l
	dec	hl
	dec	hl
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jp	NC,00108$
;../_memmove.c:50: d = ((char *)dst)+acount-1;
	ldhl	sp,#18
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	ldhl	sp,#5
	ld	(hl-),a
	ld	(hl),e
;../_memmove.c:51: s = ((char *)src)+acount-1;
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#18
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c,l
	ld	b,h
	dec	bc
;../_memmove.c:52: while (acount--) {
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
00101$:
	ldhl	sp,#6
	ld	a,(hl+)
	ld	e, (hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	inc	hl
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00109$
;../_memmove.c:53: *d-- = *s--;
	ld	a,(bc)
	ld	(hl),a
	dec	bc
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	ld	a,(hl)
	ld	(de),a
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	jp	00101$
00108$:
;../_memmove.c:60: d = dst;
	ldhl	sp,#8
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_memmove.c:61: s = src;
	pop	de
	pop	bc
	push	bc
	push	de
;../_memmove.c:62: while (acount--) {
00104$:
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	dec	de
	dec	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#3
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00109$
;../_memmove.c:63: *d++ = *s++;
	ld	a,(bc)
	inc	bc
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	(de),a
	dec	hl
	inc	(hl)
	jp	NZ,00104$
	inc	hl
	inc	(hl)
	jp	00104$
00109$:
;../_memmove.c:67: return(ret);
	pop	de
	push	de
	add	sp, #12
	ret
	.area _CODE
	.area _CABS (ABS)
