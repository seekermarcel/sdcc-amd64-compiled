;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _malloc
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_heap_init
	.globl _malloc
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
;../_malloc.c:59: _sdcc_heap_init(void)
;	---------------------------------
; Function _sdcc_heap_init
; ---------------------------------
__sdcc_heap_init::
;../_malloc.c:61: MEMHEADER *pbase = &_sdcc_heap_start;
;../_malloc.c:62: unsigned int size = &_sdcc_heap_end - (char *)pbase;
	ld	a,#<(__sdcc_heap_end)
	sub	a, #<(__sdcc_heap_start)
	ld	c,a
	ld	a,#>(__sdcc_heap_end)
	sbc	a, #>(__sdcc_heap_start)
	ld	b,a
;../_malloc.c:64: pbase->next = (MEMHEADER *)((char *)pbase + size - HEADER_SIZE);
	ld	hl,#__sdcc_heap_start
	add	hl,bc
	ld	c,l
	ld	b,h
	ld	a,c
	add	a,#0xFA
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	ld	hl,#__sdcc_heap_start
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_malloc.c:65: pbase->next->next = NULL; //And mark it as last
	ld	a,#0x00
	ld	(bc),a
	inc	bc
	ld	a,#0x00
	ld	(bc),a
;../_malloc.c:66: pbase->prev       = NULL; //and mark first as first
	ld	hl,#(__sdcc_heap_start + 0x0002)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
;../_malloc.c:67: pbase->len        = 0;    //Empty and ready.
	ld	hl,#(__sdcc_heap_start + 0x0004)
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ret
;../_malloc.c:71: malloc (unsigned int size)
;	---------------------------------
; Function malloc
; ---------------------------------
_malloc::
	add	sp, #-10
;../_malloc.c:77: if (size>(0xFFFF-HEADER_SIZE))
	ldhl	sp,#12
	ld	a,#0xF9
	sub	a, (hl)
	inc	hl
	ld	a,#0xFF
	sbc	a, (hl)
	jr	NC,00102$
;../_malloc.c:79: return NULL; //To prevent overflow in next line
	ld	de,#0x0000
	jp	00117$
00102$:
;../_malloc.c:82: size += HEADER_SIZE; //We need a memory for header too
	ldhl	sp,#13
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
;../_malloc.c:83: current_header = &_sdcc_heap_start;
	ldhl	sp,#0
	ld	(hl),#<(__sdcc_heap_start)
	inc	hl
	ld	(hl),#>(__sdcc_heap_start)
;../_malloc.c:132: }
	di
;../_malloc.c:87: while (1)
00108$:
;../_malloc.c:96: if ((((unsigned int)current_header->next) -
	pop	de
	push	de
	ld	a,(de)
	ldhl	sp,#8
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl-),a
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
;../_malloc.c:97: ((unsigned int)current_header) -
	pop	bc
	push	bc
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	(hl-),a
	ld	(hl),e
;../_malloc.c:98: current_header->len) >= size)
	pop	de
	push	de
	ld	hl,#0x0004
	add	hl,de
	ld	b,l
	ld	c,h
	ld	e, b
	ld	d, c
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,e
	sub	a,c
	ld	e,a
	ld	a,d
	sbc	a,b
	ld	b,a
	ld	c,e
	ldhl	sp,#12
	ld	a,c
	sub	a, (hl)
	inc	hl
	ld	a,b
	sbc	a, (hl)
	jr	C,00104$
;../_malloc.c:100: ret = &current_header->mem;
	pop	de
	push	de
	ld	hl,#0x0006
	add	hl,de
	ld	c,l
	ld	b,h
;../_malloc.c:101: break;
	jr	00109$
00104$:
;../_malloc.c:103: current_header = current_header->next;    //else try next
	ldhl	sp,#8
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	ldhl	sp,#0
	ld	(hl),d
	inc	hl
	ld	(hl),e
;../_malloc.c:96: if ((((unsigned int)current_header->next) -
	pop	de
	push	de
	ld	a,(de)
	ldhl	sp,#8
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../_malloc.c:104: if (!current_header->next)
	ld	a,(hl-)
	or	a,(hl)
	jp	NZ,00108$
;../_malloc.c:106: ret = NULL;
	ld	bc,#0x0000
;../_malloc.c:107: break;
00109$:
;../_malloc.c:111: if (ret)
	ld	a,b
	or	a,c
	jp	Z,00116$
;../_malloc.c:113: if (!current_header->len)
	pop	de
	push	de
	ld	hl,#0x0004
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
	ld	a,(de)
	ldhl	sp,#4
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00113$
;../_malloc.c:115: current_header->len = size; //for first allocation
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#12
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	jp	00116$
00113$:
;../_malloc.c:120: new_header = (MEMHEADER * )((char *)current_header + current_header->len);
	pop	bc
	push	bc
	ldhl	sp,#4
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
;../_malloc.c:121: new_header->next = current_header->next; //and plug it into the chain
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#8
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../_malloc.c:122: new_header->prev = current_header;
	ldhl	sp,#3
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	inc	bc
	inc	bc
	ldhl	sp,#0
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;../_malloc.c:123: current_header->next  = new_header;
	pop	de
	push	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
	inc	de
	inc	hl
	ld	a,(hl)
	ld	(de),a
;../_malloc.c:124: if (new_header->next)
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	inc	de
	ld	a,(de)
	ld	b,a
	ldhl	sp,#9
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00111$
;../_malloc.c:126: new_header->next->prev = new_header;
	inc	bc
	inc	bc
	ldhl	sp,#2
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
00111$:
;../_malloc.c:128: new_header->len  = size; //mark as used
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0004
	add	hl,de
	ld	c,l
	ld	b,h
	ldhl	sp,#12
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc),a
;../_malloc.c:129: ret = &new_header->mem;
	ldhl	sp,#3
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	hl,#0x0006
	add	hl,de
	ld	c,l
	ld	b,h
00116$:
	ei
;../_malloc.c:133: return ret;
	ld	e, c
	ld	d, b
00117$:
	add	sp, #10
	ret
	.area _CODE
	.area _CABS (ABS)
