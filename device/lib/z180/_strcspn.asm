;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:44 2022
;--------------------------------------------------------
	.hd64
	.module _strcspn
	.optsdcc -mz180
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strcspn
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
;../_strcspn.c:31: size_t strcspn ( const char * string, const char * control )
;	---------------------------------
; Function strcspn
; ---------------------------------
_strcspn::
	push	ix
	ld	ix,#0
	add	ix,sp
;../_strcspn.c:36: while (ch = *string) {
	ld	de,#0x0000
	ld	c,4 (ix)
	ld	b,5 (ix)
00104$:
	ld	a,(bc)
;../_strcspn.c:37: if (strchr(control,ch))
	ld	h,a
	or	a,a
	jr	Z,00106$
	rla
	sbc	a, a
	push	de
	ld	d,h
	ld	l,6 (ix)
	ld	h,7 (ix)
00123$:
	ld	a, (hl)
	cp	a, d
	jr	Z,00122$
	or	a, a
	inc	hl
	jr	NZ, 00123$
	ld	l, a
	ld	h, a
00122$:
	pop	de
	ld	a,h
	or	a,l
	jr	NZ,00106$
;../_strcspn.c:40: count++;
	inc	de
;../_strcspn.c:41: string++;
	inc	bc
	jr	00104$
00106$:
;../_strcspn.c:44: return count;
	ex	de,hl
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
