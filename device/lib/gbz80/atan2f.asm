;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:46 2022
;--------------------------------------------------------
	.module atan2f
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _fabsf
	.globl _atanf
	.globl _atan2f
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
;../atan2f.c:34: float atan2f(float x, float y)
;	---------------------------------
; Function atan2f
; ---------------------------------
_atan2f::
	add	sp, #-9
;../atan2f.c:38: if ((x==0.0) && (y==0.0))
	ldhl	sp,#14
	ld	a,(hl)
	res	7, a
	dec	hl
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
	ldhl	sp,#18
	ld	a,(hl)
	res	7, a
	dec	hl
	or	a, (hl)
	dec	hl
	or	a, (hl)
	dec	hl
	or	a,(hl)
	jr	NZ,00102$
;../atan2f.c:40: errno=EDOM;
	ld	hl,#_errno
	ld	(hl),#0x21
	inc	hl
	ld	(hl),#0x00
;../atan2f.c:41: return 0.0;
	ld	de,#0x0000
	ld	hl,#0x0000
	jp	00109$
00102$:
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_fabsf
	add	sp, #4
	push	hl
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_fabsf
	add	sp, #4
	ld	c,l
	ld	b,h
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
;../atan2f.c:44: if(fabsf(y)>=fabsf(x))
	call	___fslt
	add	sp, #8
	ldhl	sp,#12
	ld	(hl),e
	pop	de
	pop	bc
	push	bc
	push	de
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#10
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fslt
	add	sp, #8
	ld	b,e
	ld	a,b
	or	a, a
	jp	NZ,00107$
;../atan2f.c:46: r=atanf(x/y);
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#17
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	call	_atanf
	add	sp, #4
	ld	c,l
	ld	b,h
;../atan2f.c:47: if(y<0.0) r+=(x>=0?PI:-PI);
	push	bc
	push	de
	ld	hl,#0x0000
	push	hl
	ld	hl,#0x0000
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#25
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fslt
	add	sp, #8
	ld	a,e
	pop	de
	pop	bc
	or	a, a
	jp	Z,00108$
	ldhl	sp,#8
	ld	a,(hl)
	or	a, a
	jr	NZ,00111$
	ldhl	sp,#4
	ld	(hl),#0xDB
	inc	hl
	ld	(hl),#0x0F
	inc	hl
	ld	(hl),#0x49
	inc	hl
	ld	(hl),#0x40
	jr	00112$
00111$:
	ldhl	sp,#4
	ld	(hl),#0xDB
	inc	hl
	ld	(hl),#0x0F
	inc	hl
	ld	(hl),#0x49
	inc	hl
	ld	(hl),#0xC0
00112$:
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
	jp	00108$
00107$:
;../atan2f.c:51: r=-atanf(y/x);
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#13
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#21
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsdiv
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	call	_atanf
	add	sp, #4
	push	hl
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#7
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
	ldhl	sp,#4
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl+),a
	ld	a,(hl)
	ld	(hl-),a
	dec	hl
	ld	d,h
	ld	e,l
	ldhl	sp,#0
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl+),a
	inc	de
	ld	a,(de)
	ld	(hl),a
;../atan2f.c:52: r+=(x<0.0?-HALF_PI:HALF_PI);
	ldhl	sp,#8
	ld	a,(hl)
	or	a, a
	jr	Z,00113$
	ld	de,#0x0FDB
	ld	bc,#0xBFC9
	jr	00114$
00113$:
	ld	de,#0x0FDB
	ld	bc,#0x3FC9
00114$:
	push	bc
	push	de
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#6
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	c,l
	ld	b,h
00108$:
;../atan2f.c:54: return r;
	ld	l,c
	ld	h,b
00109$:
	add	sp, #9
	ret
	.area _CODE
	.area _CABS (ABS)
