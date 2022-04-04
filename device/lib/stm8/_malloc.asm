;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:17:18 2022
;--------------------------------------------------------
	.module _malloc
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __sdcc_heap_init
	.globl _malloc
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	../_malloc.c: 59: _sdcc_heap_init(void)
;	-----------------------------------------
;	 function _sdcc_heap_init
;	-----------------------------------------
__sdcc_heap_init:
	sub	sp, #4
;	../_malloc.c: 61: MEMHEADER *pbase = &_sdcc_heap_start;
	ldw	x, #__sdcc_heap_start+0
	ldw	(0x01, sp), x
;	../_malloc.c: 62: unsigned int size = &_sdcc_heap_end - (char *)pbase;
	ldw	x, #__sdcc_heap_end+0
	ldw	y, (0x01, sp)
	ldw	(0x03, sp), y
	subw	x, (0x03, sp)
;	../_malloc.c: 64: pbase->next = (MEMHEADER *)((char *)pbase + size - HEADER_SIZE);
	addw	x, (0x03, sp)
	subw	x, #0x0006
	ldw	y, (0x01, sp)
	ldw	(y), x
;	../_malloc.c: 65: pbase->next->next = NULL; //And mark it as last
	clr	(0x1, x)
	clr	(x)
;	../_malloc.c: 66: pbase->prev       = NULL; //and mark first as first
	ldw	x, (0x01, sp)
	incw	x
	incw	x
	clr	(0x1, x)
	clr	(x)
;	../_malloc.c: 67: pbase->len        = 0;    //Empty and ready.
	ldw	x, (0x01, sp)
	addw	x, #0x0004
	clr	(0x1, x)
	clr	(x)
	addw	sp, #4
	ret
;	../_malloc.c: 71: malloc (unsigned int size)
;	-----------------------------------------
;	 function malloc
;	-----------------------------------------
_malloc:
	sub	sp, #16
;	../_malloc.c: 77: if (size>(0xFFFF-HEADER_SIZE))
	ldw	x, (0x13, sp)
	cpw	x, #0xfff9
	jrule	00102$
;	../_malloc.c: 79: return NULL; //To prevent overflow in next line
	clrw	x
	jp	00117$
00102$:
;	../_malloc.c: 82: size += HEADER_SIZE; //We need a memory for header too
	ldw	x, (0x13, sp)
	addw	x, #0x0006
	ldw	(0x13, sp), x
;	../_malloc.c: 83: current_header = &_sdcc_heap_start;
	ldw	x, #__sdcc_heap_start+0
	ldw	(0x05, sp), x
;	../_malloc.c: 132: }
	sim
;	../_malloc.c: 87: while (1)
00108$:
;	../_malloc.c: 96: if ((((unsigned int)current_header->next) -
	ldw	x, (0x05, sp)
	ldw	x, (x)
	ldw	(0x0f, sp), x
	ldw	y, (0x0f, sp)
;	../_malloc.c: 97: ((unsigned int)current_header) -
	ldw	x, (0x05, sp)
	ldw	(0x0d, sp), x
	subw	y, (0x0d, sp)
;	../_malloc.c: 98: current_header->len) >= size)
	ldw	x, (0x05, sp)
	ldw	x, (0x4, x)
	ldw	(0x0b, sp), x
	subw	y, (0x0b, sp)
	ldw	x, y
	cpw	x, (0x13, sp)
	jrc	00104$
;	../_malloc.c: 100: ret = &current_header->mem;
	ldw	x, (0x05, sp)
	addw	x, #0x0006
	ldw	(0x01, sp), x
;	../_malloc.c: 101: break;
	jra	00109$
00104$:
;	../_malloc.c: 103: current_header = current_header->next;    //else try next
	ldw	y, (0x0f, sp)
	ldw	(0x05, sp), y
;	../_malloc.c: 96: if ((((unsigned int)current_header->next) -
	ldw	x, (0x05, sp)
	ldw	x, (x)
	ldw	(0x0f, sp), x
;	../_malloc.c: 104: if (!current_header->next)
	ldw	x, (0x0f, sp)
	jrne	00108$
;	../_malloc.c: 106: ret = NULL;
	clrw	x
	ldw	(0x01, sp), x
;	../_malloc.c: 107: break;
00109$:
;	../_malloc.c: 111: if (ret)
	ldw	x, (0x01, sp)
	jreq	00116$
;	../_malloc.c: 113: if (!current_header->len)
	ldw	x, (0x05, sp)
	addw	x, #0x0004
	ld	a, (0x1, x)
	ld	(0x0a, sp), a
	ld	a, (x)
	ld	(0x09, sp), a
	ldw	y, (0x09, sp)
	jrne	00113$
;	../_malloc.c: 115: current_header->len = size; //for first allocation
	ldw	y, (0x13, sp)
	ldw	(x), y
	jra	00116$
00113$:
;	../_malloc.c: 120: new_header = (MEMHEADER * )((char *)current_header + current_header->len);
	ldw	y, (0x05, sp)
	addw	y, (0x09, sp)
	ldw	(0x03, sp), y
;	../_malloc.c: 121: new_header->next = current_header->next; //and plug it into the chain
	ldw	x, (0x03, sp)
	ldw	y, (0x0f, sp)
	ldw	(x), y
;	../_malloc.c: 122: new_header->prev = current_header;
	ldw	x, (0x03, sp)
	incw	x
	incw	x
	ldw	y, (0x05, sp)
	ldw	(x), y
;	../_malloc.c: 123: current_header->next  = new_header;
	ldw	x, (0x05, sp)
	ldw	y, (0x03, sp)
	ldw	(x), y
;	../_malloc.c: 124: if (new_header->next)
	ldw	x, (0x03, sp)
	ldw	x, (x)
	ldw	(0x07, sp), x
	ldw	x, (0x0f, sp)
	jreq	00111$
;	../_malloc.c: 126: new_header->next->prev = new_header;
	ldw	x, (0x07, sp)
	incw	x
	incw	x
	ldw	y, (0x03, sp)
	ldw	(x), y
00111$:
;	../_malloc.c: 128: new_header->len  = size; //mark as used
	ldw	x, (0x03, sp)
	ldw	y, (0x13, sp)
	ldw	(0x0004, x), y
;	../_malloc.c: 129: ret = &new_header->mem;
	ldw	x, (0x03, sp)
	addw	x, #0x0006
	ldw	(0x01, sp), x
00116$:
	rim
;	../_malloc.c: 133: return ret;
	ldw	x, (0x01, sp)
00117$:
	addw	sp, #16
	ret
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)
