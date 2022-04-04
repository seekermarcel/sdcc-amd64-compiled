;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:46 2022
;--------------------------------------------------------
	.hd64
	.module _realloc
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_find_memheader
	.globl _memmove
	.globl _free
	.globl _malloc
	.globl _realloc
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
;../_realloc.c:84: void __xdata * realloc (void * p, size_t size)
;	---------------------------------
; Function realloc
; ---------------------------------
_realloc::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;../_realloc.c:142: }
	ld	a,i
	di
	push	af
;../_realloc.c:92: pthis = _sdcc_find_memheader(p);
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	__sdcc_find_memheader
	inc	sp
	inc	sp
	ld	c, l
	ld	b, h
;../_realloc.c:93: if (pthis)
	ld	a,b
	or	a,c
	jp	Z,00114$
;../_realloc.c:95: if (size > (0xFFFF-HEADER_SIZE))
	ld	a,#0xF9
	cp	a, 6 (ix)
	ld	a,#0xFF
	sbc	a, 7 (ix)
	jr	NC,00111$
;../_realloc.c:97: ret = (void __xdata *) NULL; //To prevent overflow in next line
	ld	de,#0x0000
	jp	00115$
00111$:
;../_realloc.c:101: size += HEADER_SIZE; //We need a memory for header too
	ld	a,6 (ix)
	add	a, #0x06
	ld	6 (ix),a
	ld	a,7 (ix)
	adc	a, #0x00
	ld	7 (ix),a
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ld	l, c
	ld	h, b
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	-4 (ix),e
	ld	-3 (ix),d
	ld	l, c
	ld	h, b
	ld	a,-4 (ix)
	sub	a, l
	ld	l,a
	ld	a,-3 (ix)
	sbc	a, h
	ld	h,a
;../_realloc.c:105: pthis->len = size;
	ld	a,c
	add	a, #0x04
	ld	-4 (ix),a
	ld	a,b
	adc	a, #0x00
	ld	-3 (ix),a
;../_realloc.c:103: if ((((unsigned int)pthis->next) - ((unsigned int)pthis)) >= size)
	ld	a,l
	sub	a, 6 (ix)
	ld	a,h
	sbc	a, 7 (ix)
	jr	C,00108$
;../_realloc.c:105: pthis->len = size;
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;../_realloc.c:106: ret = p;
	ld	e,4 (ix)
	ld	d,5 (ix)
	jp	00115$
00108$:
;../_realloc.c:110: if ((_sdcc_prev_memheader) &&
	ld	a,(#__sdcc_prev_memheader + 1)
	ld	hl,#__sdcc_prev_memheader + 0
	or	a,(hl)
	jp	Z,00104$
;../_realloc.c:111: ((((unsigned int)pthis->next) -
;../_realloc.c:112: ((unsigned int)_sdcc_prev_memheader) -
	ld	hl,(__sdcc_prev_memheader)
	ld	a,e
	sub	a, l
	ld	-2 (ix),a
	ld	a,d
	sbc	a, h
	ld	-1 (ix),a
;../_realloc.c:113: _sdcc_prev_memheader->len) >= size))
	ld	hl,(__sdcc_prev_memheader)
	ld	-6 (ix),l
	ld	-5 (ix),h
	pop	de
	pop	hl
	push	hl
	push	de
	ld	de, #0x0004
	add	hl, de
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,-2 (ix)
	sub	a, e
	ld	h,a
	ld	a,-1 (ix)
	sbc	a, d
	ld	l,a
	ld	a,h
	sub	a, 6 (ix)
	ld	a,l
	sbc	a, 7 (ix)
	jr	C,00104$
;../_realloc.c:115: pnew = (MEMHEADER __xdata * )((char __xdata *)_sdcc_prev_memheader + _sdcc_prev_memheader->len);
	ld	hl,(__sdcc_prev_memheader)
	add	hl,de
	ex	de,hl
;../_realloc.c:116: _sdcc_prev_memheader->next = pnew;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_realloc.c:119: pthis->next->prev = pnew;
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	inc	hl
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_realloc.c:122: memmove(pnew, pthis, pthis->len);
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	push	de
	pop	iy
	push	de
	push	hl
	push	bc
	push	iy
	call	_memmove
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	pop	de
;../_realloc.c:123: pnew->len = size;
	ld	hl,#0x0004
	add	hl,de
	ld	a,6 (ix)
	ld	(hl),a
	inc	hl
	ld	a,7 (ix)
	ld	(hl),a
;../_realloc.c:124: ret = MEM(pnew);
	ld	hl,#0x0006
	add	hl,de
	ex	de,hl
	jr	00115$
00104$:
;../_realloc.c:128: ret = malloc(size - HEADER_SIZE);
	ld	a,6 (ix)
	add	a,#0xFA
	ld	l,a
	ld	a,7 (ix)
	adc	a,#0xFF
	ld	h,a
	push	bc
	push	hl
	call	_malloc
	inc	sp
	inc	sp
	pop	bc
	ex	de,hl
;../_realloc.c:129: if (ret)
	ld	a,d
	or	a,e
	jr	Z,00115$
;../_realloc.c:131: memcpy(ret, MEM(pthis), pthis->len - HEADER_SIZE);
	ld	iy,#0x0006
	add	iy, bc
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	ld	b,(hl)
	inc	hl
	ld	h,(hl)
	ld	a,b
	add	a,#0xFA
	ld	l,a
	ld	a,h
	adc	a,#0xFF
	ld	h,a
	push	de
	push	hl
	push	iy
	push	de
	call	_memcpy
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_free
	inc	sp
	inc	sp
	pop	de
	jr	00115$
00114$:
;../_realloc.c:140: ret = malloc(size);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	call	_malloc
	inc	sp
	inc	sp
	ex	de,hl
00115$:
	pop	af
	jp	PO,00143$
	ei
00143$:
;../_realloc.c:143: return ret;
	ex	de,hl
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
