;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:15:17 2022
;--------------------------------------------------------
	.module _ulong2fs
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___ulong2fs
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
;../_ulong2fs.c:83: float __ulong2fs (unsigned long a )
;	---------------------------------
; Function __ulong2fs
; ---------------------------------
___ulong2fs::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-6
	add	hl,sp
	ld	sp,hl
;../_ulong2fs.c:88: if (!a)
	ld	a,7 (ix)
	or	a, 6 (ix)
	or	a, 5 (ix)
	or	a,4 (ix)
	jr	NZ,00115$
;../_ulong2fs.c:90: return 0.0;
	ld	hl,#0x0000
	ld	e,l
	ld	d,h
	jp	00111$
;../_ulong2fs.c:93: while (a & NORM) 
00115$:
	ld	hl,#0x0096
00103$:
	ld	a,7 (ix)
	or	a, a
	jr	Z,00117$
;../_ulong2fs.c:96: a >>= 1;
	push	af
	pop	af
	srl	7 (ix)
	rr	6 (ix)
	rr	5 (ix)
	rr	4 (ix)
;../_ulong2fs.c:97: exp++;
	inc	hl
	jr	00103$
;../_ulong2fs.c:100: while (a < HIDDEN)
00117$:
00106$:
	ld	a,6 (ix)
	sub	a, #0x80
	ld	a,7 (ix)
	sbc	a, #0x00
	jr	NC,00120$
;../_ulong2fs.c:102: a <<= 1;
	push	af
	pop	af
	sla	4 (ix)
	rl	5 (ix)
	rl	6 (ix)
	rl	7 (ix)
;../_ulong2fs.c:103: exp--;
	dec	hl
	jr	00106$
00120$:
	ld	-2 (ix),l
	ld	-1 (ix),h
;../_ulong2fs.c:107: if ((a&0x7fffff)==0x7fffff) {
	ld	d,4 (ix)
	ld	e,5 (ix)
	ld	c,6 (ix)
	res	7, c
	ld	b,#0x00
	inc	d
	jr	NZ,00110$
	inc	e
	jr	NZ,00110$
	ld	a,c
	sub	a,#0x7F
	jr	NZ,00110$
	or	a,b
	jr	NZ,00110$
;../_ulong2fs.c:108: a=0;
	xor	a, a
	ld	4 (ix),a
	ld	5 (ix),a
	ld	6 (ix),a
	ld	7 (ix),a
;../_ulong2fs.c:109: exp++;
	inc	hl
	ld	-2 (ix),l
	ld	-1 (ix),h
00110$:
;../_ulong2fs.c:113: a &= ~HIDDEN ;
	res	7, 6 (ix)
;../_ulong2fs.c:115: fl.l = PACK(0,(unsigned long)exp, a);
	ld	hl,#0x0000
	add	hl,sp
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	ld	a,-1 (ix)
	rla
	sbc	a, a
	ld	c,a
	ld	b,a
	ld	a,#0x17
00146$:
	sla	e
	rl	d
	rl	c
	rl	b
	dec	a
	jr	NZ,00146$
	ld	a,e
	or	a, 4 (ix)
	ld	e,a
	ld	a,d
	or	a, 5 (ix)
	ld	d,a
	ld	a,c
	or	a, 6 (ix)
	ld	c,a
	ld	a,b
	or	a, 7 (ix)
	ld	b,a
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_ulong2fs.c:117: return (fl.f);
	ld	hl,#0x0000
	add	hl,sp
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	l,b
	ld	h,c
00111$:
	ld	sp, ix
	pop	ix
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
