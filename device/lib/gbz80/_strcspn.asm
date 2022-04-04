;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strcspn
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strchr
	.globl _strcspn
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
;../_strcspn.c:31: size_t strcspn ( const char * string, const char * control )
;	---------------------------------
; Function strcspn
; ---------------------------------
_strcspn::
	add	sp, #-2
;../_strcspn.c:36: while (ch = *string) {
	ldhl	sp,#0
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#5
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00104$:
	ld	a,(bc)
	ld	e,a
	or	a, a
	jr	Z,00106$
;../_strcspn.c:37: if (strchr(control,ch))
	ld	a,e
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_strchr
	add	sp, #4
	pop	bc
	ld	a,d
	or	a,e
	jr	NZ,00106$
;../_strcspn.c:40: count++;
	ldhl	sp,#0
	inc	(hl)
	jr	NZ,00122$
	inc	hl
	inc	(hl)
00122$:
;../_strcspn.c:41: string++;
	inc	bc
	jr	00104$
00106$:
;../_strcspn.c:44: return count;
	pop	de
	push	de
	add	sp, #2
	ret
	.area _CODE
	.area _CABS (ABS)
