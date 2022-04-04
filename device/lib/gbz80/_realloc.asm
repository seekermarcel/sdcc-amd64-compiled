;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _realloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _memcpy
	.globl _free
	.globl _malloc
	.globl _realloc
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
;../_realloc.c:84: void __xdata * realloc (void * p, size_t size)
;	---------------------------------
; Function realloc
; ---------------------------------
_realloc::
	add	sp, #-14
;../_realloc.c:142: }
	di
;../_realloc.c:92: pthis = _sdcc_find_memheader(p);
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	__sdcc_find_memheader
	add	sp, #2
	ldhl	sp,#4
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_realloc.c:93: if (pthis)
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00114$
;../_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	ldhl	sp,#18
	ld	a,#0xF9
	sub	a, (hl)
	inc	hl
	ld	a,#0xFF
	sbc	a, (hl)
	jr	NC,00111$
;../_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	jp	00115$
00111$:
;../_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#18
	ld	(hl+),a
	ld	(hl),d
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#12
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#4
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),e
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ldhl	sp,#9
	ld	(hl-),a
	ld	(hl),e
;../_realloc.c:105: pthis->len = size;
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),d
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ldhl	sp,#8
	ld	d, h
	ld	e, l
	ldhl	sp,#18
	ld	a, (de)
	sub	a, (hl)
	inc	hl
	inc	de
	ld	a, (de)
	sbc	a, (hl)
	jr	C,00108$
;../_realloc.c:105: pthis->len = size;
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#18
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../_realloc.c:106: ret = p;
	ldhl	sp,#16
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
	jp	00115$
00108$:
;../_realloc.c:110: if ((_sdcc_prev_memheader) &&
	ld	hl,#__sdcc_prev_memheader + 1
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00104$
;../_realloc.c:111: ((((unsigned int)pthis->next) -
	ldhl	sp,#12
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#8
	ld	(hl+),a
	ld	(hl),e
;../_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	ld	hl,#__sdcc_prev_memheader
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ldhl	sp,#9
	ld	(hl-),a
	ld	(hl),e
;../_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	ld	hl,#__sdcc_prev_memheader
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),e
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ldhl	sp,#6
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#6
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
	ldhl	sp,#18
	ld	a,b
	sub	a, (hl)
	inc	hl
	ld	a,c
	sbc	a, (hl)
	jp	C,00104$
;../_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	ld	hl,#__sdcc_prev_memheader + 1
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,bc
	ld	c,l
	ld	b,h
	ldhl	sp,#2
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#2
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../_realloc.c:119: pthis->next->prev = pnew;
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	inc	bc
	inc	bc
	ldhl	sp,#2
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;../_realloc.c:122: memmove(pnew, pthis, pthis->len);
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#6
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	dec	hl
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	dec	hl
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	_memmove
	add	sp, #6
;../_realloc.c:123: pnew->len = size;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#18
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;../_realloc.c:124: ret = MEM(pnew);
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	b,l
	ld	c,h
	ldhl	sp,#0
	ld	(hl),b
	inc	hl
	ld	(hl),c
	jp	00115$
00104$:
;../_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	ldhl	sp,#19
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ld	b,a
	ld	c,e
	push	bc
	call	_malloc
	add	sp, #2
	inc	sp
	inc	sp
	push	de
;../_realloc.c:129: if (ret)
	ldhl	sp,#1
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00115$
;../_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	push	bc
	push	de
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_memcpy
	add	sp, #6
;../_realloc.c:132: free(p);
	ldhl	sp,#16
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_free
	add	sp, #2
	jr	00115$
00114$:
;../_realloc.c:140: ret = malloc(size);
	ldhl	sp,#18
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_malloc
	add	sp, #2
	inc	sp
	inc	sp
	push	de
00115$:
	ei
;../_realloc.c:143: return ret;
	pop	de
	push	de
	add	sp, #14
	ret
	.area _CODE
	.area _CABS (ABS)
