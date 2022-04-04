;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:02 2022
;--------------------------------------------------------
	.module _memchr
	.optsdcc -mr2k
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memchr
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
;../_memchr.c:31: void *memchr(const void *s, int c, size_t n)
;	---------------------------------
; Function memchr
; ---------------------------------
_memchr::
	push	ix
	ld	ix,#0
	add	ix,sp
	add	sp, #-4
;../_memchr.c:33: unsigned char *p = (unsigned char *)s;
	ex	de, hl
	ld	hl, 8 (sp)
	ex	de, hl
;../_memchr.c:34: unsigned char *end = p + n;
	ld	hl, 12 (sp)
	add	hl,de
	ld	0 (sp), hl
;../_memchr.c:38: return(0);
	ld	-2 (ix),e
	ld	-1 (ix),d
00105$:
;../_memchr.c:35: for(; p != end; p++)
	ld	a,-4 (ix)
	sub	a, -2 (ix)
	jr	NZ,00121$
	ld	a,-3 (ix)
	sub	a, -1 (ix)
	jr	Z,00103$
00121$:
;../_memchr.c:36: if(*p == c)
	ld	hl, 2 (sp)
	ld	b,(hl)
	ld	c,#0x00
	ld	a,6 (ix)
	sub	a, b
	jr	NZ,00106$
	ld	a,7 (ix)
	sub	a, c
	jr	NZ,00106$
;../_memchr.c:37: return((void *)p);
	ex	de,hl
	jr	00107$
00106$:
;../_memchr.c:35: for(; p != end; p++)
	inc	-2 (ix)
	jr	NZ,00124$
	inc	-1 (ix)
00124$:
	ex	de, hl
	ld	hl, 2 (sp)
	ex	de, hl
	jr	00105$
00103$:
;../_memchr.c:38: return(0);
	ld	hl,#0x0000
00107$:
	ld	sp, ix
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
