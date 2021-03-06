;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:28 2022
;--------------------------------------------------------
	.module _malloc
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_heap_init
	.globl _malloc
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
;../_malloc.c:59: _sdcc_heap_init(void)
;	---------------------------------
; Function _sdcc_heap_init
; ---------------------------------
__sdcc_heap_init::
;../_malloc.c:61: MEMHEADER *pbase = &_sdcc_heap_start;
;../_malloc.c:62: unsigned int size = &_sdcc_heap_end - (char *)pbase;
	ld	hl,#__sdcc_heap_end+0
	ld	de,#__sdcc_heap_start
	cp	a, a
	sbc	hl, de
;../_malloc.c:64: pbase->next = (MEMHEADER *)((char *)pbase + size - HEADER_SIZE);
	add	hl,de
	ld	a,l
	add	a,#0xFA
	ld	e,a
	ld	a,h
	adc	a,#0xFF
	ld	d,a
	ld	(__sdcc_heap_start), de
;../_malloc.c:65: pbase->next->next = NULL; //And mark it as last
	ld	a,#0x00
	ld	(de),a
	inc	de
	ld	a,#0x00
	ld	(de),a
;../_malloc.c:66: pbase->prev       = NULL; //and mark first as first
	ld	hl,#0x0000
	ld	((__sdcc_heap_start + 0x0002)), hl
;../_malloc.c:67: pbase->len        = 0;    //Empty and ready.
	ld	l, #0x00
	ld	((__sdcc_heap_start + 0x0004)), hl
	ret
;../_malloc.c:71: malloc (unsigned int size)
;	---------------------------------
; Function malloc
; ---------------------------------
_malloc::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;../_malloc.c:77: if (size>(0xFFFF-HEADER_SIZE))
	ld	a,#0xF9
	cp	a, 4 (ix)
	ld	a,#0xFF
	sbc	a, 5 (ix)
	jr	NC,00102$
;../_malloc.c:79: return NULL; //To prevent overflow in next line
	ld	hl,#0x0000
	jp	00117$
00102$:
;../_malloc.c:82: size += HEADER_SIZE; //We need a memory for header too
	ld	a,4 (ix)
	add	a, #0x06
	ld	4 (ix),a
	ld	a,5 (ix)
	adc	a, #0x00
	ld	5 (ix),a
;../_malloc.c:83: current_header = &_sdcc_heap_start;
	ld	-2 (ix),#<(__sdcc_heap_start)
	ld	-1 (ix),#>(__sdcc_heap_start)
;../_malloc.c:132: }
	ld	a,i
	di
	push	af
;../_malloc.c:87: while (1)
00108$:
;../_malloc.c:96: if ((((unsigned int)current_header->next) -
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l, e
	ld	h, d
;../_malloc.c:97: ((unsigned int)current_header) -
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	ld	a,l
	sub	a, c
	ld	c,a
	ld	a,h
	sbc	a, b
	ld	b,a
;../_malloc.c:98: current_header->len) >= size)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,c
	sub	a, l
	ld	l,a
	ld	a,b
	sbc	a, h
	ld	h,a
	ld	a,l
	sub	a, 4 (ix)
	ld	a,h
	sbc	a, 5 (ix)
	jr	C,00104$
;../_malloc.c:100: ret = &current_header->mem;
	ld	a,-2 (ix)
	add	a, #0x06
	ld	c,a
	ld	a,-1 (ix)
	adc	a, #0x00
	ld	b,a
;../_malloc.c:101: break;
	jr	00109$
00104$:
;../_malloc.c:103: current_header = current_header->next;    //else try next
	ld	-2 (ix),e
	ld	-1 (ix),d
;../_malloc.c:96: if ((((unsigned int)current_header->next) -
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
;../_malloc.c:104: if (!current_header->next)
	ld	a,d
	or	a,e
	jr	NZ,00108$
;../_malloc.c:106: ret = NULL;
	ld	bc,#0x0000
;../_malloc.c:107: break;
00109$:
;../_malloc.c:111: if (ret)
	ld	a,b
	or	a,c
	jr	Z,00116$
;../_malloc.c:113: if (!current_header->len)
	ld	iy,#0x0004
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	pop	bc
	ld	l,0 (iy)
	ld	h,1 (iy)
	ld	a,h
	or	a,l
	jr	NZ,00113$
;../_malloc.c:115: current_header->len = size; //for first allocation
	ld	a,4 (ix)
	ld	0 (iy),a
	ld	a,5 (ix)
	ld	1 (iy),a
	jr	00116$
00113$:
;../_malloc.c:120: new_header = (MEMHEADER * )((char *)current_header + current_header->len);
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	hl,bc
;../_malloc.c:121: new_header->next = current_header->next; //and plug it into the chain
	ld	c,l
	ld	b,h
	ld	(hl),e
	inc	hl
	ld	(hl),d
;../_malloc.c:122: new_header->prev = current_header;
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a,-2 (ix)
	ld	(hl),a
	inc	hl
	ld	a,-1 (ix)
	ld	(hl),a
;../_malloc.c:123: current_header->next  = new_header;
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_malloc.c:124: if (new_header->next)
	ld	l, c
	ld	h, b
	ld	a, (hl)
	inc	hl
	ld	h,(hl)
	ld	l,a
	ld	a,d
	or	a,e
	jr	Z,00111$
;../_malloc.c:126: new_header->next->prev = new_header;
	inc	hl
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
00111$:
;../_malloc.c:128: new_header->len  = size; //mark as used
	ld	hl,#0x0004
	add	hl,bc
	ld	a,4 (ix)
	ld	(hl),a
	inc	hl
	ld	a,5 (ix)
	ld	(hl),a
;../_malloc.c:129: ret = &new_header->mem;
	ld	hl,#0x0006
	add	hl,bc
	ld	c, l
	ld	b, h
00116$:
	pop	af
	jp	PO,00148$
	ei
00148$:
;../_malloc.c:133: return ret;
	ld	l, c
	ld	h, b
00117$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
