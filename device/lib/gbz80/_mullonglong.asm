;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:47 2022
;--------------------------------------------------------
	.module _mullonglong
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl __mullonglong
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
;../_mullonglong.c:35: long long _mullonglong(long long ll, long long lr)
;	---------------------------------
; Function _mullonglong
; ---------------------------------
__mullonglong::
	add	sp, #-21
;../_mullonglong.c:37: unsigned long long ret = 0ull;
	xor	a, a
	ldhl	sp,#3
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl+),a
	ld	(hl),a
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	ldhl	sp,#2
	ld	(hl),#0x00
00106$:
;../_mullonglong.c:42: unsigned char l = ll >> (i * 8);
	ldhl	sp,#2
	ld	a,(hl)
	ldhl	sp,#11
	ld	(hl+),a
	ld	(hl),#0x00
	dec	hl
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	sla	d
	rl	e
	sla	d
	rl	e
	sla	d
	rl	e
	push	af
	ldhl	sp,#27
	ld	a,(hl)
	ldhl	sp,#15
	ld	(hl),a
	ldhl	sp,#28
	ld	a,(hl)
	ldhl	sp,#16
	ld	(hl),a
	ldhl	sp,#29
	ld	a,(hl)
	ldhl	sp,#17
	ld	(hl),a
	ldhl	sp,#30
	ld	a,(hl)
	ldhl	sp,#18
	ld	(hl),a
	ldhl	sp,#31
	ld	a,(hl)
	ldhl	sp,#19
	ld	(hl),a
	ldhl	sp,#32
	ld	a,(hl)
	ldhl	sp,#20
	ld	(hl),a
	ldhl	sp,#33
	ld	a,(hl)
	ldhl	sp,#21
	ld	(hl),a
	ldhl	sp,#34
	ld	a,(hl)
	ldhl	sp,#22
	ld	(hl),a
	pop	af
	inc	d
	jr	00131$
00130$:
	ldhl	sp,#20
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
00131$:
	dec	d
	jr	NZ,00130$
	push	hl
	ld	a,(hl)
	ldhl	sp,#2
	ld	(hl),a
	pop	hl
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	ldhl	sp,#1
	ld	(hl),#0x00
00104$:
	ldhl	sp,#1
	ld	a,(hl)
	ldhl	sp,#13
	ld	(hl+),a
	ld	(hl),#0x00
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ldhl	sp,#11
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	hl,de
	ld	c,l
	ld	b,h
	ld	a,#0x00
	ld	e,a
	ld	a,b
	ld	d,a
	ld	a,c
	sub	a, #0x08
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC,00107$
;../_mullonglong.c:45: unsigned char r = lr >> (j * 8);
	ldhl	sp,#13
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	sla	d
	rl	e
	sla	d
	rl	e
	sla	d
	rl	e
	push	af
	ldhl	sp,#35
	ld	a,(hl)
	ldhl	sp,#15
	ld	(hl),a
	ldhl	sp,#36
	ld	a,(hl)
	ldhl	sp,#16
	ld	(hl),a
	ldhl	sp,#37
	ld	a,(hl)
	ldhl	sp,#17
	ld	(hl),a
	ldhl	sp,#38
	ld	a,(hl)
	ldhl	sp,#18
	ld	(hl),a
	ldhl	sp,#39
	ld	a,(hl)
	ldhl	sp,#19
	ld	(hl),a
	ldhl	sp,#40
	ld	a,(hl)
	ldhl	sp,#20
	ld	(hl),a
	ldhl	sp,#41
	ld	a,(hl)
	ldhl	sp,#21
	ld	(hl),a
	ldhl	sp,#42
	ld	a,(hl)
	ldhl	sp,#22
	ld	(hl),a
	pop	af
	inc	d
	jr	00135$
00134$:
	ldhl	sp,#20
	sra	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
	dec	hl
	rr	(hl)
00135$:
	dec	d
	jr	NZ,00134$
	ld	d,(hl)
;../_mullonglong.c:46: ret += (unsigned long long)((unsigned short)(l * r)) << ((i + j) * 8);
	push	bc
	push	de
	inc	sp
	ldhl	sp,#3
	ld	a,(hl)
	push	af
	inc	sp
	call	__muluchar
	add	sp, #2
	pop	bc
	ldhl	sp,#13
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	push	af
	pop	af
	inc	c
	jr	00139$
00138$:
	ldhl	sp,#13
	sla	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
	inc	hl
	rl	(hl)
00139$:
	dec	c
	jr	NZ,00138$
	ldhl	sp,#3
	ld	a,(hl)
	ldhl	sp,#13
	add	a, (hl)
	ldhl	sp,#3
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#14
	adc	a, (hl)
	ldhl	sp,#4
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#15
	adc	a, (hl)
	ldhl	sp,#5
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#16
	adc	a, (hl)
	ldhl	sp,#6
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#17
	adc	a, (hl)
	ldhl	sp,#7
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#18
	adc	a, (hl)
	ldhl	sp,#8
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#19
	adc	a, (hl)
	ldhl	sp,#9
	ld	(hl+),a
	ld	a,(hl)
	ldhl	sp,#20
	adc	a, (hl)
	ldhl	sp,#10
	ld	(hl),a
;../_mullonglong.c:43: for(j = 0; (i + j) < sizeof (long long); j++)
	ldhl	sp,#1
	inc	(hl)
	jp	00104$
00107$:
;../_mullonglong.c:40: for (i = 0; i < sizeof (long long); i++)
	ldhl	sp,#2
	inc	(hl)
	ld	a,(hl)
	sub	a, #0x08
	jp	C,00106$
;../_mullonglong.c:50: return(ret);
	ld	hl, #23
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ldhl	sp,#3
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	inc	bc
	inc	hl
	ld	a,(hl)
	ld	(bc), a
	add	sp, #21
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _CABS (ABS)
