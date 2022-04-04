;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:48 2022
;--------------------------------------------------------
	.module rand
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rand
	.globl _srand
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_next:
	.ds 4
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
;../rand.c:31: static unsigned long int next = 1;
	ld	hl,#_next
	ld	(hl),#0x01
	xor	a, a
	inc	hl
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;../rand.c:33: int rand(void)
;	---------------------------------
; Function rand
; ---------------------------------
_rand::
	add	sp, #-4
;../rand.c:35: next = next * 1103515245UL + 12345;
	ld	hl,#_next + 2
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#_next
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x41C6
	push	hl
	ld	hl,#0x4E6D
	push	hl
	call	__mullong
	add	sp, #8
	push	hl
	ldhl	sp,#2
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	push	de
	ld	a,e
	add	a, #0x39
	ld	e,a
	ld	a,d
	adc	a, #0x30
	push	af
	ld	hl,#_next + 1
	ld	(hl-),a
	ld	(hl),e
	ldhl	sp,#5
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	pop	af
	ld	a,e
	adc	a, #0x00
	ld	e,a
	ld	a,d
	adc	a, #0x00
	ld	hl,#_next + 3
	ld	(hl-),a
	ld	(hl),e
;../rand.c:36: return (unsigned int)(next/65536) % (RAND_MAX + 1U);
	push	af
	dec	hl
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	c,(hl)
	pop	af
	ld	a,#0x10
00103$:
	srl	c
	rr	b
	rr	d
	rr	e
	dec	a
	jr	NZ,00103$
	res	7, d
	add	sp, #4
	ret
;../rand.c:39: void srand(unsigned int seed)
;	---------------------------------
; Function srand
; ---------------------------------
_srand::
;../rand.c:41: next = seed;
	ldhl	sp,#2
	ld	a,(hl)
	ld	hl,#_next
	ld	(hl),a
	ldhl	sp,#3
	ld	a,(hl)
	ld	hl,#_next + 1
	ld	(hl+),a
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ret
	.area _CODE
	.area _CABS (ABS)
