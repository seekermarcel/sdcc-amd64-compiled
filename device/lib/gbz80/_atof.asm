;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.0 #9253 (Apr  4 2022) (Linux)
; This file was generated Mon Apr  4 14:16:43 2022
;--------------------------------------------------------
	.module _atof
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _atoi
	.globl _toupper
	.globl _isspace
	.globl _atof
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
;../_atof.c:33: float atof(const char * s)
;	---------------------------------
; Function atof
; ---------------------------------
_atof::
	add	sp, #-20
;../_atof.c:40: while (isspace(*s)) s++;
	ldhl	sp,#23
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00101$:
	ld	a,(bc)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	call	_isspace
	add	sp, #2
	ldhl	sp,#21
	ld	(hl),d
	dec	hl
	ld	(hl),e
	pop	bc
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#10
	ld	(hl+),a
	ld	(hl),d
	ldhl	sp,#19
	ld	a,(hl-)
	or	a,(hl)
	jr	Z,00145$
	ldhl	sp,#11
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	jp	00101$
00145$:
	ldhl	sp,#22
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_atof.c:43: if (*s == '-')
	ld	a,(bc)
	ld	d,a
	sub	a, #0x2D
	jr	NZ,00107$
;../_atof.c:45: sign=1;
	ldhl	sp,#0
	ld	(hl),#0x01
;../_atof.c:46: s++;
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#22
	ld	(hl+),a
	ld	(hl),e
	jr	00108$
00107$:
;../_atof.c:50: sign=0;
	ldhl	sp,#0
	ld	(hl),#0x00
;../_atof.c:51: if (*s == '+') s++;
	ld	a,d
	sub	a, #0x2B
	jr	NZ,00108$
	ldhl	sp,#10
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#22
	ld	(hl+),a
	ld	(hl),e
00108$:
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ldhl	sp,#6
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	inc	hl
	ld	(hl),#0x00
	ldhl	sp,#23
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
00124$:
	ld	a,(bc)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	call	_isdigit
	add	sp, #2
	ldhl	sp,#13
	ld	(hl),d
	dec	hl
	ld	(hl),e
	pop	bc
	ld	a,(bc)
	ldhl	sp,#18
	ld	(hl),a
	ld	hl,#0x0001
	add	hl,bc
	ld	a,l
	ld	d,h
	ldhl	sp,#12
	ld	(hl+),a
	ld	(hl),d
	dec	hl
	dec	hl
	ld	a,(hl-)
	or	a,(hl)
	jp	Z,00146$
;../_atof.c:57: value=10.0*value+(*s-'0');
	dec	hl
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	push	hl
	ldhl	sp,#16
	ld	(hl),e
	inc	hl
	ld	(hl),d
	pop	de
	inc	hl
	ld	(hl),e
	inc	hl
	ld	(hl),d
	ldhl	sp,#18
	ld	c,(hl)
	ld	a,(hl)
	rla
	sbc	a, a
	ld	b,a
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	push	bc
	call	___sint2fs
	add	sp, #2
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#20
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#20
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_atof.c:55: for (value=0.0; isdigit(*s); s++)
	ldhl	sp,#13
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	jp	00124$
00146$:
	ldhl	sp,#22
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_atof.c:61: if (*s == '.')
	ldhl	sp,#18
	ld	a,(hl)
	sub	a, #0x2E
	jp	NZ,00112$
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ldhl	sp,#2
	ld	(hl),#0xCD
	inc	hl
	ld	(hl),#0xCC
	inc	hl
	ld	(hl),#0xCC
	inc	hl
	ld	(hl),#0x3D
	ldhl	sp,#12
	ld	a,(hl+)
	ld	e, (hl)
	inc	hl
	ld	(hl+),a
	ld	(hl),e
00127$:
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	de
	call	_isdigit
	add	sp, #2
	ld	a,d
	or	a,e
	jp	Z,00147$
;../_atof.c:66: value+=(*s-'0')*fraction;
	ldhl	sp,#15
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	ld	a,(de)
	ld	c,a
	rla
	sbc	a, a
	ld	b,a
	ld	a,c
	add	a,#0xD0
	ld	c,a
	ld	a,b
	adc	a,#0xFF
	ld	b,a
	push	bc
	call	___sint2fs
	add	sp, #2
	ld	c,l
	ld	b,h
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	push	bc
	push	de
	call	___fsmul
	add	sp, #8
	ld	c,l
	ld	b,h
	push	bc
	push	de
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#12
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	___fsadd
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_atof.c:67: fraction*=0.1;
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#4
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#2
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_atof.c:64: for (fraction=0.1; isdigit(*s); s++)
	ldhl	sp,#14
	inc	(hl)
	jp	NZ,00127$
	inc	hl
	inc	(hl)
	jp	00127$
00147$:
	ldhl	sp,#14
	ld	a,(hl+)
	ld	e, (hl)
	ldhl	sp,#22
	ld	(hl+),a
	ld	(hl),e
00112$:
;../_atof.c:72: if (toupper(*s)=='E')
	ldhl	sp,#23
	dec	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(bc)
	ld	e,a
	rla
	sbc	a, a
	ld	d,a
	push	bc
	push	de
	call	_toupper
	add	sp, #2
	pop	bc
	ld	a,e
	sub	a, #0x45
	jp	NZ,00120$
	ld	a,d
	or	a, a
	jp	NZ,00120$
;../_atof.c:74: s++;
	inc	bc
	ldhl	sp,#22
	ld	(hl),c
	inc	hl
	ld	(hl),b
;../_atof.c:75: iexp=(signed char)atoi(s);
	dec	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	call	_atoi
	add	sp, #2
	ldhl	sp,#1
	ld	(hl),e
;../_atof.c:77: while(iexp!=0)
00116$:
	ldhl	sp,#1
	ld	a,(hl)
	or	a, a
	jp	Z,00120$
;../_atof.c:79: if(iexp<0)
	ld	a,#0x00
	ld	e,a
	ld	a,(hl)
	ld	d,a
	ld	a,(hl)
	bit	7,a
	jp	Z,00114$
;../_atof.c:81: value*=0.1;
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x3DCC
	push	hl
	ld	hl,#0xCCCD
	push	hl
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_atof.c:82: iexp++;
	ldhl	sp,#1
	inc	(hl)
	jp	00116$
00114$:
;../_atof.c:86: value*=10.0;
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ldhl	sp,#8
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	push	hl
	ld	hl,#0x4120
	push	hl
	ld	hl,#0x0000
	push	hl
	call	___fsmul
	add	sp, #8
	ld	b,l
	ld	c,h
	ldhl	sp,#6
	ld	(hl),e
	inc	hl
	ld	(hl),d
	inc	hl
	ld	(hl),b
	inc	hl
	ld	(hl),c
;../_atof.c:87: iexp--;
	ldhl	sp,#1
	dec	(hl)
	jp	00116$
00120$:
;../_atof.c:93: if(sign) value*=-1.0;
	ldhl	sp,#0
	bit	0,(hl)
	jr	Z,00122$
	ldhl	sp,#9
	ld	a,(hl)
	xor	a,#0x80
	ld	(hl),a
00122$:
;../_atof.c:94: return (value);
	ldhl	sp,#7
	dec	hl
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	a,(hl+)
	ld	h,(hl)
	ld	l,a
	add	sp, #20
	ret
	.area _CODE
	.area _CABS (ABS)
