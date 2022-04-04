;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strncat
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strncat
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
;../_strncat.c:31: char * strncat ( char * front, const char * back, size_t count )
;	---------------------------------
; Function strncat
; ---------------------------------
_strncat::
	add	sp, #-8
;../_strncat.c:33: char *start = front;
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
;../_strncat.c:35: while (*front++);
	pop	bc
	push	bc
00101$:
	ld	a,(bc)
	inc	bc
	or	a, a
	jr	NZ,00101$
;../_strncat.c:37: front--;
	ld	de,#0x0001
	ld	a,c
	sub	a,e
	ld	e,a
	ld	a,b
	sbc	a,d
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
;../_strncat.c:39: while (count--)
	inc	hl
	inc	hl
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#11
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ldhl	sp,#14
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
00106$:
	ldhl	sp,#6
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
	ldhl	sp,#7
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
	jr	Z,00108$
;../_strncat.c:40: if (!(*front++ = *back++))
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#2
	ld	(hl+),a
	inc	hl
	inc	(hl)
	jr	NZ,00132$
	inc	hl
	inc	(hl)
00132$:
	ldhl	sp,#2
	ld	a,(hl)
	ld	(bc),a
	inc	bc
	ldhl	sp,#10
	ld	(hl),c
	inc	hl
	ld	(hl),b
	ldhl	sp,#2
	ld	a,(hl)
	or	a, a
	jp	NZ,00106$
;../_strncat.c:41: return(start);
	pop	de
	push	de
	jr	00109$
00108$:
;../_strncat.c:43: *front = '\0';
	ldhl	sp,#11
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	xor	a, a
	ld	(de),a
;../_strncat.c:44: return(start);
	pop	de
	push	de
00109$:
	add	sp, #8
	ret
	.area _CODE
	.area _CABS (ABS)
