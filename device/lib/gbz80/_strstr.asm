;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module _strstr
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _strstr
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
;../_strstr.c:31: char * strstr ( const char * str1, const char * str2 )
;	---------------------------------
; Function strstr
; ---------------------------------
_strstr::
	add	sp, #-14
;../_strstr.c:33: const char * cp = str1;
	ldhl	sp,#16
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#2
	ld	(hl+),a
	ld	(hl),e
;../_strstr.c:37: if ( !*str2 )
	ldhl	sp,#18
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#0
	ld	(hl+),a
	ld	(hl),e
	pop	de
	push	de
	ld	a,(de)
	or	a, a
	jr	NZ,00122$
;../_strstr.c:38: return str1;
	pop	bc
	pop	de
	push	de
	push	bc
	jp	00113$
;../_strstr.c:40: while (*cp)
00122$:
	pop	de
	pop	bc
	push	bc
	push	de
00110$:
	ld	a,(bc)
	or	a, a
	jp	Z,00112$
;../_strstr.c:43: s2 = str2;
	ldhl	sp,#0
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	(hl),e
;../_strstr.c:45: while ( *s1 && *s2 && !(*s1-*s2) )
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
00105$:
	ldhl	sp,#9
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#5
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ldhl	sp,#4
	ld	(hl+),a
	ld	a,(hl)
	or	a, a
	jp	Z,00107$
	dec	hl
	ld	a,(hl)
	or	a, a
	jp	Z,00107$
	inc	hl
	ld	a,(hl)
	ldhl	sp,#12
	ld	(hl),a
	ldhl	sp,#5
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#13
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ldhl	sp,#10
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	rla
	sbc	a, a
	ldhl	sp,#11
	ld	(hl+),a
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	ld	a,e
	sub	a,l
	ld	e,a
	ld	a,d
	sbc	a,h
	ldhl	sp,#11
	ld	(hl-),a
	ld	(hl),e
	inc	hl
	ld	a,(hl-)
	or	a,(hl)
	jr	NZ,00107$
;../_strstr.c:46: s1++, s2++;
	dec	hl
	dec	hl
	inc	(hl)
	jr	NZ,00148$
	inc	hl
	inc	(hl)
00148$:
	ldhl	sp,#6
	inc	(hl)
	jp	NZ,00105$
	inc	hl
	inc	(hl)
	jp	00105$
00107$:
;../_strstr.c:48: if (!*s2)
	ldhl	sp,#4
	ld	a,(hl)
	or	a, a
	jr	NZ,00109$
;../_strstr.c:49: return( (char*)cp );
	pop	bc
	pop	de
	push	de
	push	bc
	jr	00113$
00109$:
;../_strstr.c:51: cp++;
	inc	bc
	ldhl	sp,#2
	ld	(hl),c
	inc	hl
	ld	(hl),b
	jp	00110$
00112$:
;../_strstr.c:54: return (NULL) ;
	ld	de,#0x0000
00113$:
	add	sp, #14
	ret
	.area _CODE
	.area _CABS (ABS)
